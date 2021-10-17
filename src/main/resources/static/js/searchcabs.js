/**
 * 
 */
 
$(document).ready(function(){
	
	$("#search_cabs").on("click", function(event){
	
	event.preventDefault();
	searchCabsInBetween();
});

$("#location_from").on("keyup", function(){
	
	if($("#location_from").val().length == 3 ){
		searchCityList($("#location_from").val());
	}
});

$("#location_to").on("keyup", function(){
	if($("#location_to").val().length == 3 ){
		searchCityList($("#location_to").val());
	}
});

});

function searchCabsInBetween(){
	var cabData = {};
	
	$.ajax({
		
		type : 'GET',
		url : '/searchCabs',
		contentType: "application/json",
		data : JSON.stringify(cabData),
		dataType: 'json',
        cache: false,
		success : function(){
			alert('success');
			//$("#user_reg_form").empty();
			//document.location.reload();
		},
		error : function (){
			alert('error');
			document.location.reload();
		}
	});
}

function searchCityList(cityChars){
	alert(cityChars);
	$.ajax({
		
		type : 'GET',
		url : '/searchCity/'+cityChars,
		contentType: "application/json",
		dataType: 'json',
        cache: false,
		success : function(responseJson){
			alert('success');
			console.log(responseJson);
			//$("#user_reg_form").empty();
			//document.location.reload();
		},
		error : function (){
			alert('error');
			document.location.reload();
		}
	});
	
}
 
