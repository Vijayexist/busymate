
    var scotchApp = angular.module('bizmate', ['ngRoute']);

    // configure our routes
    scotchApp.config(function($routeProvider) {
        $routeProvider.when('/queryassistanceForm', {
            templateUrl : 'queryassistanceForm',
        }).when('/queryassistanceInlineForm',{
        	templateUrl:'queryassistanceInlineForm'
        })
            .when('/', {
                templateUrl : 'views/jsp/TodaysReport.jsp',
            })

            // route for the about page
            .when('/service', {
                templateUrl : 'service',
                controller  : 'aboutController'
            })

            // route for the contact page
            .when('/feedback', {
                templateUrl : 'feedback',
                controller  : 'contactController'
            }).when('/assistance', {
                templateUrl : 'queryassistance',
                controller  : 'contactController'
            }).otherwise({
            	redirectTo:'/test'
            }
            		);
    });

    // create the controller and inject Angular's $scope
    scotchApp.controller("ServiceController", ['$scope', '$http', function($scope,$http){
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
    		return false;
    	};
    }]);

    scotchApp.controller('aboutController', function($scope) {
        $scope.message = 'Look! I am an about page.';
    });

    scotchApp.controller('contactController', function($scope) {
        $scope.message = 'Contact us! JK. This is just a demo.';
    });