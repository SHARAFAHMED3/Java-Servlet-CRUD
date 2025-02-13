<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page import="java.util.List" %>
    
<html>
<head>
    <title>Student Management</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-image: url('image.jpg');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
        }
        table{
             background-color: #f8f9fa;
             box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
             border-radius:10px;

        }
    </style>
</head>
<body>
<div class="container mt-5">
    <h2>Student Management System</h2>

    <!-- Edit form, visible only when student is selected for edit -->
	<c:if test="${not empty id}">
	    <div class="card mb-4">
	        <div class="card-header">Edit Student</div>
	        <div class="card-body">
	            <form action="StudentServlet" method="post">
	                <input type="hidden" name="action" value="update">
	                <input type="hidden" name="id" value="${id}">
	                
	                <div class="form-group">
	                    <label for="name">Full Name</label>
	                    <input type="text" class="form-control" id="name" name="name" value="${name}">
	                </div>
	                
	                <div class="form-group">
	                    <label for="email">Email</label>
	                    <input type="email" class="form-control" id="email" name="email" value="${email}">
	                </div>
	                
	                <div class="form-group">
	                    <label for="phone">Phone</label>
	                    <input type="text" class="form-control" id="phone" name="phone" value="${phone}">
	                </div>
	                <div class="form-group">
	                    <label for="address">Address</label>
	                    <input type="text" class="form-control" id="address" name="address" value="${address}">
	                </div>
	                
	             
	                
	                
	                <button type="submit" class="btn btn-primary">Save Changes</button>
	            </form>
	        </div>
	    </div>
	</c:if>
	

    <!-- Table to list all students -->
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>Full Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Address</th>
                <th>Actions</th>
            </tr> 
        </thead>
        <tbody>
            <c:forEach var="student" items="${students}">
		    <tr>
		        <td>${student[1]}</td>  
		        <td>${student[2]}</td>  
		        <td>${student[3]}</td>  
		        <td>${student[4]}</td> 
		        <td>
		            <a href="StudentServlet?action=edit&id=${student[0]}" class="btn btn-info btn-sm">Edit</a> 
		            <a href="StudentServlet?action=delete&id=${student[0]}" class="btn btn-danger btn-sm">Delete</a> 
		        </td>
		    </tr>
		</c:forEach>

        </tbody>
    </table>

    <a href="StudentServlet?action=addPage" class="btn btn-success">Add New Student</a>
    
</div>
</body>
</html>
