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
<div class="col-md-6">
    <label for="reqID">Category Type:</label>
    <div id="reqID">
<input type="text" name="CategoryType"/>
</div>
</div>
<div class="col-md-6">
    <label for="reqID">Category Name:</label>
    <div id="reqID">
<input type="text" name="CategoryName"/>
</div>
</div>
<div class="col-md-6">
    <label for="reqID">Date From:</label>
    <div id="reqID">
<input type="text" name="DateFrom"  data-date-format="mm/dd/yy" id="datepicker" readonly="readonly"/>
</div>
</div>
<div class="col-md-6">
    <label for="reqID">Date To:</label>
    <div id="reqID">
<input type="text" name="DateTo"  data-date-format="mm/dd/yy" id="datepicker1" readonly="readonly"/>
</div>
</div>
<div class="col-md-10" style="margin-top:15px;padding-bottom:10px;text-align:center">
<div id="reqID">
<input type="submit" value="Search"/>
</div>
</div>
</div>
  <div class="row">
    <div class="col-md-4"> 
      <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="#">Service Request</a></li>
           <li><a href="#service" style="color:red"><span class="glyphicon glyphicon-wrench"></span>&nbsp;TS O9 BL 8289</a></li>
        <li><a href="#service" style="color:red"><span class="glyphicon glyphicon-wrench"></span>&nbsp;TS O9 BL 8289</a></li>
         <li><a href="#service" style="color:green"><span class="glyphicon glyphicon-wrench"></span>&nbsp;TS O9 BL 8289</a></li>
        <li><a href="#service" style="color:orange"><span class="glyphicon glyphicon-wrench"></span>&nbsp;TS O9 BL 8289</a></li>
      </ul>
    </div>
    <div class="col-md-4"> 
     <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="#">Service Feedback</a></li>
        
        <li><a href="#feedback"><span class="glyphicon glyphicon-indent-right"></span>&nbsp;TS O9 BL 8289</a></li>
        <li><a href="#feedback"><span class="glyphicon glyphicon-indent-right"></span>&nbsp;TS O9 BL 8289</a></li>   
        <li><a href="#feedback"><span class="glyphicon glyphicon-indent-right"></span>&nbsp;TS O9 BL 8289</a></li>
        <li><a href="#feedback"><span class="glyphicon glyphicon-indent-right"></span>&nbsp;TS O9 BL 8289</a></li>
      </ul>
    </div>
    <div class="col-md-4"> 
      <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="#"><span class="glyphicon glyphicon-question-sign"></span>&nbsp;Query assistance</a></li>
           <li><a href="#assistance"><span class="glyphicon glyphicon-question-sign"></span>&nbsp;TSO9BL8289</a></li>
        <li><a href="#queryassistanceForm" style="color:orange"><span class="glyphicon glyphicon-question-sign"></span>&nbsp;TS O9 BL 8289</a></li>
         <li><a href="#queryassistanceInlineForm" style="color:green"><span class="glyphicon glyphicon-question-sign"></span>&nbsp;TS O9 BL 8289</a></li>
        <li><a href="#assistance"><span class="glyphicon glyphicon-question-sign"></span>&nbsp;TS O9 BL 8289</a></li>
      </ul>
    </div>
    
    <div class="clearfix visible-lg"></div>
  </div>
</body>