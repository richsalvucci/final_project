angular.module("Score").factory("scoreData", ['$http', ($http) ->
  scoreData =
    data:
      scores:[
        {
          score:"",
          user_name:"",
          round_id:""
        }
      ]
    isLoaded: false 









  return scoreData
])