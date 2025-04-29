<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멋사 영화</title>
<!-- <link rel="stylesheet" href="./css/bootstrap.css"/> -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">


<link rel="stylesheet" href="./css/index.css"/>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
	
	<header>
		<div class="inner">
			<img class="logo" src="./image/logo.png"/>
			
			<div>
				<span class="menu-item" >영화리스트</span>
				<span class="menu-item">국내영화</span>
				<span class="menu-item">외국영화</span>
				<span class="menu-item">전국영화관</span>
				<span class="menu-item">최근기사</span>
				<span class="menu-item">블로그</span>
			</div>
		</div>
	</header>
	
	<div class="top-img-container">
		<img src="./image/bg.jpg"/>
		<div class="overlay-box">
			<span>
				<font class="highlight">멋쟁이사자처럼</font>
				<br/>
				<font>일별박스오피스 조회</font>
			</span>
		</div>
	</div>
	
	
	<section>
		<div class="inner">
			<div style="display: flex;justify-content:space-between;
			margin-bottom:30px;">
				<span class="mini-title">일별박스오피스 조회</span>
				
				<div>
					<input id="date" type="date"/>
					<button id="get-movie-btn">
						<i class="fa-solid fa-magnifying-glass"></i>
						<span>조회하기</span>
					</button>
				</div>
			</div>
			
			<table class="table">
			  <thead>
			    <tr>
			      <th scope="col">순위</th>
			      <th scope="col">영화명</th>
			      <th scope="col">누적관객수</th>
			      <th scope="col">개봉일</th>
			    </tr>
			  </thead>
			  <tbody id="movie-list">

			  </tbody>
			</table>
		</div>
	</section>
</body>

<script src="./js/rest-api.js"></script>

</html>