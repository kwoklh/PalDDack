<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Document</title>
<style>
/* .header {
  border: 1px solid black;
} */

.header_detail {
  width: 1000px;
  height: 150px;
  margin: auto;
  /* background-color: gray; */
  /* border: 1px solid black; */
}
.header_detail img {
  width: 100px;
  margin: auto;
  display: block;
  position: absolute;
  left: 50%;
  transform: translateX(-50%);
  z-index: -1;
  margin-top: 30px;
}
.header_detail li {
  font-size: 14px;
  float: left;
  list-style: none;
  position: relative;
  left: 74%;
  color: navy;
  font-weight: 600;
}
.category > ul > li{
  font-size: 20px;
  float: left;
  list-style: none !important;
  position: relative;
  left: 0%;
  color: navy;
  font-weight: 600;
}
.category {
  width: 1000px;
  margin: auto;
}
.allList {
  width: 23px;
  height: 23px;
  vertical-align: -3px;
}
.search {
  position: relative;
  width: 300px;
}
.search input {
  width: 68%;
  border: 1px solid #bbb;
  border-radius: 8px;
  padding: 8px 8px;
  font-size: 12px;
  position: relative;
  left: 780px;
  top: 20px;
}
.search img {
  position : relative;
  width: 25px;
  top: -9px;
  left: 760px;
  margin: 0;
}
.jjim, .cart {
  position: relative;
  width: 35px;
  left: 500px;
}
a:link {
  text-decoration: none;
}
a:visited, a:active {
  color: navy;
}
.menu {
  /* border: 1px solid lightblue; */
  width: 80px;
  position: relative;
  left: 17px;
  padding-left: 0;
}
.menu > li {
  display: none;
  padding: 10px 10px;
  opacity: 100%;
  position: relative;
  right: 20px;
  font-size: 18px;
  width: 55px;
  height: 15px;
  text-align: center;
  justify-content: center;
  border-collapse: collapse;
}

</style>
</head>
<body>
  <div class="header">
    <div class="header_detail">
      <a href="#"><img src="./img/관리자 로그인 아이콘.png"></a>
      <ul>
        <li><a href="">로그인&nbsp;&nbsp;</a></li>
        <li><a href="">회원가입&nbsp;&nbsp;</a></li>
        <li><a href="">마이페이지&nbsp;&nbsp;</a></li>
        <li><a href="">고객센터</a></li>
      </ul>
      <form method="post" action="Search">
	      <div class="search">
	        <input type="text" name="searchName" placeholder="검색어 입력">
	        <img src="./img/search.png">
	      </div>
      </form>
    </div>
    <hr>
    <div class="category">
      <ul>
        <li class="allCategory"><img src="./img/menu.png" class="allList">전체카테고리&nbsp;&nbsp;&nbsp;
          <ul class="menu" style="padding-left: 23px; list-style: none;">
            <li style="margin-top: 5px;"><a href="#">생선</a></li>
            <li style="margin-top: 5px;"><a href="#">패류</a></li>
            <li style="margin-top: 5px;"><a href="#">갑각류</a></li>
            <li style="margin-top: 5px;"><a href="#">건어물</a></li>
            <li style="margin-top: 5px;"><a href="#">해조류</a></li>
            <li style="margin-top: 5px;"><a href="#">젓갈/액젓</a></li>
            <li style="margin-top: 5px;"><a href="#">가공식품</a></li>
          </ul>
        </li>
        <li><a href="#">제철수산물</a></li>
        <li><a href="#"><img src="./img/jjim.png" class="jjim" style="margin-right: 50px;"></a></li>
        <li><a href="#">
          <img src="./img/cart.png" class="cart">
          </a>
        </li>
      </ul>
    </div>
  </div>

  
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>
  let menu = document.querySelector('.menu');

  // $('.allCategory').on({click:function(){
  //   $(menu).toggleClass('menu');
  // }})

  $('.allCategory').on({
  mouseenter: function() {
    $(menu).removeClass('menu');
  },
  mouseleave: function() {
    $(menu).addClass('menu');
  }
});

// $('input').on('keypress', function(key){
//   if(key.keyCode == 13){
//     let search = $('input').val();
//   }
// });



  
  // $('.allList').on('mouseover', function(){
  //   menu.style.display == "";
  //   console.log(menu.style.display);
  // })

</script>
</body>
</html>