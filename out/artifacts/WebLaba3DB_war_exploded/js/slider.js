console.log("ere");
    var prev_id=1;
    var src_img;
    $(document).ready(function(){
      $(".slide_item").on("click",function(n,e){
        $("#"+prev_id+" .slide_content").removeClass("cont_active")
        $("#"+prev_id).removeClass("active")
        var id=$(this).attr("id");//$(".slide_item").attr("id");
        prev_id=id;
        //console.log(id);
        src_img=$("#"+id+" .one_img").attr("src");
        $("body").css({"background":"url('"+src_img+"') center center no-repeat","transition":"1s","opacity":"1"});
        $("#"+id).addClass("active");
        $("#"+id+" .slide_content").addClass("cont_active")
      });
        return false;
    });

    var slide_number=0;
    var move=0;
    var counter=1;
    $(document).ready(function(){
       $(".right_arrow").click(function(){
         if(move==-560){

         }
         else{
         counter++;
         console.log(counter);
         $("#"+prev_id+" .slide_content").removeClass("cont_active")
         $("#"+prev_id).removeClass("active")
         $("#"+counter).addClass("active")
         $("#"+counter+" .slide_content").addClass("cont_active")
         prev_id=counter
         move-=140;
         console.log(move);
         $("#1").css({"margin-left":move+"px"})
         src_img=$("#"+counter+" .one_img").attr("src");
         $("body").css({"background":"url('"+src_img+"') center center no-repeat","transition":"1s","opacity":"1"});
        }
       });
        return false;
    });

    $(document).ready(function(){
       $(".left_arrow").click(function(){
         if(move==0){

         }
         else {
         counter--;
         $("#"+prev_id+" .slide_content").removeClass("cont_active")
         $("#"+prev_id).removeClass("active")
         $("#"+counter).addClass("active")
         $("#"+counter+" .slide_content").addClass("cont_active")
         prev_id=counter
         move+=140;
         console.log(move);
          $("#1").css({"margin-left":move+"px"})
          src_img=$("#"+counter+" .one_img").attr("src");
          $("body").css({"background":"url('"+src_img+"') center center no-repeat","transition":"1s","opacity":"1"});
        }
       });
        return false;
    });