<%--
  Created by IntelliJ IDEA.
  User: guohaodong
  Date: 2/28/19
  Time: 11:12 PM
  To change this template use File | Settings | File Templates..
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <script>
        $(function () {
            $("#test").click(function () {
                // var userEmail = $("#userEmail").val();
                // var password = $("#password").val();

                var testUrl = "servlet/IsLogIn";
                var json =
                    {
                        "email": "123@qq.com",
                        "password": "123"
                    };
                $.ajax({
                    "url": testUrl,
                    "type":"post",
                    "data" : JSON.stringify(json),
                    "dataType":"json",
                    "success":function(date){
                        alert(JSON.parse(date));

                    },
                    "error":function () {
                        alert("connection load failure");
                    }
                });
            })
        })
    </script>
</head>
<body>

    <button type="button" id="test">test</button>


</body>
</html>
