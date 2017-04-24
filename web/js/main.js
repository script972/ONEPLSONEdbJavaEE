$(document).ready(function(){
  function detectBrowserSize() {
    var myWidth = 0;
    if (typeof (window.innerWidth) == 'number') {
        //Non-IE
        myWidth = window.innerWidth;
    } else if (document.documentElement && document.documentElement.clientWidth) {
        //IE 6+ in 'standards compliant mode'
        myWidth = document.documentElement.clientWidth;
    } else if (document.body && document.body.clientWidth) {
        //IE 4 compatible
        myWidth = document.body.clientWidth;
    }
    return myWidth;
}
  
  /*MENU. hover on dropdown */
  $('#menu-menu .liitem').prepend('<div class="menu-liner"></div>');
  $('.liitem').has('ul').mouseover(function(){
  if ( detectBrowserSize() > 768 ) {
    $(this).children('ul').stop().fadeIn('slow');}
    }).mouseout(function(){if ( detectBrowserSize() > 768 ) {
    $(this).children('ul').stop().fadeOut('slow');}
    });
  });



/*pupUP*/
 $(document).ready(function(){

      var modal = document.getElementById('myModal');

      
      // Get the button that opens the modal
      var btn = document.getElementById("myPopUpB1");
if(btn){
      // Get the <span> element that closes the modal
      var span = document.getElementsByClassName("close");

      // When the user clicks the button, open the modal
      btn.onclick = function() {
          modal.style.display = "block";
      }

      // When the user clicks on <span> (x), close the modal
      span.onclick = function() {
          modal.style.display = "none";
      }

      // When the user clicks anywhere outside of the modal, close it
      window.onclick = function(event) {
          if (event.target == modal) {
              modal.style.display = "none";
          }
      }
      $(".close").click(function(){$(modal).fadeOut();});
      $(".ModalClose").click(function(){$(modal).fadeOut();});
}


      /*///PupUpMobile*/
        var modal = document.getElementById('myModal');

      // Get the button that opens the modal
      var btn = document.getElementById("myPopUpB2");
if(btn){
      // Get the <span> element that closes the modal
      var span = document.getElementsByClassName("close")[0];


      // When the user clicks the button, open the modal
      btn.onclick = function() {
          modal.style.display = "block";
      }

      // When the user clicks on <span> (x), close the modal
      span.onclick = function() {
          modal.style.display = "none";
      }

      // When the user clicks anywhere outside of the modal, close it
      window.onclick = function(event) {
          if (event.target == modal) {
              modal.style.display = "none";
          }
      }
    }

});




   $(document).ready(function(){
        $('.left').animate({})
             .animate({left:0});


        setTimeout(function() {
        $('.right').animate({})
              .animate({right:0});
        }, 500);

         setTimeout(function() {
        $('.arrGetBg').animate({})
              .animate({left:30});
        }, 1700);
        });



$(document).ready(function(){
  $(".fingerMob .finger").click(function(){
  $(".fingerMob .outBlock").toggle("slow");
});
  $( window ).scroll(function() {
  $( ".fingerMob .outBlock").hide("slow");
});
  $("footer .footMob .outBlock").css("display","none");
});







$(document).ready(function(){
 jQuery(".aboutSlider").owlCarousel({
      navigation : true, // показывать кнопки next и prev 
      slideSpeed : 800,
      paginationSpeed : 100,
      dots: true,
      loop:true,
      items : 1, 
      itemsDesktop : false,
      itemsDesktopSmall : false,
      itemsTablet: false,
      itemsMobile : false,
    autoplayHoverPause: true,
    touchDrag:true,
     autoPlay: true, //Автозапуск слайдера
    smartSpeed:5000, //Время движения слайда
    autoplayTimeout:4000, //Время смены слайда
    autoplayHoverPause: true,
    nav:true,
    navText:''
  });
 $(".aboutSlider .owl-prev").empty();
 $(".aboutSlider .owl-next").empty();
});

$(document).ready(function(){
 jQuery(".testimonials-slider").owlCarousel({
      navigation : true, // показывать кнопки next и prev 
      slideSpeed : 100,
      paginationSpeed : 100,
      dots: true,
      loop:true,
      items : 1, 
      itemsDesktop : false,
      itemsDesktopSmall : false,
      itemsTablet: false,
      itemsMobile : true,

    autoplayHoverPause: true,
    touchDrag:true,
    nav:true,
   autoPlay: true, //Автозапуск слайдера
    smartSpeed:1000, //Время движения слайда
    autoplayTimeout:2000, //Время смены слайда
    autoplayHoverPause: true,
    navText:''
  });
 $(".testimonials-slider .owl-prev").empty();
 $(".testimonials-slider .owl-next").empty();
 $(".testimonials-slider .owl-next .owl-prev").hover(
  function(){
  $(this).css('background-image','url(img/otherPage/sliderAbout/testimonials/leftHover.png');
}, function() {});
});





$(document).ready(function(){
  $('.learnMore').hover(
  function(){
    $(this).css('background','#f06724');
    $(this).css('color','white');
}, function(){
  $(this).css('background','transparent');
    $(this).css('color','#f06724');
})
});

$(document).ready(function(){
  $('.contactUS input[type=submit]').hover(
  function(){
    $(this).css('background','transparent');
    $(this).css('color','#f06724');
    $(this).css('border','2px solid #f06724');
}, function(){
  $(this).css('background','#f06724');
    $(this).css('color','white');
})
});



$(document).ready(function(){
  $('.submitPostCode').hover(
  function(){
    $(this).css('background','transparent');
    $(this).css('color','#f06724');
    $(this).css('border','2px solid #f06724');
}, function(){
  $(this).css('background','#f06724');
    $(this).css('color','white');
})
});









  jQuery(document).ready(function() {
    jQuery('.tabs .tab-links a').on('click', function(e)  {
        var currentAttrValue = jQuery(this).attr('href');
        // Show/Hide Tabs
        jQuery('.tabs ' + currentAttrValue).show().siblings().hide();
        // Change/remove current tab to active
        jQuery(this).parent('li').addClass('active').siblings().removeClass('active');
        e.preventDefault();
    });
});



$(document).ready(function(){
  $(".slide-box").children("div").slideUp("");
  $(".slide-box").hover(function(){
  $(this).children("div").slideDown("");
  });
   $(".slide-box").mouseleave(function(){
  
  $(this).children("div").slideUp("");
  });
 
});


 /*SHOW MORE GRID BLOCK*/





$(document).ready(function(){
/*TAB1*/
let data1 = Array.from(document.querySelectorAll('#tab1 .row .slide-box')),
  step1 = 6,
    item1 = 0;

data1.slice(step1).forEach(e => e.style.display = 'none');
item1 += step1;
var fug = document.querySelector("#show-moreFirst");
if(fug){
fug.addEventListener('click', function(e){
  let tmp1 = data1.slice(item1, item1 + step1);
  tmp1.forEach(e => e.style.display = 'block');
  item1 += step1;
  
  if(tmp1.length < 6)
    this.remove();
});
}
/*TAB2*/
let data2 = Array.from(document.querySelectorAll('#tab2 .row .slide-box')),
  step2 = 6,
    item2 = 0;

data2.slice(step2).forEach(e => e.style.display = 'none');
item2 += step2;
var fugg = document.querySelector("#show-moreSecond");
if(fugg){
fugg.addEventListener('click', function(e){
  let tmp2 = data2.slice(item2, item2 + step2);
  tmp2.forEach(e => e.style.display = 'block');
  item2 += step2;
  
  if(tmp2.length < 6)
    this.remove();
});
}
/*TAB3*/
let data3 = Array.from(document.querySelectorAll('#tab3 .row .slide-box')),
  step3 = 6,
    item3 = 0;

data3.slice(step3).forEach(e => e.style.display = 'none');
item3 += step3;


var fuggg = document.querySelector("#show-moreThird");
if(fuggg){
fuggg.addEventListener('click', function(e){
  let tmp3 = data3.slice(item3, item3 + step3);
  tmp3.forEach(e => e.style.display = 'block');
  item3 += step3;
  if(tmp3.length < 6)
    this.remove();
});
}
/*TAB4*/
let data4 = Array.from(document.querySelectorAll('#tab4 .row .slide-box')),
  step4 = 6,
    item4 = 0;

data4.slice(step4).forEach(e => e.style.display = 'none');
item4 += step4;



var fugggg = document.querySelector("#show-moreFourth");
if(fugggg){
document.querySelector('#show-moreFourth').addEventListener('click', function(e){
  let tmp4 = data4.slice(item4, item4 + step4);
  tmp4.forEach(e => e.style.display = 'block');
  item4 += step4;
  if(tmp4.length < 6)
    this.remove();
});
}

});


