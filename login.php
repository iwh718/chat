<?php

session_start();
require 'conn.inc';

//判断名字是否存在，如果存在，验证密码，如果不存在，直接存入
if(isset($_POST['email'])){
     $pwd = md5($_POST['pwd']);
     $sql = "INSERT INTO member (username,password,islogin,email) VALUES ('{$_POST['name']}','{$pwd}','1','{$_POST['email']}');";
        $result = mysqli_query($link, $sql);
        if ($result) {
            $register = getUser($_POST["name"], $link);
            $_SESSION['username'] = $_POST["name"];
            $_SESSION['uid'] = $register['Id'];
            $data['res'] = 0;
            $data['msg'] = "注册成功";
             echo json_encode($data);
        } else {
            $data['res'] = 1;
            $data['msg'] = "注册失败";
             echo json_encode($data);
        }
       

}else{
    if (isset($_POST["name"])) {
    $user = getUser($_POST["name"], $link);
    $pwd = md5($_POST['pwd']);
    if ($user) {
        if ($user['password'] == $pwd) {
            mysqli_query($link, "update member set islogin = '1' where username = '{$_POST['name']}'");
            $_SESSION['username'] = $_POST["name"];
            $_SESSION['uid'] = $user['Id'];
            $data['res'] = 0;
            $data['msg'] = "登录成功";
             echo json_encode($data);
        } else {
            $data['res'] = 1;
            $data['msg'] = "用户名或密码不正确";
             echo json_encode($data);
        }
    }else{
        $data['res'] = 1;
            $data['msg'] = "用户名或密码不正确";
             echo json_encode($data);
    }
   
}
}


function getUser($name, $link)
{
    $user = array();
    $sql = "select * from member where username = '{$name}'";
    $result = mysqli_query($link, $sql);
    while ($row = mysqli_fetch_assoc($result)) {
        $user = $row;
    }
    return $user;
}
