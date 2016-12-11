-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- 主機: 127.0.0.1
-- 產生時間： 2015 �?07 ??12 ??09:45
-- 伺服器版本: 5.6.24
-- PHP 版本： 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 資料庫： `dloygtw`
--
CREATE DATABASE IF NOT EXISTS `dloygtw` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `dloygtw`;

-- --------------------------------------------------------

--
-- 資料表結構 `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `article_id` int(3) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `img_s` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `img_b` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `write_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `content` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `article`
--

INSERT INTO `article` (`article_id`, `title`, `img_s`, `img_b`, `write_time`, `content`) VALUES
(1, '關於創作', 'CreationS.jpg', '', '2015-07-09 07:25:20', '還記得以前姐姐高中時候老是喜歡在房間裡架著畫架，地上總是灑滿畫筆與顏料，然而一整晚水彩筆繞著水桶裡的漩渦，一面在彩色盤上不同的顏色來回著，一面在畫布上東塗塗西抹抹，桌上的音響總是開著飛碟電台的聲音。而當作品完成一部分時，總會呼喊我的名字到她房裡並要我給她一些意見。那時候家裡一年寒暑就這樣充滿著文藝的氣氛，還記得。\r\n\r\n開始Blog後讓我留意到創作這回事。想起從前國中作文課時，老師在黑板上訂了個題目。有些同學在反射這樣的題目後，腦海裡開始不斷泉湧很多的靈感很快地下筆，而有些同學則空了白紙開始癡呆地等待。約略半節課後，開始有同學四處張望，瞧一瞧旁邊已經寫了將近一半文章的同學。才恍然，啊！原來這樣的題目要這樣寫噢？！結果一個班級四十份作文紙，文章結構、大意內容、用詞遣字感覺好像都是一個模式出來的。然而班上可能只有少數的同學的作文能夠拿出來參加學校比賽，那些同學可能不是飽讀詩書，不然就是每天回家懂得拿起報紙，也有可能在書包裡老藏著幾本課外讀物。\r\n\r\n有時候自己在寫文章時，總會不經意而模仿起別人的筆觸，可能是書裡面的一段文字，也可能是與別人談吐的幾句話。然而若是真切地要自己在電腦桌前去奮力擠出一些從沒有的東西，那彷彿就像用咖啡苦了腦袋瓜的神經元一般而止住不前。無法激發。往往只有在自己拖著下巴發起呆滯的號誌時，交織著某種旋律的音樂，腦海裡的思考就像平靜的呼吸，一升一降，很快的，思緒流暢地刻劃出一頁很密密麻麻自我談話的文字。然而正當捏緊拳頭放開雙手，是摩拳擦掌也是信誓旦旦地很以為可以敲打出一篇自己的想法，才發現。\r\n\r\n忘掉了。\r\n\r\n搞甚麼？真的恨不得想在頭上多差一兩支幾G的記憶體，或是加大幾瓦電源供應器。記憶終究是個片面的東西，然後就會開始像很多人說的一樣─「這是寫作者的焦躁」。那如同在椅子底下放個暖爐，臀部微微刺痛程度乾脆起身去倒杯開水，並且告訴自己這樣會清醒一點。但這樣的舉動其實又像個「繼續」與「停止」在天秤上的搖擺而已。最後慵懶的個性還是抓到了自己，順勢地按了按鍵盤上的Ctrl+S，接著，就在電腦裡黃色的資料夾多留了一個未完成的word檔。\r\n\r\n說到這，我又跑去倒了一杯開水。\r\n\r\n昨天跟一位朋友互相分享最近生活的音樂，我特別傳了這陣子聽的「甜梅號」樂團其中一首「體育」給這位朋友聽。這個樂團創作的音樂很特別的地方是，沒有主唱、沒有歌詞，有的只是樂器的旋律和簡單卻有點怪異的歌名。像這樣的音樂我一直覺得可以放開聆聽者的想像空間，確實是。很妙的事情，當朋友聽完音樂開始描述對音樂的感覺時，才發現這是我一直所缺乏的部份。當她一面聽著一面闔上雙眼，腦子裡勾出一幅跑跳的現象。或許「體育」的字眼牽引她到從前童年在操場上奔跑的景象，那是打球、嬉鬧、玩耍、溜滑梯、鞦韆。然而當下總覺得自己也有類似的感覺，但卻沒有辦法用文字表達出來，如同覺得這首音樂好聽，然而卻說不出為什麼，又或者它硬生生地在自己記憶裡加深了某種印象。\r\n\r\n只能說，終究還是得這麼形容這位朋友─「想像力豐富的怪腳」。\r\n\r\n創作本身就是這麼有趣的事情。作者總是與觀賞者在作品之間相互反應著，而模糊的距離卻又讓彼此加大聯想，那種把玩的程度跟進入汪洋大海而漫無止盡游著實在沒甚麼不同。但相對地，這又好似說明人類感官世界是多麼獨一無二的。懶人Sylvie曾在她的第一本書《沒有了皮囊》寫了這麼一段感覺：「人類的情緒與感覺複雜的難以分類，我對你笑，你接受到的是什麼樣的訊息？說不定你認為我只是和你打哈哈，但事實上，那可是我用盡全身的真誠所發出的一枚笑容。」我們總是從主觀跳到客觀，從第三人稱跑到第一人稱。而在這些移轉的過程裡，存在著猜想、憶想；可能是善解人意，也似自己的不解風情。人類的情感絲絲扣住人之間往來的氛圍。然而這樣的狀況也同時發生在我們聆聽音樂時。\r\n\r\n電腦文字不斷閃爍的遊飄移到這裡，再次發出寫作者的呢喃，靈感這回事並不是一杯水再一杯逼得我直呼想不到能夠填滿的，所以我想對於創作的著墨就在這邊停止了，反正自己目前就像桌上的杯子一樣乾枯見底無法從文字中繼續引發。但唯一欣慰的是對於創作力來自過去知識經驗累積的標準，還能夠在自己的文章裡尋找到一些從沒有的東西。\r\n'),
(2, '喝杯咖啡，我和你聊李屏賓', 'MarkLeeS.jpg', 'MarkLeeB.jpg', '2015-07-09 07:25:52', '<br />\r\n<br />\r\n\r\n每個人在不同的領域上多少都有個啟蒙老師，不多不少，一個領域差不多就一個。好多時候，不少如我輩也說過，人生二十五來歲才開始，思想漸開，熟與不熟的事情，過了這樣的年紀，每個人其實都是一樣的。而我常覺得，自己總是晚了幾步拿了張成人票，來到了大人世界的入口處，面與微笑地，一步一伐慢步走進，不瀟灑卻很誠懇。<br />\r\n<span class="fullpost"><br />李屏賓─電影攝影師，曾入圍金馬獎最佳攝影九次提名，拿下其中的五座─是我今年才認識的攝影師。粗獷的體魄一系黑色皮膚，蓄短腮巴鬍，像是個挑磚大漢，但這外表之下卻有著對光影捕捉的一份細膩及藝術的感悟力。而工作的態度總讓人覺得不卑不亢，可以幽默令人舒適，可以專注而認真，可以不停的觀察不停的拍。與他合作過的香港導演王家衛，日本導演行定勳與台灣的侯孝賢都如此描述他們眼中的李屏賓-Mark Lee。<br /><br />對於攝影的領域像是一束光從頭上掠過，影像如同意境如同氣氛感覺，如同意義。光線的反差，色彩的層次，那些微妙的多一點與少一點；這是知道攝影師李屏賓的故事之後，並且約略看完去年十一月底他自己出版<a href="http://www.eslite.com/product.aspx?pgid=1001121581909230" target="_blank">《A Poet of Light and Shadow》(光影詩人 李屏賓)</a>的書所有的小心得。<br /><br /><img alt="Photoed by Jesuis Andrea" border="0" src="http://kevin91745.myweb.hinet.net/blogpictures/andrea.jpg" style="float: right; margin: 10px 0px 8px 8px; width: 250px;" />當然，在談他之前，還是不得不提及最初唯一讓我特別感動的德國攝影師─Jesuis Andrea，至少至今無法忘記第一次在看到他的作品(右方)之後，整整幾個小時不由自主的，情緒像被那是很搖遠手都無法觸及的世界縮成一小照攝孔，模不清也朦朦朧朧的。觀賞他的作品彷彿他的那一內心地帶不屬於我所看到的，華麗而寫實。然而，他依然離我搖遠。<br /><br />李屏賓的攝影記事裡頭我所沾染的電影並不多，迄今他一共參予了五十三部電影攝影部份。如果以六、七年級生來看，較為印象的是八零年代的《魯冰花》、《蹈草人》，九零年代的《女人四十》、《海上花》，而最值得矚目的是零一年的《花樣年華》。眾所皆知的，這部電影連得三座坎城影展、金馬獎、亞太影展最佳攝影大獎，使得李屏賓蹤身一躍成了許多導演爭相邀請的攝影師。<br /><br />果不其然的，現在細細回想，我對《花樣年華》電影欣賞之處，其實不是王家衛電影裡頭的梁朝偉與張曼玉是什麼樣情感佳人，也不是1962年的香港，由一棟聚居上海人的大廈的生活文化如何。而是這部電影深植我心的是復古的場景與李屏賓的所捉到氛圍影像，那像是個味道，經由影像聞到那一時代的生活氣味，他抓到了繁華似水香港中的上海，更真正營造了時間流動過後才能體現的影像視覺。我以為，這是否為影像的魅力，傳達觸動人心的媒介。<br /><br /><span style="color: #ffff66;">藝術就是順勢而為</span><br /><br />太過俗常的言語就是天時、地利、人和；這不僅用在開啟戀愛中相交歡的人們，藝術也是一樣。李屏賓拍片時所遇到的資金問題、行程問題、租約問題，堪稱一絕的就是天候問題：當他想拍綠油油的山巒，大青小草的牧地，老天就給他一個雪天；當他需要靜止醇厚的田野，老天就給他一個風婆婆，讓他不笑自知，一笑整個攝影組人仰馬翻。所以他常說：「跟預期不一樣的天氣，那就拍吧，老天送的機會怎麼不拍呢？」<br /><br />漸漸也讓我發現，我們不能完美以暇任何創作的可能，不論退一步或進一步都能有個平衡點存在，我們得發現那個地方在哪。<br /><img alt="" border="0" src="http://kevin91745.myweb.hinet.net/blogpictures/inthemoodoflove.jpg" style="float: left; margin: 10px 0px 8px 8px; width: 400px;" /><br /><br /><br /><br /><br /><br /><br /><br /><span style="color: #ffff66;">自言自語的凝視</span><br /><br />攝影就像是用影像說話，不斷反芻自身的孤獨，把思緒全然投進一面影像裡，由影像說話，影像溝通，影像透露，影像宣洩，即便成了一種無助的狀態，影像都能天馬行空走一遭，讓孤獨的人有了出口。李屏賓：「在國外拍片，有時候你沒有說話的對象，只有自語自語，所以隨手拍一些東西是一種情緒一種紓解，一種紀錄。而大部份的時間都是孤獨的。」<br /><br /><span style="color: #ffff66;">家人永遠是最後的掛念</span><br /><br />2008年李屏賓在異地拍新片子時，一個忙錄的下午之後，看見手機裡有二十幾通未顯示來電號碼的電話，接著突如其來的焦慮脹滿他的心裡，他一直以為是不是家人發生什麼急事，從未這樣感到憂慮惶恐。緊接著再次接到電話時，才得知他被頒獲了<a href="http://www.ncafroc.org.tw/Content/award-history.asp?Prize_year=2008&amp;Prize_no=%A4Q%A4G" target="_blank">第十二屆國家文藝獎</a>。伴隨而來的喜愉與榮譽讓他真切的明白，其實，家人一直是他最後的掛念。<br /><br /><span style="color: #ffff66;">A Poet of Light and Shadow</span><br />我不知道Mark Lee接下來的人生要如何走去，即使他花了大半輩子時間用光影呼吸，成了光影詩人。走了巴黎，漫遊紐約，腳落過上海；《紅氣球》、《千禧曼波》、《挪威的森林》；光線的霧氣，鏡頭的言語，聚光與泛光，無論如何，我會記得他是我第一個攝影領域的啟蒙先驅，讓我知道那個幻眩的世界，確實存在。<br /><br />嗯，我喝完這口咖啡，故事也說完了，希望你們會愉快。<br /></span><br />\r\n<blockquote>\r\n<span class="fullpost"><span style="color: #ffcc66;"><br />創作就是激發你懂與不懂，<br />或者是在瞬間你對這個世界的一種角度與看法、一種風險、一種嘗試在裡面。<br /><br />The process of creation challenges what you know and what you don’t.<br />In an instant,<br />it makes you look at the world from a certain perspective,<br />with a certain risk and sense of experiment.<br /><br />　　　　　　　　　　　　　　　　　　　　Mark Lee Ping-Bing 李屏賓</span></span></blockquote>\r\n<span class="fullpost"><br /><br /><object height="385" width="500"><param name="movie" value="http://www.youtube.com/v/QeRjpGIPqok&amp;hl=zh_TW&amp;fs=1&amp;"><param name="allowFullScreen" value="true"><param name="allowscriptaccess" value="always"><embed src="http://www.youtube.com/v/QeRjpGIPqok&hl=zh_TW&fs=1&" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="500" height="385"></embed></object><br />2010/05/31</span>'),
(3, '我的藍梅夜', 'MyBlueBerryNightsS.jpg', 'MyBlueBerryNightsB.jpg', '2015-07-09 07:26:07', '2008年我坐在電影院裡的沙發座上屈指可數，彷彿像窮人家小孩口袋裡零星數得出來的銅幣聲響；反視音樂，若實體一張挨著一張購入算起，去年每月至少平均有五張音樂專輯流入黃色資料夾，雖不甚多，但能像積木搭起CD音樂盒的城堡也可見一般。這年，也是聆聽音樂記錄的頭一年。\r\n\r\n這部電影著實讓我反轉拉了進度軸許多回。頭幾次用中文字幕觀影，再轉換以英文作旁白，最後捨了字幕上的陪襯，電影成了真實生活的立體鏡頭。在這交錯的方式觀賞，每回悟出的心得都不盡相同。王家衛的電影要說的思維一向不簡單，雖然我曾一人觀賞《花樣年華》悶到整個看不懂也頭痛，不過想起那才二十郎當初蒙昧的年記，領略感知的熱度像是電影院剛開啟的爆米花機一樣怎麼也爆不出香味來。但卻好像也從不介意自己那樣子過。然而《我的藍梅夜》像是翻版於94年的《重慶森林》以用最普實簡單的劇本，鋪陳了關乎愛情世界裡的距離與時間。\r\n\r\n影像回盪在《重慶森林》編號633巡邏警察(梁朝偉飾)習慣對著東西說話，以填滿空曠的內心世界；阿菲(王菲飾)總是扭大音響音量，伴隨著鼓譟的搖滾樂築起小小世界，只有她在裡面。想起這都市愛情，反於《我的藍梅夜》Jeremy卻用無止盡的漫長等待，拉近了Beth的旅途距離，一字一跡反覆的Postcard和一把仍不願隨意丟棄的鑰匙。愛情中，無法遮掩的美好，仍舊如此。\r\n\r\n片中穿插一覺醒來沒感覺甩掉酗酒警察Arnie的Sue Lynne，戀人們的繩索太過緊束總讓人窒息；和Fuck You Very Much的女賭徒，賭桌上卻藏不住真切想愛父親的堅強；每段小故事都讓Elizabeth重新看待自己，不論旅行何處，自然回到最原點，也找到自己不再茫然若失的去向。\r\n\r\nIn the last few days, I’ve been learning how to not trust people and I’m glad I failed. Sometimes we depend on other people as a mirror. To define us and tell us who we are. And each reflection makes me like myself a little more.\r\n\r\n在最後的日子裡，我學著如何不去相信人們，但很高興我失敗了。有時我們把人們當作一面鏡子，去定義自己與告訴，我們是什麼樣的人。而每一次的反射都讓我更愛自己一點。\r\nHighslide JS \r\n這段像是廣漠無邊的公路式電影所萌出的被我視為的佳句，好一段時間以它為生活重心。曾幾何時我們都像Beth那樣的天真與純粹，相信所有的良善能帶給人們所有適切般的美好。這力量，這意識足以摧擊社會體制下爛腔濫調的虛偽面具，跨越既壓抑又激亢的媚俗世代，而回到那樣多愁善感的鄉土種子。在大多時候，我們是這樣。\r\n\r\n於是，等待與憧憬成了我觀賞這部電影的主軸，擺著一幅披著壁紙的畫依靠在長方型的石坐椅旁，背後不清楚有幾張電影宣傳海報，暗色晝明，燈光斜斜打入，我坐著那，聽著音樂。假草地遍及四周，一杯咖啡還在桌上冒煙，鐵欄竿門外人群穿梭來去。\r\n\r\n等待那份憧憬的出現。\r\n'),
(4, '一間唱片行的夢想', 'RecordStoreS.jpg', 'RecordStoreB.jpg', '2015-07-09 07:26:43', '懶人說，Live House的樂團可是沒有開場的，當第一個音落下時，他們的表演就開始了。\r\n\r\n中秋節快結束的夜晚匆匆忙忙往展演廳奔去，手扶梯才把我推到六樓，蕭青陽大哥設計的音樂枝巢一片映入眼簾，而那家每個人心目中的唱片行只隔著一塊落地玻璃的距離，坐落在我眼前。\r\n\r\n我走進裡頭，一疊疊黑膠放置在木箱隔間。對於我這遲來的外來客，準備打洋的店員們只說音符棒棒糖五十元，並在我面前表演了像是魔術方塊三折式的宣傳卡片。而每人臉上漾起的笑容像是又過了一場美好的音樂饗宴。\r\n\r\n環顧四周，仔細地看著存放在這十天唱片行裡的每一樣物品。屋內中間拉下幾盞直落落的舊式燈泡，似乎同時也照亮了每一張舊時代的黑膠唱片；唱機放置在放銀檯旁，以透明殼蓋上，卻蓋不住愛樂者的聲音；而牆上貼著那些我似而熟卻不陌生的樂團獨白，我找不到需要離開的理由。走出唱片行，步了幾步距離，看到它的全貌，也同時看見被放進的美術指導郭志達先生的理想。\r\n\r\n記得郭先生曾說，當你有夢想時，記得要一條條把它寫在一張白紙上，每一時刻都要提醒自己。多年之後，你就會慢慢發現當初的理想，已漸漸實現。對他而言，我想這唱片行便是其中之一。\r\n\r\n  \r\n[陳德政20歲的搖滾帳棚]\r\n\r\n陳德政詭異要睡在這一夜的帳篷在另一旁，那是他在二十歲的那年夏天，唯一一個東方人參加英國V99與Read Festival兩場音樂祭所陪伴的帳棚，裡頭還掛著一個夜間小燈。他把當時旅途上的火車票根，Blur樂團海報、所有紀念小物都展示出來，標題列著─「二十歲的搖滾夢」。牆壁上留著他的文字，他的青春也從此留住了。\r\n\r\n回繞在另一旁，馬世芳的記憶卡帶，一捲交著一捲排疊起來，引文摘錄了我所熟悉的那本《地下鄉愁藍調》裡關於那美麗寂寞的噪音─「搖滾樂其實是很矛盾的。看似熱鬧，實則無處不浸透著寂寞。它的核心往往就是『和這個世界過不去』的寂寞。而那撼動了整個世代的、真正了不起的搖滾樂，便是找到了那條紐帶，把千千萬萬的寂寞和蕭條，串織在一塊兒。」我讀到此，倏然而至的寂寞，再也找不到。\r\n\r\n當所有展演廳的工作人員隨著下班離去時，就連後來才知道的吉他手小白的衣杉留在舞台上忘了帶回，只剩我一個人站在廳裡中央，一片靜寂，燈光暗下。望著舞台去，我見不著甜梅號的身影，他們前一個小時已表演完，可是想像力似乎停留在氛圍裡，我將雙眼微微閉上，彷彿他們剛在台上演出的影像卻如一格格幻燈片在腦海中浮現而不斷翻頁。對於一直伏在角落這些的音樂人，其實他們沒有需要過多的投射燈去放亮這些心中小事。\r\n\r\n雖然和小白擦肩而過，也忘了感謝他那首曾讓我勾起一幅在操場跑跳景象的「體育」的音樂，陪伴過我一段時間，這台灣最具潛力的後搖樂團。\r\n\r\n無論如何，我們的搖滾夢從這一間唱片行開始。\r\n'),
(5, 'Into The Wild', 'IntoTheWildS.jpg', 'IntoTheWildB.jpg', '2015-07-09 07:29:29', '不予否認的，我在初讀《阿拉斯加之死》這本小說的年紀，正巧與書中主角克里斯多弗的年齡相仿，正值生命歲月裡最豐沛的冒險時期─二十二歲。但那時兀自於腦海中對曠野那般夢幻卻殘酷的田畝，我並未像克里斯能填滿勇氣走訪一遭窺探一二。\r\n\r\n人們總是對社會佈滿虛假、矯柔造作、言不由衷有著過份的反彈，卻矛盾至入其內無法抽身。能夠引領另一嚮往的內心世界，除了逢人闔上嘴角不苟言笑，就是擁抱托爾斯泰或是傑克倫敦的書籍把自己丟置廣漠無邊的荒野中反視著人類的愚拙，這嚴然是一種謬世的孤獨態度。但不可不說的是，這同時也能的得到另一種自我心靈的解放。\r\n\r\n書中主角克里斯當屬這類的人。他來自豐沃富裕的家庭，大學成績優異的程度足以進入哈佛法律系就讀。他天資聰穎與人相處活崩亂跳的開朗個性，像是個永停不下腳步人見人愛的大男孩。與他旅程中相肩而過的Jam和Rainey情侶；教他割草豪爽的漢子Wayne；在大峽谷湍急的河流露營的Mads和Sonja；一次愛上他的十六歲音樂少女Tracy T；大半生駐守軍隊裡孤獨老人Ron Franz。人們總是在際遇的交織下，尋找自己的生命原鄉。也同樣的克里斯在這奇遇的旅人之路，開啟自身存在的價值探索。\r\n\r\n生命就像一趟奇幻冒險的旅程。\r\n\r\n依稀記得這本小說擺置在書桌上，捧在手裡不時地翻頁的那個夏日時節，是與家人一同到郊外山區旅行，那是記憶中的兩日一夜。當天夜裡，我獨自一人散步至門口前像是戶外咖啡木製座椅旁，聳立在眼前的是一片望無邊際的針葉林地帶，帶點秋天涼意的山區高度，微微的。凝視向下行徑在旅館前的道路分別站著兩旁間隔稍遠的路燈，延伸挺多容下一車半的道路的東西向，一格一格漸行漸遠。如果能夠在地表上尋覓到昏暗柔和的發光點，我想就只有這寬大的別墅旅館停歇站。\r\n\r\n絲毫不忘那時的心境有多貼近書中的克里斯，像是童年的他在面對父母爭吵離異牢牢抱緊妹妹Carine所帶來的無力感，驚恐與害怕。也從未而想過那樣的傷痕裂縫裡的判逆種子會在未來的某一刻萌芽成長。我獨自窩在旅館房間床鋪上，釋手翻著每一頁，置身克里斯離群索居的心靈曠野中，儘管旅館樓下大聽裡充滿溫馨和諧的人群來往悅耳的聲音，但我仍過份的激情想脫離這一切遠遠奔走。人們總是在某種環境下容易被一些事物主導著，又或者從回憶的殘缺旁白裡，被一些微弱的呼吸聲推促著，走上另一條未知崎嶇的道路。\r\n\r\n孤獨裡有時候會包含一種完美主義的個性，像是一段長久時間把自己置入某種程度黑暗的角落，無法敞開心胸去崇向外面的太陽，那些所散發出渾然發燙炙熱的一根根細針，每根細針彷彿帶有世人所有邪惡的個性，刺痛自己的皮膚，情願愛上孤獨的夜晚。\r\n\r\n這部電影同時也讓人一再想起《小太陽的願望》(Liitle Miss Sunshine)。劇中Hoover Family 的兒子Dwayne為了成就自己成為飛行員的夢想，決定關起嘴巴，不說話已經九個月，當他的Uncle Frank第一次和Dwayne碰面時，打招呼地寒暄問他平常和誰玩在一起，Dwayne率性地拿出筆記本寫著：「我憎恨所有的人。」\r\n\r\n來自Dwayne的恨意是所有世人間的偽善，那些包裝過的善言善語，不切真實所有表面化的事情。縱使在Dwayne得知自己有色盲的病症致使他無法成為飛行員，壓抑在內心深處的滿滿情緒一併而發，隨著粗氣的文字爆裂在通往加州的公路旁。原來面對孤獨的人，在心靈世界裡其實還有一塊脆弱地帶。\r\n\r\n無獨有偶，小說書本中的克理斯最後想起疼愛的母親；電影裡的克理斯最後在魔法巴士留下的遺言：「Happiness only real when shared.」。其實在孤獨之後，我們還有著更多的溫暖埋藏在自己的內心深處，不是嗎？\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n電影的劇末與小說結尾句點並無二致，都是停留在魔法巴士的最後一慕由影像緩緩拉至上空，巴士逐漸縮小，最後消失隱密在廣大的阿拉斯加草原河畔。片尾曲拉上黑色的屏幕，想起友人的一席話：「把片尾曲聽完是對電影的一種尊敬。」耳間傳來Hard Sun的音樂，腦海裡反覆著克里斯留在相機裡的僅存的一張照片。不論對電影、配樂、製作敬意與否，克里斯傳奇探險於北美阿拉斯加的色彩故事，都深深觸動每個坐在螢幕下的觀賞者。\r\n　　\r\n因為那是最美麗的旅人記憶。\r\n-----------------------------\r\n11/6/08\r\n'),
(6, '單純的事交給陳綺貞的純綷', 'EcoleCafeS.jpg', 'EcoleCafeB.jpg', '2015-07-09 07:27:04', '單純的事交給陳綺貞的純綷\r\n \r\n座落在師大校園附近，在旁的新生國小的PU跑道操場，一條路燈照著晦暗的巷弄，獨獨亮著橘色招牌的’Ecole。這是我第一次走進學校咖啡館。\r\n\r\n打開門，看見馬世芳老師與葉雲平就坐在距門口跨過三、四個圓桌，他們似乎在為等會的講座交談著。進了門，在吧台前的桌子，拉開椅子坐下，我拿起手上的破報攤放在桌上，店員湊身過來詢問我是不是來參加講座的？我點了點頭，隨著她拿給我的menu點了一杯尼羅河綠茶並且跟我說七點五十分才能下樓。我低著頭繼續瞧看報上過份爛漫無謂的文字，尋著是否有讓我足夠測試黃香李試驗的好音樂。\r\n\r\n對於這次《台灣流行音樂200張最佳專輯》一書終於殺青，儘管這本舊作百大被喻為台灣很多愛樂者的聆聽啟蒙，儘管是樂史上重要文獻參考，但仍然激不起我太多的好奇共鳴。一面翻閱著報紙，心裡卻還想著近日看的《地下鄉愁藍調》，那些五顏六色、詭譎怪誕的龐客；馬老師口述的1969年美國小鎮烏茲塔克(Woodstock)音樂季軼事，Joan Baez在四十萬擁潮的人前唱著〈Joe Hill〉六○年代愛與和平的歌聲，或是Alvin Lee像個瞎盲的瘋子一樣狂飆《I''m going home》以及那張披頭四《White Album》裡被老師說成「真是一首很荒唐的歌」的〈Birthday〉，心升讓我下回辦生日派對「就用這首吧！」的回響。還有，宇宙塑膠人(Plastic Peolple of the Universe)樂團如何以「間接」的方式唱跨一個政權。\r\n\r\n店員提醒著散坐在一樓的人群時間已到，隨之窩蜂擁進往地下一樓的方向走去，下樓前還瞥見牆上一個男孩斜瞄女孩的怪異塗鴉，那是個地方。我挨著螺旋梯的扶手走下去。下樓之後，前方DJ助手正整理著手頭上的CD，喇叭的響座卻放著陳綺貞的〈和你在一起〉。店員在下樓處發放著資料和問券。拿著紙張，看著散在兩旁的座位，依照我的個性一定選柔軟的沙發座。\r\n\r\n馬世芳老師這回與葉雲平的論點範疇幾乎在分析過往的台灣「民歌」影響。從戒嚴時代抗議十足台灣民歌之父胡德夫開始，到影響兩岸三地羅大佑、崔健，與從身歌手與製作人以形象工程帶出不少當紅藝人的李宗盛等。用一首接著一首民謠歌曲解釋著過去大時代背景對彼時社會或後續衍生出來的效應影響。\r\n\r\n大多時候我無法理解這些深邃的論述存在的意義。但能讓現場觀眾對這原先只籌辦一小時講座卻被兩位評論人口橫沫般超時到兩小時只專注而無法分心，我想是在馬世芳老師對文字的駕馭而引人入勝的表達方式，再加以一些動人卻不絕俗的幽默穿插，讓我只能用最簡單方式描述─「聽他說話真是一種愉快的享受！」。更讓我明白對於作為一廣播人是如何以文字與音樂為生。用詞如何謹慎，見解精闢。\r\n\r\n很可惜，對於現在的馬世芳而言，研究取向似乎多半是提倡本土音樂為主，西洋搖滾樂似乎已是他鮮少著墨的主題。對於被張鐵志曾在《Sounds and Fury》一書中譽為「高中時代就可以成為全國研究披頭四+鮑伯狄倫(Bob Dylan)+滾石合唱團(Rolling Stones)的第一高手」。回想這番話，對於青年時期迷戀麥克‧喬丹(Michael Jordan)那般太過灑汗水的我彷彿是種遺憾，應譇望自己當時多一點時間分出去。(但其實也換了一大筆健康) \r\n\r\n然而值得一提的是，原本存在心中關於「音樂與商業化之間關係」的問題，似乎也稍稍找到答案。馬老師引了縱貫線Superband成立産生過多的輿論的例子來說明音樂人主要的職責─「讓作品說話」。對於其他餘事，就由其他學家評論分析，也期望聆聽的觀眾朝向這樣的方向走去。\r\n\r\n整整兩個小時一首首台灣民謠歌曲播放，最後一個音符落在伍佰的吉他弦上。我把桌上最後一口尼羅河綠茶以拇指翻開封口喝下，提著背包走出’Ecole，有點像剛上完課的大小孩。雖然今晚這些對我有些已是模糊腿色舊時代的音樂，沒有太多能勾起我的情緒的耀動。或者說，能說的。\r\n\r\n我只記起陳綺貞的單純，一個純綷的夜晚。\r\n'),
(7, '再度敲響的鐘，謝謝你提醒我', 'SugarPlumFerryS.jpg', 'SugarPlumFerryB.jpg', '2015-07-10 09:30:49', '我遺忘了這次旅行的目的地，直到咬筆桿的這刻仍然記不起它是往哪裡去，只記得兩天一夜耳朵側旁總是被這首《敲響的鐘》的聲音圍繞著。\r\n\r\n忽然之間，我想起來怎麼認識他們的，那個開始。\r\n\r\n甜梅號第三張專輯《腦海群島》早在今年2月13日就上市。起初最讓我動容而手心冒汗直至腳底發麻的，是<黃昏鹿場>這一首曲。爾後，我聽不出<敲響的鐘>任何敏銳地帶，對於小白想說甚麼，鼓手孟諺想敲甚麼，始終不及那片寂靜之聲。但是我們得明白，他們的音樂一直是屬於後勁強悍，是越聽越飽滿的。只不過怎麼也沒想到，這首曲敲響的時間竟是往後半年之久。\r\n\r\n還記得那個開始，是大學畢業後夏天的事，那是認識幾個伏在角落音樂人之後的事了，是在Nipples《詹姆仕的秋天》之後的事。而Nipples專輯現在仍舊擱在家裡書櫃上。\r\n\r\n對我來說Nipples是個楔點，是開始認識後搖這個名詞，是漸漸明白搖滾樂其實不一定要有聲唱。從Nipples之後，我知道還有一個後搖樂團存在，他們的團名很特別，樂風很脫俗，帶點緩飄，表演時低調的很。那時沒有人介紹，沒有樂評的引述，沒有任何的共鳴泛響，只在偶然之下瞥見團名。從那一刻起，我就知道他們會是我喜歡的樂團，這樣的認識是很冥冥之中的際遇，所以在我心目中，甜梅號的地位是很唯一無二的。\r\n\r\n成團十餘年過去，鼓手孟諺即將在〈屋頂音樂節〉之後出國深造錄音工程，甜梅號終究要暫歇一陣子。即便如此，我始終無法忘記第一次近距離瞧見孟諺時的景像；髮長及肩，紮綁馬尾，他是先喝了一口調酒，拴緊瓶蓋，便在黑膠上的封面寫下他的名字。之後和我說聲謝謝，我卻忘了回應他那一晚的演出，想告訴他，那是我見過最曼妙的鼓法，肢體最藝術的模樣，那紛沓而來的從容感動，是讓人難以忘懷的。\r\n\r\n傳說他的鼓點太過準確，以致其他團員不容易跟上他的節奏，也曾說他是可以把Smashing Pumpkins的《Siamese Dreams》整張專輯的鼓從頭打到尾。如今，伴隨他的暫別，甜梅號不知何時才會再重逢，然後再次的提醒，再次的消失，再一次的敲響。屋頂音樂節之後，我們重新來過，青春被丟在後頭，因為甜梅號的一路陪伴，模糊的記憶裡面，有著最好的禮物。\r\n\r\n謝謝你提醒了我，甜梅號。\r\n'),
(8, '單純且不單純，來不及寫的二十八', 'reliefcafeS.jpg', 'reliefcafeB.jpg', '2015-07-10 10:01:33', '<div>\r\n	就如同工作時穿著一樣，一件牛件褲，一件T-Shirt，一雙休閒鞋，這是我所喜歡的穿著。坦白說，我不太熱愛西裝領帶皮鞋，所以會喜歡陳綺貞那類的音樂人，往往是她們一襲輕便身衣，一把清脆的木吉他，然後簡簡單單唱出她們的心中小事。或像馬世芳及陳德政他們出席講座一樣，不太著重華麗的衣著。言談之間，也是如此。&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	我不知道如何去述說二十八的到來，這兩三年時間，文藝軼事開了閘道，頭上的外太空訊號，接收力越來越清晰，認識許許多多好像本來就會主動認識的人群；是流浪詩人也好，披頭青年也是，是革命左派也罷，那個老談六四怎麼個偉大烈士。人生劇本好像是自己的，這樣寫，情節線是這麼鋪。當然，這一切的一切幾年前我完全沒有一個想法。&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	來到二十八，讓人最有體悟即是「中心思想」、「光明性」，及不可或缺的「企圖心」，若是人生是否走得瀟灑。然而我們攀爬在每天生活文化的版塊上，有太多太多回首與仰望的事情，也太多且多的挫折低迴在身旁，仍不變的是，我們都得持續往前走，不論身形疲倦，或是大步闊伐，或是喜悅滿懷，我們都顛簸搖搖愰愰的留下些甚麼。&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	早上起床，也許有個簡約的廚具，煎個火腿夾蛋配上一杯鮮奶，中式早餐感覺不容易自己作，下樓有對和藹奶奶與爺爺開著燒餅油條店。或許對街還有著不一樣的西式餐店，和他們道聲西方用語，他們給你一份文化涵養豐盛的早餐，來自他們的家園。&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	之後，你滿意懷喜的去上班，隨著今天的工作量可以激發你自己多少創意，能夠和共同擁有理想熱情的夥伴共事，成為你生活有所幸福的事，或許有點忙錄，但樂此不彼。況且回到家中你還有個科學實驗室，它雖沒有像貝爾實驗室有多來得多有名，能自創多少發明。至少它有個Steel Rack，也有台OA，可能最新的Intel i9 Core CPU，VGA是GTX 590；你會用Super Pi 計算performance到達幾秒，還有3D Mark，執行 3維度的AA鉅齒狀況。另一台是Linux OS，他是主要開發程式端語言，在Open resource的情況下，我們與網路另一端的Hacker較勁。&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	當我理性羅輯思考多了，我會走至另一間房，裡頭牆上掛置Nirvana的Nevermind專輯的海報，或者是Velvet Underground的Andy Warhol計設的大香蕉；又或者學著「艾倫金斯堡」敲著打字機專注的模樣，在電腦桌前把自己昇華成頹廢的詩人。而桌旁另一頭也放著一台廉價老味的唱機，買張不知名的黑膠，從音樂裡解放，從那些詩句字裡行間獲得心靈的填補，知道真正的自由在哪方。&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	除此之外，我會拿起畫筆，拉好畫架，從一線一彎的筆畫裡，管他是畢卡索還是莫內，這都不是我要模仿的，我的畫作有主題似無主題，畫好了便一毛也不值，拿去和乞丐兜售一塊麵包，咬啐之後飽裹肚子，吃不完的再當橡皮擦用。梵谷的左耳帶來更多的寂靜思考。</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	於是走了大半圈，繞了大段路，好像那一座安穩的居所才隱約浮現。然而人生悠悠漠然走過，經歷與所知道的，我們無法在同一個方位架起筆直的航海線，掌著舵，乘著風，逐浪而去；那些無可避免的剩下，留著記憶，在未著陸之前&hellip;&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	這仍是我所希望的事。&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n');

-- --------------------------------------------------------

--
-- 資料表結構 `home`
--

DROP TABLE IF EXISTS `home`;
CREATE TABLE IF NOT EXISTS `home` (
  `id` int(11) NOT NULL,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `home`
--

INSERT INTO `home` (`id`, `title`, `slug`, `text`) VALUES
(1, 'test1234', 'how', 'i am charisma');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`article_id`), ADD UNIQUE KEY `article_id` (`article_id`);

--
-- 資料表索引 `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`), ADD KEY `slug` (`slug`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `article`
--
ALTER TABLE `article`
  MODIFY `article_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- 使用資料表 AUTO_INCREMENT `home`
--
ALTER TABLE `home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
