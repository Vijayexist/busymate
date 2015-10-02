<!DOCTYPE html>
<html ng-app="plunker">

  <head>
    <meta charset="utf-8" />
    <title>AngularJS Plunker</title>

    <link data-require="bootstrap-css@*" data-semver="3.0.0" rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" />

    <script>document.write('<base href="' + document.location + '" />');</script>
    <script data-require="angular.js@1.1.x" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.1.5/angular.js" data-semver="1.1.5"></script>
    <script data-require="ui-bootstrap@0.5.0" data-semver="0.5.0" src="http://angular-ui.github.io/bootstrap/ui-bootstrap-tpls-0.6.0.js"></script>
    <script >
    var app = angular.module('plunker', ['ui.bootstrap']);

    app.controller('MainCtrl', function($scope) {
        $scope.name = 'World';
    });

    app.controller('DropdownCtrl', function($scope) {
     
        $scope.items = [
            "The first choice!",
            "And another choice for you.",
            "but wait! A third!"
        ];
    });</script>
    <style>
    div.navbar-collapse.collapse {
        display: block;
        overflow: hidden;
        max-height: 0px;
        -webkit-transition: max-height .3s ease;
        -moz-transition: max-height .3s ease;
        -o-transition: max-height .3s ease;
        transition: max-height .3s ease;
    }
    div.navbar-collapse.collapse.in {
        max-height: 2000px;
    }
    </style>
  </head>

  <body ng-controller="MainCtrl">
  
    <nav class="navbar navbar-default" role="navigation">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">

        <button type="button" class="navbar-toggle" ng-init="navCollapsed = true" ng-click="navCollapsed = !navCollapsed">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#">BizMate</a>
      </div>
    
      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse" ng-class="!navCollapsed && 'in'" ng-click="navCollapsed = true">
      
        <ul class="nav navbar-nav">
          <li class="active"><a href="#">Link</a></li>
          <li><a href="#">Link</a></li>
          
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" ng-controller="DropdownCtrl">Dropdown <b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li><a href="#">Action</a></li>
              <li><a href="#">Another action</a></li>
              <li><a href="#">Something else here</a></li>
              <li><a href="#">Separated link</a></li>
              <li><a href="#">One more separated link</a></li>
            </ul>
          </li>
          
        </ul>
       
        < 
      </div><!-- /.navbar-collapse -->
    </nav>
    
    <p>Hello {{name}}!</p>
    
  </body>
</html>