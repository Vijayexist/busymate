
    var scotchApp = angular.module('bizmate', ['ngRoute']);

    // configure our routes
    scotchApp.config(function($routeProvider) {
        $routeProvider.when('/queryassistanceForm', {
            templateUrl : 'queryassistanceForm',
            controller  : 'mainController'
        }).when('/queryassistanceInlineForm',{
        	templateUrl:'queryassistanceInlineForm'
        })
            .when('/', {
                templateUrl : 'views/jsp/TodaysReport.jsp',
                controller  : 'mainController'
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
    scotchApp.controller('mainController', function($scope) {
        // create a message to display in our view
        $scope.message = 'Everyone come and see how good I look!';
    });

    scotchApp.controller('aboutController', function($scope) {
        $scope.message = 'Look! I am an about page.';
    });

    scotchApp.controller('contactController', function($scope) {
        $scope.message = 'Contact us! JK. This is just a demo.';
    });