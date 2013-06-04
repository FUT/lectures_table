app = angular.module 'lt-app', []

app.config ($routeProvider) ->
  $routeProvider.when '/', templateUrl: 'partials/home'
