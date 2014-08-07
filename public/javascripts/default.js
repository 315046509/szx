// JavaScript Document
$(function(){
		$(".light a").click(function(){
			$(".free_top_s").slideToggle(100);	
		});
		//图片轮播
		var play_count = 1;
		var img_state = 0;
		$(".play_img .all_imgs").bind({
			mouseover: function(){
				img_state = 1;	
			},
			mouseleave: function(){
				img_state = 0;
			}
		});
		
		var index_imgCount = $(".play_img li").size();
		var img_timer;
		img_timer = setInterval(function(){
			if(img_state == 0){
				play_count +=  1;
				if(play_count > index_imgCount){
					play_count = 1;
				}
		
				$(".play_img li").removeClass("li_cur");
				$(".play_img #li_"+ play_count).addClass("li_cur");
		
				$(".play_img .all_imgs").fadeOut(1000);
				$(".play_img #img_" + play_count).fadeIn(1000);	
			}
		}, 5000);	
		
		$(".play_img li").click(function(){
			play_count = parseInt($(this).attr("id").substring(3));
			
			if($(this).attr("class") == "li_cur"){
				$(".play_img .all_imgs").hide();
				$(".play_img #img_" + play_count).show();
			}
			else{
				$(".play_img .all_imgs").fadeOut(500);
				$(".play_img #img_" + play_count).fadeIn(500);
				
				$(this).siblings().removeClass("li_cur");
				$(this).addClass("li_cur");	
			}
			
			window.clearInterval(img_timer); 
			
			img_timer = setInterval(function(){
				if(img_state == 0){
					play_count +=  1;
		
					if(play_count > index_imgCount){
						play_count = 1;
					}
			
					$(".play_img li").removeClass("li_cur");
					$(".play_img #li_"+ play_count).addClass("li_cur");
			
					$(".play_img .all_imgs").fadeOut(1000);
					$(".play_img #img_" + play_count).fadeIn(1000);	
				}
			}, 5000);	
		});
		

		$("#newSearchkey").focus(function(){
			if($.trim($(this).val()) == "" || $.trim($(this).val()) == "请输入关键字" ){
				$(this).val("");
			}
		}).blur(function(){
			if($.trim($(this).val()) == ""){
				$(this).val("请输入关键字");
			}
		});
		
		$(".newTop-srhBoxVal, .newTop-srhSe").bind({
			mouseover: function(){
				$(".newTop-srhSe").show();
				$(".newTop-search-s1").addClass("newTop-search-cz");
				$(".newTop-srhBoxVal").addClass("newTop-srhBoxValCur");
			},
			mouseleave: function(){
				$(".newTop-srhSe").hide();	
				$(".newTop-search-s1").removeClass("newTop-search-cz");
				$(".newTop-srhBoxVal").removeClass("newTop-srhBoxValCur");
			}
		});
		
		$(".newTop-srhSe a").click(function(){
			$(".newTop-srhBoxVal").val($(this).val());
			$(".newTop-srhBoxVal").html($(this).html());
			$(".newTop-srhSe").hide();
		});
		
		
		//tab
		var li_id = '';
		var body_top;
		$(".newChannel_tab li").click(function(){
			body_top = $("html, body").scrollTop();
			
			$(this).siblings().removeClass("cur");
			$(this).addClass("cur");
			
			li_id = "#" + $(this).attr("id").substring(0, 3) + "div" + $(this).attr("id").substring(5);
			$(this).parent().parent().find(".newChannel_list").removeClass("visible");
			$(li_id).addClass("visible");
			
			
			$(li_id).find("img").each(function(index, element) {
                if($(this).attr("data-original") != undefined || $(this).attr("data-original") != ''){
					$(this).attr("src", $(this).attr("data-original"));		
				}
            });
		});
		
		//最新预订滚动
		var new_book;
		var book_state = 0;
		$(".new_book .book_list").bind({
			mouseover: function(){
				book_state = 1;	
			},
			mouseleave: function(){
				book_state = 0;
			}
		});
		
		setInterval(function(){
			if(book_state == 0){
				new_book = $(".new_book .book_list").find("li:first").clone();
				$(".new_book .book_list").append(new_book);
				$(".new_book .book_list").find("li:first").slideUp(500, function(){
					$(this).remove();	
				});
			}
		}, 3000);
		
		//回到顶部
		$(".back_top").click(function(){
			$("html, body").animate({scrollTop: "0px"}, 300);
		});
		
		//加入收藏
		var ProdClassUrl = "http://www.aizy.com";
		$("#add_collect").click(function(){
	
			var ctrl=(navigator.userAgent.toLowerCase()).indexOf('mac')!=-1?'Command/Cmd': 'CTRL';
			if(document.all){
				window.external.addFavorite(ProdClassUrl, document.title);
			}
			else if(window.sidebar){
				window.sidebar.addPanel(document.title, ProdClassUrl , "");
			}
			else{
				alert('您的浏览器不支持自动加入收藏，您可以通过快捷键' + ctrl + ' + D 加入到收藏夹');
			}
	
		});
		
		//景点图片切换
		var img_id = 0;
		var img_count = $(".play_jdImgs img").size();
		$(".play_jdImgs img").eq(img_id).show();
		$(".play_jdImgs .img_count span:first").html(img_id+1);
		$(".play_jdImgs .img_count span:last").html(img_count);
		
		$(".play_jdImgs .next_img").click(function(){ 
			if(img_id != (img_count-1)){
				$(".play_jdImgs img").eq(img_id).hide();
				$(".play_jdImgs img").eq(img_id+1).show();
				img_id += 1;	
				$(".play_jdImgs .img_count span:first").html(img_id+1);
			}
		});	
		$(".play_jdImgs .prev_img").click(function(){
			if(img_id != 0){
				$(".play_jdImgs img").eq(img_id).hide();
				$(".play_jdImgs img").eq(img_id-1).show();
				img_id -= 1;
				$(".play_jdImgs .img_count span:first").html(img_id+1);
			}
		});	
		
		$("#close_qq").click(function(){
			$(this).parent().hide();	
		});
		
		
		//IE6
		if (($.browser.msie) && ($.browser.version == "6.0")){
			var offsetTop = $(".qq_online").offset().top, srcollTop;
			$(".qq_online, .float_contact").css("top", offsetTop).css("margin-top", 0);
			
			$(window).scroll(function scrollHandler(){
            	srcollTop = ($(document).scrollTop() + offsetTop) + "px";
				
				$(".qq_online").css("top", srcollTop);
				$(".float_contact").css("top", srcollTop);
			});
		}
		$(".open_qq").click(function(){
			window.open('http://b.qq.com/webc.htm?new=0&sid=4000677888&eid=218808P8z8p8R8y8z8z8x&o=&q=7&from=qqwpa');
		});
		
		var curr_li;
		$(".classify").children("ul").find(".has_move").bind({
			mouseover: function(){
				$(this).siblings().removeClass("cur");	
				$(this).addClass("cur");
				$(this).find(".subNav_box").show();
				
			},
			mouseleave: function(){
				$(this).removeClass("cur");
				$(this).find(".subNav_box").hide();	
			}	
		});	
		
		$(".subNav_boxRi .subNav_boxRi_close").click(function(){
			$(this).parent().parent().parent().hide();
		});
		
		var clone_li, clone_div;
		setInterval(function(){
			$(".hot_mudd ul").each(function(index, element) {
				clone_li = $(this).find("li:last").clone();
				$(this).prepend(clone_li);
				$(this).find("li:last").slideUp(500, function(){
					$(this).remove();	
				});
			});
		}, 3000);
		
		setInterval(function(){
			clone_div = $(".hot_mudd:first").clone();
			$(".hot_mudd:first").animate({"margin-left": "-158px"}, 500, function(){
				$(this).parent().append(clone_div);
				$(this).remove();	
			});
			
		}, 5000);
		
		$(".Towhere .Towhere_img").mouseover(function(){
				$(".Towhere .Towhere_img").show();
				$(".Towhere .Towhere_jieshao").hide();
				
				$(this).hide().next(".Towhere_jieshao").css("display" ,"block");
		});
		
		
});