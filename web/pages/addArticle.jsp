<%--
  Created by IntelliJ IDEA.
  User: script972
  Date: 02.05.2017
  Time: 22:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../WEB-INF/jspf/HeaderFile.jspf"%>
<div class="content other">
<form action="/AddArticle" method="post">
    Subject <input type="text" name="subject"></br>
    Text <input type="text" name="text"></br>
    Image <input type="file" name="image"></form></br>
    <input type="submit" value="OK">
</form>
</div>



<%@include file="../WEB-INF/jspf/footer.jspf"%>