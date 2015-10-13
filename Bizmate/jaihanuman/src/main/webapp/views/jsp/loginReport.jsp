<html>
<%@page import = "java.text.*" session="true"%>
<%@page import = "java.util.*" session="true"%>
<head></head>
<body>
<div class="col-md-6">

<h4>Employees login details are as follows:</h4>
</div>
<div class="table-responsive">

<% 
/* Calendar cal = Calendar.getInstance();
cal.set(Calendar.HOUR_OF_DAY, 0);
cal.set(Calendar.MINUTE, 0);
cal.set(Calendar.SECOND, 0);
cal.set(Calendar.MILLISECOND, 0);
Date dateWithoutTime = cal.getTime(); */
DateFormat dateFormat = new SimpleDateFormat("MMM dd yyyy");
Date date = new Date();
String dateOnly=dateFormat.format(date);   %>
					<table class="table table-bordered">
						<thead>
							<tr>
								<th>Employee Id</th>
								<th>Employee Name</th>
								<th>Login Time</th>
							</tr>
						</thead>
						<tbody>
							<tr class="success">
								<td>201</td>
								<td>Krishna Chaitanya</td>
								<td><%=dateOnly %> 10:00 am</td>
							</tr>
							<tr class="success">
							<td>202</td>
								<td>Vijay Satlawar</td>
								<td><%=dateOnly %> 10:05 am</td>

							</tr>
							<tr class="info">
									<td>203</td>
								<td>Ajay Chowdary</td>
								<td><%=dateOnly %> 10:10 am</td>
							</tr>
							<tr class="warning">
								<td>204</td>
								<td>Ajay Chowdary</td>
								<td><%=dateOnly %> 10:30 am</td>

							</tr>
							<tr class="warning">
								<td>205</td>
								<td>Krishna kishore</td>
								<td><%=dateOnly %> 10:35 am</td>

							</tr>
							<tr class="danger">
								<td>206</td>
								<td>Varun Kishore</td>
								<td><%=dateOnly %> 11:00 am</td>
							</tr>
						</tbody>
					</table>
					</div>
					
</body>
</html>