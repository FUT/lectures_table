lt.application.controller 'LecturesCtrl', ($scope, $resource, $routeParams) ->
  Tag = $resource '/tags/:tag'
  tag = Tag.get tag: $routeParams.params, ->
    console.log tag
