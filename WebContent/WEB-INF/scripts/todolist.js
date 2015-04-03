/*
var app = angular.module('todoLists', []);
app.controller('listCtrl', getList($scope, $http) );
// functions 
function getList($scope, $http) {
	$scope.lists = [
{name:'Jani',country:'Norway'},
{name:'Hege',country:'Sweden'},
{name:'Kai',country:'Denmark'}];
	/*
    $http.get('http://localhost:8080/ToDoList/getLists').
        success(function(data) {
            $scope.lists = data;
        });
     
}
*/

angular.module('myApp', []).controller('namesCtrl', function($scope) {
    $scope.names = [
        {name:'Jani',country:'Norway'},
        {name:'Hege',country:'Sweden'},
        {name:'Kai',country:'Denmark'}
    ];
});
angular.module('todoLists', []).controller('listCtrl', function($scope) {
    $scope.lists = [
        {name:'Jani',country:'Norway'},
        {name:'Hege',country:'Sweden'},
        {name:'Kai',country:'Denmark'}
    ];
});
function getTasks($id) {
    $http.get('http://localhost:8080/ToDoList/getLists').
        success(function(data) {
            $scope.lists = data;
        });
}

/*
//Defaults, page load
$scope.state = {
  blogCompose: true,
  blogPreview: false,
  blogPost: false
};
//Manage state per button
$scope.composeBtn = function () {
  $scope.state.blogCompose = true;
  $scope.state.blogPreview = false;
  $scope.state.blogPost = false;
};

$scope.previewBtn = function () {
  $scope.state.blogCompose = false;
  $scope.state.blogPreview = true;
  $scope.state.blogPost = false;
};

$scope.postBtn = function () {
  $scope.state.blogCompose = false;
  $scope.state.blogPreview = false;
  $scope.state.blogPost = true;
};


*/