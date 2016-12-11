
<div class="page-main" role="main">
    <aside>
        <ul>
        
            
            <li class="aboutmetext">ABOUT ME</li>
            <li class="aboutmepic"><div class="pic"><img width="91px" src="images/aside/i_aside.png"></div><div class="meinfo">Charisma Chen dloygtw.il@gmail.com</div></li><!--滑鼠指上時，變克里斯馬-->
            <li class="aboutmetext">走在台北的街道路上，耳朵上掛著耳機，背包裡放著一支鉛筆。百無聊賴躺在沙發聽電影，摸著書頁間斑駁的氣味，知道有個地方，它的名字叫做</li>
            <li class="myplace">《Don't Let Our Youth Go to Waste》</li>
          <!--  <li class="searchSomething">
            
            	<input class="asideSearch" type="text" placeholder="Search Articles"/><input class="searchBt" type="submit" value=""/>
            	
            </li>--><br>
            
            
            <li class="mailme">E-Mail Me</li>
            <?php echo form_open('home/message') ?>
            
     
            <li><input class="userName" name="username" placeholder="Your Name" required/></li>
            
          
            <li><input class="userMail" name="useremail" placeholder="Your E-mail" required/>
         	<input class="MessageBT" type="submit" value="" />
            </li>
            
            <li class="message">   
            <textarea class="leavemessage" name="message"  placeholder="留言給我！" required/></textarea>
            
            </li>
            
            
           <!-- <li><button type="submit">送出</button></li>-->
            </form>
            <?php echo validation_errors(); ?>
            
        </ul>
        <button class="openclose"><img src="images/aside/btn_open.png"></button>
    </aside>
</div>
   		