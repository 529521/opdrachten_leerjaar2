<?php
if(isset($_REQUEST['message'])){
    
    // Connect PDO.
    $db_name = 'chatbox';  
    $db_user = 'root';
    $db_pass = '';
    $db = new PDO('mysql:host=localhost;dbname='.$db_name, $db_user, $db_pass);
    
    // Query insert the chat.
    $query = $db->prepare("INSERT INTO chats (username, message) VALUES (?,?)");
    $query->execute(array($_REQUEST['username'], $_REQUEST['message']));
}