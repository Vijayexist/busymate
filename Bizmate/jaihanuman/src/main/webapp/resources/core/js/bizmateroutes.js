
    var scotchApp = angular.module('bizmate', ['ngRoute']);

    // configure our routes
    scotchApp.config(function($routeProvider) {
        $routeProvider.when('/test', {
            templateUrl : 'views/jsp/TodaysReport.jsp',
            controller  : 'mainController'
        })
            .when('/', {
                templateUrl : 'views/jsp/TodaysReport.jsp',
                controller  : 'mainController'
            })

            // route for the about page
            .when('/service', {
                templateUrl : '/bizmate/service',
                controller  : 'aboutController'
            })

            // route for the contact page
            .when('/contact', {
                templateUrl : 'pages/contact.html',
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