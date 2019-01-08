<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

  <div class="background">
    <div class="header">
      <h1>
        <a href="" class="typewrite" data-period="2000"
         data-type='[ "Hi, this is AboutM.", "welcome to visit :D", "search a movie.", "find a movie.", "get a movie." ]'>
          <span class="wrap"></span>
        </a>
      </h1>
    </div>

    <div id="navbar">

      <a href="javascript:void(0)" id="logo">AboutM</a>
      <div class="navbar-right topnav">
          <a href="<%=request.getContextPath()%>/m/R" id="R">영화추천</a>
          <a href="<%=request.getContextPath()%>/m/main" id="main">영화목록</a>
          <a href="<%=request.getContextPath()%>/m/A" id="A">배우</a>
          <a href="<%=request.getContextPath()%>/m/D" id="D">감독</a>
          <a href="<%=request.getContextPath()%>/m/my" id="my">내 서재</a>
          <p style="display: inline-block; width: 10px;"></p>
        <div class="navbar-right search-container">
          <form method="GET">
            <input class="form-control mr-sm-2" type="text" placeholder="Search the Movie!" id="search" name="search">
            <button class="btn btn-success" type="submit" id="btnSearch" name="btnSearch">Search</button>
          </form>
        </div>
      </div>
    </div>
  </div>


  <script type="text/javascript">
			window.onscroll = function() {
				myFunction()
			};

			var navbar = document.getElementById("navbar");
			var sticky = navbar.offsetTop;

			function myFunction() {
				if (window.pageYOffset >= sticky) {
					navbar.classList.add("sticky")
				} else {
					navbar.classList.remove("sticky");
				}
			}

			var TxtType = function(el, toRotate, period) {
				this.toRotate = toRotate;
				this.el = el;
				this.loopNum = 0;
				this.period = parseInt(period, 10) || 2000;
				this.txt = '';
				this.tick();
				this.isDeleting = false;
			};

			TxtType.prototype.tick = function() {
				var i = this.loopNum % this.toRotate.length;
				var fullTxt = this.toRotate[i];

				if (this.isDeleting) {
					this.txt = fullTxt.substring(0, this.txt.length - 1);
				} else {
					this.txt = fullTxt.substring(0, this.txt.length + 1);
				}

				this.el.innerHTML = '<span class="wrap">' + this.txt
						+ '</span>';

				var that = this;
				var delta = 200 - Math.random() * 100;

				if (this.isDeleting) {
					delta /= 2;
				}

				if (!this.isDeleting && this.txt === fullTxt) {
					delta = this.period;
					this.isDeleting = true;
				} else if (this.isDeleting && this.txt === '') {
					this.isDeleting = false;
					this.loopNum++;
					delta = 500;
				}

				setTimeout(function() {
					that.tick();
				}, delta);
			};

			window.onload = function() {
				var elements = document.getElementsByClassName('typewrite');
				for (var i = 0; i < elements.length; i++) {
					var toRotate = elements[i].getAttribute('data-type');
					var period = elements[i].getAttribute('data-period');
					if (toRotate) {
						new TxtType(elements[i], JSON.parse(toRotate), period);
					}
				}
				// INJECT CSS
				var css = document.createElement("style");
				css.type = "text/css";
				css.innerHTML = ".typewrite > .wrap { border-right: 0.08em solid #fff}";
				document.body.appendChild(css);
			};

			var input = document.getElementById("search");

			input.addEventListener("keyup", function(event) {
				event.preventDefault();
				if (event.keyCode === 13) {
					document.getElementById("btnSearch").click();
				}
			});
		</script>
