<html>
<meta charset="UTF-8" />

    <head>
        <title>不要枉費青春-登入</title>
        
        
         <?php echo link_tag('stylesheet/bluelagoon.css'); ?>
    	  <script type="text/javascript" src="<?php echo base_url(); ?>asset/ckeditor/ckeditor.js"></script>
    
       
       
    </head>
    <body>

    <div id="login">
    	<form action="<?php echo base_url(); ?>bluelagoon/login" method="post" accept-charset="utf-8" >
 		<input type="hidden" name="<?php echo $csrf['name'];?>" value="<?php echo $csrf['hash'];?>" />

   		User Name:</br>
   		<input type="text" name="username" id="aaa" ></br>
   		Password:</br>
   		<input type="password" name="password" id="bbb" ></br>
   		</br>	
   					   		   		
        <button type="submit" class="btn btn-primary" >登入</button>
        
		</form>
	</div>
    </body>
</html>