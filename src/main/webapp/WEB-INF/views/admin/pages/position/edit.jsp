<%-- 
    Document   : create
    Created on : Jul 14, 2019, 6:35:10 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <jsp:include page="../../block/sidebar-top.jsp"/>
  
        <jsp:include page="../../block/sidebar.jsp"/>
      <!-- /.sidebar-menu -->
    </section>
  </aside>
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
    <section class="content container-fluid">
        <div class="row">
            <div class="col-xs-12">
                <form role="form" method="POST">
                    <div class="col-md-8">
                        <div class="box box-primary">
                            <div class="box-header with-border">
                              <h3 class="box-title">Update Position</h3>
                            </div>
                                <div class="box-body">
                                <input type="hidden" name="id" value="${position.id }" id="id"/>
                                <div class="form-group name-position" style="margin-bottom: 20px; height: 70px">
                                  	<label for="exampleInputEmail1">Name</label>
                                  	<input type="text" class="form-control" id="name" name="name" placeholder="Enter your position" value="${position.name}">
                                	<small class="help-block" id="error-name"></small>
                                </div>
                                <div class="form-group">
                                  <label for="exampleInputPassword1">Description</label>
                                  <textarea rows="5" class="form-control" name="description" id="description">${position.description}</textarea>
                                </div>
                              </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="box">
                            <div class="box-header with-border">
                                <h3 class="box-title">Handle Form</h3>
                            </div>
                            <div class="box-footer">
                                <button type="submit" class="btn btn-primary" id="handlePosition">Update</button>
                                <button class="btn btn-primary">Reset</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
  </div>
   <jsp:include page="../../footer/footer.jsp"/>
   <script>
	   $('#handlePosition').on('click', function(e) {
		    e.preventDefault(); // Now link won't go anywhere
		    var name = $("#name").val();
		    var description = $("#description").val();
		    var id = $("#id").val();
		    if(name == ""){
		    	$(".name-position").addClass("has-error");
		    	$("#error-name").html("Not empty");
		    }
		    $.ajax({
				type : "POST",
				url : "/spring-mvc-qlns/admin/position/update",
				data: {
					id: id,
					name: name,
					description: description
				},
				dataType : 'json',
				success : function(data) {
					if(data == true){
						swal({
							  title: "Update position successfully!",
							  type: "success",
							},
							function(){
								window.location.href = "/spring-mvc-qlns/admin/position/index";
							});
					}
				},
				error : function(e) {
					console.log("ERROR: ", e);
				}
			});
		});
   </script>
</body>
</html>

