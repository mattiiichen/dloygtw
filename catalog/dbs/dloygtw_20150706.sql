-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2015 at 01:21 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dloygtw`
--
CREATE DATABASE IF NOT EXISTS `dloygtw` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `dloygtw`;

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `article_id` int(3) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `write_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `content` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`article_id`, `title`, `img`, `write_time`, `content`) VALUES
(1, '我的藍梅夜', '', '2015-07-06 10:11:52', '2008年我坐在電影院裡的沙發座上屈指可數，彷彿像窮人家小孩口袋裡零星數得出來的銅幣聲響；反視音樂，若實體一張挨著一張購入算起，去年每月至少平均有五張音樂專輯流入黃色資料夾，雖不甚多，但能像積木搭起CD音樂盒的城堡也可見一般。這年，也是聆聽音樂記錄的頭一年。\r\n\r\n這部電影著實讓我反轉拉了進度軸許多回。頭幾次用中文字幕觀影，再轉換以英文作旁白，最後捨了字幕上的陪襯，電影成了真實生活的立體鏡頭。在這交錯的方式觀賞，每回悟出的心得都不盡相同。王家衛的電影要說的思維一向不簡單，雖然我曾一人觀賞《花樣年華》悶到整個看不懂也頭痛，不過想起那才二十郎當初蒙昧的年記，領略感知的熱度像是電影院剛開啟的爆米花機一樣怎麼也爆不出香味來。但卻好像也從不介意自己那樣子過。然而《我的藍梅夜》像是翻版於94年的《重慶森林》以用最普實簡單的劇本，鋪陳了關乎愛情世界裡的距離與時間。\r\n\r\n影像回盪在《重慶森林》編號633巡邏警察(梁朝偉飾)習慣對著東西說話，以填滿空曠的內心世界；阿菲(王菲飾)總是扭大音響音量，伴隨著鼓譟的搖滾樂築起小小世界，只有她在裡面。想起這都市愛情，反於《我的藍梅夜》Jeremy卻用無止盡的漫長等待，拉近了Beth的旅途距離，一字一跡反覆的Postcard和一把仍不願隨意丟棄的鑰匙。愛情中，無法遮掩的美好，仍舊如此。\r\n\r\n片中穿插一覺醒來沒感覺甩掉酗酒警察Arnie的Sue Lynne，戀人們的繩索太過緊束總讓人窒息；和Fuck You Very Much的女賭徒，賭桌上卻藏不住真切想愛父親的堅強；每段小故事都讓Elizabeth重新看待自己，不論旅行何處，自然回到最原點，也找到自己不再茫然若失的去向。\r\n\r\nIn the last few days, I’ve been learning how to not trust people and I’m glad I failed. Sometimes we depend on other people as a mirror. To define us and tell us who we are. And each reflection makes me like myself a little more.\r\n\r\n在最後的日子裡，我學著如何不去相信人們，但很高興我失敗了。有時我們把人們當作一面鏡子，去定義自己與告訴，我們是什麼樣的人。而每一次的反射都讓我更愛自己一點。\r\nHighslide JS \r\n這段像是廣漠無邊的公路式電影所萌出的被我視為的佳句，好一段時間以它為生活重心。曾幾何時我們都像Beth那樣的天真與純粹，相信所有的良善能帶給人們所有適切般的美好。這力量，這意識足以摧擊社會體制下爛腔濫調的虛偽面具，跨越既壓抑又激亢的媚俗世代，而回到那樣多愁善感的鄉土種子。在大多時候，我們是這樣。\r\n\r\n於是，等待與憧憬成了我觀賞這部電影的主軸，擺著一幅披著壁紙的畫依靠在長方型的石坐椅旁，背後不清楚有幾張電影宣傳海報，暗色晝明，燈光斜斜打入，我坐著那，聽著音樂。假草地遍及四周，一杯咖啡還在桌上冒煙，鐵欄竿門外人群穿梭來去。\r\n\r\n等待那份憧憬的出現。\r\n'),
(2, '一間唱片行的夢想', '', '2015-07-06 11:02:09', '懶人說，Live House的樂團可是沒有開場的，當第一個音落下時，他們的表演就開始了。\r\n\r\n中秋節快結束的夜晚匆匆忙忙往展演廳奔去，手扶梯才把我推到六樓，蕭青陽大哥設計的音樂枝巢一片映入眼簾，而那家每個人心目中的唱片行只隔著一塊落地玻璃的距離，坐落在我眼前。\r\n\r\n我走進裡頭，一疊疊黑膠放置在木箱隔間。對於我這遲來的外來客，準備打洋的店員們只說音符棒棒糖五十元，並在我面前表演了像是魔術方塊三折式的宣傳卡片。而每人臉上漾起的笑容像是又過了一場美好的音樂饗宴。\r\n\r\n環顧四周，仔細地看著存放在這十天唱片行裡的每一樣物品。屋內中間拉下幾盞直落落的舊式燈泡，似乎同時也照亮了每一張舊時代的黑膠唱片；唱機放置在放銀檯旁，以透明殼蓋上，卻蓋不住愛樂者的聲音；而牆上貼著那些我似而熟卻不陌生的樂團獨白，我找不到需要離開的理由。走出唱片行，步了幾步距離，看到它的全貌，也同時看見被放進的美術指導郭志達先生的理想。\r\n\r\n記得郭先生曾說，當你有夢想時，記得要一條條把它寫在一張白紙上，每一時刻都要提醒自己。多年之後，你就會慢慢發現當初的理想，已漸漸實現。對他而言，我想這唱片行便是其中之一。\r\n\r\n  \r\n[陳德政20歲的搖滾帳棚]\r\n\r\n陳德政詭異要睡在這一夜的帳篷在另一旁，那是他在二十歲的那年夏天，唯一一個東方人參加英國V99與Read Festival兩場音樂祭所陪伴的帳棚，裡頭還掛著一個夜間小燈。他把當時旅途上的火車票根，Blur樂團海報、所有紀念小物都展示出來，標題列著─「二十歲的搖滾夢」。牆壁上留著他的文字，他的青春也從此留住了。\r\n\r\n回繞在另一旁，馬世芳的記憶卡帶，一捲交著一捲排疊起來，引文摘錄了我所熟悉的那本《地下鄉愁藍調》裡關於那美麗寂寞的噪音─「搖滾樂其實是很矛盾的。看似熱鬧，實則無處不浸透著寂寞。它的核心往往就是『和這個世界過不去』的寂寞。而那撼動了整個世代的、真正了不起的搖滾樂，便是找到了那條紐帶，把千千萬萬的寂寞和蕭條，串織在一塊兒。」我讀到此，倏然而至的寂寞，再也找不到。\r\n\r\n當所有展演廳的工作人員隨著下班離去時，就連後來才知道的吉他手小白的衣杉留在舞台上忘了帶回，只剩我一個人站在廳裡中央，一片靜寂，燈光暗下。望著舞台去，我見不著甜梅號的身影，他們前一個小時已表演完，可是想像力似乎停留在氛圍裡，我將雙眼微微閉上，彷彿他們剛在台上演出的影像卻如一格格幻燈片在腦海中浮現而不斷翻頁。對於一直伏在角落這些的音樂人，其實他們沒有需要過多的投射燈去放亮這些心中小事。\r\n\r\n雖然和小白擦肩而過，也忘了感謝他那首曾讓我勾起一幅在操場跑跳景象的「體育」的音樂，陪伴過我一段時間，這台灣最具潛力的後搖樂團。\r\n\r\n無論如何，我們的搖滾夢從這一間唱片行開始。\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

DROP TABLE IF EXISTS `home`;
CREATE TABLE IF NOT EXISTS `home` (
  `id` int(11) NOT NULL,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`id`, `title`, `slug`, `text`) VALUES
(1, 'test1234', 'how', 'i am charisma');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`article_id`), ADD UNIQUE KEY `article_id` (`article_id`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`), ADD KEY `slug` (`slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
