
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>聊天室登录</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css/main.css" rel="stylesheet" type="text/css"/>
    <script src="jquery-1.6.min.js"></script>
    <script>
        function trim(str) { //删除左右两端的空格
            return str.replace(/(^\s*)|(\s*$)/g, "");
        }
        function login() {
            var name = trim($("input[name='name']").val());
            var pwd = trim($("input[name='pwd']").val());
            var email = trim($("input[name='email']").val());
            if (name == '') {
                alert("请填写用户名");
                return;
            }
            if (pwd == '') {
                alert("请填写密码");
                return;
            }
            $.post("login.php", {"name": name, "pwd": pwd,"email":email}, function (data) {
                console.log(data);
                var obj = JSON.parse(data);
                if (obj.res == 0) {
                    window.location.href = "chat.php";
                } else if (obj.res == 1) {
                    alert(obj.msg);
                }
            });
        }
        $(function () {
            $("#button").click(function () {
                location.href = "./index.php";
            });
            $("#register").click(function () {
                login();
            });
        });
    </script>
</head>
<body>
<div class="login-box">

    <!-- /.login-logo -->
    <div class="login-box-body">
        <div class="login-logo" style="margin: 30px 10px">
           <p>欢迎您的注册</p>
        </div>

        <div class="form-group has-feedback">
            <input type="text" class="form-control" placeholder="用户名" name="name"/>
        </div>
        <div class="form-group has-feedback">
            <input type="password" class="form-control" placeholder="密码" name="pwd"/>
        </div>
         
          <div class="form-group has-feedback">
            <input type="text" class="form-control" placeholder="邮箱" name="email"/>
        </div>
        
           <div class="row">
           
            <input type="button" class="btn btn-default btn-block btn-flat" id="button" value="返回登录"/>
             <input type="button" style="margin-right: 10px;" class="btn btn-primary btn-block btn-flat" id="register"
                   value="立即注册"/>
            
        </div>
       

    </div>
</div>
<div class="common_footer">
    Powered by i | Copyright © All rights reserved.
</div>

</body>
</html>