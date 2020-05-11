<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="thessalynotes.aspx.cs" Inherits="StudentRoom.topics.thessaly.thessalynotes" %>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Πανεπιστήμιο Θεσσαλίας</title>
<meta name="generator" content="WYSIWYG Web Builder 15 Trial Version - http://www.wysiwygwebbuilder.com">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="base/jquery-ui.min.css" rel="stylesheet">
<link href="font-awesome.min.css" rel="stylesheet">
<link href="StudentRoom.css" rel="stylesheet">
<link href="thessalynotes.css" rel="stylesheet">
<script src="jquery-1.12.4.min.js"></script>
<script src="jquery-ui.min.js"></script>
<script src="transition.min.js"></script>
<script src="collapse.min.js"></script>
<script src="dropdown.min.js"></script>
<script src="../../searchindex.js"></script>
<script src="../../wb.sitesearch.min.js"></script>
<script>
var features = 'toolbar=no,menubar=no,location=no,scrollbars=yes,resizable=yes,status=no,left=,top=,width=,height=';
function searchPage(features)
{
   var element = document.getElementById('write_post_bar');
   window.open('write_post_bar-results.html?q='+encodeURIComponent(element.value), '', features);
   return false;
}
</script>
<script src="wwb15.min.js"></script>
<script>
$(document).ready(function()
{
   $("#button_follow").button();
   $("#button_unfollow").button();
   searchParseURL('write_post_bar');
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
<body>
<a href="http://www.wysiwygwebbuilder.com" target="_blank"><img src="images/builtwithwwb15.png" alt="WYSIWYG Web Builder" style="position:absolute;left:441px;top:967px;margin: 0;border-width:0;z-index:250"></a>
<div id="wb_main">
<div id="main" style="height:auto;">
<div id="uni_profile_layer" style="left:133px;top:10px;width:702px;height:281px;z-index:22;border-radius: 4px;">
<div id="wb_ioannina_icon" style="display:inline-block;width:126px;z-index:6;">
<img src="images/UTH-logo-english.png" id="ioannina_icon" alt="">
</div>
<div id="wb_">
<span style="color:#000000;font-family:Candara;font-size:19px;"><strong><a href="./thessaly.aspx" class="black_link">Πανεπιστήμιο Θεσσαλίας</a></strong></span>
</div>
<div id="page_buttons_layer" style="left:9px;top:163px;width:676px;height:68px;z-index:8;">
<button type="submit" id="button_follow" onclick="ShowObjectWithEffect('button_unfollow', 1, '', 0);ShowObjectWithEffect('button_follow', 0, '', 0);return false;" name="follow" value="Ακολουθήστε" style="display:block;width:569px;height:33px;z-index:0;">Ακολουθήστε</button>
<button type="submit" id="button_unfollow" onclick="ShowObjectWithEffect('button_follow', 1, '', 0);ShowObjectWithEffect('button_unfollow', 0, '', 0);return false;" name="unfollow" value="Ακολουθώ" style="display:none;width:569px;height:33px;z-index:1;">Ακολουθώ</button><script>
$('#button_unfollow').hover(
    function() {
        var $this = $(this); // caching $(this)
        $this.data('defaultText', $this.text());
        $this.text("Να μην ακολουθώ!");
    },
    function() {
        var $this = $(this); // caching $(this)
        $this.text($this.data('defaultText'));
    }
);
</script>
</div>
<div id="section_button_layer" style="left:9px;top:231px;width:696px;height:40px;z-index:9;">
<div id="button_discussions" class="RollOverLayer" style="left:10px;top:3px;width:116px;height:34px;z-index:4;" onclick="window.location.href='./thessaly.aspx';return false;">
<div id="wb_button_discussions_text">
<span style="color:#000000;font-family:Calibri;font-size:15px;">Συζητήσεις</span>
</div>
</div>
<div id="button_notes" class="RollOverLayerSelected" style="left:126px;top:3px;width:116px;height:34px;z-index:5;" onclick="window.location.href='./thessalynotes.aspx';return false;">
<div id="wb_button_notes_text">
<span style="color:#000000;font-family:Calibri;font-size:15px;">Σημειωσεις</span>
</div>
</div>
</div>
</div>
<div id="type_post_layer" style="left:133px;top:293px;width:702px;height:47px;z-index:23;border-radius:4px;">
<div id="wb_icon_user" style="display:inline-block;width:32px;height:30px;text-align:center;z-index:10;">
<div id="icon_user" style="cursor:pointer;
"><i class="material-icons">&#xe853;</i></div>
</div>
<form name="write_post_bar_form" id="write_post_bar_form" role="search" accept-charset="UTF-8" style="display:inline" onsubmit="return searchPage(features)">
<input type="text" id="write_post_bar" style="display:block;width:648px;height:32px;" name="SiteSearch1" value="" spellcheck="false" placeholder="&#916;&#951;&#956;&#953;&#959;&#965;&#961;&#947;&#943;&#945; &#913;&#957;&#940;&#961;&#964;&#951;&#963;&#951;&#962;" role="searchbox"></form>
</div>
<div id="button_container" style="left:133px;top:347px;width:704px;height:60px;z-index:24;">
<div id="wb_sorting_menu" style="display:inline-block;width:90px;height:48px;z-index:1012;">
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
<div id="post_container" style="left:133px;top:407px;width:704px;height:107px;z-index:25;z-index: -1;
height:auto;">
<div id="post" style="left:0px;top:0px;width:702px;height:90px;z-index:21;border-radius: 4px;
position:relative;">
<div id="wb_post_title" class="h3">
<span style="color:#000000;font-family:Calibri;font-size:19px;"><strong><a href="./../../master_loggedin.aspx" class="black_link">Τιτλος</a></strong></span>
</div>
<div id="wb_post_description">
<span style="color:#000000;font-family:Calibri;font-size:15px;"><a href="./../../master_loggedin.aspx" class="link_no_underline">Περιγραφη κειμενο</a></span>
</div>
<div id="post_info">
<div id="wb_from_date">
<span style="color:#000000;font-family:Calibri;font-size:15px;">Απο τον <a href="./../../master_loggedin.aspx" class="black_link">ονομαχρηστη</a>, ημερομηνια</span>
</div>
<div id="wb_icon_replies" style="display:inline-block;width:18px;height:20px;text-align:center;z-index:14;">
<div id="icon_replies" style="cursor: context-menu;"><i class="fa fa-comments-o"></i></div>
</div>
<div id="wb_replies_number">
<span style="color:#000000;font-family:Arial;font-size:13px;">0</span>
</div>
<div id="wb_post_upvote" style="display:inline-block;width:23px;height:20px;text-align:center;z-index:16;">
<div id="post_upvote"><i class="fa fa-arrow-circle-o-up"></i></div>
</div>
<div id="wb_post_downvote" style="display:inline-block;width:23px;height:20px;text-align:center;z-index:17;">
<div id="post_downvote"><i class="fa fa-arrow-circle-o-down"></i></div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>