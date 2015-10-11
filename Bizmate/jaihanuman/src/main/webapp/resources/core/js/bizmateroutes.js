
    var scotchApp = angular.module('bizmate', ['ngRoute','ngAnimate']);

    // configure our routes
    scotchApp.config(function($routeProvider) {
        $routeProvider.when('/queryassistanceForm/:index?', {
            templateUrl : 'queryassistanceForm',
            controller:'queryController'
        }).when('/queryassistanceInlineForm',{
        	templateUrl:'queryassistanceInlineForm',
        	controller:'aboutController'
        })
        
            .when('/', {
                templateUrl : 'views/jsp/TodaysReport.jsp',
                controller:'queryListController'
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

    
    //create service to share variables
    scotchApp.service('shareProperty', function(){
    	var queryUsers= [
    	     			
    	     			];
    	 return {
	            getProperty: function () {
	                return queryUsers;
	            },
	            setProperty: function(value) {
	            	queryUsers.push( value);
	            } ,getIndexedItem:function(index)
	            {
	            	return queryUsers[index];
	            }
	            
	        };
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

    scotchApp.controller('queryListController', function($scope, shareProperty) {
    	
    	$scope.queryList=[];
    	//$scope.localindex=-1;
    	//shareProperty.setIndex($scope.localindex);
    	$scope.queryList= shareProperty.getProperty();
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

    scotchApp.controller('queryController', function($location,$scope, shareProperty, $routeParams, $http)
    		{
    	
    	$scope.query={};
    	$scope.selected=$routeParams.index;
    	alert($scope.selected);
    	if($scope.selected!=undefined)
    	$scope.query=shareProperty.getIndexedItem($scope.selected);
    	$scope.submitData=function()
    	{
    	//	submit to form
    		
    		shareProperty.setProperty($scope.query);
    		$location.path("/");
    	}
    	alert($scope.query.rating);
    });
    scotchApp.controller('aboutController', function($scope) {
    	$scope.pageClass = 'page-home';
    });

    scotchApp.controller('contactController', function($scope) {
    	$scope.pageClass = 'page-home';
    });
    
    
    