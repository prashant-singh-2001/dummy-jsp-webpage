<!DOCTYPE html PUBLIC "-//W3C/DTD HTML 5.01 Transitional//EN" "http://www.w3.org/TR/html/loose.dtd:">
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%!int current = 0;
	Connection conn = null;
	String conUrl = "jdbc:mysql://localhost:3306/dummy_1";
	ResultSet rs = null;
	Statement st = null;%>
<%
try {
	Map<String, String> hs = new HashMap<>();
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	conn = DriverManager.getConnection(conUrl, "root", "system");
	st = conn.createStatement();
	rs = st.executeQuery("SELECT * FROM page_master");
	hs.clear();
	while (rs.next()) {
		hs.put(rs.getString(2), rs.getString(3));
	}
	if(hs.size()==0){
		out.println("Nothing to see here!");
	}else{%>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />

<title>SPW || Title Name</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
.color-teal {
	color: teal;
}

.icon-lg {
	font-size: 2.7rem;
}

.icon-sm {
	font-size: 1.35rem;
}

.no-underline {
	text-decoration: none;
}
</style>
</head>
<body>
	<header> <nav
		class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container-fluid">
		<a href="#" class="navbar-brand"> <img alt=""
			src="<%=hs.get("logo") %>" height="30px">
		</a>
		<button type="button" class="navbar-toggler" data-bs-toggle="collapse"
			data-bs-target="#navbar1">
			<i class="bi bi-list"></i>
		</button>
		<div class="collapse navbar-collapse" id="navbar1">
			<div class="navbar-nav ms-auto">
				<a href="index.jsp" class="nav-item nav-link active">Home</a> <a
					href="#about-us" class="nav-item nav-link">About Us</a> <a
					href="#our-team" class="nav-item nav-link">Our Team</a> <a
					href="#contact-us" class="nav-item nav-link">Contact Us</a>
			</div>
		</div>
	</div>
	</nav>
	<div id="carousel" class="carousel slide">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carousel" data-bs-slide-to="0"
				class="active" aria-current="true" aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carousel" data-bs-slide-to="1"
				aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carousel" data-bs-slide-to="2"
				aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="<%=hs.get("carousel_1") %>"
					class="d-block w-100" alt="..." />
			</div>
			<div class="carousel-item">
				<img src="<%=hs.get("carousel_2") %>"
					class="d-block w-100" alt="..." />
			</div>
			<div class="carousel-item">
				<img
					src="<%=hs.get("carousel_3") %>"
					class="d-block w-100" alt="..." />
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carousel" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carousel" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>
	</header>
	<main class="mt-5"> <section class="container mt-4"
		id="about-us">
	<h6 class="display-5 text-center">About Us</h6>
	<div class="row my-5">
		<div class="col-md-5">
			<div class="container">
				<img src="<%=hs.get("about_us") %>"
					alt="About us" class="d-block w-100" />
			</div>
		</div>
		<div class="col-md-7">
			<p class="text-black-50">Lorem ipsum dolor sit amet consectetur
				adipisicing elit. Obcaecati quod perferendis esse quisquam labore
				autem pariatur animi ipsum tenetur aut ratione aperiam eum neque nam
				quia dolore, odio dignissimos in. Vel molestiae, officia impedit,
				aliquid perspiciatis deserunt nulla fugit temporibus commodi ipsa
				sit ipsam voluptates veritatis quos eos iusto. Mollitia rem
				praesentium neque, similique distinctio quibusdam alias debitis
				itaque aliquam.</p>
			<p class="text-black-50">Repellat, minima sequi ut repellendus
				omnis reiciendis quasi autem nisi, blanditiis officiis officia!
				Soluta eos dolore placeat amet fugit obcaecati deserunt ducimus
				voluptatum, cumque sapiente, recusandae accusamus. Excepturi, earum
				enim! Assumenda quaerat quos delectus in impedit possimus eos,
				laborum laboriosam minus soluta hic officiis aliquid iusto tenetur
				modi vero nam ullam. Error odio, debitis eaque reprehenderit iusto
				aliquid repellat eius? Minus hic sapiente architecto at laborum quis
				qui temporibus, accusamus fugiat aliquid veritatis. Doloremque
				nostrum molestiae magni quis, obcaecati veritatis autem architecto
				deleniti esse natus laborum consectetur labore fugiat beatae?</p>
		</div>
	</div>
	</section> <section>
	<div class="row my-5 align-item-center w-80">
		<h6 class="display-3 text-center">What makes us Unique?</h6>
		<div class="col-md-4">
			<div class="container text-center">
				<i class="bi bi-shield-lock-fill color-teal icon-lg"></i>
				<p>Privacy First Approach</p>
			</div>
		</div>
		<div class="col-md-4">
			<div class="container text-center">
				<i class="bi bi-person-bounding-box color-teal icon-lg"></i>
				<p>Customer Tailored Options</p>
			</div>
		</div>
		<div class="col-md-4">
			<div class="container text-center">
				<i class="bi bi-list color-teal icon-lg"></i>
				<p>Multiple Variants Produced</p>
			</div>
		</div>
	</div>
	</section> <section id="our-team" class="container my-4">
	<div class="row">
		<h6 class="display-5 text-center my-5">Our Team</h6>
		<div class="col-md-4 d-flex align-items-center justify-content-center">
			<div class="card" style="width: 300px !important">
				<img src="<%=hs.get("team_1") %>"
					alt="" class="card-img-top" />
				<div class="card-body text-center">
					<h4 class="card-title">Team Member 1</h4>
					<p class="card-text">Lorem ipsum dolor sit amet consectetur
						adipisicing elit. Placeat incidunt fuga consequuntur modi
						voluptatibus nostrum quia, eaque eveniet molestiae quae hic
						laudantium consequatur, debitis at corrupti, asperiores itaque
						vero reiciendis!</p>
					<i class="bi bi-facebook icon-sm m-2"></i> <i
						class="bi bi-instagram icon-sm m-2"></i> <i
						class="bi bi-linkedin icon-sm m-2"></i>
				</div>
			</div>
		</div>
		<div class="col-md-4 d-flex align-items-center justify-content-center">
			<div class="card" style="width: 300px !important">
				<img src="<%=hs.get("team_2") %>"
					alt="" class="card-img-top" />
				<div class="card-body text-center">
					<h4 class="card-title">Team Member 2</h4>
					<p class="card-text">Lorem ipsum dolor sit amet consectetur
						adipisicing elit. Placeat incidunt fuga consequuntur modi
						voluptatibus nostrum quia, eaque eveniet molestiae quae hic
						laudantium consequatur, debitis at corrupti, asperiores itaque
						vero reiciendis!</p>
					<i class="bi bi-facebook icon-sm m-2"></i> <i
						class="bi bi-instagram icon-sm m-2"></i> <i
						class="bi bi-linkedin icon-sm m-2"></i>
				</div>
			</div>
		</div>
		<div class="col-md-4 d-flex align-items-center justify-content-center">
			<div class="card" style="width: 300px !important">
				<img src="<%=hs.get("team_3") %>"
					alt="" class="card-img-top" />
				<div class="card-body text-center">
					<h4 class="card-title">Team Member 3</h4>
					<p class="card-text">Lorem ipsum dolor sit amet consectetur
						adipisicing elit. Placeat incidunt fuga consequuntur modi
						voluptatibus nostrum quia, eaque eveniet molestiae quae hic
						laudantium consequatur, debitis at corrupti, asperiores itaque
						vero reiciendis!</p>
					<i class="bi bi-facebook icon-sm m-2"></i> <i
						class="bi bi-instagram icon-sm m-2"></i> <i
						class="bi bi-linkedin icon-sm m-2"></i>
				</div>
			</div>
		</div>
	</div>
	</section> <section id="contact-us" class="container my-5">
	<h6 class="display-5 text-center">Contact Us</h6>
	<div class="row">
		<div class="col-md-6">
			<div class="container mt-3">
				<p class="text-muted text-center fs-3">Contact Info</p>
				<p class="text-black-50 text-center fs-4">Email</p>
				<p class="text-black text-center fs-5">somebody@somewhere.com</p>
				<p class="text-black-50 text-center fs-4">Phone Number</p>
				<p class="text-black text-center fs-5">9988776655</p>
				<p class="text-black-50 text-center fs-4">Our Address</p>
				<p class="text-black text-center fs-5">Somewhere, Some city,
					Some state, Some country 000010000</p>
			</div>
		</div>
		<div class="col-md-6">
			<div class="container">
				<p class="text-muted text-center fs-3">You can also write to us!
				</p>
				<div class="container">
					<div class="card shadow">
						<div class="card-body">
							<form action="">
								<div class="form-group">
									<label for="name" class="form-label">Enter Your Name</label> <input
										type="text" class="form-control" name="name" id="name" /> <label
										for="email" class="form-label">Enter Your Email</label> <input
										type="text" class="form-control" name="email" id="email" /> <label
										for="subject" class="form-label">Enter Subject</label> <input
										type="text" class="form-control" name="subject" id="subject" />
									<label for="name" class="form-label">Enter Message</label>
									<textarea class="form-control" name="name" id="name"
										style="height: 250px !important"></textarea>
									<div class="form-group text-center">
										<input type="submit" value="Send"
											class="btn btn-outline-dark btn-light my-3" />
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section> </main>
	<footer class="bg-dark mt-5">
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<div class="container mt-5">
					<img alt="" src="<%=hs.get("logo") %>" height="50px">
					<p class="text-white">Lorem ipsum dolor, sit amet consectetur
						adipisicing elit. Fugit cupiditate possimus, distinctio atque quam
						earum hic facere deserunt dolor quas nesciunt vero ut ex
						necessitatibus aliquam. Tenetur, totam eveniet! Voluptatum?</p>
				</div>
			</div>
			<div class="col-md-6">
				<div class="container mt-5">
					<p class="text-white fs-5">Quick Links</p>
					<ul>
						<li><a href="#about-us" class="text-white no-underline">About
								Us</a></li>
						<li><a href="#contact-us" class="text-white no-underline">Contact
								Us</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	</footer>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>
<%
	}
} catch (Exception e) {
	e.printStackTrace();
}finally{
	out.println("");
}
%>
