<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="container">

	<div class="panel panel-primary">
		<div class="panel-heading">Home Page</div>
		<div class="panel-body">
			Welcome ${name}!! <a href="/list-users">Click here</a> to manage your User's.
			<br> <br>
			Welcome ${name}!! <a href="/list-labs">Click here</a> to manage your Lab's.
		</div>
	</div>
</div>
<%@ include file="common/footer.jspf"%>