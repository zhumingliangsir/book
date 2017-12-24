﻿SET NAMES UTF8;
/**用户信息表**/
CREATE TABLE jd_user( 
  uid INT PRIMARY KEY AUTO_INCREMENT,  
  uname VARCHAR(32),    
  upwd VARCHAR(32)
);
INSERT INTO jd_user VALUES
(10, 'koma', 'enen'),
(20, 'naicha', '123456');

/**产品信息表**/
CREATE TABLE jd_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,  
  pname VARCHAR(64),
  pname_en VARCHAR(100),  
  price FLOAT(8,2),  
  pic VARCHAR(32),
  picone VARCHAR(32),
  detailInfo VARCHAR(1000)
);
INSERT INTO jd_product VALUES
(1,
'人性的弱点',
'ruodian',
59.00,
'images/book/book01.jpg',
'images/book/book/book01.jgp',
'戴 尔·卡耐基，美国“成人教育之父”。20世纪早期，美国经济陷入萧条，战争和贫困导致人们失去了对美好生活的愿望，而卡耐基独辟蹊径地开创了一套融演讲、 推销、为人处世、智能开发于一体的教育方式，他运用社会学和心理学知识，对人性进行了深刻的探讨和分析。他讲述的许多普通人通过奋斗获得成功的真实故事， 激励了无数陷和迷茫和困境的人，帮助他们重新找到了自己的人生。
接受卡耐基教育的有社会各界人士，其中不乏军政要员，甚至包括几位美国总结。千千万万的人从卡耐基的教育中获益匪浅。
本书汇集了卡耐基的思想精华和激动人心的内容，是作者成功的励志经典，出版后立即获得了广大读者的欢迎，成为西方世界持久的人文畅销书。无数读者 通过阅读和实践书中介绍的各种方法，不仅走出困境，有的还成为世人仰慕的杰出人士。只要不断研读本书，相信你也可以发掘自己的无穷潜力，创造辉煌的人生。
'),
(2,
'人生若只如初见',
'rensheng',
35.00,
'images/book/book02.jpg',
'images/book/book02.jpg',
'《人生若只如初见:古典诗词的美丽与哀愁(增订版)》内容简介：人生若只如初见，仿佛，这样重要。可是，此一生，与谁初见又有什么关系呢？你看，这些轮回了千年的花种，至今还在无我无他地盛开。
*新增订，扩充六万字；馈赠珍藏，绝佳之版本。
《人生若只如初见:古典诗词的美丽与哀愁(增订版)》，畅销书作家安意如成名作，她对古典的诗词精粹进行了优美而细腻的赏析。她逃离刻板严肃的面孔，以丰富的情感溶化时间的悠远，以自由的姿态激扬文字，以优雅飘逸的笔调倾诉古典诗词的美丽与哀愁。在她笔下，那江山美人的至真哀怨，那才子佳人的离情悲欢，那一幕幕凄美欢欣的旷世之恋，浪漫而清新，纯真而唯美。  
 
安意如 

安意如，徽州女子，现居北京。2006年因古典诗词赏析随笔《人生若只如初见》《当时只道是寻常》《思无邪》等声名鹊起，后又出版《观音》，《惜春纪》《陌上花开》《美人何处》《世有桃花》等。
喜欢旅行，美容，美食，美人。
'),
(3,
'陌上花开',
'moshanghuakai',
59.00,
'images/book/book03.jpg',
'images/book/book/book03.jpg',
'《世有桃花》
安意如“古典美学三境界”之《世有桃花》，品读古典诗词的最美意象。
从 《诗经》初嫁，到秦汉飘摇、唐之明艳、宋之清丽，桃花的意象在古典诗词中绵延不绝，遮蔓、轮回，人们很容易弄清松竹梅兰在中国文化中的象征意义，但不是很 容易弄明白桃花这样东西的文化内涵。桃花在中国，太复杂，但凡想起，先有一言难尽的暧昧。将一朵桃花看开，它就自成世界。
49篇唯美文字，以诗词为源头，以桃花为入口，将古往今来的情缘一一道尽。
 
《美人何处》
安意如在《美人何处》中，以古典与现代激荡的感性文笔，充满悲悯的情怀，再次演绎了那些曾经站在历史浪尖上的美人们的人生际遇。从褒姒、息妫，到鱼玄机、陈圆圆，"借光阴的红线，在若隐若现的记忆中寻觅她们，如那唐朝的多情少年，花香脉脉，落英盈盈，唯树下不见伊人。"
 
《陌上花开》
乐府歌诗"皆感于哀乐，缘事而发"。因直抒胸臆，发自肺腑，相较精致雕琢的文人诗，另有一番动人魅力。
古典诗词鉴赏第一人、才女安意如以其独一无二、唯美感性的文笔，溶合通透、缠绵的诗歌、丰富细腻的史料于一体，生动复原近百首古意盎然的乐府诗词原本面貌，完美呈现两汉、魏晋、南北朝光怪陆离的精神风貌、艺文风采。'),
(4,'三国演义','sanguoyanyi',44.00,'images/book/book04.jpg','images/book/book/book04.jpg','《三国演义》是中国古典四大名著之一，是中国第一部长篇章回体历史演义小说，全名为《三国志通俗演义》（又称《三国志演义》），作者是元末明初的著名小说家罗贯中。
《三国演义》描写了从东汉末年到西晋初年之间近105年的历史风云，以描写战争为主，诉说了东汉末年的群雄割据混战和魏、蜀、吴三国之间的政治和军事斗争，最终司马炎一统三国，建立晋朝的故事。反映了三国时代各类社会斗争与矛盾的转化，并概括了这一时代的历史巨变，塑造了一批叱咤风云的三国英雄人物。
全书可大致分为黄巾之乱、董卓之乱、群雄逐鹿、三国鼎立、三国归晋五大部分。在广阔的背景上，上演了一幕幕气势磅礴的战争场面。编者罗贯中将兵法三十六计融于字里行间，既有情节，也有兵法韬略。'),
(5,'红楼梦','hongloumeng',109.00,'images/book/book05.jpg','images/book/book/book05.jpg','《红楼梦》的作者具有初步的民主主义思想，他对现实社会包括宫廷及官场的黑暗、封建贵族阶级及其家庭的腐朽，封建的科举制度、婚姻制度、奴婢制度、等级制度，以及与此相适应的社会统治思想即孔孟之道和程朱理学、社会道德观念等，都进行了深刻的批判，并提出了朦胧的带有初步民主主义性质的理想和主张。[5]  
《红楼梦》以“大旨谈情，实录其事”自勉，只按自己的事体情理，按迹循踪，摆脱旧套，新鲜别致[1]  ，取得了非凡的艺术成就。“真事隐去，假语村言”的特殊笔法更是令后世读者脑洞大开，揣测之说久而遂多[3]  。围绕《红楼梦》的品读研究形成了一门显学——红学。'),
(6,'中华成语故事大全集','chengyu',99.00,'images/book/book06.jpg','images/book/book06.jpg',' 春秋时期，吴王夫差为了替父亲报仇，率兵攻打越国，把越王勾践和他的5000名残兵败将围困在会稽山上。勾践听从了大臣范蠡的主张，打算求和。
    勾践便派大臣文种到吴王营里去求和。夫差打算同意，可吴国大夫伍子胥坚决不肯。他告诫夫差说：“古语说得好，‘建树德行*好是不断培植，去掉毒害*好是消除干净’。”接着，他就给夫差讲了夏朝时期的一个故事。
    夏朝的时候，过氏部落首领浇杀了斟灌，攻打斟寻，灭了夏朝的后相，后相的妻子后缗逃走了，后来生下了一个儿子，名叫少康。少康逃到有虞部落里，做上了官。酋长还把两个女儿嫁给少康为妻，并将纶邑这个地方封给他，纶邑虽然地方不大，只有十里见方，人口也只有500，也就是所谓的一成一旅，但少康到那里以后，广施恩德，安抚下属，积极训练军队。当时机成熟了，就率兵攻打过国、戈国，灭了它们，恢复了夏朝的天下。这就是“少康中兴”的故事。
    伍子胥讲完这个故事后， '),
(7,'弟子规','dizigui',28.00,'images/book/book07.jpg','images/book/book/book07.jpg','《弟子规》原名《训蒙文》，为清朝康熙年间秀才李毓秀所作。其内容采用《论语》“学而篇”第六条：“弟子入则孝，出则悌，谨而信，泛爱众，而亲仁。行有余力，则以学文。”的文义，以三字一句、两句一韵编撰而成。全文共360句、1080个字，分为七个部分：即孝、悌、谨、信、爱众、亲仁、学文，前六项属于德育修养，后一项属于智育修养，列述弟子在家、出外、待人、接物与学习上应该恪守的守则规范，特别讲求家庭教育与生活教育的践行。后经清朝贾存仁修订改编，并改名为《弟子规》。'),
(8,'老人与海','laorenyuhai',43.00,'images/book/book08.jpg','images/book/book/book08.jpg',' 《老人与海》是海明威晚年最杰出的一部作品。故事很简单：一位名叫圣地亚哥的老渔夫在连续八十四天没有捕到鱼的情况下，在远离陆地的大海上遇到了一条巨大的马林鱼。经过三天三夜耐力与毅力的较量，圣地亚哥终于杀死了那条大马林鱼。可在他返航的途中，却遭到了鲨鱼的袭击，当他终于回到港口时，那条大马林鱼只剩下鱼头、鱼尾和一条光秃秃的脊骨。
,   海明威（1899-1961），美国小说家，1954年获得诺贝尔文学奖，“硬汉”是海明威作品中经常塑造的人物形象，《老人与海》中的圣地亚哥就是其中最为典型的一个。 1952年，海明威发表了《老人与海》这部中篇小说，通过圣地亚哥老人这个“打不败”的经典形象，热情颂扬了人类面对艰难时期所显示出的坚不可摧的精神力量，正像海明威所说的：“我试图描写一个真正的老人……然而，如果我能写得足够逼真，他们也能代表许多其他的事物。” '),
(9,'不抱怨的世界','bubaoyuandeshijie',82,'images/book/book09.jpg','images/book/book/book09.jpg','一本震惊世界的心灵励志书，它用一只手环向我们传递了“抱怨不如改变”的生活理念，据不完全统计，该书上市不到一个月，就有600万人参与了“不抱怨”活动，并迅速蔓延到全球80多个国家。在美国《时代周刊》与《纽约时报》联合美国NBC电视台发起的“影响你一生最重要的一本书”投票中，它仅次于《圣经》。世界首富比尔·盖茨在推荐这本书时说：没有人能拒绝这样一本书，除非你拒绝所有的书。
《不抱怨的世界》是畅销全球80国的世界级励志书！世界500强企业团购率第1！冯仑、唐骏、张德芬、奥普拉感动推荐！美国亚马逊、台湾金石堂、诚品书店心灵励志新书销量第1名！'),
(10,'做最好的自己','zuozuihaodeziji',63.00,'images/book/book10.jpg','images/book/book10.jpg','在生活中，有竞争也有合作。在学校生活中也不例外，有很多人会只顾竞争，一味的羡慕学习好的人，总想成为像那些人一样优秀的人，但谁又真正努力想过：人的一生应当怎样度过。
在这本书里的许多想法都是作者在过去的文章或信函中表达过的。而且，如果由职业作家来写本书，语言以及文字一定能更加流畅、更加生动。但是，作者自己总有一种提笔写作的冲动，因为作者相信自己在青年一代中有一定的影响力，作者希望能尽力帮助他们。'),
(11,'你在为谁读书','nizaiweishuidushu',32.00,'images/book/book12.jpg','images/book/book12.jpg','本书通过小说加书信体的形式寓教于乐，塑造了五位性格特征各异的少年，他们在学习与生活中遇到许多困难和有趣的故事，性格的缺陷得以充分的表现，在“心仪”的指导下，他们历经了痛苦的自我改造过程，最终都成就了“最好的自己”——努力克服自己的性格缺陷，充分发挥自己的长处，学业、人品双优，成为了最好的自己！'),
(12,'静下心来，找回自己','zhaohuiziji',41.00,'images/book/book17.jpg','images/book/book17.jpg','这个世界，有太多的不如意，其实仔细想来，有什么能比活着更重要呢？压力，烦恼，贫穷……一切的不如意，只要你静下心来，终究有办法去改变，只有静心才能完美。
本书通过大量贴近生活的事例，精练其要点，并从人生随时要静心、浮躁中修好这颗心、活在当下静心修行、慢生活，简生活、寂寞是人生的一场修行、放下是一种美丽与拥有等，不同角度对文章进行了解读，引导你在面对生活压力、工作、婚姻爱情的同时，要静心如水地面对，不要迷失自我，只有静下心来，才能找到自己的精神家园。
静心的力量，带给你宁静而清澈的心灵，藉以击退浮躁与喧嚣，重获身心灵的丰盈、坦荡和宁静……'),
(13,'把时间当做朋友','bashijiandangzuopengyou',53.00,'images/book/book13.jpg','images/book/book13.jpg','为什么你总是说“没有时间了”，勤奋而又懒惰？最节省时间的方式是学习，为什么你砍柴而不肯磨刀？基于过程的记录，为什么迥异于基于结果的记录？一个人对时间的精确感知能力真的能训练得像特异功能？都是平凡人，为什么若干年后彼此已成天壤之别？时间这条船，为什么只送心智成熟的人去往梦想的彼岸？绝大多数的成功根本与智商没有任何关系，所有的失败都与且只与时间限制有关。当你把时间花费到一个人身上的时候，相当于在他的身上倾注了你生命的一段，哪管最终的结果如何，反正，那个人那件事都成了你生命中的一部分，不管最后你喜欢还是不喜欢。['),
(14,'人际交往心理学','jiaowangxinlixue',77.00,'images/book/book14.jpg','images/book/book14.jpg','在当今社会大变革中,新情况像潮水般地涌现在人们的面前,学业、求职、就业、竞争动荡不居,瞬息万变;在人与人的交往中,又往往有着许多说不清、道不明的烦恼和困惑。所有这一切,使不少人在心理常常感到一种重负,一种压抑,渴望着能够尽快地加以自我调节,以适应如此眼花縩乱、变化万千的社会变革。有了人际往心理学的指导。我们就可以在人际交往的过程中,有意识、有目的地寻找和采用必要的手段和途径,协调好各方人际关系,进而在良好的人际交往基础上获得生活、学习和工作等方成功。这就是本教材编写的目的。'),
(15,'舍得','shede',84.00,'images/book/book15.jpg','images/book/book15.jpg','划线价格
指商品的专柜价、吊牌价、正品零售价、厂商指导价或该商品的曾经展示过的销售价等，并非原价，仅供参考。
未划线价格
指商品的实时标价，不因表述的差异改变性质。具体成交价格根据商品参加活动，或会员使用优惠券、积分等发生变化，最终以订单结算页价格为准。
此说明仅当出现价格比较时有效，具体请参见《淘宝价格发布规范》。若商家单独对划线价格进行说明的，以商家的表述为准。'),
(16,'沉住气，成大器','chenzhuqi',32.00,'images/book/book16.jpg','images/book/book16.jpg','《沉住气成大器》是2009年中国华侨出版社出版的图书，作者是周增文。
《沉住气成大器》主要讲述了：面对百味人生，面对世事百态，我们需要潜伏的是不平之气，消沉之心，躁动之性和致远之志，需要张扬的是自信，勇气，愈挫愈勇和百折不饶。一句话：沉得低，才能跳得远；沉住气，才能成大器。天下有大勇者，卒然临之而不惊，无故加之而不怒。此其所挟持者甚大，而其志甚远也。成就完美自我的14道心性修炼'),
(17,'名人传','mingrenzhuan',41.00,'images/book/book17.jpg','images/book/book17.jpg','《名人传》，是19世纪末20世纪初法国著名的批判现实主义作家罗曼·罗兰（1866~1944年）创作的人物传记作品，它包括《贝多芬传》（1903）、《米开朗琪罗传》（或译作米开朗基罗）（1906）、《托尔斯泰传》（1911）三部传记。被称为“三大英雄传记”，也称“巨人三传”。现已被选中为人教版八年级下册语文名著阅读。这本书也非常好地印证了一句中国人的古训：古今之成大事业者，非惟有超世之才，亦必有坚韧不拔之志。'),
(18,'我的大学','wodedaxue',67.00,'images/book/book18.jpg','images/book/book18.jpg','《我的大学》是高尔基著名自传体小说《人生三部曲》中的一部。其余两部为《童年》、《在人间》。作者描写了他青年时代的生活经历。从这个被真实记述下来的过程中，我们可以看出青少年时代的高尔基对小市民习气的深恶痛绝，对自由的热烈追求，对美好生活的强烈向往，在生活底层与劳苦大众的直接接触，深入社会，接受革命者思想影响和如饥似渴地从书籍中汲取知识养料使他得以成长，从生活底层攀上文化高峰的重要条件。'),
(19,'微表情，心理学','weibiaoqing',48.00,'images/book/book19.jpg','images/book/book19.jpg','《微表情心理学》收集了各种微表情，并结合实际情况加以说明，教你从人的面部表情、行为举止、言谈之间、日常习惯、兴趣爱好等方面捕捉、分析、判断人的微表情。希望读者阅读后，可以得到一双识人的慧眼。一把度人的尺度，通过灵活运用微表情心理学，从体态上辨认人的性格，从谈吐中推断人的修养，从习惯中观察人的心机。从细微处洞悉人的气质，能在职场、商场、情场等各种场合中左右逢源、运筹帷幄，一切尽在掌握中！'),
(20,'哈佛，凌晨四点半','hafuo',61.00,'images/book/book20.jpg','images/book/book20.jpg','凌晨4点多的哈佛大学图书馆里，灯火通明，座无虚席……哈佛的学生餐厅，很难听到说话的声音，每个学生端着比萨可乐坐下后，往往边吃边看书或是边做笔记。很少见到哪个学生光吃不读，也很少见到哪个学生边吃边闲聊。在哈佛，餐厅不过是一个可以吃东西的图书馆，是哈佛正宗100个图书馆之外的另类图书馆。哈佛的医院，同样的宁静，同样的不管有多少在候诊的人也无一人说话，无一人不在阅读或记录。医院仍是图书馆的延伸。于是，哈佛的诺贝尔奖得主有33位；哈佛产生的美国总统有7位。哈佛校园里，不见华服，不见化妆，更不见晃里晃荡，只有匆匆的脚步，坚实地写下人生的篇章。哈佛不是神话，哈佛只是一个证明，人的意志，精神，抱负，理想的证明。《哈佛凌晨4点半》从哈佛所具备的精神和气质出发，从培养青少年的品质切入，从理想志向、习惯、性格、情商等方面引导青少年从平凡走向卓越！'),
(21,'人性的弱点','renxingderuodian',55.00,'images/book/book01.jpg','images/book/book01.jpg','该书汇集了卡耐基的思想精华和最激动人心的内容，是作者最成功的励志经典，出版后立即获得了广大读者的欢迎，成为西方世界最持久的人文畅销书。无数读者通过阅读和实践书中介绍的各种方法，不仅走出困境，有的还成为世人仰慕的杰出人士。只要不断研读本书，相信你也可以发掘自己的无穷潜力，创造辉煌的人生。
世界成功学第一书，戴尔·卡耐基成功学教育全书之一！世界上最畅销、最经典、最实用的为人处世参考书。“成人教育之父”戴尔·卡耐基的思想精华和最激动人心的内容，帮助你解决你所面临的最大问题：如何在你的日常生活、商务活动与社会交往中与人打交道，并有效地影响他人；如何击败人类的生存之敌——忧虑，以创造一种幸福美好的人生。'),
(22,'人生若只如初见','rensheng',37.00,'images/book/book02.jpg','images/book/book02.jpg','《人生若只如初见:古典诗词的美丽与哀愁(增订版)》内容简介：人生若只如初见，仿佛，这样重要。可是，此一生，与谁初见又有什么关系呢？你看，这些轮回了千年的花种，至今还在无我无他地盛开。
*新增订，扩充六万字；馈赠珍藏，绝佳之版本。
《人生若只如初见:古典诗词的美丽与哀愁(增订版)》，畅销书作家安意如成名作，她对古典的诗词精粹进行了优美而细腻的赏析。她逃离刻板严肃的面孔，以丰富的情感溶化时间的悠远，以自由的姿态激扬文字，以优雅飘逸的笔调倾诉古典诗词的美丽与哀愁。在她笔下，那江山美人的至真哀怨，那才子佳人的离情悲欢，那一幕幕凄美欢欣的旷世之恋，浪漫而清新，纯真而唯美。  
 
 
安意如 

安意如，徽州女子，现居北京。2006年因古典诗词赏析随笔《人生若只如初见》《当时只道是寻常》《思无邪》等声名鹊起，后又出版《观音》，《惜春纪》《陌上花开》《美人何处》《世有桃花》等。
喜欢旅行，美容，美食，美人。'),
(23,'陌上花开','moshanghuakai',56.00,'images/book/book03.jpg','images/book/book03.jpg','《世有桃花》
安意如“古典美学三境界”之《世有桃花》，品读古典诗词的最美意象。
从 《诗经》初嫁，到秦汉飘摇、唐之明艳、宋之清丽，桃花的意象在古典诗词中绵延不绝，遮蔓、轮回，人们很容易弄清松竹梅兰在中国文化中的象征意义，但不是很 容易弄明白桃花这样东西的文化内涵。桃花在中国，太复杂，但凡想起，先有一言难尽的暧昧。将一朵桃花看开，它就自成世界。
49篇唯美文字，以诗词为源头，以桃花为入口，将古往今来的情缘一一道尽。
 
《美人何处》
安意如在《美人何处》中，以古典与现代激荡的感性文笔，充满悲悯的情怀，再次演绎了那些曾经站在历史浪尖上的美人们的人生际遇。从褒姒、息妫，到鱼玄机、陈圆圆，"借光阴的红线，在若隐若现的记忆中寻觅她们，如那唐朝的多情少年，花香脉脉，落英盈盈，唯树下不见伊人。"
 
《陌上花开》
乐府歌诗"皆感于哀乐，缘事而发"。因直抒胸臆，发自肺腑，相较精致雕琢的文人诗，另有一番动人魅力。
古典诗词鉴赏第一人、才女安意如以其独一无二、唯美感性的文笔，溶合通透、缠绵的诗歌、丰富细腻的史料于一体，生动复原近百首古意盎然的乐府诗词原本面貌，完美呈现两汉、魏晋、南北朝光怪陆离的精神风貌、艺文风采。'),
(24,'三国演义','sanguoyanyi',42.00,'images/book/book04.jpg','images/book/book04.jpg','《三国演义》是中国古典四大名著之一，是中国第一部长篇章回体历史演义小说，全名为《三国志通俗演义》（又称《三国志演义》），作者是元末明初的著名小说家罗贯中。
《三国演义》描写了从东汉末年到西晋初年之间近105年的历史风云，以描写战争为主，诉说了东汉末年的群雄割据混战和魏、蜀、吴三国之间的政治和军事斗争，最终司马炎一统三国，建立晋朝的故事。反映了三国时代各类社会斗争与矛盾的转化，并概括了这一时代的历史巨变，塑造了一批叱咤风云的三国英雄人物。
全书可大致分为黄巾之乱、董卓之乱、群雄逐鹿、三国鼎立、三国归晋五大部分。在广阔的背景上，上演了一幕幕气势磅礴的战争场面。编者罗贯中将兵法三十六计融于字里行间，既有情节，也有兵法韬略。'),
(25,'红楼梦','hongloumeng',100.00,'images/book/book05.jpg','images/book/book05.jpg','《红楼梦》的作者具有初步的民主主义思想，他对现实社会包括宫廷及官场的黑暗、封建贵族阶级及其家庭的腐朽，封建的科举制度、婚姻制度、奴婢制度、等级制度，以及与此相适应的社会统治思想即孔孟之道和程朱理学、社会道德观念等，都进行了深刻的批判，并提出了朦胧的带有初步民主主义性质的理想和主张。[5]  
《红楼梦》以“大旨谈情，实录其事”自勉，只按自己的事体情理，按迹循踪，摆脱旧套，新鲜别致[1]  ，取得了非凡的艺术成就。“真事隐去，假语村言”的特殊笔法更是令后世读者脑洞大开，揣测之说久而遂多[3]  。围绕《红楼梦》的品读研究形成了一门显学——红学。'),
(26,'中华成语故事大全集','chengyudaquan',89.00,'images/book/book06.jpg','images/book/book06.jpg','春秋时期，吴王夫差为了替父亲报仇，率兵攻打越国，把越王勾践和他的5000名残兵败将围困在会稽山上。勾践听从了大臣范蠡的主张，打算求和。
    勾践便派大臣文种到吴王营里去求和。夫差打算同意，可吴国大夫伍子胥坚决不肯。他告诫夫差说：“古语说得好，‘建树德行*好是不断培植，去掉毒害*好是消除干净’。”接着，他就给夫差讲了夏朝时期的一个故事。
    夏朝的时候，过氏部落首领浇杀了斟灌，攻打斟寻，灭了夏朝的后相，后相的妻子后缗逃走了，后来生下了一个儿子，名叫少康。少康逃到有虞部落里，做上了官。酋长还把两个女儿嫁给少康为妻，并将纶邑这个地方封给他，纶邑虽然地方不大，只有十里见方，人口也只有500，也就是所谓的一成一旅，但少康到那里以后，广施恩德，安抚下属，积极训练军队。当时机成熟了，就率兵攻打过国、戈国，灭了它们，恢复了夏朝的天下。这就是“少康中兴”的故事。
    伍子胥讲完这个故事后，'),
(27,'弟子规','dizigui',38.00,'images/book/book07.jpg','images/book/book07.jpg','《弟子规》原名《训蒙文》，为清朝康熙年间秀才李毓秀所作。其内容采用《论语》“学而篇”第六条：“弟子入则孝，出则悌，谨而信，泛爱众，而亲仁。行有余力，则以学文。”的文义，以三字一句、两句一韵编撰而成。全文共360句、1080个字，分为七个部分：即孝、悌、谨、信、爱众、亲仁、学文，前六项属于德育修养，后一项属于智育修养，列述弟子在家、出外、待人、接物与学习上应该恪守的守则规范，特别讲求家庭教育与生活教育的践行。后经清朝贾存仁修订改编，并改名为《弟子规》。'),
(28,'老人与海','laorenyuhai',40.00,'images/book/book08.jpg','images/book/book08.jpg','《老人与海》是海明威晚年最杰出的一部作品。故事很简单：一位名叫圣地亚哥的老渔夫在连续八十四天没有捕到鱼的情况下，在远离陆地的大海上遇到了一条巨大的马林鱼。经过三天三夜耐力与毅力的较量，圣地亚哥终于杀死了那条大马林鱼。可在他返航的途中，却遭到了鲨鱼的袭击，当他终于回到港口时，那条大马林鱼只剩下鱼头、鱼尾和一条光秃秃的脊骨。
,   海明威（1899-1961），美国小说家，1954年获得诺贝尔文学奖，“硬汉”是海明威作品中经常塑造的人物形象，《老人与海》中的圣地亚哥就是其中最为典型的一个。 1952年，海明威发表了《老人与海》这部中篇小说，通过圣地亚哥老人这个“打不败”的经典形象，热情颂扬了人类面对艰难时期所显示出的坚不可摧的精神力量，正像海明威所说的：“我试图描写一个真正的老人……然而，如果我能写得足够逼真，他们也能代表许多其他的事物。”'),
(29,'不抱怨的世界','bubaoyuandeshijie',88,'images/book/book09.jpg','images/book/book09.jpg','一本震惊世界的心灵励志书，它用一只手环向我们传递了“抱怨不如改变”的生活理念，据不完全统计，该书上市不到一个月，就有600万人参与了“不抱怨”活动，并迅速蔓延到全球80多个国家。在美国《时代周刊》与《纽约时报》联合美国NBC电视台发起的“影响你一生最重要的一本书”投票中，它仅次于《圣经》。世界首富比尔·盖茨在推荐这本书时说：没有人能拒绝这样一本书，除非你拒绝所有的书。
《不抱怨的世界》是畅销全球80国的世界级励志书！世界500强企业团购率第1！冯仑、唐骏、张德芬、奥普拉感动推荐！美国亚马逊、台湾金石堂、诚品书店心灵励志新书销量第1名！'),
(30,'做最好的自己','zuozuihaodeziji',64.00,'images/book/book10.jpg','images/book/book10.jpg','在生活中，有竞争也有合作。在学校生活中也不例外，有很多人会只顾竞争，一味的羡慕学习好的人，总想成为像那些人一样优秀的人，但谁又真正努力想过：人的一生应当怎样度过。
在这本书里的许多想法都是作者在过去的文章或信函中表达过的。而且，如果由职业作家来写本书，语言以及文字一定能更加流畅、更加生动。但是，作者自己总有一种提笔写作的冲动，因为作者相信自己在青年一代中有一定的影响力，作者希望能尽力帮助他们。'),
(31,'你在为谁读书','nizaiweishuidushu',36.00,'images/book/book12.jpg','images/book/book12.jpg','本书通过小说加书信体的形式寓教于乐，塑造了五位性格特征各异的少年，他们在学习与生活中遇到许多困难和有趣的故事，性格的缺陷得以充分的表现，在“心仪”的指导下，他们历经了痛苦的自我改造过程，最终都成就了“最好的自己”——努力克服自己的性格缺陷，充分发挥自己的长处，学业、人品双优，成为了最好的自己！'),
(32,'静下心来，找回自己','zhaohuiziji',45.00,'images/book/book17.jpg','images/book/book17.jpg','这个世界，有太多的不如意，其实仔细想来，有什么能比活着更重要呢？压力，烦恼，贫穷……一切的不如意，只要你静下心来，终究有办法去改变，只有静心才能完美。
本书通过大量贴近生活的事例，精练其要点，并从人生随时要静心、浮躁中修好这颗心、活在当下静心修行、慢生活，简生活、寂寞是人生的一场修行、放下是一种美丽与拥有等，不同角度对文章进行了解读，引导你在面对生活压力、工作、婚姻爱情的同时，要静心如水地面对，不要迷失自我，只有静下心来，才能找到自己的精神家园。
静心的力量，带给你宁静而清澈的心灵，藉以击退浮躁与喧嚣，重获身心灵的丰盈、坦荡和宁静……'),
(33,'把时间当做朋友','bashijiandangzuopengyou',55.00,'images/book/book13.jpg','images/book/book13.jpg','为什么你总是说“没有时间了”，勤奋而又懒惰？最节省时间的方式是学习，为什么你砍柴而不肯磨刀？基于过程的记录，为什么迥异于基于结果的记录？一个人对时间的精确感知能力真的能训练得像特异功能？都是平凡人，为什么若干年后彼此已成天壤之别？时间这条船，为什么只送心智成熟的人去往梦想的彼岸？绝大多数的成功根本与智商没有任何关系，所有的失败都与且只与时间限制有关。当你把时间花费到一个人身上的时候，相当于在他的身上倾注了你生命的一段，哪管最终的结果如何，反正，那个人那件事都成了你生命中的一部分，不管最后你喜欢还是不喜欢。'),
(34,'人机交往心理学','jiaowangxinlixue',77.00,'images/book/book14.jpg','images/book/book14.jpg','在当今社会大变革中,新情况像潮水般地涌现在人们的面前,学业、求职、就业、竞争动荡不居,瞬息万变;在人与人的交往中,又往往有着许多说不清、道不明的烦恼和困惑。所有这一切,使不少人在心理常常感到一种重负,一种压抑,渴望着能够尽快地加以自我调节,以适应如此眼花縩乱、变化万千的社会变革。有了人际往心理学的指导。我们就可以在人际交往的过程中,有意识、有目的地寻找和采用必要的手段和途径,协调好各方人际关系,进而在良好的人际交往基础上获得生活、学习和工作等方成功。这就是本教材编写的目的。'),
(35,'舍得','shede',82.00,'images/book/book15.jpg','images/book/book15.jpg','划线价格
指商品的专柜价、吊牌价、正品零售价、厂商指导价或该商品的曾经展示过的销售价等，并非原价，仅供参考。
未划线价格
指商品的实时标价，不因表述的差异改变性质。具体成交价格根据商品参加活动，或会员使用优惠券、积分等发生变化，最终以订单结算页价格为准。
此说明仅当出现价格比较时有效，具体请参见《淘宝价格发布规范》。若商家单独对划线价格进行说明的，以商家的表述为准。'),
(36,'沉住气，成大器','chenzhuqi',30.00,'images/book/book16.jpg','images/book/book16.jpg','《沉住气成大器》是2009年中国华侨出版社出版的图书，作者是周增文。
《沉住气成大器》主要讲述了：面对百味人生，面对世事百态，我们需要潜伏的是不平之气，消沉之心，躁动之性和致远之志，需要张扬的是自信，勇气，愈挫愈勇和百折不饶。一句话：沉得低，才能跳得远；沉住气，才能成大器。天下有大勇者，卒然临之而不惊，无故加之而不怒。此其所挟持者甚大，而其志甚远也。成就完美自我的14道心性修炼'),
(37,'名人传','mingrenzhuan',44.00,'images/book/book17.jpg','images/book/book17.jpg','《名人传》，是19世纪末20世纪初法国著名的批判现实主义作家罗曼·罗兰（1866~1944年）创作的人物传记作品，它包括《贝多芬传》（1903）、《米开朗琪罗传》（或译作米开朗基罗）（1906）、《托尔斯泰传》（1911）三部传记。被称为“三大英雄传记”，也称“巨人三传”。现已被选中为人教版八年级下册语文名著阅读。这本书也非常好地印证了一句中国人的古训：古今之成大事业者，非惟有超世之才，亦必有坚韧不拔之志。'),
(38,'我的大学','wodedaxue',69.00,'images/book/book18.jpg','images/book/book18.jpg','《我的大学》是高尔基著名自传体小说《人生三部曲》中的一部。其余两部为《童年》、《在人间》。作者描写了他青年时代的生活经历。从这个被真实记述下来的过程中，我们可以看出青少年时代的高尔基对小市民习气的深恶痛绝，对自由的热烈追求，对美好生活的强烈向往，在生活底层与劳苦大众的直接接触，深入社会，接受革命者思想影响和如饥似渴地从书籍中汲取知识养料使他得以成长，从生活底层攀上文化高峰的重要条件。'),
(39,'微表情，心理学','weibiaoqing',40.00,'images/book/book19.jpg','images/book/book19.jpg','《微表情心理学》收集了各种微表情，并结合实际情况加以说明，教你从人的面部表情、行为举止、言谈之间、日常习惯、兴趣爱好等方面捕捉、分析、判断人的微表情。希望读者阅读后，可以得到一双识人的慧眼。一把度人的尺度，通过灵活运用微表情心理学，从体态上辨认人的性格，从谈吐中推断人的修养，从习惯中观察人的心机。从细微处洞悉人的气质，能在职场、商场、情场等各种场合中左右逢源、运筹帷幄，一切尽在掌握中！'),
(40,'哈佛，凌晨四点半','hafuo',65.00,'images/book/book20.jpg','images/book/book20.jpg','凌晨4点多的哈佛大学图书馆里，灯火通明，座无虚席……哈佛的学生餐厅，很难听到说话的声音，每个学生端着比萨可乐坐下后，往往边吃边看书或是边做笔记。很少见到哪个学生光吃不读，也很少见到哪个学生边吃边闲聊。在哈佛，餐厅不过是一个可以吃东西的图书馆，是哈佛正宗100个图书馆之外的另类图书馆。哈佛的医院，同样的宁静，同样的不管有多少在候诊的人也无一人说话，无一人不在阅读或记录。医院仍是图书馆的延伸。于是，哈佛的诺贝尔奖得主有33位；哈佛产生的美国总统有7位。哈佛校园里，不见华服，不见化妆，更不见晃里晃荡，只有匆匆的脚步，坚实地写下人生的篇章。哈佛不是神话，哈佛只是一个证明，人的意志，精神，抱负，理想的证明。《哈佛凌晨4点半》从哈佛所具备的精神和气质出发，从培养青少年的品质切入，从理想志向、习惯、性格、情商等方面引导青少年从平凡走向卓越！');
/**购物车表**/
CREATE TABLE jd_cart(
  cid INT PRIMARY KEY AUTO_INCREMENT,  
  userId INT
);
INSERT INTO jd_cart VALUES
(100, 10);

/**购物车详情表**/
CREATE TABLE jd_cart_detail(
  did INT PRIMARY KEY AUTO_INCREMENT,  
  cartId INT,  
  productId INT,  
  count INT
);
INSERT INTO jd_cart_detail VALUES
(NULL, 100, 15, 1),
(NULL, 100, 27, 3);

/**订单信息表**/
CREATE TABLE jd_order(
  oid INT PRIMARY KEY AUTO_INCREMENT,
  rcvName VARCHAR(16),
  rcvAddr VARCHAR(64),
  rvcPhone VARCHAR(24),
  price FLOAT(8,2),     
  payment INT,          
  status INT,          
  orderTime BIGINT,
  userId INT
);
/**订单详情表**/
CREATE TABLE jd_order_detail (
  did INT PRIMARY KEY AUTO_INCREMENT,
  orderId INT,
  productId INT,
  count INT
);
/**用户反馈表**/
CREATE TABLE jd_content( 
  cfid INT PRIMARY KEY AUTO_INCREMENT,  
  ucontent VARCHAR(32),    
  uphone INT
);




















