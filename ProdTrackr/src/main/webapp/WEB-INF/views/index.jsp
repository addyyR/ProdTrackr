<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./design.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>ProdTrackr</title>
</head>
<body>
	
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">

				<h1 class="text-center mb-4">Welcome to ProdTrackr</h1>

				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Product Name</th>
							<th scope="col">Description</th>
							<th scope="col">Price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach items="${products }" var="p">
							<tr>
								<th scope="row">SRN_${p.product_id }</th>
								<td>${p.product_name }</td>
								<td>${p.product_description }</td>
								<td class="font-weight-bold">&dollar; ${p.product_price }</td>
								<td>
								<a href="update/${p.product_id }"><i class="fas fa-solid fa-pen" style="color: #000000; font-size: 22px;"></i></a>
								<a href="delete/${p.product_id }"><i class="fas fa-solid fa-trash" style="color: #000000; font-size: 22px; padding-left: 15px"></i></a>								
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

				<div class="container text-center">
					<a href="add-product" class="btn btn-outline-success">Add Product</a>
				</div>


			</div>
		</div>
	</div>
	
</body>
</html>
