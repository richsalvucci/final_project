angular.module("Score").factory("holeData", ['$http', ( $http) ->
  holeData =
    data:
      holes:[
        {
          hole_number:"",
          mens_handicap:"",
          womens_handicap:"",
          back_tee_yardage:"",
          middle_tee_yardage:"",
          front_tee_yardage:"",
          forward_tee_yardage:"",
          course_id:""
        }
      ]
    isLoaded: false

  holeData.loadHoles = (hole) ->
    console.log "dookie"
    if holeData.isLoaded == false
      $http.get("/rounds/"+window.location.pathname.split("/")[2]+"/scores.json").success( (data) ->
        holeData.data.holes = data
        holeData.isLoaded = true
        console.log "Success"
        if hole
          hole.resolve()
      ).error( ->
        console.log "Fail"
        if hole
          hole.reject "We could not load holes"
      )
    else
      if hole
        hole.resolve()


  return holeData
])





