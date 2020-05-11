<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="post.aspx.cs" Inherits="StudentRoom.topics.ioannina.posts.post" %>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Untitled Page</title>
<meta name="generator" content="WYSIWYG Web Builder 15 Trial Version - http://www.wysiwygwebbuilder.com">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="base/jquery-ui.min.css" rel="stylesheet">
<link href="font-awesome.min.css" rel="stylesheet">
<link href="StudentRoom.css" rel="stylesheet">
<link href="post.css" rel="stylesheet">
<script src="jquery-1.12.4.min.js"></script>
<script src="jquery-ui.min.js"></script>
<script src="transition.min.js"></script>
<script src="collapse.min.js"></script>
<script src="dropdown.min.js"></script>
<script src="wwb15.min.js"></script>
<script>
$(document).ready(function()
{
   $("#button_follow").button();
   $("#button_unfollow").button();
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
<div id="uni_profile_layer" style="left:133px;top:10px;width:702px;height:281px;z-index:45;border-radius: 4px;">
<div id="wb_ioannina_icon" style="display:inline-block;width:126px;z-index:6;">
<img src="images/Ioannina_University_logo.png" id="ioannina_icon" alt="">
</div>
<div id="wb_">
<span style="color:#000000;font-family:Calibri;font-size:19px;"><strong><a href="./../ioannina.aspx" class="black_link">Πανεπιστήμιο Ιωαννίνων</a></strong></span>
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
<div id="button_discussions" class="RollOverLayer" style="left:10px;top:3px;width:116px;height:34px;z-index:4;" onclick="window.location.href='./../ioannina.aspx';return false;">
<div id="wb_button_discussions_text">
<span style="color:#000000;font-family:Calibri;font-size:15px;">Συζητήσεις</span>
</div>
</div>
<div id="button_notes" class="RollOverLayer" style="left:126px;top:3px;width:116px;height:34px;z-index:5;" onclick="window.location.href='./../ioanninanotes.aspx';return false;">
<div id="wb_button_notes_text">
<span style="color:#000000;font-family:Calibri;font-size:15px;">Σημειωσεις</span>
</div>
</div>
</div>
</div>
<div id="post_container" style="left:132px;top:293px;width:705px;height:587px;z-index:46;z-index: -1;
height:auto;">
<div id="post" style="left:0px;top:0px;width:704px;height:357px;z-index:20;border-top:1px solid #C5C5C5;
border-right:1px solid #C5C5C5;
border-left:1px solid #C5C5C5;
border-top-right-radius: 4px;
border-top-left-radius: 4px;">
<div id="wb_post_title" class="h3">
<span style="color:#000000;font-family:Calibri;font-size:19px;"><strong><a href="./../../../master_loggedin.aspx" class="black_link">Τιτλος</a></strong></span>
</div>
<div id="wb_post_description">
<span style="color:#000000;font-family:Calibri;font-size:15px;">Περιγραφη</span>
</div>
<div id="post_info">
<div id="wb_from_date">
<span style="color:#000000;font-family:Calibri;font-size:15px;">Απο τον <a href="./../../../master_loggedin.aspx" class="black_link">ονομαχρηστη</a>, ημερομηνια</span>
</div>
<div id="wb_icon_replies" style="display:inline-block;width:18px;height:20px;text-align:center;z-index:11;">
<div id="icon_replies" style="cursor: context-menu;"><i class="fa fa-comments-o"></i></div>
</div>
<div id="wb_replies_number">
<span style="color:#000000;font-family:Arial;font-size:13px;">0</span>
</div>
<div id="wb_post_upvote" style="display:inline-block;width:23px;height:20px;text-align:center;z-index:13;">
<div id="post_upvote" style="cursor:pointer;"><i class="fa fa-arrow-circle-o-up"></i></div>
</div>
<div id="wb_post_downvote" style="display:inline-block;width:23px;height:20px;text-align:center;z-index:14;">
<div id="post_downvote" style="cursor:pointer;"><i class="fa fa-arrow-circle-o-down"></i></div>
</div>
</div>
</div>
<div id="reply_textbox_container" style="left:0px;top:357px;width:704px;height:225px;z-index:21;border-bottom:1px solid #C5C5C5;
border-right:1px solid #C5C5C5;
border-left:1px solid #C5C5C5;
border-bottom-right-radius: 4px;
border-bottom-left-radius: 4px;">
<textarea name="reply_text" id="reply_textbox" style="display:block;width:494px;height:179px;z-index:18;" rows="8" cols="66" spellcheck="false" placeholder="&#913;&#960;&#940;&#957;&#964;&#951;&#963;&#951;..."></textarea>
<input type="submit" id="button_submit_reply" name="reply" value="Δημοσίευση" style="display:block;width:90px;height:33px;z-index:19;cursor:pointer;">
</div>
</div>
<div id="button_container" style="left:133px;top:885px;width:704px;height:57px;z-index:47;">
<div id="wb_sorting_menu" style="display:inline-block;width:90px;height:48px;z-index:1022;">
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
<li><a href="">Κορυφαία</a></li>
</ul>
</li>
</ul>
</div>
</div>
</div>
</div>
</div>
<div id="replies_container" style="left:133px;top:942px;width:704px;height:387px;z-index:48;z-index: -1;
height:auto;">
<div id="reply_container" style="left:0px;top:0px;width:704px;height:387px;z-index:44;position:relative;
height:auto;">
<div id="reply" style="left:0px;top:0px;width:702px;height:100px;z-index:40;border-radius:4px;">
<div id="wb_reply_text">
<span style="color:#000000;font-family:Calibri;font-size:15px;">Απαντηση</span>
</div>
<div id="reply_info">
<div id="wb_reply_from_date">
<span style="color:#000000;font-family:Calibri;font-size:15px;">Απο τον <a href="./../../../master_loggedin.aspx" class="black_link">ονομαχρηστη</a>, ημερομηνια</span>
</div>
<div id="wb_icon_replies_number" style="display:inline-block;width:18px;height:20px;text-align:center;z-index:24;">
<div id="icon_replies_number" style="cursor: context-menu;"><i class="fa fa-comments-o"></i></div>
</div>
<div id="wb_comments_number">
<span style="color:#000000;font-family:Arial;font-size:13px;">0</span>
</div>
<div id="wb_reply_upvote" style="display:inline-block;width:23px;height:20px;text-align:center;z-index:26;">
<div id="reply_upvote" style="cursor:pointer;"><i class="fa fa-arrow-circle-o-up"></i></div>
</div>
<div id="wb_reply_downvote" style="display:inline-block;width:23px;height:20px;text-align:center;z-index:27;">
<div id="reply_downvote" style="cursor:pointer;"><i class="fa fa-arrow-circle-o-down"></i></div>
</div>
</div>
</div>
<div id="reply_buttons_container" style="left:3px;top:102px;width:698px;height:34px;z-index:41;">
<input type="submit" id="button_add_comment" onclick="Toggle('comment_textbox_container', 'fade', 0);ShowObjectWithEffect('comments_container', 0, '', 0);return false;" name="comment" value="Προσθήκη σχολίου" style="display:block;width:138px;height:31px;z-index:30;cursor:pointer">
<input type="submit" id="button_view_comments" onclick="Toggle('comments_container', 'fade', 0);ShowObjectWithEffect('comment_textbox_container', 0, '', 0);return false;" name="view_comments" value="Προβολή σχολίων" style="display:block;width:138px;height:31px;z-index:31;cursor:pointer">
</div>
<div id="comments_container" style="left:16px;top:136px;width:672px;height:102px;z-index:42;height:auto;">
<div id="comment" style="left:7px;top:0px;width:656px;height:100px;z-index:37;position:relative;">
<div id="wb_comment_text">
<span style="color:#000000;font-family:Calibri;font-size:15px;">Απαντηση</span>
</div>
<div id="comment_info">
<div id="wb_comment_from_date">
<span style="color:#000000;font-family:Calibri;font-size:15px;">Απο τον <a href="./../../../master_loggedin.aspx" class="black_link">ονομαχρηστη</a>, ημερομηνια</span>
</div>
<div id="wb_comment_upvote" style="display:inline-block;width:23px;height:20px;text-align:center;z-index:33;">
<div id="comment_upvote" style="cursor:pointer;"><i class="fa fa-arrow-circle-o-up"></i></div>
</div>
<div id="wb_comment_downvote" style="display:inline-block;width:23px;height:20px;text-align:center;z-index:34;">
<div id="comment_downvote" style="cursor:pointer;"><i class="fa fa-arrow-circle-o-down"></i></div>
</div>
</div>
</div>
</div>
<div id="comment_textbox_container" style="left:117px;top:238px;width:469px;height:143px;z-index:43;">
<textarea name="TextArea1" id="comment_textbox" style="display:block;width:401px;height:100px;z-index:38;" rows="4" cols="53" spellcheck="false"></textarea>
<input type="submit" id="button_submit_comment" name="reply" value="Δημοσίευση" style="display:block;width:90px;height:33px;z-index:39;cursor:pointer;">
</div>
</div>
</div>
</div>
</div>
<script>
$(document).ready(function() {
   $("#comments_container").hide();
   $("#comment_textbox_container").hide();


});
</script></body>
</html>