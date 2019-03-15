<?php
require 'conn.inc';
session_start();
if (empty($_SESSION['username'])) {
    header("HTTP/1.1 303 See Other");
    header("Location: index.php");
    exit;
}
?>
<html>
<head>
    <title>聊天室</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="user-scalable=no"/>
    
    <link rel="stylesheet" href="css/style.css" media="screen" type="text/css"/>
        <link rel="stylesheet" href="lib/css/bootstrap.css"/>
    <link rel="stylesheet" href="lib/css/jquery.mCustomScrollbar.min.css"/>
    <link rel="stylesheet" href="dist/css/jquery.emoji.css"/>
    <link rel="stylesheet" href="lib/css/railscasts.css"/>
<script src="lib/script/jquery.min.js"></script>
<script src="lib/script/highlight.pack.js"></script>
<script src="lib/script/jquery.mousewheel-3.0.6.min.js"></script>
<script src="lib/script/jquery.mCustomScrollbar.min.js"></script>
<script src="dist/js/jquery.emoji.min.js"></script>
    <script>
        var uid = '<?php echo $_SESSION['uid'] ?>';
        $(function () {
           
            
           
            function bottom() {
                var div = document.getElementById("chatshow");
               
                div.scrollTop = div.scrollHeight;
            }

            $("#post").click(function () {
                postMsg();
            });
            $(document).keypress(function (e) {
                if (e.which == 13) {
                    e.preventDefault();
                    postMsg();
                }
            });
            function postMsg() {
                var content = $("#content").html();
               

                if(content.length<=0){
                    content = "...";
                }
              // console.log( $('div').html(content).text());
                $("#content").html("");
                $.post("ajax.php", {content: content});
            }

            $(".close").click(function () {
                if (confirm("您确定要退出聊天室？")) {
                    $.post("logout.php", {"uid": uid}, function (data) {
                        var obj = JSON.parse(data);
                        console.log(data);
                        if (obj.res == 0) {
                            window.location.reload();
                        } else if (obj.res == 1) {
                            alert(obj.msg);
                        }
                    });
                }
            });
            function getData(msg) {
                $.post("get.php", {"msg": msg}, function (data) {
                    if (data) {
                        var chatcontent = '';
                        var obj = JSON.parse(data);
                        $.each(obj, function (key, val) {
                            if (val['uid'] == uid) {
                                chatcontent += "<li class='right'>" + val['content'] + "</li>";
                            } else {
                                chatcontent += "<li class='left'>" + val['username'] + "：" + val['content'] + "</li>";
                            }
                        });
                        $("#chatshow").html(chatcontent);
                        bottom();
                    }
                   
                });
            }

           var timer_ajax = setInterval(function(){
                    console.log("ajax轮询正在运行");
                    getData("one");
            },1500);

            $("#userlist p").click(function () {
                $("#content").html("@" + $(this).html() + " ");
            });
            $('#btn_font').click(function(){
                $('#select_font').toggle(500);
                   var type =  $('#select_font').val();
                   console.log(type);
                   $('body').css({
                    "font-family":type
                   })

            });
            $("#content").emoji({
    button: "#btn_emoji",
    showTab: true,
    animation: 'slide',
    icons: [{
        name: "QQ表情",
        path: "dist/img/qq/",
        maxNum: 91,
        excludeNums: [41, 45, 54],
        file: ".gif"
    },{
        name:"贴吧表情",
        path:"dist/img/tieba/",
        maxNum:50,
       file:".jpg"
    },{
        name:"个性图包",
        path:"dist/img/doutu/",
        maxNum:5,
       file:".jpg"
    }]
});
        });


    </script>
</head>
<body>
<div id="main">
    <h3 style="color: #f7671d">欢迎来到聊天室！</h3>
    <div id="userlist">
        <h2>用户列表</h2>
        <div>
            <?php
            set_time_limit(0);
            $sql = "select * from member where islogin = '1'";
            $res = mysqli_query($link, $sql);
            while ($row = mysqli_fetch_assoc($res)) {
                echo '<p>' . $row['username'] . '</p>';
            }
            sleep(1);
            ?>
        </div>
    </div>
    <div class="message">
        <span class="close""></span>
        <ul class="chat-thread" id="chatshow">
        </ul>
        <div style="margin-top: 20px;">
            <button id="btn_emoji" class="btn btn-sm btn-default">:)</button>
         <button id="btn_font" class="btn btn-default">切换字体</button>
           <button id="post" class="btn btn-success">发布</button>
    <select  class="form-control" id="select_font" style="display: none;">
      <option value="微软雅黑" >默认</option>
      <option value="楷体">楷体</option>
      <option value="黑体">黑体</option>
      <option value="宋体">宋体</option>
    </select>
            <div name="content" id="content" contenteditable="true"></div>
        </div>
         
      
    </div>
</div>

</body>
</html>