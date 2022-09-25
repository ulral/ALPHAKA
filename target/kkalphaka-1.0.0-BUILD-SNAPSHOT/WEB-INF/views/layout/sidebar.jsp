<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

        <!-- Sidebar - Brand -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="${pageContext.request.contextPath}/">
            <div class="sidebar-brand-icon rotate-n-15">
                <img src="${pageContext.request.contextPath}/resources/img/alphaka_logo.png" width="50px;" height="50px;"/>
                <!-- <i class="fas fa-laugh-wink"></i> -->
            </div>
            <div class="sidebar-brand-text mx-3">ALPHAKA COIN</div>
        </a>



        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            메뉴
        </div>

        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                aria-expanded="true" aria-controls="collapseTwo">
                <i class="fas fa-fw fa-cog"></i>
                <span>게시판</span>
            </a>
            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">게시판 종류:</h6>
                    <a class="collapse-item" href="${pageContext.request.contextPath}/board/tables">테이블 게시판</a>
                    <a class="collapse-item" href="${pageContext.request.contextPath}/board/buttons">버튼(샘플 페이지)</a>
                    <a class="collapse-item" href="${pageContext.request.contextPath}/board/cards">카드(샘플 페이지)</a>
                </div>
            </div>
        </li>

        <!-- Nav Item - Utilities Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                aria-expanded="true" aria-controls="collapseUtilities">
                <i class="fas fa-fw fa-wrench"></i>
                <span>API</span>
            </a>
            <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">API 종류:</h6>
                    <a class="collapse-item" href="${pageContext.request.contextPath}/utils/colors">Colors</a>
                    <a class="collapse-item" href="${pageContext.request.contextPath}/utils/borders">Borders</a>
                    <a class="collapse-item" href="${pageContext.request.contextPath}/utils/animations">Animations</a>
                    <a class="collapse-item" href="${pageContext.request.contextPath}/utils/others">Other</a>
                </div>
            </div>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            에드온
        </div>

        <!-- Nav Item - Charts -->
        <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/charts">
                <i class="fas fa-fw fa-chart-area"></i>
                <span>차트(샘플페이지)</span>
            </a>
        </li>

        <!-- Nav Item - Tables -->
        <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/tables">
                <i class="fas fa-fw fa-table"></i>
                <span>게시판(샘플페이지)</span>
            </a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block">
        <!-- Sidebar Toggler (Sidebar) -->
        <div class="text-center d-none d-md-inline">
            <button class="rounded-circle border-0" id="sidebarToggle"></button>
        </div>

    </ul>
    <!-- End of Sidebar -->