<?php
if(isset($_REQUEST['vidid'])){
    
    // Connect PDO.
    $db_name = 'tv';  
    $db_user = 'root';
    $db_pass = '';
    $db = new PDO('mysql:host=localhost;dbname='.$db_name, $db_user, $db_pass);
    
    // Query insert the chat.
    $query = $db->prepare("UPDATE `tv_url` SET url='vidid' WHERE id = 1");
    $query->execute(array($_REQUEST['vidid']));
}