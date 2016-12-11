

$(function(){
	window.onload = initPage;
	var tokens = getTokens();
		
	function getTokens(){
		    var tokens = [];            // new array to hold result
		    var query = location.search; // everything from the '?' onward 
		    query = query.slice(1);     // remove the first character, which will be the '?' 
		    query = query.split('&');   // split via each '&', leaving us an array of something=something strings

		    // iterate through each something=something string
		    $.each(query, function(i,value){    

		        // split the something=something string via '=', creating an array containing the token name and data
		        var token = value.split('=');   

		        // assign the first array element (the token name) to the 'key' variable
		        var key = decodeURIComponent(token[0]);     

		        // assign the second array element (the token data) to the 'data' variable
		        var data = decodeURIComponent(token[1]);

		        tokens[key] = data;     // add an associative key/data pair to our result array, with key names being the URI token names
		    });

	    return tokens;  // return the array
	}
		
	function initPage() {
	  // find the thumbnails on the page
	  thumbs = document.getElementById("tabs").getElementsByTagName("li");
	
	  // set the handler for each image
	  for (var i = 0; i < thumbs.length; i++) {
	    image = thumbs[i];
			
	    // create the onclick function
	    image.onclick = function() {
	      // find the image name
	     /* detailURL = 'http://localhost/dloygtw/images/tabs/month/' + this.id + '-detail.jpg';
	      document.getElementById("itemDetail").src = detailURL;*/
	      getDetails(this.title);
	    }
	  }
	}
		
		
	function createRequest() {
	  try {
	    request = new XMLHttpRequest();
	  } catch (tryMS) {
	    try {
	      request = new ActiveXObject("Msxml2.XMLHTTP");
	    } catch (otherMS) {
	      try {
	        request = new ActiveXObject("Microsoft.XMLHTTP");
	      } catch (failed) {
	        request = null;
	      }
	    }
	  }
	  return request;
	}

	function getDetails(itemName) {
	  request = createRequest();
	  if (request == null) {
	    alert("Unable to create request");
	    return;
	  }
	var yearAjax = itemName.slice(4,8);
	var monthAjax = itemName.slice(9,11);
	 var url= "./category/month_s?y=" + yearAjax + "&m=" + monthAjax;
	
	  request.open("GET", url, true);
	  request.onreadystatechange = displayDetails;
	  request.send(null);
	}
	
	function displayDetails() {
	  if (request.readyState == 4) {
	    if (request.status == 200) {
	    	/*alert(request.responseText);*/
	      detailDiv = document.getElementById("tab_container");
	        
	      detailDiv.innerHTML = request.responseText;
	     
	     /*  eval(document.getElementById("charisma").innerHTML);*/
	       
	       eval(document.getElementById("pageJsa").innerHTML);
	       eval(document.getElementById("pageJsb").innerHTML);
	   
	      
	      
	    }
	  }
	}
		
		

	
		// �w�]��ܲĤ@�� Tab		
		var _showTab = "tab_" + tokens['y'] + "_" + tokens['m'];
		
		$('.abgne_tab').each(function(){
			// �ثe�����Ұ϶�
			var $tab = $(this);
			
			var $defaultLi = $('ul.tabs li.'+_showTab, $tab).addClass('active');
			
		//default ��������
			$defaultLi.siblings('.active').removeClass('active');
		
				$defaultLi.siblings().hide();
				$defaultLi.prev().show();
				$defaultLi.next().show();
			/*$($defaultLi.find('a').attr('href')).siblings().hide();*/
			
			// �� li ���ҳQ�I����...
			// �Y�n�令�ƹ����� li ���ҴN������, �� click �令 mouseover
			$('ul.tabs li', $tab).click(function() {
				
				// ��X li �����W�s�� href(#id)
				var $this = $(this),
					_clickTab = $this.find('a').attr('href');
				// ��ثe�I���쪺 li ���ҥ[�W .active
				// �ç�S�̤������� .active �������� class
				$this.addClass('active').siblings('.active').removeClass('active');
				$(_clickTab).fadeIn();
//$(_clickTab).stop(false, true).fadeIn().siblings().hide();
				/*$(_clickTab).fadeIn('slow');*/
				$this.stop(false, true).fadeIn().siblings().hide();
				$this.stop(false, true).prev().show();
				$this.stop(false, true).next().show();
				// �H�J�۹��������e�����åS�̤���		
			
				return false;
			}).find('a').focus(function(){
				this.blur();
			});
		});
		
		
	
	});