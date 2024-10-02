<?php

$host = 'localhost';
$db = 'resume_db';
$user = 'root'; 
$pass = ''; 

$conn = new mysqli($host, $user, $pass, $db);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM resume_data WHERE id = 1"; 
$result = $conn->query($sql);
$row = $result->fetch_assoc();

$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resume</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <aside class="sidebar">
            <div class="profile">
                <img src="./Shakil.jpg" alt="<?php echo $row['name']; ?>">
                <h1><?php echo $row['name']; ?></h1>
                <p><?php echo $row['title']; ?></p>
            </div>
            <div class="contact-info">
                <h2>Contact Information</h2>
                <ul>
                    <li><strong>Father's Name:</strong> <?php echo $row['Fathers Name']; ?></li>
                    <li><strong>Mother's Name:</strong> <?php echo $row['Mothers Name']; ?></li>
                    <li><strong>Date Of Birth:</strong> <?php echo $row['dob']; ?></li>
                    <li><strong>Gender:</strong> <?php echo $row['gender']; ?></li>
                    <li><strong>Maritial Status:</strong> <?php echo $row['Maritial Status']; ?></li>
                    <li><strong>Religion:</strong> <?php echo $row['Religion']; ?></li>
                    <li><strong>Nationality:</strong> <?php echo $row['Nationality']; ?></li>
                    <li><strong>Current Location:</strong> <?php echo $row['Current Location']; ?></li>
                    <li><strong>Blood Group:</strong> <?php echo $row['bloodgroup']; ?></li>
                    <li><strong>Email:</strong> <?php echo $row['email']; ?></li>
                    <li><strong>Phone:</strong> <?php echo $row['phone']; ?></li>
                    <li><strong>LinkedIn:</strong> 
                        <a href="<?php echo $row['linkedin']; ?>" target="_blank">
                            <?php echo $row['linkedin']; ?>
                        </a>
                    </li>
                    <li><strong>GitHub:</strong> 
                        <a href="<?php echo $row['github']; ?>" target="_blank">
                            <?php echo $row['github']; ?>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="skills">
                <h2>Skills</h2>
                <ul>
                    <?php foreach (explode(',', $row['skills']) as $skill): ?>
                        <li><?php echo trim($skill); ?></li>
                    <?php endforeach; ?>
                </ul>
            </div>
        </aside>
        <main class="main-content">
            <section class="summary">
                <h2>Professional Summary</h2>
                <p><?php echo $row['summary']; ?></p>
            </section>
            <section class="experience">
                <h2>Work Experience</h2>
                <div class="job">
                    <h3>Experience</h3>
                    <p><?php echo $row['experience']; ?></p>
                </div>
            </section>
            <section class="education">
                <h2>Education</h2>
                <div class="school">
                    <h3>School: </h3><?php echo $row['school']; ?> <!-- Add school -->
                    <h3>College: </h3> <?php echo $row['college']; ?> <!-- Add college -->
                    <h3>Undergraduate: </h3><?php echo $row['undergraduate']; ?> <!-- Add undergraduate degree -->
                </div>
            </section>
            <section class="certifications">
                <h2>Certifications</h2>
                <ul>
                    <?php foreach (explode(',', $row['certifications']) as $cert): ?>
                        <li><?php echo trim($cert); ?></li>
                    <?php endforeach; ?>
                </ul>
            </section>
            <section class="languages">
                <h2>Languages</h2>
                <ul>
                    <?php foreach (explode(',', $row['languages']) as $lang): ?>
                        <li><?php echo trim($lang); ?></li>
                    <?php endforeach; ?>
                </ul>
            </section>
            <section class="hobbies">
                <h2>Hobbies</h2>
                <ul>
                    <?php foreach (explode(',', $row['hobbies']) as $hobby): ?>
                        <li><?php echo trim($hobby); ?></li>
                    <?php endforeach; ?>
                </ul>
            </section>
        </main>
    </div>
</body>
</html>
