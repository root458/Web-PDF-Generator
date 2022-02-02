<?php
require_once('db.php');
$query = 'SELECT * FROM customers';
$stm = $db->prepare($query);
$stm->execute();
$row = $stm->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($row);

?>