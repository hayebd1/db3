(function() { // We use this anonymous function to create a closure.
	
	//var app = angular.module('splatter-web', []);
	var app = angular.module('splatter-web', ['ngResource']);
	app.factory("User", function($resource) {
	return $resource ('http://hayes.sqrawler.com/api/users/:id.json', (id: '@id'},{update: {method:'PUT'}} );
	//("http://hayes.sqrawler.com:3000/users/:id");
	
	//
	});

	
	app.controller('UserController', function(user) { //notice that we pass user here	 
	//app.controller('UserController', function() {
     // add your user code below
	//this.u = u1;
	//User.get({id:1}), {user: data});
	this.u = User.get({id:1});
	
	//this.hello = "Hello World";
	//this.u = u2;
	//this.feed = feed;
	
	
    // add your user code below
	

	


	// add your user code above	
	});


    // add your form controller below
	
	app.controller("UpdateFormController", function() {
	
	
	this.data = {};
	this.updateUser = function(user) {
	user.u.name = this.data.name;
	user.save({},user);
	this.data = {}; // clears the form
	
	}
	});
	
	

        // add your form controller above

	// mock data
        var u1 = {
          id: 1,
          name: "Jane Doe",
          email: "jane@doe.com",
          blurb: "Sometimes I feel anonymous."
		
		
	};	

        var u2 = {
          id: 2,
	  name: "Bob Smith",
	  email: "bob@smith.org"
	};

       var feed = [
         {
	   id: 3,
           user_id: 2,
           body: "This is Bob's most recent splatt.",
	   created_at: "2014-08-17T22:00:00Z"
	 },
         {
	   id: 2,
           user_id: 2,
           body: "This is Bob's second splatt.",
	   created_at: "2014-08-16T13:25:00Z"
         },
         {
	   id: 1,
           user_id: 1,
           body: "This is Jane's first splatt.",
	   created_at: "2014-08-16T10:25:00Z"
	 }
       ];
})();
