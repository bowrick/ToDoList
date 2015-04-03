<html>
<head>
	<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
	<script src="http://localhost:8080/ToDoList/scripts/todolist.js"></script>
</head>
<style>
	.update{
		display:none;
	}
</style>
<body>
	<h1>To Do Lists:</h1>
	
	<div ng-app="todoLists" ng-controller="listCtrl">
	 <input id="newName" type="text">
	<button class="add" ng-click="addList()">New Item</button>
	  <ul class="list">
	    <li ng-repeat="x in lists">
	      <span class="saved" ng-bind="x.name" ng-click="viewTasks($event)"></span>
	      <input class="update" type="text" ng-model="x.name">
	      <span class="update" ng-click="edit($event)">Save</span>
	      <span class="edit saved" ng-click="edit($event)">Edit</span> <span ng-click="close($event)" class="remove">X</span>
	    </li>
	    
	  </ul>
	</div>
	
	
	<script >
	var cnt = 0;
	angular.module('todoLists', []).controller('listCtrl',['$scope','$compile', function($scope, $compile) {
	    $scope.lists = [
	        {name:'Jani',country:'Norway'},
	        {name:'Hege',country:'Sweden'},
	        {name:'Kai',country:'Denmark'}
	    ];
	    $scope.viewTasks = function(e) {
	    	var span = e.target;
	    	var listName =  $(span).html();
		    $.ajax({
	
		            url:'getLists',
	
		            type:"POST", 
	
		            contentType: "application/json; charset=utf-8",
	
		            data: '{ "name": "name" }' , //Stringified Json Object
	
		            async: false,    //Cross-domain requests and dataType: "jsonp" requests do not support synchronous operation
	
		            cache: false,    //This will force requested pages not to be cached by the browser  
	
		            processData:false, //To avoid making query String instead of JSON
	
		            success: function(resposeJsonObject){
		            	console.log('obj',resposeJsonObject);
	
		    }});
	    	
		};
	    $scope.edit = function(e) {
	    	var btn = e.target;
	    	if($(btn).html() == 'Save' ){
	    		$(btn).parent().find('.saved').css('display','block');
		    	$(btn).parent().find('.update').css('display','none');
	    	}
	    	else{
	    		$(btn).parent().find('.saved').css('display','none');
		    	$(btn).parent().find('.update').css('display','block');
	    	}
	    	
		}; 
		$scope.close = function(e) {
	    	var btn = e.target;
	    	$(btn).parent().remove();
	    	
		}; 
		$scope.addList = function() {
			
			var name = 'name'+cnt;
			var val = $( '#newName' ).val();
			var list = '<li > <span class="saved" ng-bind="'+name+'"></span><input class="update" type="text" ng-model="'+name+'" >'+val+'</input/><span class="update" ng-click="edit($event)">Save</span><span class="edit saved" ng-click="edit($event)"> Edit</span> <span ng-click="close($event)" class="remove">X</span></li>';
			list = $compile(list)($scope);
			angular.element(document.querySelector( '.list' )).append(list);
		}; 
	 	
	}]);
	
	
	
	</script>
	
 
</body>
</html>