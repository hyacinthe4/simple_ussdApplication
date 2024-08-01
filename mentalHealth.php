<?php
error_reporting(0);

$sessionId = $_POST['sessionId'];
$serviceCode = $_POST['serviceCode'];
$phoneNumber = $_POST['phoneNumber'];
$text = $_POST['text'];

$response = "";

// Connect to the database
$con = mysqli_connect("localhost", "username", "password", "database_name");

// Check connection
if (mysqli_connect_errno()) {
    $response = "END Database connection error: " . mysqli_connect_error();
} else {
    // Main menu
    if ($text == "") {
        $response = "CON welcome to AMAHORO Super market, 21RP05384:\n";
        $response .= "1. product class\n";
        $response .= "2. product type\n";
        $response .= "3. Unit price\n";
        $response .= "4. product quantity\n";
    } 
    // Sub-menu options
    elseif ($text == "1") {
        $result = mysqli_query($con, "SELECT * FROM mental_health_topics LIMIT 1");
        if ($row = mysqli_fetch_assoc($result)) {
            $response = "END " . $row['description'];
        } else {
            $response = "END No information available.";
        }
    } elseif ($text == "2") {
        $result = mysqli_query($con, "SELECT * FROM coping_strategies LIMIT 1");
        if ($row = mysqli_fetch_assoc($result)) {
            $response = "END " . $row['description'];
        } else {
            $response = "END No information available.";
        }
    } elseif ($text == "3") {
        $result = mysqli_query($con, "SELECT * FROM crisis_intervention LIMIT 1");
        if ($row = mysqli_fetch_assoc($result)) {
            $response = "END " . $row['resource_name'] . ": " . $row['phone_number'];
        } else {
            $response = "END No information available.";
        }
    } elseif ($text == "4") {
        $result = mysqli_query($con, "SELECT * FROM professional_help_contacts LIMIT 1");
        if ($row = mysqli_fetch_assoc($result)) {
            $response = "END " . $row['organization_name'] . ": " . $row['phone_number'] . "\nAddress: " . $row['address'];
        } else {
            $response = "END No information available.";
        }
    }
    
    // Close the database connection
    mysqli_close($con);
}

// Set content type header
header("Content-type: text/plain");

// Output the response
echo $response;
?>
