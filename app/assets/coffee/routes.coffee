application.config ($routeProvider) ->
  $routeProvider
    .when('/', templateUrl: 'partials/home')
    .when('/l:params', templateUrl: 'partials/lectures/index')
    .otherwise(redirectTo: '/')
