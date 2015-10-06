
    var scotchApp = angular.module('bizmate', ['ngRoute','ngAnimate']);

    // configure our routes
    scotchApp.config(function($routeProvider) {
        $routeProvider.when('/queryassistanceForm', {
            templateUrl : 'queryassistanceForm',
            controller:'aboutController'
        }).when('/queryassistanceInlineForm',{
        	templateUrl:'queryassistanceInlineForm',
        	controller:'aboutController'
        })
            .when('/', {
                templateUrl : 'views/jsp/TodaysReport.jsp',
                controller:'aboutController'
            })

            // route for the about page
            .when('/service', {
                templateUrl : 'service',
                controller  : 'aboutController'
            })

            // route for the contact page
            .when('/feedback', {
                templateUrl : 'feedback',
                controller  : 'aboutController'
            }).when('/assistance', {
                templateUrl : 'queryassistance',
                controller  : 'aboutController'
            }).otherwise({
            	redirectTo:'/test'
            }
            		);
    });

    // create the controller and inject Angular's $scope
    scotchApp.controller("ServiceController", ['$scope', '$http',  function($scope,$http){
    	$scope.list=[];
    	$scope.submitService= function(){
    		var formData= {
    				"custId":"1",
    				"custName":"custName",
    				"custAdd":{"phone":"123","area":"123"},
    				"custPhoneNumber":"custPhoneNo"
    				
    				};
    		$scope.list.push({"comments": $scope.comments,
    				"serviceDate":$scope.serviceDate});
    		 
    		var response =$http.post("/bizmate/postjson",formData);
    		response.success(function(data, config, headers, status){
    			$scope.message=data;
    			alert("ServiceRequest Details Saved Successfully!");
    			location.replace("/bizmate/dashboard#/")
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
    	$scope.pageClass = 'page-home';
    });

    scotchApp.controller('contactController', function($scope) {
    	$scope.pageClass = 'page-home';
    });
    
    scotchApp.controller("ServiceFeedController", ['$scope', '$http',  function($scope,$http){
    	$scope.list=[];
    	$scope.submitFeed= function(){
    		/*var formData= {
    				"custId":custId,
    				"custName":custName,
    				"custAddress":custAddress,
    				"custPhoneNumber":custPhoneNo,
    				"serviceId": serviceId
    				
    				};*/
    		$scope.list.push({"complaint":$scope.complaint,
    			"feed": $scope.feed,
    				"improveFeed":$scope.improveFeed,
    				"rating":$scope.rating});
    		var formFeed= {complaint:$scope.complaint,
    				feed:$scope.feed,
    				improveFeed:$scope.improveFeed,
    				rating:$scope.rating};
    		var response =$http.post("/bizmate/postServiceFeed?complaint="+$scope.complaint+"&feed="+$scope.feed+"&improveFeed="+$scope.improveFeed+"&rating="+$scope.rating,formFeed);
    		response.success(function(data, config, headers, status){
    			$scope.message=data;
    			alert("ServiceRequest Details Saved Successfully!");
    			location.replace("/bizmate/dashboard#/");
    		});
    		response.error(function(data, config, headers, status){
    			alert("the exception is:"+JSON.stringify({data:data}));
    		});
    		/*empty the data after processing*/
    		$scope.complaint="";
    		$scope.feed="";
    		$scope.improveFeed="";
    		$scope.rating="";
    	//	return false;
    	};
    }]);

    scotchApp.controller('aboutController', function($scope) {
    	$scope.pageClass = 'page-home';
    });

    scotchApp.controller('contactController', function($scope) {
    	$scope.pageClass = 'page-home';
    });
    
    
    