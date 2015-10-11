<head><script src="../../bizmate/resources/core/js/star-rating.js"></script>

<link rel="stylesheet"
	href="../../bizmate/resources/core/css/star-rating.css">

<link rel="stylesheet"
	href="../../bizmate/resources/core/css/star-rating.min.css">
</head></head>
<body>

<form class="form-horizontal" role="form" style="width:50%"   ng-controller='queryController'>
Bizmate Query Assistance
<div class="form-group">
    <!-- <label for="reqID">Service Request:</label>
  <label id="reqID" ><a href="#service">TS O9 BL 8289</a></label> -->
      <label for="usr">Vehicle Number:</label>
  <input type="text" class="form-control" id="usr" ng-model="query.vehNumber">
  
</div>
  <div class="form-group" >
    <label for="usr">Name:</label>
  <input type="text" class="form-control" id="usr" ng-model="query.name">
</div>
 <div class="form-group">
  <label for="comment">Comment:</label>
  <textarea class="form-control" rows="5" id="comment" ng-model="query.comments"></textarea>
</div>
  <div class="form-group">
  <label for="sel1">Assistance Provided:</label>
  <select class="form-control" id="sel1" ng-model="query.assistance">
    <option>Yes</option>
    <option>No</option>
  </select>
</div>
<div class="form-group" >
				<label for="sel1">Customer Rating:&nbsp;&nbsp;</label>
				<input id="input-21a" value="3" type="number" class="rating" data-symbol="*" min=0 max=5 step=0.5 data-size="sm" ng-model="query.rating" >
			
			</div>
  <div class="form-group"> 
      <button type="submit" class="form-control btn btn-lg btn-primary" ng-click="submitData()">Submit</button>
  </div>
</form>
{{queryData}}
<style>
label
{
	margin-bottom:8px;
}
</style>
</body>