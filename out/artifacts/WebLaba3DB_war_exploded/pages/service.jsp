<%@ page import="beans.Article" %><%--
  Created by IntelliJ IDEA.
  User: script972
  Date: 30.04.2017
  Time: 21:02
  To change this template use File | Settings | File Templates.
--%>

<%
    request.setCharacterEncoding("UTF-8");
    int genreID=0;
    try{
        genreID=Integer.parseInt(request.getParameter("service_id"));

    }catch (Exception e){
        System.out.println(e);
    }
%>


<%@include file="../WEB-INF/jspf/HeaderFile.jspf"%>

<jsp:useBean id="frontArticleList" class="manipulate.ArticleList" scope="page"/>

<%
    Article article = frontArticleList.getArticleById(genreID);
%>
<div class="content other">
    <div class="container">
        <div class="row">
            <div class="titlePage"><h1><%=article.getSubject()%></h1><br> <img src="../img/home/botLineWhite.png" alt="Divider" class="dividerTitle">
            </div>
        </div>
        <div class="row">

            <div class="posts-block">
                <div class="divider-line"></div>
                <img src="<%=request.getContextPath()%>/ShowImage?idImage=<%=genreID%>" alt="">


                <div class="general-text-block">
                    <div class="posts-block-text">

                        <div class="block-flow-text"><%=article.getText()%> </div>
                    </div>
                </div>

            </div>



        </div>


    </div>
</div>
<%@include file="../WEB-INF/jspf/footer.jspf"%>