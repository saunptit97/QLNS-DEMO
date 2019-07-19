<%-- 
    Document   : sidebar
    Created on : Jul 13, 2019, 9:41:35 PM
    Author     : DELL
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<ul class="sidebar-menu" data-widget="tree">
    <li class="header active"><a href="<c:url value="/admin/index"/>">Dashboard</a></li>
    <!-- Optionally, you can add icons to the links -->
    
    <li class="treeview">
        <a href="#"><i class="fa fa-group"></i> <span>Teams</span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
            </span>
        </a>
        <ul class="treeview-menu">
            <li><a href="<c:url value="/admin/team/index" />">All Teams</a></li>
            <li><a href="<c:url value="/admin/team/create"/>">Add New Team</a></li>
        </ul>
    </li>
    <li class="treeview">
        <a href="#"><i class="fa fa-star"></i> <span>Positions </span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
            </span>
        </a>
        <ul class="treeview-menu">
            <li><a href="<c:url value="/admin/position/index" />">All Positions</a></li>
            <li><a href="<c:url value="/admin/position/create" />">Add New Position</a></li>
        </ul>
    </li>
     <li class="treeview">
        <a href="#"><i class="fa fa-user"></i> <span>Employees </span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
            </span>
        </a>
        <ul class="treeview-menu">
            <li><a href="<c:url value="/admin/employee/index" /> ">All Employees</a></li>
            <li><a href="<c:url value="/admin/employee/create" /> ">Add New Employee</a></li>
        </ul>
    </li>
</ul>