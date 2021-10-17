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
		searchCityList($("#location_from").val(),"from");
	}
});

$("#location_to").on("keyup", function(){
	if($("#location_to").val().length == 3 ){
		searchCityList($("#location_to").val(),"to");
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

function searchCityList(cityChars , processType){
	
	var cityData = {};
	cityData["cityChars"] = cityChars;
	cityData["processType"] = processType;
	
	$.ajax({
		
		type : 'GET',
		url : '/searchCity',
		contentType: "application/json",
		data : JSON.stringify(cityData),
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
 
