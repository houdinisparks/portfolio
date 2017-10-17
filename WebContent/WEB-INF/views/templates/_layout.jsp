<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="t"%>
<%@ page session="false"%>

<!-- ignore - if attribute = null, ignore -->
<t:importAttribute name="scriptlist_dev" ignore="true" />
<t:importAttribute name="csslist_dev" ignore="true" />
<t:importAttribute name="scriptlist_prod" ignore="true" />
<t:importAttribute name="csslist_prod" ignore="true" />

<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>wong yan yee</title>

<c:choose>
	<c:when test="${initParam['spring.profiles.active'] =='dev'}">
		<!-- if spring environment is dev -->

		<link rel="stylesheet" type="text/css"
			href="<s:url value="/resources/bower_components/bootstrap/dist/css/bootstrap.min.css"/>" />
		<link rel="stylesheet" type="text/css"
			href="<s:url value="/resources/css/tp_layout.css"/>" />
		<!-- stylesheets csslist imported attribute from tiles.xml-->
		<c:forEach var="css" items="${csslist_dev}">
			<link rel="stylesheet" type="text/css" href="<s:url value="${css}"/>">
		</c:forEach>
		<!-- end stylesheets -->

		<script
			src="<s:url value="/resources/bower_components/jquery/dist/jquery.min.js"/>"></script>
		<script
			src="<s:url value="/resources/bower_components/bootstrap/dist/js/bootstrap.min.js"/>"></script>
		<!-- scripts scriptlist imported attribute from tiles.xml-->
		<c:forEach var="script" items="${scriptlist_dev}">
			<script src="<s:url value="${script}"/>"></script>
		</c:forEach>
		<!-- end scripts -->

	</c:when>

	<c:otherwise>
		<!-- else -->

		<link rel="stylesheet" type="text/css"
			href="<s:url value="/resources/css/_layout.min.css"/>" />
		<!-- stylesheets csslist_prod imported attribute from tiles.xml-->
		<c:forEach var="css" items="${csslist_prod}">
			<link rel="stylesheet" type="text/css" href="<s:url value="${css}"/>">
		</c:forEach>
		<!-- end stylesheets -->
		<script src="<s:url value="/resources/js/_layout.min.js"/>"></script>
		<!-- scripts scriptlist imported attribute from tiles.xml-->
		<c:forEach var="script" items="${scriptlist_prod}">
			<script src="<s:url value="${script}"/>"></script>
		</c:forEach>
		<!-- end scripts -->
	</c:otherwise>
</c:choose>


</head>
<body class="container-fluid">
	<div class="row">
		<div id="left-nav-bar" class="col-md-2 col-sm-12">
			<div class="row" id="nav-bar-content">
				<div class="name col-xs-4 col-xs-offset-1 col-md-offset-1 col-md-10">
					<h2>Wong Yan Yee</h2>
					<h3>fresh graduate</h3>
				</div>
				<div id="nav-bar-buttons" class="col-xs-7 col-md-offset-1 col-md-10">
					<div class="row">
						<a class="btn btn-1 col-xs-5 col-md-offset-2 col-md-8"
							href="<s:url value="/home"/>"> <svg> <rect x="0" y="0"
									fill="none" width="100%" height="100%" /> </svg>
							<div class="nav-button-text">about me</div>

						</a> <a
							class="btn btn-1 col-xs-5 col-xs-offset-1 col-md-offset-2 col-md-8"
							href="<s:url value="/myprojects"/>"> <svg> <rect x="0"
									y="0" fill="none" width="100%" height="100%" /> </svg>
							<div class="nav-button-text">my projects</div>
						</a>
					</div>

				</div>
			</div>
		</div>
		<div id="content" class="col-md-10 col-sm-12">

			<t:insertAttribute name="content" />
		</div>


	</div>
</body>
</html>