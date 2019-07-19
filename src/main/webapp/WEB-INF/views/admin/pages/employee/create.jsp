<%-- 
    Document   : create
    Created on : Jul 14, 2019, 6:34:58 PM
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
                              <h3 class="box-title">Create new Employee</h3>
                            </div>
                                <div class="box-body">
                                <div class="form-group">
                                  <label>Name</label>
                                  <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter your position">
                                </div>
                                <div class="form-group">
                                    <label>Gender</label><br/>
                                    Male <input type="radio" value="1" name="gender"/> Female <input type="radio" value="2" name="gender"/>
                                </div>
                                <div class="form-group">
                                    <label>Birthday</label><br/>
                                    <input type="date" name="birthday"/>
                                </div>    
                                <div class="form-group">
                                    <label>Address</label>
                                    <input type="text" name="address" class="form-control"/>
                                </div>
                                <div class="form-group">
                                    <label>Maritial status</label>
                                    <select name="maritial_status" class="form-control"> 
                                        <option value="1">Married</option>
                                        <option value="2">Single</option>
                                    </select>
                                </div> 
                                <div class="form-group">
                                    <label>Email</label>
                                    <input type="text" name="email" class="form-control"/>
                                </div> 
                                <div class="form-group">
                                    <label>Identification</label>
                                    <input type="text" name="identification" class="form-control"/>
                                </div>
                                <div class="form-group">
                                    <label>Created at</label>
                                    <input type="date" name="created_at"/>
                                </div>
                                <div class="form-group">
                                    <label>Information</label>
                                    <textarea name="information" class="form-control" rows = "5"></textarea>
                                </div>
                              </div>


                        </div>
                        <div class="box box-primary">
                            <div class="box-header with-border">
                              <h3 class="box-title">Work Information</h3>
                            </div>
                            <div class="box-body">
                                <div class="form-group">
                                    <label>Skype</label>
                                    <type type="text" name="skype" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <label>Position</label>
                                    <select name="position">
                                        <option value="1">1</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Team</label>
                                    <select name="position" class="form-control">
                                        <option value="1">1</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Started at</label><br/>
                                    <input type="date" name="started_at"/>
                                </div>
                                <div class="form-group">
                                    <label>Ended at</label><br/>
                                    <input type="date" name="ended_at"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                         <div class="box">
                            <div class="box-header with-border">
                                <h3 class="box-title">Avatar</h3>
                            </div>
                            <div class="box-footer">
                                <img href="#" style="width: 100px; height: 100px"  />
                                <input type="file" name="avatar"/>
                            </div>
                        </div>
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

