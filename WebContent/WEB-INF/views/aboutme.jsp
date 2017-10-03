
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<div class="row" id="header">
	<div class="title">
		<h1>contact</h1>
		<div class="title-content">
			<p class="title-content-header">email</p>
			<p>yanyee_wong@alumni.sutd.edu.sg</p>
		</div>
	</div>

</div>
<div class="row" id="skills">
	<div class="title">
		<h1>skills</h1>
	</div>

	<div class="col-md-3 blue-board" id="board-1">
		<div class="board-content">
			<h1 class="header">
				WEB<br>DEVELOPMENT
			</h1>
			<div id="client-sever">
				client server
				<hr>
			</div>
			<div id="client-server-content">
				<ul id="client-content">
					<li>HTML</li>
					<li>SCSS</li>
					<li>JQUERY</li>
					<li>GULP</li>
					<li>BOWER</li>
				</ul>
				<ul id="server-content">
					<li>J2EE</li>
					<li>
						SPRING<br>MVC
					</li>
					<li>MAVEN</li>
					<li>
						AZURE<br>WEB APP
					</li>
				</ul>
			</div>

		</div>
		<p>
			This is the tech stack I often use for web development. IDE used is
			Java Eclipse Neon for both server side and jsp pages (written in
			html), and Chrome Dev Tools for styling css (using scss preprocesser)
			<br> <br>I have also developed Sharepoint Provider-Hosted
			ASP.NET Core web applications using the .NET 4.5 libraries with
			Visual Studios.
		</p>
	</div>

	<div class="col-md-3 blue-board" id="board-2">
		<h1 class="header">
			DATA<br>ANALYTICS
			<hr>
		</h1>
		<ul id="board-2-content">
			<li>
				regression<br>(multinomial)
			</li>
			<li>classifiers / svm</li>
			<li>k-means clustering</li>
			<li>
				neural networks<br>alexnet
			</li>
		</ul>
		<div>
			<p>For data analysis, these are the concepts mainly applied in
				the predictive modelling projects that I have been involved with.

				Feature selection are cross-validation techniques are applied before
				training, with a loss optimisation based on a logistic function.</p>
		</div>
	</div>
	<div class="col-md-3 blue-board" id="board-3">
		<div class="board-content">
			<h1 class="header">
				IOT<br>DEVELOPMENT
				<hr>
			</h1>
			<img src="<s:url value="resources/imgs/iot.png"/>">

		</div>
		<p>In IOT, projects dealt mainly with a wifi connection between a
			Arduino board equipped with a ESP8266 wifi chip, that communicates
			with an Android application and ThingSpeak server.</p>

	</div>

</div>
<div class="row" id="footer">
	<div class="title">
		<h1>education</h1>

		<div class="title-content">
			<p class="title-content-header">Bachelor of Engineering</p>
			<p>Singapore University of Technology and Design</p>
		</div>
	</div>

</div>