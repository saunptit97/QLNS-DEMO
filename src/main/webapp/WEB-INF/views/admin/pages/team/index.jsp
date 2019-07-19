<%-- 
    Document   : index
    Created on : Jul 14, 2019, 5:11:24 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AdminLTE | Team</title>
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
        Team
        <small>Team - Manager</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i>Dashboard</a></li>
        <li class="active">Team</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                      <h3 class="box-title">Hover Data Table</h3>
                    </div>
                <div class="box-body">
                  <table id="example2" class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Team</th>
                            <th>Description</th>
                            <th>Team parent</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>GD</td>
                            <td>GD</td>
                            <td>NTS </td>
                            <td>
                                <a href="#"><button class="btn btn-warning">Edit</button></a>
                                <a href="#"><button class="btn btn-danger">Delete</button></a>
                            </td>
                        </tr>
                    </tbody>
                  </table>
                </div>
            </div>
            </div>
        </div>
    </section>
  </div>
   <jsp:include page="../../footer/footer.jsp"/>
</body>
</html>
