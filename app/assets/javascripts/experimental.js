var callcenterApp = angular.module("callcenterApp", ["ngResource"]);

// var ConsoleController = ['$scope','$timeout','$log','$resource',function($scope, $timeout, $log, $resource) {
// 	$scope.foo = "bar";
// }];

function consoleCtrl($scope,$resource) {
  var Call = $resource('/calls/:id.json');
  $scope.calls = Call.query();

  $scope.foo = "bar";

  $scope.saveCall = function(call){
  	console.log("saving...");
  	new Call(call).$save();
  }
}