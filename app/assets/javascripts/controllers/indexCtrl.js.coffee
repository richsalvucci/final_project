@IndexCtrl = ($scope, $location, $http, $routeParams, $q, holeData, userData, scoreData) ->
  console.log($routeParams)
  $scope.title = "Score Card"
  $scope.data = holeData.data
  $scope.roundId = window.location.pathname.split("/")[2]
  $scope.users= userData.data

  # $scope.totalScore = ->
  #   total = 0
  #   i = 0
  console.log($scope.data)
  console.log "testr"

    # while i < $scope.hole.score.length

  # console.log "hey there"
  # $scope.data =
  #   holeData: holeData.data
  #   currentHole:
  #     hole_number:"",
  #     mens_handicap:"",
  #     womens_handicap:"",
  #     par:"",
  #     back_tee_yardage:"",
  #     middle_tee_yardage:"",
  #     front_tee_yardage:"",
  #     forward_tee_yardage:"",
  #     course_id:""

  console.log "hi"
  $scope.data.holeId = $routeParams.holeId
  $scope.holeNumber = "1"

  console.log "yo"
  $scope.returnHome = ->
    console.log "return home"
    $location.url("/rounds")

  console.log "hey buddy"
  $scope.findHoleById = ->
    console.log "Hi"
    hole = _.findWhere(holeData.data.holes, {id: parseInt($scope.data.holeId)})
    console.log hole
    $scope.data.currentHole.hole_number = hole.hole_number
    $scope.data.currentHole.mens_handicap = hole.mens_handicap
    $scope.data.currentHole.womens_handicap = hole.womens_handicap
    $scope.data.currentHole.par = hole.par
    $scope.data.currentHole.back_tee_yardage = hole.back_tee_yardage
    $scope.data.currentHole.middle_tee_yardage = hole.middle_tee_yardage
    $scope.data.currentHole.front_tee_yardage = hole.front_tee_yardage
    $scope.data.currentHole.forward_tee_yardage = hole.forward_tee_yardage
    $scope.data.currentHole.course_id = hole.course_id

  @hole = $q.defer()
  holeData.loadHoles(@hole)

  console.log "user hi"
  $scope.findUserByName = ->
    console.log "did i make it"
    user = _.findWhere(userData.data.users, {name: $scope.data.userName})
    $scope.data.currentUser.user_name = user.user_name
    $scope.data.currentUser.user_round_id = user.user_round_id
    $scope.data.currentUser.round_id = user.round_id
    $scop.data.currentUser.score = user.score

  @user = $q.defer()
  userData.loadUsers(@user)

  console.log "hi edit"
  $scope.updateScore = ->
    console.log($scope.data)
    console.log(scoreData)
    scoreData.updateScore($scope.data)
    




  # pass the data to controller by http post

  # loop through each user
  # loop through each score
  # update scores

  # on your view, use the data you just grabbed and render it