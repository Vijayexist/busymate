<head>
<script>
	$(document).ready(function() {
		$('#datepicker').datepicker();
		$('#datepicker1').datepicker();
	});

	/* function datePicker(){
	
	 $('#dp2').datepicker('show');
	 } */
</script>

</head>
<body>
	<h2>Todays Report</h2>

	<div class="row">
		<div class="form-group col-md-3">
			<div id="reqID">
				<input type="text" name="CategoryType" class="form-control"
					placeholder="Select category" />
			</div>
		</div>
		<div class="form-group col-md-3">
			<div id="reqID">
				<input type="text" name="CategoryName" class="form-control"
					placeholder="Select type" />
			</div>
		</div>
	</div>
	<div class="row">
		<div class="form-group col-md-3">
			<div id="reqID">
				<input type="text" name="DateFrom" data-date-format="mm/dd/yy"
					id="datepicker" readonly="readonly" class="form-control"
					placeholder="From date" />
			</div>
		</div>
		<div class="form-group col-md-3">
			<div id="reqID">
				<input type="text" name="DateTo" data-date-format="mm/dd/yy"
					id="datepicker1" readonly="readonly" class="form-control"
					placeholder="To date" />
			</div>
		</div>

		<div class="col-md-3">
			<label for="reqID"> </label>
			<button type="button" class="btn btn-default">
				<span class="glyphicon glyphicon-search"> Search
			</button>
		</div>
	</div>
	<div class="row">
		<div class="col-md-4">

			<h3>Service Request</h3>
			<br>
			<div class="widget-container widget-top3chart boxed">

				<ul class="chart-tab video active">
					<li class="clearfix" onclick="location.href=$(this).children('a:first').attr('href');"><span class="position">&nbsp;</span>
						<div class="chart-avatar">
							<span class="glyphicon glyphicon-screenshot"></span>
						</div> <a href="#service" class="chart-title" style="outline: none;display:block">TS
							O9 BL 8289</a></li>
					<li class="clearfix" onclick="location.href=$(this).children('a:first').attr('href');"><span class="position">&nbsp;</span>
						<div class="chart-avatar">
							<span class="glyphicon glyphicon-screenshot"></span>
						</div> <a href="#service" class="chart-title" hidefocus="true"
						style="outline: none;display:block">TS O9 BL 8289y</a></li>
					<li class="clearfix" onclick="location.href=$(this).children('a:first').attr('href');"><span class="position">&nbsp;</span>
						<div class="chart-avatar">
							<span class="glyphicon glyphicon-screenshot"></span>
						</div> <a href="#service" class="chart-title" style="outline: none;display:block">TS
							O9 BL 8289</a></li>
					<li class="clearfix" onclick="location.href=$(this).children('a:first').attr('href');"><span class="position">&nbsp;</span>
						<div class="chart-avatar">
							<span class="glyphicon glyphicon-screenshot"></span>
						</div> <a href="#service" class="chart-title" style="display:block">TS
							O9 BL 8289</a></li>
				</ul>

			</div>

		</div>
		<div class="col-md-4">
			<h3>Service Feedback</h3>
			<br>
			<div class="widget-container widget-top3chart boxed">

				<ul class="chart-tab video active">
					<li class="clearfix" onclick="location.href=$(this).children('a:first').attr('href');"><span class="position">&nbsp;</span>
						<div class="chart-avatar">
							<span class="glyphicon glyphicon-screenshot"></span>
						</div> <a href="#feedback" class="chart-title" style="outline: none;">TS
							O9 BL 8289</a></li>
					<li class="clearfix" onclick="location.href=$(this).children('a:first').attr('href');"><span class="position">&nbsp;</span>
						<div class="chart-avatar">
							<span class="glyphicon glyphicon-screenshot"></span>
						</div> <a href="#feedback" class="chart-title" hidefocus="true"
						style="outline: none;">TS O9 BL 8289y</a></li>
					<li class="clearfix" onclick="location.href=$(this).children('a:first').attr('href');"><span class="position">&nbsp;</span>
						<div class="chart-avatar">
							<span class="glyphicon glyphicon-screenshot"></span>
						</div> <a href="#feedback" class="chart-title" style="outline: none;">TS
							O9 BL 8289</a></li>
					<li class="clearfix" onclick="location.href=$(this).children('a:first').attr('href');"><span class="position">&nbsp;</span>
						<div class="chart-avatar">
							<span class="glyphicon glyphicon-screenshot"></span>
						</div> <a href="#feedback" class="chart-title" style="outline: none;">TS
							O9 BL 8289</a></li>
				</ul>

			</div>
		</div>
		<div class="col-md-4">
			<h3>Service Request</h3>
			<br>
			<div class="widget-container widget-top3chart boxed">

				<ul class="chart-tab video active">
					<li class="clearfix" onclick="location.href=$(this).children('a:first').attr('href');"><span class="position">&nbsp;</span>
						<div class="chart-avatar">
							<span class="glyphicon glyphicon-screenshot"></span>
						</div> <a href="#assistance" class="chart-title"
						style="outline: none; color: green">TS O9 BL 8289</a></li>
					<li class="clearfix" onclick="location.href=$(this).children('a:first').attr('href');"><span class="position">&nbsp;</span>
						<div class="chart-avatar">
							<span class="glyphicon glyphicon-screenshot"></span>
						</div> <a href="#queryassistanceForm" class="chart-title"
						hidefocus="true" style="outline: none; color: orange">TS O9 BL
							8289y</a></li>
					<li class="clearfix" onclick="location.href=$(this).children('a:first').attr('href');"><span class="position">&nbsp;</span>
						<div class="chart-avatar">
							<span class="glyphicon glyphicon-screenshot"></span>
						</div> <a href="#queryassistanceInlineForm" class="chart-title"
						style="outline: none; color: blue">TS O9 BL 8289</a></li>
					<li class="clearfix" onclick="location.href=$(this).children('a:first').attr('href');"><span class="position">&nbsp;</span>
						<div class="chart-avatar">
							<span class="glyphicon glyphicon-screenshot"></span>
						</div> <a href="#assistance" class="chart-title" style="outline: none;">TS
							O9 BL 8289</a></li>
				</ul>

			</div>


		</div>

		<div class="clearfix visible-lg"></div>
	</div>
</body>