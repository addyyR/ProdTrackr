<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./design.jsp" %>
</head>
<body>
	
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">

				<h1 class="text-center mb-3">Update the product detail</h1>

				<form action="${pageContext.request.contextPath }/handle-product" method="post">
					
					<input type="hidden" value="${product.product_id}" name="product_id" />
					
					<div class="form-group">
						<label for="name">Product Name</label> 
						<input type="text" class="form-control" id="name" 
							aria-describedby="emailHelp" name="product_name" 
							placeholder="Enter the product name here" 
							value="${product.product_name}">
					</div>


					<div class="form-group">
						<label for="description">Product Description</label>
						<textarea class="form-control" name="product_description" id="description"
							rows="5" placeholder="Enter the product description">${product.product_description}
						</textarea>
					</div>


					<div class="form-group">
						<label for="price">Product Price</label> 
						<input type="text" placeholder="Enter Product Price" name="product_price"
							class="form-control" id="price" value="${product.product_price }">
					</div>

					<div class="container text-center">

						<a href="${pageContext.request.contextPath }/"
							class="btn btn-outline-danger">Back</a>

						<button type="submit" class="btn btn-primary">Update</button>
					</div>
				</form>


			</div>
		</div>
	</div>
	
</body>
</html>