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

    

  scoreData.updateScore = (formData) ->
    console.log "Howzit?"
    data =
      score:
        score:formData.editScoreScore
    console.log "dude"          
    console.log formData
    $http.post("/rounds/"+window.location.pathname.split("/")[2]+"/scores.json", data).success( (data) ->
      console.log(data)
      score = _.findWhere(scoreData.data.scores, {id: parseInt(formData.editScoreId)})
      score.score = data.score
      console.log "A score was updated"
    ).error( ->
      console.log "No score was not updated"
    )
    return true







  return scoreData
])

