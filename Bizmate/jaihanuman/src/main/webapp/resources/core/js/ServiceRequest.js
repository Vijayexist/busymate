
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
		var formData= {comments:$scope.comments,
				serviceDate:$scope.serviceDate};
		var response =$http.post("/bizmate/postServiceRequest",formData);
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

myApp.directive('calendar', function () {
    return {
        require: 'ngModel',
        link: function (scope, el, attr, ngModel) {
            $(el).datepicker({
                dateFormat: 'yy-mm-dd',
                onSelect: function (dateText) {
                    scope.$apply(function () {
                        ngModel.$setViewValue(dateText);
                    });
                }
            });
        }
    };
})
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