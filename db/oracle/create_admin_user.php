<?php

require_once('../../owa_lib.php');
$user_id = 'admin';
$password='admin';
$password=owa_lib::encryptPassword($password);
$role='admin';
$real_name='default admin';
$email='admin@ss.com';
$temp_key=md5($user_id.time().rand());
$date=time();





$sql=sprintf("insert into owa_user(user_id, password, role, real_name, email_address, temp_passkey, creation_date, last_update_date, api_key) values('%s', '%s', '%s', '%s', '%s', '%s', %s, %s, '%s');",
            $user_id,
            $password,
            $role,
            $real_name,
            $email,
            $temp_key,
            $date,
            $date,
            $temp_key);

echo $sql;
echo "\n-------------------------\n";

$id=1;
$settings=array();
$settings['base']=array(
    "schema_version" => 10,
    "is_active" => true,
    "install_complete" => true
);

$sql = sprintf("insert into owa_configuration values(%d, '%s')", $id, serialize($settings));

echo $sql;