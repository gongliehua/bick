# Host: localhost  (Version: 5.5.53)
# Date: 2018-03-29 15:00:31
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "bk_admin"
#

DROP TABLE IF EXISTS `bk_admin`;
CREATE TABLE `bk_admin` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `name` varchar(30) NOT NULL COMMENT '管理员名称',
  `password` char(32) NOT NULL COMMENT '管理员密码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "bk_admin"
#

/*!40000 ALTER TABLE `bk_admin` DISABLE KEYS */;
INSERT INTO `bk_admin` VALUES (1,'admin','21232f297a57a5a743894a0e4a801fc3'),(2,'boys','e10adc3949ba59abbe56e057f20f883e');
/*!40000 ALTER TABLE `bk_admin` ENABLE KEYS */;

#
# Structure for table "bk_article"
#

DROP TABLE IF EXISTS `bk_article`;
CREATE TABLE `bk_article` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `title` varchar(60) NOT NULL COMMENT '文章标题',
  `keywords` varchar(100) NOT NULL COMMENT '关键词',
  `desc` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `author` varchar(30) NOT NULL COMMENT '作者',
  `thumb` varchar(160) NOT NULL COMMENT '缩略图',
  `content` text NOT NULL COMMENT '内容',
  `click` mediumint(9) NOT NULL DEFAULT '0' COMMENT '点击数',
  `zan` mediumint(9) NOT NULL DEFAULT '0' COMMENT '点赞数',
  `rec` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0不推荐 1推荐',
  `time` int(10) NOT NULL COMMENT '发布时间',
  `cateid` mediumint(9) NOT NULL COMMENT '所属栏目',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

#
# Data for table "bk_article"
#

/*!40000 ALTER TABLE `bk_article` DISABLE KEYS */;
INSERT INTO `bk_article` VALUES (1,'高筒袜','高筒袜','高筒袜','美骑中国','/uploads/20180320/5db8b927eaca0f33315bb9f568de1363.jpg','<p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20180321/1521622704120488.jpg\" title=\"1521622704120488.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20180321/1521622704104296.jpg\" title=\"1521622704104296.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20180321/1521622705138196.jpg\" title=\"1521622705138196.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20180321/1521622705624175.jpg\" title=\"1521622705624175.jpg\"/></p>',10,0,0,1521518354,7),(2,'赛车服','服装','服装','美骑中国','/uploads/20180320/aa793257b023b30ba3400f5e0b9c3969.jpg','<p style=\"text-indent:2em;text-align:left;margin-top:20px;margin-bottom:20px;\">可能在非专业人士的眼中只能看到赛车服上挂着帅气、拉风的标签。但事实上这一身行头就像祖国的五星红旗一样，是经历了无数悲惨的经验教训，沾满了无数赛车手的鲜血之后才逐步完善而来的。在1975年之前，人们还没有完全意识到车手的穿着会直接关系到他们的死活，1975年后，不仅仅是所有赛车服换成防火材料，而且每一个设计细节都将关乎到车手们的生命安全。</p><p style=\"text-indent:2em;text-align:left;margin-top:20px;margin-bottom:20px;\"><img src=\"/ueditor/php/upload/image/20180321/1521622563119413.jpg\" title=\"1521622563119413.jpg\" alt=\"14798781153400.jpg\"/></p><p style=\"text-indent:2em;text-align:left;margin-top:20px;margin-bottom:20px;\"><strong>赛车服</strong></p><p style=\"text-indent:2em;text-align:left;margin-top:20px;margin-bottom:20px;\">众所周知，赛车是一项具有极高危险性的体育运动。早在赛车发展之初，人们除了常规灭火意外，根本无法通过其他方式有效应对赛车燃料泄露从而导致车手被烧伤甚至身亡的惨剧。</p><p style=\"text-indent:2em;text-align:left;margin-top:20px;margin-bottom:20px;\">但在现今的F1赛车场上我们已经很难再看到烈火蔓延的情况了，除了赛车本身的防火措施更加高效，赛车服也能很好的将车手和火焰隔绝开。即使是非常严重的火灾事故，被困人员也能安全等到工作人员赶来灭火。</p><p style=\"text-indent:2em;text-align:left;margin-top:20px;margin-bottom:20px;\">现在的赛车服大都由五层特制的芳香族聚酰胺塑胶织物组成，这种材料除了能防火之外还能让车手可以轻松舒适的参加比赛。通常赛手服排掉几公斤汗液不成问题，透气性也相当好。</p><p style=\"text-indent: 2em; text-align: left; margin-top: 20px; margin-bottom: 20px;\">除此之外像F1这种大型的赛事最不缺少的就是赞助商了。不过赞助商的logo是不允许单纯的印上去的，都是采用防火材料以手工的形式一针一线的缝制上去的，精细程度可想而知。</p>',10,0,0,1521519175,7),(3,'头盔','头盔','头盔','美骑中国','/uploads/20180320/36de5132cef833a611096a499ab8e927.jpg','<p style=\"text-indent: 2em; text-align: center;\"><img src=\"/ueditor/php/upload/image/20180320/1521527567164166.jpg\" alt=\"1521527567164166.jpg\"/></p><p style=\"text-indent: 2em;\">2006年4月4日，英雄钢盔厂总经理龚晓鹏率领该部分职工向桃花派出所民警捐赠了价值5万元的头盔和防弹背心，参加捐赠仪式的有西湖公安分局副局长淦少平，桃花派出所所长郁洪平，派出所全体民警。</p><p style=\"text-indent: 2em;\">4月3日，当我局桃花派出所民警胡建伟在抓捕犯罪现行过程中，被持刀抢劫的士司机的歹徒连杀两刀，却仍然坚持同犯罪分子搏斗，各大媒体纷纷报道，各级领导和各界群众争相看望。消息传来，引起了南昌市英雄钢盔厂领导的高度重视，经过全厂职工一致同意，该厂决定向桃花派出所捐赠10只钢盔、16件防爆背心、10件防弹背心，总价值5万余元。4日下午2点，总经理龚晓鸣率领部分厂领导和职工代表，顶着烈日，冒着高温，首先赶到九四医院看望慰问受伤民警胡建伟，并向英雄赠送鲜花、慰问金，龚晓鸣总经理高度赞扬胡建伟的英雄事迹，并说没有警察英勇顽强地同犯罪分子生死搏斗，南昌的社会治安就不能太平，老百姓就不得安宁。</p><p style=\"text-indent: 2em;\">龚晓鸣总经理一行在看望完受伤民警后，又风尘仆仆地赶往桃花派出所，把价值5万元的防护装备捐赠给桃花派出所。民警们戴上钢盔，穿上防弹衣时，脸上都露出了微笑。</p>',10,0,0,1521519731,7),(4,'手套','手套','手套','美骑中国','/uploads/20180320/296a01ac77e79d7b00e0a5079363430e.jpg','<p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20180320/1521527567506785.jpg\" alt=\"1521527567506785.jpg\"/></p><h1>手套（手部保暖或劳动保护用品）</h1><p style=\"text-indent: 2em;\">手套是手部保暖或劳动保护用品，也有装饰用的。手套是个很特别的东西，当初它的产生并不是为了实用，只是到近代，它才成了寒冷地区保温必备之物，或是医疗防菌、工业防护用品。但是除了传统意义上的手套，现在的手套更有了深一层的含义，与传统的手套迥然不同。这是由于网络游戏的兴起，使得铺天盖地的游戏装备名称出现，由于游戏玩家数量众多，尤其是相比于传统行业，使得网络上的手套信息更多的却是网络游戏装备的相关信息，手套最早起源于古希腊。</p><ul class=\"basicInfo-block basicInfo-left list-paddingleft-2\"><li><h3 class=\"title-text\">针对机械伤害的手套材质</h3></li><li><p>(1)金属丝——常见的不锈钢丝，也有铬合金丝，主要用来制造抗割手套。这类材质的抗割性能最强，并且便于清洁，但质重，使用不方便。</p></li><li><p>(2)Kevlar，Spectra等合成纱——也是较好的合成纤维抗割材质，虽然抗割能力不如金属丝，但质轻，使用舒适，而且经过改进和处理，有些产品也能够达到抗割产品标准的最高等级。</p></li><li><p>(3)丁腈（带织物内衬）——具有抗磨损和抗刺穿性能，使用灵活舒适。</p></li><li><p>(4)天然乳胶（带织物内衬）——具有极好的弹性，特别柔韧，有一定的抗磨损、抗撕裂和抗割性能。</p></li><li><p>(5)PVC（带织物内衬）——可以提供一定的磨损和刺穿保护，如果材质较厚，还能够具有一定的抗割能力，但不抗撕裂。</p></li><li><p>(6)皮——天然材质，通过各种鞣制处理，具有独特的性能。皮可以分为：牛皮，其优点有舒适、耐用，透气耐磨，经过铬蹂处理，更耐用，而且能抗高温；猪皮，毛孔粗大，透气性最好，经过水洗后仍能保持很好的柔软性，而不会变硬；羊皮，是最舒适、最耐用和抗磨性能最好的，但由于价格太贵，一般只用在对触感要求较高的行业。</p></li></ul>',12,0,0,1521520068,7),(5,'护目镜2','护目镜2','护目镜2','美骑中国','/uploads/20180320/a76565660e1463aa93e16eef91a3616d.jpg','<p><img src=\"/ueditor/php/upload/image/20180321/1521621693285687.jpg\" title=\"1521621693285687.jpg\" alt=\"TB23r2KaDIlyKJjSZFOXXaAhFXa_!!2176369953.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20180321/1521621666128880.jpg\" alt=\"1521621666128880.jpg\"/></p>',26,0,0,1521520432,7),(6,'护目镜','护目镜','美骑中国官方网站为您提供全方位的自行车选购、比价；车架查询、在线客服咨询；美利达自行车全国销售网络搜索等服务','美骑中国','/uploads/20180320/b27dfddba0954cff6d00f8eeeae1c2f3.jpg','<p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20180320/1521526750139130.jpg\" title=\"1521526750139130.jpg\" alt=\"s_20160123095128249.jpg\"/></p><p style=\"text-indent: 2em;\">护目镜片（俗称黑玻璃），是指有减弱电弧光和过滤红外线、紫外线的作用。其颜色以墨绿色或橙色较多。按颜色的深浅程度不同，由浅到深进行排号，号数越大，色泽越深。护目镜片要根据焊上的年龄和视力情况进行选择。</p><p style=\"text-align: left; text-indent: 2em;\">防护眼镜就是一种滤光镜，可以改变透过光强和光谱。避免辐射光对眼睛造成伤害，最有效和最常用的方法是配戴防护眼镜。这种眼镜可以吸收某些波长的光线，而让其它波长光线透过，所以都呈现一定的颜色，所呈现颜色为透过光颜色。一为吸收式，一为反射式，前者用得最多。护目镜是利用改变透过光强和光谱，可以避免辐射光对眼睛造成伤害的一种眼镜。这种眼镜分两大类，一为吸收式，一为反射式，前者用得最多。</p><p>这种眼镜可以吸收某些波长的光线，而让其它波长光线透过，所以都呈现一定的颜色，所呈现颜色为透过光颜色。</p>',8,0,0,1521527374,5),(7,'码表','码表','码表是安装在自行车上用来记录和显示若干骑行数据的电子产品，比如当前速度、骑行里程、骑行时间等。','美骑中国','/uploads/20180320/ca75f91a73d38405b0d3d115036ae6a5.png','<p style=\"text-indent: 2em;\">我目前正在使用的码表是Garmin Edge 520，搭配了心率带，速度和踏频传感器，没有使用功率计。具体的图片和介绍可以到佳明的中文官网上去找。</p><p>由于之前用的是最初买第一辆车的时候顺带入手的猫眼有线码表，比较便宜也比较简陋，就不做评价了。无线码表我也只用过佳明这一款，就仅谈谈对这一款的使用体验。</p><p>首先不得不说，佳明的东西从做工的细致程度到数据的统计显示都非常出色，速度踏频心率都有即时的反馈，可以说是比较灵敏的。但是坡度的显示可能会有一点点的延迟，我猜这恐怕也很难避免。下面上一张夜骑后的码表表面照片。由于我用的是破风把，就把码表先暂时固定在把立的位置上了。</p><p><img src=\"/ueditor/php/upload/image/20180320/1521527370122042.jpg\" title=\"1521527370122042.jpg\" alt=\"6f156e165d68fe2ebde5db5b201cd6a1_hd.jpg\"/></p>',6,0,0,1521526753,6),(8,'背包','背包','背包(BackPack)指外出或行军时背在背上的包的统称。材质多样化，真皮、塑料材质、涤纶、帆布、尼龙，棉麻等质地箱包引领时尚潮流。','美骑中国','/uploads/20180320/0cfe5eb57601aabc5792b9f0de410f05.jpg','<p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20180320/1521527567124409.jpg\" alt=\"1521527567124409.jpg\"/></p><p style=\"text-align: center;\">名称：<strong class=\"J_EbrandLogo\">SCHWYZ＋CROSS/施维茨十字</strong></p><p><strong class=\"J_EbrandLogo\"></strong></p><p class=\"attr-list-hd tm-clear\"><em>产品参数：</em></p><p style=\"text-align: center;\">上市时间:&nbsp;2014年秋冬季大小:&nbsp;中</p><p style=\"text-align: center;\">容纳电脑尺寸:&nbsp;16英寸</p><p style=\"text-align: center;\">是否有背部缓冲棉:&nbsp;是</p><p style=\"text-align: center;\">适用对象:&nbsp;青年</p><p style=\"text-align: center;\">防水程度:&nbsp;防泼水</p><p style=\"text-align: center;\">性别:&nbsp;男</p><p style=\"text-align: center;\">质地:&nbsp;锦纶</p><p style=\"text-align: center;\">提拎部件类型:&nbsp;软把</p><p style=\"text-align: center;\">闭合方式:&nbsp;拉链搭扣</p><p style=\"text-align: center;\">内部结构:&nbsp;拉链暗袋&nbsp;手机袋&nbsp;证件袋&nbsp;夹层拉链袋&nbsp;电脑插袋</p><p style=\"text-align: center;\">箱包外袋种类:&nbsp;内贴袋</p><p style=\"text-align: center;\">流行元素:&nbsp;车缝线</p><p style=\"text-align: center;\">图案:&nbsp;纯色</p><p style=\"text-align: center;\">颜色分类:&nbsp;灰色-送密码锁+帽子&nbsp;紫色-送密码锁+帽子&nbsp;蓝色-送密码锁+帽子&nbsp;大号黑色-送密码锁+帽子&nbsp;黑色USB升级版-送密码锁+帽子&nbsp;黑色-送密码锁+帽子&nbsp;大号黑色USB升级版-送密码锁+帽子&nbsp;灰色-水壶+密码锁&nbsp;紫色-水壶+密码锁&nbsp;蓝色-水壶+密码锁&nbsp;大号黑色-水壶+密码锁&nbsp;黑色USB升级版-水壶+密码锁&nbsp;黑色--水壶+密码锁&nbsp;大号黑色USB升级版+水壶+密码锁&nbsp;灰色USB升级版+密码锁+帽子&nbsp;紫色USB升级版+密码锁+帽子&nbsp;蓝色USB升级版+</p>',18,0,0,1521526532,7),(9,'野狼7','野狼7','RACELITE 6061 ALUMINIUM RACELITE 6061铝合金\r\n\r\n航空领域大量采用的高刚性轻量铝材。美利达采用热处理的加工方式。','美骑中国','/uploads/20180320/5d0590b7c2049e68caa762f44eb668ee.jpg','<h2>野狼7</h2><p><img src=\"/ueditor/php/upload/image/20180320/1521520664131901.jpg\" title=\"1521520664131901.jpg\" alt=\"aaa67.jpg\"/></p><ul style=\"list-style-type: disc;\" class=\" list-paddingleft-2\"><li><h5>&nbsp;&nbsp;&nbsp;&nbsp;RACELITE 6061 ALUMINIUM RACELITE 6061铝合金</h5></li></ul><p style=\"text-indent: 2em;\">航空领域大量采用的高刚性轻量铝材。美利达采用热处理的加工方式，使高质量的双抽管铝材更适合制造出轻又强的车架。</p><p><br/></p><p><img src=\"/ueditor/php/upload/image/20180320/1521520664131901.jpg\" alt=\"1521520664131901.jpg\"/></p><ul class=\" list-paddingleft-2\"><li><h5>SMOOTH WELDING 圆滑焊接</h5><p>独特的焊接技术达到平滑的焊接线 不仅美观、同时在焊接结构的强度丝毫不打折。</p><p><br/></p><p><img src=\"/ueditor/php/upload/image/20180320/1521520664131901.jpg\" alt=\"1521520664131901.jpg\"/><br/></p></li><li><h5>HFS - HYDRO FORMING SYSTEM 液压式成形工法</h5><p>机械成形的TFS工法，是由外部对管材施压成形。相反地，液压成形是将液体由管材内部向外高压推挤，搭配使用特殊铝合金管材PROLITE 66，可造就出更复杂的管形变化。</p><p><br/></p></li></ul><p><br/></p>',18,0,0,1521527583,3),(10,'环法自行车赛','来一次旅行','环法自行车赛是知名的年度多阶段公路自行车运动赛事，主要在法国举办，但也经常出入周边国家如英国、比利时。','美骑中国','/uploads/20180320/dfb41136723e898927c23fd7a96374b8.jpg','<h3 class=\"title-text\">赛事起源</h3><p style=\"text-indent: 2em;\">环法自行车赛的创办和法国历史上有名的“德雷福斯事件”有关。阿尔弗雷德·德雷福斯是一个犹太裔的法国军官，在1894年被诬叛国入狱。虽然1896年真相大白，法国政府却不肯与之平反。事件公开后，法国社会不得不正视自己反犹太主义的传统，并引发了一场大规模的争论。进步派先锋人物，埃米尔·左拉，曾因为仗义执言而不得不远遁英国避难。</p><p>在这场争论中，一些反犹的报人和广告商不满当时法国最大的体育报纸Le Vélo的立场，决定另办一家杂志拆台。这一新杂志，L&#39;Auto，是当今法国《队报》（L&#39;Équipe）的前身。</p><p>而第一场环法自行车赛就是L&#39;Auto为了推销和竞争，于1903年1月29日拟定的。最早设想的是一个5星期的比赛（从5月31日到7月5日），结果只有15人报名。L&#39;Auto的编辑德格朗日（Desgrange）于是把赛程改为19天，并给参赛者予以补贴。最后有60人报名，其中有一些形形色色的业余人物，包括街头潦倒之辈和楞头青。</p><p>1903年的7月1日，第一届环法自行车赛开幕，最终毛瑞斯·盖利（MauriceGarin）成为了世界上第一位环法赛的总冠军。盖利是在第六赛段开始领先的，经过2397公里的鏖战他第一个到达了设在巴黎市内的王子公园的终点。他的成绩比第二名的选手博希尔（Pothier）要快3小时。</p><p>早期环法自行车赛只有6个赛段，每段平均400公里，有时一段得骑到半夜。这一近乎残酷的赛法把公众一下子吸引住了。报纸也因此得益，1903年的日发行量从赛前的25,000一下子增长到65,000，1908年到了25万，在1923年环法自行车赛期间高达50万。最高纪录是在1933年的环法自行车赛时，日发行量据说至854,000。</p><p>两次世界大战都曾中断过环法自行车赛（1915-1918，1940-1946）。1939年的比赛也没有德国，意大利和西班牙的选手参赛。现代环法自行车赛是由Société\r\n du Tour de France主办。这是一个属于Amaury Sport \r\nOrganisation（ASO）的分部。而ASO又属于一个大的媒体集团，旗下包括《队报》。</p><p><br/></p><h3 class=\"title-text\">影响扩大</h3><p>从1947年简·罗比克<a class=\"lemma-album layout-right nslog:10000206\" title=\"环法自行车赛比赛照片\" href=\"https://baike.baidu.com/pic/%E7%8E%AF%E6%B3%95%E8%87%AA%E8%A1%8C%E8%BD%A6%E8%B5%9B/3696325/516901/d019d2bfaba34e4619d81fd4?fr=lemma&ct=cover\" target=\"_blank\" style=\"width:222px;\"></a></p><p><a class=\"lemma-album layout-right nslog:10000206\" title=\"环法自行车赛比赛照片\" href=\"https://baike.baidu.com/pic/%E7%8E%AF%E6%B3%95%E8%87%AA%E8%A1%8C%E8%BD%A6%E8%B5%9B/3696325/516901/d019d2bfaba34e4619d81fd4?fr=lemma&ct=cover\" target=\"_blank\" style=\"width:222px;\"><img class=\"picture\" alt=\"环法自行车赛比赛照片\" src=\"/ueditor/php/upload/image/20180320/1521520064359659.jpg\"/></a></p><p>环法自行车赛比赛照片<span class=\"number\">(18张)</span></p><p style=\"text-indent: 2em;\">（Jean \r\nRobic）的获胜到1959年巴哈蒙特斯（Bahamontes）的夺冠，环法赛的影响不断扩大。环法赛的冠军如1948年的基诺·巴特利（Gino \r\nBartali），在1949年和1951年两次夺冠的冯斯托·科比（Fausto Coppi），法国选手卢森·罗伯特（Louison \r\nBobet）在战后这些年里经过自身的努力取得了辉煌的成就。卢森·罗伯特至今仍为众人称道的是他在1953年的比赛中爬坡赛中得精彩表现。</p><p><br/></p><p><br/></p>',7,0,1,1521527824,2),(11,'自行车山地车','自行车山地车','MERIDA美利达山地自行车 战神730车型 \t山地车\r\n速别 \t30S\r\n车架 \tHFS铝合金\r\n尺寸 \t27.5*15\"/17\"/19\"\r\n前叉 \tSR镁合金气压线。','美骑中国','/uploads/20180320/1de17a9a33c9c07c9113fc6d7b006037.jpg','<p><img src=\"/ueditor/php/upload/image/20180320/1521519724391589.jpg\" title=\"1521519724391589.jpg\" alt=\"aaa.jpg\"/><br/></p><p style=\"text-indent: 2em;\"><span style=\"font-family:&#39;Microsoft YaHei&#39;;font-size:14px;\">美利达官方商城销售的每一台自行车都享有全国2000家门店的售后保障。当您购买的美利达自行车出现故障时即可查看商城以及美利达官网上提供的全国2000家门店的信息，选择就近的门店进行保固维修，美利达会为您提供最优质的服务。\r\n美利达保固条款：</span> </p><p><span style=\"font-family:&#39;Microsoft YaHei&#39;;font-size:14px;\">一、如果您是购自美利达官方商城的第一手原购车主，并依照使用说明书内容正常使用与正常保养维护的情况下，若在保固期限内发生产品故障时，可持您的美利达“用户保修卡”，至提货实体店或美利达特约授权经销商进行保固维修。</span> </p><p><span style=\"font-family:&#39;Microsoft YaHei&#39;;font-size:14px;\">二、有效的保固期限</span> </p><p><span style=\"font-family:&#39;Microsoft YaHei&#39;;font-size:14px;\">1. 车架：自2008年7月1日起购买的车款，在车辆正常使用范围内，车架终身保固。（折叠车折叠机构不包含在内）。车架更换原则：以相同车架更换为原则，若产品已停产，即以新年度同级车种替代。</span> </p><p><span style=\"font-family:&#39;Microsoft YaHei&#39;;font-size:14px;\">2.车架烤漆与一般零件：自购买日起一年起，包括：前叉、避震器、轴承、连杆、前/后变速器、变速控制杆、前/后花鼓、车圈、车把、手把竖管、座管、脚踏、折叠机构、剎车握把、齿盘曲柄、侧脚架、挡泥板、货架等。（依照原零件厂商提供之保固期限为主）。</span> </p><p><span style=\"font-family:&#39;Microsoft YaHei&#39;;font-size:14px;\">3.其它消耗品零件不在保固范围内（如：外胎、内胎、剎车块、剎车线、变速线、菜篮...等）</span> </p><p><span style=\"font-family:&#39;Microsoft YaHei&#39;;font-size:14px;\">4.“美利达官方商城”为美利达自行车（中国）有限公司唯一指定互联网销售商城，非美利达官方商城销售的网购自行车及商品配件均不在保固范围内。</span> </p><p><span style=\"font-family:&#39;Microsoft YaHei&#39;;font-size:14px;\">5.无车架号码（打磨掉）不在保固范围之内。</span> </p><p><span style=\"font-family:&#39;Microsoft YaHei&#39;;font-size:14px;\">三、以下情形者并不适用于本保固免费维修范围，经销商提供维修服务时，得酌收成本费用及工时费</span> </p><p><span style=\"font-family:&#39;Microsoft YaHei&#39;;font-size:14px;\">1. 未依照本使用说明书使用或保养而发生故障。</span> </p><p><span style=\"font-family:&#39;Microsoft YaHei&#39;;font-size:14px;\">2. 碰撞、高处坠下、堆叠或挤压、特技表演、其他事故等外力因素而发生故障者。</span> </p><p><span style=\"font-family:&#39;Microsoft YaHei&#39;;font-size:14px;\">3. 非经美利达特约授权经销商维修，或改装更换本公司原厂零件者。</span> </p><p><span style=\"font-family:&#39;Microsoft YaHei&#39;;font-size:14px;\">4. 营业出租使用者，或不正常使用者。</span> </p><p><span style=\"font-family:&#39;Microsoft YaHei&#39;;font-size:14px;\">5. 属于正常使用即会自然磨耗的零件，并不适用于上述的保固期限免费维修者，例如：外胎、内胎、剎车块、剎车与变速内线、齿盘/飞轮、链条、座垫表皮、胶质握把或手把带、避震前叉或后避震器的培林及油封，还有配备使用夹器式剎车的车圈等。</span> </p><p><span style=\"font-family:&#39;Microsoft YaHei&#39;;font-size:14px;\">6. 因消耗品的磨耗而未及时作适当保养或更换，导致其它零件故障和损坏者。</span> </p><p><span style=\"font-family:&#39;Microsoft YaHei&#39;;font-size:14px;\">7. 轮胎被外物刺破或撞击，导致轮胎漏气或爆胎者。</span> </p>',7,0,1,1521527873,2),(12,'新车上市','新车上市','最新款欧版车架架型、内走线设计、锥度首管、SHIMANO SORA变速刹车系统、一体式轮组……都说明这辆车是定位。','美骑中国','/uploads/20180320/fad58f531842c0fb52704f1df5d0f5eb.jpg','<h2 class=\"rich_media_title\">【新车上市】美利达斯特拉亲民上市！</h2><p style=\"text-indent: 2em;\"><span style=\"max-width: 100%; font-size: 14px; box-sizing: border-box !important; word-wrap: break-word !important;\">最新款欧版车架架型、内走线设计、锥度首管、SHIMANO SORA变速刹车系统、一体式轮组……都说明这辆车是定位竞技的全能型车款。</span></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20180320/1521519067954875.jpg\" title=\"1521519067954875.jpg\" alt=\"a1.jpg\"/></p><p style=\"text-align: center;\"><span style=\"max-width: 100%; color: rgb(226, 36, 20); font-size: 14px; box-sizing: border-box !important; word-wrap: break-word !important;\">▲<span style=\"max-width: 100%; color: rgb(0, 0, 0); box-sizing: border-box !important; word-wrap: break-word !important;\">美钻黑/美利达绿</span></span></p><p style=\"text-align: center;\"><span style=\"max-width: 100%; color: rgb(226, 36, 20); font-size: 14px; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"max-width: 100%; color: rgb(0, 0, 0); box-sizing: border-box !important; word-wrap: break-word !important;\"><img src=\"/ueditor/php/upload/image/20180320/1521519131115820.jpg\" title=\"1521519131115820.jpg\" alt=\"a2.jpg\"/><br/></span></span></p><p style=\"text-align: center;\"><span style=\"max-width: 100%; color: rgb(226, 36, 20); font-size: 14px; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"max-width: 100%; color: rgb(0, 0, 0); box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"max-width: 100%; font-size: 14px; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"max-width: 100%; color: rgb(226, 36, 20); box-sizing: border-box !important; word-wrap: break-word !important;\">▲</span>亚黑/平五梅红</span></span></span></p><p style=\"text-align: center;\"><span style=\"max-width: 100%; color: rgb(226, 36, 20); font-size: 14px; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"max-width: 100%; color: rgb(0, 0, 0); box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"max-width: 100%; font-size: 14px; box-sizing: border-box !important; word-wrap: break-word !important;\"><img src=\"/ueditor/php/upload/image/20180320/1521519148879741.jpg\" title=\"1521519148879741.jpg\" alt=\"a3.jpg\"/><br/></span></span></span></p><p><span style=\"max-width: 100%; color: rgb(226, 36, 20); font-size: 14px; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"max-width: 100%; color: rgb(0, 0, 0); box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"max-width: 100%; font-size: 14px; box-sizing: border-box !important; word-wrap: break-word !important;\"></span></span></span></p><p style=\"max-width: 100%; min-height: 1em; text-align: center; box-sizing: border-box ! important; overflow-wrap: break-word ! important;\"><span style=\"max-width: 100%; color: rgb(226, 36, 20); box-sizing: border-box !important; word-wrap: break-word !important;\">▲</span><span style=\"max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\">平丽黑/法拉利红</span></p>',10,0,1,1521527943,3),(13,'挑战者车系','挑战者车系','【挑战者车系】给你竞赛级的体验，挑战无限可能！ 挑战者经过反复验证，通过性、稳定性、操控性都是完美融合。','美骑中国','/uploads/20180320/7359ad57dc02d7b4f9f4f705835cd265.jpg','<h2 class=\"rich_media_title\">【挑战者车系】给你竞赛级的体验，挑战无限可能！</h2><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20180320/1521518235733261.jpg\" alt=\"1521518235733261.jpg\"/><br/></p><p style=\"text-indent: 2em;\">挑战者900采用了新轮径，经过反复验证，通过性、稳定性、操控性都是完美融合，ROCK SHOX 客制化配色前叉让整车的性能表现进一步提升，SRAM 油碟刹车手感进一步提升， GX 22段丰富的齿比，轻松满足任何竞技条件下的使用。</p><p><br/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20180320/1521518411110720.jpg\" title=\"1521518411110720.jpg\" alt=\"800.jpg\"/><br/></p><p style=\"text-indent: 2em;\">挑战者800依然在车友都十分关注的刹车方面沿用德国玛古拉的油碟，不仅提供了出色的性能，五年的保固服务更是其他品牌无法提供的。SHIMANO 20段变速系统、气压避震前叉、威帝乐轮组，优秀的避震系统，出色的传动性能。</p><p><br/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20180320/1521518235733261.jpg\" alt=\"1521518235733261.jpg\"/><br/></p><p style=\"text-indent: 2em;\">挑战者700轻量铝材在HFS工艺之下完成了蜕变，车身整体看上去运动气息十足。特别是镁合金气压前叉赋予了它运动竞技的使命。另外同样设有犹如“冰凌”的漆面，测试推广期就备受消费者的喜好。</p>',19,0,1,1521528063,2),(14,'台湾精品美骑杯','台湾精品美骑杯','2018中国.黄山“台湾精品美骑杯”国际自行车赛期。从事体育锻炼、身体健康、无残疾的自行车爱好者，年龄在18至60周岁 （1957-10-29（含）—1999-10-29（含）间出      生），以身份证件为准。','美骑中国','/uploads/20180329/d67608842a297506532bbb27d8836656.jpg','<p><img src=\"/ueditor/php/upload/image/20180320/1521518468251865.jpg\" alt=\"1521518468251865.jpg\"/></p><p><span style=\"font-size:24px;\"><span style=\"color:#000000;font-size:14px;\"><span style=\"color:#E53333;\"><span style=\"color:#000000;\"><strong><span style=\"font-size:14px;\">参赛资格及注意事项&nbsp;</span></strong><br/><span style=\"font-size:14px;\"> &nbsp; &nbsp; &nbsp; \r\n1、长期从事体育锻炼、身体健康、无残疾的自行车爱好者，年龄在18至60周岁 （1957-10-29（含）—1999-10-29（含）间出 &nbsp; &nbsp;\r\n &nbsp;生），以身份证件为准。参加者必须填写免责申明；如遇特殊情况，未成年人参赛必须由监护人签字。所有未成年人参加需获得<span style=\"font-size:14px;white-space:normal;\">&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;</span>监护人的签字证明，并附签字监护人身份证复印件，所发生的一切后果由监护人承担。</span></span></span></span></span></p><p><span style=\"font-size:24px;\"><span style=\"color:#000000;font-size:14px;\"><span style=\"color:#E53333;\"><span style=\"color:#000000;\"><span style=\"font-size:14px;\"> &nbsp; &nbsp; &nbsp; 2、所有现役专业选手（中国地区包括中国自行车协会注册车手、省市体校选手、业余体校未注册）及退役（以运动员注册证日期 &nbsp; &nbsp; &nbsp;为准）未满3年以上的车手不能报名参赛。如有发现以上车手的违规报名，取消其在比赛中的所有成绩及奖励。</span></span></span></span></span></p><p><span style=\"font-size:24px;\"><span style=\"color:#000000;font-size:14px;\"><span style=\"color:#E53333;\"><span style=\"color:#000000;\"><span style=\"font-size:14px;\"> &nbsp; &nbsp; &nbsp; 3、所有参赛报名者均必须在报名表中清晰、正楷填写：姓名、有效的身份证件种类及号码，性别，出生年月日(投保必须用)、联 &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;系电话。</span></span></span></span></span></p><p><span style=\"font-size:24px;\"><span style=\"color:#000000;font-size:14px;\"><span style=\"color:#E53333;\"><span style=\"color:#000000;\"><span style=\"font-size:14px;\"> &nbsp; &nbsp; &nbsp; 4、组委会将为每位参赛者办理比赛当日（2017年10月29日）人身意外伤害保险，赛事保险为比赛当日比赛中的保险责任，不包 &nbsp; &nbsp; &nbsp; &nbsp;括往返赛场途中骑行、会场骑行、试骑、热身等非比赛期间、非比赛场地进行的运动风险责任。</span></span></span></span></span></p><p><span style=\"font-size:24px;\"><span style=\"color:#000000;font-size:14px;\"><span style=\"color:#E53333;\"><span style=\"color:#000000;\"><span style=\"font-size:14px;\"> &nbsp; &nbsp; &nbsp; 5、所有参加者需确保车辆符合比赛安全要求，并按组别要求使用车辆，赛前进行车辆安全自检，或请赛事技师协助检查，脚撑、 &nbsp; &nbsp; &nbsp;货框、座椅、车锁等有安全隐患的附件请务必自行拆除。</span></span></span></span></span></p><p><span style=\"font-size:24px;\"><span style=\"color:#000000;font-size:14px;\"><span style=\"color:#E53333;\"><span style=\"color:#000000;\"><span style=\"font-size:14px;\"> &nbsp; &nbsp; &nbsp; 6、参加者一切费用自理，组委会不承担任何参与者发生的费用及责任，并承诺遵守赛事的各项规定，遵守比赛道德，否则承担由 &nbsp; &nbsp; &nbsp;此产生的一切风险与损失或伤害。</span></span></span></span></span></p><p><span style=\"font-size:24px;\"><span style=\"color:#000000;font-size:14px;\"><span style=\"color:#E53333;\"><span style=\"color:#000000;\"><span style=\"font-size:14px;\"> &nbsp; &nbsp; &nbsp; 7、参加者清楚、了解、熟知比赛可能存在的风险，这些风险可能来自于参赛者自身或其他人，也可能来自于比赛器材、场地等。</span></span></span></span></span></p><p><span style=\"font-size:24px;\"><span style=\"color:#000000;font-size:14px;\"><span style=\"color:#E53333;\"><span style=\"color:#000000;\"><span style=\"font-size:14px;\"> &nbsp; &nbsp; &nbsp; \r\n8、参加者自愿放弃对赛事主办方、承办方、协办方、赞助方、策划推广方及相关所有个人和单位提出针对比赛中发生的任何损 失、伤害进行任何索赔、法律诉讼的权利，这种损失、伤害包括不限于自身缺乏耐力、体力、技术、经验或因其他参与者不当作为或与其他方发生碰撞、器材问题等。</span></span></span></span></span></p><p><span style=\"font-size:24px;\"><span style=\"color:#000000;font-size:14px;\"><span style=\"color:#E53333;\"><span style=\"color:#000000;\"><span style=\"font-size:14px;\"><br/></span></span></span></span></span></p>',10,0,0,1521531030,7),(15,'挑战者斩获三冠','美骑挑战者车队斩获三冠,','美利骑战者车队斩获三冠，迎赛季开门红','美骑中国','/uploads/20180320/0f20bbba1b2de0b836d1365fe7050cdc.jpg','<p><img src=\"/ueditor/php/upload/image/20180320/1521531293304751.jpg\" alt=\"1521531293304751.jpg\"/><br/></p><p style=\"text-indent: 2em;\"><span style=\"color:#000000;\"><span style=\"font-size:14px;color:#000000;\">三月初春的暖阳唤醒的不只是柳枝上的嫩芽，还有蛰伏了整个冬季的车手们。今年的赛季相对于往年来的要晚一些，对于美骑挑战者车队的帅小伙们就有了更多的训练和准备时间。</span></span><strong><span style=\"color:#000000;font-size:14px;\">&nbsp;</span></strong></p><p><strong><span style=\"color:#000000;font-size:14px;\"><img src=\"/ueditor/php/upload/image/20180320/1521520064359659.jpg\" alt=\"1521520064359659.jpg\" height=\"323\" width=\"651\"/></span></strong></p><p><strong><span style=\"color:#000000;font-size:14px;\"></span></strong></p><p style=\"text-align: left; text-indent: 2em;\"><span style=\"color:#000000;\"><span style=\"font-size:14px;color:#000000;\">从三月初的中自联首战千岛湖首战顺利拿下团体亚军和男子公路A组中队长孔文生摘得季军。</span><span style=\"font-size:14px;color:#000000;\">在刚刚结束的这个周末，车队五位队员分公路和山地三队分别前往四川，福建和云南参加三场赛事，功夫不负有心人，两天内捷报 频传！&nbsp;</span></span> </p><p><strong><span style=\"color:#000000;font-size:14px;\"></span></strong><br/></p>',10,0,0,1521531486,7),(16,'美骑自行车PIC','美骑美骑自行车PIC','美骑自行车PIC，美骑，自行车，PIC图片，赛事','美骑中国','/uploads/20180329/40197805a6a3a092f9fd67ab535ae32e.jpg','<p style=\"text-align: center;\"><span style=\"max-width: 100%; color: rgb(226, 36, 20); font-size: 14px; box-sizing: border-box !important; word-wrap: break-word !important;\"><img src=\"/ueditor/php/upload/image/20180329/1522304433769838.jpg\" title=\"1522304433769838.jpg\" alt=\"700.jpg\"/></span></p><p style=\"text-align: center;\"><span style=\"max-width: 100%; color: rgb(226, 36, 20); font-size: 14px; box-sizing: border-box !important; word-wrap: break-word !important;\">▲<span style=\"max-width: 100%; color: rgb(0, 0, 0); box-sizing: border-box !important; word-wrap: break-word !important;\">美钻黑/美利达绿</span></span></p><p style=\"text-align: center;\"><span style=\"max-width: 100%; color: rgb(226, 36, 20); font-size: 14px; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"max-width: 100%; color: rgb(0, 0, 0); box-sizing: border-box !important; word-wrap: break-word !important;\"><img src=\"/ueditor/php/upload/image/20180320/1521519148879741.jpg\" alt=\"1521519148879741.jpg\"/></span></span></p><p style=\"text-align: center;\"><span style=\"max-width: 100%; color: rgb(226, 36, 20); font-size: 14px; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"max-width: 100%; color: rgb(0, 0, 0); box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"max-width: 100%; font-size: 14px; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"max-width: 100%; color: rgb(226, 36, 20); box-sizing: border-box !important; word-wrap: break-word !important;\">▲</span>亚黑/平五梅红</span></span></span></p><p style=\"text-align: center;\"><span style=\"max-width: 100%; color: rgb(226, 36, 20); font-size: 14px; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"max-width: 100%; color: rgb(0, 0, 0); box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"max-width: 100%; font-size: 14px; box-sizing: border-box !important; word-wrap: break-word !important;\"><img src=\"/ueditor/php/upload/image/20180320/1521518235733261.jpg\" alt=\"1521518235733261.jpg\"/></span></span></span></p><p><span style=\"max-width: 100%; color: rgb(226, 36, 20); font-size: 14px; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"max-width: 100%; color: rgb(0, 0, 0); box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"max-width: 100%; font-size: 14px; box-sizing: border-box !important; word-wrap: break-word !important;\"></span></span></span></p><p style=\"max-width: 100%; min-height: 1em; text-align: center; box-sizing: border-box ! important; overflow-wrap: break-word ! important;\"><span style=\"max-width: 100%; color: rgb(226, 36, 20); box-sizing: border-box !important; word-wrap: break-word !important;\">▲</span><span style=\"max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\">平丽黑/法拉利红</span></p><p><br/></p>',45,0,0,1521531901,7),(18,'入门骑行装备推荐','让我们骑的更远','经常有新人买了新车，问我该买些什么装备，作为一个业余的爱好者，我曾经也在装备的选择里迷茫过。','美骑中国','/uploads/20180329/11718c2fc07adce6fcbec12ac88492d6.jpg','<p style=\"text-indent: 2em;\">经常有新人买了新车，问我该买些什么装备。作为一个玩车10年的老司机，我曾经也在装备的选择里迷茫过，也买过很多不适合自己的装备。玩了这么多年后，终于也有了一些小小的理解。我们选择装备的原则就是：没有最好的装备，只有最实用的装备。也不要只看价格，在这个套路横行眼花撩花的时代，必须擦亮眼睛。不要掉进价格陷阱，买一堆没用的装备。下面就给大家介绍一些新人的装备。</p><p style=\"text-indent: 2em;\">一、头盔<br/>　　买车后的第一件事，就是买一顶安全可靠的头盔。只要在骑车，就要戴上头盔，千万不要买山寨和太便宜的头盔，你需要的不是一个像头盔的样子货，ESSEN的头盔都经过了CE EN1078安全认证，质量可靠。<br/>　　1、入门款：ESSEN A85i&nbsp;&nbsp; 淘宝价：138元（可享满100减20优惠！）<br/>　　一体成型，重量275克，22个通风孔，进口EPS泡沫，比较符合亚洲人的头型，佩戴舒适，尺寸可以调节，适合大多数的成年人。</p><p style=\"text-indent: 2em;\"><img src=\"/ueditor/php/upload/image/20180329/1522306006793161.jpg\" title=\"1522306006793161.jpg\" alt=\"111419g73cy47m7jccv333.jpg\"/></p><p style=\"text-indent: 2em;\">2、进阶款：ESSEN C99&nbsp;&nbsp; 淘宝价：168-198元（可享满100减20优惠！）<br/>　　一体成型，重量230克，29个通风孔，进口EPS泡沫，与上一款相比，重量更轻，通风孔更多，本款有两种尺寸，小号适合5岁以上，12岁以下的儿童，大号适合大部分成年人。</p><p style=\"text-indent: 2em;\"><img src=\"/ueditor/php/upload/image/20180329/1522306006793161.jpg\" alt=\"1522306006793161.jpg\"/></p>',8,0,0,1522305814,5),(19,'新款ZIPP 454 NSW轮组','防止漏气','在骑车途中，没有什么比车胎漏气爆胎更让人心烦了。设计的一款 Ever 自行车轮胎，将让骑车人不再为车胎问题而烦恼。','美骑中国','/uploads/20180329/97ed320fd04d9cac4ea175cca31953cb.jpg','<p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20180329/1522306657265463.jpg\" title=\"1522306657265463.jpg\" alt=\"132107d59e3x8g19ja1zof.jpg\"/></p><p style=\"text-indent: 2em;\">ZIPP的工程师显然发现了座头鲸胸鳍的特别之处，同时，鲨鱼的皮肤纹路使得水流能够快速通过。这些因素使得轮圈最终以一个波浪形的外观面世，ZIPP承诺这是有史以来最好的车圈。404 NSW轮组相比，这款轮组有三大优势：第一，波浪形轮圈支持53/58的框高。第二，车圈侧面凸起的纹路有助于提升轮组在大风天气中的操控性。最后，ZIPP称车圈上成组的六边形小凹坑可以使得气流在轮组上呆更久，减少空气的拖拽力。</p><p style=\"text-indent: 2em; text-align: center;\"><img src=\"/ueditor/php/upload/image/20180329/1522306657265463.jpg\" alt=\"1522306657265463.jpg\"/></p><p style=\"text-indent: 2em;\">款轮组同样也配备的另外一项借鉴其他3500英镑的售价可不是一般的高，比404 NSW贵了接近1700镑。这使得ZIPP 454 NSW成为了市面上最贵的轮组之一，只有Reynolds和德国碳纤专家LightWeight能比它更贵。</p>',2,0,0,1522306708,6);
/*!40000 ALTER TABLE `bk_article` ENABLE KEYS */;

#
# Structure for table "bk_auth_group"
#

DROP TABLE IF EXISTS `bk_auth_group`;
CREATE TABLE `bk_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "bk_auth_group"
#

/*!40000 ALTER TABLE `bk_auth_group` DISABLE KEYS */;
INSERT INTO `bk_auth_group` VALUES (1,'管理员组',1,'1,2,3,4,5,21,22,23,24,25,26,27,28,29,30,31,32,33,34,6,7,8,9,10,11,12,13,14,15,16,17,19,20,18'),(2,'boy',1,'21,22,23,24,25');
/*!40000 ALTER TABLE `bk_auth_group` ENABLE KEYS */;

#
# Structure for table "bk_auth_group_access"
#

DROP TABLE IF EXISTS `bk_auth_group_access`;
CREATE TABLE `bk_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "bk_auth_group_access"
#

/*!40000 ALTER TABLE `bk_auth_group_access` DISABLE KEYS */;
INSERT INTO `bk_auth_group_access` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `bk_auth_group_access` ENABLE KEYS */;

#
# Structure for table "bk_auth_rule"
#

DROP TABLE IF EXISTS `bk_auth_rule`;
CREATE TABLE `bk_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  `pid` mediumint(9) NOT NULL DEFAULT '0',
  `level` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(5) NOT NULL DEFAULT '50',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

#
# Data for table "bk_auth_rule"
#

/*!40000 ALTER TABLE `bk_auth_rule` DISABLE KEYS */;
INSERT INTO `bk_auth_rule` VALUES (1,'admin','管理员',1,1,'',0,0,50),(2,'admin/lst','管理员列表',1,1,'',1,1,50),(3,'admin/add','管理员添加',1,1,'',2,2,50),(4,'admin/edit','管理员修改',1,1,'',2,2,50),(5,'admin/del','管理员删除',1,1,'',2,2,50),(6,'authgroup','用户组',1,1,'',0,0,50),(7,'authgroup/lst','用户组列表',1,1,'',6,1,50),(8,'authgroup/add','用户组添加',1,1,'',7,2,50),(9,'authgroup/edit','用户组修改',1,1,'',7,2,50),(10,'authgroup/del','用户组删除',1,1,'',7,2,50),(11,'authrule','权限',1,1,'',0,0,50),(12,'authrule/lst','权限列表',1,1,'',11,1,50),(13,'authrule/add','权限添加',1,1,'',12,2,50),(14,'authrule/edit','权限修改',1,1,'',12,2,50),(15,'authrule/del','权限删除',1,1,'',12,2,50),(16,'cate','栏目管理',1,1,'',0,0,50),(17,'cate/lst','栏目列表',1,1,'',16,1,50),(18,'cate/add','栏目添加',1,1,'',17,2,50),(19,'cate/edit','栏目修改',1,1,'',17,2,50),(20,'cate/del','栏目删除',1,1,'',17,2,50),(21,'article','文章管理',1,1,'',0,0,50),(22,'article/lst','文章列表',1,1,'',21,1,50),(23,'article/add','文章添加',1,1,'',22,2,50),(24,'article/edit','文章修改',1,1,'',22,2,50),(25,'article/del','文章删除',1,1,'',22,2,50),(26,'link','友情链接',1,1,'',0,0,50),(27,'link/lst','友链列表',1,1,'',26,1,50),(28,'link/add','友链添加',1,1,'',27,2,50),(29,'link/edit','友链修改',1,1,'',27,2,50),(30,'link/del','友链删除',1,1,'',27,2,50),(31,'conf','系统',1,1,'',0,0,50),(32,'conf/conf','配置项',1,1,'',31,1,50),(33,'conf/lst','配置列表',1,1,'',31,1,50),(34,'conf/add','配置添加',1,1,'',33,2,50),(35,'conf/edit','配置修改',1,1,'',33,2,50),(36,'conf/del','配置删除',1,1,'',33,2,50);
/*!40000 ALTER TABLE `bk_auth_rule` ENABLE KEYS */;

#
# Structure for table "bk_cate"
#

DROP TABLE IF EXISTS `bk_cate`;
CREATE TABLE `bk_cate` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '栏目id',
  `catename` varchar(30) NOT NULL COMMENT '栏目名称',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '栏目类型,1列表栏目,2单页,3图片',
  `keywords` varchar(255) NOT NULL COMMENT '栏目关键词',
  `desc` varchar(255) NOT NULL COMMENT '栏目描述',
  `content` text NOT NULL COMMENT '栏目内容',
  `rec_index` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 不推荐 1推荐',
  `rec_bottom` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 不推荐 1推荐',
  `pid` mediumint(9) NOT NULL DEFAULT '0' COMMENT '上级栏目id',
  `sort` mediumint(9) DEFAULT '50' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

#
# Data for table "bk_cate"
#

/*!40000 ALTER TABLE `bk_cate` DISABLE KEYS */;
INSERT INTO `bk_cate` VALUES (1,'单车分类',1,'美骑,美骑自行车,单车分类','美骑自行车分类,山地自行车,赛车','<p>单车分类<br/></p>',0,0,0,50),(2,'死飞车',1,'美骑,美骑自行车,死飞车','死飞车,各种浪,浪到天际','<p>死飞车<br/></p>',1,0,1,50),(3,'复古骑行',1,'美骑,美骑自行车,复古骑行','复古骑行,老司机,老单车','<p>复古骑行<br/></p>',1,0,1,50),(4,'骑行装备',1,'美骑,美骑自行车,骑行装备','骑行装备,头盔,防风眼睛','<p>骑行装备<br/></p>',0,0,0,50),(5,'人身装备',1,'美骑,美骑自行车,人身装备','人身装备,头盔,防风眼睛','<p>人身装备<br/></p>',1,0,4,50),(6,'车身装备',1,'美骑,美骑自行车,车身装备','车身装备,脚蹬,踏板,带钉轮胎','<p>车身装备<br/></p>',1,0,4,50),(7,'舒适生活',3,'美骑,美骑自行车,舒适生活','美骑,舒适生活每一天','<p>舒适生活<br/></p>',0,1,0,50),(8,'关于我们',2,'美骑,美骑自行车,关于我们','关于我们,美骑,美骑自行车','<h3>\r\n\t公司简介</h3><p style=\"margin-top: 5px; text-indent: 2em;\"><span style=\"font-size:14px;\"><span style=\"color:#000000;\">美骑自行车于2002年创立，至今已16余年，系台湾自行车业界中第一家股票上市公司。2000年在深圳建立美骑自行车（中国）有限公司，大力推广低碳环保运动。于2002年成立内销总部，统筹国内自行车销售业务与分公司管理，在国内各主要城市：北京、天津、辽宁、山东、上海等地设立15家分公司。为满足广大消费者的需求及便捷服务，2007年在山东德州投资建立美骑自行车（山东）有限公司。2013年江苏南通工厂建成并投产。</span><br/><span style=\"color:#000000;\">美<span style=\"font-size:14px;\"><span style=\"color:#000000;\">骑</span></span>公司一直专注于高端自行车的研发，其研发中心设在德国斯图加特，用意延揽尖端人才及接收最新信息，开发世界级的自行车。&nbsp;</span><br/><span style=\"color:#000000;\">美<span style=\"font-size:14px;\"><span style=\"color:#000000;\">骑</span></span>拥有世界第一级登山车队，顶尖选手以最严苛的竞赛实测并验证美<span style=\"font-size:14px;\"><span style=\"color:#000000;\">骑</span></span>自行车。拥有一流的自行车生产线，采TPS生产，品管方面采取比JIS 、CPSC、BS更严格的质量标准生产，所生产的高品质系列山地车、公路车、旅行车等行销全球80多个国家和地区。 &nbsp; <br/></span></span></p><p style=\"margin-top: 5px; text-indent: 2em; text-align: center;\"><span style=\"font-size:14px;\"><span style=\"color:#000000;\"><img src=\"/ueditor/php/upload/image/20180329/1522304433769838.jpg\" alt=\"1522304433769838.jpg\"/></span></span></p><p style=\"margin-top: 5px; text-indent: 2em;\"><span style=\"font-size:14px;\"><span style=\"color:#000000;\"></span><span style=\"color:#000000;\">先扬名世界，再遍布全国。2014年美利达凭借雄厚的实力再次荣登轻工百强”成长能力NO1”。国际上，美<span style=\"font-size:14px;\"><span style=\"color:#000000;\">骑</span></span>蓝波车队成功签约两位华人车手，成为国内第一家拥有两位华人车手的国际品牌。2015年，美<span style=\"font-size:14px;\"><span style=\"color:#000000;\">骑</span></span>投入巨资首席赞助电影《破风》骑动斗志精神，鼓舞华人骑向顶尖世界舞台。2015的台湾国际品牌价值调查：美<span style=\"font-size:14px;\"><span style=\"color:#000000;\">骑</span></span>自行车排名第8位，品牌价值3.85亿美金，价值增幅高达11%，为连续第5年成长,足为传统产业的标竿企业。</span></span> </p><p><br/></p>',0,1,0,50);
/*!40000 ALTER TABLE `bk_cate` ENABLE KEYS */;

#
# Structure for table "bk_conf"
#

DROP TABLE IF EXISTS `bk_conf`;
CREATE TABLE `bk_conf` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '配置选id',
  `cnname` varchar(50) NOT NULL COMMENT '配置中文名称',
  `enname` varchar(50) NOT NULL COMMENT '配置英文名称',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '配置类型1单行文本框,2多行,3单选按钮,4复选框,5下拉菜单',
  `value` varchar(255) NOT NULL COMMENT '配置值',
  `values` varchar(255) NOT NULL COMMENT '配置可选值',
  `sort` smallint(6) NOT NULL DEFAULT '50' COMMENT '配置选排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Data for table "bk_conf"
#

/*!40000 ALTER TABLE `bk_conf` DISABLE KEYS */;
INSERT INTO `bk_conf` VALUES (1,'站点名称','sitename',1,'美骑自行车官方网站','站点名称',50),(2,'站点关键字','keywords',1,'美骑,美骑自行车,美骑自行车官方网站','站点关键字',50),(3,'站点描述','desc',1,'美骑自行车成立于2002年,为全国各地方提供自行车,销量全国第一,2008年荣获自行车销量一等奖','站点描述',50),(4,'是否关闭网站','close',3,'否','是,否',50),(5,'备案号','beian',1,'渝IPC备案17012280号','备案号',50);
/*!40000 ALTER TABLE `bk_conf` ENABLE KEYS */;

#
# Structure for table "bk_link"
#

DROP TABLE IF EXISTS `bk_link`;
CREATE TABLE `bk_link` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '链接id',
  `title` varchar(60) NOT NULL COMMENT '链接标题',
  `desc` varchar(255) NOT NULL COMMENT '链接描述',
  `url` varchar(160) NOT NULL COMMENT '链接地址',
  `sort` mediumint(9) NOT NULL DEFAULT '50' COMMENT '链接排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for table "bk_link"
#

/*!40000 ALTER TABLE `bk_link` DISABLE KEYS */;
INSERT INTO `bk_link` VALUES (1,'四彩云网络','四彩云网络有限公司','http://www.scy.com',50),(2,'蓝色主机','蓝色主机','http://cn.bluehost.com',50),(3,'萌站在线','萌站在线','http://www.moemoe.com.cn',50),(4,'篮球信仰','篮球信仰。','http://www.belief.ml',100);
/*!40000 ALTER TABLE `bk_link` ENABLE KEYS */;
