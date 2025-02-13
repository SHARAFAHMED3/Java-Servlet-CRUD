<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>

<html>
<head>
    <title>Add New Student</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <h2>Add New Student</h2>

        <!-- Add New Student Form -->
        <div class="card mb-4">
        
            <div class="card-header">Student Details</div>
            <div class="card-body">
                <form action="StudentServlet" method="post">
                    <input type="hidden" name="action" value="add">
                    <div class="form-group">
                        <label for="name">Full Name:</label>
                        <input type="text" name="name" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Email:</label>
                        <input type="email" name="email" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label for="phone">Phone:</label>
                        <input type="text" name="phone" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="address">Address:</label>
                        <input type="text" name="address" class="form-control">
                    </div>
              
                    <button type="submit" class="btn btn-primary">Add Student</button>
                    <a href="StudentServlet" class="btn btn-secondary">Cancel</a>
                </form>
            </div>
        </div>

        <!-- Back to Student List -->
        <a href="StudentServlet" class="btn btn-secondary">Back to Student List</a>
    </div>
</body>
</html>
