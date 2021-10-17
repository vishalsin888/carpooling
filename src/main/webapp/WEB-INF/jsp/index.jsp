<%@include file="header.jsp"%>

<div class="bootstrap-wrapper" style="padding-top: 5%">
	<div class="header" id="home_page">
		<div class="container-fluid" style="height: 80vh;">
			<div class="row align-items-center">
				<div class="col-md-12 text-center my-5 py-5">
					<h2 class="py-5">Welcome To CarPooling</h2>
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
										</div>
										<div class="col-md-4 mr-auto">

											<h5>
												<i class="fas fa-plane-arrival" style="color: #5e066e;"></i> Choose Destination
											</h5>
											<input type="text" id="location_to" style="width: 80%;">
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
<section class="message py-5" id="aboutus">
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
            <a href="/login" class="btn btn-primary">Check It Out</a>
        </div>
</section>
<%@include file="footer.jsp"%>