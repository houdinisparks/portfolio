<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="t"%>
<%@ page session="false"%>

<t:importAttribute name="scriptlist" ignore="true"/>
<t:importAttribute name="csslist" ignore="true"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>wong yan yee</title>

<!-- <link rel="stylesheet" type="text/css" -->
<%-- 	href="<s:url value="/css/_layout.css" />"> --%>

<link rel="stylesheet" type="text/css"
	href="<s:url value="/resources/bower_components/jquery/dist/jquery.min.js"/>" />
<link rel="stylesheet" type="text/css"
	href="<s:url value="/resources/bower_components/bootstrap/dist/css/bootstrap.min.css"/>" />
<link rel="stylesheet" type="text/css"
	href="<s:url value="/resources/css/tp_layout.css"/>" />
<!-- stylesheets csslist imported attribute from tiles.xml-->
<c:forEach var="css" items="${csslist}">
	<link rel="stylesheet" type="text/css" href="<s:url value="${css}"/>">
</c:forEach>
<!-- end stylesheets -->

<!-- scripts scriptlist imported attribute from tiles.xml-->
<c:forEach var="script" items="${scriptlist}">
	<script src="<s:url value="${script}"/>"></script>
</c:forEach>
<!-- end scripts -->

</head>
<body class="container-fluid">
	<div class="row">
		<div id="left-nav-bar" class="col-lg-2">
			<div class="row" id="nav-bar-content">
				<div class="col-lg-12">
					<div class="name">
						<h1>Wong Yan Yee</h1>
						<p>fresh graduate</p>

					</div>
					<div id="nav-bar-buttons">
						<a class="btn btn-1" href="<s:url value="/home"/>"> <svg> <rect x="0" y="0"
								fill="none" width="100%" height="100%" /> </svg> about me
						</a> <a class="btn btn-1" href="<s:url value="/myprojects"/>"> <svg> <rect x="0" y="0"
								fill="none" width="100%" height="100%" /> </svg> my projects
						</a>
					</div>
				</div>
			</div>
		</div>
		<div id="content" class="col-lg-10">

			<t:insertAttribute name="content" />
		</div>


	</div>
</body>
</html>