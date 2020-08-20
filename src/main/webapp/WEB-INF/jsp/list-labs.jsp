<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
	<div>
		<a type="button" class="btn btn-primary btn-md" href="/add-lab">Add Lab</a>
	</div>
	<br>
	<div class="panel panel-primary">
		<div class="panel-heading">
			List of Labs
		</div>

		<div class="table-wrapper-scroll-y my-custom-scrollbar">
			 <table class="table table-bordered table-striped mb-0">
		    	<thead>
					<tr>
					    <th width="30%">Lab Name</th>
						<th width="50%">Lab Type</th>
						<th width="20%"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${labs}" var="lab">
						<tr>
						    <td>${lab.name}</td>
							<td>${lab.labType}</td>

							<td><a type="button" class="btn btn-success"
								href="/update-lab?id=${lab.id}">Update</a>
							<a type="button" class="btn btn-warning"
								href="/delete-lab?id=${lab.id}">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</div>
<%@ include file="common/footer.jspf"%>