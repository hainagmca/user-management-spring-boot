<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
	<div>
		<a type="button" class="btn btn-primary btn-md" href="/add-user">Add User</a>
	</div>
	<br>
	<div class="panel panel-primary">
		<div class="panel-heading">
			List of Users
		</div>

		<div class="table-wrapper-scroll-y my-custom-scrollbar">
			 <table class="table table-bordered table-striped mb-0">
		    	<thead>
					<tr>
					    <th width="20%">Name</th>
						<th width="30%">Email</th>
						<th width="20%">Target Date</th>
						<th width="30%"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${users}" var="user">
						<tr>
						    <td>${user.name}</td>
							<td>${user.email}</td>
							<td><fmt:formatDate value="${user.targetDate}"
									pattern="dd/MM/yyyy" /></td>
							<td><a type="button" class="btn btn-success"
								href="/update-user?id=${user.id}">Update</a>
							<a type="button" class="btn btn-warning"
								href="/delete-user?id=${user.id}">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</div>
<%@ include file="common/footer.jspf"%>