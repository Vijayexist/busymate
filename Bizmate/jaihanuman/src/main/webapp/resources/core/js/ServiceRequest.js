
var ServiceModule=angular.module("myApp",[]);

ServiceModule.controller("ServiceController", ['$scope', '$http', function($scope,$http){
	$scope.list=[];
	$scope.submitService= function(){
		/*var formData= {
				"custId":custId,
				"custName":custName,
				"custAddress":custAddress,
				"custPhoneNumber":custPhoneNo,
				"serviceId": serviceId
				
				};*/
		$scope.list.push({"comments": $scope.comments,
				"serviceDate":$scope.serviceDate});
		var formData= {comments:$scope.comment,
				serviceDate:$scope.serviceDate};
		var response =$http.post("/postServiceRequest",formData);
		response.success(function(data, config, headers, status){
			$scope.message=data;
		});
		response.error(function(data, config, headers, status){
			alert("the exception is:"+JSON.stringify({data:data}));
		});
		/*empty the data after processing*/
		$scope.comments="";
		$scope.serviceDate="";
	};
}]);


/*ServiceModule.directive('jqdatepicker', function() {
    return {
        restrict: 'A',
        require: 'ngModel',
        link: function(scope, element, attrs, ctrl) {
            $(element).datepicker({
                dateFormat: 'dd.mm.yy',
                onSelect: function(date) {
                    ctrl.$setViewValue(date);
                    ctrl.$render();
                    scope.$apply();
                }
            });
        }
    };
});*/