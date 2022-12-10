<%@page import="bean.gioHangbean"%>
<%@page import="bo.gioHangbo"%>
<%@page import="bean.khachHangbean"%>
<%@page import="bean.giaybean"%>
<%@page import="bean.loaigiaybean"%>
<%@page import="bo.loaigiaybo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
	<title>ALPHA - Thế giới bóng rổ Huế</title>
	<link rel='shortcut icon' href='https://scontent.fdad1-4.fna.fbcdn.net/v/t1.6435-9/125862641_1354296324912030_3484096335265497949_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=174925&_nc_ohc=7eI59Ellc08AX_cCLhD&_nc_ht=scontent.fdad1-4.fna&oh=00_AfBzCnGbunUJIlNK5vQ5lSaqHzADIEJ9FA5k41YIKeGZ8w&oe=639BF5A7'/>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  	<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
  	<!-- Footer -->
  	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  	<link rel="stylesheet" href="stylee.css">
  	<link rel="stylesheet" href="drop.css">
  	<!-- Hết footer -->
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">	
	
	<!-- Hiển thị thanh menu -->
	<nav class="navbar navbar-default navbar-fixed-top">
 		<div class="container">
    		<div class="navbar-header">
      			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        			<span class="icon-bar"></span>
        			<span class="icon-bar"></span>
        			<span class="icon-bar"></span>
      			</button>
      			<a class="navbar-brand" href="homeController">ALPHA SHOP</a>
    		</div>
    		<div class="collapse navbar-collapse" id="myNavbar">
      			<ul class="nav navbar-nav navbar-right">
        			<li><a href="#about">About</a></li>
        			<li><a href="#products">Products</a></li>
        			<li><a href="#help">Help</a></li>
        			<%if(session.getAttribute("kh")==null){ %>
        			<li><a href="ktDN"><span class="glyphicon glyphicon-log-in"></span>SignIn</a></li>
        			<%} else{ %>
        			<li>
        				<a href="#"><span class="glyphicon glyphicon-log-in"></span> Hi <%
        					khachHangbean kh=(khachHangbean)session.getAttribute("kh");
        		      out.print(kh.getHoTen());
        				%></a>
        				<li>
        					<a href="signOutController" class="glyphicon glyphicon-user">Sign Out</a>
        				</li>
        			</li><%} %>
      			</ul>
    		</div>
  		</div>
	</nav>
	<!-- Hết hiển thị menu -->
	
	<!-- Hiển thị content -->
	<!-- Hiển thị thanh tìm kiếm -->
	<div class="jumbotron text-center">
		
		<h1>BALL IS LIFE</h1>
		<form class="form-inline" action="homeController" method="post">
      		<div class="input-group">
        		<input type="text" class="form-control" size="100" name="txttk" placeholder="Nhập để tìm kiếm" required>
        		<div class="input-group-btn">
          			<button class="btn btn-danger" name="butdn" type="submit" value="Tìm kiếm">
            			<i class="glyphicon glyphicon-search"></i>
          			</button>
        		</div>
      		</div>
    	</form>
	</div>
	<!-- Hết hiển thị thanh tìm kiếm -->
	
	<!-- Mô tả Alpha Shop -->
	<div id="about" class="container-fluid">
  		<div class="row">
  			<div class="col-sm-8">
  				<h2>FOR DA BEST ON-COURT</h2>
  				<p>Chuyên cung cấp: Giày Bóng Rổ, Casual Sneaker, Quần Áo, Phụ Kiện chính hãng</p>
  				<p>Địa chỉ: Số 33/2 Kiệt 42 Nguyễn Công Trứ, Huế, Việt Nam</p>
  				<div>
  					<a href="#" class="fa fa-facebook"></a>
  					<span>21.716 người theo dõi Trang này</span>
  				</div>
  				<div>
  					<a href="#" class="fa fa-instagram"></a>
  					<span>alphashop.official.store</span>
  				</div>
  			</div>
  				<div>
			<img src="https://scontent.fdad1-4.fna.fbcdn.net/v/t1.6435-9/125862641_1354296324912030_3484096335265497949_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=174925&_nc_ohc=7eI59Ellc08AX_cCLhD&_nc_ht=scontent.fdad1-4.fna&oh=00_AfBzCnGbunUJIlNK5vQ5lSaqHzADIEJ9FA5k41YIKeGZ8w&oe=639BF5A7" width="300" >
				</div>
  		</div>
	
	
	<div class="container-fluid bg-grey">
  		<div class="row">
  			<div class="col-sm-4">
  				 <img src="https://scontent.fdad1-4.fna.fbcdn.net/v/t1.6435-9/38294477_723915637950105_3559657813909176320_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=174925&_nc_ohc=dcy3xT8UAC4AX8yYsPC&_nc_ht=scontent.fdad1-4.fna&oh=00_AfCF48kYY5VXNiqGtfCLgQmaSL45kBSYmA4jcQmhN8JZ7Q&oe=63A69DD8" width="300" >
  			</div>
  			<div class="col-sm-8">
  				<h2>ALPHA SHOP </h2>
  				<h4><strong>WE SELL DREAMS HERE!:</strong>All about Basketball Shoes and Sneakers </h4>
  				<p><strong>VISION:</strong>We'll make sure that you're on another level</p>
  			</div>
  		</div>
	</div>
	</div>
	<!-- Hết mô tả Alpha Shop -->
	
	<!-- Hiện thị giỏ -->
	<table width="1000" align="center" class="table">
   
   		<td valign="top" width="200" > 
   		<table class="table table-hover">
	   		<%
	   		   loaigiaybo loai=new loaigiaybo();
	   			for(loaigiaybean l: loai.getloaigiay()){%>
	   			   <tr><td>
	   				  <a href="home.jsp?ml=<%=l.getMaloaigiay()%>">
	   				   <%=l.getTenloaigiay()%> </a>
	   				 </td>
	   				</tr>
	   		<%	}
	   		%>
   		 </table>
   		 </td>
   		<td valign="top" width="600" >
   		<form action="suaxoaController" method="post"> 
   		<table  class="table table-hover">
	   		 <%
	   		 gioHangbo gh = (gioHangbo)session.getAttribute("gio");
	   		 if(gh!=null){
	   		  for(gioHangbean h: gh.ds){%>
	   		  <tr>
	   		    <td> 
	   		    <input name="check" type="checkbox" value="<%=h.getMagiay()%>"> <br>
	   		    </td>
	   		    
	   		    <td>
	   		      <%=h.getMagiay() %>
	   		    </td>
	   		    <td>
	   		      <%=h.getTengiay() %>
	   		    </td><td>
	   		      <%=h.getGia() %>
	   		    </td>
	   		    <td><%=h.getSoluong() %> </td>
	   		    <td>
	   		    <input name="<%=h.getMagiay() %>" type="number" value="0" min="0"> 
	   		    
	   		    <button type="submit" name="butsua" value="<%=h.getMagiay() %>"> Update</button>
	   		    <button type="submit" name="butxoa" value="<%=h.getMagiay() %>"> Delete</button>
	   		    </td>
	   		    <td><%=h.getThanhtien() %> </td></tr>
	   		    <%} %>
   		 	</table>
   		 	<button type="submit" name="butcheck"> Xoa chon</button>
   		 	</form>
   		 	<form action="lichsuController" method ="post">
   		 	<button type="submit" name="butcheck"> Xac nhan dat hang</button>
   		 	</form>
   		 	<%} else{
   		 	response.sendRedirect("homeController");
   		 	}%>
   		  
   		    </td>
</table>
	<!-- Hết hiển thị giỏ -->
	
	<!-- Hiển thị Help -->
	<div id="help" class="container-fluid text-center">
		<div>
			<h2>HỖ TRỢ KHÁCH HÀNG</h2>
		</div>
		<form class="form-inline" action="#" method="post" >
      		<div class="input-group">
        		<input type="text" class="form-control" size=80 width="50" name="#" placeholder="Bạn cần giúp đỡ gì?">
        			<div class="input-group-btn">
          				<button class="btn btn-default" name="#" type="submit" value="Tìm kiếm">
            				<i class="glyphicon glyphicon-search"></i> 
          				</button>
        			</div>
      		</div>
    	</form>
    	<div class="text-left">
    		<h2>HỖ TRỢ NHANH</h2>
    		<h4>Giải đáp những thắc mặc thường gặp chỉ bằng một click chuột</h4>
    		<hr style="width:100%;text-align:left;margin-left:0">
    	</div>
    	<div class="container_swap">
			<div class="div_left">
				<h3>Đặt hàng</h3>
				<h4>Làm thế nào để đặt hàng tại Alpha?</h4>
				<h4>Alpha có những phương thức thanh toán nào?</h4>
				<h4>Có thể sửa đổi hoặc huỷ đặt hàng tại Alpha ko?</h4>
			</div>
     		<div class="div_center">
     			<h3>Hoàn trả</h3>
				<h4>Làm thế nào hoàn trả đơn hàng tại Alpha?</h4>
				<h4>Chính sách hoàn trả tại Alpha là gì?</h4>
				<h4>Hoàn trả đơn hàng tại Alpha ở đâu?</h4>
     		</div>
     		<div class="div_left">
     			<h3>Alpha membership</h3>
     			<h4>Alpha membership là gì?</h4>
				<h4>Làm thế nào để trở thành Alpha membership?</h4>
     		</div>
		</div>
	</div>
	<div id="help" class="container-fluid text-center">
		<div class="text-left">
    		<h2>LIÊN HỆ</h2>
    		<hr style="width:100%;text-align:left;margin-left:0">
    	</div>
    	<div class="container_swap">
			<div class="div_left">
				<i class='fas fa-mobile-alt' style='font-size:48px'></i>
				<h3>Liên hệ</h3>
				<h4>0844659971</h4>
				<h4>24h mỗi ngày</h4>
				<h4>7 ngày mỗi tuần</h4>
			</div>
     		<div class="div_center">
     			<i class='fas fa-comment-alt' style='font-size:48px'></i>
				<h3>Liên hệ</h3>
				<h4>Nhắn tin với chúng tôi</h4>
				<h4>24h mỗi ngày</h4>
				<h4>7 ngày mỗi tuần</h4>
     		</div>
     		<div class="div_left">
     			<i class='fas fa-map-marker-alt' style='font-size:48px'></i>
     			<h3>Vị trí</h3>
     			<h4>Tìm kiếm Alpha Shop gần bạn</h4>
     		</div>
		</div>
	</div>
	<!-- Hết hiển thị Help -->
	
	<!-- Quay về đầu trang -->
	<footer class="container-fluid text-center">
  		<a href="#myPage" title="To Top">
    		<span class="glyphicon glyphicon-chevron-up"></span>
  		</a>
	</footer>
	
	<!-- Footer -->
	<footer>
     <div class="container">
    <!--Bắt Đầu Nội Dung Giới Thiệu-->
   <div class="noi-dung links">
     	<h2>ALPHA SHOP</h2>
          	<ul>
             	<li><a href="#">Địa chỉ</a></li>
                <li><a href="#">Trở thành hội viên</a></li>
                <li><a href="#">Đăng ký bằng email</a></li>
                <li><a href="#">Feedback cho Alpha</a></li>
           	</ul>
  	</div>
   <!--Kết Thúc Nội Dung Giới Thiệu-->
   <!--Bắt Đầu Nội Dung Đường Dẫn-->
   <div class="noi-dung links">
     	<h2>TRỢ GIÚP </h2>
          	<ul>
             	<li><a href="#">Đặt hàng</a></li>
                <li><a href="#">Giao hàng</a></li>
                <li><a href="#">Trả hàng</a></li>
                <li><a href="#">Thanh toán</a></li>
           	</ul>
  	</div>
 	<!--Kết Thúc Nội Dung Đường Dẫn-->
    <!--Bắt Đâu Nội Dung Liên Hệ-->
         <div class="noi-dung contact">
             <h2>Thông Tin Liên Hệ</h2>
             <ul class="info">
                 <li>
                     <span><i class="fa fa-map-marker"></i></span>
                     <span>Số 33/2 kiệt 42<br />
                         Nguyễn Công Trứ, Thành Phố Huế<br />
                         Việt Nam</span>
                 </li>
                 <li>
                     <span><i class="fa fa-phone"></i></span>
                     <p><a href="#">+844659971</a>
                 </li>
                 <li>
                     <span><i class="fa fa-envelope"></i></span>
                     <p><a href="#">alphashop@gmail.com</a></p>
                </li>
                 <ul class="social-icon">
                 	<li><a href=""><i class="fa fa-facebook"></i></a></li>
                 	<li><a href=""><i class="fa fa-twitter"></i></a></li>
                 	<li><a href=""><i class="fa fa-instagram"></i></a></li>
                 	<li><a href=""><i class="fa fa-youtube"></i></a></li>
             	</ul>
             </ul>
         </div>
         <!--Kết Thúc Nội Dung Liên Hệ-->
     </div>
 </footer>
	
	<script>
$(document).ready(function(){
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

   // Make sure this.hash has a value before overriding default behavior
  if (this.hash !== "") {

    // Prevent default anchor click behavior
    event.preventDefault();

    // Store hash
    var hash = this.hash;

    // Using jQuery's animate() method to add smooth page scroll
    // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
    $('html, body').animate({
      scrollTop: $(hash).offset().top
    }, 900, function(){

      // Add hash (#) to URL when done scrolling (default click behavior)
      window.location.hash = hash;
      });
    } // End if
  });
})
</script>
	
</body>
</html>