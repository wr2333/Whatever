<%--
  Created by IntelliJ IDEA.
  User: wangran
  Date: 2019/3/9
  Time: 10:10
  To change this template use File | Settings | File Templates.
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
                //需要测试的servlet
                var testUrl = "servlet/comServlet";
                //测试的json
                var json =
                    {
                        "u_id": "3",
                        "userName": "顺风车",
                        "id":"2",
                        "comment": "双方三四次",
                        "action":"addComment"
                        // "id":"1"

                    };

                $.ajax({
                    "url": testUrl,
                    "type":"post",
                    "data" : JSON.stringify(json),
                    "dataType":"json",
                    "success":function(data){
                        $("#out").text(JSON.stringify(data))
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
<button type="button" id="test">test</button><br>
<span id="out"></span>
</body>
</html>