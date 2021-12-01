<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<title><tiles:insertAttribute name="title" /></title>

<tiles:insertAttribute name="header" />
<tiles:insertAttribute name="scripts" />

<body id="page-top">
<!-- Page Wrapper -->
	<div id="wrapper">
	<tiles:insertAttribute name="sidebar" />
	<!-- Content Wrapper -->
	<div id="content-wrapper" class="d-flex flex-column">
			<!-- Main Content -->
			<div id="content">
				<tiles:insertAttribute name="top_navi" />
				<tiles:insertAttribute name="body" />
			</div>
				<tiles:insertAttribute name="footer" />
		</div>

	 </div>
     <!-- End of Page Wrapper -->     
	<tiles:insertAttribute name="scroll_up" />
	<tiles:insertAttribute name="logout_modal" />
	<script src="${pageContext.request.contextPath}/resources/js/sb-admin-2.min.js"></script>
</body>

</html>
