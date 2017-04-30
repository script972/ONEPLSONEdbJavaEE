<%--
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
        genreID=Integer.parseInt(request.getParameter("services_id"));
    }catch (Exception e){
        System.out.println(e);
    }
%>


<%@include file="../WEB-INF/jspf/HeaderFile.jspf"%>


<div class="content other">
    <div class="container">
        <div class="row">
            <div class="titlePage"><h1>Service</h1><br> <img src="../img/home/botLineWhite.png" alt="Divider" class="dividerTitle">
            </div>
        </div>
        <div class="row">
            <jsp:useBean id="frontArticleList" class="manipulate.ArticleList" scope="page"/>

            <div class="posts-block">
                <div class="divider-line"></div>
                <?php the_post_thumbnail("",array("class"=>"posts-img"));  ?>

                <div class="general-text-block">
                    <div class="posts-block-text">
                        <a href="<?php the_permalink(); ?>">
                            <div class="posts-title"><p class="topTittle">${frontArticleList.getArticleById(1).subject}</p><p class="posts-title-color"><?php echo get_post_meta($post->ID, 'title', true); ?></p></div></a>
                        <img src="<?php bloginfo('template_url'); ?>/img/posts/textDivider.png" alt="" class="title-divider">
                        <div class="block-flow-text">${frontArticleList.getArticleById(1).text} </div>
                    </div>
                </div>

            </div>
            <?php endwhile; ?>

            <?php else: ?>
            <?php endif; ?>



        </div>


    </div>
</div>
</body>
</html>
