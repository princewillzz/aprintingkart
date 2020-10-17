<head>
    <link rel="stylesheet" type="text/css" href="http://localhost:8080/dashboard/css/dashboard.css">
    <script type="text/javascript" src="http://localhost:8080/dashboard/js/dashboard.js"></script>
</head>

<!--header area start-->
<header>
    <label for="check">
        <i class="fas fa-bars" id="sidebar_btn" style=""></i>
    </label>
    <div class="left_area" style="float: left">
        <img src="images/icon.png" style="">
    </div>
    <div class="right_area" style="float:right">
        <a href="#" class="logout_btn">Sign Out</a>
    </div>
</header>
<!--header area end-->
<!--mobile navigation bar start-->
<div class="mobile_nav">
    <div class="nav_bar">

        <img src="http://localhost:8080/dashboard/images/background.png" class="mobile_profile_image" alt="">
        <i class="fa fa-bars nav_btn"></i>
    </div>
    <div class="mobile_nav_items">
        <a href="#"><i class="fas fa-desktop"></i><span>Dashboard</span></a>
        <a href="#"><i class="fas fa-cogs"></i><span>Manage Order</span></a>
        <a href="#"><i class="fas fa-table"></i><span>Manage Product</span></a>
        <a href="#"><i class="fas fa-th"></i><span>Notification</span></a>
        <a href="#"><i class="fas fa-info-circle"></i><span>Profile</span></a>

    </div>
</div>
<!--mobile navigation bar end-->
<!--sidebar start-->
<div class="sidebar">
    <div class="profile_info">
        <h3>Printing <span>Kart</span></h3>
        <img src="http://localhost:8080/dashboard/images/background.png" class="profile_image" alt="">
        <h4>Jessica</h4>
    </div>
    <a href="/dashboard" id="dashboardSidebarOption"><i class="fas fa-desktop"></i><span>Dashboard</span></a>
    <a href="/dashboard/manage-order" id="manageOrderSidebarOption"><i class="fas fa-cogs"></i><span>Manage
            Order</span></a>
    <a href="/dashboard/manage-product" id="manageProductSidebarOption"><i class="fas fa-table"></i><span>Manage
            Product</span></a>
    <a href="/dashboard/notification" id="notificationSidebarOption"><i
            class="fas fa-th"></i><span>Notification</span></a>
    <a href="/dashboard/profile" id="profileSidebarOption"><i class="fas fa-info-circle"></i><span>Profile</span></a>
</div>
<!--sidebar end-->


<script type="text/javascript">

    document.addEventListener('DOMContentLoaded', () => {
        if (window.location.href == "http://localhost:8080/dashboard/manage-order") {
            document.getElementById("manageOrderSidebarOption").style.background = "#19B3D3";
            console.log("here");
        } else if (window.location.href == "http://localhost:8080/dashboard/manage-product") {
            document.getElementById("manageProductSidebarOption").style.background = "#19B3D3";
            console.log("here");
        } else if (window.location.href == "http://localhost:8080/dashboard" || window.location.href == "http://localhost:8080/dashboard/") {
            document.getElementById("dashboardSidebarOption").style.background = "#19B3D3";
            console.log("here");
        } else if (window.location.href == "http://localhost:8080/dashboard/notification") {
            document.getElementById("notificationSidebarOption").style.background = "#19B3D3";
            console.log("here");
        } else if (window.location.href == "http://localhost:8080/dashboard/profile") {
            document.getElementById("profileSidebarOption").style.background = "#19B3D3";
            console.log("here");
        }
    });


</script>