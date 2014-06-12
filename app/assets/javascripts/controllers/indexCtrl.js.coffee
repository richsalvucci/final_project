@IndexCtrl = ($scope, $location, $http, $routeParams, $q, holeData) ->
  console.log($routeParams)
  $scope.title = "Score Card"
  $scope.data = holeData.data

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
  # @hole.promise.then($scope.findHoleById)
  holeData.loadHoles(@hole)



  # set up data

  # load all of the hole data

  # on your view, use the data you just grabbed and render it