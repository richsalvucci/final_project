angular.module("Score").factory("scoreData", ['$http', ($http) ->
  scoreData =
    data:
      scores:[
        {
          score:"",
          user_name:"",
          round_id:"",
          user_round_id:"",
        }
      ]
    isLoaded: false 









  return scoreData
])

{ 
  user_rounds: [
    {
      user_name: "Rich"
      scores: [
      ]
    },
    {
      user_name: "Gene",
      scores: [
      ]
    }
  ]
}
