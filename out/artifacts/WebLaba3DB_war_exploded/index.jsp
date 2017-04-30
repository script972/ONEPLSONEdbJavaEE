<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="database.TestConnection" %>
<%@ page import="beans.Article" %>
<%@ page import="manipulate.ArticleList" %>
<%--
  Created by IntelliJ IDEA.
  User: script972
  Date: 09.03.2017
  Time: 0:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <script type="text/javascript">
        var templateUrl = '<?= get_bloginfo("template_url"); ?>';
    </script>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="author" content="Denis Misyura">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon " href="img/favicon/favicon-blackBG.png" >
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <title>Pavlenko Construct</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link rel="shortcut icon" href="images/favicon.png">
    <link rel="stylesheet" href="style.css" >
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">

</head>
<body>


  <header>
    <div class="Mainlogo">
      <img src="img/logo/mainLogo.png" alt=""></div>
    <div class="MobLogo"><img class="sqrLogo" src="img/home/sqrLogo.png" alt="" >
      <img class="lineLogo" src="img/home/lineLogo.png" alt="" >
    </div>


      <%@include file="WEB-INF/jspf/menu.jspf" %>


  </header>
  <div class="banerBack">
    <div class="baner">
      <div class="left">
        <div class="triangel"></div>
        <p>$99 + $200</p>
      </div>
      <div class="arrGetBg">
        <div class="arrGet">Get started now</div>
        <div class="arrRight"></div>
      </div>
      <div class="right">
        <p class="top1">Take an additional</p>
        <p class="top2">Exclusive</p>
        <div class="top3">Sale</div>
        <div class="top4">Instalation per window on qualifying projects</div>
        <div class="offer">See offer <span>details</span></div>
      </div>
    </div>
  </div>
  <div id="myModal" class="modal">
    <!-- Modal content -->
    <div class="modal-content">
      <div class="row">
        <span class="close">x</span>

        <div class="modalTitle"><h2> Your free </h2>
          <h2 class="color"> Consultation</h2>
          <p>Please provide the following information. A local Pella representative will contact you soon.</p> <h6 class="colorRequired">* - Required fuild </h6></div></div>

      <form action="/index/">
        <div class="row">
          <label>First Name <input type="text" name="FirstName"></label>
          <label>Last Name <input type="text" name="LastName"></label>
          <label>Address <input type="text" name="Address"></label>
          <label>City <select name="City">
            <option value="Afghanistan">Afghanistan</option>
            <option value="Albania">Albania</option>
            <option value="Algeria">Algeria</option>
            <option value="Andorra">Andorra</option>
          </select></label>
          <label>State/Province <select name="stateProvince">
            <option value="Alabama">Alabama</option>
            <option value="Alaska">Alaska</option>
            <option value="American Samoa">American Samoa</option>
          </select></label>
          <label>Postal code <input type="text" placeholder="50219" name="PostCode" class="PostalCode"></label>
          <label>Phone <input type="text" name="phone"> </label>
          <label>Email <input type="text" name="email"></label>

          <label class="setTimeDataLabel">
            Preferred Number
            <input type="text" name="PreferredNumberFirst" class="setTimeData"> </label>
          <input type="text" name="PreferredNumberSecond" class="setTimeData">
          <input type="text" name="PreferredNumberData" class="setTimeData">
        </div>
        <div class="row">
          <button class="ModalClose" type="reset" > Cancel</button>
          <button class="ModalSubmit" type="submit">Submit</button>
        </div>
      </form>
    </div>
  </div>
  <div class="wrap">

    <div class="container">
      <div class="row">
          <div class="ownerSay">
              <div class="headOwner">
                  <p class="color">Alyona</p>
                  <p>Pavlenko</p>
              </div>
              <div class="contentOwner">
                  <div class="whoIt">Teacher</div>
                  <div class="photo"><img src="img/pavlenko-face.jpg" alt=""></div>
                  <p>There are a lot of shelves full of books. You can find books on literature, physics, history, chemistry, geography, biology and other subjects. There are books</p>
              </div>
              <div class="footerExpert">
                  <img src="img/home/manager-divider.png" class="divid" alt="devider">
                  <p class="talkWithExpert">
                      TALK WITH AN <span class="color">EXPERT</span>
                  </p>
                  <p class="subExpert">Upgrade your with quality windows and doors.</p>

                  <input type="text" name="postCode11" class="postCode">
                  <input type="submit" id="myPopUpB1" value="Free in-home quote" class="submitPostCode">
                  <div class="arrRight"></div>

              </div>
          </div>



<jsp:useBean id="frontArticleList" class="manipulate.ArticleList" scope="page"/>
          <%
              int i=0;
          %>
          <c:forEach var="article" items="${frontArticleList.articleList}">
              <%
                i++;
                if(i>3)
                    break;
              %>

        <div class="projectFront">
          <div class="image">
            <div class="topLine"></div>
            <img src="img/home/post3.png" alt="">
            <a href="">
              <div class="backgroundPlus">
                <img src="img/home/plus.png" alt="" class="pls">
              </div> </a>
          </div>
          <div class="title">
              <a href="pages/service.jsp?service_id=${article.id}&subject=${article.subject}"><p>${article.subject}</p></a>

            <img src="img/home/textDivider.png" alt="divider Title" class="dividerTitle">
          </div>
          <div class="content">
              ${article.text.substring(0,175)}

          </div>
          <div class="more"><a href="pages/service.jsp?services_id=${article.id}&${article.subject}"><h4>Learn more</h4></a></div>
        </div>
              <%--.substring(0,175)--%>
          </c:forEach>






        <div class="footerExpert footerExpertM">
          <img src="img/home/manager-divider.png" class="divid" alt="devider">
          <p class="talkWithExpert">

            TALK WITH AN <span class="color" >EXPERT</span>
          </p>
          <p class="subExpert">Upgrade your with quality windows and doors.</p>
          <div class="forms">
            <input type="text" name="postCodes" placeholder="50219" class="postCode">
            <input type="submit"  id="myPopUpB2" value="Free in-home quote" class="submitPostCode">
            <div class="arrRight"></div>
          </div>
        </div>
        <div class="sliderMob">
          <div class="namedSlider">
            <p class="latest">latest</p>
            <p class="project">project</p>
          </div>
          <div class="itemPhoto"><img src="img/home/post1.png" alt="">	</div>
          <div class="itemPhoto"><img src="img/home/post2.png" alt="">	</div>
          <div class="itemPhoto"><img src="img/home/post1.png" alt="">	</div>
          <div class="itemPhoto"><img src="img/home/post3.png" alt="">	</div>


        </div>
      </div>
    </div>
  </div>


  <footer>

    <div class="footDesk"><h4>footer copyright</h4></div>
    <div class="footMob">

      <div class="fingerMob">

        <div class="outBlock">
          <div class="item"><a href="" target="_blank"> <img src="img/home/mobile-panel/letter-box.png" alt=""></a> </div>

          <div class="item"><a href="" target="_blank"> <img src="img/home/mobile-panel/mobile-point.png" alt=""> </a> </div>

          <div class="item"><a href="" target="_blank"> <img src="img/home/mobile-panel/call-in.png" alt=""> </a> </div>

        </div>
        <img src="img/home/mobile-panel/finger.png" alt="" class="finger">

      </div>
      <div class="stillQuastion">
        <h3>Still have questions?</h3>
        <p>Ask them to us.</p>
      </div>
      <div class="cont">
        <img src="img/home/logoFooter.png" alt="">
        <p>1372 Summer st, Suite 207, Stamford, CT 06905, USA</p>
      </div>
      <p class="tel">+1 (203) 424-8096</p>
    </div>

  </footer>


  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/main.js"></script>
  </body>
</html>
