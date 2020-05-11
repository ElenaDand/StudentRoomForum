<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="StudentRoom.index" %>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Student Room</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="font-awesome.min.css" rel="stylesheet">
<link href="StudentRoom.css" rel="stylesheet">
<link href="index.css" rel="stylesheet">
<script src="jquery-1.12.4.min.js"></script>
<script src="transition.min.js"></script>
<script src="collapse.min.js"></script>
<script src="dropdown.min.js"></script>
<script>
$(document).ready(function()
{
   $(document).on('click','.sorting_menu-navbar-collapse.in',function(e)
   {
      if ($(e.target).is('a') && ($(e.target).attr('class') != 'dropdown-toggle')) 
      {
         $(this).collapse('hide');
      }
   });
});
</script>
</head>
<body style = "display: table; margin: 0 auto;">
<div id="wb_grid_container">
<div id="grid_container">
<div id="navigation">
<div id="nav_uni_layout1" class="RollOverLayer" onclick="window.location.href='./topics/ioannina/ioannina.aspx';return false;">
<div id="wb_nav_uni_layout1_img">
<img src="images/Ioannina_University_logo.png" id="nav_uni_layout1_img" alt="">
</div>
<div id="wb_nav_uni_layout1_text">
<h6 id="nav_uni_layout1_text">Πανεπιστήμιο Ιωαννίνων</h6>
</div>
</div>
<div id="nav_uni_layout2" class="RollOverLayer" onclick="window.location.href='./topics/macedonia/macedonia.aspx';return false;">
<div id="wb_nav_uni_layout2_img">
<img src="images/macedonia.png" id="nav_uni_layout2_img" alt="">
</div>
<div id="wb_nav_uni_layout2_text">
<h6 id="nav_uni_layout2_text">Πανεπιστήμιο Μακεδονίας</h6>
</div>
</div>
<div id="nav_uni_layout3" class="RollOverLayer" onclick="window.location.href='./topics/thessaly/thessaly.aspx';return false;">
<div id="wb_nav_uni_layout3_img">
<img src="images/UTH-logo-english.png" id="nav_uni_layout3_img" alt="">
</div>
<div id="wb_nav_uni_layout3_text">
<h6 id="nav_uni_layout3_text">Πανεπιστήμιο Θεσσαλίας</h6>
</div>
</div>
<div id="nav_uni_layout4" class="RollOverLayer" onclick="window.location.href='./topics/patras/patras.aspx';return false;">
<div id="wb_nav_uni_layout4_img">
<img src="images/University_of_Patras_(seal).png" id="nav_uni_layout4_img" alt="">
</div>
<div id="wb_nav_uni_layout4_text">
<h6 id="nav_uni_layout4_text">Πανεπιστήμιο Πατρών</h6>
</div>
</div>
</div>
<div id="main">
<div id="wb_Text1">
<span style="color:#000000;font-family:Calibri;font-size:24px;"><strong>Γενικά</strong></span>
</div>
<div id="button_container">
<div id="wb_sorting_menu">
<div id="sorting_menu" class="sorting_menu" style ="width:100%;height:auto !important;">
<div class="container">
<div class="navbar-header">
<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sorting_menu-navbar-collapse">
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
</div>
<div class="sorting_menu-navbar-collapse collapse">
<ul class="nav navbar-nav">
<li class="dropdown">
<a href="#" class="dropdown-toggle" data-toggle="dropdown">Ταξινόμηση <b class="caret"></b></a>
<ul class="dropdown-menu">
<li><a href="">Νέα</a></li>
<li><a href="">Χωρίς απαντήσεις</a></li>
<li><a href="">Κορυφαία</a></li>
<li><a href="">Κορυφαία εβδομαδας</a></li>
<li><a href="">Περισσότερες απαντήσεις</a></li>
</ul>
</li>
</ul>
</div>
</div>
</div>
</div>
</div>
<div id="post_container">
<div id="post">
<div id="wb_post_title" class="h3">
<span style="color:#000000;font-family:Calibri;font-size:19px;"><strong><a href="./user/username/profile.html" class="black_link">Τιτλος</a></strong></span>
</div>
<div id="wb_post_description">
<span style="color:#000000;font-family:Calibri;font-size:15px;"><a href="./user/username/profile.html" class="link_no_underline">Περιγραφη κειμενο</a></span>
</div>
<div id="post_info">
<div id="wb_from_date">
<span style="color:#000000;font-family:Calibri;font-size:15px;">Απο τον <a href="./master_loggedin.aspx" class="black_link">ονομαχρηστη</a>, ημερομηνια</span>
</div>
<div id="wb_icon_replies">
<div id="icon_replies"><i class="fa fa-comments-o"></i></div>
</div>
<div id="wb_replies_number">
<span style="color:#000000;font-family:Arial;font-size:13px;">0</span>
</div>
<div id="wb_post_upvote">
<div id="post_upvote"><i class="fa fa-arrow-circle-o-up"></i></div>
</div>
<div id="wb_post_downvote">
<div id="post_downvote"><i class="fa fa-arrow-circle-o-down"></i></div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>