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
      $scope.sortAttribute = 'name';
      $scope.sortDescending = false;
    };
    window.$scope = $scope;
  });
})();

