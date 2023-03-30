<%@page import="com.db.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>
<%@include file="component/allcss.jsp" %>


<style type="text/css">
.paint-card{
	box-shadow:0 0 10px 0 rgba(0, 0, 0, 0.3);
}

</style>



</head>
<body>
	<%@include file="component/navbar.jsp" %>
	
<%-- 	<% Connection conn=DBConnect.getConn();
	out.print(conn);
	%> --%>
	
	
	
	
	


<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/hos8.jpg" class="d-block w-100" alt="..." height="500px">
    </div>
    <div class="carousel-item">
      <img src="img/hos7.jpg" class="d-block w-100" alt="..." height="500px">
    </div>
    <div class="carousel-item">
      <img src="img/hos9.jpg" class="d-block w-100" alt="..." height="500px">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<div class="container p-3">
	<p class="text-center fs-2">Về phòng khám chúng tôi</p>
	<div class="row">
	<div class="col-md-8 p-5">
		<div class ="row">
			<div class="col-md-6">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-5">Dữ liệu bệnh nhân</p>
						<p>Thông tin xác định bệnh nhân, cùng với thông tin chi tiết về sức khỏe hoặc điều trị của họ.</p>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-5">Dữ liệu quản trị viên</p>
						<p>Tất cả dữ liệu thu thập để ghi lại các hoạt động về các lần thăm khám và kết quả của bệnh nhân.</p>
					</div>
				</div>
			</div>
			
			<div class="col-md-6 mt-2">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-5">Dữ liệu bác sĩ</p>
						<p>Thông tin xác định bác sĩ, cùng với thông tin chi tiết về chuyên môn điều trị của họ.</p>
					</div>
				</div>
			</div>
			
		</div>
	
	</div>
		<div class="col-md-4">
			<img alt="" src="img/doct.jpg">
		</div>
	</div>
</div>


<hr>

<div class="container p-2">
	<p class="text-center fs-2">Đội ngũ bác sĩ</p>
	<div class="row">
		<div class="col-md-3">
			<div class="card paint-card">
				<div class="card=body text-center">
					<img src="img/doc1.png" width="250px" height="300px">
					<p class="fw-bold fs-5">Bác sĩ Đồ</p>
					<!-- <p class="fs-7">Đồ</p> -->
				</div>
			</div>
		</div>
		
		<div class="col-md-3">
			<div class="card paint-card">
				<div class="card=body text-center">
					<img src="img/doc2.jpg" width="250px" height="300px">
					<p class="fw-bold fs-5">Bác sĩ Án</p>
					<!-- <p class="fs-7">Án</p> -->
				</div>
			</div>
		</div>		
		
		<div class="col-md-3">
			<div class="card paint-card">
				<div class="card=body text-center">
					<img src="img/doc3.png" width="250px" height="300px">
					<p class="fw-bold fs-5">Bác sĩ Môn</p>
					<!-- <p class="fs-7">Môn</p> -->
				</div>
			</div>
		</div>	
		<div class="col-md-3">
			<div class="card paint-card">
				<div class="card=body text-center">
					<img src="img/doc4.png" width="250px" height="300px">
					<p class="fw-bold fs-5">Bác sĩ Học</p>
					<!-- <p class="fs-7">Học</p> -->
				</div>
			</div>
		</div>		
			
	</div>
</div>




<%@include file="component/footer.jsp" %>

</body>
</html>