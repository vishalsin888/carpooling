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
			to : $("#cab_to").val(),
			from_lattitude : $("#from_lattitude").val(),
			from_longitude : $("#from_longitude").val(),
			to_lattitude : $("#to_lattitude").val(),
			to_longitude : $("#to_longitude").val()
		},
		dataType: 'json',
        cache: false,
		success : function(responseJson){
			//alert('success');
			console.log(responseJson);
			if(responseJson.length > 0){
				$("#cab_results").show();
				$("#cab_no_results").hide();
			}else{
				$("#cab_results").hide();
				$("#cab_no_results").show();
			}
			var cablogo = "";
			
			$("#tab_content").html("");
			JSON.stringify(responseJson);
			$.each(responseJson , function(key,value){
				//console.log(value[2]);
				if(value[1]=="XUV"){
					cablogo = '<i class="fas fa-car"></i>';
				}else if(value[1]=="SEDAN"){
					cablogo = '<i class="fas fa-truck-monster"></i>';
				}else if(value[1]=="PRIME"){
					cablogo = '<i class="fas fa-truck-pickup"></i>';
				}else if(value[1]=="MICRO"){
					cablogo = '<i class="fas fa-car-side"></i>';
				}else if(value[1]=="AUTO"){
					cablogo = '<i class="fas fa-truck-pickup"></i>';
				}else if(value[1]=="ACCESS"){
					cablogo = '<i class="fas fa-bus-alt"></i>';
				}else if(value[1]=="PLAY"){
					cablogo = '<i class="fas fa-subway"></i>';
				}else if(value[1]=="MINI"){
					cablogo = '<i class="fas fa-shuttle-van"></i>';
				}else{
					cablogo = '<i class="fas fa-subway"></i>';
				}
				$("#tab_content").append(
					'<tr>'+
				      '<td scope="row">'+cablogo+'</th>'+
				      '<td>'+value[1]+'</td>'+
				      '<td>'+value[2]+'</td>'+
				      '<td>'+value[3]+'</td>'+
				      '<td>'+value[0]+' Km</td>'+
				      '<td>'+value[0]*3+' Rs</td>'+
				      '<td>Book Now</td>'+
				    '</tr>'
				);
			});
			
			
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
					$("#cab_from").siblings("#from_lattitude").val(value[2]);
					$("#cab_from").siblings("#from_longitude").val(value[3]);
					$("#cab_from").append(
					'<option value='+value[0]+'>'+value[1]+'</option>'
				);
				}
				
				if(processBy == "to"){
					$("#cab_to").show();
					$("#cab_to").siblings("#to_lattitude").val(value[2]);
					$("#cab_to").siblings("#to_longitude").val(value[3]);
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
 
