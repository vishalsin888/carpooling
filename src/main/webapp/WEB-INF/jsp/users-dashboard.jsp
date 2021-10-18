<%@include file="header.jsp"%>

<div class="bootstrap-wrapper" style="padding-top: 5%;">
	<div class="header" id="home_page">
		<div class="container-fluid" style="height: 80vh;">
			<div class="row align-items-center">
				<div class="col-md-12 text-center my-5 py-5">
					<h2 class="py-5">Welcome To Users Dash Board</h2>
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-12">
								<div class="container-fluid px-5">
									<div class="row">
										<div class="col-md-4 ml-auto offset-md-2">

											<h5>
												<i class="fas fa-plane-departure" style="color: #5e066e;"></i> Select Source
											</h5>
											<input type="text" id="location_from" style="width: 80%;">
											<input type="hidden" id="from_lattitude" value="">
											<input type="hidden" id="from_longitude" value="">
											<select class="form-select" aria-label="Default select example" style="display: none;width: 80%;" id="cab_from">
											
											</select>
										</div>
										<div class="col-md-4 mr-auto">

											<h5>
												<i class="fas fa-plane-arrival" style="color: #5e066e;"></i> Choose Destination
											</h5>
											<input type="text" id="location_to" style="width: 80%;">
											<input type="hidden" id="to_lattitude" value="">
											<input type="hidden" id="to_longitude" value="">
											<select class="form-select" aria-label="Default select example" style="display: none;width: 80%;" id="cab_to">
											
											</select>
										</div>
									</div>
								</div>
								<div class="container py-5 my-3 text-center">
									<button class="btn btn-success" style="width: 20%;" id="search_cabs">
										Search</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="bootstrap-wrapper" style="display: none;padding:5% 0%;" id="cab_results">
	<div class="container text-center" style="background: linear-gradient( to top , #5172657a 0% , #64555633 100%);">
		<div class="row">
			<div class="col-md-10">
				<table class="table">
				  <thead>
				    <tr>
				      <th scope="col">Cab</th>
				      <th scope="col">Cab Type</th>
				      <th scope="col">Cab Number</th>
				      <th scope="col">Driver Name</th>
				      <th scope="col">Distance</th>
				      <th scope="col">Fare</th>
				      <th scope="col">Status</th>
				    </tr>
				  </thead>
				  <tbody id="tab_content">
				   
				  </tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<div class="bootstrap-wrapper" style="display: none;padding:5% 0%;" id="cab_no_results">
	<div class="container text-center">
		<div class="row">
			<div class="col-md-10">
				<h3><i style="font-size: 2.3rem;font-weight: bold;" class="fas fa-car-crash"></i> No Cabs Found !!</h3>
			</div>
		</div>
	</div>
</div>
<!-- <section class="message py-5" id="aboutus">
        <div class="container text-center">
            <h1>We Have Got What You Need</h1>
            <p>
            Carpooling  is the sharing of car journeys so that more than one person travels in a car,
             and prevents the need for others to have to drive to a location themselves.By having more people using one vehicle, 
             carpooling reduces each person's travel costs such as: fuel costs, tolls, and the stress of driving. 
             Carpooling is also a more environmentally friendly and sustainable way to travel as sharing journeys reduces air pollution,
              carbon emissions, traffic congestion on the roads, and the need for parking spaces. Authorities often encourage carpooling, 
              especially during periods of high pollution or high fuel prices. Car sharing is a good way to use up the full seating capacity of a car, 
              which would otherwise remain unused if it were just the driver using the car.
            </p>
        </div>
</section> -->
<section class="contact"  style="background: linear-gradient( to top , #fad0c4 0% , #ffd1ff 100%);">
          <div class="container text-center py-5">
              <h1>Lets get In Touch !</h1>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Obcaecati 
                  dolor autem fuga nulla explicabo fugit id adipisci aliquam minima dicta 
                  tenetur facere ipsa nihil, nobis eaque tempora placeat cupiditate totam.
              </p>
              <i class="fa fa-phone text-warning conts mr-3" style="font-size: 1.5rem;"></i>
              <i class="fa fa-heart text-danger conts" style="font-size: 1.5rem;"></i>
              <p>+91-8180026269</p>
              <p>www.quickxpertinfotech.com</p>
          </div>
</section>
<%@include file="footer.jsp"%>