<%-- 
    Document   : create
    Created on : Jul 14, 2019, 6:37:12 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AdminLTE | Employee</title>
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
  </aside>
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Employee
        <small>Employee - Manager</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i>Dashboard</a></li>
        <li class="active">Employee</li>
      </ol>
    </section>
    <section class="content container-fluid">
       <div class="row">
            <div class="col-xs-12">
                <form role="form">
                    <div class="col-md-8">
                        <div class="box box-primary">
                            <div class="box-header with-border">
                              <h3 class="box-title">Create new Position</h3>
                            </div>
                                <div class="box-body">
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Name</label>
                                  <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter your position">
                                </div>
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Parent</label>
                                  <select class="form-control">
                                      <option value="0" disabled="true" selected="true">Select your parent</option>
                                      <option>GD</option>
                                      <option>D1</option>
                                  </select>
                                </div>  
                                <div class="form-group">
                                  <label for="exampleInputPassword1">Description</label>
                                  <textarea rows="5" class="form-control"></textarea>
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
                                <button type="submit" class="btn btn-primary">Submit</button>
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
</body>
</html>
