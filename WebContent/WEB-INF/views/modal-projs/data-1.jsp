<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<p>
	Dataset: <a
		href="https://drive.google.com/open?id=0By1GEJQk8NZkUzhwbDMwbmp6THc">
		https://drive.google.com/open?id=0By1GEJQk8NZkUzhwbDMwbmp6THc </a> <br>
	<br>Both files have three columns: one for the movie ID, one for the user
	ID and one for the rating ID, in that order. For example, a row of
	5,3,4 means that user 3 has given to movie 5 a rating of 4. <br>
	<br>Goal: To recommend movies to users based on what other users have
	liked. <br> <br>Technique Used:<br> Restricted Boltzmann Machines
	(RBM). This is a two layer neural network as exemplified below:
</p>
<img src="<s:url value="resources/imgs/data-1.png"/>">

<p>The visible layer (bottom layer) receives the movie ratings of
	each user as inputs and then its transferred to the hidden layer which
	then undergoes a non-linear transformation.</p>

<p>
	Parameters to tune: <br>
<ul>
	<li># of hidden units in hidden layer</li>
	<li># of epochs (# of times to update weights)</li>
</ul>

</p>
<p>Extensions done:
<ul>
	<li>Adaptive learning rate</li>
	<li>Regularisation</li>
	<li>Early Stop</li>
</ul>
</p>
<p>We found the optimal parameters to be: 16 hidden units, 3000
	epochs. For the optimal parameters tuned for the extensions, please
	look at the report.</p>

<p>
	For more information, check out these links below:<br> <a
		href=" https://drive.google.com/open?id=1ErK0f5ajTJpWvtcYehxslqfNxRZpZYocRljoLwjlQDs">
		Report</a><br> <br> <a
		href="https://drive.google.com/open?id=0By1GEJQk8NZkUzhwbDMwbmp6THc">Source
		Code </a> <br> <br> </a>
</p>