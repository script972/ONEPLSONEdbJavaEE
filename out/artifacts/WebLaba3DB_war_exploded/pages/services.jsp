<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: script972
  Date: 09.04.2017
  Time: 23:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="../WEB-INF/jspf/HeaderFile.jspf"%>



<div class="content other">
    <div class="container">
        <div class="row">
            <div class="titlePage"><h1>Services</h1><br> <img src="../img/home/botLineWhite.png" alt="Divider" class="dividerTitle">
            </div>
        </div>
        <div class="row">


            <jsp:useBean id="frontArticleList" class="manipulate.ArticleList" scope="page"/>

            <c:forEach var="article" items="${frontArticleList.articleList}">

            <div class="projectFront">
                <div class="image">
                    <div class="topLine"></div>
                    <?php the_post_thumbnail();?>
                    <a href="<?php the_permalink(); ?>">
                        <div class="backgroundPlus">
                            <img src="../img/home/plus.png" alt="" class="pls">
                            <!-- <div class="backpls"></div> -->
                        </div> </a>
                </div>
                <div class="title">
                    <a href="pages/services.jsp?services_id=${article.id}&${article.subject}"><p>${article.subject}</p></a>
    <%--                    <p class="color"></p></a>--%>

                    <img src="../img/home/textDivider.png" alt="divider Title" class="dividerTitle">
                </div>
                <div class="content">
                    ${article.text.substring(0,175)}
                </div>

            </div>
            </c:forEach>
        </div>


    </div>
</div>



<?php  $slider=new WP_Query(array ('pagename'=>'testimonials'));  ?>
<?php $slider->the_post();?>
<div class="content other contentFooter">
    <div class="container">
        <div class="row">
            <div class="titlePage"><h1><?php the_title();?></h1><br> <img src="../img/home/botLineWhite.png" alt="Divider" class="dividerTitle">
            </div>
        </div>
        <div class="row">
            <div class="contentText">
                <?php  the_content(); ?>
            </div>
        </div>
        <div class="row">



            <div class="content-testimonials">
                <div class="lineWhiteBackgroundThree"></div>
                <div class="container">
                    <div class="row">
                        <div id="testimonials-slider" class="testimonials-slider">

                            <?php  $slider=new WP_Query(array ('post_type'=>'testimonials', 'posts_per_page'=>-1));  ?>
                            <?php  if ($slider->have_posts()): while($slider->have_posts()): $slider->the_post();?>
                            <div class="testimonial">
                                <div class="imgRound">   <?php the_post_thumbnail( ); ?></div>
                                <h3><?php the_title(); ?></h3>
                                <p><?php the_content(); ?></p>
                            </div>


                            <?php endwhile; ?>
                            <?php else: ?>
                            <p> HERE MAST BE SLIDER</p>
                            <?php endif; ?>
                        </div>

                    </div>

                </div>
            </div>







        </div>
        <div class="row">
            <div class="learnBackground"> <a href="/testimonials/"> <div class="learnMore">Learn more</div> </a> </div>
        </div>


    </div>
</div>

<%@include file="../WEB-INF/jspf/footer.jspf"%>
