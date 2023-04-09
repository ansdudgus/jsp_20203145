<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>MYH Fitness 정보 페이지</title>
<style>
  body {
    background-color: gray;
  }
  hr {
    width: 100%;
    margin: 0 auto;
    border: none;
    border-top: 1px solid black;
    margin-top: 0rem;
    margin-bottom: 2rem;
  }
  .right {
    float: right;
  }
</style>
</head>
<h1> 운동 정보, 식품 정보 제공 페이지 입니다.</h1> <hr>
<h3> 헬스장에 처음 등록한 분은 아래의 영상 시청을 추천합니다!</h3>
<body>
<iframe width="560" height="315" src="https://www.youtube.com/embed/pXzEw2D8bds" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
<img src="food.jpg" alt="식품 정보" width="400" class="right">
<br> <br> <br> <br> <br>
<div style="text-align: right;">
   <h3>오늘의 추천 건강식: 달걀아보카도 샐러드</h3>
   <a href="https://www.pinterest.co.kr/pin/559290847477849690/">오늘의 음식 재료 확인하기</a>
</div>
<h3>헬스장에서 가장 많은 신청곡</h3>
<audio controls>
  <source src="Music.mp3" type="audio/mpeg">
</audio>
<a href="./welcome.jsp">메인페이지로 이동하기</a>
</body>
</html>
