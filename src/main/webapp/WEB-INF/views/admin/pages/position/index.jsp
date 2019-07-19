<%-- 
    Document   : index
    Created on : Jul 14, 2019, 5:11:24 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AdminLTE | Position</title>
    </head>
    <jsp:include page="../../header/header.jsp"></jsp:include>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <!-- Main Header -->
  <jsp:include page="../../header/top-header.jsp"/>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <section class="sidebar">

      <!-- Sidebar user panel (optional) -->
      <jsp:include page="../../block/sidebar-top.jsp"/>
      <!-- /.search form -->

      <!-- Sidebar Menu -->
       <jsp:include page="../../block/sidebar.jsp"/>
      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Position
        <small>Position - Manager</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i>Dashboard</a></li>
        <li class="active">Position</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                      <h3 class="box-title">Hover Data Table</h3><br/>
                      <a href="/spring-mvc-qlns/admin/position/create"><button class="btn btn-primary" style="margin-top:20px">Add Position</button></a>
                    </div>
                <div class="box-body">
                  <table id="position" class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Position</th>
                            <th>Description</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                    	<c:forEach items="${positions}" var="position">
							<tr id="row-${position.id}">
								<td>${position.id}</td>
								<td>${position.name}</td>
								<td>${position.description}</td>
								<td>
									<a href="/spring-mvc-qlns/admin/position/edit/${position.id}"><button class="btn btn-warning">Edit</button></a>
									<a href="#" onclick="deletePosition(${position.id})"><button class="btn btn-danger">Delete</button></a>
								</td>
							</tr>
						</c:forEach>
                    </tbody>
                  </table>
                </div>
            </div>
            </div>
        </div>
    </section>
  </div>
   <jsp:include page="../../footer/footer.jsp"/>
   <script>
   
	function deletePosition(id){
		if(confirm("Are you sure you want to delete?")){
			$.ajax({
				type : "GET",
				url : "/spring-mvc-qlns/admin/position/delete/" + id,
				dataType : 'json',
				success : function(data) {
					if(data == true){
						swal({
							  title: "Delete position successfully!",
							  type: "success",
							},
							function(){
								//window.location.href = "/spring-mvc-qlns/admin/position/index";
								 $("#row-"+id).remove();				
							 });
					}
				},
				error : function(e) {
					console.log("ERROR: ", e);
				}
			});
		}
	}
   </script>
</body>
</html>
