
<p>This project introduces an interactive online web platform to
	view business process cycle documentations instead of viewing it in the
	form of static PDF documents. Each cycle is essentially a collection of
	network diagrams, and this new web platform allows the edition of these
	diagrams on a centralized repository for new users without having to
	dissemminate new pdf documents everytime there is a revision of the
	cycles.</p>

<p>The web platform is built on ASP.NET Core framework using VS2017
	as a provider-hosted Sharepoint App built with the help of a Sharepoint
	Context Authentication library (see references). This web app is hosted
	on Azure Web App Service, with CICD enabled with Azure Team Services.
	The client-side library used to render and edit the project lifecycle
	is mxGraph (see references).</p>

<p>
	Client frameworks used: Jquery, Bootstrap 3 , Gulp , Bower , npm <br>Server-side
	libraries used: ASP.NET Core 1.0, Nuget, AspNetCore.Authentication
</p>
<p>
	References: <br> <a
		href="https://github.com/SharePoint/PnP/tree/master/Solutions/AspNetCore.Authentication">
		https://github.com/SharePoint/PnP/tree/master/Solutions/AspNetCore.Authentication
	</a><br> <a href="https://github.com/jgraph/mxgraph">https://github.com/jgraph/mxgraph</a>
</p>