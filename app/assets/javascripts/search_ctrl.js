/* global angular */
(function() {
  angular.module("app", []).controller("searchCtrl", function($scope, $http) {
    $scope.setup = function() {
      $http.get('/api/v1/bars.json').then(function(response) {
        $scope.bars = response.data;
      });
      $http.get('/api/v1/teams.json').then(function(response) {
        $scope.teams = response.data;
      });
      $http.get('/api/v1/games.json').then(function(response) {
        $scope.games = response.data;
      });
      $http.get('/api/v1/user.json').then(function(response) {
        $scope.user = response.data;
      });
      $http.get('/api/v1/check_ins.json').then(function(response) {
        $scope.checkIns = response.data;
      });
      $http.get('/api/v1/team_check_ins.json').then(function(response) {
        $scope.teamCheckIns = response.data;
      });
      $scope.sortAttribute = 'name';
      $scope.sortDescending = false;
    };

    $scope.selectedBar = function(bar) {
      $scope.barFilter = bar.name;
      $scope.activeBar = bar;
    };

    $scope.selectedGame = function(game) {
      $scope.gameFilter = game.team_1_id + " vs. " + game.team_2_id;
      $scope.activeGame = game;
    };
    
    $scope.addCheckIn = function() {
      var checkIn = {
        bar_id: $scope.activeBar.id,
        game_id: $scope.activeGame.id,
        user_id: $scope.user.id
      };

      $http.post('/api/v1/check_ins.json', checkIn).then(function() {
        window.location.href = "/team_check_ins/new";
        
      }, function(error) {
        console.log(error);
        $scope.errors = error.data.errors;
      });
    };

    $scope.addTeamCheckIn = function(team_id) {
      var teamCheckIn = {
        team_id: team_id,
        check_in_id: $scope.checkIns[$scope.checkIns.length - 1].id
      };

      $http.post('/api/v1/team_check_ins.json', teamCheckIn).then(function() {
        window.location.href = "/";

      }, function(error) {
        console.log(error);
        $scope.errors = error.data.errors;
      });
    };

    window.$scope = $scope;
  });
})();
