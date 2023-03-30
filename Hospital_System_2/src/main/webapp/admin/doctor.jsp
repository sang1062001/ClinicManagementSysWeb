<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Specalist"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.SpecialistDao"%>

<%@page import="com.dao.SpecialistDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang bác sĩ</title>
<%@include file="../component/allcss.jsp"%>


<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>

</head>
<body>
	<%@include file="navbar.jsp" %>
	
	<div class="container-fluid p-3">
		<div class="row">

			<div class="col-md-5 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Thêm bác sĩ</p>
						<c:if test="${not empty errorMsg}">
							<p class="fs-3 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty succMsg}">
							<div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
							<c:remove var="succMsg" scope="session" />
						</c:if>
						<form action="../addDoctor" method="post">
							<div class="mb-3">
								<label class="form-label">Họ và Tên bác sĩ</label> <input type="text"
									required name="fullname" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Ngày sinh</label> <input type="date"
									required name="dob" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Chuyên môn</label> <input required
									name="qualification" type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Chức vụ</label> <select name="spec"
									required class="form-control">
									<option>--select--</option>
									
									<% SpecialistDao dao = new SpecialistDao(DBConnect.getConn());
									
										List<Specalist> list = dao.getAlSpecalists();
										for(Specalist s : list)
										{%>
											<option><%=s.getSpecialistName()%></option>
										<%}
									
									%>




								</select>
							</div>

							<div class="mb-3">
								<label class="form-label">Email</label> <input type="text"
									required name="email" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Số điện thoại</label> <input type="text"
									required name="mobno" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Mật khẩu</label> <input required
									name="password" type="password" class="form-control">
							</div>

							<button type="submit" class="btn btn-primary">Thêm</button>
						</form>
					</div>
				</div>
			</div>


			
<%-- 			<div class="col-md-8">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Danh sách bác sĩ</p>
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Họ và Tên bác sĩ</th>
									<th scope="col">Ngày sinh</th>
									<th scope="col">Chuyên môn</th>
									<th scope="col">Chức vụ</th>
									<th scope="col">Email</th>
									<th scope="col">Số điện thoại</th>
									<th scope="col">Thực hiện</th>
								</tr>
							</thead>
							<tbody>
								
								<%
								DoctorDao dao2 = new DoctorDao(DBConnect.getConn());
								List<Doctor> list2 = dao2.getAllDoctor();
								for (Doctor d : list2) 
								{%>
								<tr>
									<td><%=d.getFullName()%></td>
									<td><%=d.getDob()%></td>
									<td><%=d.getQualification()%></td>
									<td><%=d.getSpecialist()%></td>
									<td><%=d.getEmail()%></td>
									<td><%=d.getMobNo()%></td>
									<td>
									<a href="edit_doctor.jsp?id=<%=d.getId()%>" class="btn btn-sm btn-primary">Chỉnh sửa</a> 										
									<a href="#" class="btn btn-sm btn-danger">Xóa</a>
									</td>
								</tr>
								<%}
								%>
								
								
								
							
							</tbody>					
						
						</table>
					
					</div>
				
				</div>
			
			
			</div> --%>





			
		</div>
	</div>







</body>
</html>