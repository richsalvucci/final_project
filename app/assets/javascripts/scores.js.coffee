# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#= require_self
#= require_tree ./services
#= require_tree ./controllers
#= require_tree ./directives
#= require_tree ./filters

Score = angular.module("Score", ['ngRoute'])

Score.config(["$routeProvider", ($routeProvider) ->


  $routeProvider.otherwise({ templateUrl: '/assets/index.html', controller: "IndexCtrl"})
])

Score.config(['$httpProvider', (provider) ->
  provider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
])
