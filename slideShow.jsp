<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif; background-color: gray;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
  text-align: center; /* 이미지를 가운데로 정렬 */
}

/* 이미지 크기 및 위치 조정 */
.mySlides img {
  width: 500px;
  height: 300px;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 30px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 1.0s;
}

.numbertext {
  color: black;
}
 hr {
    width: 100%;
    margin: 0 auto;
    border: none;
    border-top: 1px solid black;
    margin-top: 0rem;
    margin-bottom: 2rem;
  }
  
@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>
</head>
<body>

<h1>슬라이드쇼 페이지 입니다.</h1>
<hr>

<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 4</div>
   <img src="./a.jpg" style="width: 1000px; height: 600px;">
  <div class="text">새 기구 레그프레스 입고!</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 4</div>
    <img src="./b.jpg" style="width: 1000px; height: 600px;">
  <div class="text">헬스장 전체 사진</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 4</div>
   <img src="./c.jpg" style="width: 1000px; height: 600px;">
  <div class="text">원판 대량 입고!</div>
</div>

<div class="mySlides fade">
  <div class="numbertext" >4 / 4</div>
  <img src="./d.jpg" style="width: 1000px; height: 600px;">
  <div class="text">새로운 그립 입곤</div>
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span>
  <span class="dot"></span> 
</div>

<script>
let slideIndex = 0;
showSlides();

function showSlides() {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 1000);
}
</script>
</body>
</html> 