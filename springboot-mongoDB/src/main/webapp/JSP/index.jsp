<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
<meta charset="utf-8"/>
<link href="/twitter-bootstrap/twitter-bootstrap-v2/docs/assets/css/bootstrap2.2.css" rel="stylesheet">  
	<link rel="stylesheet" href="demo.css">
	<link rel="stylesheet" href="footer-distributed.css">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/jquery.js"></script>
	<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">   
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css">
	<script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<title>Employee Manager</title>
</head>
<body>
<div align="center">
    <h1>Employee List</h1>
    <!-- <a href="/new">Create New Employee</a> -->
    <br/><br/>
    
     <!-- ============== Table with population of data ================= -->    
 <div class="container">  
 	<form action="viewproductwidimg.jsp" method="get">
       <table id="myTable" class="table table-striped" >  
        <thead>  
          <tr>  
            <th>Employee ID</th>  
            <th>Employee Name</th>  
            <th>Designation</th>  
            <th>Actions</th>
          </tr>  
        </thead>  
        <tbody>  
        <c:forEach items="${listOfEmployees}" var="element">
          <tr>  
            <td>${element.id}</td>  
            <td>${element.name}</td>  
            <td>${element.designation}</td>  
            <!-- <td>
                    <a th:href="/@{'/edit/' + ${element.id}}">Edit</a>
                    &nbsp;&nbsp;&nbsp;
                    <a th:href="/@{'/delete/' + ${element.id}}">Delete</a>
            </td> -->
          </tr>  
 	</c:forEach>
        </tbody>  
      </table>  
     </form>
 </div>
    
    
</div>   
</body>
</html>