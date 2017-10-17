<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="row title">
	<div class="col-xs-12">
		<h1>web development</h1>
	</div>
</div>
<div class="row content">
	<div class="col-xs-12">
		<c:forEach items="${webdevProjs}" var="projs">
			<div class="project-item" id="${projs.projId}">
				<h3 class="proj-title">
					<c:out value="${projs.title}" />
				</h3>
				<p class="proj-desc">
					<c:out value="${projs.description}" />
				</p>
				<div class="item-overlay">
					<button class="js-button btn btn-secondary-outline center-block"
						data-toggle="modal" data-target="#modalDesc" type="button"
						value="viewmore" role="button">View more</button>
				</div>
			</div>

		</c:forEach>
	</div>
</div>
<div class="row title">
	<div class="col-xs-12">
		<h1>data analytics</h1>
	</div>
</div>
<div class="row content">
	<div class="col-xs-12">

		<c:forEach items="${dataProjs}" var="projs">
			<div class="project-item" id="${projs.projId}">
				<h3 class="proj-title">
					<c:out value="${projs.title}" />
				</h3>
				<p class="proj-desc">
					<c:out value="${projs.description}" />
				</p>
				<div class="item-overlay">
					<button class="js-button btn btn-secondary-outline center-block"
						data-toggle="modal" data-target="#modalDesc" type="button"
						value="viewmore" role="button">View more</button>
				</div>
			</div>
		</c:forEach>
	</div>
</div>

<div class="row title">
	<div class="col-xs-12">
		<h1>internet of things</h1>
	</div>
</div>
<div class="row content">
	<div class="col-xs-12">

		<c:forEach items="${iotProjs}" var="projs">
			<div class="project-item" id="${projs.projId}">
				<h3 class="proj-title">
					<c:out value="${projs.title}" />
				</h3>
				<p class="proj-desc">
					<c:out value="${projs.description}" />
				</p>
				<div class="item-overlay">
					<button class="js-button btn btn-secondary-outline center-block"
						 type="button"
						value="viewmore" role="button">View more</button>
<!-- 						data-toggle="modal" data-target="#modalDesc" -->
				</div>
			</div>
		</c:forEach>
	</div>
</div>

<!-- Modal -->
<div id="modalDesc" class="modal fade" tabindex="-1" role="dialog"
	aria-labelledby="modalDescLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<!-- Modal - header -->
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h2 id="proj-title"></h2>
			</div>
			<!-- .end Modal - header -->
			<!-- Modal - body -->
			<div class="modal-body">

				<p id="proj-desc"></p>
			</div>
			<!-- .end Modal - body -->
		</div>
	</div>
</div>