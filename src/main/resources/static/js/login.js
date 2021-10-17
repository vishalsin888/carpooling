 
$(document).ready(function(){
	
	$("#user_login_form").on("submit", function(event){
	
	event.preventDefault();
	submitLoginForm();
});

});

function submitLoginForm(){
	var loginData = {};
	loginData["useremail"] = $("#loginemail").val().trim();
	loginData["userpassword"] = $("#loginpassword").val().trim();
	console.log(loginData);
	$.ajax({
		
		type : 'GET',
		url : '/userlogin',
		contentType: "application/json",
		data : JSON.stringify(loginData),
		dataType: 'json',
        cache: false,
		success : function(){
			alert('loggedIn');
		},
		error : function (){
			alert('error');
			//document.location.reload();
		}
	});
}
 
