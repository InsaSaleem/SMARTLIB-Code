<?php
session_start();
if (!isset($_SESSION['member_id'])) {
    header("Location: ../login.html");
    exit();
}
$member_id = $_SESSION['member_id'];
$conn = new mysqli("localhost", "root", "", "smartlib");
if ($conn->connect_error) {
    die("Database connection failed: " . $conn->connect_error);
}
$message = "";
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    // ... inside student POST logic ...
    $title = $_POST["title"];
    $author = $_POST["author"];

    // Check if a faculty member already has a pending priority request for this book
    $prioCheck = $conn->prepare("SELECT request_id FROM requests WHERE book_title = ? AND priority = 'priority' AND status = 'pending'");
    $prioCheck->bind_param("s", $title);
    $prioCheck->execute();
    $prioResult = $prioCheck->get_result();

    if ($prioResult->num_rows > 0) {
        $message = "<span style='color:red;'>⚠️ This book is currently reserved for Faculty priority. Please try again later.</span>";
    } else {
        // Proceed with normal student insertion ONLY IF there is no priority block
        $title = trim($_POST["title"]);
        $author = trim($_POST["author"]);
        $category = trim($_POST["category"]);

        // ... rest of your SELECT * FROM books logic goes here ...
        $sql = "SELECT * FROM books WHERE title='$title' AND author='$author' AND category='$category'";
        // ... and so on ...
    }
    $title = trim($_POST["title"]);
    $author = trim($_POST["author"]);
    $category = trim($_POST["category"]);
    $sql = "SELECT * FROM books WHERE title='$title' AND author='$author' AND category='$category'";
    $result = $conn->query($sql);
    if ($result->num_rows == 0) {
        $message = "<span style='color:red;'>❌ Book not found in library database!</span>";
    } else {
        $book = $result->fetch_assoc();
        $book_id = $book['book_id'];
        if ($book['status'] === 'available' || $book['status'] === 'requested' || $book['status'] === 'returned') {
            $insert = "INSERT INTO requests (member_id, book_title, author, status)
                       VALUES ('$member_id', '$title', '$author', 'pending')";
            if ($conn->query($insert) === TRUE) {
                $updateBook = "UPDATE books SET status='requested' WHERE book_id='$book_id'";
                $conn->query($updateBook);
                $checkIssued = "SELECT * FROM issued_books WHERE book_id='$book_id' AND member_id='$member_id'";
                $issuedResult = $conn->query($checkIssued);
                if ($issuedResult->num_rows > 0) {
                    $updateIssued = "UPDATE issued_books SET status='requested' WHERE book_id='$book_id' AND member_id='$member_id'";
                    $conn->query($updateIssued);
                } else {
                    $insertIssued = "INSERT INTO issued_books (member_id, book_id, issue_date, status) VALUES ('$member_id', '$book_id', CURDATE(), 'requested')";
                    $conn->query($insertIssued);
                }
                $message = "<span style='color:green;'>✅ Book request submitted successfully!</span>";
            } else {
                $message = "<span style='color:red;'>❌ Error submitting request!</span>";
            }
        } else {
            $message = "<span style='color:red;'>⚠️ Book cannot be requested (currently not available for requesting).</span>";
        }
    }
}
$req_sql = "SELECT * FROM requests WHERE member_id='$member_id' ORDER BY request_id DESC";
$requests = $conn->query($req_sql);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Request Book | Smart Library</title>
    <link rel="stylesheet" href="../assets/styles/theme.css">
    <link rel="stylesheet" href="../assets/styles/layout.css">
    <link rel="stylesheet" href="../assets/styles/student.css">
    <style>
        .request-form {
            background: #fff;
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
        }

        input,
        select {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border-radius: 8px;
            border: 1.5px solid #ccc;
        }

        button {
            background: #3a5a40;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }
    </style>
</head>

<body>
    <?php include '../partials/sidebar.php'; ?>
    <div class="main-content">
        <header>
            <h1>Request a Book</h1>
            <p>Submit a request for your desired book 📖</p>
        </header>
        <?= $message ?>
        <section class="request-form">
            <h2>📌 New Book Request</h2>
            <form method="POST">
                <input type="text" name="title" placeholder="Book Title" required>
                <input type="text" name="author" placeholder="Author Name" required>
                <select name="category" required>
                    <option value="">Select Category</option>
                    <option value="Motivational">Motivational</option>
                    <option value="Self help">Self help</option>
                    <option value="Finance">Finance</option>
                    <option value="Biography">Biography</option>
                    <option value="Fantasy">Fantasy</option>
                    <option value="Dystopian">Dystopian</option>
                    <option value="Romance">Romance</option>
                    <option value="Fiction">Fiction</option>
                    <option value="Thriller">Thriller</option>
                    <option value="Young adult">Young adult</option>
                    <option value="Tech thriller">Tech thriller</option>
                    <option value="Satire">Satire</option>
                    <option value="Computer architecture">Computer architecture</option>
                    <option value="Web development">Web development</option>
                    <option value="Software engineering">Software engineering</option>
                    <option value="Programming">Programming</option>
                    <option value="History">History</option>
                    <option value="Computer science">Computer science</option>
                    <option value="Literature">Literature</option>
                    <option value="AI">AI</option>
                </select>
                <button type="submit">Submit Request</button>
            </form>
        </section>
        <section class="book-list-section">
            <h2>📜 My Previous Requests</h2>
            <table>
                <thead>
                    <tr>
                        <th>Book Title</th>
                        <th>Author</th>
                        <th>Request Date</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    <?php if ($requests->num_rows > 0): ?>
                        <?php while ($row = $requests->fetch_assoc()): ?>
                            <tr>
                                <td><?= $row['book_title'] ?></td>
                                <td><?= $row['author'] ?></td>
                                <td><?= $row['request_date'] ?></td>
                                <td><?= ucfirst($row['status']) ?></td>
                            </tr>
                        <?php endwhile; ?>
                    <?php else: ?>
                        <tr>
                            <td colspan="4">No requests found.</td>
                        </tr>
                    <?php endif; ?>
                </tbody>
            </table>
        </section>
    </div>
</body>

</html>