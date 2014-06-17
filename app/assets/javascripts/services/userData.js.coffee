angular.module("Score").factory("userData", ['$http', ($http) ->
  userData =
    data:
      { 
        scores: [
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
    isLoaded: false 

  userData.loadUsers = (user) ->
    console.log userData
    if userData.isLoaded == false
      $http.get("/rounds/"+window.location.pathname.split("/")[2]+"/scores.json").success( (data) ->
        userData.data.users = data
        userData.isLoaded = true
        console.log "Success"
        if user
          user.resolve()
      ).error( ->
        console.log "Fail"
        if user
          user.reject "We could not load users"
      )
    else
      if user
        user.resolve()

  return userData
])