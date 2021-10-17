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
		searchCityList($("#location_from").val(), "from");
	}
});

$("#location_to").on("keyup", function(){
	if($("#location_to").val().length == 3 ){
		searchCityList($("#location_to").val(), "to");
	}
});

});

//search cabs from here
function searchCabsInBetween(){
	
	$.ajax({
		
		type : 'GET',
		url : '/searchCabs',
		contentType: "application/json",
		data : {
			from : $("#cab_from").val(),
			to : $("#cab_to").val()
		},
		dataType: 'json',
        cache: false,
		success : function(){
			alert('success');
			
		},
		error : function (){
			alert('error');
			//document.location.reload();
		}
	});
}


//get cities list from here
function searchCityList(cityChars, processBy){
	
	$.ajax({
		
		type : 'GET',
		url : '/searchCity/'+cityChars,
		contentType: "application/json",
		dataType: 'json',
        cache: false,
		success : function(responseJson){
			console.log(responseJson);
			JSON.stringify(responseJson);
			$.each(responseJson , function(key,value){
				if(processBy == "from"){
					$("#cab_from").show();
					$("#cab_from").append(
					'<option value='+value[0]+'>'+value[1]+'</option>'
				);
				}
				
				if(processBy == "to"){
					$("#cab_to").show();
					$("#cab_to").append(
					'<option value='+value[0]+'>'+value[1]+'</option>'
				);
				}
			});
			
		},
		error : function (){
			alert('error');
			//document.location.reload();
		}
	});
	
}
 
