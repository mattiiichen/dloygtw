-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- 主機: 127.0.0.1
-- 產生時間： 2015 �?12 ??05 ??15:15
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
  `category_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `subheading` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `engTitle` varchar(34) COLLATE utf8_unicode_ci NOT NULL,
  `img_s` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `img_b` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `write_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `originWriteTime` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表新增前先清除舊資料 `article`
--

TRUNCATE TABLE `article`;
--
-- 資料表的匯出資料 `article`
--

INSERT INTO `article` (`article_id`, `category_id`, `title`, `subheading`, `engTitle`, `img_s`, `img_b`, `write_time`, `originWriteTime`, `content`) VALUES
(1, '4', '關於創作', '', 'about creation', 'CreationS.jpg', 'CreationB.jpg', '2015-11-26 02:12:28', '', '<p>\r\n	[老姐在高中時的作品]<br />\r\n	<br />\r\n	還記得以前姐姐高中時候老是喜歡在房間裡架著畫架，地上總是灑滿畫筆與顏料，然而一整晚水彩筆繞著水桶裡的漩渦，一面在彩色盤上不同的顏色來回著，一面在畫布上東塗塗西抹抹，桌上的音響總是開著飛碟電台的聲音。而當作品完成一部分時，總會呼喊我的名字到她房裡並要我給她一些意見。那時候家裡一年寒暑就這樣充滿著文藝的氣氛。還記得。<br />\r\n	<br />\r\n	開始Blog後讓我留意到創作這回事。想起從前國中作文課時，老師在黑板上訂了個題目。有些同學在反射這樣的題目後，腦海裡開始不斷泉湧很多的靈感很快地下筆，而有些同學則空了白紙開始癡呆地等待。約略半節課後，開始有同學四處張望，瞧一瞧旁邊已經寫了將近一半文章的同學。才恍然，啊！原來這樣的題目要這樣寫喔？！結果一個班級四十份作文紙，文章結構、大意內容、用詞遣字感覺好像都是一個模式出來的。然而班上可能只有少數的同學的作文能夠拿出來參加學校比賽，那些同學可能不是飽讀詩書，要不然就是每天回家懂得拿起報紙，也有可能老在書包裡藏著幾本課外讀物。<br />\r\n	<br />\r\n	有時候自己在寫文章時，總會不經意而模仿起別人的筆觸，可能是書裡面的一段文字，也可能是與別人談吐的幾句話。然而若是真切地要自己在電腦桌前去奮力擠出一些從沒有的東西，那彷彿就像用咖啡苦了腦袋瓜的神經元一般而止住不前。無法激發。往往只有在自己拖著下巴發起呆滯的號誌時，交織著某種旋律的音樂，腦海裡的思考就像平靜的呼吸，一升一降，很快的，思緒流暢地刻劃出一頁很密密麻麻自我談話的文字。然而正當捏緊拳頭放開雙手，是摩拳擦掌也是信誓旦旦地很以為可以敲打出一篇自己的想法，才發現。<br />\r\n	<br />\r\n	忘掉了。<br />\r\n	<br />\r\n	搞什麼？真的恨不得想在頭上多差一兩支幾G的記憶體，或是加大幾瓦電源供應器。記憶終究是個片面的東西。然後就會開始像很多人說的一樣─「這是寫作者的焦躁」。那如同在椅子底下放個暖爐，臀部刺痛程度乾脆起身去倒杯開水，並且告訴自己這樣會清醒一點。但這樣的舉動其實又像個「繼續」與「停止」在天秤上的搖擺而已。最後慵懶的個性還是抓到了自己，順勢地按了按鍵盤上的Ctrl+S，接著，就在電腦裡黃色的資料夾多留了一個未完成的word檔。<br />\r\n	<br />\r\n	說到這，我又跑去倒了一杯開水。<br />\r\n	<br />\r\n	昨天跟一位朋友互相分享最近生活的音樂，我特別傳了這陣子聽的「甜梅號」樂團其中一首「體育」給這位朋友聽。這個樂團創作的音樂很特別的地方是，沒有主唱、沒有歌詞，有的只是樂器的旋律和簡單卻有點怪異的歌名。像這樣的音樂我一直覺得可以放開聆聽者的想像空間，確實是。很妙的事情，當朋友聽完音樂開始描述對音樂的感覺時，我才發現這是我一直所缺乏的部份。當她一面聽著一面闔上雙眼，腦子裡勾出一幅跑跳的現象。或許「體育」的字眼牽引她到從前童年在操場上奔跑的景象，那是打球、嬉鬧、玩耍、溜滑梯、鞦韆。然而當下我總覺得自己也有類似的感覺，但卻沒有辦法用文字表達出來，如同覺得這首音樂好聽，但我卻說不出為什麼，又或者它硬生生地在我記憶裡加深了某種印象。<br />\r\n	<br />\r\n	只能說，終究還是得這麼形容這位朋友─「想像力豐富的怪腳」。<br />\r\n	<br />\r\n	創作本身就是這麼有趣的事情。作者總是和觀賞者在作品之間相互反應著，而模糊的距離卻又讓彼此加大聯想，那種把玩的程度跟進入汪洋大海而漫無止盡游著實在沒什麼不同。但相對地，這又好似說明人類感官世界是多麼獨一無二的。懶人Sylvie曾在她的第一本書《沒有了皮囊》寫了這麼一段感覺：「人類的情緒與感覺複雜的難以分類，我對你笑，你接受到的是什麼樣的訊息？說不定你認為我只是和你打哈哈，但事實上，那可是我用盡全身的真誠所發出的一枚笑容。」我們總是從主觀跳到客觀，從第三人稱跑到第一人稱。而在這些移轉的過程裡，存在著猜想、憶想，可能是善解人意，也似自己的不解風情。人類的情感絲絲扣住人之間往來的氛圍。然而這樣的狀況也同時發生在我們聆聽音樂時。<br />\r\n	<br />\r\n	電腦文字不斷閃爍的遊飄移到這裡，再次發出寫作者的呢喃，靈感這回事並不是一杯水再一杯逼得我直呼想不到能夠填滿的，所以我想對於創作的著墨就在這邊停止了，反正自己目前就像桌上的杯子一樣乾枯見底無法從文字中繼續引發。但唯一欣慰的是對於創作力來自過去知識經驗累積的標準，還能夠在自己的文章裡尋找到一些從沒有的東西。</p>\r\n'),
(2, '2', '喝杯咖啡，我和你聊李屏賓', '創作就是激發你懂與不懂', 'talk about Mark Lee, a lens man', 'MarkLeeS.jpg', 'MarkLeeB.jpg', '2015-12-05 08:27:34', '20100531', '<p>\r\n	每個人在不同的領域上多少都有個啟蒙老師，不多不少，一個領域差不多就一個。好多時候，不少如我輩也說過，人生二十五來歲才開始，思想漸開，熟與不熟的事情，過了這樣的年紀，每個人其實都是一樣的。而我常覺得，自己總是晚了幾步拿了張成人票，來到了大人世界的入口處，面與微笑地，一步一伐慢步走進，不瀟灑卻很誠懇。<br />\r\n	<br />\r\n	<span class="fullpost">李屏賓─電影攝影師，曾入圍金馬獎最佳攝影九次提名，拿下其中的五座─是我今年才認識的攝影師。粗獷的體魄一襲黑色皮膚，蓄短腮巴鬍，像是個挑磚大漢，但這外表之下卻有著對光影捕捉的一份細膩及藝術的感悟力。而工作的態度總讓人覺得不卑不亢，可以幽默令人舒適，可以專注而認真，可以不停的觀察不停的拍。與他合作過的香港導演王家衛，日本導演行定勳與台灣的侯孝賢都如此描述他們眼中的李屏賓-Mark Lee。<br />\r\n	<br />\r\n	對於攝影的領域像是一束光從頭上掠過，影像如同意境如同氣氛感覺，如同意義。光線的反差，色彩的層次，那些微妙的多一點與少一點；這是知道攝影師李屏賓的故事之後，並且約略看完去年十一月底他自己出版<a href="http://www.eslite.com/product.aspx?pgid=1001121581909230" target="_blank">《A Poet of Light and Shadow》(光影詩人 李屏賓)</a>的書所有的小心得。<br />\r\n	<br />\r\n	<img alt="Photoed by Jesuis Andrea" border="0" src="http://kevin91745.myweb.hinet.net/blogpictures/andrea.jpg" style="float: right; margin: 10px 0px 8px 8px; width: 250px;" />當然，在談他之前，還是不得不提及最初唯一讓我特別感動的德國大男孩─Paul Henschel，至少至今無法忘記第一次在看到他的作品(右方)之後，整整幾個小時不由自主的，情緒像被那是很搖遠手都無法觸及的世界縮成一小照攝孔，模不清也朦朦朧朧的。觀賞他的作品彷彿他的那一內心地帶不屬於我所看到的，華麗而寫實。然而，他依然離我搖遠。<br />\r\n	<br />\r\n	李屏賓的攝影記事裡頭我所沾染的電影並不多，迄今他一共參予了五十三部電影攝影部份。如果以六、七年級生來看，較為印象的是八零年代的《魯冰花》、《蹈草人》，九零年代的《女人四十》、《海上花》，而最值得矚目的是零一年的《花樣年華》。眾所皆知的，這部電影連得三座坎城影展、金馬獎、亞太影展最佳攝影大獎，使得李屏賓蹤身一躍成了許多導演爭相邀請的攝影師。<br />\r\n	<br />\r\n	果不其然的，現在細細回想，我對《花樣年華》電影欣賞之處，其實不是王家衛電影裡頭的梁朝偉與張曼玉是什麼樣情感佳人，也不是1962年的香港，由一棟聚居上海人的大廈的生活文化如何。而是這部電影深植我心的是復古的場景與李屏賓的所捉到氛圍影像，那像是個味道，經由影像聞到那一時代的生活氣味，他抓到了繁華似水香港中的上海，更真正營造了時間流動過後才能體現的影像視覺。我以為，這是否為影像的魅力，傳達觸動人心的媒介。<br />\r\n	<br />\r\n	<strong><span style="color: #0066ff;">藝術就是順勢而為</span></strong><br />\r\n	太過俗常的言語就是天時、地利、人和；這不僅用在開啟戀愛中相交歡的人們，藝術也是一樣。李屏賓拍片時所遇到的資金問題、行程問題、租約問題，堪稱一絕的就是天候問題：當他想拍綠油油的山巒，大青小草的牧地，老天就給他一個雪天；當他需要靜止醇厚的田野，老天就給他一個風婆婆，讓他不笑自知，一笑整個攝影組人仰馬翻。所以他常說：「跟預期不一樣的天氣，那就拍吧，老天送的機會怎麼不拍呢？」<br />\r\n	<br />\r\n	漸漸也讓我發現，我們不能完美以暇任何創作的可能，不論退一步或進一步都能有個平衡點存在，我們得發現那個地方在哪。</span></p>\r\n<p>\r\n	<br />\r\n	<span class="fullpost"><img alt="" border="0" src="http://kevin91745.myweb.hinet.net/blogpictures/inthemoodoflove.jpg" style=" margin: 10px 0px 8px 8px; width: 400px;" /></span></p>\r\n<p>\r\n	<br />\r\n	<span class="fullpost"><span class="fullpost"><strong><span style="color: #0066ff;">自言自語的凝視</span></strong><br />\r\n	攝影就像是用影像說話，不斷反芻自身的孤獨，把思緒全然投進一面影像裡，由影像說話，影像溝通，影像透露，影像宣洩，即便成了一種無助的狀態，影像都能天馬行空走一遭，讓孤獨的人有了出口。李屏賓：「在國外拍片，有時候你沒有說話的對象，只有自語自語，所以隨手拍一些東西是一種情緒一種紓解，一種紀錄。而大部份的時間都是孤獨的。」<br />\r\n	<br />\r\n	<strong><span style="color: #0066ff;">家人永遠是最後的掛念</span></strong><br />\r\n	2008年李屏賓在異地拍新片子時，一個忙錄的下午之後，看見手機裡有二十幾通未顯示來電號碼的電話，接著突如其來的焦慮脹滿他的心裡，他一直以為是不是家人發生什麼急事，從未這樣感到憂慮惶恐。緊接著再次接到電話時，才得知他被頒獲了<a href="http://www.ncafroc.org.tw/Content/award-history.asp?Prize_year=2008&amp;Prize_no=%A4Q%A4G" target="_blank">第十二屆國家文藝獎</a>。伴隨而來的喜愉與榮譽讓他真切的明白，其實，家人一直是他最後的掛念。<br />\r\n	<br />\r\n	<strong><span style="color: #0066ff;">A Poet of Light and Shadow</span></strong><br />\r\n	我不知道Mark Lee接下來的人生要如何走去，即使他花了大半輩子時間用光影呼吸，成了光影詩人。走了巴黎，漫遊紐約，腳落過上海；《紅氣球》、《千禧曼波》、《挪威的森林》；光線的霧氣，鏡頭的言語，聚光與泛光，無論如何，我會記得他是我第一個攝影領域的啟蒙先驅，讓我知道那個幻眩的世界，確實存在。</span></span></p>\r\n<p>\r\n	&nbsp;</p>\r\n<blockquote>\r\n	<span style="font-size:12px;"><span class="fullpost"><span style="color: #ff0000;">創作就是激發你懂與不懂，<br />\r\n	或者是在瞬間你對這個世界的一種角度與看法、一種風險、一種嘗試在裡面。<br />\r\n	<br />\r\n	The process of creation challenges what you know and what you don&#39;t.<br />\r\n	In an instant,<br />\r\n	it makes you look at the world from a certain perspective,<br />\r\n	with a certain risk and sense of experiment.<br />\r\n	<br />\r\n	　　　　　　　　　　　　　　　　　　　　 &nbsp; Mark Lee Ping-Bing 李屏賓</span></span></span></blockquote>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<iframe allowfullscreen="" frameborder="0" height="315" src="https://www.youtube.com/embed/QeRjpGIPqok?rel=0" width="560"></iframe></p>\r\n<p>\r\n	<iframe allowfullscreen="" frameborder="0" height="315" src="https://www.youtube.com/embed/n2L10WeZIyo?rel=0" width="560"></iframe></p>\r\n'),
(3, '2', '我的藍梅夜', '每一次的反射都讓我更愛自己一點', 'my blueberry night', 'MyBlueBerryNightsS.jpg', 'MyBlueBerryNightsB.jpg', '2015-09-17 14:00:00', '20090917', '<p>\r\n	2008年我坐在電影院裡的沙發座上屈指可數，彷彿像窮人家小孩口袋裡零星數得出來的銅幣聲響；反視音樂，若實體一張挨著一張購入算起，去年每月至少平均有五張音樂專輯流入黃色資料夾，雖不甚多，但能像積木搭起CD音樂盒的城堡也可見一般。這年，也是聆聽音樂記錄的頭一年。</p>\r\n<p>\r\n	<br />\r\n	<span class="fullpost">這部電影著實讓我反轉拉了進度軸許多回。頭幾次用中文字幕觀影，再轉換以英文作旁白，最後捨了字幕上的陪襯，電影成了真實生活的立體鏡頭。在這交錯的方式觀賞，每回悟出的心得都不盡相同。王家衛的電影要說的思維一向不簡單，雖然我曾一人觀賞《花樣年華》悶到整個看不懂也頭痛，不過想起那才二十郎當初蒙昧的年記，領略感知的熱度像是電影院剛開啟的爆米花機一樣怎麼也爆不出香味來。但卻好像也從不介意自己那樣子過。然而《我的藍梅夜》像是翻版於94年的《重慶森林》以用最普實簡單的劇本，鋪陳了關乎愛情世界裡的距離與時間。<br />\r\n	<br />\r\n	影像回盪在《重慶森林》編號633巡邏警察(梁朝偉飾)習慣對著東西說話，以填滿空曠的內心世界；阿菲(王菲飾)總是扭大音響音量，伴隨著鼓譟的搖滾樂築起小小世界，只有她在裡面。想起這都市愛情，反於《我的藍梅夜》Jeremy卻用無止盡的漫長等待，拉近了Beth的旅途距離，一字一跡反覆的Postcard和一把仍不願隨意丟棄的鑰匙。愛情中，無法遮掩的美好，仍舊如此。<br />\r\n	<br />\r\n	片中穿插一覺醒來沒感覺甩掉酗酒警察Arnie的Sue Lynne，戀人們的繩索太過緊束總讓人窒息；和Fuck You Very Much的女賭徒，賭桌上卻藏不住真切想愛父親的堅強；每段小故事都讓Elizabeth重新看待自己，不論旅行何處，自然回到最原點，也找到自己不再茫然若失的去向。<br />\r\n	</span></p>\r\n<blockquote>\r\n	<span style="font-size:12px;"><span class="fullpost"><span style="color: #ff0000;">在最後的日子裡，我學著如何不去相信人們，但很高興我失敗了。有時我們把人們當作一面鏡子，去定義自己與告訴，我們是什麼樣的人。而每一次的反射都讓我更愛自己一點。<br />\r\n	<br />\r\n	In the last few days, I&rsquo;ve been learning how to not trust people and I&rsquo;m glad I failed. Sometimes we depend on other people as a mirror. To define us and tell us who we are. And each reflection makes me like myself a little more.</span></span></span></blockquote>\r\n<p>\r\n	<img alt="" src="/CKEdit/upload/images/myblueberry.jpg" style="width: 400px; height: 267px;" /></p>\r\n<p>\r\n	這段像是廣漠無邊的公路式電影所萌出的被我視為的佳句，好一段時間以它為生活重心。曾幾何時我們都像Beth那樣的天真與純粹，相信所有的良善能帶給人們所有適切般的美好。這力量，這意識足以摧擊社會體制下爛腔濫調的虛偽面具，跨越既壓抑又激亢的媚俗世代，而回到那樣多愁善感的鄉土種子。在大多時候，我們是這樣。</p>\r\n<p>\r\n	於是，等待與憧憬成了我觀賞這部電影的主軸，擺著一幅披著壁紙的畫依靠在長方型的石坐椅旁，背後不清楚有幾張電影宣傳海報，暗色晝明，燈光斜斜打入，我坐著那，聽著音樂。假草地遍及四周，一杯咖啡還在桌上冒煙，鐵欄竿門外人群穿梭來去。</p>\r\n<div class="highslide-caption" id="caption1">\r\n	<p>\r\n		<span class="fullpost">等待那份憧憬的出現。</span></p>\r\n</div>\r\n'),
(4, '1', '一間唱片行的夢想', '『和這個世界過不去』的寂寞', 'dream from vinyl store', 'RecordStoreS.jpg', 'RecordStoreB.jpg', '2015-08-24 04:57:26', '', '<p>\r\n	懶人說，Live House的樂團可是沒有開場的，當第一個音落下時，他們的表演就開始了。</p>\r\n<p>\r\n	中秋節快結束的夜晚匆匆忙忙往展演廳奔去，手扶梯才把我推到六樓，蕭青陽大哥設計的音樂枝巢一片映入眼簾，而那家每個人心目中的唱片行只隔著一塊落地玻璃的距離，坐落在我眼前。</p>\r\n<p>\r\n	我走進裡頭，一疊疊黑膠放置在木箱隔間。對於我這遲來的外來客，準備打洋的店員們只說音符棒棒糖五十元，並在我面前表演了像是魔術方塊三折式的宣傳卡片。而每人臉上漾起的笑容像是又過了一場美好的音樂饗宴。</p>\r\n<p>\r\n	環顧四周，仔細地看著存放在這十天唱片行裡的每一樣物品。屋內中間拉下幾盞直落落的舊式燈泡，似乎同時也照亮了每一張舊時代的黑膠唱片；唱機放置在放銀檯旁，以透明殼蓋上，卻蓋不住愛樂者的聲音；而牆上貼著那些我似而熟卻不陌生的樂團獨白，我找不到需要離開的理由。走出唱片行，步了幾步距離，看到它的全貌，也同時看見被放進的美術指導郭志達先生的理想。</p>\r\n<p>\r\n	記得郭先生曾說，當你有夢想時，記得要一條條把它寫在一張白紙上，每一時刻都要提醒自己。多年之後，你就會慢慢發現當初的理想，已漸漸實現。對他而言，我想這唱片行便是其中之一。</p>\r\n<p>\r\n	<img alt="" src="/CKEdit/upload/images/article_img/pulpstent.jpg" style="width: 200px; height: 334px; float: left; margin-right: 10px;" />陳德政詭異要睡在這一夜的帳篷在另一旁，那是他在二十歲的那年夏天，唯一一個東方人參加英國V99與Read Festival兩場音樂祭所陪伴的帳棚，裡頭還掛著一個夜間小燈。他把當時旅途上的火車票根，Blur樂團海報、所有紀念小物都展示出來，標題列著─「二十歲的搖滾夢」。牆壁上留著他的文字，他的青春也從此留住了。</p>\r\n<p>\r\n	回繞在另一旁，馬世芳的記憶卡帶，一捲交著一捲排疊起來，引文摘錄了我所熟悉的那本《地下鄉愁藍調》裡關於那美麗寂寞的噪音─「搖滾樂其實是很矛盾的。看似熱鬧，實則無處不浸透著寂寞。它的核心往往就是『和這個世界過不去』的寂寞。而那撼動了整個世代的、真正了不起的搖滾樂，便是找到了那條紐帶，把千千萬萬的寂寞和蕭條，串織在一塊兒。」我讀到此，倏然而至的寂寞，再也找不到。</p>\r\n<p>\r\n	當所有展演廳的工作人員隨著下班離去時，就連後來才知道的吉他手小白的衣杉留在舞台上忘了帶回，只剩我一個人站在廳裡中央，一片靜寂，燈光暗下。望著舞台去，我見不著甜梅號的身影，他們前一個小時已表演完，可是想像力似乎停留在氛圍裡，我將雙眼微微閉上，彷彿他們剛在台上演出的影像卻如一格格幻燈片在腦海中浮現而不斷翻頁。對於一直伏在角落這些的音樂人，其實他們沒有需要過多的投射燈去放亮這些心中小事。</p>\r\n<p>\r\n	雖然和小白擦肩而過，也忘了感謝他那首曾讓我勾起一幅在操場跑跳景象的「體育」的音樂，陪伴過我一段時間，這台灣最具潛力的後搖樂團。</p>\r\n<p>\r\n	無論如何，我們的搖滾夢從這一間唱片行開始。</p>\r\n'),
(5, '2', 'Into The Wild', '阿拉斯加之死', 'into the wild', 'IntoTheWildS.jpg', 'IntoTheWildB.jpg', '2015-12-05 08:29:17', '20110608', '<p>\r\n	不予否認的，我在初讀《阿拉斯加之死》這本小說的年紀，正巧與書中主角克里斯多弗的年齡相仿，正值生命歲月裡最豐沛的冒險時期─二十二歲。但那時兀自於腦海中對曠野那般夢幻卻殘酷的田畝，我並未像克里斯能填滿勇氣走訪一遭窺探一二。</p>\r\n<p>\r\n	人們總是對社會佈滿虛假、矯柔造作、言不由衷有著過份的反彈，卻矛盾至入其內無法抽身。能夠引領另一嚮往的內心世界，除了逢人闔上嘴角不苟言笑，就是擁抱托爾斯泰或是傑克倫敦的書籍把自己丟置廣漠無邊的荒野中反視著人類的愚拙，這嚴然是一種謬世的孤獨態度。但不可不說的是，這同時也能的得到另一種自我心靈的解放。</p>\r\n<p>\r\n	<img alt="" src="/CKEdit/upload/images/article_img/IntoTheWildTracy.jpg" style="width: 400px; height: 267px;" /></p>\r\n<p>\r\n	書中主角克里斯當屬這類的人。他來自豐沃富裕的家庭，大學成績優異的程度足以進入哈佛法律系就讀。他天資聰穎與人相處活崩亂跳的開朗個性，像是個永停不下腳步人見人愛的大男孩。與他旅程中相肩而過的Jam和Rainey情侶；教他割草豪爽的漢子Wayne；在大峽谷湍急的河流露營的Mads和Sonja；一次愛上他的十六歲音樂少女Tracy T；大半生駐守軍隊裡孤獨老人Ron Franz。人們總是在際遇的交織下，尋找自己的生命原鄉。也同樣的克里斯在這奇遇的旅人之路，開啟自身存在的價值探索。 生命就像一趟奇幻冒險的旅程。</p>\r\n<p>\r\n	<img alt="" src="/CKEdit/upload/images/article_img/IntoTheWildboat.jpg" style="width: 196px; height: 131px; margin-left: 8px; float: right;" />依稀記得這本小說擺置在書桌上，捧在手裡不時地翻頁的那個夏日時節，是與家人一同到郊外山區旅行，那是記憶中的兩日一夜。當天夜裡，我獨自一人散步至門口前像是戶外咖啡木製座椅旁，聳立在眼前的是一片望無邊際的針葉林地帶，帶點秋天涼意的山區高度，微微的。凝視向下行徑在旅館前的道路分別站著兩旁間隔稍遠的路燈，延伸挺多容下一車半的道路的東西向，一格一格漸行漸遠。如果能夠在地表上尋覓到昏暗柔和的發光點，我想就只有這寬大的別墅旅館停歇站。</p>\r\n<p>\r\n	絲毫不忘那時的心境有多貼近書中的克里斯，像是童年的他在面對父母爭吵離異牢牢抱緊妹妹Carine所帶來的無力感，驚恐與害怕。也從未而想過那樣的傷痕裂縫裡的判逆種子會在未來的某一刻萌芽成長。我獨自窩在旅館房間床鋪上，釋手翻著每一頁，置身克里斯離群索居的心靈曠野中，儘管旅館樓下大聽裡充滿溫馨和諧的人群來往悅耳的聲音，但我仍過份的激情想脫離這一切遠遠奔走。人們總是在某種環境下容易被一些事物主導著，又或者從回憶的殘缺旁白裡，被一些微弱的呼吸聲推促著，走上另一條未知崎嶇的道路。</p>\r\n<p>\r\n	孤獨裡有時候會包含一種完美主義的個性，像是一段長久時間把自己置入某種程度黑暗的角落，無法敞開心胸去崇向外面的太陽，那些所散發出渾然發燙炙熱的一根根細針，每根細針彷彿帶有世人所有邪惡的個性，刺痛自己的皮膚，情願愛上孤獨的夜晚。</p>\r\n<p>\r\n	這部電影同時也讓人一再想起《小太陽的願望》(Liitle Miss Sunshine)。劇中Hoover Family 的兒子Dwayne為了成就自己成為飛行員的夢想，決定關起嘴巴，不說話已經九個月，當他的Uncle Frank第一次和Dwayne碰面時，打招呼地寒暄問他平常和誰玩在一起，Dwayne率性地拿出筆記本寫著：「我憎恨所有的人。」</p>\r\n<p>\r\n	來自Dwayne的恨意是所有世人間的偽善，那些包裝過的善言善語，不切真實所有表面化的事情。縱使在Dwayne得知自己有色盲的病症致使他無法成為飛行員，壓抑在內心深處的滿滿情緒一併而發，隨著粗氣的文字爆裂在通往加州的公路旁。原來面對孤獨的人，在心靈世界裡其實還有一塊脆弱地帶。</p>\r\n<p>\r\n	無獨有偶，小說書本中的克理斯最後想起疼愛的母親；電影裡的克理斯最後在魔法巴士留下的遺言：「Happiness only real when shared.」。其實在孤獨之後，我們還有著更多的溫暖埋藏在自己的內心深處，不是嗎？</p>\r\n<p>\r\n	<img alt="" src="/CKEdit/upload/images/article_img/IntoTheWildchris.jpg" style="width: 392px; height: 193px;" /></p>\r\n<p>\r\n	電影的劇末與小說結尾句點並無二致，都是停留在魔法巴士的最後一慕由影像緩緩拉至上空，巴士逐漸縮小，最後消失隱密在廣大的阿拉斯加草原河畔。片尾曲拉上黑色的屏幕，想起友人的一席話：「把片尾曲聽完是對電影的一種尊敬。」耳間傳來Hard Sun的音樂，腦海裡反覆著克里斯留在相機裡的僅存的一張照片。不論對電影、配樂、製作敬意與否，克里斯傳奇探險於北美阿拉斯加的色彩故事，都深深觸動每個坐在螢幕下的觀賞者。 　　</p>\r\n<p>\r\n	因為那是最美麗的旅人記憶。</p>\r\n<iframe width="420" height="315" src="https://www.youtube.com/embed/Mwx3RvDWvDM" frameborder="0" allowfullscreen></iframe>'),
(6, '1', '單純的事交給陳綺貞的純綷', '一個純綷的夜晚', 'purely night', 'EcoleCafeS.jpg', 'EcoleCafeB.jpg', '2015-06-21 14:00:37', '', '<p>\r\n	座落在師大校園附近，在旁的新生國小的PU跑道操場，一條路燈照著晦暗的巷弄，獨獨亮著橘色招牌的&rsquo;Ecole。</p>\r\n<p>\r\n	這是我第一次走進學校咖啡館。</p>\r\n<p>\r\n	打開門，看見馬世芳老師與葉雲平就坐在距門口跨過三、四個圓桌，他們似乎在為等會的講座交談著。進了門，在吧台前的桌子，拉開椅子坐下，我拿起手上的破報攤放在桌上，店員湊身過來詢問我是不是來參加講座的？我點了點頭，隨著她拿給我的menu點了一杯尼羅河綠茶並且跟我說七點五十分才能下樓。我低著頭繼續瞧看報上過份爛漫無謂的文字，尋著是否有讓我足夠測試黃香李試驗的好音樂。</p>\r\n<p>\r\n	對於這次《台灣流行音樂200張最佳專輯》一書終於殺青，儘管這本舊作百大被喻為台灣很多愛樂者的聆聽啟蒙，儘管是樂史上重要文獻參考，但仍然激不起我太多的好奇共鳴。一面翻閱著報紙，心裡卻還想著近日看的《地下鄉愁藍調》，那些五顏六色、詭譎怪誕的龐客；馬老師口述的1969年美國小鎮烏茲塔克(Woodstock)音樂季軼事，Joan Baez在四十萬擁潮的人前唱著〈Joe Hill〉六○年代愛與和平的歌聲，或是Alvin Lee像個瞎盲的瘋子一樣狂飆《I&#39;m going home》以及那張披頭四《White Album》裡被老師說成「真是一首很荒唐的歌」的〈Birthday〉，心升讓我下回辦生日派對「就用這首吧！」的回響。還有，宇宙塑膠人(Plastic Peolple of the Universe)樂團如何以「間接」的方式唱跨一個政權。</p>\r\n<p>\r\n	店員提醒著散坐在一樓的人群時間已到，隨之窩蜂擁進往地下一樓的方向走去，下樓前還瞥見牆上一個男孩斜瞄女孩的怪異塗鴉，那是個地方。我挨著螺旋梯的扶手走下去。下樓之後，前方DJ助手正整理著手頭上的CD，喇叭的響座卻放著陳綺貞的〈和你在一起〉。店員在下樓處發放著資料和問券。拿著紙張，看著散在兩旁的座位，依照我的個性一定選柔軟的沙發座。</p>\r\n<p>\r\n	馬世芳老師這回與葉雲平的論點範疇幾乎在分析過往的台灣「民歌」影響。從戒嚴時代抗議十足台灣民歌之父胡德夫開始，到影響兩岸三地羅大佑、崔健，與從身歌手與製作人以形象工程帶出不少當紅藝人的李宗盛等。用一首接著一首民謠歌曲解釋著過去大時代背景對彼時社會或後續衍生出來的效應影響。</p>\r\n<p>\r\n	大多時候我無法理解這些深邃的論述存在的意義。但能讓現場觀眾對這原先只籌辦一小時講座卻被兩位評論人口橫沫般超時到兩小時只專注而無法分心，我想是在馬世芳老師對文字的駕馭而引人入勝的表達方式，再加以一些動人卻不絕俗的幽默穿插，讓我只能用最簡單方式描述─「聽他說話真是一種愉快的享受！」。更讓我明白對於作為一廣播人是如何以文字與音樂為生。用詞如何謹慎，見解精闢。</p>\r\n<p>\r\n	很可惜，對於現在的馬世芳而言，研究取向似乎多半是提倡本土音樂為主，西洋搖滾樂似乎已是他鮮少著墨的主題。對於被張鐵志曾在《Sounds and Fury》一書中譽為「高中時代就可以成為全國研究披頭四+鮑伯狄倫(Bob Dylan)+滾石合唱團(Rolling Stones)的第一高手」。回想這番話，對於青年時期迷戀麥克‧喬丹(Michael Jordan)那般太過灑汗水的我彷彿是種遺憾，應譇望自己當時多一點時間分出去。(但其實也換了一大筆健康)</p>\r\n<p>\r\n	然而值得一提的是，原本存在心中關於「音樂與商業化之間關係」的問題，似乎也稍稍找到答案。馬老師引了縱貫線Superband成立産生過多的輿論的例子來說明音樂人主要的職責─「讓作品說話」。對於其他餘事，就由其他學家評論分析，也期望聆聽的觀眾朝向這樣的方向走去。</p>\r\n<p>\r\n	整整兩個小時一首首台灣民謠歌曲播放，最後一個音符落在伍佰的吉他弦上。我把桌上最後一口尼羅河綠茶以拇指翻開封口喝下，提著背包走出&rsquo;Ecole，有點像剛上完課的大小孩。雖然今晚這些對我有些已是模糊腿色舊時代的音樂，沒有太多能勾起我的情緒的耀動。或者說，能說的， 我只記起陳綺貞的單純，一個純綷的夜晚。</p>\r\n'),
(7, '1', '再度敲響的鐘，謝謝你提醒我', '詹姆仕的秋天', 'Sugar Plum Ferry', 'SugarPlumFerryS.jpg', 'SugarPlumFerryB.jpg', '2015-05-21 14:02:33', '', '<p>\r\n	我遺忘了這次旅行的目的地，直到咬筆桿的這刻仍然記不起它是往哪裡去，只記得兩天一夜耳朵側旁總是被這首《敲響的鐘》的聲音圍繞著。</p>\r\n<p>\r\n	忽然之間，我想起來怎麼認識他們的，那個開始。</p>\r\n<p>\r\n	甜梅號第三張專輯《腦海群島》早在今年2月13日就上市。起初最讓我動容而手心冒汗直至腳底發麻的，是&lt;黃昏鹿場&gt;這一首曲。爾後，我聽不出&lt;敲響的鐘&gt;任何敏銳地帶，對於小白想說甚麼，鼓手孟諺想敲甚麼，始終不及那片寂靜之聲。但是我們得明白，他們的音樂一直是屬於後勁強悍，是越聽越飽滿的。只不過怎麼也沒想到，這首曲敲響的時間竟是往後半年之久。</p>\r\n<p>\r\n	還記得那個開始，是大學畢業後夏天的事，那是認識幾個伏在角落音樂人之後的事了，是在Nipples《詹姆仕的秋天》之後的事。而Nipples專輯現在仍舊擱在家裡書櫃上。</p>\r\n<p>\r\n	對我來說Nipples是個楔點，是開始認識後搖這個名詞，是漸漸明白搖滾樂其實不一定要有聲唱。從Nipples之後，我知道還有一個後搖樂團存在，他們的團名很特別，樂風很脫俗，帶點緩飄，表演時低調的很。那時沒有人介紹，沒有樂評的引述，沒有任何的共鳴泛響，只在偶然之下瞥見團名。從那一刻起，我就知道他們會是我喜歡的樂團，這樣的認識是很冥冥之中的際遇，所以在我心目中，甜梅號的地位是很唯一無二的。</p>\r\n<p>\r\n	成團十餘年過去，鼓手孟諺即將在〈屋頂音樂節〉之後出國深造錄音工程，甜梅號終究要暫歇一陣子。即便如此，我始終無法忘記第一次近距離瞧見孟諺時的景像；髮長及肩，紮綁馬尾，他是先喝了一口調酒，拴緊瓶蓋，便在黑膠上的封面寫下他的名字。之後和我說聲謝謝，我卻忘了回應他那一晚的演出，想告訴他，那是我見過最曼妙的鼓法，肢體最藝術的模樣，那紛沓而來的從容感動，是讓人難以忘懷的。</p>\r\n<p>\r\n	傳說他的鼓點太過準確，以致其他團員不容易跟上他的節奏，也曾說他是可以把Smashing Pumpkins的《Siamese Dreams》整張專輯的鼓從頭打到尾。如今，伴隨他的暫別，甜梅號不知何時才會再重逢，然後再次的提醒，再次的消失，再一次的敲響。屋頂音樂節之後，我們重新來過，青春被丟在後頭，因為甜梅號的一路陪伴，模糊的記憶裡面，有著最好的禮物。</p>\r\n<p>\r\n	謝謝你提醒了我，甜梅號。</p>\r\n'),
(9, '2', '廣島之戀', '摯愛的遺忘', 'Hiroshima mon amour', 'hiroshimamonamourS.png', 'hiroshimamonamourB.png', '2015-12-05 09:58:51', '20090415', '<p>\r\n	<span style="font-size:14px;">「意識流」與「內心獨白」成為這部電影探討主軸的方式。關於這兩項概念是源自十九世紀的William James實驗心理學家哲學性思想論文裡所提出的，而在二十世紀初才引入文學界。這類像是弗洛伊德或是自己在大學時期修過《迪卡兒回憶錄》的心理哲學課程，也不是我能想深入探究的。(光是回想當初老師給的厚厚的迪卡兒講義就令人呆滯)。</span></p>\r\n<p>\r\n	<span style="font-size:14px;">能串穿的議題不如放在「摯愛的遺忘」來的讓人接受多一些。</span></p>\r\n<p>\r\n	<span style="font-size:14px;">「Hiroshima，這就是你的名字，而你的名字叫Nevers。法國的Nevers」。二次大戰經過原子彈轟炸滿目瘡痍的廣島城市，電影開場的十五分場不斷反覆影射了戰後日本慘況的記錄畫面，遭受原子彈襲擊的人民，頗令人不堪入目。而交歡中的男女不斷在回憶與現實中翻騰、呼喊、對應。</span></p>\r\n<p>\r\n	<span style="font-size:14px;">人們相愛時最怕的就是被遺忘，又同時很矛盾地需要記起什麼。留在內韋爾女子心裡曾經刻骨銘心的愛情記憶因邂逅了日本建築師男子再度被喚醒。卻也模糊了自己同時對這兩份情的真實性，糾結纏綿地不清楚自己真正愛的是誰，內韋爾女子這份困惑一直盤纏著她，內心是Nevers，眼前的場景卻又是Hiroshima。連在最後的抉擇是否離去Hiroshima回到農村Nevers都還躊躇不定。</span></p>\r\n<p>\r\n	<span style="font-size:14px;">摯愛的永恆離去，相較活在不同的空間更有深邃的哀傷痛楚。看了這部電影著實一直令我想起那一本《我的愛情是一卷自製混音帶》，樂評人Rob Sheffield瞬間失去Renee成為鰥夫的那一刻，那是一種湧上心頭會扭曲臉部的痛苦張力，全然吞噬身邊的一切，令你爬不起來。</span></p>\r\n<p>\r\n	<span style="font-size:14px;">Alain Resnais導演迄今拍攝了48部電影作品(現年86歲)。這齣《廣島之戀》於1959年拍攝，被評為French New Wave時期重要作品。一覽他的著作，赫然發現也有Van Goah，令人好奇。</span></p>\r\n'),
(10, '1', 'Nirvana', '你的二十七', 'nirvana', 'nirvanaS.png', 'nirvanaB.png', '2015-12-05 10:19:33', '20060727', '<div>\r\n	又讓我聽到一首吉他刷的猛烈的音樂，實在不得不把這個很喜歡的搖滾樂團搬出來說一說，就在那首還沒聽過的Nirvana樂團第一支單曲「Love Buzz」的同時。</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	雖然認識Nirvana(涅盤)已經是在主唱Kurt Cobain拿把獵槍轟下自己的腦袋瓜後十年的事了，但90年代Grunge樂風還是屬於這一個經不起盛名的揹負選擇用這樣方式結束自己生命的傢伙。</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	喜愛聽搖滾音樂的人，我想沒有人會不知道這個團體。回想當初因為學校選修音樂欣賞的通識課程，跟班上一位熱愛玩吉他的同學同一組，在一起做報告的時候，同學當時就指了指電腦螢幕上Kurt Cobain的照片丟了這麼一句話讓我對這個團體開始倍感好奇─「這傢伙一把槍朝著自己腦袋瓜轟下去...」。</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	於是，在學校操場的宿舍生活、一碗50元炸雞排飯、15元的微糖綠茶、喇叭Voulme拉到最大，一整晚嘶吼搖滾樂的精神就走進這個帶有點傳奇故事的龐克小子世界裡。</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	人似乎對那種殘缺的美感特別有興趣，這應該是我對Nirvana興起興趣的主要原因。雖然有些音樂人英年早逝，不外乎都跟藥物毒品有關，就像Elvis Presly在最後的階段仰賴鎮定劑控制自己的身心健康。而Kurt Cobain似乎也不例外，不過他卻是在跨越不了自己內心的障礙進而取向於大麻最後舉槍自盡。往往從事藝術的人，心靈世界總讓我感覺都特別脆弱；從音樂的旋律去尋找解放，從音符裡去抓取支持他們的最終信仰。然而，若當音樂都不能夠救續他們的時候，他們就會走向一條不歸路。</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Kurt Cobain帥氣的臉龐、頹廢的穿著、嘶啞的嗓子，這是Kurt的模樣。然而酷似堅強的外表下，卻隱藏著一個尋求解脫的靈魂。一張《Nevermind》專輯讓Nirvana一夕之間成名。雖然我不能完全聯想那種擁有全世界的注意是什麼感覺，但Kurt似乎對成名的壓力與媒體剝走生活的自由感到不適而極端地反抗。Kurt曾說：「我痛恨繼續依循這個公式寫歌，我曾經主宰這個公式，但現在卻反過來，我必須依循這個公式以取悅別人。問題是，我可以繼續取悅別人，但每一次取悅都剝奪自己本身的快樂。」這是否是Kurt對音樂的矛盾，並不確定。但可以理解的是，這卻是造成他自殺的原因之一。</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	還記得《Incesticide》裡的「Sliver」這首音樂，只有短短的兩分鐘，前奏20秒的節奏有點像鄰家男孩在述說自己童年的記憶，感覺是一種在自家門口玩耍的心情。但當父母親丟下Kurt離去的同時，吉他音突如轉向一種斯竭吶喊的抱怨噪音，哭喊著Grandma take me home! 猶如Kurt對父母親的怨恨。在這狂躁的忿怒背後，我想，似乎勾出某種背影。一個人成長環境對後來的個性影響有多深？其實從這首音樂就能聽得出來。Kurt天真快樂的童年在八歲父母親的離異之後，後來與父親同住，而那段時期常遭父親的鞭打，所以常常輪流寄住在親戚及祖父母家。這些慘淡的家庭環境讓Kurt少年時代並不愉快，導致後來Kurt人格個性上從原本活潑轉而變成內向、沉靜，甚至有些暴淚。這也讓Kurt開始在創作的作品上呈現出黑暗、反叛、厭世，一種放肆的精神狀態。</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	而事實上，除了快速成名、不堪的童年回憶，還包含了在他20歲時罹患長期的神經型胃痛。這促使他時常利用大量的藥物來麻醉自己逃避現實的折磨。雖然早在《Nevermind》尚未問世的時候Kurt就有吸毒的習慣，但他並沒有在成為全世界的搖滾英雄時改掉這樣的習慣，反而成名之後越陷越深擺脫不了心中的壓抑。最後在身心俱焚之下，還是選擇了這一條涅盤的路。</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	雖然這些似乎是很多人灌上Kurt走上絕路的主要原因，但自己總覺得自殺者的內心世界很難由第二個人去觸摸。不在乎Kurt的自殺是不是一種不負責任，至少他確確實實把自己的心靈世界呈現在音樂裡頭。從他的音樂裡看到了真實人生，也看到了許多青年人的困惑與徬徨。我不禁很想推崇他與歌頌在了解他之後；尤其漫步在校園裡時，看著一群熱血澎湃的學生，拿著電吉他刷起「Smells Like Teen Spirit」經典之音，或是《Bleach》裡的「About a girl」模仿起Kurt低沉嘶啞的聲音，總在那刻停下腳步，腦海裡不斷反轉著那個曾經用生命去熱愛音樂的影子...</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	[Man who sold the world]</div>\r\n<div>\r\n	這首是Nirvana在一次紐約的不插電演唱會翻唱David Bowie的音樂。原曲有比較多的樂器元素在裡面，加上David Bowie聲音有點魅惑，還蠻有不一樣的風格。不過還是覺得Kurt Cobain從新詮釋的味道比較讓人有感覺。</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	--------------------------------------------</div>\r\n<div>\r\n	<img alt="" src="/CKEdit/upload/images/article_img/nirvana01.jpg" style="width: 200px; height: 307px;" /><img alt="" src="/CKEdit/upload/images/article_img/nirvana02.jpg" style="width: 200px; height: 145px;" /></div>\r\n<div>\r\n	[1994年4月5日Kurt Cobain在西雅圖住所舉槍自殺，留下了ㄧ份遺書與Unplugged In New York的專輯。享年27歲。]</div>\r\n<div>\r\n	下面是他最後一封信的內容</div>\r\n<div>\r\n	Kurt遺書原稿致Boddah</div>\r\n<div>\r\n	這是一個飽經滄桑的傻子發出的聲音，他其實更願做個柔弱而孩子氣的訴苦人。這張條子應該很容易理解。所有的警告都來自於這些年來的「龐克搖滾101」。自從我第一次介入，那包含著獨立性應當稱為道德原則的東西之後，你們團結一致的擁戴已證明是非常真實的。我已經好多年都不能從聽音樂、創作音樂，以及讀和寫東西中感到激奮了。對於這些事我感到了一種難以形諸文字的負罪感。比如說，當我們來到後臺，燈火熄滅，人們狂躁的咆哮響起，這一切對我的影響就遠不如對Freddy Mercury(&ldquo;QUEEN&rdquo;樂隊主唱，1991年因愛滋病辭世）影響那麼大。他似乎喜歡而且把玩那些從人群中而來的愛與讚美，那正是我讚賞與嫉妒的一切。事實上我無法欺騙你們，無法欺騙你們中的任何一人。那對你對我都不公平。我能想起的最大罪惡便是欺騙人們、裝模作樣，做出一副我100%地快樂的樣子。有時候我似乎應當在出場之前有台打卡機。我盡了我全部的力量去喜歡這一切，我的確也喜歡，老天相信我，這是真的，但這還不夠。我很感謝我們的音樂影響了很多人也讓很多人娛樂，我一定是那種對過去的事自我陶醉的人們的其中之一吧！我太敏感了，我需要輕微地麻木一下好讓我重拾我兒時的熱沈。犯罪現場在我們最後的三場巡迴，我已對我個人所認識的朋友和我們的歌迷有了更深一層的感謝，但是我還是無法克服我的失敗、罪行和領悟。我們每個人都有優點，我想我就是太博愛了，博愛到讓我覺得我自己太悲哀，一點點悲哀的、敏感的、未感謝的；雙魚座的我，老天啊！為何你不乾脆樂在其中？我真的不懂。我有一個漂亮且奢求聲望和領悟的老婆，和一個使我想起太多我以前的樣子的女兒，她被愛與歡樂籠罩著，她給每個跟她碰面人親切的吻，因為大家都是好人，不會傷害她。這讓快死的我感到害怕，我不能忍受我女兒的思想變得不幸、自毀、或是一個像我一樣的死了的音樂人。我不後悔，真的！我也很感激，但是從我七歲的時候，我已經對社會大眾產生憎恨，我猜也許這只是因為人們似乎很容易聚在一起產生同感，還是只是因為我太過於同情別人，太博愛吧！謝謝你們過去這幾年來的信件和關心我長年的胃痛，我太過情緒化與反常了。我再也沒有任何情慾可言！所以千萬要記得，在燦爛的瞬間燃燒地死去總比最後無聲無息的消失好!!</div>\r\n<div>\r\n	和平。愛。領悟</div>\r\n<div>\r\n	Kurt Cobain</div>\r\n<div>\r\n	Frances和Courtney，我會伴你們到老，請繼續前行。</div>\r\n<div>\r\n	為了Frances 為了她的生活</div>\r\n<div>\r\n	沒有我她的生活會快樂許多。</div>\r\n<div>\r\n	我愛你們！愛你們！！</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	[P.S.信的內容來源]</div>\r\n'),
(11, '1', 'Kiss Your Eyes', '忠於自我，真實而虛無', 'kiss your eyes', 'TheWhiteEyesS.png', 'TheWhiteEyesB.png', '2015-01-29 15:44:53', '', '<div>\r\n	當他們來到了北京，卻被「外國人」相信，竟然在這飄無人渺的小島上有那麼強勢那麼瘋狂的樂團，並用警語開文要大陸北京「當局」的地下樂團小心─The White Eyes invade Beijing─白目樂團入侵。</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	然而說起「搖滾樂」，歸根結底的事即是「忠於自我」，其他一切社會性的規範其實就得解放。所以不論聆聽搖滾或是玩團的人來說，以意識型態而言，永遠在主流線上邊緣化；每個人走得是嚴肅的康莊大道，他們總是出人群而獨異卻在旁彈彈吉他，說笑玩耍；基本你要他們那麼做，他們偏不聽，他們不聽也不會偽裝成一副聽得懂的樣子。</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	放眼望去，回溯時代，許許多多的搖滾份子都經常依照他們「不自覺相信」的自白法則，走出這樣的生活概念，生活態度，生活搖擺。</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	來自台灣獨立樂團的The White Eyes白目樂團就是擁有這樣的強烈風格。四人編制在台北成軍，首張專輯《Kiss Your Eyes》在2010年9月一出發像是列車剎不住的尖銳聲，在各大音樂祭，Live House到處噬虐，到處白目惡搞；累積耍帥爆屌的實力，兇猛的力道恨恨帶走彷若那些真實70年代龐客樂迷的心。</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	他們的曲樂中帶著復古搖滾，裝份上又是前衛系列的代表。尤以主唱Gao Xiao Gao視覺暴走的演出，總讓人害羞側頭撇旁，然當側耳聆聽，又讓那旋律引頸而望。人們說，她像是YeahYeahYeahs的 Karen O在音樂裡玩出性感迷幻的況味，或是王菲的唱腔，但又何妨，真正了解搖滾而置身在其中的玩樂份子，絕不會想要帶著模仿的味道，「忠於自我，真實而虛無」可是每個搖滾樂手的朝聖信條。</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	聽聽他們的曲曲呻吟吶喊「迷亂」的青春期，你便明白外國樂評會說：「 They are clearly ahead of the mainland! Beijing underground live, you''re put under notice!」</div>\r\n'),
(12, '1', 'Riot on an empty street', '朋友不是讓你得到某種事物的手段', 'riot on an empty street', 'kocS.png', 'kocB.png', '2014-12-21 14:04:41', '', '<div>\r\n	有沒有一首音樂促使你一整個晚上遲遲無法入夢？還記得當時有聽過「I&#39;d rather dance with you」就讓自己的心情狂跳了好幾個小時。雖然那刻並沒有細細去想這首音樂的來由，只是圍繞在那輕鬆自在的節奏當中。而正當跟一位即將去歐洲留學的朋友道出自己喜歡那種類似鄉村民謠有Jack Johnson的調性的音樂時，結果這位朋友當下介紹了一首「Misread」。沒想到又讓自己整個晚上愉快地掛在床上好一陣子。也讓我注意到這個樂團。</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Kings of convenience(KOC)來自北歐挪威的團體，從convenience(自在)灌上Kings(國王)的團名看過去，再加上來自有著田園風情的挪威國度，就大概知道他們的樂風屬於那種清新、脫俗的色調；一把吉他、一架鋼琴就這麼搞定他們的樂章。而KOC組成團員只有兩位：Erlend Oye(左)和Eirik Glambek Boe(右)這兩名斯文的男子。那中間的女子呢？若是沒有尾隨他們組團的開始，很容易誤認為中間的女生也是團員其中之一。但她其實是Eirik的女友。從另一張專輯「Quiet is the new loud(沉默是金)」就開始穿插Eirik的女友在專輯封面。然而這張「Riot on an empty street(沉溺在空曠大街)」也依循前面的手法。但不同的是，每張專輯的女子並不是同一個人。:)</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	「I&#39;d rather dance with you」一直讓我覺得很有過去年代復古的味道。這是還沒看到這支MV的時候。不過這支MV似乎也娓娓流露出KOC對音樂、對生活的感覺。瞧！有沒有看到Oye那傢伙一副自以為是的模樣自在跳舞，初看到時還真的有股莫名衝動想跑進MV去扁他一頓的感覺，把一群可愛天真無邪的小女孩從舊有的芭蕾儀式帶脫出另一種隨音樂節奏耍起擺動的姿態，自訂出一套屬於convenience的舞步。不過雖然如此地說，小女孩們也從新卸下芭蕾原有的嚴肅，拾起了臉上的笑容，想當然呢！最後也得到如雷的掌聲。這是這部影片很有意思的地方。而自己？也似乎在批判Oye的那酷似idiot舞蹈後，掛上耳機，隨著getting into the swing 搖擺起來。:P</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	A friend is not a means you utilize to get somewhere!</div>\r\n<div>\r\n	朋友不是讓你得到某種事物的手段。(From misread lyrics)</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	這首輕快節拍愉悅的音調，吉他刷的簡單、鋼琴清脆的聲響，讓人心情也跟著好起來。但是歌詞部分似乎有讓人皺眉的地方。Misread彷彿在訴說某種友誼上的誤解。而給我的感受卻是，儘管可能有著了一些人之間相處的摩擦，但其實自己還是可以用一種比較單純釋懷的方式表現出來。這首音樂的MV也拍的很到味；有陽光、有綠地、有野餐，還有，好玩的足球。而Eirik輕鬆自在拿把吉他躺在草地上亨唱，Oye則很俏皮可愛地跑去搖晃櫻花樹，那是勾起什麼樣一幅畫的景象？留點想像。:)</div>\r\n'),
(20, '4', '單純且不單純，來不及寫的二十八', '從音樂裡解放', 'to free from music', 'reliefcafeS.jpg', 'reliefcafeB.jpg', '2015-11-26 02:12:40', '', '<div>\r\n	就如同工作時穿著一樣，一件牛件褲，一件T-Shirt，一雙休閒鞋，這是我所喜歡的穿著。坦白說，我不太熱愛西裝領帶皮鞋，所以會喜歡陳綺貞那類的音樂人，往往是她們一襲輕便身衣，一把清脆的木吉他，然後簡簡單單唱出她們的心中小事。或像馬世芳及陳德政他們出席講座一樣，不太著重華麗的衣著。言談之間，也是如此。&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	我不知道如何去述說二十八的到來，這兩三年時間，文藝軼事開了閘道，頭上的外太空訊號，接收力越來越清晰，認識許許多多好像本來就會主動認識的人群；是流浪詩人也好，披頭青年也是，是革命左派也罷，那個老談六四怎麼個偉大烈士。人生劇本好像是自己的，這樣寫，情節線是這麼鋪。當然，這一切的一切幾年前我完全沒有一個想法。&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	來到二十八，讓人最有體悟即是「中心思想」、「光明性」，及不可或缺的「企圖心」，若是人生是否走得瀟灑。然而我們攀爬在每天生活文化的版塊上，有太多太多回首與仰望的事情，也太多且多的挫折低迴在身旁，仍不變的是，我們都得持續往前走，不論身形疲倦，或是大步闊伐，或是喜悅滿懷，我們都顛簸搖搖愰愰的留下些甚麼。&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	早上起床，也許有個簡約的廚具，煎個火腿夾蛋配上一杯鮮奶，中式早餐感覺不容易自己作，下樓有對和藹奶奶與爺爺開著燒餅油條店。或許對街還有著不一樣的西式餐店，和他們道聲西方用語，他們給你一份文化涵養豐盛的早餐，來自他們的家園。&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	之後，你滿意懷喜的去上班，隨著今天的工作量可以激發你自己多少創意，能夠和共同擁有理想熱情的夥伴共事，成為你生活有所幸福的事，或許有點忙錄，但樂此不彼。況且回到家中你還有個科學實驗室，它雖沒有像貝爾實驗室有多來得多有名，能自創多少發明。至少它有個Steel Rack，也有台OA，可能最新的Intel i9 Core CPU，VGA是GTX 590；你會用Super Pi 計算performance到達幾秒，還有3D Mark，執行 3維度的AA鉅齒狀況。另一台是Linux OS，他是主要開發程式端語言，在Open resource的情況下，我們與網路另一端的Hacker較勁。&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	當我理性羅輯思考多了，我會走至另一間房，裡頭牆上掛置Nirvana的Nevermind專輯的海報，或者是Velvet Underground的Andy Warhol計設的大香蕉；又或者學著「艾倫金斯堡」敲著打字機專注的模樣，在電腦桌前把自己昇華成頹廢的詩人。而桌旁另一頭也放著一台廉價老味的唱機，買張不知名的黑膠，從音樂裡解放，從那些詩句字裡行間獲得心靈的填補，知道真正的自由在哪方。&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	除此之外，我會拿起畫筆，拉好畫架，從一線一彎的筆畫裡，管他是畢卡索還是莫內，這都不是我要模仿的，我的畫作有主題似無主題，畫好了便一毛也不值，拿去和乞丐兜售一塊麵包，咬啐之後飽裹肚子，吃不完的再當橡皮擦用。梵谷的左耳帶來更多的寂靜思考。</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	於是走了大半圈，繞了大段路，好像那一座安穩的居所才隱約浮現。然而人生悠悠漠然走過，經歷與所知道的，我們無法在同一個方位架起筆直的航海線，掌著舵，乘著風，逐浪而去；那些無可避免的剩下，留著記憶，在未著陸之前&hellip;&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	這仍是我所希望的事。&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n'),
(25, '4', 'Schizophrenia - 精神分裂症', 'Keep dreaming, Keep trying, Keep rolling', 'Schizophrenia', 'sonicyouthS.jpg', 'sonicyouthB.jpg', '2015-12-02 15:24:56', '', '<p>\r\n	<span style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;">昨日是已是數不來的第幾次和陳德政碰面。他講的主題為：</span><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><span style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;">「從Velvet Underground到Sonic Youth &mdash; 探訪紐約搖滾樂的軌跡」。</span><br style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;" />\r\n	<br style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;" />\r\n	<span style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;">我還記得他多年前剛從國外留學回來在誠品講堂的初來咋到</span><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><span style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;">；他生澀，陌生一切，才從紐約吸取大量滿腹的音樂文化回</span><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><span style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;">來，時不時的講座上其實都還有冷空的現象。</span><br style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;" />\r\n	<br style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;" />\r\n	<span style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;">然而直至今日，多年之後，他像是歷經一切的音樂旅人，出</span><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><span style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;">了一本屬於自己的音樂故事《All Tomorrow&#39;s Parties》，不再似初認識〈Smash Pumpkins 〉的《1979》裡的酷孩子，沉穩而侃侃而談，敘事說事</span><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><span style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;">的本領，讓一個小時裡的說話，從Bob Dylan談到The Velvet Underground 的Andy Warhol，及迷幻搖滾似男非女的David Bowie，到最後的Sonic Youth(音速青春)，那些在過去幾年裡自己都耳熟能</span><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><span style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;">詳的人物，飽滿卻未著一點的空隙。</span><br />\r\n	<br />\r\n	<span class="text_exposed_show" style="display: inline; color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;">說來心虛，我從來都不是Sonic Youth的迷，曾經被大學同學調侃笑說，你幾乎擁有一<wbr>整套Sonic Youth的所有專輯，你到底有沒有聽啊。<br />\r\n	<br />\r\n	沒呀！我回答。那時我是Kurt Cobain的迷，Grunge樂團的最愛，Kurt的<wbr>音樂讓我思索也不斷記憶。《Never Mind》專輯聆聽之後，那是讓人蒼桑，讓人叛逆厭世，<wbr>而了解之後，卻也讓人堅強。<br />\r\n	<br />\r\n	講座曲終人散之際，喇叭座Sonic Youth的〈Schizophrenia〉最後節奏鼓聲一出，電吉他的刷音混在裡頭，<wbr>唯一一首我所熟悉的；我的時間感再次凍結，從體制內至體<wbr>制外，仿彿他們最後只留了這句話和我說著。<br />\r\n	<br />\r\n	&quot;Keep dreaming, Keep trying, Keep rolling.&quot;</wbr></wbr></wbr></wbr></wbr></span></wbr></wbr></wbr></wbr></wbr></wbr></p>\r\n<p>\r\n	<wbr><wbr><wbr><wbr><wbr><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;">\r\n	<p>\r\n		&nbsp;</p>\r\n	<p>\r\n		<wbr><wbr><wbr><wbr><wbr><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></p>\r\n	<wbr><wbr><wbr><wbr><wbr><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;">\r\n	<p>\r\n		<wbr><wbr><wbr><wbr><wbr><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></p>\r\n	<wbr><wbr><wbr><wbr><wbr><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;">\r\n	<p>\r\n		<wbr><wbr><wbr><wbr><wbr><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><iframe allowfullscreen="" frameborder="0" height="315" src="https://www.youtube.com/embed/sf2qYa8c-cA?rel=0" width="420"></iframe></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></p>\r\n	<wbr><wbr><wbr><wbr><wbr><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;"><wbr style="color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 18px;">\r\n	<p>\r\n		&nbsp;</p>\r\n	<p>\r\n		&nbsp;</p>\r\n	</wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></p>\r\n'),
(26, '3', '耳朵借我', 'Lend me your ears', 'Lend me your ears', 'lendmeEARSS.jpg', 'lendmeEARSB.jpg', '2015-11-26 02:27:31', '', '<p>\r\n	耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我耳朵借我aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>\r\n'),
(28, '6', '刺客教條 中國編年史', 'Assassin''s Creed Chronicles China', 'assassin''s creed chronicles', 'accS.jpg', 'accB.jpg', '2015-12-05 09:08:52', '', '<p>\r\n	遊戲的主要舞台設定在16世紀的中國，當時的中國皇帝為剛繼位的嘉靖皇帝，害怕遭到篡位的嘉靖皇帝於是便發起了無數次的滅門行動，位於中國的刺客兄弟會也慘遭毒手，過去曾經受過傳奇刺客‧艾吉歐指導的年輕中國刺客‧少芸，為了重振中國刺客兄弟會，於是便毅然而然地決定返回中國，同時也為了那些被背叛的弟兄們報仇。</p>\r\n'),
(29, '4', '飛彈畫過天際', '我早就想把那個士官長弄掉了', 'knock off', 'flyS.jpg', 'flyB.jpg', '2015-12-02 07:58:55', '', '<p>\r\n	一個懶得去抽的籤，就好像告訴你懶惰的報應使者總在他方等著你，為你送信。大學還沒畢業就收到海軍陸戰隊的令狀，這好像也在暗示往後我的人生應是大起大落的，刺激迂迴，又潛水又著路。</p>\r\n<p>\r\n	還沒當兵前就像其他的鄰家男孩一樣，有著最擔心的恐懼以及未著天際的天真，看不見的，經歷前，就像黑暗籠罩著一切，經歷後，像是耶穌復活日一樣，連「最後的晚餐」都吐了回去。</p>\r\n<p>\r\n	「馬的，我早就想把那個士官長弄掉了。」這是我活了二十四個寒暑聽過最黑暗的一句話，我們的教育教過我們最良善的道理，卻沒告訴我們世上的佛地魔確實存在。</p>\r\n<p>\r\n	我從不以為男生當兵與否是不是真正長大的起跑線，卻是學習了解人性的第一站。也從未那樣偉大要報效國家，只是不願在往後的日子成為別人可以說嘴又或是形成堪尬場面的窘境，若是太平盛世持續下去的話。</p>\r\n<p>\r\n	二○○六年十月二十五日，台灣光復節，也是我的入伍日，一夜沒闔眼，耳邊聽著《熊寶貝》的〈03：54〉專輯（那也是剛開始注意台灣地下樂團的一年），浪漫之後總是有脫下耳機回到俗常生活時候。我照著入伍須知最後逐項清點，按圖索驥想像著下個著陸點是多麼荒蕪偏僻，未來碰到的人事物都是未出遠門大孩子的惶恐。我背上背包，緩緩關上房門，告別了青春的大學生活。</p>\r\n<p>\r\n	走吧！沒甚麼好怕的。</p>\r\n<p>\r\n	列車鏗隆鏗隆作響行駛著，從北至南，城市林立的光景，在一頁一頁的幻燈片快速的滑過逐漸成了稻田青蔥的綠地，水牛哞哞地在田裡來回辛勤工作，農夫帶著斗笠赤腳踩印在泥巴上。經過屏東車站，搭上軍用巴士，司機轉左轉右，我已不清楚方向在哪，直到了看見刻掛五字《終身陸戰隊》的銅像，便知道我們喝喝的軍威聲就從這裡開始。</p>\r\n<p>\r\n	當兵的日子是辛苦，那樣的歇力感不在於汗水的揮灑，不在於軍鞋踩踏過多少黃土，而是禁錮的心靈，和不可違背的命令；那份朝思暮想的自由，在每一個沒有為什麼的日子下渡過，直到迷彩服磨破了，三件缺一件，「永遠忠誠」從深綠退到淡綠；手臂的一條線到脖子上的一個K，無止盡的謾罵聲，轟隆隆的飛彈聲從耳邊揚長而去，一個屛氣的敬禮，一個不敢左瞄右瞄的正氣眼神。</p>\r\n<p>\r\n	更是那些當哨的夜晚，山巒的另一端，警示燈歪斜在前方，獨自一人留著一襲全副武裝，防彈衣著胸口，刺刀掛腰際，K2步槍槍口45度朝下，凜冽的寒風拂拂吹在臉上，我都不知道我站在這裡是幹啥用的。 當然，渾水摸魚之際，我又同時懷念丘陵上那些窩在一小角的「小蜜蜂」，正港的原住民山豬肉，搭著刺鼻的洋蔥，一口咬去，體會真正「解麻」的境界；以及和排副、同僚裹著睡袋在悍馬車的另一頭山丘上探出頭遙望整個星空，最潔淨卻最束縛。</p>\r\n<p>\r\n	走吧，再多的曲折困境都不值得一提，比起往後一面而來「有所有、有所無」的日子，當兵只是一件再小不過的事了。Arcade Fire的〈Wake Me Up〉提醒了我，我們隨時可以轉音低沉至高昂，傷悲到愉快，從谷底到天堂，只要還醒著，只要音符還律動著。 村上春樹在《關於跑步》一書中說：「我不是人，是單純的機器。因為是機器，所以沒必要感覺。只管向前跑。」如果忍耐與機械式的意識也是當兵反覆的真言，那麼我們不必留神面對一顆子彈的戰鬥訓練營有多殘酷，只管向前跑，那些肉體與精神上的限制已不是那麼重要的事了。心靈上的自我存在的過程中，只是一場無實的虛擬夢境。</p>\r\n<p>\r\n	當兵就像是男孩子出社會的初體驗，社會的縮影，那樣的深刻感就如同女孩們多年後咬著牙，全身炙熱般地擠出一個八磅的小瓜地，而再幾年後傾倒出所有回憶寫在某張書頁裡；那樣的體會在逢人談笑風生之間成為佳話，爾後，成為一股勇氣，一股全宇宙都背對著你，仍大步往前的勇敢。</p>\r\n<p>\r\n	2007年11月，剛忙完演習後，輾轉最後一個基地。我數著最後不到的三十顆饅頭，每天除了持續操演外，我帶了個經過挑選而乖巧聰明的學弟，我把一切所知道的、筆記，軍中的大小事務都告訴他。關於哪個長官地雷點在哪小心踩到，關於哪一個學長或許在碰到困難時可以幫忙，甚麼時間需該做甚麼，拉長時間，將會碰到甚麼樣的事。或許自己曾有遇到「與問題訣別」的學長，自己也不希望成為那樣的人，所以對學弟的交接經常抱著能說就說的想法。</p>\r\n<p>\r\n	11月23日星期五下午，離真正生效的退伍日還有五天，但已是最後一天。(我因幫連長寫那「根本不是那回事」的國軍楷模的文稿，被賞了兩天假)。而在最後莒光課，按照以往習俗退伍生都要上台講感言。然而連長當時並不在現場，連上弟兄氣氛融洽，我也在台上講了近十分鐘的感言。上至連長下至每個幹部與學長一一描繪。當我真心話脫口而出心目中的連長時，台下笑成一片，或許是之前的努力，不論說甚麼都引來一陣笑聲，好像所有可享的權利、那些認同，在當兵最後幾個月慢慢浮現出來。</p>\r\n<p>\r\n	我的軍旅生涯並沒爽到上天，也未像是發生第三次世界大戰一樣苦難，卻實實在在地跑了五個地方，之中兩個基地，一場幾近讓人耳鳴的飛彈演習，高裝檢，夜行軍，戰鬥員的泳訓，每日晨跑的三千也從未落隊，接了兩個業務，晉升至下士班長，忙不完的戰備，在鳥不生蛋的地方架電腦打公文，我們被黃土的風塵每天弄得灰頭土臉，被裝甲車的油漬沾了也洗不掉，不是行軍還是行軍，那剛出廠的新的軍鞋，直到磨到一股「老兵」的氣息出來，你才明白那樣幾近小學生一、二、三、四的答數終於有結束的一天。</p>\r\n<p>\r\n	我收拾了最後行囊，歸還所有在入伍第一天拿到的裝備。2007年我在當兵，整整一年像是把自己的Twenty-Something的一份熱血獻了出去。軍營的酸臭味包覆了整個耳膜，在選擇打開與關閉之間，停下了音樂的腳步。拿了退伍令大搖大擺地走到門口，和站哨衛兵說我沒有假單，有一張退伍令，這道國家的聖旨即便讓我看到顆星級長官，都能光明正大的連手都不用舉。右肩背著背包，在營區門口回了頭望去，看著一路從連兵舍走來的道路，那些曾經當兵日子突然引來的聲光氣味，那些種種回憶，是的，彷彿是一場虛擬夢境一樣。</p>\r\n<p>\r\n	早晨安官桌的哨兵六點整吹了一聲長哨，從營部、一連、二連像是骨牌效應，大聲喊叫起床，不到三十秒的時間我整好床舖，下了床走到走廊，順勢繞到廁所打開水龍頭積口水在雙手上，漱了口，便快步走至連兵舍前集合&hellip;</p>\r\n'),
(30, '6', '機械迷城', 'Machinarium', 'Machinarium', 'machinariumS.jpg', 'machinariumB.jpg', '2015-12-02 14:20:12', '', '<p>\r\n	<span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.4px;">《</span><strong style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.4px;">機械迷城</strong><span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.4px;">》</span><span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.4px;">（英語：<i><span lang="en" xml:lang="en">Machinarium</span></i>）</span><span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.4px;">是一款點擊式</span><a href="https://zh.wikipedia.org/wiki/%E5%86%92%E9%99%A9%E6%B8%B8%E6%88%8F" style="text-decoration: none; color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.4px; background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" title="冒險遊戲">冒險遊戲</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.4px;">，由</span><a class="new" href="https://zh.wikipedia.org/w/index.php?title=Amanita_Design&amp;action=edit&amp;redlink=1" style="text-decoration: none; color: rgb(165, 88, 88); font-family: sans-serif; font-size: 14px; line-height: 22.4px; background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" title="Amanita Design (頁面不存在)">Amanita Design</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.4px;">製作並發布於2009年10月16日。</span><a href="https://zh.wikipedia.org/wiki/Microsoft_Windows" style="text-decoration: none; color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.4px; background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" title="Microsoft Windows">Microsoft Windows</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.4px;">、</span><a class="mw-redirect" href="https://zh.wikipedia.org/wiki/Mac_OS_X" style="text-decoration: none; color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.4px; background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" title="Mac OS X">Mac OS X</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.4px;">和</span><a href="https://zh.wikipedia.org/wiki/Linux" style="text-decoration: none; color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.4px; background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" title="Linux">Linux</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.4px;">平台皆可。其中PC和Mac的試玩版發布於2009年9月30日。</span></p>\r\n'),
(31, '3', '在遠方相遇', 'wish you were here', 'wish you were here', 'wishuwerehereS.jpg', 'wishuwerehereB.jpg', '2015-12-05 08:15:52', '', '<p>\r\n	昨晚徹夜未眠，飛機揚升到一萬公尺的高空前，我沉沉睡去。 半夢半醒間，有名空姐輕拍我的肩膀，柔聲把我喚醒：「先生，喝茶還是咖啡？」一般情況下，空姐不會驚擾睡熟的旅客，她似乎比較固執，堅持要我喝點什麼。 「嗯&hellip;&hellip;咖啡就好，糖和奶球都不用。」 空姐幫我倒了一杯咖啡，彎身時我瞄到別在她制服上的名牌，刻著一個獨特的英文名字：Mrs Magpie，髮圈上的透明圓珠則印有哭泣小熊的圖案。 難道我潛入了誰的夢裡？ 或許吧，如果一年前的今天誰向我預言，Stone Roses會重組，Radiohead終將來訪台灣，而兩場演出相隔不到二十四小時，我肯定會當那是痴人說夢。偏偏搖滾樂迷全是痴人，不論歷時多久，非用聚合的念力讓美夢成真，才善罷干休。大學時代填寫過的那張「支持Radiohead來台」連署單，我歷歷在目。</p>\r\n');

-- --------------------------------------------------------

--
-- 資料表結構 `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表新增前先清除舊資料 `category`
--

TRUNCATE TABLE `category`;
--
-- 資料表的匯出資料 `category`
--

INSERT INTO `category` (`category_id`, `image`, `parent_id`, `status`) VALUES
(1, NULL, 0, 0),
(2, NULL, 0, 0),
(3, NULL, 0, 0),
(4, NULL, 0, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `category_description`
--

DROP TABLE IF EXISTS `category_description`;
CREATE TABLE IF NOT EXISTS `category_description` (
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表新增前先清除舊資料 `category_description`
--

TRUNCATE TABLE `category_description`;
--
-- 資料表的匯出資料 `category_description`
--

INSERT INTO `category_description` (`category_id`, `name`, `description`) VALUES
(1, '音樂', ''),
(2, '電影', ''),
(3, '讀物', ''),
(4, 'think', ''),
(5, '程式', ''),
(6, 'game', '');

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
-- 資料表新增前先清除舊資料 `home`
--

TRUNCATE TABLE `home`;
--
-- 資料表的匯出資料 `home`
--

INSERT INTO `home` (`id`, `title`, `slug`, `text`) VALUES
(1, 'test1234', 'how', 'i am charisma');

-- --------------------------------------------------------

--
-- 資料表結構 `image`
--

DROP TABLE IF EXISTS `image`;
CREATE TABLE IF NOT EXISTS `image` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `thumb` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `large` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表新增前先清除舊資料 `image`
--

TRUNCATE TABLE `image`;
--
-- 資料表的匯出資料 `image`
--

INSERT INTO `image` (`id`, `category_id`, `title`, `date`, `thumb`, `large`) VALUES
(1, 3, '寶藏巖藝術村', '2015-12-05', 'Hill_ArtivistsS.jpg', 'Hill_ArtivistsB.jpg');

-- --------------------------------------------------------

--
-- 資料表結構 `imagecategory`
--

DROP TABLE IF EXISTS `imagecategory`;
CREATE TABLE IF NOT EXISTS `imagecategory` (
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表新增前先清除舊資料 `imagecategory`
--

TRUNCATE TABLE `imagecategory`;
--
-- 資料表的匯出資料 `imagecategory`
--

INSERT INTO `imagecategory` (`category_id`, `name`) VALUES
(1, 'people'),
(2, 'event'),
(3, 'thing');

-- --------------------------------------------------------

--
-- 資料表結構 `recently`
--

DROP TABLE IF EXISTS `recently`;
CREATE TABLE IF NOT EXISTS `recently` (
  `new_id` int(11) NOT NULL,
  `new_category_id` int(11) DEFAULT NULL,
  `youtubeurl` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `write_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表新增前先清除舊資料 `recently`
--

TRUNCATE TABLE `recently`;
--
-- 資料表的匯出資料 `recently`
--

INSERT INTO `recently` (`new_id`, `new_category_id`, `youtubeurl`, `img`, `title`, `write_time`) VALUES
(1, 1, 'https://www.youtube.com/embed/2XVwA4XCDeM?start=355', 'wild_Life_of_Pause.jpg', 'wild nothing to know you & tv queen', NULL),
(3, 6, 'https://www.youtube.com/watch?v=hWs6pIOT1o8', 'assassin''s_creed_chronicles.jpg', 'Assassin''s Creed Chronicles', NULL),
(4, 3, '', 'honeypie-book.jpg', '歌物件', NULL),
(5, 2, 'https://www.youtube.com/watch?v=0FbondK2iOk', 'The_Grand_Masters_poster.png', '一代宗師', NULL),
(6, 3, '', 'Wong_Kar_Wai.jpg', '王家衛的映畫世界', NULL),
(8, 1, 'https://www.youtube.com/embed/LYqq7aHIvoA?rel=0', 'beautiful.png', 'Gui Boratto Chromophobia', NULL),
(9, 2, 'https://www.youtube.com/embed/1GUXIwTrbT0?rel=0', 'Ashes_of_time_redux1.jpg', '東邪西毒', NULL),
(10, 4, 'https://www.youtube.com/watch?v=I_3pd5ZmjVA', 'kobedearball.jpg', 'Dear Basketball', NULL),
(12, 5, '', 'jquery.png', '邁向jQuery達人的階梯', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `recently_category`
--

DROP TABLE IF EXISTS `recently_category`;
CREATE TABLE IF NOT EXISTS `recently_category` (
  `id` int(11) NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表新增前先清除舊資料 `recently_category`
--

TRUNCATE TABLE `recently_category`;
--
-- 資料表的匯出資料 `recently_category`
--

INSERT INTO `recently_category` (`id`, `description`) VALUES
(1, 'music'),
(2, 'movie'),
(3, 'paper'),
(4, 'think'),
(5, 'programming'),
(6, 'game');

-- --------------------------------------------------------

--
-- 資料表結構 `something_new`
--

DROP TABLE IF EXISTS `something_new`;
CREATE TABLE IF NOT EXISTS `something_new` (
  `new_id` int(11) NOT NULL,
  `new_category_id` int(11) DEFAULT NULL,
  `picture` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表新增前先清除舊資料 `something_new`
--

TRUNCATE TABLE `something_new`;
-- --------------------------------------------------------

--
-- 資料表結構 `something_new_category`
--

DROP TABLE IF EXISTS `something_new_category`;
CREATE TABLE IF NOT EXISTS `something_new_category` (
  `id` int(11) NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表新增前先清除舊資料 `something_new_category`
--

TRUNCATE TABLE `something_new_category`;
--
-- 資料表的匯出資料 `something_new_category`
--

INSERT INTO `something_new_category` (`id`, `description`) VALUES
(1, 'music'),
(2, 'movie'),
(3, 'paper'),
(4, 'think'),
(5, 'programming'),
(6, 'game');

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(96) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表新增前先清除舊資料 `user`
--

TRUNCATE TABLE `user`;
--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`article_id`), ADD UNIQUE KEY `article_id` (`article_id`);

--
-- 資料表索引 `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- 資料表索引 `category_description`
--
ALTER TABLE `category_description`
  ADD PRIMARY KEY (`category_id`);

--
-- 資料表索引 `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`), ADD KEY `slug` (`slug`);

--
-- 資料表索引 `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `imagecategory`
--
ALTER TABLE `imagecategory`
  ADD PRIMARY KEY (`category_id`);

--
-- 資料表索引 `recently`
--
ALTER TABLE `recently`
  ADD PRIMARY KEY (`new_id`);

--
-- 資料表索引 `recently_category`
--
ALTER TABLE `recently_category`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `something_new`
--
ALTER TABLE `something_new`
  ADD PRIMARY KEY (`new_id`);

--
-- 資料表索引 `something_new_category`
--
ALTER TABLE `something_new_category`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `article`
--
ALTER TABLE `article`
  MODIFY `article_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- 使用資料表 AUTO_INCREMENT `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- 使用資料表 AUTO_INCREMENT `home`
--
ALTER TABLE `home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- 使用資料表 AUTO_INCREMENT `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- 使用資料表 AUTO_INCREMENT `imagecategory`
--
ALTER TABLE `imagecategory`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- 使用資料表 AUTO_INCREMENT `recently`
--
ALTER TABLE `recently`
  MODIFY `new_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
