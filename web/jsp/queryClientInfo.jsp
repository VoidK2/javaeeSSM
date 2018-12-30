<%--
  Created by IntelliJ IDEA.
  User: 13994
  Date: 2018/12/30
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询用户信息</title>
</head>
<body>
    <div>
        <form action="${pageContext.request.contextPath }/queryClientInfo"
              method="post" id='formid'>
            <table width="50%" border=1>
                <tr>
                    <td>选择</td>
                    <td>用户名</td>
                </tr>
                <tr>
                    <td>
                        <input name="users[0].id" value="1" type="checkbox" />
                    </td>
                    <td>
                        <input name="users[0].username" value="tome" type="text" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <input name="users[1].id" value="2" type="checkbox" />
                    </td>
                    <td>
                        <input name="users[1].username" value="jack" type="text" />
                    </td>
                </tr>
            </table>
            <input type="submit" value="修改" />
        </form>
    </div>
</body>
</html>
