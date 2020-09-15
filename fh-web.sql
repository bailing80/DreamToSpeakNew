/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : fh-web

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2019-04-03 10:30:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `db_fhdb`
-- ----------------------------
DROP TABLE IF EXISTS `db_fhdb`;
CREATE TABLE `db_fhdb` (
  `FHDB_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '操作用户',
  `BACKUP_TIME` varchar(32) DEFAULT NULL COMMENT '备份时间',
  `TABLENAME` varchar(50) DEFAULT NULL COMMENT '表名',
  `SQLPATH` varchar(300) DEFAULT NULL COMMENT '存储位置',
  `TYPE` int(1) NOT NULL COMMENT '类型',
  `DBSIZE` varchar(10) DEFAULT NULL COMMENT '文件大小',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`FHDB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_fhdb
-- ----------------------------

-- ----------------------------
-- Table structure for `db_timingbackup`
-- ----------------------------
DROP TABLE IF EXISTS `db_timingbackup`;
CREATE TABLE `db_timingbackup` (
  `TIMINGBACKUP_ID` varchar(100) NOT NULL,
  `JOBNAME` varchar(50) DEFAULT NULL COMMENT '任务名称',
  `CREATE_TIME` varchar(32) DEFAULT NULL COMMENT '创建时间',
  `TABLENAME` varchar(50) DEFAULT NULL COMMENT '表名',
  `STATUS` int(1) NOT NULL COMMENT '类型',
  `FHTIME` varchar(30) DEFAULT NULL COMMENT '时间规则',
  `TIMEEXPLAIN` varchar(100) DEFAULT NULL COMMENT '规则说明',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`TIMINGBACKUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_timingbackup
-- ----------------------------
INSERT INTO `db_timingbackup` VALUES ('311e06c34a5e4518a86d5d30799f9b55', 'sys_app_user_515762', '2016-04-11 17:04:55', 'sys_app_user', '2', '1/2 * * ? * *', '每个月的 每周 每天 每小时执行一次', '备份任务');
INSERT INTO `db_timingbackup` VALUES ('bc4a788bc2ec40bdb1b7730131c26d42', 'sys_app_user_359515', '2016-04-12 17:24:05', 'sys_app_user', '2', '1/3 * * ? * *', '每个月的 每周 每天 每小时执行一次', 'ssss');

-- ----------------------------
-- Table structure for `sys_app_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_app_user`;
CREATE TABLE `sys_app_user` (
  `USER_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `ROLE_ID` varchar(100) DEFAULT NULL,
  `LAST_LOGIN` varchar(255) DEFAULT NULL,
  `IP` varchar(100) DEFAULT NULL,
  `STATUS` varchar(32) DEFAULT NULL,
  `BZ` varchar(255) DEFAULT NULL,
  `PHONE` varchar(100) DEFAULT NULL,
  `SFID` varchar(100) DEFAULT NULL,
  `START_TIME` varchar(100) DEFAULT NULL,
  `END_TIME` varchar(100) DEFAULT NULL,
  `YEARS` int(10) DEFAULT NULL,
  `NUMBER` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_app_user
-- ----------------------------
INSERT INTO `sys_app_user` VALUES ('1e89e6504be349a68c025976b3ecc1d1', 'a1', '698d51a19d8a121ce581499d7b701668', '会员甲', '', '115b386ff04f4352b060dffcd2b5d1da', '', '', '1', '121', '1212', '1212', '2015-12-02', '2015-12-25', '2', '111', '313596790@qq.com');

-- ----------------------------
-- Table structure for `sys_blacklist`
-- ----------------------------
DROP TABLE IF EXISTS `sys_blacklist`;
CREATE TABLE `sys_blacklist` (
  `BLACKLIST_ID` varchar(100) NOT NULL,
  `IP` varchar(20) DEFAULT NULL COMMENT 'IP',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  `CTIME` varchar(32) DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`BLACKLIST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_blacklist
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_codeeditor`
-- ----------------------------
DROP TABLE IF EXISTS `sys_codeeditor`;
CREATE TABLE `sys_codeeditor` (
  `CODEEDITOR_ID` varchar(100) NOT NULL,
  `TYPE` varchar(30) DEFAULT NULL COMMENT '类型',
  `FTLNMAME` varchar(30) DEFAULT NULL COMMENT '文件名',
  `CTIME` varchar(32) DEFAULT NULL COMMENT '创建时间',
  `CODECONTENT` text COMMENT '代码',
  PRIMARY KEY (`CODEEDITOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_codeeditor
-- ----------------------------
INSERT INTO `sys_codeeditor` VALUES ('18c459804cb8467db7b49d141f94b833', 'createHtml', 'indexTemplate', '2017-07-03 02:09:34', '<!DOCTYPE html>\n<!--[if lt IE 7 ]><html class=\"ie ie6\" lang=\"en\"> <![endif]-->\n<!--[if IE 7 ]><html class=\"ie ie7\" lang=\"en\"> <![endif]-->\n<!--[if IE 8 ]><html class=\"ie ie8\" lang=\"en\"> <![endif]-->\n<!--[if (gte IE 9)|!(IE)]><!-->\n<html lang=\"en\">\n<!--<![endif]-->\n<head>\n<meta charset=\"utf-8\">\n<title>${TITLE}</title>\n<meta name=\"keywords\" content=\"${KEYWORDS}\" />\n<meta name=\"description\" content=\"${DESCRIPTION}\">\n<meta name=\"author\" content=\"fhadmin\">\n<meta name=\"viewport\"\n	content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n<!-- CSS -->\n<link rel=\"stylesheet\" href=\"fh_static_1/css/style.css\">\n<link rel=\"stylesheet\" type=\"text/css\"\n	href=\"fh_static_1/css/settings.css\" media=\"screen\" />\n<!-- JS -->\n<script src=\"fh_static_1/js/jquery-1.8.2.min.js\" type=\"text/javascript\"></script>\n<!-- jQuery -->\n<script src=\"fh_static_1/js/jquery.easing.1.3.js\" type=\"text/javascript\"></script>\n<!-- jQuery easing -->\n<script src=\"fh_static_1/js/modernizr.custom.js\" type=\"text/javascript\"></script>\n<!-- Modernizr -->\n<script src=\"fh_static_1/js/jquery-ui-1.10.1.custom.min.js\"\n	type=\"text/javascript\"></script>\n<!-- tabs, toggles, accordion -->\n<script src=\"fh_static_1/js/custom.js\" type=\"text/javascript\"></script>\n<!-- jQuery initialization -->\n<!-- Responsive Menu -->\n<script src=\"fh_static_1/js/jquery.meanmenu.js\"></script>\n<script>\n	jQuery(document).ready(function() {\n		jQuery(\'header nav\').meanmenu();\n	});\n</script>\n<!-- Revolution Slider -->\n<script src=\"fh_static_1/js/jquery.themepunch.plugins.min.js\"></script>\n<script src=\"fh_static_1/js/jquery.themepunch.revolution.min.js\"></script>\n<script src=\"fh_static_1/js/revolution-slider-options.js\"></script>\n<!-- Prety photo -->\n<script src=\"fh_static_1/js/jquery.prettyPhoto.js\"></script>\n<script>\n	$(document).ready(function() {\n		$(\"a[data-gal^=\'prettyPhoto\']\").prettyPhoto();\n	});\n</script>\n<!-- Tooltip -->\n<script src=\"fh_static_1/js/tooltip.js\"></script>\n<!-- Flexisel -->\n<script type=\"text/javascript\" src=\"fh_static_1/js/jquery.flexisel.js\"></script>\n<!-- Favicons  -->\n<link rel=\"shortcut icon\" href=\"fh_static_1/images/favicon.ico\">\n<link rel=\"apple-touch-icon\" href=\"fh_static_1/images/apple-touch-icon.png\">\n<link rel=\"apple-touch-icon\" sizes=\"72x72\" href=\"fh_static_1/images/apple-touch-icon-72x72.png\">\n<link rel=\"apple-touch-icon\" sizes=\"114x114\" href=\"fh_static_1/images/apple-touch-icon-114x114.png\">\n</head>\n<body>\n\n	<!-- header 包含导航菜单 -->\n	<#include \"headerTemplate.ftl\"> \n	<!-- header 包含导航菜单 -->\n\n	<!-- REVOLUTION SLIDER -->\n	<div class=\"fullwidthbanner-container top-shadow\">\n		<div class=\"fullwidthbanner\">\n			<ul>\n				<#list fieldList1 as var>\n					<li data-transition=\"boxfade\" data-slotamount=\"${var_index+1+1}\" data-masterspeed=\"300\">\n						<img src=\"${var[1]}\" alt=\"${var[0]}\">\n					</li>\n				</#list>\n			</ul>\n		</div>\n	</div>\n	<!-- END REVOLUTION SLIDER  -->\n	<div class=\"copyrights\">\n	</div>\n	<div class=\"container\">\n\n		<div class=\"sixteen columns welcome\">\n			<h3>\n				${TITLE1}\n				<br />\n				${TITLE2}\n			</h3>\n		</div>\n\n		<div class=\"separator\"></div>\n\n		<div class=\"four columns\">\n			<!-- Icon Box -->\n			<div class=\"service\">\n				<a href=\"${CPTOURL1}\">\n					<i class=\"fa fa-desktop colored square\"></i>\n				</a>\n				<h3 class=\"centered\">\n					<a href=\"${CPTOURL1}\" class=\"dark-link\">${CPTITLE1}</a>\n				</h3>\n				<p class=\"centered\">${CPCONTENT1}</p>\n			</div>\n			<!-- End Icon Box -->\n		</div>\n		<div class=\"four columns\">\n			<!-- Icon Box -->\n			<div class=\"service\">\n				<a href=\"${CPTOURL2}\">\n					<i class=\"fa fa-html5 colored square\"></i>\n				</a>\n				<h3 class=\"centered\">\n					<a href=\"${CPTOURL2}\" class=\"dark-link\">${CPTITLE2}</a>\n				</h3>\n				<p class=\"centered\">${CPCONTENT2}</p>\n			</div>\n			<!-- End Icon Box -->\n		</div>\n		<div class=\"four columns\">\n			<!-- Icon Box -->\n			<div class=\"service\">\n				<a href=\"${CPTOURL3}\">\n					<i class=\"fa fa-css3 colored square\"></i>\n				</a>\n				<h3 class=\"centered\">\n					<a href=\"${CPTOURL3}\" class=\"dark-link\">${CPTITLE3}</a>\n				</h3>\n				<p class=\"centered\">${CPCONTENT3}</p>\n			</div>\n			<!-- End Icon Box -->\n		</div>\n		<div class=\"four columns\">\n			<!-- Icon Box -->\n			<div class=\"service\">\n				<a href=\"${CPTOURL4}\">\n					<i class=\"fa fa-magic colored square\"></i>\n				</a>\n				<h3 class=\"centered\">\n					<a href=\"${CPTOURL4}\" class=\"dark-link\">${CPTITLE4}</a>\n				</h3>\n				<p class=\"centered\">${CPCONTENT4}</p>\n			</div>\n			<!-- End Icon Box -->\n		</div>\n\n		<div class=\"clearfix\"></div>\n\n		<div class=\"separator\"></div>\n\n		<div class=\"sixteen columns\">\n			<h4 class=\"headline\">项目案例 ></h4>\n		</div>\n\n		<#list fieldList2 as var>\n		<div class=\"four columns identity\">\n			<div class=\"work\">\n				<a href=\"${var[1]}\" data-gal=\"prettyPhoto\" class=\"work-image\">\n					<img src=\"${var[1]}\" alt=\"${var[0]}\">\n					<div class=\"link-overlay fa fa-search\"></div>\n				</a>\n				<a href=\"${var[2]}\" class=\"work-name\">${var[0]}</a>\n				<div class=\"tags\">${var[3]}</div>\n			</div>\n		</div>\n		</#list>\n\n		<div class=\"clearfix\"></div>\n\n		<!-- begin promobox -->\n		<div class=\"sixteen columns\">\n			<div class=\"promo-box clearfix\">\n				<div class=\"text\">\n					<h3>${CONTENT1}</h3>\n					<p>${CONTENT2}</p>\n				</div>\n				<a class=\"btn big colored\" href=\"${TOURL}\" target=\"_blank\">\n					<i class=\"fa fa-hand-o-right\"></i>了解更多</a>\n			</div>\n		</div>\n		<!-- end promobox -->\n\n		<div class=\"separator\"></div>\n\n		<!-- Our Clients  -->\n		<div class=\"sixteen columns clients\">\n			<h4 class=\"headline\">合作伙伴 ></h4>\n\n			<!-- Start brand carousel -->\n			<ul id=\"flexiselDemo2\">\n			<#list fieldList3 as var>\n				<li onclick=\"window.location.href=\'${var[2]}\'\"><img src=\"${var[1]}\" alt=\"${var[0]}\" /></li>\n			</#list>	\n			</ul>\n			<div class=\"clearout\"></div>\n			<!-- End brand carousel -->\n		</div>\n\n	</div>\n	<!-- container -->\n	\n	<!-- footer 包含底部 -->\n	<#include \"footerTemplate.ftl\"> \n	<!-- footer 包含底部  -->\n\n	<script type=\"text/javascript\">\n		$(window).load(function() {\n		\n			$(\"#index\").addClass(\"current_page_item\");\n		\n			$(\"#flexiselDemo2\").flexisel({\n				visibleItems : 5,\n				animationSpeed : 1000,\n				autoPlay : true,\n				autoPlaySpeed : 3000,\n				pauseOnHover : true,\n				enableResponsiveBreakpoints : true,\n				responsiveBreakpoints : {\n					portrait : {\n						changePoint : 480,\n						visibleItems : 1\n					},\n					landscape : {\n						changePoint : 640,\n						visibleItems : 2\n					},\n					tablet : {\n						changePoint : 768,\n						visibleItems : 3\n					}\n				}\n			});\n\n		});\n	</script>\n	<!-- End Document  -->\n</body>\n</html>\n');
INSERT INTO `sys_codeeditor` VALUES ('23da5422e80f41739987bdc491691762', 'createHtml', 'productTemplate', '2019-01-04 16:51:38', '<!DOCTYPE html>\n<!--[if lt IE 7 ]><html class=\"ie ie6\" lang=\"en\"> <![endif]-->\n<!--[if IE 7 ]><html class=\"ie ie7\" lang=\"en\"> <![endif]-->\n<!--[if IE 8 ]><html class=\"ie ie8\" lang=\"en\"> <![endif]-->\n<!--[if (gte IE 9)|!(IE)]><!-->\n<html lang=\"en\">\n<!--<![endif]-->\n<head>\n<meta charset=\"utf-8\">\n<title>${TITLE}-产品案例</title>\n<meta name=\"keywords\" content=\"${KEYWORDS}\" />\n<meta name=\"description\" content=\"${DESCRIPTION}\">\n<meta name=\"author\" content=\"fhadmin\">\n<meta name=\"viewport\"\n	content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n<!-- CSS -->\n<link rel=\"stylesheet\" href=\"fh_static_1/css/style.css\">\n<link rel=\"stylesheet\" type=\"text/css\"\n	href=\"fh_static_1/css/settings.css\" media=\"screen\" />\n<!-- JS -->\n<script src=\"fh_static_1/js/jquery-1.8.2.min.js\" type=\"text/javascript\"></script>\n<!-- jQuery -->\n<script src=\"fh_static_1/js/jquery.easing.1.3.js\" type=\"text/javascript\"></script>\n<!-- jQuery easing -->\n<script src=\"fh_static_1/js/modernizr.custom.js\" type=\"text/javascript\"></script>\n<!-- Modernizr -->\n<script src=\"fh_static_1/js/jquery-ui-1.10.1.custom.min.js\"\n	type=\"text/javascript\"></script>\n<!-- tabs, toggles, accordion -->\n<script src=\"fh_static_1/js/custom.js\" type=\"text/javascript\"></script>\n<!-- jQuery initialization -->\n<!-- Responsive Menu -->\n<script src=\"fh_static_1/js/jquery.meanmenu.js\"></script>\n<script>\n	jQuery(document).ready(function() {\n		jQuery(\'header nav\').meanmenu();\n	});\n</script>\n<!-- Revolution Slider -->\n<script src=\"fh_static_1/js/jquery.themepunch.plugins.min.js\"></script>\n<script src=\"fh_static_1/js/jquery.themepunch.revolution.min.js\"></script>\n<script src=\"fh_static_1/js/revolution-slider-options.js\"></script>\n<!-- Prety photo -->\n<script src=\"fh_static_1/js/jquery.prettyPhoto.js\"></script>\n<script>\n	$(document).ready(function() {\n		$(\"a[data-gal^=\'prettyPhoto\']\").prettyPhoto();\n	});\n</script>\n<!-- Tooltip -->\n<script src=\"fh_static_1/js/tooltip.js\"></script>\n<!-- Flexisel -->\n<script type=\"text/javascript\" src=\"fh_static_1/js/jquery.flexisel.js\"></script>\n<!-- Favicons  -->\n<link rel=\"shortcut icon\" href=\"fh_static_1/images/favicon.ico\">\n<link rel=\"apple-touch-icon\" href=\"fh_static_1/images/apple-touch-icon.png\">\n<link rel=\"apple-touch-icon\" sizes=\"72x72\" href=\"fh_static_1/images/apple-touch-icon-72x72.png\">\n<link rel=\"apple-touch-icon\" sizes=\"114x114\" href=\"fh_static_1/images/apple-touch-icon-114x114.png\">\n</head>\n<body>\n\n	<!-- header 包含导航菜单 -->\n	<#include \"headerTemplate.ftl\"> \n	<!-- header 包含导航菜单 -->\n\n	<div class=\"container\">\n		<div class=\"container\">\n			<div class=\"sixteen columns page-title\">\n				<div class=\"eight columns alpha\">\n					<h3> <span>产品案例</span> </h3>\n				</div>\n				<div class=\"eight columns omega\">\n					<nav class=\"breadcrumbs\">\n						<ul>\n							<li></li>\n							<li>\n								<a>Product case</a>\n							</li>\n							<li></li>\n						</ul>\n					</nav>\n				</div>\n				<div class=\"clearfix\"></div>\n			</div><!-- page-title -->\n		</div><!-- container -->\n			\n			<div class=\"row port works\">\n			\n				<#list fieldList5 as var>		\n				<div class=\"row-item one-third column photography webdesign\">\n					<div class=\"work\">\n					    <input type=\"button\" value=\"呼吸训练系统\"\n			onclick=\"location.href=\'${pageContext.request.contextPath }/jsp/huxilianxixitongjiemian.jsp\'\"\n			style=\"font-size: 35px; width: 400px; height: 100px; margin-left: 250px; margin-top: 220px; background: #4B9F37; color: #ffffff; border: none; border-radius: 12px\" />\n		<br> <br> <br> <input type=\"button\" value=\"发音练习系统\"\n			onclick=\"location.href=\'${pageContext.request.contextPath }/jsp/fayinlianxichushijiemian.jsp\'\"\n			style=\"font-size: 35px; width: 400px; height: 100px; margin-left: 250px; margin-top: 30px; background: #ff0000; color: #ffffff; border: none; border-radius: 12px\" />\n		<br> <br> <br> <input type=\"button\" value=\"唇语学习系统\"\n			onclick=\"location.href=\'${pageContext.request.contextPath }/jsp/chunyuxueximoshixuanzejiemian.jsp\'\"\n			style=\"font-size: 35px; width: 400px; height: 100px; margin-left: 250px; margin-top: 30px; background: #0000ff; color: #ffffff; border: none; border-radius: 12px\" />\n	\n						<a href=\"${var[1]}\" data-gal=\"prettyPhoto\" class=\"work-image\">\n							<img src=\"${var[1]}\" alt=\"${var[0]}\">\n							<div class=\"link-overlay fa fa-search\"></div>\n						</a>\n						<a href=\"${var[2]}\" target=\"_blank\" class=\"work-name\">${var[0]}</a>\n						<div class=\"tags\">${var[3]}</div>\n					</div>\n				</div>\n				</#list>\n				\n			</div>\n		\n	</div>\n	<!-- container -->\n	\n	<!-- footer 包含底部 -->\n	<#include \"footerTemplate.ftl\"> \n	<!-- footer 包含底部  -->\n\n	<script type=\"text/javascript\">\n		$(window).load(function() {\n			$(\"#Product\").addClass(\"current_page_item\"); \n		});\n	</script>\n	<!-- End Document  -->\n</body>\n</html>\n');
INSERT INTO `sys_codeeditor` VALUES ('2dc35ce46ecb4605bcaa61fcf0e3bf45', 'createHtml', 'productTemplate', '2019-01-04 17:01:44', '<!DOCTYPE html>\n<!--[if lt IE 7 ]><html class=\"ie ie6\" lang=\"en\"> <![endif]-->\n<!--[if IE 7 ]><html class=\"ie ie7\" lang=\"en\"> <![endif]-->\n<!--[if IE 8 ]><html class=\"ie ie8\" lang=\"en\"> <![endif]-->\n<!--[if (gte IE 9)|!(IE)]><!-->\n<html lang=\"en\">\n<!--<![endif]-->\n<head>\n<meta charset=\"utf-8\">\n<title>${TITLE}-产品案例</title>\n<meta name=\"keywords\" content=\"${KEYWORDS}\" />\n<meta name=\"description\" content=\"${DESCRIPTION}\">\n<meta name=\"author\" content=\"fhadmin\">\n<meta name=\"viewport\"\n	content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n<!-- CSS -->\n<link rel=\"stylesheet\" href=\"fh_static_1/css/style.css\">\n<link rel=\"stylesheet\" type=\"text/css\"\n	href=\"fh_static_1/css/settings.css\" media=\"screen\" />\n<!-- JS -->\n<script src=\"fh_static_1/js/jquery-1.8.2.min.js\" type=\"text/javascript\"></script>\n<!-- jQuery -->\n<script src=\"fh_static_1/js/jquery.easing.1.3.js\" type=\"text/javascript\"></script>\n<!-- jQuery easing -->\n<script src=\"fh_static_1/js/modernizr.custom.js\" type=\"text/javascript\"></script>\n<!-- Modernizr -->\n<script src=\"fh_static_1/js/jquery-ui-1.10.1.custom.min.js\"\n	type=\"text/javascript\"></script>\n<!-- tabs, toggles, accordion -->\n<script src=\"fh_static_1/js/custom.js\" type=\"text/javascript\"></script>\n<!-- jQuery initialization -->\n<!-- Responsive Menu -->\n<script src=\"fh_static_1/js/jquery.meanmenu.js\"></script>\n<script>\n	jQuery(document).ready(function() {\n		jQuery(\'header nav\').meanmenu();\n	});\n</script>\n<!-- Revolution Slider -->\n<script src=\"fh_static_1/js/jquery.themepunch.plugins.min.js\"></script>\n<script src=\"fh_static_1/js/jquery.themepunch.revolution.min.js\"></script>\n<script src=\"fh_static_1/js/revolution-slider-options.js\"></script>\n<!-- Prety photo -->\n<script src=\"fh_static_1/js/jquery.prettyPhoto.js\"></script>\n<script>\n	$(document).ready(function() {\n		$(\"a[data-gal^=\'prettyPhoto\']\").prettyPhoto();\n	});\n</script>\n<!-- Tooltip -->\n<script src=\"fh_static_1/js/tooltip.js\"></script>\n<!-- Flexisel -->\n<script type=\"text/javascript\" src=\"fh_static_1/js/jquery.flexisel.js\"></script>\n<!-- Favicons  -->\n<link rel=\"shortcut icon\" href=\"fh_static_1/images/favicon.ico\">\n<link rel=\"apple-touch-icon\" href=\"fh_static_1/images/apple-touch-icon.png\">\n<link rel=\"apple-touch-icon\" sizes=\"72x72\" href=\"fh_static_1/images/apple-touch-icon-72x72.png\">\n<link rel=\"apple-touch-icon\" sizes=\"114x114\" href=\"fh_static_1/images/apple-touch-icon-114x114.png\">\n</head>\n<body>\n\n	<!-- header 包含导航菜单 -->\n	<#include \"headerTemplate.ftl\"> \n	<!-- header 包含导航菜单 -->\n\n	<div class=\"container\">\n		<div class=\"container\">\n			<div class=\"sixteen columns page-title\">\n				<div class=\"eight columns alpha\">\n					<h3> <span>产品案例</span> </h3>\n				</div>\n				<div class=\"eight columns omega\">\n					<nav class=\"breadcrumbs\">\n						<ul>\n							<li></li>\n							<li>\n								<a>Product case</a>\n							</li>\n							<li></li>\n						</ul>\n					</nav>\n				</div>\n				<div class=\"clearfix\"></div>\n			</div><!-- page-title -->\n		</div><!-- container -->\n			\n			<div class=\"row port works\">\n			\n				<#list fieldList5 as var>		\n				<div class=\"row-item one-third column photography webdesign\">\n					<div class=\"work\">\n					   		<a href=\"${var[1]}\" data-gal=\"prettyPhoto\" class=\"work-image\">\n							<img src=\"${var[1]}\" alt=\"${var[0]}\" onclick=\"startRecording()\" >\n							<div class=\"link-overlay fa fa-search\"></div>\n						</a>\n						<a href=\"${var[2]}\" target=\"_blank\" class=\"work-name\">${var[0]}</a>\n						<div class=\"tags\">${var[3]}</div>\n					</div>\n				</div>\n				</#list>\n				\n			</div>\n		\n	</div>\n	<!-- container -->\n	\n	<!-- footer 包含底部 -->\n	<#include \"footerTemplate.ftl\"> \n	<!-- footer 包含底部  -->\n\n	<script type=\"text/javascript\">\n		$(window).load(function() {\n			$(\"#Product\").addClass(\"current_page_item\"); \n		});\n	</script>\n	<!-- End Document  -->\n</body>\n</html>\n');
INSERT INTO `sys_codeeditor` VALUES ('354566b769954d8d818836b0f3052af3', 'createHtml', 'indexTemplate', '2019-02-23 18:08:25', '<!DOCTYPE html>\n<!--[if lt IE 7 ]><html class=\"ie ie6\" lang=\"en\"> <![endif]-->\n<!--[if IE 7 ]><html class=\"ie ie7\" lang=\"en\"> <![endif]-->\n<!--[if IE 8 ]><html class=\"ie ie8\" lang=\"en\"> <![endif]-->\n<!--[if (gte IE 9)|!(IE)]><!-->\n<html lang=\"en\">\n<!--<![endif]-->\n<head>\n    <meta http-equiv=\"Content-Security-Policy\" c/p>\n<meta charset=\"utf-8\">\n<title>${TITLE}</title>\n<meta name=\"keywords\" content=\"${KEYWORDS}\" />\n<meta name=\"description\" content=\"${DESCRIPTION}\">\n<meta name=\"author\" content=\"fhadmin\">\n<meta name=\"viewport\"\n	content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n<!-- CSS -->\n<link rel=\"stylesheet\" href=\"fh_static_1/css/style.css\">\n<link rel=\"stylesheet\" type=\"text/css\"\n	href=\"fh_static_1/css/settings.css\" media=\"screen\" />\n<!-- JS -->\n<script src=\"fh_static_1/js/jquery-1.8.2.min.js\" type=\"text/javascript\"></script>\n<!-- jQuery -->\n<script src=\"fh_static_1/js/jquery.easing.1.3.js\" type=\"text/javascript\"></script>\n<!-- jQuery easing -->\n<script src=\"fh_static_1/js/modernizr.custom.js\" type=\"text/javascript\"></script>\n<!-- Modernizr -->\n<script src=\"fh_static_1/js/jquery-ui-1.10.1.custom.min.js\"\n	type=\"text/javascript\"></script>\n<!-- tabs, toggles, accordion -->\n<script src=\"fh_static_1/js/custom.js\" type=\"text/javascript\"></script>\n<!-- jQuery initialization -->\n<!-- Responsive Menu -->\n<script src=\"fh_static_1/js/jquery.meanmenu.js\"></script>\n<script>\n	jQuery(document).ready(function() {\n		jQuery(\'header nav\').meanmenu();\n	});\n</script>\n<!-- Revolution Slider -->\n<script src=\"fh_static_1/js/jquery.themepunch.plugins.min.js\"></script>\n<script src=\"fh_static_1/js/jquery.themepunch.revolution.min.js\"></script>\n<script src=\"fh_static_1/js/revolution-slider-options.js\"></script>\n<!-- Prety photo -->\n<script src=\"fh_static_1/js/jquery.prettyPhoto.js\"></script>\n<script>\n	$(document).ready(function() {\n		$(\"a[data-gal^=\'prettyPhoto\']\").prettyPhoto();\n	});\n</script>\n<!-- Tooltip -->\n<script src=\"fh_static_1/js/tooltip.js\"></script>\n<!-- Flexisel -->\n<script type=\"text/javascript\" src=\"fh_static_1/js/jquery.flexisel.js\"></script>\n<!-- Favicons  -->\n<link rel=\"shortcut icon\" href=\"fh_static_1/images/favicon.ico\">\n<link rel=\"apple-touch-icon\" href=\"fh_static_1/images/apple-touch-icon.png\">\n<link rel=\"apple-touch-icon\" sizes=\"72x72\" href=\"fh_static_1/images/apple-touch-icon-72x72.png\">\n<link rel=\"apple-touch-icon\" sizes=\"114x114\" href=\"fh_static_1/images/apple-touch-icon-114x114.png\">\n</head>\n<body>\n\n	<div id=\"bkbg\">\n\n	<!-- header 包含导航菜单 -->\n	<#include \"headerTemplate.ftl\"> \n	<!-- header 包含导航菜单 -->\n\n	<!-- 轮播图 -->\n	<div class=\"fullwidthbanner-container top-shadow\">\n		<div class=\"fullwidthbanner\">\n			<ul>\n				<#list fieldList1 as var>\n					<li data-transition=\"boxfade\" data-slotamount=\"${var_index+1+1}\" data-masterspeed=\"300\">\n						<img src=\"${var[1]}\" alt=\"${var[0]}\">\n					</li>\n				</#list>\n			</ul>\n		</div>\n	</div>\n	<!-- END REVOLUTION SLIDER  -->\n	<div class=\"copyrights\">\n	</div>\n	<div class=\"container\">\n\n		<div class=\"sixteen columns welcome\">\n			<h3>\n				${TITLE1}\n				<br />\n				${TITLE2}\n			</h3>\n		</div>\n\n		<div class=\"separator\"></div>\n		\n		<!-- 公司理念  -->\n		<div class=\"four columns\">\n			<!-- Icon Box -->\n			<div class=\"service\">\n				<a href=\"${CPTOURL1}\">\n					<i class=\"fa fa-desktop colored square\"></i>\n				</a>\n				<h3 class=\"centered\">\n					<a href=\"${CPTOURL1}\" class=\"dark-link\">${CPTITLE1}</a>\n				</h3>\n				<p class=\"centered\">${CPCONTENT1}</p>\n			</div>\n			<!-- End Icon Box -->\n		</div>\n		<div class=\"four columns\">\n			<!-- Icon Box -->\n			<div class=\"service\">\n				<a href=\"${CPTOURL2}\">\n					<i class=\"fa fa-html5 colored square\"></i>\n				</a>\n				<h3 class=\"centered\">\n					<a href=\"${CPTOURL2}\" class=\"dark-link\">${CPTITLE2}</a>\n				</h3>\n				<p class=\"centered\">${CPCONTENT2}</p>\n			</div>\n			<!-- End Icon Box -->\n		</div>\n		<div class=\"four columns\">\n			<!-- Icon Box -->\n			<div class=\"service\">\n				<a href=\"${CPTOURL3}\">\n					<i class=\"fa fa-css3 colored square\"></i>\n				</a>\n				<h3 class=\"centered\">\n					<a href=\"${CPTOURL3}\" class=\"dark-link\">${CPTITLE3}</a>\n				</h3>\n				<p class=\"centered\">${CPCONTENT3}</p>\n			</div>\n			<!-- End Icon Box -->\n		</div>\n		<div class=\"four columns\">\n			<!-- Icon Box -->\n			<div class=\"service\">\n				<a href=\"${CPTOURL4}\">\n					<i class=\"fa fa-magic colored square\"></i>\n				</a>\n				<h3 class=\"centered\">\n					<a href=\"${CPTOURL4}\" class=\"dark-link\">${CPTITLE4}</a>\n				</h3>\n				<p class=\"centered\">${CPCONTENT4}</p>\n			</div>\n			<!-- End Icon Box -->\n		</div>\n\n		<div class=\"clearfix\"></div>\n\n		<div class=\"separator\"></div>\n\n		<div class=\"sixteen columns\">\n			<h4 class=\"headline\">成果展示&nbsp;&gt</h4>\n		</div>\n\n		<#list fieldList2 as var>\n		<div class=\"four columns identity\">\n			<div class=\"work\">\n				<a href=\"${var[1]}\" data-gal=\"prettyPhoto\" class=\"work-image\">\n					<img src=\"${var[1]}\" alt=\"${var[0]}\">\n					<div class=\"link-overlay fa fa-search\"></div>\n				</a>\n				<a href=\"${var[2]}\" class=\"work-name\">${var[0]}</a>\n				<div class=\"tags\">${var[3]}</div>\n			</div>\n		</div>\n		</#list>\n\n		<div class=\"clearfix\"></div>\n\n		<!-- begin promobox -->\n		<div class=\"sixteen columns\">\n			<div class=\"promo-box clearfix\">\n				<div class=\"text\">\n					<h3>${CONTENT1}</h3>\n					<p>${CONTENT2}</p>\n				</div>\n				<a class=\"btn big colored\" href=\"${TOURL}\" target=\"_blank\">\n					<i class=\"fa fa-hand-o-right\"></i>了解更多</a>\n			</div>\n		</div>\n		<!-- end promobox -->\n\n		<div class=\"separator\"></div>\n\n		<!-- Our Clients  -->\n		<div class=\"sixteen columns clients\">\n			<h4 class=\"headline\">合作伙伴&nbsp;&gt</h4>\n\n			<!-- Start brand carousel -->\n			<ul id=\"flexiselDemo2\">\n			<#list fieldList3 as var>\n				<li onclick=\"window.location.href=\'${var[2]}\'\"><img src=\"${var[1]}\" alt=\"${var[0]}\" /></li>\n			</#list>	\n			</ul>\n			<div class=\"clearout\"></div>\n			<!-- End brand carousel -->\n		</div>\n\n	</div>\n	<!-- container -->\n	\n	<!-- footer 包含底部 -->\n	<#include \"footerTemplate.ftl\"> \n	<!-- footer 包含底部  -->\n\n	</div>\n\n	<script type=\"text/javascript\">\n		$(window).load(function() {\n		\n			$(\"#index\").addClass(\"current_page_item\");\n			\n			$(\"#flexiselDemo2\").flexisel({\n				visibleItems : 5,\n				animationSpeed : 1000,\n				autoPlay : true,\n				autoPlaySpeed : 3000,\n				pauseOnHover : true,\n				enableResponsiveBreakpoints : true,\n				responsiveBreakpoints : {\n					portrait : {\n						changePoint : 480,\n						visibleItems : 1\n					},\n					landscape : {\n						changePoint : 640,\n						visibleItems : 2\n					},\n					tablet : {\n						changePoint : 768,\n						visibleItems : 3\n					}\n				}\n			});\n			\n		});\n	</script>\n	<!-- End Document  -->\n</body>\n</html>\n');
INSERT INTO `sys_codeeditor` VALUES ('3708647ba25e48699c3a759863a1824a', 'createHtml', 'productTemplate', '2019-01-04 16:57:19', '<!DOCTYPE html>\n<!--[if lt IE 7 ]><html class=\"ie ie6\" lang=\"en\"> <![endif]-->\n<!--[if IE 7 ]><html class=\"ie ie7\" lang=\"en\"> <![endif]-->\n<!--[if IE 8 ]><html class=\"ie ie8\" lang=\"en\"> <![endif]-->\n<!--[if (gte IE 9)|!(IE)]><!-->\n<html lang=\"en\">\n<!--<![endif]-->\n<head>\n<meta charset=\"utf-8\">\n<title>${TITLE}-产品案例</title>\n<meta name=\"keywords\" content=\"${KEYWORDS}\" />\n<meta name=\"description\" content=\"${DESCRIPTION}\">\n<meta name=\"author\" content=\"fhadmin\">\n<meta name=\"viewport\"\n	content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n<!-- CSS -->\n<link rel=\"stylesheet\" href=\"fh_static_1/css/style.css\">\n<link rel=\"stylesheet\" type=\"text/css\"\n	href=\"fh_static_1/css/settings.css\" media=\"screen\" />\n<!-- JS -->\n<script src=\"fh_static_1/js/jquery-1.8.2.min.js\" type=\"text/javascript\"></script>\n<!-- jQuery -->\n<script src=\"fh_static_1/js/jquery.easing.1.3.js\" type=\"text/javascript\"></script>\n<!-- jQuery easing -->\n<script src=\"fh_static_1/js/modernizr.custom.js\" type=\"text/javascript\"></script>\n<!-- Modernizr -->\n<script src=\"fh_static_1/js/jquery-ui-1.10.1.custom.min.js\"\n	type=\"text/javascript\"></script>\n<!-- tabs, toggles, accordion -->\n<script src=\"fh_static_1/js/custom.js\" type=\"text/javascript\"></script>\n<!-- jQuery initialization -->\n<!-- Responsive Menu -->\n<script src=\"fh_static_1/js/jquery.meanmenu.js\"></script>\n<script>\n	jQuery(document).ready(function() {\n		jQuery(\'header nav\').meanmenu();\n	});\n</script>\n<!-- Revolution Slider -->\n<script src=\"fh_static_1/js/jquery.themepunch.plugins.min.js\"></script>\n<script src=\"fh_static_1/js/jquery.themepunch.revolution.min.js\"></script>\n<script src=\"fh_static_1/js/revolution-slider-options.js\"></script>\n<!-- Prety photo -->\n<script src=\"fh_static_1/js/jquery.prettyPhoto.js\"></script>\n<script>\n	$(document).ready(function() {\n		$(\"a[data-gal^=\'prettyPhoto\']\").prettyPhoto();\n	});\n</script>\n<!-- Tooltip -->\n<script src=\"fh_static_1/js/tooltip.js\"></script>\n<!-- Flexisel -->\n<script type=\"text/javascript\" src=\"fh_static_1/js/jquery.flexisel.js\"></script>\n<!-- Favicons  -->\n<link rel=\"shortcut icon\" href=\"fh_static_1/images/favicon.ico\">\n<link rel=\"apple-touch-icon\" href=\"fh_static_1/images/apple-touch-icon.png\">\n<link rel=\"apple-touch-icon\" sizes=\"72x72\" href=\"fh_static_1/images/apple-touch-icon-72x72.png\">\n<link rel=\"apple-touch-icon\" sizes=\"114x114\" href=\"fh_static_1/images/apple-touch-icon-114x114.png\">\n</head>\n<body>\n\n	<!-- header 包含导航菜单 -->\n	<#include \"headerTemplate.ftl\"> \n	<!-- header 包含导航菜单 -->\n\n	<div class=\"container\">\n		<div class=\"container\">\n			<div class=\"sixteen columns page-title\">\n				<div class=\"eight columns alpha\">\n					<h3> <span>产品案例</span> </h3>\n				</div>\n				<div class=\"eight columns omega\">\n					<nav class=\"breadcrumbs\">\n						<ul>\n							<li></li>\n							<li>\n								<a>Product case</a>\n							</li>\n							<li></li>\n						</ul>\n					</nav>\n				</div>\n				<div class=\"clearfix\"></div>\n			</div><!-- page-title -->\n		</div><!-- container -->\n			\n			<div class=\"row port works\">\n			\n				<#list fieldList5 as var>		\n				<div class=\"row-item one-third column photography webdesign\">\n					<div class=\"work\">\n					    <input type=\"button\" value=\"呼吸训练系统\"\n			onclick=\"location.href=\'${pageContext.request.contextPath }/jsp/huxilianxixitongjiemian.jsp\'\"\n			style=\"font-size: 35px; width: 400px; height: 100px; margin-left: 250px; margin-top: 220px; background: #4B9F37; color: #ffffff; border: none; border-radius: 12px\" />\n		<br> <br> <br> <input type=\"button\" value=\"发音练习系统\"\n			onclick=\"location.href=\'${pageContext.request.contextPath }/jsp/fayinlianxichushijiemian.jsp\'\"\n			style=\"font-size: 35px; width: 400px; height: 100px; margin-left: 250px; margin-top: 30px; background: #ff0000; color: #ffffff; border: none; border-radius: 12px\" />\n		<br> <br> <br> <input type=\"button\" value=\"唇语学习系统\"\n			onclick=\"location.href=\'${pageContext.request.contextPath }/jsp/chunyuxueximoshixuanzejiemian.jsp\'\"\n			style=\"font-size: 35px; width: 400px; height: 100px; margin-left: 250px; margin-top: 30px; background: #0000ff; color: #ffffff; border: none; border-radius: 12px\" />\n	\n						<a href=\"${var[1]}\" data-gal=\"prettyPhoto\" class=\"work-image\">\n							<img src=\"${var[1]}\" alt=\"${var[0]}\">\n							<div class=\"link-overlay fa fa-search\"></div>\n						</a>\n						<a href=\"${var[2]}\" target=\"_blank\" class=\"work-name\">${var[0]}</a>\n						<div class=\"tags\">${var[3]}</div>\n					</div>\n				</div>\n				</#list>\n				\n			</div>\n		\n	</div>\n	<!-- container -->\n	\n	<!-- footer 包含底部 -->\n	<#include \"footerTemplate.ftl\"> \n	<!-- footer 包含底部  -->\n\n	<script type=\"text/javascript\">\n		$(window).load(function() {\n			$(\"#Product\").addClass(\"current_page_item\"); \n		});\n	</script>\n	<!-- End Document  -->\n</body>\n</html>\n');
INSERT INTO `sys_codeeditor` VALUES ('3de6244387724cc888e7213c0eedf34a', 'createHtml6', 'indexTemplate', '2019-01-08 14:33:13', '<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n<!-- Meta -->\n<meta charset=\"utf-8\">\n<title>${TITLE}</title>\n<meta name=\"keywords\" content=\"${KEYWORDS}\" />\n<meta name=\"description\" content=\"${DESCRIPTION}\">\n<meta name=\"author\" content=\"fhadmin\">\n<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\"> \n<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->\n<!-- SITE TITLE -->\n<!-- Latest Bootstrap min CSS -->\n<link rel=\"stylesheet\" href=\"fh_static_6/bootstrap/css/bootstrap.min.css\">		\n<!-- Font Awesome CSS -->\n<link rel=\"stylesheet\" href=\"fh_static_6/fonts/font-awesome.min.css\">\n<!-- venobox -->\n<link rel=\"stylesheet\" href=\"fh_static_6/venobox/css/venobox.css\" />		\n<!--- owl carousel Css-->\n<link rel=\"stylesheet\" href=\"fh_static_6/owlcarousel/css/owl.carousel.css\">\n<link rel=\"stylesheet\" href=\"fh_static_6/owlcarousel/css/owl.theme.css\">				\n<!-- animate CSS -->		\n<link rel=\"stylesheet\" href=\"fh_static_6/css/animate.css\">		\n<!-- Style CSS -->\n<link rel=\"stylesheet\" href=\"fh_static_6/css/style.css\">\n<!-- CSS FOR COLOR SWITCHER -->\n<link rel=\"stylesheet\" href=\"fh_static_6/css/switcher/switcher.css\"> 	\n<link rel=\"stylesheet\" href=\"fh_static_6/css/switcher/style1.css\" id=\"colors\">		\n<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->\n<!-- WARNING: Respond.js doesn\'t work if you view the page via file:// -->\n<!--[if lt IE 9]>\n<script src=\"https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js\"></script>\n<script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\n<![endif]-->\n<style type=\"text/css\">\n		#allmap {width: 100%;height: 400px;overflow: hidden;margin:0;}\n</style>\n<script type=\"text/javascript\" src=\"http://api.map.baidu.com/api?v=2.0&ak=40GWXiduhOft266lK4N1dopL\"></script>\n</head>\n\n<body data-spy=\"scroll\" data-offset=\"80\">\n\n<!-- START PRELOADER -->\n<div class=\"preloader\">\n<div class=\"status\">\n	<div class=\"status-mes\"><h4></h4></div>\n</div>\n</div>\n<!-- END PRELOADER -->\n\n<!-- START NAVBAR -->\n<div class=\"navbar navbar-default navbar-fixed-top menu-top\">\n<div class=\"container\">\n	<div class=\"navbar-header\">\n		<button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">\n			<span class=\"sr-only\">Toggle navigation</span>\n			<span class=\"icon-bar\"></span>\n			<span class=\"icon-bar\"></span>\n			<span class=\"icon-bar\"></span>\n		</button>\n		<a href=\"index.html\" class=\"navbar-brand\"><img src=\"${LOGO}\" alt=\"${NAME}\" title=\"${NAME}\" /></a>\n	</div>\n	<div class=\"navbar-collapse collapse\">\n		<nav>\n			<ul class=\"nav navbar-nav navbar-right\">\n				<li><a class=\"page-scroll\" href=\"#home\">首页</a></li>\n				<li><a class=\"page-scroll\" href=\"#about\">关于我们</a></li>\n				<li><a class=\"page-scroll\" href=\"#service\">服务</a></li>\n				<li><a class=\"page-scroll\" href=\"#portfolio\">产品</a></li>	\n				<li><a class=\"page-scroll\" href=\"#team\">团队</a></li>							\n				<li><a class=\"page-scroll\" href=\"#blog\">新闻动态</a></li>								\n				<li><a class=\"page-scroll\" href=\"#contact\">联系我们</a></li>\n			</ul>\n		</nav>\n	</div> \n</div><!--- END CONTAINER -->\n</div> \n<!-- END NAVBAR -->	\n\n<!-- START HOME -->\n<section id=\"home\" class=\"welcome-area\">\n<div class=\"welcome-slider-area\">\n	<div id=\"welcome-slide-carousel\" class=\"carousel slide carousel-fade\" data-ride=\"carousel\">\n		<ol class=\"carousel-indicators carousel-indicators-slider\">\n		\n		<#list fieldList1 as var>\n			<li data-target=\"#welcome-slide-carousel\" data-slide-to=\"${var_index}\" ${(var_index==0)?string(\'class=\"active\"\', \'\')}></li>\n		</#list>\n		\n		</ol>\n		<div class=\"carousel-inner\" role=\"listbox\">\n		\n		<!-- 轮播图 -->\n		\n		<#list fieldList1 as var>\n		\n			<div class=\"item ${(var_index==0)?string(\'active\', \'\')}\">\n				<div class=\"single-slide-item slide-${var_index+1}\" style=\"background: url(${var[1]}) scroll 0 0; background-size: cover;\">\n					<div class=\"single-slide-item-table\">\n						<div class=\"single-slide-item-tablecell\">\n							<div class=\"container\">\n								<div class=\"row\">\n									<div class=\"col-md-12\">\n									</div>\n								</div>\n							</div>\n						</div>\n					</div>\n				</div>\n			</div>\n			\n		</#list>	\n			\n		<!-- 轮播图 -->\n		\n		</div>\n	</div>\n</div>\n</section>\n<!-- END  HOME DESIGN -->	\n\n<!-- START ABOUT -->\n<section id=\"about\" class=\"about-us section-padding\">\n<div class=\"container\">\n	<div class=\"row text-center\">\n		<div class=\"section-title wow zoomIn\">\n			<h2>${TITLE1}</h2>\n			<span></span>\n			<p>${TITLE2}</p>\n		</div>\n		<div class=\"col-md-3 col-sm-3 col-xs-12\">\n			<div class=\"about_single wow fadeInLeft\" data-wow-duration=\"1s\" data-wow-delay=\"0.1s\" data-wow-offset=\"0\">\n				<i class=\"fa fa-tablet\"></i>\n				<h4>${CPTITLE1}</h4>\n				<span></span>\n				<p>${CPCONTENT1}</p>\n			</div>\n		</div><!--- END COL -->\n		<div class=\"col-md-3 col-sm-3 col-xs-12\">\n			<div class=\"about_single wow fadeInDown\" data-wow-duration=\"1s\" data-wow-delay=\"0.1s\" data-wow-offset=\"0\">\n				<i class=\"fa fa-umbrella\"></i>\n				<h4>${CPTITLE2}</h4>\n				<span></span>\n				<p>${CPCONTENT2}</p>\n			</div>\n		</div><!--- END COL -->\n		<div class=\"col-md-3 col-sm-3 col-xs-12\">\n			<div class=\"about_single wow fadeInRight\" data-wow-duration=\"1s\" data-wow-delay=\"0.1s\" data-wow-offset=\"0\">\n				<i class=\"fa fa-code\"></i>\n				<h4>${CPTITLE3}</h4>\n				<span></span>\n				<p>${CPCONTENT3}</p>\n			</div>\n		</div><!--- END COL -->\n		<div class=\"col-md-3 col-sm-3 col-xs-12\">\n			<div class=\"about_single wow fadeInRight\" data-wow-duration=\"1s\" data-wow-delay=\"0.1s\" data-wow-offset=\"0\">\n				<i class=\"fa fa-building-o\"></i>\n				<h4>${CPTITLE4}</h4>\n				<span></span>\n				<p>${CPCONTENT4}</p>\n			</div>\n		</div><!--- END COL -->\n	</div><!--- END ROW -->\n</div><!--- END CONTAINER -->\n</section>		\n<!-- END ABOUT -->\n\n<!-- START FEATURES -->\n<section class=\"template_feature section-padding\">\n<div class=\"container-fluid\">\n	<div class=\"row text-center\">\n		<div class=\"section-title text-center wow zoomIn\">\n			<h2>关于我们</h2>\n			<span></span>\n			<p>${ABOUTUS1}</p>\n			<p>${ABOUTUS2}</p>\n		</div>				\n	</div><!-- END ROW -->\n</div><!-- END CONTAINER -->\n</section>\n<!-- END FEATURES -->		\n\n<!-- START SERVICES -->\n<section id=\"service\" class=\"our_services section-padding\" style=\"background-image: url(fh_static_6/img/bg/service-bg.jpg); background-size:cover; background-position: center center;background-attachment:fixed\">\n<div class=\"container\">\n	<div class=\"row text-center\">\n		<div class=\"section-title text-center wow zoomIn\">\n			<h2 class=\"section-title-white\">${CONTENT1}</h2>\n			<span class=\"section-title-white-span\"></span>\n			<p class=\"section-title-white\">${CONTENT2}</p>\n		</div>						\n		\n	</div><!-- END ROW -->\n</div><!-- END CONTAINER -->\n</section>\n<!-- END SERVICES -->		\n\n<!-- START WORKS -->\n<section id=\"portfolio\" class=\"works_area section-padding\">		\n<div class=\"container\">\n	<div class=\"row text-center\">\n		<div class=\"section-title text-center wow zoomIn\">\n			<h2>我们的产品</h2>\n			<span></span>\n		</div>\n		<div class=\"work_all_item\">\n		\n		<#list fieldList2 as var>\n		\n			<div class=\"grid-item col-md-4 col-sm-4 col-xs-12\">\n				<div class=\"single_our_work\">\n					<div class=\"sing_work_photo\">\n						<figure>								\n							<img src=\"${var[1]}\" alt=\"${var[0]}\">\n							<div class=\"sing_work_text_link\">\n								<div class=\"sing_work_content_wrap\">\n									<div class=\"sing_work_content\">\n										<h4>${var[0]}</h4>\n										<p>${var[3]}</p>\n										<div class=\"sing_link_img\">\n											<a href=\"${var[1]}\" class=\"lightbox search\" data-gall=\"gall-work\"><i class=\"fa fa-eye\"></i></a>\n										</div>	\n									</div>\n								</div>\n							</div>	\n						</figure>\n					</div>				\n				</div>\n			</div><!--- END COL -->\n		\n		</#list>\n														\n		</div><!--- END WORK ALL ITEM -->				\n	</div><!--- END ROW -->\n</div><!--- END CONTAINER-FLUID -->			\n</section>\n<!-- END WORKS -->\n\n<!-- START TEAM -->\n<section id=\"team\" class=\"section-padding\">\n<div class=\"container\">\n	<div class=\"row\">\n		<div class=\"section-title text-center wow zoomIn\">\n			<h2>我们的团队</h2>\n			<span></span>\n		</div>\n				\n		<#list fieldList4 as var>\n			\n		<div class=\"col-md-3 col-sm-6 wow fadeInLeft\" data-wow-duration=\"1s\" data-wow-delay=\"0.2s\" data-wow-offset=\"0\">\n			<div class=\"single_team\">\n				<div class=\"team_img\">\n					<img src=\"${var[1]}\" class=\"img-responsive\" alt=\"${var[0]}\" />\n				</div>\n				<div class=\"team_text\">\n					<div class=\"team_text_inner\">\n						<h4>${var[0]}</h4>\n					</div>\n				</div>\n			</div>						\n		</div><!--- END COL -->\n		\n		</#list>\n											\n	</div><!--- END ROW -->\n</div><!--- END CONTAINER -->\n</section>\n<!-- END TEAM -->\n\n<!-- START HOME BLOG DESING  -->\n<section id=\"blog\" class=\"latest_blog section-padding\">\n<div class=\"container\">\n	<div class=\"row\">\n		<div class=\"section-title text-center wow zoomIn\">\n			<h2>新闻动态</h2>\n			<span></span>\n			<p>${NEW1}</p>\n			<p>${NEW2}</p>\n		</div>\n			\n		<#list listNews as var>			\n			\n		<div class=\"col-md-4 col-sm-4 col-xs-12\">\n			<div class=\"single_blog\">\n				<img src=\"${var[4]}\" alt=\"${var[1]}\" class=\"img-responsive\">\n				<div class=\"blog-text wow fadeInLeft\">\n					 <span><i class=\"fa fa-eye\"></i> ${var[2]}</span><span><i class=\"fa fa-comments-o\"></i> ${var[3]}</span>\n					 <h4>${var[1]}</h4>\n					 <p>${var[5]}</p>\n				</div>\n			</div><!--- END SINGLE BLOG POST -->\n		</div><!--- END COL -->	\n		\n		</#list>\n		\n	</div><!--- END ROW -->	\n</div><!--- END CONTAINER-->\n</section>\n<!-- END HOME BLOG DESING  -->\n\n<!-- START CONTACT -->\n<section id=\"contact\" class=\"contact_area section-padding\" style=\"background-image: url(fh_static_6/img/bg/contact-bg.jpg); background-size:cover; background-position: center center;background-attachment:fixed\">\n<div class=\"container\">				\n	<div class=\"row\">\n		<div class=\"section-title text-center wow zoomIn\">\n			<h2 class=\"section-title-white\">联系我们</h2>\n			<span class=\"section-title-white-span\"></span>\n		</div>					\n		<div class=\"col-md-8 col-md-offset-2 col-sm-12 col-xs-12 wow fadeInDown\" data-wow-duration=\"1s\" data-wow-delay=\"0.1s\" data-wow-offset=\"0\">\n			<div class=\"contact\">\n					<div class=\"row\">\n						<div class=\"form-group col-md-12\">\n							<input type=\"text\" class=\"form-control\" id=\"NAME\" name=\"NAME\" placeholder=\"您的姓名\" required=\"required\">\n						</div>\n						<div class=\"form-group col-md-12\">\n							<input type=\"email\" class=\"form-control\" id=\"EMAIL\" name=\"EMAIL\" placeholder=\"您的邮箱\" required=\"required\">\n						</div>\n						<div class=\"form-group col-md-12\">\n							<textarea rows=\"6\" class=\"form-control\" id=\"LCONTENT\" name=\"LCONTENT\" placeholder=\"这里留言给我们\" required=\"required\"></textarea>\n						</div>\n						<div class=\"form-group col-md-12 mb0\">\n						   <div class=\"actions\">\n							<input type=\"submit\" onclick=\"save()\" value=\"提交\" name=\"submit\" id=\"submitButton\" class=\"btn btn-lg btn-contact-bg\" />\n							</div>\n						</div>\n					</div>\n			</div>\n		</div><!-- END COL -->\n	</div><!--- END ROW -->				\n</div><!--- END CONTAINER -->		\n</section>\n<!-- END CONTACT  -->\n\n<!-- START MAP -->\n<div id=\"allmap\"></div>\n<!-- END MAP -->\n\n<!-- START CONTACT ADDRESS -->\n<div class=\"contact-address\">\n<div class=\"container\">\n	<div class=\"row text-center\">\n		<div class=\"col-md-3 col-sm-6 col-xs-12\">\n			<div class=\"single_address\">\n				<i class=\"fa fa-phone\"></i>\n				<p>${TEL}</p>\n			</div>\n		</div><!-- END COL  -->\n		<div class=\"col-md-3 col-sm-6 col-xs-12\">\n			<div class=\"single_address\">\n				<i class=\"fa fa-rocket\"></i>\n				<p>${ADDRESS}</p>\n			</div>\n		</div><!-- END COL  -->\n		<div class=\"col-md-3 col-sm-6 col-xs-12\">\n			<div class=\"single_address\">\n				<i class=\"fa fa-envelope\"></i>\n				<p>${EMAIL}</p>\n			</div>\n		</div><!-- END COL  -->\n		<div class=\"col-md-3 col-sm-6 col-xs-12\">\n			<div class=\"single_address\">\n				<i class=\"fa fa-clock-o\"></i>\n				<p>QQ:${QQ}-传真:${FAX}</p>\n			</div>\n		</div><!-- END COL  -->\n	</div><!--END  ROW  -->\n</div><!-- END CONTAINER  -->\n</div>\n<!-- END CONTACT ADDRESS -->\n\n<!-- START FOOTER TOP -->\n<section class=\"footer section-padding\">\n<div class=\"container\">\n	<div class=\"row\">					\n		<div class=\"col-md-12 col-sm-12 text-center wow zoomIn\">\n			<div class=\"footer_logo\">\n				<a href=\"index.html\"><img src=\"${LOGO}\" alt=\"${NAME}\" /></a>\n			</div>\n			<div class=\"footer_social\">\n				<ul>\n					<li><a class=\"f_facebook\"><i class=\"fa fa-facebook\"></i></a></li>\n					<li><a class=\"f_twitter\"><i class=\"fa fa-twitter\"></i></a></li>\n					<li><a class=\"f_google\"><i class=\"fa fa-google-plus\"></i></a></li>\n					<li><a class=\"f_linkedin\"><i class=\"fa fa-linkedin\"></i></a></li>\n					<li><a class=\"f_youtube\"><i class=\"fa fa-youtube\"></i></a></li>\n					<li><a class=\"f_skype\"><i class=\"fa fa-skype\"></i></a></li>\n				</ul>\n			</div>\n			<div class=\"copyright\">\n				<p>Copyright ${COPYRIGHT} . 技术支持：${TECHNOLOGY} . 备案：${BEIAN}</p>\n			</div><!--- END FOOTER COPYRIGHT -->\n		</div><!--- END COL -->			\n	</div><!--- END ROW -->				\n</div><!--- END CONTAINER -->\n</section>\n<!-- END FOOTER TOP -->		\n\n<!-- Latest jQuery -->\n<script src=\"fh_static_6/js/jquery-1.12.4.min.js\"></script>\n<!-- Latest compiled and minified Bootstrap -->\n<script src=\"fh_static_6/bootstrap/js/bootstrap.min.js\"></script>\n<!-- modernizer JS -->		\n<script src=\"fh_static_6/js/modernizr-2.8.3.min.js\"></script>				\n<!-- venobox js -->\n<script src=\"fh_static_6/venobox/js/venobox.min.js\"></script>\n<!-- jquery appear js  -->\n<script src=\"fh_static_6/js/jquery.appear.js\"></script>			\n<!-- countTo js -->\n<script src=\"fh_static_6/js/jquery.inview.min.js\"></script>			\n<!-- jquery mixitup js -->\n<script src=\"fh_static_6/js/jquery.mixitup.js\"></script>			\n<!-- owl-carousel min js  -->\n<script src=\"fh_static_6/owlcarousel/js/owl.carousel.min.js\"></script>				\n<!-- scrolltopcontrol js -->\n<script src=\"fh_static_6/js/scrolltopcontrol.js\"></script>					\n<!-- WOW - Reveal Animations When You Scroll -->\n<script src=\"fh_static_6/js/wow.min.js\"></script>\n<!-- form-contact js -->\n<script src=\"fh_static_6/js/form-contact.js\"></script>			\n<!--<script src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyDwIQh7LGryQdDDi-A603lR8NqiF3R_ycA\"></script>--->\n<!-- switcher js -->\n<script src=\"fh_static_6/js/switcher.js\"></script>			\n<!-- scripts js -->\n<script src=\"fh_static_6/js/scripts.js\"></script>\n\n</body>\n	<script type=\"text/javascript\">\n		\n		function save(){\n			var NAME = $(\"#NAME\").val();\n			var EMAIL = $(\"#EMAIL\").val();\n			var LCONTENT = $(\"#LCONTENT\").val();\n			if(\"\" == NAME){\n				alert(\"请填写姓名\");\n				$(\"#NAME\").focus();\n				return false;\n			}\n			if(\"\" == EMAIL){\n				alert(\"请填写邮箱\");\n				$(\"#EMAIL\").focus();\n				return false;\n			}\n			if(\"\" == LCONTENT){\n				alert(\"请填写内容\");\n				$(\"#LCONTENT\").focus();\n				return false;\n			}\n			$.ajax({\n				type: \"POST\",\n				url: \'web/saveLeavemsg.do\',\n		    	data: {NAME:NAME,EMAIL:EMAIL,ADDRESS:\'\',LCONTENT:LCONTENT,tm:new Date().getTime()},\n				dataType:\'json\',\n				cache: false,\n				success: function(data){\n					 if(\"00\" == data.result){\n					 	$(\"#NAME\").val(\"\");\n						$(\"#EMAIL\").val(\"\");\n						$(\"#LCONTENT\").val(\"\");\n						alert(\"提交成功\");\n					 }\n				}\n			});\n		}\n	\n		// 百度地图API功能\n		var map = new BMap.Map(\"allmap\");\n		map.enableScrollWheelZoom();    //启用滚轮放大缩小，默认禁用\n		\n		map.addControl(new BMap.ScaleControl());                    // 添加默认比例尺控件\n		map.addControl(new BMap.ScaleControl({anchor: BMAP_ANCHOR_TOP_LEFT}));                    // 左上\n		map.addControl(new BMap.ScaleControl({anchor: BMAP_ANCHOR_TOP_RIGHT}));                   // 右上\n		map.addControl(new BMap.ScaleControl({anchor: BMAP_ANCHOR_BOTTOM_LEFT}));                 // 左下\n		map.addControl(new BMap.ScaleControl({anchor: BMAP_ANCHOR_BOTTOM_RIGHT}));                // 右下\n\n		map.addControl(new BMap.NavigationControl());  //添加默认缩放平移控件\n		map.addControl(new BMap.NavigationControl({anchor: BMAP_ANCHOR_TOP_RIGHT, type: BMAP_NAVIGATION_CONTROL_SMALL}));  //右上角，仅包含平移和缩放按钮\n		map.addControl(new BMap.NavigationControl({anchor: BMAP_ANCHOR_BOTTOM_LEFT, type: BMAP_NAVIGATION_CONTROL_PAN}));  //左下角，仅包含平移按钮\n		map.addControl(new BMap.NavigationControl({anchor: BMAP_ANCHOR_BOTTOM_RIGHT, type: BMAP_NAVIGATION_CONTROL_ZOOM}));//右下角，仅包含缩放按钮\n		\n		//创建跳动的位置图标\n		var point = new BMap.Point(${LONGITUDE}, ${DIMENSION});\n		map.centerAndZoom(point, ${PZOOM});\n		var marker = new BMap.Marker(point); 		// 创建标注\n		map.addOverlay(marker);               		// 将标注添加到地图中\n		marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画\n		\n		\n		$(window).load(function() {\n				addIP();\n				isBlack();\n			});\n			//记录IP\n			function addIP(){\n				$.ajax({\n					type: \"POST\",\n					url: \'web/addStatistics.do\',\n			    	data: {tm:new Date().getTime()},\n					dataType:\'json\',\n					cache: false,\n					success: function(data){\n					}\n				});\n			}\n			function isBlack(){\n				$.ajax({\n					type: \"POST\",\n					url: \'web/isBlack.do\',\n			    	data: {tm:new Date().getTime()},\n					dataType:\'json\',\n					cache: false,\n					success: function(data){\n						if(\"NO\" == data.result){\n						$(\"body\").html(\"\");\n						alert(\"禁止访问！\");\n						}\n					}\n				});\n			}\n	</script>\n</html>\n');
INSERT INTO `sys_codeeditor` VALUES ('6f163a106ac840d3aaaf121ed67c47b0', 'createHtml6', 'indexTemplate', '2019-01-08 14:32:54', '<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n<!-- Meta -->\n<meta charset=\"utf-8\">\n<title>${TITLE}</title>\n<meta name=\"keywords\" content=\"${KEYWORDS}\" />\n<meta name=\"description\" content=\"${DESCRIPTION}\">\n<meta name=\"author\" content=\"fhadmin\">\n<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\"> \n<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->\n<!-- SITE TITLE -->\n<!-- Latest Bootstrap min CSS -->\n<link rel=\"stylesheet\" href=\"fh_static_6/bootstrap/css/bootstrap.min.css\">		\n<!-- Font Awesome CSS -->\n<link rel=\"stylesheet\" href=\"fh_static_6/fonts/font-awesome.min.css\">\n<!-- venobox -->\n<link rel=\"stylesheet\" href=\"fh_static_6/venobox/css/venobox.css\" />		\n<!--- owl carousel Css-->\n<link rel=\"stylesheet\" href=\"fh_static_6/owlcarousel/css/owl.carousel.css\">\n<link rel=\"stylesheet\" href=\"fh_static_6/owlcarousel/css/owl.theme.css\">				\n<!-- animate CSS -->		\n<link rel=\"stylesheet\" href=\"fh_static_6/css/animate.css\">		\n<!-- Style CSS -->\n<link rel=\"stylesheet\" href=\"fh_static_6/css/style.css\">\n<!-- CSS FOR COLOR SWITCHER -->\n<link rel=\"stylesheet\" href=\"fh_static_6/css/switcher/switcher.css\"> 	\n<link rel=\"stylesheet\" href=\"fh_static_6/css/switcher/style1.css\" id=\"colors\">		\n<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->\n<!-- WARNING: Respond.js doesn\'t work if you view the page via file:// -->\n<!--[if lt IE 9]>\n<script src=\"https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js\"></script>\n<script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\n<![endif]-->\n<style type=\"text/css\">\n		#allmap {width: 100%;height: 400px;overflow: hidden;margin:0;}\n</style>\n<script type=\"text/javascript\" src=\"http://api.map.baidu.com/api?v=2.0&ak=40GWXiduhOft266lK4N1dopL\"></script>\n</head>\n\n<body data-spy=\"scroll\" data-offset=\"80\">\n\n<!-- START PRELOADER -->\n<div class=\"preloader\">\n<div class=\"status\">\n	<div class=\"status-mes\"><h4></h4></div>\n</div>\n</div>\n<!-- END PRELOADER -->\n\n<!-- START NAVBAR -->\n<div class=\"navbar navbar-default navbar-fixed-top menu-top\">\n<div class=\"container\">\n	<div class=\"navbar-header\">\n		<button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">\n			<span class=\"sr-only\">Toggle navigation</span>\n			<span class=\"icon-bar\"></span>\n			<span class=\"icon-bar\"></span>\n			<span class=\"icon-bar\"></span>\n		</button>\n		<a href=\"index.html\" class=\"navbar-brand\"><img src=\"${LOGO}\" alt=\"${NAME}\" title=\"${NAME}\" /></a>\n	</div>\n	<div class=\"navbar-collapse collapse\">\n		<nav>\n			<ul class=\"nav navbar-nav navbar-right\">\n				<li><a class=\"page-scroll\" href=\"#home\">首页</a></li>\n				<li><a class=\"page-scroll\" href=\"#about\">关于我们</a></li>\n				<li><a class=\"page-scroll\" href=\"#service\">服务</a></li>\n				<li><a class=\"page-scroll\" href=\"#portfolio\">产品</a></li>	\n				<li><a class=\"page-scroll\" href=\"#team\">团队</a></li>							\n				<li><a class=\"page-scroll\" href=\"#blog\">新闻动态</a></li>								\n				<li><a class=\"page-scroll\" href=\"#contact\">联系我们</a></li>\n			</ul>\n		</nav>\n	</div> \n</div><!--- END CONTAINER -->\n</div> \n<!-- END NAVBAR -->	\n\n<!-- START HOME -->\n<section id=\"home\" class=\"welcome-area\">\n<div class=\"welcome-slider-area\">\n	<div id=\"welcome-slide-carousel\" class=\"carousel slide carousel-fade\" data-ride=\"carousel\">\n		<ol class=\"carousel-indicators carousel-indicators-slider\">\n		\n		<#list fieldList1 as var>\n			<li data-target=\"#welcome-slide-carousel\" data-slide-to=\"${var_index}\" ${(var_index==0)?string(\'class=\"active\"\', \'\')}></li>\n		</#list>\n		\n		</ol>\n		<div class=\"carousel-inner\" role=\"listbox\">\n		\n		<!-- 轮播图 -->\n		\n		<#list fieldList1 as var>\n		\n			<div class=\"item ${(var_index==0)?string(\'active\', \'\')}\">\n				<div class=\"single-slide-item slide-${var_index+1}\" style=\"background: url(${var[1]}) scroll 0 0; background-size: cover;\">\n					<div class=\"single-slide-item-table\">\n						<div class=\"single-slide-item-tablecell\">\n							<div class=\"container\">\n								<div class=\"row\">\n									<div class=\"col-md-12\">\n									</div>\n								</div>\n							</div>\n						</div>\n					</div>\n				</div>\n			</div>\n			\n		</#list>	\n			\n		<!-- 轮播图 -->\n		\n		</div>\n	</div>\n</div>\n</section>\n<!-- END  HOME DESIGN -->	\n\n<!-- START ABOUT -->\n<section id=\"about\" class=\"about-us section-padding\">\n<div class=\"container\">\n	<div class=\"row text-center\">\n		<div class=\"section-title wow zoomIn\">\n			<h2>${TITLE1}</h2>\n			<span></span>\n			<p>${TITLE2}</p>\n		</div>\n		<div class=\"col-md-3 col-sm-3 col-xs-12\">\n			<div class=\"about_single wow fadeInLeft\" data-wow-duration=\"1s\" data-wow-delay=\"0.1s\" data-wow-offset=\"0\">\n				<i class=\"fa fa-tablet\"></i>\n				<h4>${CPTITLE1}</h4>\n				<span></span>\n				<p>${CPCONTENT1}</p>\n			</div>\n		</div><!--- END COL -->\n		<div class=\"col-md-3 col-sm-3 col-xs-12\">\n			<div class=\"about_single wow fadeInDown\" data-wow-duration=\"1s\" data-wow-delay=\"0.1s\" data-wow-offset=\"0\">\n				<i class=\"fa fa-umbrella\"></i>\n				<h4>${CPTITLE2}</h4>\n				<span></span>\n				<p>${CPCONTENT2}</p>\n			</div>\n		</div><!--- END COL -->\n		<div class=\"col-md-3 col-sm-3 col-xs-12\">\n			<div class=\"about_single wow fadeInRight\" data-wow-duration=\"1s\" data-wow-delay=\"0.1s\" data-wow-offset=\"0\">\n				<i class=\"fa fa-code\"></i>\n				<h4>${CPTITLE3}</h4>\n				<span></span>\n				<p>${CPCONTENT3}</p>\n			</div>\n		</div><!--- END COL -->\n		<div class=\"col-md-3 col-sm-3 col-xs-12\">\n			<div class=\"about_single wow fadeInRight\" data-wow-duration=\"1s\" data-wow-delay=\"0.1s\" data-wow-offset=\"0\">\n				<i class=\"fa fa-building-o\"></i>\n				<h4>${CPTITLE4}</h4>\n				<span></span>\n				<p>${CPCONTENT4}</p>\n			</div>\n		</div><!--- END COL -->\n	</div><!--- END ROW -->\n</div><!--- END CONTAINER -->\n</section>		\n<!-- END ABOUT -->\n\n<!-- START FEATURES -->\n<section class=\"template_feature section-padding\">\n<div class=\"container-fluid\">\n	<div class=\"row text-center\">\n		<div class=\"section-title text-center wow zoomIn\">\n			<h2>关于我们</h2>\n			<span></span>\n			<p>${ABOUTUS1}</p>\n			<p>${ABOUTUS2}</p>\n		</div>				\n	</div><!-- END ROW -->\n</div><!-- END CONTAINER -->\n</section>\n<!-- END FEATURES -->		\n\n<!-- START SERVICES -->\n<section id=\"service\" class=\"our_services section-padding\" style=\"background-image: url(fh_static_6/img/bg/service-bg.jpg); background-size:cover; background-position: center center;background-attachment:fixed\">\n<div class=\"container\">\n	<div class=\"row text-center\">\n		<div class=\"section-title text-center wow zoomIn\">\n			<h2 class=\"section-title-white\">${CONTENT1}</h2>\n			<span class=\"section-title-white-span\"></span>\n			<p class=\"section-title-white\">${CONTENT2}</p>\n		</div>						\n		\n	</div><!-- END ROW -->\n</div><!-- END CONTAINER -->\n</section>\n<!-- END SERVICES -->		\n\n<!-- START WORKS -->\n<section id=\"portfolio\" class=\"works_area section-padding\">		\n<div class=\"container\">\n	<div class=\"row text-center\">\n		<div class=\"section-title text-center wow zoomIn\">\n			<h2>我们的产品</h2>\n			<span></span>\n		</div>\n		<div class=\"work_all_item\">\n		\n		<#list fieldList2 as var>\n		\n			<div class=\"grid-item col-md-4 col-sm-4 col-xs-12\">\n				<div class=\"single_our_work\">\n					<div class=\"sing_work_photo\">\n						<figure>								\n							<img src=\"${var[1]}\" alt=\"${var[0]}\">\n							<div class=\"sing_work_text_link\">\n								<div class=\"sing_work_content_wrap\">\n									<div class=\"sing_work_content\">\n										<h4>${var[0]}</h4>\n										<p>${var[3]}</p>\n										<div class=\"sing_link_img\">\n											<a href=\"${var[1]}\" class=\"lightbox search\" data-gall=\"gall-work\"><i class=\"fa fa-eye\"></i></a>\n										</div>	\n									</div>\n								</div>\n							</div>	\n						</figure>\n					</div>				\n				</div>\n			</div><!--- END COL -->\n		\n		</#list>\n														\n		</div><!--- END WORK ALL ITEM -->				\n	</div><!--- END ROW -->\n</div><!--- END CONTAINER-FLUID -->			\n</section>\n<!-- END WORKS -->\n\n<!-- START TEAM -->\n<section id=\"team\" class=\"section-padding\">\n<div class=\"container\">\n	<div class=\"row\">\n		<div class=\"section-title text-center wow zoomIn\">\n			<h2>我们的团队</h2>\n			<span></span>\n		</div>\n				\n		<#list fieldList4 as var>\n			\n		<div class=\"col-md-3 col-sm-6 wow fadeInLeft\" data-wow-duration=\"1s\" data-wow-delay=\"0.2s\" data-wow-offset=\"0\">\n			<div class=\"single_team\">\n				<div class=\"team_img\">\n					<img src=\"${var[1]}\" class=\"img-responsive\" alt=\"${var[0]}\" />\n				</div>\n				<div class=\"team_text\">\n					<div class=\"team_text_inner\">\n						<h4>${var[0]}</h4>\n					</div>\n				</div>\n			</div>						\n		</div><!--- END COL -->\n		\n		</#list>\n											\n	</div><!--- END ROW -->\n</div><!--- END CONTAINER -->\n</section>\n<!-- END TEAM -->\n\n<!-- START HOME BLOG DESING  -->\n<section id=\"blog\" class=\"latest_blog section-padding\">\n<div class=\"container\">\n	<div class=\"row\">\n		<div class=\"section-title text-center wow zoomIn\">\n			<h2>新闻动态</h2>\n			<span></span>\n			<p>${NEW1}</p>\n			<p>${NEW2}</p>\n		</div>\n			\n		<#list listNews as var>			\n			\n		<div class=\"col-md-4 col-sm-4 col-xs-12\">\n			<div class=\"single_blog\">\n				<img src=\"${var[4]}\" alt=\"${var[1]}\" class=\"img-responsive\">\n				<div class=\"blog-text wow fadeInLeft\">\n					 <span><i class=\"fa fa-eye\"></i> ${var[2]}</span><span><i class=\"fa fa-comments-o\"></i> ${var[3]}</span>\n					 <h4>${var[1]}</h4>\n					 <p>${var[5]}</p>\n				</div>\n			</div><!--- END SINGLE BLOG POST -->\n		</div><!--- END COL -->	\n		\n		</#list>\n		\n	</div><!--- END ROW -->	\n</div><!--- END CONTAINER-->\n</section>\n<!-- END HOME BLOG DESING  -->\n\n<!-- START CONTACT -->\n<section id=\"contact\" class=\"contact_area section-padding\" style=\"background-image: url(fh_static_6/img/bg/contact-bg.jpg); background-size:cover; background-position: center center;background-attachment:fixed\">\n<div class=\"container\">				\n	<div class=\"row\">\n		<div class=\"section-title text-center wow zoomIn\">\n			<h2 class=\"section-title-white\">联系我们</h2>\n			<span class=\"section-title-white-span\"></span>\n		</div>					\n		<div class=\"col-md-8 col-md-offset-2 col-sm-12 col-xs-12 wow fadeInDown\" data-wow-duration=\"1s\" data-wow-delay=\"0.1s\" data-wow-offset=\"0\">\n			<div class=\"contact\">\n					<div class=\"row\">\n						<div class=\"form-group col-md-12\">\n							<input type=\"text\" class=\"form-control\" id=\"NAME\" name=\"NAME\" placeholder=\"您的姓名\" required=\"required\">\n						</div>\n						<div class=\"form-group col-md-12\">\n							<input type=\"email\" class=\"form-control\" id=\"EMAIL\" name=\"EMAIL\" placeholder=\"您的邮箱\" required=\"required\">\n						</div>\n						<div class=\"form-group col-md-12\">\n							<textarea rows=\"6\" class=\"form-control\" id=\"LCONTENT\" name=\"LCONTENT\" placeholder=\"这里留言给我们\" required=\"required\"></textarea>\n						</div>\n						<div class=\"form-group col-md-12 mb0\">\n						   <div class=\"actions\">\n							<input type=\"submit\" onclick=\"save()\" value=\"提交\" name=\"submit\" id=\"submitButton\" class=\"btn btn-lg btn-contact-bg\" />\n							</div>\n						</div>\n					</div>\n			</div>\n		</div><!-- END COL -->\n	</div><!--- END ROW -->				\n</div><!--- END CONTAINER -->		\n</section>\n<!-- END CONTACT  -->\n\n<!-- START MAP -->\n<div id=\"allmap\"></div>\n<!-- END MAP -->\n\n<!-- START CONTACT ADDRESS -->\n<div class=\"contact-address\">\n<div class=\"container\">\n	<div class=\"row text-center\">\n		<div class=\"col-md-3 col-sm-6 col-xs-12\">\n			<div class=\"single_address\">\n				<i class=\"fa fa-phone\"></i>\n				<p>${TEL}</p>\n			</div>\n		</div><!-- END COL  -->\n		<div class=\"col-md-3 col-sm-6 col-xs-12\">\n			<div class=\"single_address\">\n				<i class=\"fa fa-rocket\"></i>\n				<p>${ADDRESS}</p>\n			</div>\n		</div><!-- END COL  -->\n		<div class=\"col-md-3 col-sm-6 col-xs-12\">\n			<div class=\"single_address\">\n				<i class=\"fa fa-envelope\"></i>\n				<p>${EMAIL}</p>\n			</div>\n		</div><!-- END COL  -->\n		<div class=\"col-md-3 col-sm-6 col-xs-12\">\n			<div class=\"single_address\">\n				<i class=\"fa fa-clock-o\"></i>\n				<p>QQ:${QQ}-传真:${FAX}</p>\n			</div>\n		</div><!-- END COL  -->\n	</div><!--END  ROW  -->\n</div><!-- END CONTAINER  -->\n</div>\n<!-- END CONTACT ADDRESS -->\n\n<!-- START FOOTER TOP -->\n<section class=\"footer section-padding\">\n<div class=\"container\">\n	<div class=\"row\">					\n		<div class=\"col-md-12 col-sm-12 text-center wow zoomIn\">\n			<div class=\"footer_logo\">\n				<a href=\"index.html\"><img src=\"${LOGO}\" alt=\"${NAME}\" /></a>\n			</div>\n			<div class=\"footer_social\">\n				<ul>\n					<li><a class=\"f_facebook\"><i class=\"fa fa-facebook\"></i></a></li>\n					<li><a class=\"f_twitter\"><i class=\"fa fa-twitter\"></i></a></li>\n					<li><a class=\"f_google\"><i class=\"fa fa-google-plus\"></i></a></li>\n					<li><a class=\"f_linkedin\"><i class=\"fa fa-linkedin\"></i></a></li>\n					<li><a class=\"f_youtube\"><i class=\"fa fa-youtube\"></i></a></li>\n					<li><a class=\"f_skype\"><i class=\"fa fa-skype\"></i></a></li>\n				</ul>\n			</div>\n			<div class=\"copyright\">\n				<p>Copyright ${COPYRIGHT} . 技术支持：${TECHNOLOGY} . 备案：${BEIAN}</p>\n			</div><!--- END FOOTER COPYRIGHT -->\n		</div><!--- END COL -->			\n	</div><!--- END ROW -->				\n</div><!--- END CONTAINER -->\n</section>\n<!-- END FOOTER TOP -->		\n\n<!-- Latest jQuery -->\n<script src=\"fh_static_6/js/jquery-1.12.4.min.js\"></script>\n<!-- Latest compiled and minified Bootstrap -->\n<script src=\"fh_static_6/bootstrap/js/bootstrap.min.js\"></script>\n<!-- modernizer JS -->		\n<script src=\"fh_static_6/js/modernizr-2.8.3.min.js\"></script>				\n<!-- venobox js -->\n<script src=\"fh_static_6/venobox/js/venobox.min.js\"></script>\n<!-- jquery appear js  -->\n<script src=\"fh_static_6/js/jquery.appear.js\"></script>			\n<!-- countTo js -->\n<script src=\"fh_static_6/js/jquery.inview.min.js\"></script>			\n<!-- jquery mixitup js -->\n<script src=\"fh_static_6/js/jquery.mixitup.js\"></script>			\n<!-- owl-carousel min js  -->\n<script src=\"fh_static_6/owlcarousel/js/owl.carousel.min.js\"></script>				\n<!-- scrolltopcontrol js -->\n<script src=\"fh_static_6/js/scrolltopcontrol.js\"></script>					\n<!-- WOW - Reveal Animations When You Scroll -->\n<script src=\"fh_static_6/js/wow.min.js\"></script>\n<!-- form-contact js -->\n<script src=\"fh_static_6/js/form-contact.js\"></script>			\n<!--<script src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyDwIQh7LGryQdDDi-A603lR8NqiF3R_ycA\"></script>--->\n<!-- switcher js -->\n<script src=\"fh_static_6/js/switcher.js\"></script>			\n<!-- scripts js -->\n<script src=\"fh_static_6/js/scripts.js\"></script>\n\n</body>\n	<script type=\"text/javascript\">\n		\n		function save(){\n			var NAME = $(\"#NAME\").val();\n			var EMAIL = $(\"#EMAIL\").val();\n			var LCONTENT = $(\"#LCONTENT\").val();\n			if(\"\" == NAME){\n				alert(\"请填写姓名\");\n				$(\"#NAME\").focus();\n				return false;\n			}\n			if(\"\" == EMAIL){\n				alert(\"请填写邮箱\");\n				$(\"#EMAIL\").focus();\n				return false;\n			}\n			if(\"\" == LCONTENT){\n				alert(\"请填写内容\");\n				$(\"#LCONTENT\").focus();\n				return false;\n			}\n			$.ajax({\n				type: \"POST\",\n				url: \'web/saveLeavemsg.do\',\n		    	data: {NAME:NAME,EMAIL:EMAIL,ADDRESS:\'\',LCONTENT:LCONTENT,tm:new Date().getTime()},\n				dataType:\'json\',\n				cache: false,\n				success: function(data){\n					 if(\"00\" == data.result){\n					 	$(\"#NAME\").val(\"\");\n						$(\"#EMAIL\").val(\"\");\n						$(\"#LCONTENT\").val(\"\");\n						alert(\"提交成功\");\n					 }\n				}\n			});\n		}\n	\n		// 百度地图API功能\n		var map = new BMap.Map(\"allmap\");\n		map.enableScrollWheelZoom();    //启用滚轮放大缩小，默认禁用\n		\n		map.addControl(new BMap.ScaleControl());                    // 添加默认比例尺控件\n		map.addControl(new BMap.ScaleControl({anchor: BMAP_ANCHOR_TOP_LEFT}));                    // 左上\n		map.addControl(new BMap.ScaleControl({anchor: BMAP_ANCHOR_TOP_RIGHT}));                   // 右上\n		map.addControl(new BMap.ScaleControl({anchor: BMAP_ANCHOR_BOTTOM_LEFT}));                 // 左下\n		map.addControl(new BMap.ScaleControl({anchor: BMAP_ANCHOR_BOTTOM_RIGHT}));                // 右下\n\n		map.addControl(new BMap.NavigationControl());  //添加默认缩放平移控件\n		map.addControl(new BMap.NavigationControl({anchor: BMAP_ANCHOR_TOP_RIGHT, type: BMAP_NAVIGATION_CONTROL_SMALL}));  //右上角，仅包含平移和缩放按钮\n		map.addControl(new BMap.NavigationControl({anchor: BMAP_ANCHOR_BOTTOM_LEFT, type: BMAP_NAVIGATION_CONTROL_PAN}));  //左下角，仅包含平移按钮\n		map.addControl(new BMap.NavigationControl({anchor: BMAP_ANCHOR_BOTTOM_RIGHT, type: BMAP_NAVIGATION_CONTROL_ZOOM}));//右下角，仅包含缩放按钮\n		\n		//创建跳动的位置图标\n		var point = new BMap.Point(${LONGITUDE}, ${DIMENSION});\n		map.centerAndZoom(point, ${PZOOM});\n		var marker = new BMap.Marker(point); 		// 创建标注\n		map.addOverlay(marker);               		// 将标注添加到地图中\n		marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画\n		\n		\n		$(window).load(function() {\n				addIP();\n				isBlack();\n			});\n			//记录IP\n			function addIP(){\n				$.ajax({\n					type: \"POST\",\n					url: \'web/addStatistics.do\',\n			    	data: {tm:new Date().getTime()},\n					dataType:\'json\',\n					cache: false,\n					success: function(data){\n					}\n				});\n			}\n			function isBlack(){\n				$.ajax({\n					type: \"POST\",\n					url: \'web/isBlack.do\',\n			    	data: {tm:new Date().getTime()},\n					dataType:\'json\',\n					cache: false,\n					success: function(data){\n						if(\"NO\" == data.result){\n						$(\"body\").html(\"\");\n						alert(\"禁止访问！\");\n						}\n					}\n				});\n			}\n	</script>\n</html>\n');
INSERT INTO `sys_codeeditor` VALUES ('7141f6e7c39b4a398484b4d3f88c3534', 'createHtml', 'productTemplate', '2019-01-04 16:27:56', '<!DOCTYPE html>\n<!--[if lt IE 7 ]><html class=\"ie ie6\" lang=\"en\"> <![endif]-->\n<!--[if IE 7 ]><html class=\"ie ie7\" lang=\"en\"> <![endif]-->\n<!--[if IE 8 ]><html class=\"ie ie8\" lang=\"en\"> <![endif]-->\n<!--[if (gte IE 9)|!(IE)]><!-->\n<html lang=\"en\">\n<!--<![endif]-->\n<head>\n<meta charset=\"utf-8\">\n<title>${TITLE}-产品案例</title>\n<meta name=\"keywords\" content=\"${KEYWORDS}\" />\n<meta name=\"description\" content=\"${DESCRIPTION}\">\n<meta name=\"author\" content=\"fhadmin\">\n<meta name=\"viewport\"\n	content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n<!-- CSS -->\n<link rel=\"stylesheet\" href=\"fh_static_1/css/style.css\">\n<link rel=\"stylesheet\" type=\"text/css\"\n	href=\"fh_static_1/css/settings.css\" media=\"screen\" />\n<!-- JS -->\n<script src=\"fh_static_1/js/jquery-1.8.2.min.js\" type=\"text/javascript\"></script>\n<!-- jQuery -->\n<script src=\"fh_static_1/js/jquery.easing.1.3.js\" type=\"text/javascript\"></script>\n<!-- jQuery easing -->\n<script src=\"fh_static_1/js/modernizr.custom.js\" type=\"text/javascript\"></script>\n<!-- Modernizr -->\n<script src=\"fh_static_1/js/jquery-ui-1.10.1.custom.min.js\"\n	type=\"text/javascript\"></script>\n<!-- tabs, toggles, accordion -->\n<script src=\"fh_static_1/js/custom.js\" type=\"text/javascript\"></script>\n<!-- jQuery initialization -->\n<!-- Responsive Menu -->\n<script src=\"fh_static_1/js/jquery.meanmenu.js\"></script>\n<script>\n	jQuery(document).ready(function() {\n		jQuery(\'header nav\').meanmenu();\n	});\n</script>\n<!-- Revolution Slider -->\n<script src=\"fh_static_1/js/jquery.themepunch.plugins.min.js\"></script>\n<script src=\"fh_static_1/js/jquery.themepunch.revolution.min.js\"></script>\n<script src=\"fh_static_1/js/revolution-slider-options.js\"></script>\n<!-- Prety photo -->\n<script src=\"fh_static_1/js/jquery.prettyPhoto.js\"></script>\n<script>\n	$(document).ready(function() {\n		$(\"a[data-gal^=\'prettyPhoto\']\").prettyPhoto();\n	});\n</script>\n<!-- Tooltip -->\n<script src=\"fh_static_1/js/tooltip.js\"></script>\n<!-- Flexisel -->\n<script type=\"text/javascript\" src=\"fh_static_1/js/jquery.flexisel.js\"></script>\n<!-- Favicons  -->\n<link rel=\"shortcut icon\" href=\"fh_static_1/images/favicon.ico\">\n<link rel=\"apple-touch-icon\" href=\"fh_static_1/images/apple-touch-icon.png\">\n<link rel=\"apple-touch-icon\" sizes=\"72x72\" href=\"fh_static_1/images/apple-touch-icon-72x72.png\">\n<link rel=\"apple-touch-icon\" sizes=\"114x114\" href=\"fh_static_1/images/apple-touch-icon-114x114.png\">\n</head>\n<body>\n\n	<!-- header 包含导航菜单 -->\n	<#include \"headerTemplate.ftl\"> \n	<!-- header 包含导航菜单 -->\n\n	<div class=\"container\">\n		<div class=\"container\">\n			<div class=\"sixteen columns page-title\">\n				<div class=\"eight columns alpha\">\n					<h3> <span>产品案例</span> </h3>\n				</div>\n				<div class=\"eight columns omega\">\n					<nav class=\"breadcrumbs\">\n						<ul>\n							<li></li>\n							<li>\n								<a>Product case</a>\n							</li>\n							<li></li>\n						</ul>\n					</nav>\n				</div>\n				<div class=\"clearfix\"></div>\n			</div><!-- page-title -->\n		</div><!-- container -->\n			\n			<div class=\"row port works\">\n			\n				<#list fieldList5 as var>		\n				<div class=\"row-item one-third column photography webdesign\">\n					<div class=\"work\">\n						<a href=\"${var[1]}\" data-gal=\"prettyPhoto\" class=\"work-image\">\n							<img src=\"${var[1]}\" alt=\"${var[0]}\">\n							<div class=\"link-overlay fa fa-search\"></div>\n						</a>\n						<a href=\"${var[2]}\" target=\"_blank\" class=\"work-name\">${var[0]}</a>\n						<div class=\"tags\">${var[3]}</div>\n					</div>\n				</div>\n				</#list>\n				\n			</div>\n		\n	</div>\n	<div>\n	<input type=\"button\" value=\"呼吸训练系统\"\n			onclick=\"location.href=\'${pageContext.request.contextPath }/jsp/huxilianxixitongjiemian.jsp\'\"\n			style=\"font-size: 35px; width: 400px; height: 100px; margin-left: 250px; margin-top: 220px; background: #4B9F37; color: #ffffff; border: none; border-radius: 12px\" />\n		<br> <br> <br> <input type=\"button\" value=\"发音练习系统\"\n			onclick=\"location.href=\'${pageContext.request.contextPath }/jsp/fayinlianxichushijiemian.jsp\'\"\n			style=\"font-size: 35px; width: 400px; height: 100px; margin-left: 250px; margin-top: 30px; background: #ff0000; color: #ffffff; border: none; border-radius: 12px\" />\n		<br> <br> <br> <input type=\"button\" value=\"唇语学习系统\"\n			onclick=\"location.href=\'${pageContext.request.contextPath }/jsp/chunyuxueximoshixuanzejiemian.jsp\'\"\n			style=\"font-size: 35px; width: 400px; height: 100px; margin-left: 250px; margin-top: 30px; background: #0000ff; color: #ffffff; border: none; border-radius: 12px\" />\n			</div>\n	<!-- container -->\n	\n	<!-- footer 包含底部 -->\n	<#include \"footerTemplate.ftl\"> \n	<!-- footer 包含底部  -->\n\n	<script type=\"text/javascript\">\n		$(window).load(function() {\n			$(\"#Product\").addClass(\"current_page_item\"); \n		});\n	</script>\n	<!-- End Document  -->\n</body>\n</html>\n');
INSERT INTO `sys_codeeditor` VALUES ('9024139d9a7147c68eb0c999090c48d3', 'createHtml', 'productTemplate', '2019-01-04 17:11:05', '<!DOCTYPE html>\n<!--[if lt IE 7 ]><html class=\"ie ie6\" lang=\"en\"> <![endif]-->\n<!--[if IE 7 ]><html class=\"ie ie7\" lang=\"en\"> <![endif]-->\n<!--[if IE 8 ]><html class=\"ie ie8\" lang=\"en\"> <![endif]-->\n<!--[if (gte IE 9)|!(IE)]><!-->\n<html lang=\"en\">\n<!--<![endif]-->\n<head>\n<meta charset=\"utf-8\">\n<title>${TITLE}-产品案例</title>\n<meta name=\"keywords\" content=\"${KEYWORDS}\" />\n<meta name=\"description\" content=\"${DESCRIPTION}\">\n<meta name=\"author\" content=\"fhadmin\">\n<meta name=\"viewport\"\n	content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n<!-- CSS -->\n<link rel=\"stylesheet\" href=\"fh_static_1/css/style.css\">\n<link rel=\"stylesheet\" type=\"text/css\"\n	href=\"fh_static_1/css/settings.css\" media=\"screen\" />\n<!-- JS -->\n<script src=\"fh_static_1/js/jquery-1.8.2.min.js\" type=\"text/javascript\"></script>\n<!-- jQuery -->\n<script src=\"fh_static_1/js/jquery.easing.1.3.js\" type=\"text/javascript\"></script>\n<!-- jQuery easing -->\n<script src=\"fh_static_1/js/modernizr.custom.js\" type=\"text/javascript\"></script>\n<!-- Modernizr -->\n<script src=\"fh_static_1/js/jquery-ui-1.10.1.custom.min.js\"\n	type=\"text/javascript\"></script>\n<!-- tabs, toggles, accordion -->\n<script src=\"fh_static_1/js/custom.js\" type=\"text/javascript\"></script>\n<!-- jQuery initialization -->\n<!-- Responsive Menu -->\n<script src=\"fh_static_1/js/jquery.meanmenu.js\"></script>\n<script>\n	jQuery(document).ready(function() {\n		jQuery(\'header nav\').meanmenu();\n	});\n</script>\n<!-- Revolution Slider -->\n<script src=\"fh_static_1/js/jquery.themepunch.plugins.min.js\"></script>\n<script src=\"fh_static_1/js/jquery.themepunch.revolution.min.js\"></script>\n<script src=\"fh_static_1/js/revolution-slider-options.js\"></script>\n<!-- Prety photo -->\n<script src=\"fh_static_1/js/jquery.prettyPhoto.js\"></script>\n<script>\n	$(document).ready(function() {\n		$(\"a[data-gal^=\'prettyPhoto\']\").prettyPhoto();\n	});\n</script>\n<!-- Tooltip -->\n<script src=\"fh_static_1/js/tooltip.js\"></script>\n<!-- Flexisel -->\n<script type=\"text/javascript\" src=\"fh_static_1/js/jquery.flexisel.js\"></script>\n<!-- Favicons  -->\n<link rel=\"shortcut icon\" href=\"fh_static_1/images/favicon.ico\">\n<link rel=\"apple-touch-icon\" href=\"fh_static_1/images/apple-touch-icon.png\">\n<link rel=\"apple-touch-icon\" sizes=\"72x72\" href=\"fh_static_1/images/apple-touch-icon-72x72.png\">\n<link rel=\"apple-touch-icon\" sizes=\"114x114\" href=\"fh_static_1/images/apple-touch-icon-114x114.png\">\n</head>\n<body>\n\n	<!-- header 包含导航菜单 -->\n	<#include \"headerTemplate.ftl\"> \n	<!-- header 包含导航菜单 -->\n\n	<div class=\"container\">\n		<div class=\"container\">\n			<div class=\"sixteen columns page-title\">\n				<div class=\"eight columns alpha\">\n					<h3> <span>产品案例</span> </h3>\n				</div>\n				<div class=\"eight columns omega\">\n					<nav class=\"breadcrumbs\">\n						<ul>\n							<li></li>\n							<li>\n								<a>Product case</a>\n							</li>\n							<li></li>\n						</ul>\n					</nav>\n				</div>\n				<div class=\"clearfix\"></div>\n			</div><!-- page-title -->\n		</div><!-- container -->\n			\n			<div class=\"row port works\">\n			\n				<#list fieldList5 as var>		\n				<div class=\"row-item one-third column photography webdesign\">\n					<div class=\"work\">\n						<a href=\"${var[1]}\" data-gal=\"prettyPhoto\" class=\"work-image\">\n							<img src=\"${var[1]}\" alt=\"${var[0]}\" onclick=\"dik()\">\n							<div class=\"link-overlay fa fa-search\"></div>\n						</a>\n						<a href=\"${var[2]}\" target=\"_blank\" class=\"work-name\">${var[0]}</a>\n						<div class=\"tags\">${var[3]}</div>\n					</div>\n				</div>\n				</#list>\n				\n			</div>\n		\n	</div>\n	<!-- container -->\n	\n	<!-- footer 包含底部 -->\n	<#include \"footerTemplate.ftl\"> \n	<!-- footer 包含底部  -->\n\n	<script type=\"text/javascript\">\n		$(window).load(function() {\n			$(\"#Product\").addClass(\"current_page_item\"); \n		});\n	</script>\n	<!-- End Document  -->\n</body>\n</html>\n');
INSERT INTO `sys_codeeditor` VALUES ('aeaa37499afd4fb7bb07c222d9799125', 'createHtml', 'headerTemplate', '2019-01-04 15:31:40', '<header class=\"header\">\n		<div class=\"container\">\n			<div class=\"logos columns\">\n				<h1 class=\"logo\">\n					<a href=\"index.html\"><img src=\"${LOGO}\" alt=\"${NAME}\" title=\"${NAME}\" /></a>\n				</h1>\n			</div>\n			<!-- logo -->\n\n			<div class=\"twelve columns\">\n				<nav class=\"main_menu\">\n\n					<ul>\n						<li id=\"index\">\n							<a href=\"index.html\"> 首页 \n								<div class=\"sub\"> Home </div>\n							</a>\n						</li>\n\n						<li id=\"aboutus\">\n							<a href=\"webaboutus.html\"> 关于我们\n								<div class=\"sub\">About Us</div>\n							</a>\n						</li>\n\n						<li id=\"Product\">\n							<a href=\"webproduct.html\"> 产品案例\n								<div class=\"sub\">Product case</div>\n							</a>\n						</li>\n\n						<li id=\"cooperation\">\n							<a href=\"webcooperation.html\">合作共赢\n								<div class=\"sub\">Cooperation</div>\n							</a>\n						</li>\n\n						<li id=\"News\">\n							<a href=\"webnews.html\"> 新闻动态\n								<div class=\"sub\">News & Events</div>\n							</a>\n						</li>\n\n						<li id=\"contactus\">\n							<a href=\"webcontactus.html\"> 联系我们\n								<div class=\"sub\">Contact US</div>\n							</a>\n						</li>\n					</ul>\n\n				</nav>\n				<!-- navigation -->\n			</div>\n			<div class=\"clearfix\"></div>\n		</div>\n	</header>\n');
INSERT INTO `sys_codeeditor` VALUES ('b0a15fd5864e4f7ba4d9486f0a9e5f34', 'createHtml', 'productTemplate', '2019-01-04 16:57:19', '<!DOCTYPE html>\n<!--[if lt IE 7 ]><html class=\"ie ie6\" lang=\"en\"> <![endif]-->\n<!--[if IE 7 ]><html class=\"ie ie7\" lang=\"en\"> <![endif]-->\n<!--[if IE 8 ]><html class=\"ie ie8\" lang=\"en\"> <![endif]-->\n<!--[if (gte IE 9)|!(IE)]><!-->\n<html lang=\"en\">\n<!--<![endif]-->\n<head>\n<meta charset=\"utf-8\">\n<title>${TITLE}-产品案例</title>\n<meta name=\"keywords\" content=\"${KEYWORDS}\" />\n<meta name=\"description\" content=\"${DESCRIPTION}\">\n<meta name=\"author\" content=\"fhadmin\">\n<meta name=\"viewport\"\n	content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n<!-- CSS -->\n<link rel=\"stylesheet\" href=\"fh_static_1/css/style.css\">\n<link rel=\"stylesheet\" type=\"text/css\"\n	href=\"fh_static_1/css/settings.css\" media=\"screen\" />\n<!-- JS -->\n<script src=\"fh_static_1/js/jquery-1.8.2.min.js\" type=\"text/javascript\"></script>\n<!-- jQuery -->\n<script src=\"fh_static_1/js/jquery.easing.1.3.js\" type=\"text/javascript\"></script>\n<!-- jQuery easing -->\n<script src=\"fh_static_1/js/modernizr.custom.js\" type=\"text/javascript\"></script>\n<!-- Modernizr -->\n<script src=\"fh_static_1/js/jquery-ui-1.10.1.custom.min.js\"\n	type=\"text/javascript\"></script>\n<!-- tabs, toggles, accordion -->\n<script src=\"fh_static_1/js/custom.js\" type=\"text/javascript\"></script>\n<!-- jQuery initialization -->\n<!-- Responsive Menu -->\n<script src=\"fh_static_1/js/jquery.meanmenu.js\"></script>\n<script>\n	jQuery(document).ready(function() {\n		jQuery(\'header nav\').meanmenu();\n	});\n</script>\n<!-- Revolution Slider -->\n<script src=\"fh_static_1/js/jquery.themepunch.plugins.min.js\"></script>\n<script src=\"fh_static_1/js/jquery.themepunch.revolution.min.js\"></script>\n<script src=\"fh_static_1/js/revolution-slider-options.js\"></script>\n<!-- Prety photo -->\n<script src=\"fh_static_1/js/jquery.prettyPhoto.js\"></script>\n<script>\n	$(document).ready(function() {\n		$(\"a[data-gal^=\'prettyPhoto\']\").prettyPhoto();\n	});\n</script>\n<!-- Tooltip -->\n<script src=\"fh_static_1/js/tooltip.js\"></script>\n<!-- Flexisel -->\n<script type=\"text/javascript\" src=\"fh_static_1/js/jquery.flexisel.js\"></script>\n<!-- Favicons  -->\n<link rel=\"shortcut icon\" href=\"fh_static_1/images/favicon.ico\">\n<link rel=\"apple-touch-icon\" href=\"fh_static_1/images/apple-touch-icon.png\">\n<link rel=\"apple-touch-icon\" sizes=\"72x72\" href=\"fh_static_1/images/apple-touch-icon-72x72.png\">\n<link rel=\"apple-touch-icon\" sizes=\"114x114\" href=\"fh_static_1/images/apple-touch-icon-114x114.png\">\n</head>\n<body>\n\n	<!-- header 包含导航菜单 -->\n	<#include \"headerTemplate.ftl\"> \n	<!-- header 包含导航菜单 -->\n\n	<div class=\"container\">\n		<div class=\"container\">\n			<div class=\"sixteen columns page-title\">\n				<div class=\"eight columns alpha\">\n					<h3> <span>产品案例</span> </h3>\n				</div>\n				<div class=\"eight columns omega\">\n					<nav class=\"breadcrumbs\">\n						<ul>\n							<li></li>\n							<li>\n								<a>Product case</a>\n							</li>\n							<li></li>\n						</ul>\n					</nav>\n				</div>\n				<div class=\"clearfix\"></div>\n			</div><!-- page-title -->\n		</div><!-- container -->\n			\n			<div class=\"row port works\">\n			\n				<#list fieldList5 as var>		\n				<div class=\"row-item one-third column photography webdesign\">\n					<div class=\"work\">\n					    <input type=\"button\" value=\"呼吸训练系统\"\n			onclick=\"location.href=\'${pageContext.request.contextPath }/jsp/huxilianxixitongjiemian.jsp\'\"\n			style=\"font-size: 35px; width: 400px; height: 100px; margin-left: 250px; margin-top: 220px; background: #4B9F37; color: #ffffff; border: none; border-radius: 12px\" />\n		<br> <br> <br> <input type=\"button\" value=\"发音练习系统\"\n			onclick=\"location.href=\'${pageContext.request.contextPath }/jsp/fayinlianxichushijiemian.jsp\'\"\n			style=\"font-size: 35px; width: 400px; height: 100px; margin-left: 250px; margin-top: 30px; background: #ff0000; color: #ffffff; border: none; border-radius: 12px\" />\n		<br> <br> <br> <input type=\"button\" value=\"唇语学习系统\"\n			onclick=\"location.href=\'${pageContext.request.contextPath }/jsp/chunyuxueximoshixuanzejiemian.jsp\'\"\n			style=\"font-size: 35px; width: 400px; height: 100px; margin-left: 250px; margin-top: 30px; background: #0000ff; color: #ffffff; border: none; border-radius: 12px\" />\n	\n						<a href=\"${var[1]}\" data-gal=\"prettyPhoto\" class=\"work-image\">\n							<img src=\"${var[1]}\" alt=\"${var[0]}\">\n							<div class=\"link-overlay fa fa-search\"></div>\n						</a>\n						<a href=\"${var[2]}\" target=\"_blank\" class=\"work-name\">${var[0]}</a>\n						<div class=\"tags\">${var[3]}</div>\n					</div>\n				</div>\n				</#list>\n				\n			</div>\n		\n	</div>\n	<!-- container -->\n	\n	<!-- footer 包含底部 -->\n	<#include \"footerTemplate.ftl\"> \n	<!-- footer 包含底部  -->\n\n	<script type=\"text/javascript\">\n		$(window).load(function() {\n			$(\"#Product\").addClass(\"current_page_item\"); \n		});\n	</script>\n	<!-- End Document  -->\n</body>\n</html>\n');
INSERT INTO `sys_codeeditor` VALUES ('b3be81d4926d4f7bb52fd1cdedec432a', 'createHtml', 'productTemplate', '2019-01-04 16:28:41', '<!DOCTYPE html>\n<!--[if lt IE 7 ]><html class=\"ie ie6\" lang=\"en\"> <![endif]-->\n<!--[if IE 7 ]><html class=\"ie ie7\" lang=\"en\"> <![endif]-->\n<!--[if IE 8 ]><html class=\"ie ie8\" lang=\"en\"> <![endif]-->\n<!--[if (gte IE 9)|!(IE)]><!-->\n<html lang=\"en\">\n<!--<![endif]-->\n<head>\n<meta charset=\"utf-8\">\n<title>${TITLE}-产品案例</title>\n<meta name=\"keywords\" content=\"${KEYWORDS}\" />\n<meta name=\"description\" content=\"${DESCRIPTION}\">\n<meta name=\"author\" content=\"fhadmin\">\n<meta name=\"viewport\"\n	content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n<!-- CSS -->\n<link rel=\"stylesheet\" href=\"fh_static_1/css/style.css\">\n<link rel=\"stylesheet\" type=\"text/css\"\n	href=\"fh_static_1/css/settings.css\" media=\"screen\" />\n<!-- JS -->\n<script src=\"fh_static_1/js/jquery-1.8.2.min.js\" type=\"text/javascript\"></script>\n<!-- jQuery -->\n<script src=\"fh_static_1/js/jquery.easing.1.3.js\" type=\"text/javascript\"></script>\n<!-- jQuery easing -->\n<script src=\"fh_static_1/js/modernizr.custom.js\" type=\"text/javascript\"></script>\n<!-- Modernizr -->\n<script src=\"fh_static_1/js/jquery-ui-1.10.1.custom.min.js\"\n	type=\"text/javascript\"></script>\n<!-- tabs, toggles, accordion -->\n<script src=\"fh_static_1/js/custom.js\" type=\"text/javascript\"></script>\n<!-- jQuery initialization -->\n<!-- Responsive Menu -->\n<script src=\"fh_static_1/js/jquery.meanmenu.js\"></script>\n<script>\n	jQuery(document).ready(function() {\n		jQuery(\'header nav\').meanmenu();\n	});\n</script>\n<!-- Revolution Slider -->\n<script src=\"fh_static_1/js/jquery.themepunch.plugins.min.js\"></script>\n<script src=\"fh_static_1/js/jquery.themepunch.revolution.min.js\"></script>\n<script src=\"fh_static_1/js/revolution-slider-options.js\"></script>\n<!-- Prety photo -->\n<script src=\"fh_static_1/js/jquery.prettyPhoto.js\"></script>\n<script>\n	$(document).ready(function() {\n		$(\"a[data-gal^=\'prettyPhoto\']\").prettyPhoto();\n	});\n</script>\n<!-- Tooltip -->\n<script src=\"fh_static_1/js/tooltip.js\"></script>\n<!-- Flexisel -->\n<script type=\"text/javascript\" src=\"fh_static_1/js/jquery.flexisel.js\"></script>\n<!-- Favicons  -->\n<link rel=\"shortcut icon\" href=\"fh_static_1/images/favicon.ico\">\n<link rel=\"apple-touch-icon\" href=\"fh_static_1/images/apple-touch-icon.png\">\n<link rel=\"apple-touch-icon\" sizes=\"72x72\" href=\"fh_static_1/images/apple-touch-icon-72x72.png\">\n<link rel=\"apple-touch-icon\" sizes=\"114x114\" href=\"fh_static_1/images/apple-touch-icon-114x114.png\">\n</head>\n<body>\n\n	<!-- header 包含导航菜单 -->\n	<#include \"headerTemplate.ftl\"> \n	<!-- header 包含导航菜单 -->\n\n	<div class=\"container\">\n		<div class=\"container\">\n			<div class=\"sixteen columns page-title\">\n				<div class=\"eight columns alpha\">\n					<h3> <span>产品案例</span> </h3>\n				</div>\n				<div class=\"eight columns omega\">\n					<nav class=\"breadcrumbs\">\n						<ul>\n							<li></li>\n							<li>\n								<a>Product case</a>\n							</li>\n							<li></li>\n						</ul>\n					</nav>\n				</div>\n				<div class=\"clearfix\"></div>\n			</div><!-- page-title -->\n		</div><!-- container -->\n			\n			<div class=\"row port works\">\n			\n				<#list fieldList5 as var>		\n				<div class=\"row-item one-third column photography webdesign\">\n					<div class=\"work\">\n						<a href=\"${var[1]}\" data-gal=\"prettyPhoto\" class=\"work-image\">\n							<img src=\"${var[1]}\" alt=\"${var[0]}\">\n							<div class=\"link-overlay fa fa-search\"></div>\n						</a>\n						<a href=\"${var[2]}\" target=\"_blank\" class=\"work-name\">${var[0]}</a>\n						<div class=\"tags\">${var[3]}</div>\n					</div>\n				</div>\n				</#list>\n				\n			</div>\n		\n	</div>\n<p>cdcoscodsjcsdjic</p>\n	<!-- container -->\n	\n	<!-- footer 包含底部 -->\n	<#include \"footerTemplate.ftl\"> \n	<!-- footer 包含底部  -->\n\n	<script type=\"text/javascript\">\n		$(window).load(function() {\n			$(\"#Product\").addClass(\"current_page_item\"); \n		});\n	</script>\n	<!-- End Document  -->\n</body>\n</html>\n');
INSERT INTO `sys_codeeditor` VALUES ('b70bbebbf4d1440d8b722c670a7d79c3', 'createHtml', 'productTemplate', '2019-01-04 17:01:55', '<!DOCTYPE html>\n<!--[if lt IE 7 ]><html class=\"ie ie6\" lang=\"en\"> <![endif]-->\n<!--[if IE 7 ]><html class=\"ie ie7\" lang=\"en\"> <![endif]-->\n<!--[if IE 8 ]><html class=\"ie ie8\" lang=\"en\"> <![endif]-->\n<!--[if (gte IE 9)|!(IE)]><!-->\n<html lang=\"en\">\n<!--<![endif]-->\n<head>\n<meta charset=\"utf-8\">\n<title>${TITLE}-产品案例</title>\n<meta name=\"keywords\" content=\"${KEYWORDS}\" />\n<meta name=\"description\" content=\"${DESCRIPTION}\">\n<meta name=\"author\" content=\"fhadmin\">\n<meta name=\"viewport\"\n	content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n<!-- CSS -->\n<link rel=\"stylesheet\" href=\"fh_static_1/css/style.css\">\n<link rel=\"stylesheet\" type=\"text/css\"\n	href=\"fh_static_1/css/settings.css\" media=\"screen\" />\n<!-- JS -->\n<script src=\"fh_static_1/js/jquery-1.8.2.min.js\" type=\"text/javascript\"></script>\n<!-- jQuery -->\n<script src=\"fh_static_1/js/jquery.easing.1.3.js\" type=\"text/javascript\"></script>\n<!-- jQuery easing -->\n<script src=\"fh_static_1/js/modernizr.custom.js\" type=\"text/javascript\"></script>\n<!-- Modernizr -->\n<script src=\"fh_static_1/js/jquery-ui-1.10.1.custom.min.js\"\n	type=\"text/javascript\"></script>\n<!-- tabs, toggles, accordion -->\n<script src=\"fh_static_1/js/custom.js\" type=\"text/javascript\"></script>\n<!-- jQuery initialization -->\n<!-- Responsive Menu -->\n<script src=\"fh_static_1/js/jquery.meanmenu.js\"></script>\n<script>\n	jQuery(document).ready(function() {\n		jQuery(\'header nav\').meanmenu();\n	});\n</script>\n<!-- Revolution Slider -->\n<script src=\"fh_static_1/js/jquery.themepunch.plugins.min.js\"></script>\n<script src=\"fh_static_1/js/jquery.themepunch.revolution.min.js\"></script>\n<script src=\"fh_static_1/js/revolution-slider-options.js\"></script>\n<!-- Prety photo -->\n<script src=\"fh_static_1/js/jquery.prettyPhoto.js\"></script>\n<script>\n	$(document).ready(function() {\n		$(\"a[data-gal^=\'prettyPhoto\']\").prettyPhoto();\n	});\n</script>\n<!-- Tooltip -->\n<script src=\"fh_static_1/js/tooltip.js\"></script>\n<!-- Flexisel -->\n<script type=\"text/javascript\" src=\"fh_static_1/js/jquery.flexisel.js\"></script>\n<!-- Favicons  -->\n<link rel=\"shortcut icon\" href=\"fh_static_1/images/favicon.ico\">\n<link rel=\"apple-touch-icon\" href=\"fh_static_1/images/apple-touch-icon.png\">\n<link rel=\"apple-touch-icon\" sizes=\"72x72\" href=\"fh_static_1/images/apple-touch-icon-72x72.png\">\n<link rel=\"apple-touch-icon\" sizes=\"114x114\" href=\"fh_static_1/images/apple-touch-icon-114x114.png\">\n</head>\n<body>\n\n	<!-- header 包含导航菜单 -->\n	<#include \"headerTemplate.ftl\"> \n	<!-- header 包含导航菜单 -->\n\n	<div class=\"container\">\n		<div class=\"container\">\n			<div class=\"sixteen columns page-title\">\n				<div class=\"eight columns alpha\">\n					<h3> <span>产品案例</span> </h3>\n				</div>\n				<div class=\"eight columns omega\">\n					<nav class=\"breadcrumbs\">\n						<ul>\n							<li></li>\n							<li>\n								<a>Product case</a>\n							</li>\n							<li></li>\n						</ul>\n					</nav>\n				</div>\n				<div class=\"clearfix\"></div>\n			</div><!-- page-title -->\n		</div><!-- container -->\n			\n			<div class=\"row port works\">\n			\n				<#list fieldList5 as var>		\n				<div class=\"row-item one-third column photography webdesign\">\n					<div class=\"work\">\n					   		<a href=\"${var[1]}\" data-gal=\"prettyPhoto\" class=\"work-image\">\n							<img src=\"${var[1]}\" alt=\"${var[0]}\" onclick=\"startRecording()\" >\n							<div class=\"link-overlay fa fa-search\"></div>\n						</a>\n						<a href=\"${var[2]}\" target=\"_blank\" class=\"work-name\">${var[0]}</a>\n						<div class=\"tags\">${var[3]}</div>\n					</div>\n				</div>\n				</#list>\n				\n			</div>\n		\n	</div>\n	<!-- container -->\n	\n	<!-- footer 包含底部 -->\n	<#include \"footerTemplate.ftl\"> \n	<!-- footer 包含底部  -->\n\n	<script type=\"text/javascript\">\n		$(window).load(function() {\n			$(\"#Product\").addClass(\"current_page_item\"); \n		});\n	</script>\n	<!-- End Document  -->\n</body>\n</html>\n');
INSERT INTO `sys_codeeditor` VALUES ('ba92eb79f14a4727af16ffa75f95ab37', 'createHtml', 'productTemplate', '2019-01-04 16:25:08', '<!DOCTYPE html>\n<!--[if lt IE 7 ]><html class=\"ie ie6\" lang=\"en\"> <![endif]-->\n<!--[if IE 7 ]><html class=\"ie ie7\" lang=\"en\"> <![endif]-->\n<!--[if IE 8 ]><html class=\"ie ie8\" lang=\"en\"> <![endif]-->\n<!--[if (gte IE 9)|!(IE)]><!-->\n<html lang=\"en\">\n<!--<![endif]-->\n<head>\n<meta charset=\"utf-8\">\n<title>${TITLE}-产品案例</title>\n<meta name=\"keywords\" content=\"${KEYWORDS}\" />\n<meta name=\"description\" content=\"${DESCRIPTION}\">\n<meta name=\"author\" content=\"fhadmin\">\n<meta name=\"viewport\"\n	content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n<!-- CSS -->\n<link rel=\"stylesheet\" href=\"fh_static_1/css/style.css\">\n<link rel=\"stylesheet\" type=\"text/css\"\n	href=\"fh_static_1/css/settings.css\" media=\"screen\" />\n<!-- JS -->\n<script src=\"fh_static_1/js/jquery-1.8.2.min.js\" type=\"text/javascript\"></script>\n<!-- jQuery -->\n<script src=\"fh_static_1/js/jquery.easing.1.3.js\" type=\"text/javascript\"></script>\n<!-- jQuery easing -->\n<script src=\"fh_static_1/js/modernizr.custom.js\" type=\"text/javascript\"></script>\n<!-- Modernizr -->\n<script src=\"fh_static_1/js/jquery-ui-1.10.1.custom.min.js\"\n	type=\"text/javascript\"></script>\n<!-- tabs, toggles, accordion -->\n<script src=\"fh_static_1/js/custom.js\" type=\"text/javascript\"></script>\n<!-- jQuery initialization -->\n<!-- Responsive Menu -->\n<script src=\"fh_static_1/js/jquery.meanmenu.js\"></script>\n<script>\n	jQuery(document).ready(function() {\n		jQuery(\'header nav\').meanmenu();\n	});\n</script>\n<!-- Revolution Slider -->\n<script src=\"fh_static_1/js/jquery.themepunch.plugins.min.js\"></script>\n<script src=\"fh_static_1/js/jquery.themepunch.revolution.min.js\"></script>\n<script src=\"fh_static_1/js/revolution-slider-options.js\"></script>\n<!-- Prety photo -->\n<script src=\"fh_static_1/js/jquery.prettyPhoto.js\"></script>\n<script>\n	$(document).ready(function() {\n		$(\"a[data-gal^=\'prettyPhoto\']\").prettyPhoto();\n	});\n</script>\n<!-- Tooltip -->\n<script src=\"fh_static_1/js/tooltip.js\"></script>\n<!-- Flexisel -->\n<script type=\"text/javascript\" src=\"fh_static_1/js/jquery.flexisel.js\"></script>\n<!-- Favicons  -->\n<link rel=\"shortcut icon\" href=\"fh_static_1/images/favicon.ico\">\n<link rel=\"apple-touch-icon\" href=\"fh_static_1/images/apple-touch-icon.png\">\n<link rel=\"apple-touch-icon\" sizes=\"72x72\" href=\"fh_static_1/images/apple-touch-icon-72x72.png\">\n<link rel=\"apple-touch-icon\" sizes=\"114x114\" href=\"fh_static_1/images/apple-touch-icon-114x114.png\">\n</head>\n<body>\n\n	<!-- header 包含导航菜单 -->\n	<#include \"headerTemplate.ftl\"> \n	<!-- header 包含导航菜单 -->\n\n	<div class=\"container\">\n		<div class=\"container\">\n			<div class=\"sixteen columns page-title\">\n				<div class=\"eight columns alpha\">\n					<h3> <span>产品案例</span> </h3>\n				</div>\n				<div class=\"eight columns omega\">\n					<nav class=\"breadcrumbs\">\n						<ul>\n							<li></li>\n							<li>\n								<a>Product case</a>\n							</li>\n							<li></li>\n						</ul>\n					</nav>\n				</div>\n				<div class=\"clearfix\"></div>\n			</div><!-- page-title -->\n		</div><!-- container -->\n			\n			<div class=\"row port works\">\n			\n				<#list fieldList5 as var>		\n				<div class=\"row-item one-third column photography webdesign\">\n					<div class=\"work\">\n						<a href=\"${var[1]}\" data-gal=\"prettyPhoto\" class=\"work-image\">\n							<img src=\"${var[1]}\" alt=\"${var[0]}\">\n							<div class=\"link-overlay fa fa-search\"></div>\n						</a>\n						<a href=\"${var[2]}\" target=\"_blank\" class=\"work-name\">${var[0]}</a>\n						<div class=\"tags\">${var[3]}</div>\n					</div>\n				</div>\n				</#list>\n				\n			</div>\n		\n	</div>\n	<input type=\"button\" value=\"呼吸训练系统\"\n			onclick=\"location.href=\'${pageContext.request.contextPath }/jsp/huxilianxixitongjiemian.jsp\'\"\n			style=\"font-size: 35px; width: 400px; height: 100px; margin-left: 250px; margin-top: 220px; background: #4B9F37; color: #ffffff; border: none; border-radius: 12px\" />\n		<br> <br> <br> <input type=\"button\" value=\"发音练习系统\"\n			onclick=\"location.href=\'${pageContext.request.contextPath }/jsp/fayinlianxichushijiemian.jsp\'\"\n			style=\"font-size: 35px; width: 400px; height: 100px; margin-left: 250px; margin-top: 30px; background: #ff0000; color: #ffffff; border: none; border-radius: 12px\" />\n		<br> <br> <br> <input type=\"button\" value=\"唇语学习系统\"\n			onclick=\"location.href=\'${pageContext.request.contextPath }/jsp/chunyuxueximoshixuanzejiemian.jsp\'\"\n			style=\"font-size: 35px; width: 400px; height: 100px; margin-left: 250px; margin-top: 30px; background: #0000ff; color: #ffffff; border: none; border-radius: 12px\" />\n	<!-- container -->\n	\n	<!-- footer 包含底部 -->\n	<#include \"footerTemplate.ftl\"> \n	<!-- footer 包含底部  -->\n\n	<script type=\"text/javascript\">\n		$(window).load(function() {\n			$(\"#Product\").addClass(\"current_page_item\"); \n		});\n	</script>\n	<!-- End Document  -->\n</body>\n</html>\n');
INSERT INTO `sys_codeeditor` VALUES ('bd1725045506467aaec5e4c356124aa8', 'createHtml', 'productTemplate', '2019-01-04 16:57:57', '<!DOCTYPE html>\n<!--[if lt IE 7 ]><html class=\"ie ie6\" lang=\"en\"> <![endif]-->\n<!--[if IE 7 ]><html class=\"ie ie7\" lang=\"en\"> <![endif]-->\n<!--[if IE 8 ]><html class=\"ie ie8\" lang=\"en\"> <![endif]-->\n<!--[if (gte IE 9)|!(IE)]><!-->\n<html lang=\"en\">\n<!--<![endif]-->\n<head>\n<meta charset=\"utf-8\">\n<title>${TITLE}-产品案例</title>\n<meta name=\"keywords\" content=\"${KEYWORDS}\" />\n<meta name=\"description\" content=\"${DESCRIPTION}\">\n<meta name=\"author\" content=\"fhadmin\">\n<meta name=\"viewport\"\n	content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n<!-- CSS -->\n<link rel=\"stylesheet\" href=\"fh_static_1/css/style.css\">\n<link rel=\"stylesheet\" type=\"text/css\"\n	href=\"fh_static_1/css/settings.css\" media=\"screen\" />\n<!-- JS -->\n<script src=\"fh_static_1/js/jquery-1.8.2.min.js\" type=\"text/javascript\"></script>\n<!-- jQuery -->\n<script src=\"fh_static_1/js/jquery.easing.1.3.js\" type=\"text/javascript\"></script>\n<!-- jQuery easing -->\n<script src=\"fh_static_1/js/modernizr.custom.js\" type=\"text/javascript\"></script>\n<!-- Modernizr -->\n<script src=\"fh_static_1/js/jquery-ui-1.10.1.custom.min.js\"\n	type=\"text/javascript\"></script>\n<!-- tabs, toggles, accordion -->\n<script src=\"fh_static_1/js/custom.js\" type=\"text/javascript\"></script>\n<!-- jQuery initialization -->\n<!-- Responsive Menu -->\n<script src=\"fh_static_1/js/jquery.meanmenu.js\"></script>\n<script>\n	jQuery(document).ready(function() {\n		jQuery(\'header nav\').meanmenu();\n	});\n</script>\n<!-- Revolution Slider -->\n<script src=\"fh_static_1/js/jquery.themepunch.plugins.min.js\"></script>\n<script src=\"fh_static_1/js/jquery.themepunch.revolution.min.js\"></script>\n<script src=\"fh_static_1/js/revolution-slider-options.js\"></script>\n<!-- Prety photo -->\n<script src=\"fh_static_1/js/jquery.prettyPhoto.js\"></script>\n<script>\n	$(document).ready(function() {\n		$(\"a[data-gal^=\'prettyPhoto\']\").prettyPhoto();\n	});\n</script>\n<!-- Tooltip -->\n<script src=\"fh_static_1/js/tooltip.js\"></script>\n<!-- Flexisel -->\n<script type=\"text/javascript\" src=\"fh_static_1/js/jquery.flexisel.js\"></script>\n<!-- Favicons  -->\n<link rel=\"shortcut icon\" href=\"fh_static_1/images/favicon.ico\">\n<link rel=\"apple-touch-icon\" href=\"fh_static_1/images/apple-touch-icon.png\">\n<link rel=\"apple-touch-icon\" sizes=\"72x72\" href=\"fh_static_1/images/apple-touch-icon-72x72.png\">\n<link rel=\"apple-touch-icon\" sizes=\"114x114\" href=\"fh_static_1/images/apple-touch-icon-114x114.png\">\n</head>\n<body>\n\n	<!-- header 包含导航菜单 -->\n	<#include \"headerTemplate.ftl\"> \n	<!-- header 包含导航菜单 -->\n\n	<div class=\"container\">\n		<div class=\"container\">\n			<div class=\"sixteen columns page-title\">\n				<div class=\"eight columns alpha\">\n					<h3> <span>产品案例</span> </h3>\n				</div>\n				<div class=\"eight columns omega\">\n					<nav class=\"breadcrumbs\">\n						<ul>\n							<li></li>\n							<li>\n								<a>Product case</a>\n							</li>\n							<li></li>\n						</ul>\n					</nav>\n				</div>\n				<div class=\"clearfix\"></div>\n			</div><!-- page-title -->\n		</div><!-- container -->\n			\n			<div class=\"row port works\">\n			\n				<#list fieldList5 as var>		\n				<div class=\"row-item one-third column photography webdesign\">\n					<div class=\"work\">\n					   				<a href=\"${var[1]}\" data-gal=\"prettyPhoto\" class=\"work-image\">\n							<img src=\"${var[1]}\" alt=\"${var[0]}\">\n							<div class=\"link-overlay fa fa-search\"></div>\n						</a>\n						<a href=\"${var[2]}\" target=\"_blank\" class=\"work-name\">${var[0]}</a>\n						<div class=\"tags\">${var[3]}</div>\n					</div>\n				</div>\n				</#list>\n				\n			</div>\n		\n	</div>\n	<!-- container -->\n	\n	<!-- footer 包含底部 -->\n	<#include \"footerTemplate.ftl\"> \n	<!-- footer 包含底部  -->\n\n	<script type=\"text/javascript\">\n		$(window).load(function() {\n			$(\"#Product\").addClass(\"current_page_item\"); \n		});\n	</script>\n	<!-- End Document  -->\n</body>\n</html>\n');
INSERT INTO `sys_codeeditor` VALUES ('c1beb98c49f74350a28123e77d9fffd1', 'createHtml6', 'indexTemplate', '2019-01-08 14:32:22', '');
INSERT INTO `sys_codeeditor` VALUES ('d0767225bb2d407393144144f03edc5b', 'createHtml', 'productTemplate', '2019-01-04 16:57:19', '<!DOCTYPE html>\n<!--[if lt IE 7 ]><html class=\"ie ie6\" lang=\"en\"> <![endif]-->\n<!--[if IE 7 ]><html class=\"ie ie7\" lang=\"en\"> <![endif]-->\n<!--[if IE 8 ]><html class=\"ie ie8\" lang=\"en\"> <![endif]-->\n<!--[if (gte IE 9)|!(IE)]><!-->\n<html lang=\"en\">\n<!--<![endif]-->\n<head>\n<meta charset=\"utf-8\">\n<title>${TITLE}-产品案例</title>\n<meta name=\"keywords\" content=\"${KEYWORDS}\" />\n<meta name=\"description\" content=\"${DESCRIPTION}\">\n<meta name=\"author\" content=\"fhadmin\">\n<meta name=\"viewport\"\n	content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n<!-- CSS -->\n<link rel=\"stylesheet\" href=\"fh_static_1/css/style.css\">\n<link rel=\"stylesheet\" type=\"text/css\"\n	href=\"fh_static_1/css/settings.css\" media=\"screen\" />\n<!-- JS -->\n<script src=\"fh_static_1/js/jquery-1.8.2.min.js\" type=\"text/javascript\"></script>\n<!-- jQuery -->\n<script src=\"fh_static_1/js/jquery.easing.1.3.js\" type=\"text/javascript\"></script>\n<!-- jQuery easing -->\n<script src=\"fh_static_1/js/modernizr.custom.js\" type=\"text/javascript\"></script>\n<!-- Modernizr -->\n<script src=\"fh_static_1/js/jquery-ui-1.10.1.custom.min.js\"\n	type=\"text/javascript\"></script>\n<!-- tabs, toggles, accordion -->\n<script src=\"fh_static_1/js/custom.js\" type=\"text/javascript\"></script>\n<!-- jQuery initialization -->\n<!-- Responsive Menu -->\n<script src=\"fh_static_1/js/jquery.meanmenu.js\"></script>\n<script>\n	jQuery(document).ready(function() {\n		jQuery(\'header nav\').meanmenu();\n	});\n</script>\n<!-- Revolution Slider -->\n<script src=\"fh_static_1/js/jquery.themepunch.plugins.min.js\"></script>\n<script src=\"fh_static_1/js/jquery.themepunch.revolution.min.js\"></script>\n<script src=\"fh_static_1/js/revolution-slider-options.js\"></script>\n<!-- Prety photo -->\n<script src=\"fh_static_1/js/jquery.prettyPhoto.js\"></script>\n<script>\n	$(document).ready(function() {\n		$(\"a[data-gal^=\'prettyPhoto\']\").prettyPhoto();\n	});\n</script>\n<!-- Tooltip -->\n<script src=\"fh_static_1/js/tooltip.js\"></script>\n<!-- Flexisel -->\n<script type=\"text/javascript\" src=\"fh_static_1/js/jquery.flexisel.js\"></script>\n<!-- Favicons  -->\n<link rel=\"shortcut icon\" href=\"fh_static_1/images/favicon.ico\">\n<link rel=\"apple-touch-icon\" href=\"fh_static_1/images/apple-touch-icon.png\">\n<link rel=\"apple-touch-icon\" sizes=\"72x72\" href=\"fh_static_1/images/apple-touch-icon-72x72.png\">\n<link rel=\"apple-touch-icon\" sizes=\"114x114\" href=\"fh_static_1/images/apple-touch-icon-114x114.png\">\n</head>\n<body>\n\n	<!-- header 包含导航菜单 -->\n	<#include \"headerTemplate.ftl\"> \n	<!-- header 包含导航菜单 -->\n\n	<div class=\"container\">\n		<div class=\"container\">\n			<div class=\"sixteen columns page-title\">\n				<div class=\"eight columns alpha\">\n					<h3> <span>产品案例</span> </h3>\n				</div>\n				<div class=\"eight columns omega\">\n					<nav class=\"breadcrumbs\">\n						<ul>\n							<li></li>\n							<li>\n								<a>Product case</a>\n							</li>\n							<li></li>\n						</ul>\n					</nav>\n				</div>\n				<div class=\"clearfix\"></div>\n			</div><!-- page-title -->\n		</div><!-- container -->\n			\n			<div class=\"row port works\">\n			\n				<#list fieldList5 as var>		\n				<div class=\"row-item one-third column photography webdesign\">\n					<div class=\"work\">\n					    <input type=\"button\" value=\"呼吸训练系统\"\n			onclick=\"location.href=\'${pageContext.request.contextPath }/jsp/huxilianxixitongjiemian.jsp\'\"\n			style=\"font-size: 35px; width: 400px; height: 100px; margin-left: 250px; margin-top: 220px; background: #4B9F37; color: #ffffff; border: none; border-radius: 12px\" />\n		<br> <br> <br> <input type=\"button\" value=\"发音练习系统\"\n			onclick=\"location.href=\'${pageContext.request.contextPath }/jsp/fayinlianxichushijiemian.jsp\'\"\n			style=\"font-size: 35px; width: 400px; height: 100px; margin-left: 250px; margin-top: 30px; background: #ff0000; color: #ffffff; border: none; border-radius: 12px\" />\n		<br> <br> <br> <input type=\"button\" value=\"唇语学习系统\"\n			onclick=\"location.href=\'${pageContext.request.contextPath }/jsp/chunyuxueximoshixuanzejiemian.jsp\'\"\n			style=\"font-size: 35px; width: 400px; height: 100px; margin-left: 250px; margin-top: 30px; background: #0000ff; color: #ffffff; border: none; border-radius: 12px\" />\n	\n						<a href=\"${var[1]}\" data-gal=\"prettyPhoto\" class=\"work-image\">\n							<img src=\"${var[1]}\" alt=\"${var[0]}\">\n							<div class=\"link-overlay fa fa-search\"></div>\n						</a>\n						<a href=\"${var[2]}\" target=\"_blank\" class=\"work-name\">${var[0]}</a>\n						<div class=\"tags\">${var[3]}</div>\n					</div>\n				</div>\n				</#list>\n				\n			</div>\n		\n	</div>\n	<!-- container -->\n	\n	<!-- footer 包含底部 -->\n	<#include \"footerTemplate.ftl\"> \n	<!-- footer 包含底部  -->\n\n	<script type=\"text/javascript\">\n		$(window).load(function() {\n			$(\"#Product\").addClass(\"current_page_item\"); \n		});\n	</script>\n	<!-- End Document  -->\n</body>\n</html>\n');
INSERT INTO `sys_codeeditor` VALUES ('e04f2238da7f400795af16f6ebb4c1c4', 'createHtml5', 'productTemplate', '2019-01-08 14:40:32', '<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n<title>${TITLE}-系统练习</title>\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n<meta charset=\"utf-8\">\n<meta name=\"keywords\" content=\"${KEYWORDS}\" />\n<meta name=\"description\" content=\"${DESCRIPTION}\">\n<meta name=\"author\" content=\"fhadmin\">\n\n<script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>\n\n<!-- bootstrap-css -->\n<link href=\"fh_static_5/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n<!--// bootstrap-css -->\n\n<link rel=\"stylesheet\" href=\"fh_static_5/css/lightbox.css\">\n\n<!-- css -->\n<link rel=\"stylesheet\" href=\"fh_static_5/css/style.css\" type=\"text/css\" media=\"all\" />\n<!--// css -->\n\n<!-- font-awesome icons -->\n<link href=\"fh_static_5/css/font-awesome.css\" rel=\"stylesheet\"> \n<!-- //font-awesome icons -->\n\n<script src=\"fh_static_5/js/jquery-1.11.1.min.js\"></script>\n<script src=\"fh_static_5/js/bootstrap.js\"></script>\n<script type=\"text/javascript\">\n	jQuery(document).ready(function($) {\n		$(\".scroll\").click(function(event){		\n			event.preventDefault();\n			$(\'html,body\').animate({scrollTop:$(this.hash).offset().top},1000);\n		});\n	});\n</script> \n<!--[if lt IE 9]>\n  <script src=\"fh_static_5/js/html5shiv.js\"></script>\n<![endif]-->\n\n</head>\n<body>\n	<!-- banner -->\n	<div class=\"banner about-banner\">\n		<div class=\"header\">\n			<div class=\"container\">\n				<div class=\"header-left\">\n					<div class=\"w3layouts-logo\">\n						<h1>\n							<a href=\"index.html\">\n								<img alt=\"${NAME}\" title=\"${NAME}\" src=\"${LOGO}\" />\n							</a>\n						</h1>\n					</div>\n				</div>\n				<div class=\"header-right\">\n					<div class=\"agileinfo-social-grids\">\n						<ul>\n							<li><a href=\"#\"><i class=\"fa fa-facebook\"></i></a></li>\n							<li><a href=\"#\"><i class=\"fa fa-twitter\"></i></a></li>\n							<li><a href=\"#\"><i class=\"fa fa-rss\"></i></a></li>\n							<li><a href=\"#\"><i class=\"fa fa-vk\"></i></a></li>\n						</ul>\n					</div>\n				</div>\n				<div class=\"clearfix\"> </div>\n			</div>\n		</div>\n		<div class=\"header-bottom\">\n			<div class=\"container\">\n				<div class=\"top-nav\">\n						<nav class=\"navbar navbar-default\">\n								<div class=\"navbar-header\">\n									<button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\">\n										<span class=\"sr-only\">Toggle navigation</span>\n										<span class=\"icon-bar\"></span>\n										<span class=\"icon-bar\"></span>\n										<span class=\"icon-bar\"></span>\n									</button>\n								</div>\n							<!-- Collect the nav links, forms, and other content for toggling -->\n							<!--  包含导航菜单 -->\n							<#include \"headerTemplate.ftl\"> \n							<!--  包含导航菜单 -->	\n						</nav>		\n				</div>\n			</div>\n		</div>\n	</div>\n	<!-- //banner -->\n\n	<div class=\"about-heading\">	\n		<div class=\"container\">\n			<h2>Product case</h2>\n		</div>\n	</div>\n	<!-- gallery -->\n	<div class=\"gallery\">\n		<div class=\"container\">\n			<div class=\"gallery-grids\">\n			\n				<#list fieldList5 as var>	\n				<div class=\"col-md-4 gallery-grid\">\n					<div class=\"grid\">\n						<figure class=\"effect-roxy\">\n							<a class=\"example-image-link\" href=\"${var[1]}\" data-lightbox=\"example-set\" data-title=\"\">\n								<img src=\"${var[1]}\" alt=\"${var[0]}\" />\n								<figcaption>\n									<h3>${var[0]}</h3>\n									<p>${var[3]}</p>\n								</figcaption>	\n							</a>\n						</figure>\n						<a href=\"${var[2]}\" target=\"_blank\">点击练习</a>\n					</div>\n				</div>\n				</#list>\n				\n				<div class=\"clearfix\"> </div>\n			</div>\n		</div>\n	</div>\n	<!-- //gallery -->\n\n	<!-- footer -->\n	<!-- footer 包含底部 -->\n	<#include \"footerTemplate.ftl\"> \n	<!-- footer 包含底部  -->\n	<!-- //footer -->\n	<!-- copyright -->\n\n	<script src=\"fh_static_5/js/lightbox-plus-jquery.min.js\"> </script>\n	<script src=\"fh_static_5/js/SmoothScroll.min.js\"></script>\n	<script type=\"text/javascript\" src=\"fh_static_5/js/move-top.js\"></script>\n	<script type=\"text/javascript\" src=\"fh_static_5/js/easing.js\"></script>\n	<!-- here stars scrolling icon -->\n	<script type=\"text/javascript\">\n		$(document).ready(function() {\n			/*\n				var defaults = {\n				containerID: \'toTop\', // fading element id\n				containerHoverID: \'toTopHover\', // fading element hover id\n				scrollSpeed: 1200,\n				easingType: \'linear\' \n				};\n			*/\n								\n			$().UItoTop({ easingType: \'easeOutQuart\' });\n								\n			});\n	</script>\n	<!-- //here ends scrolling icon -->\n	<!-- here stars scrolling icon -->\n	<script type=\"text/javascript\">\n		$(document).ready(function() {\n			/*\n				var defaults = {\n				containerID: \'toTop\', // fading element id\n				containerHoverID: \'toTopHover\', // fading element hover id\n				scrollSpeed: 1200,\n				easingType: \'linear\' \n				};\n			*/\n								\n			$().UItoTop({ easingType: \'easeOutQuart\' });\n								\n			});\n	</script>\n	\n		<script type=\"text/javascript\">\n		$(window).load(function() {\n			$(\"#index\").addClass(\"list-border\"); \n			$(\"#Product\").addClass(\"active\"); \n		});\n	</script>\n</body>	\n</html>\n');

-- ----------------------------
-- Table structure for `sys_createcode`
-- ----------------------------
DROP TABLE IF EXISTS `sys_createcode`;
CREATE TABLE `sys_createcode` (
  `CREATECODE_ID` varchar(100) NOT NULL,
  `PACKAGENAME` varchar(50) DEFAULT NULL COMMENT '包名',
  `OBJECTNAME` varchar(50) DEFAULT NULL COMMENT '类名',
  `TABLENAME` varchar(50) DEFAULT NULL COMMENT '表名',
  `FIELDLIST` varchar(5000) DEFAULT NULL COMMENT '属性集',
  `CREATETIME` varchar(100) DEFAULT NULL COMMENT '创建时间',
  `TITLE` varchar(255) DEFAULT NULL COMMENT '描述',
  `FHTYPE` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`CREATECODE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_createcode
-- ----------------------------
INSERT INTO `sys_createcode` VALUES ('1f31658ecbbe4393aa21143464099331', 'web', 'Aboutus', 'web_,fh,ABOUTUS', 'CONTENT,fh,String,fh,内容,fh,是,fh,无,fh,3000,fh,0Q313596790', '2017-01-07 02:28:38', '关于我们', 'single');
INSERT INTO `sys_createcode` VALUES ('2796a020c8b5432db96b350bfa925484', 'web', 'Leavemsg', 'web_,fh,LEAVEMSG', 'NAME,fh,String,fh,姓名,fh,是,fh,无,fh,10,fh,0Q313596790EMAIL,fh,String,fh,邮箱,fh,是,fh,无,fh,50,fh,0Q313596790ADDRESS,fh,String,fh,地址,fh,是,fh,无,fh,50,fh,0Q313596790LCONTENT,fh,String,fh,内容,fh,是,fh,无,fh,2000,fh,0Q313596790CTIME,fh,Date,fh,提交时间,fh,否,fh,无,fh,32,fh,0Q313596790', '2017-01-04 03:46:20', '访客留言', 'single');
INSERT INTO `sys_createcode` VALUES ('3da8e8bd757c44148d89931a54d29c88', 'system', 'UserPhoto', 'SYS_,fh,USERPHOTO', 'USERNAME,fh,String,fh,用户名,fh,否,fh,无,fh,30,fh,0Q313596790PHOTO0,fh,String,fh,原图,fh,否,fh,无,fh,100,fh,0Q313596790PHOTO1,fh,String,fh,头像1,fh,否,fh,无,fh,100,fh,0Q313596790PHOTO2,fh,String,fh,头像2,fh,否,fh,无,fh,100,fh,0Q313596790PHOTO3,fh,String,fh,头像3,fh,否,fh,无,fh,100,fh,0Q313596790', '2016-06-05 17:54:25', '用户头像', 'single');
INSERT INTO `sys_createcode` VALUES ('3ee004016c984c08903317b6434024ff', 'web', 'OurBusiness', 'web_,fh,OURBUSINESS', 'TITLE1,fh,String,fh,介绍上,fh,是,fh,无,fh,255,fh,0Q313596790TITLE2,fh,String,fh,介绍下,fh,是,fh,无,fh,255,fh,0Q313596790CONTENT1,fh,String,fh,内容上,fh,是,fh,无,fh,255,fh,0Q313596790CONTENT2,fh,String,fh,内容上,fh,是,fh,无,fh,255,fh,0Q313596790TOURL,fh,String,fh,内容链接,fh,是,fh,无,fh,255,fh,0Q313596790', '2017-01-03 02:08:49', '网站信息', 'single');
INSERT INTO `sys_createcode` VALUES ('463aaa745cd948a1b7dea8ae60d27402', 'web', 'Contactus', 'web_,fh,CONTACTUS', 'CONTENT,fh,String,fh,内容,fh,是,fh,无,fh,3000,fh,0Q313596790', '2017-01-04 03:01:12', '联系我们', 'single');
INSERT INTO `sys_createcode` VALUES ('52279e8d804e4108b4bd26dbc59f4573', 'web', 'Corporatephilosophy', 'web_,fh,CORPORATEPHILOSOPHY', 'TITLE,fh,String,fh,标题,fh,是,fh,无,fh,50,fh,0Q313596790CONTENT,fh,String,fh,内容,fh,是,fh,无,fh,50,fh,0Q313596790TOURL,fh,String,fh,内容链接,fh,是,fh,无,fh,255,fh,0Q313596790', '2017-01-04 00:32:22', '公司理念', 'single');
INSERT INTO `sys_createcode` VALUES ('551f4b4d25de41418c3ba459499f9b46', 'web', 'News', 'web_,fh,NEWS', 'TITLE,fh,String,fh,标题,fh,是,fh,无,fh,50,fh,0Q313596790CTIME,fh,Date,fh,发表时间,fh,否,fh,无,fh,32,fh,0Q313596790STEMFROM,fh,String,fh,来源,fh,是,fh,无,fh,100,fh,0Q313596790IMAGE,fh,String,fh,图片,fh,是,fh,无,fh,100,fh,0Q313596790SHORTCONTENT,fh,String,fh,简述,fh,是,fh,无,fh,300,fh,0Q313596790CONTENT,fh,String,fh,内容,fh,是,fh,无,fh,5000,fh,0Q313596790', '2017-01-08 01:17:04', '新闻动态', 'single');
INSERT INTO `sys_createcode` VALUES ('bd09981a1f0840e28517335c4b44ee29', 'web', 'Cooperation', 'web_,fh,COOPERATION', 'CONTENT,fh,String,fh,内容,fh,是,fh,无,fh,3000,fh,0Q313596790', '2017-01-07 03:06:10', '合作共赢', 'single');
INSERT INTO `sys_createcode` VALUES ('c424d32c6b0b4b5db9c717126489580f', 'web', 'News', 'web_,fh,NEWS', 'TITLE,fh,String,fh,标题,fh,是,fh,无,fh,50,fh,0Q313596790CTIME,fh,Date,fh,发表时间,fh,否,fh,无,fh,32,fh,0Q313596790STEMFROM,fh,String,fh,来源,fh,是,fh,无,fh,100,fh,0Q313596790IMAGE,fh,String,fh,图片,fh,是,fh,无,fh,100,fh,0Q313596790SHORTCONTENT,fh,String,fh,简述,fh,是,fh,无,fh,300,fh,0Q313596790CONTENT,fh,String,fh,内容,fh,是,fh,无,fh,5000,fh,0Q313596790', '2019-01-02 15:43:32', '新闻动态', 'single');
INSERT INTO `sys_createcode` VALUES ('d618b9e1bffd467baa3acf774c01df52', 'system', 'Statistics', 'SYS_,fh,STATISTICS', 'IP,fh,String,fh,IP,fh,否,fh,无,fh,20,fh,0Q313596790AREA,fh,String,fh,地区,fh,否,fh,无,fh,255,fh,0Q313596790OPERATOR,fh,String,fh,运营商,fh,否,fh,无,fh,10,fh,0Q313596790CDATE,fh,Date,fh,日期,fh,否,fh,无,fh,32,fh,0Q313596790CTIME,fh,Date,fh,时间,fh,否,fh,无,fh,32,fh,0Q313596790', '2017-06-27 01:47:28', '访问统计', 'single');
INSERT INTO `sys_createcode` VALUES ('daab367879994caebb1474b553a037ed', 'system', 'Blacklist', 'SYS_,fh,BLACKLIST', 'IP,fh,String,fh,IP,fh,是,fh,无,fh,20,fh,0Q313596790BZ,fh,String,fh,备注,fh,是,fh,无,fh,255,fh,0Q313596790CTIME,fh,Date,fh,时间,fh,否,fh,无,fh,32,fh,0Q313596790', '2017-06-27 18:27:37', '访客IP黑名单', 'single');

-- ----------------------------
-- Table structure for `sys_dictionaries`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dictionaries`;
CREATE TABLE `sys_dictionaries` (
  `DICTIONARIES_ID` varchar(100) NOT NULL,
  `NAME` varchar(30) DEFAULT NULL COMMENT '名称',
  `NAME_EN` varchar(50) DEFAULT NULL COMMENT '英文',
  `BIANMA` varchar(50) DEFAULT NULL COMMENT '编码',
  `ORDER_BY` int(11) NOT NULL COMMENT '排序',
  `PARENT_ID` varchar(100) DEFAULT NULL COMMENT '上级ID',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  `TBSNAME` varchar(100) DEFAULT NULL COMMENT '排查表',
  PRIMARY KEY (`DICTIONARIES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_dictionaries
-- ----------------------------
INSERT INTO `sys_dictionaries` VALUES ('0193ffbfae1e49e0b7810546cada316a', '济南', 'JiNan', '0030301', '1', '10f46a521ea0471f8d71ee75ac3b5f3a', '济南', '');
INSERT INTO `sys_dictionaries` VALUES ('096e4ec8986149d994b09e604504e38d', '黄浦区', 'huangpu', '0030201', '1', 'f1ea30ddef1340609c35c88fb2919bee', '黄埔', '');
INSERT INTO `sys_dictionaries` VALUES ('10f46a521ea0471f8d71ee75ac3b5f3a', '山东', 'ShanDong', '00303', '3', 'be4a8c5182c744d28282a5345783a77f', '山东省', '');
INSERT INTO `sys_dictionaries` VALUES ('12a62a3e5bed44bba0412b7e6b733c93', '北京', 'beijing', '00301', '1', 'be4a8c5182c744d28282a5345783a77f', '北京', '');
INSERT INTO `sys_dictionaries` VALUES ('507fa87a49104c7c8cdb52fdb297da12', '宣武区', 'xuanwuqu', '0030101', '1', '12a62a3e5bed44bba0412b7e6b733c93', '宣武区', '');
INSERT INTO `sys_dictionaries` VALUES ('66f1ff79b13947da98525aff7380ef50', '高新区', 'gaoxinqu', '003030101', '1', '0193ffbfae1e49e0b7810546cada316a', '高新区', '');
INSERT INTO `sys_dictionaries` VALUES ('8994f5995f474e2dba6cfbcdfe5ea07a', '语文', 'yuwen', '00201', '1', 'fce20eb06d7b4b4d8f200eda623f725c', '语文', '');
INSERT INTO `sys_dictionaries` VALUES ('8ea7c44af25f48b993a14f791c8d689f', '分类', 'fenlei', '001', '1', '0', '分类', '');
INSERT INTO `sys_dictionaries` VALUES ('be4a8c5182c744d28282a5345783a77f', '地区', 'diqu', '003', '3', '0', '地区', '');
INSERT INTO `sys_dictionaries` VALUES ('d428594b0494476aa7338d9061e23ae3', '红色', 'red', '00101', '1', '8ea7c44af25f48b993a14f791c8d689f', '红色', '');
INSERT INTO `sys_dictionaries` VALUES ('de9afadfbed0428fa343704d6acce2c4', '绿色', 'green', '00102', '2', '8ea7c44af25f48b993a14f791c8d689f', '绿色', '');
INSERT INTO `sys_dictionaries` VALUES ('f1ea30ddef1340609c35c88fb2919bee', '上海', 'shanghai', '00302', '2', 'be4a8c5182c744d28282a5345783a77f', '上海', '');
INSERT INTO `sys_dictionaries` VALUES ('fce20eb06d7b4b4d8f200eda623f725c', '课程', 'kecheng', '002', '2', '0', '课程', '');

-- ----------------------------
-- Table structure for `sys_fhbutton`
-- ----------------------------
DROP TABLE IF EXISTS `sys_fhbutton`;
CREATE TABLE `sys_fhbutton` (
  `FHBUTTON_ID` varchar(100) NOT NULL,
  `NAME` varchar(30) DEFAULT NULL COMMENT '名称',
  `QX_NAME` varchar(50) DEFAULT NULL COMMENT '权限标识',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`FHBUTTON_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_fhbutton
-- ----------------------------
INSERT INTO `sys_fhbutton` VALUES ('3542adfbda73410c976e185ffe50ad06', '导出EXCEL', 'toExcel', '导出EXCEL');
INSERT INTO `sys_fhbutton` VALUES ('46992ea280ba4b72b29dedb0d4bc0106', '发邮件', 'email', '发送电子邮件');
INSERT INTO `sys_fhbutton` VALUES ('4efa162fce8340f0bd2dcd3b11d327ec', '导入EXCEL', 'FromExcel', '导入EXCEL到系统用户');
INSERT INTO `sys_fhbutton` VALUES ('cc51b694d5344d28a9aa13c84b7166cd', '发短信', 'sms', '发送短信');

-- ----------------------------
-- Table structure for `sys_fhlog`
-- ----------------------------
DROP TABLE IF EXISTS `sys_fhlog`;
CREATE TABLE `sys_fhlog` (
  `FHLOG_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(100) DEFAULT NULL COMMENT '用户名',
  `CZTIME` varchar(32) DEFAULT NULL COMMENT '操作时间',
  `CONTENT` varchar(255) DEFAULT NULL COMMENT '事件',
  PRIMARY KEY (`FHLOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_fhlog
-- ----------------------------
INSERT INTO `sys_fhlog` VALUES ('001670356c6d4fdca703dad3b10390a9', 'admin', '2018-06-28 11:42:13', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('02429482dd404883b75f1b4646a57961', '18186845539', '2019-01-07 14:36:29', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('028f0dd251eb4676a402d13332cef7a2', 'admin', '2019-01-04 17:56:21', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('02c8ae4f3625496283be32614addd83f', '18186845539', '2019-01-04 16:09:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0375ef768d854a83b0a5cc0de88d95a1', 'admin', '2019-03-07 13:21:51', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('03fd54c6d16c4a6e967b4c2fdf50df6a', '18186845539', '2019-02-23 18:23:02', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0475e9d8db834713902274fec2e521a5', 'admin', '2019-02-15 19:22:42', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0514b955ba574f5fb46163db5cfe0874', '18186845539', '2019-01-02 20:08:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('05e58f5f46924200b5b0af0c8d4c6b1c', 'admin', '2019-02-16 20:10:08', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('06952966f14a4959abbdca11b79435ea', 'admin', '2019-01-04 15:07:52', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('075e664418bd4bd1be17396925c14931', 'admin', '2019-01-12 21:58:35', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('07670e173eed4c4c9cb374872f07cf1b', '1234567', '2019-03-07 22:30:21', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('088fa525fa6a4fe39565046477286df8', 'admin', '2019-01-12 19:56:47', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('093a1a54c6834fcfa614d3905da2209c', 'admin', '2018-10-10 00:26:32', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('097d271b9d144f8ba6f03708a79eef30', '18186845539', '2019-01-07 15:14:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('098946f64c1e43bba8e1d2ddc6947921', 'admin', '2019-02-16 18:39:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0a0f7424fa084aa7872c9e8d16fd740d', 'admin', '2019-02-23 21:26:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0a61ca84eb4f4a978aa0f29375e8d83a', 'admin', '2019-01-08 10:55:46', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0a91c0dc233a4a629e33500183dca4e6', 'admin', '2019-02-16 20:01:46', '退出');
INSERT INTO `sys_fhlog` VALUES ('0aeea43a892240c1a3de2e1c243f6b37', 'admin', '2019-03-06 20:31:48', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0b55c48626f746c780127d1d491794c4', 'admin', '2018-06-22 19:31:58', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0bd9b56587da43c99726a98dd639bfca', '18186845539', '2019-01-13 00:18:39', '退出');
INSERT INTO `sys_fhlog` VALUES ('0c2ebad707844fe2ace124772f0587f1', 'admin', '2019-01-04 16:26:42', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0c97161f7aa5423791e3c920ef9a3f87', 'admin', '2019-03-02 21:24:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0d3b133233c84120a949a1f30ab1fadc', 'admin', '2018-06-23 17:52:03', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0d807cca0fcb429c96b71a6d7c4da337', '孙宁宁', '2019-03-20 18:46:33', '新注册');
INSERT INTO `sys_fhlog` VALUES ('0d8274d5ec6647878eae3ee6fda2a3dd', 'admin', '2019-03-07 21:47:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0d8a2a53b7fc4d5ca7655b28fbd09ade', '18186845539', '2019-01-07 14:42:49', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0e1dacb221584a808abdaa41babb1c6c', 'admin', '2019-02-16 19:41:08', '退出');
INSERT INTO `sys_fhlog` VALUES ('0e3f525058e0433087fc61c9e2423c5b', '123456789', '2019-03-08 09:51:31', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0e5cb78db5a14e90956f0d9d8455410b', '18186845539', '2019-01-13 00:27:42', '退出');
INSERT INTO `sys_fhlog` VALUES ('0e9ae790f7f7495eaf8c5553726b0e1b', '笑嘻嘻123456789', '2019-03-05 12:28:44', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0ec066db60af49099fb68d9b8613adad', 'admin', '2019-01-13 13:18:39', '退出');
INSERT INTO `sys_fhlog` VALUES ('0f2e73b666854bd9bf7472df623040a1', 'admin', '2019-01-07 23:22:44', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0fc76c97a9c0467c89428963d10f1476', '18186845539', '2019-01-07 15:19:31', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('102154bf3c63420cab7fa8d1e778de20', 'admin', '2019-01-13 20:32:44', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('110febafb59e4a7f93b0830491d08df5', 'admin', '2019-01-11 20:55:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('12b02a39c6f04a6f9b7f6a2b6f50cb2e', '18186845539', '2019-03-04 16:01:20', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('136a915fdc344fa18c3af5d29b1ee33f', 'admin', '2019-03-05 20:47:51', '退出');
INSERT INTO `sys_fhlog` VALUES ('13bd2a4368a74dbeb8c68682b0442287', '18186845539', '2019-01-08 11:35:28', '退出');
INSERT INTO `sys_fhlog` VALUES ('13c11f93e9344aa8a4f22cfd019efb38', 'admin', '2019-02-26 16:13:31', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('140244dce5bc4bd4a079582fe75883d0', '笑嘻嘻', '2019-03-05 09:21:35', '新注册');
INSERT INTO `sys_fhlog` VALUES ('14f54e733d774e78aef324f95e917368', 'admin', '2019-02-23 21:17:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('15b7c9dbb9244319945a58d79a6a991a', 'admin', '2019-01-02 23:46:55', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('15ba2a54b47c45c48faf1aadddbe868a', '18186845539', '2019-02-23 19:52:44', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('16035563f2304dcf9ce8abf8f9815e15', 'admin', '2019-01-07 14:27:49', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('16262c1c6a69448aa8dddf10212db79f', 'admin', '2019-01-08 14:27:04', '修改菜单模版管理');
INSERT INTO `sys_fhlog` VALUES ('16e8d3b6c0924597babed4bce22f3659', 'admin', '2019-03-06 21:17:22', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('18879bc7882340df8a9a67de1488f901', '654321', '2019-03-07 22:35:29', '新注册');
INSERT INTO `sys_fhlog` VALUES ('18a860cbf2f541ee96cabe5b9d86bf3c', '18186845539', '2019-01-04 16:44:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('18d4d84db59640288d1c720711f625e7', 'admin', '2018-06-28 11:39:26', '新增菜单合作共赢');
INSERT INTO `sys_fhlog` VALUES ('1986dc2d3ca7491fb2d853a2fe3d36ae', 'admin', '2019-01-11 22:39:25', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1a078781d49d4ba6a726b4fa1fe4db96', 'admin', '2019-01-12 20:25:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1b307e8e4c004e0d946c6d5685ea0391', '654321', '2019-03-07 23:14:25', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1c068f134ddb4e748dd8dc2ddb5de569', 'admin', '2019-01-11 23:32:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1c498939557844fb987c0dd33ff65b7e', '大哥', '2019-03-10 21:22:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1cb76aa3b0914334b52f050096777eac', 'admin', '2019-01-12 20:55:47', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1ddc796af7bb45a38ad79e2e5b717b60', 'admin', '2019-01-11 18:35:39', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1e2c81c905f0405e86f030f74ac85016', 'admin', '2019-03-05 13:39:45', '退出');
INSERT INTO `sys_fhlog` VALUES ('1ec98cdf5d1e4dc69476e17e68d607d1', 'woaini', '2019-03-07 22:05:54', '新注册');
INSERT INTO `sys_fhlog` VALUES ('2025961a9e8c418ca83347cd9de208bc', '18186845539', '2019-01-13 00:22:19', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('21c18cbec29c4b86a502575f3c79ffc3', '18186845539', '2019-03-06 22:32:44', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('21ce7fd455ca453087aa40fab4b05647', 'admin', '2019-02-15 19:40:55', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('21f676f9450b4ec68698444d831ad24c', 'admin', '2019-02-23 20:13:29', '退出');
INSERT INTO `sys_fhlog` VALUES ('2226036be5c5447b94cb60ddd6206fd0', '654321', '2019-03-07 23:32:04', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('222aac19ce614e60baf7623f29efaaf8', 'admin', '2019-01-02 18:48:17', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('229f1bb158a7465bb919568e4b58b515', '18186845539', '2019-01-07 15:11:38', '退出');
INSERT INTO `sys_fhlog` VALUES ('22c757481dde45afa874d89b9bd1d2f2', 'admin', '2019-01-04 17:21:19', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2321dc5d1e9d4c629b225ba6a02dd681', '18186845539', '2019-03-06 21:25:52', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2430ec5b535249c397e7adf7efa47a5c', '18186845539', '2019-02-24 11:11:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('253dd646d3124bab81146779d1e52dfe', '18186845539', '2019-02-14 15:55:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('257bc29b8c0744f8b5cd3f26ec9a9353', 'admin', '2019-01-12 21:56:45', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('257df92dc2e74809bd09c8f34bb4eae8', 'admin', '2019-02-23 20:22:08', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('25a05d61c8374f87b69fc5555ca66693', 'admin', '2019-01-02 23:19:52', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2624db687b644f358fb6eae999971154', '45455', '2019-03-07 21:59:09', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('26cf6ca50a774b13af97ce6feca5dd18', '12345678', '2019-03-05 12:26:43', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('270c8bfa91ae46ab9d5333d83dbd9e29', 'admin', '2019-03-06 23:25:57', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('278c4bb92fb24694a44ebff1f18d940c', '18186845539', '2019-01-07 15:03:18', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('27b5da18bfd04903831e7724c712c587', 'admin', '2019-02-25 16:13:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('282ebe817f6a47a380289e1ef42d7900', '18186845539', '2019-01-11 19:27:24', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('284056d1e16a4870a3e2694f4bbff9ce', '拉拉', '2019-03-08 09:51:42', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2859cd776072495092f249ae00b9542f', 'admin', '2019-01-05 15:29:02', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('287393a9f4084f4d8ca4ace097aab1d9', '45455', '2019-03-07 21:58:19', '新注册');
INSERT INTO `sys_fhlog` VALUES ('28773eb48c7841ec86c35d9844e6764d', 'admin', '2019-02-26 17:20:32', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('291eab55e98a4bf781d4bb938f6209d7', 'admin', '2019-01-07 14:15:43', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2976724ab5cd4ba983c1797d7c9c2af6', 'admin', '2019-02-14 16:04:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('29d888037b544e87977a56ca91fc5cf8', 'admin', '2019-02-23 21:28:45', '退出');
INSERT INTO `sys_fhlog` VALUES ('2a316996bfbe4fa5852808d0ad2c2ca7', 'admin', '2019-01-07 14:05:31', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2a5e981106f6466b9234c6cabc1fb1e8', '18186845539', '2019-01-07 15:10:09', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2add90258aa4407e8f1ff37d0d343762', 'admin', '2019-01-11 22:49:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2b18f7a93ffb4d58b03bc4c963963a1f', '654321', '2019-03-07 22:35:46', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2b405787a198422f8308f5c797c64594', 'admin', '2019-03-05 20:47:59', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2b7e94ab92db4e0ba65f95aa60d35460', '987654321', '2019-03-20 18:46:38', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2c1d8e8dfd7f4e89b13873821aa536d0', 'admin', '2019-02-15 17:30:03', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2c49bf7b88ff449788a36be32777a703', 'admin', '2019-02-25 21:15:44', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2cc595e55c914016b32eaae35dbb5c40', '18186845539', '2019-02-24 12:13:29', '退出');
INSERT INTO `sys_fhlog` VALUES ('2d767de270234c0685a5595a05dd12ed', 'admin', '2019-02-26 17:23:19', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2dbe9869654b4cfd8cedafe78e55294d', 'admin', '2019-01-08 11:35:37', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2e1027b10e6649629170b06ed3dffa76', '654321', '2019-03-07 22:45:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2e3b5f172c9143f58fc1a4ed3d3185a9', 'admin', '2018-06-28 11:41:28', '新增菜单页头');
INSERT INTO `sys_fhlog` VALUES ('2e5ff3264b0a45a4a93c5ed8850fbd1b', 'admin', '2019-01-07 23:30:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2edd7825de3643a3b9999d6e6969697c', '18186845539', '2019-02-14 15:56:19', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2f9ae09d7a304791b1d998dfc83eb8ab', '18186845539', '2019-02-15 18:37:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2fa3e1917f4d42b7829ad83785665277', 'admin', '2019-02-24 11:07:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('311b81051e424273a9c9a4f3ac5af405', 'admin', '2019-02-23 21:02:20', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('31d07efb817b42d7aafa38bfe19ad75d', '18186845539', '2019-02-23 20:06:27', '退出');
INSERT INTO `sys_fhlog` VALUES ('32d8ade2db2e4a18aae7a32b8cdbfdc7', 'admin', '2019-01-13 13:20:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('32ddc45a0d984053a437066509f2527a', 'admin', '2019-01-08 14:28:49', '修改菜单模版十');
INSERT INTO `sys_fhlog` VALUES ('32f92fd451d74247b9ee341987fe3794', 'admin', '2018-06-28 11:38:58', '新增菜单产品案例');
INSERT INTO `sys_fhlog` VALUES ('33359bd4d25e4ca693199eaa563bd649', '18186845539', '2019-03-05 19:19:10', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('3375962e14d34d08a51d7fd92004a28b', 'admin', '2019-01-12 11:54:10', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('33a0b2f6d71740e7b9c84c84cc57f501', 'admin', '2019-02-14 16:04:25', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('33ff2295d1504774bc3294672466aae8', '18186845539', '2019-01-08 14:19:10', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3441508ee6784188a4ef1ce8b77c1a42', 'admin', '2019-01-07 15:25:19', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('349732cd73664fde99030384d672f6ea', 'admin', '2019-01-02 16:19:26', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3517a4ec168949c8ae654f6926b05310', 'admin', '2019-01-13 15:21:40', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('358eda3426b94202adf41701e0cc7756', 'admin', '2019-01-07 17:30:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('35e8c4e4b79d414a99787182f0aa3547', 'admin', '2019-02-23 20:56:57', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('367d623c95b74f759066c3f6b986bf44', '18186845539', '2019-01-07 14:42:25', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3699d29deec7419685a776a8946e5353', 'admin', '2019-01-12 12:55:43', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('36fa6bef5e054d47a214631fb269d08a', 'admin', '2019-01-08 14:18:59', '退出');
INSERT INTO `sys_fhlog` VALUES ('37121164f83848278ac823d193378a45', 'admin', '2019-01-05 16:00:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3796e182c6764997a63fad76bd052857', '18186845539', '2019-01-02 20:25:27', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('37b5e5802af24c5b8dad8910f2fb83cf', 'admin', '2019-03-08 10:26:02', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('38ced461a20a408a85e2eac26cf9faf9', '18186845539', '2019-01-09 14:35:48', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3972f89331ad432f9c0906abcb2411f9', '18186845539', '2019-02-15 18:02:58', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('39882496d0544142b61e98d2ffc16b36', 'admin', '2019-03-08 10:21:17', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('39a4ce5725684eb081ff4b3d1d96cc55', 'admin', '2019-01-07 15:30:08', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3a247885d1404fdfbb39b871b2d2433c', 'admin', '2019-01-07 15:01:32', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('3ab0e1f34fb24f478cc961b6be3fd3c5', 'admin', '2019-01-02 22:48:35', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3c191f7579dc4b5598b61759632a69e3', 'admin', '2019-01-13 15:35:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3c39944abbd44ba2bd1627c3214f10df', 'admin', '2019-01-07 15:11:49', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3cd435e5c48f4442a21a8acfa47204be', 'admin', '2019-02-15 22:24:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3d694ca3066c4164bccbb80a6ffd7206', 'admin', '2019-01-11 20:48:17', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3d8533b73af2474ab3ef3ad9004511ad', 'admin', '2019-02-23 21:12:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3d8d6e8f49ed42cfb7183f89014e08f8', 'admin', '2019-02-15 17:59:38', '退出');
INSERT INTO `sys_fhlog` VALUES ('3d908f4b3142414db729124f10be8937', '18186845539', '2019-02-14 15:34:24', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3dd1c652c61d41f19e1e4d5e388795e5', 'sunning', '2019-03-20 21:59:06', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('3e25e1447d4944d4b2510a4d04d40916', 'admin', '2019-01-08 17:05:11', '退出');
INSERT INTO `sys_fhlog` VALUES ('3e2dc9a5ce9449a9bc82ae2d7da183dc', '18186845539', '2019-01-11 11:46:47', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3eede41990354ab2ab1a74d4e835caba', 'admin', '2019-01-13 12:54:21', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3f42db2727d3492197e4a036f2f835ea', '18186845539', '2019-01-02 20:35:07', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('400b7fb064794b488b5e6955f838c238', 'admin', '2019-02-25 20:48:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('402ee0747987417196e4f27e55e374f6', '654800', '2019-01-04 16:06:51', '新注册');
INSERT INTO `sys_fhlog` VALUES ('404f5cf5af17423b9c307e9c22b072f0', 'sunning', '2019-03-07 21:52:34', '新注册');
INSERT INTO `sys_fhlog` VALUES ('40ec39b4d08a4fce84e73f2217de6d95', 'admin', '2019-02-23 18:24:49', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('418ea697de8f48fd950ba1e4e2285a43', 'admin', '2019-01-07 23:34:22', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('41a44e855ac84733a19b4a24c94b95e0', 'admin', '2019-02-15 18:53:26', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('41c7f2cc4af64d9c85f4c36a6d7e8fc0', 'admin', '2019-01-13 15:22:34', '退出');
INSERT INTO `sys_fhlog` VALUES ('41f7f81b904c4b78905fe4421d7778e3', '1234567', '2019-03-07 22:30:02', '新注册');
INSERT INTO `sys_fhlog` VALUES ('441c418ccf9e4dcc800a6d1c54c59865', '大哥', '2019-03-10 20:46:24', '新注册');
INSERT INTO `sys_fhlog` VALUES ('44a1a225b27c4e949b757706ac304b59', 'admin', '2018-06-28 11:40:27', '新增菜单新闻详情');
INSERT INTO `sys_fhlog` VALUES ('44bb501666e4442f85aaaaeb5fc39c5b', 'admin', '2019-01-04 16:44:11', '退出');
INSERT INTO `sys_fhlog` VALUES ('458eb55e2f894a939519f07f9e914ab4', 'admin', '2019-02-16 15:02:02', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('459a429d5ab74addafbf89f14ed87aa9', 'admin', '2019-01-04 23:03:57', '退出');
INSERT INTO `sys_fhlog` VALUES ('48ffb36459ae4be0a4bbf06e7107a0de', 'admin', '2019-02-26 17:14:39', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('49232da67d1144fe841b36db759aac76', '18186845539', '2019-01-08 17:05:32', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4965113de7494398ad5cdd93193bf2e1', 'admin', '2019-02-23 18:31:39', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('49f2c3d5a98c4fa7bcdb21a470eee4de', 'admin', '2019-02-26 15:11:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4a625dfd27774384bf130173bd352208', '654800', '2019-01-07 14:49:18', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4af7dc272f5a44d18ce2c71ce0f5603b', 'admin', '2019-01-13 00:22:06', '退出');
INSERT INTO `sys_fhlog` VALUES ('4b10385e81974ac4a45aea89cd7dbf8e', 'admin', '2019-02-25 17:07:58', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4b209fd988194998bec67f8eb96d3dc8', '18186845539', '2019-03-05 21:32:18', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4ba974bf9ea34271acf33371eea8c998', '拉拉', '2019-03-08 09:51:32', '新注册');
INSERT INTO `sys_fhlog` VALUES ('4bf05fef0aa84dc4983b72d149abeefe', 'admin', '2019-01-13 14:25:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4c9a3d6c34934bf8ada5541061611f88', '987654321', '2019-03-20 18:13:14', '退出');
INSERT INTO `sys_fhlog` VALUES ('4d888da2b6ef4013b4528131bf2ae3b7', 'admin', '2019-02-26 17:06:20', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4fc73ba6f5454ab987c41da1df787d6c', 'admin', '2019-01-08 14:27:18', '修改菜单模版管理');
INSERT INTO `sys_fhlog` VALUES ('4fe42d01da154d47925f4d3ffa6f992a', '18186845539', '2019-01-09 14:14:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('503699a4b3b045b887278e98f74a86cd', '18186845539', '2019-02-23 19:50:18', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('50b4fce392b24d7c8cb9bb9a80d07481', 'admin', '2019-01-07 16:28:42', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('50e6e208f8794d07b7fb3d9754a47171', 'admin', '2019-01-07 15:17:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('50effe52678d43249437477d8fa3d4bf', '18186845539', '2019-01-07 23:51:29', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5196bc008f24499485f114b6f6392d23', 'admin', '2019-02-24 19:17:22', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('52a435102e464869a7d54f5ffb3da357', 'admin', '2019-01-12 16:59:32', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('52eb080d8e3c412d9ea2362ae74b815a', '18186845539', '2019-03-04 21:22:29', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('52fa2074370c4f79896b4412405f061a', 'test123', '2019-03-28 20:15:01', '退出');
INSERT INTO `sys_fhlog` VALUES ('542fbacba94b454cb4f17f6a50bfd9e1', 'admin', '2019-01-04 16:46:03', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('54540877a7d442e9b67af163ce28d678', 'admin', '2019-02-15 17:26:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('551baa971a104c8585a17e67d090bbb3', '18186845539', '2019-01-07 15:05:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('555296b54fd64e4884d9e0c26bd11422', 'admin', '2019-01-13 20:40:29', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5566d7efe5f5474485336fbab58dbcc8', 'admin', '2019-02-23 17:32:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('556d0941ec974809997b314fac14806a', 'wwww', '2019-03-07 22:11:12', '新注册');
INSERT INTO `sys_fhlog` VALUES ('561bfd60365147208c7b6c53e7af3cf9', 'admin', '2019-02-25 20:50:43', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5678821e68744f09b3a19820e746a474', 'admin', '2019-03-06 21:06:51', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('574ea82c1f46441fbc693fabe0d37a83', 'admin', '2019-02-10 17:42:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('57828e76c89c465abe46098fca84e248', '18186845539', '2019-01-09 14:31:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('579f268d80f54d0095a229971817c95f', 'admin', '2019-01-02 23:15:07', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('58ad37a489d44f81b6c9568a275eebb4', 'admin', '2019-01-08 12:11:20', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('58d50e913fbe488e8c8c84d181e9f021', 'admin', '2019-01-13 00:19:00', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('59026b9f06bc4ca69b0f018c0f9bc863', 'admin', '2019-03-04 14:58:39', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5922b0eee8714da5bf6e0e5ffae2b092', '18186845539', '2019-02-23 23:05:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('593545b8296f45a581756087e7230698', 'admin', '2019-03-05 13:29:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('59630b266cce4d70accc172b79ad6cf4', 'admin', '2019-01-02 22:16:46', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5974823da0e54136b56c2c86d9af75e0', 'admin', '2018-06-28 11:42:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('59f50d486a3a4ca4874d42e517660940', 'admin', '2019-03-05 22:05:18', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5a0dc1b8cb994504909a9dc63ba304bf', '77777', '2019-02-16 19:56:46', '退出');
INSERT INTO `sys_fhlog` VALUES ('5a94a8fb034b4e0a88118d9ccade3e6d', 'admin', '2019-01-12 19:51:10', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5add5048625646f8ba5f2567938b53e7', 'admin', '2019-02-15 16:21:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5ae3badf015b45749582c7face419b7a', 'admin', '2019-02-23 20:13:42', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5d37422782df4e10acfb0cefee70ddb8', 'admin', '2019-03-06 18:56:00', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5e46149829d4493e91b35e0188462c93', 'admin', '2019-01-02 18:52:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5e832d5161db4175afac5ec5b4007622', '18186845539', '2019-02-25 21:57:42', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5fbd3d08d5514eafba31822d33cc1ad5', 'admin', '2019-01-08 13:53:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('60140a418d0742088e6fbb0eff755189', 'admin', '2019-01-07 21:24:58', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('603b5a59735e4f639146c2f9f0fd7e6c', 'admin', '2019-01-08 14:15:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('607a7bdb2502424abbf1183642597fa5', '654321', '2019-03-07 23:07:07', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('61186a2d138b44b5b820a642f0021013', 'admin', '2019-02-14 16:04:21', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('631eb65749184d88b0fbb6bf1f78a8aa', '18186845539', '2019-01-07 14:48:42', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('63339641d064474ab45236f417ed278f', '18186845539', '2019-01-07 14:45:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('634710ee9b7e4e6c86abf50aa7394a93', 'admin', '2018-06-28 11:37:48', '新增菜单首页');
INSERT INTO `sys_fhlog` VALUES ('6370da7c0f2449369834ed61afec39d8', '18186845539', '2019-01-02 16:04:37', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('645d26ef747c4d7d83af24469aa0caad', 'admin', '2019-01-11 22:47:22', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('64ad3ebc0d3a455f9edc08813bccf1bf', 'admin', '2019-01-12 12:28:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('66144fd8bea242eebca51719f2c16c34', 'admin', '2019-03-07 18:29:39', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('669f4a0b946743898ce1308698884a7d', 'admin', '2018-10-10 02:11:10', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('66f7aa94a21342639682db49de20d382', 'admin', '2019-03-05 20:46:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6716015a1f4a41f2bce1f9d8d1e43e41', 'admin', '2018-06-23 01:24:29', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('671a03bb42a740faa2107110a7bb05e1', 'admin', '2019-01-02 22:08:17', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('673685e3c19949378c87c2088b4c0a7c', 'admin', '2018-06-28 11:38:44', '修改菜单关于我们');
INSERT INTO `sys_fhlog` VALUES ('67e2eb5adff1460396135cf4fb222faa', 'admin', '2019-01-04 16:54:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('67fba90714704b57976fb63ff969660d', 'admin', '2019-01-12 16:59:52', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('69dacd2267844401ac54554190d024e3', 'admin', '2019-02-14 15:32:49', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6af0430ea23a4d5288adc238c6024dc1', 'admin', '2019-01-11 15:59:45', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6b0b28dd5ce54542852de1bfb3e86e89', 'admin', '2019-01-12 16:58:22', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6b462d3ea0a24be1adb29bc54dfb9436', 'admin', '2019-01-07 14:49:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6b8c6a353ed3447bada6d374861c1186', '18186845539', '2019-01-10 21:45:19', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6bab2a8ada544e4fa252911d15477b11', 'admin', '2019-02-23 21:05:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6c19c22da01549fd82354437221af079', '18186845539', '2019-02-15 18:30:20', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6c20af7ec86c412da1b6c980c1d9ec36', 'admin', '2019-01-08 14:24:49', '修改菜单模版二');
INSERT INTO `sys_fhlog` VALUES ('6c2b0a7cb1fb4e5daf8fcef08a27b1dd', 'admin', '2019-03-08 13:23:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6c399904b51a4ca3b3cbb7a7d82cb086', 'admin', '2019-01-09 13:32:46', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6c74c2de302d4221b4252bd4ab5a89d9', 'admin', '2019-02-23 21:34:48', '退出');
INSERT INTO `sys_fhlog` VALUES ('6d46ebd0e3f541afb3fde25ab7c13616', '666666', '2019-03-07 22:02:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6d76570aff2d44ddb907ec3c550c1f9c', 'admin', '2019-01-07 23:19:53', '退出');
INSERT INTO `sys_fhlog` VALUES ('6dcf806244d649088e71e863e3da9561', 'admin', '2019-01-07 23:29:56', '退出');
INSERT INTO `sys_fhlog` VALUES ('6ec054dc83234b5c9421bdb42374c9c1', '18186845539', '2019-01-09 14:27:10', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6ec44eb5ce9e49aba5927a83d64076bd', 'admin', '2019-03-08 11:38:08', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('704ab675567c473cb3271caede2f3aee', 'admin', '2019-02-14 16:04:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('706c8fb842694b6086b8cc7b4b36a11a', 'OOO', '2019-03-07 22:16:02', '新注册');
INSERT INTO `sys_fhlog` VALUES ('709c963206c14b73a17ad7e7be4f6765', '18186845539', '2019-01-04 16:06:04', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('70f101497d5d48c09a82c32b55ded7e1', 'admin', '2019-01-11 20:09:24', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7174fbf1ba114d40b676e5f1e9000e65', '18186845539', '2019-03-08 15:03:44', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('72ebdf46899d460eaf19db5e88943b33', 'admin', '2019-02-24 15:48:22', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('73009e2e6993419089f12e45c2c58864', 'admin', '2019-03-05 13:24:37', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('737e3ac488a64bbab271d4a25d3cae88', 'admin', '2019-01-05 12:38:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('73cc8b14838c4951921d13442574ec35', '杰瑞', '2019-03-28 07:43:57', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('73e9f93f8aef4e01806047c76f978587', 'admin', '2019-01-02 15:40:27', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('73fd2b2258ef4239bb4f479f5ce5dc3e', '18186845539', '2019-01-07 14:43:43', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('74c663006cff4ae9b46819dbb9803b3f', '18186845539', '2019-01-07 23:48:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('74c742a4b613479d9ae7c26e052c8c7f', 'admin', '2019-02-15 16:17:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7558337787d24b089dae0d5da14d3e27', 'admin', '2019-01-08 14:22:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('755d44c5d0864b75bb22cf6ef1343136', 'admin', '2019-02-15 19:29:18', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('756e77f0f60e4454b058f6c2774bcd59', 'admin', '2019-01-07 16:25:52', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('75b166605e524124963c59b0ca21b6ee', '18186845539', '2019-01-02 16:07:19', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('75b7098e1ab94b998442bcef6a6a473f', 'admin', '2019-03-06 16:23:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('75d9e94e87484b71bcce96e44b82e4cd', '77777', '2019-02-16 19:43:47', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7714d7107a2a44fda9a24908c461eddb', 'admin', '2018-07-05 15:16:27', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7715a4203b574f7eb8ca323466e49de6', 'admin', '2019-02-23 20:23:26', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7765ca0720e348fd8a91ce92a90d42a5', 'admin', '2019-01-07 14:41:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7864958f06bb435f8821ee7f96eaf743', 'admin', '2018-10-10 02:10:28', '修改菜单模版六');
INSERT INTO `sys_fhlog` VALUES ('799fb28d2642424bb2f2d786147d1cd3', '18186845539', '2019-01-07 15:33:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('79feb850d9e946699bfc1b86fd65de9f', 'admin', '2019-03-07 16:49:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7a05ee20994b4f199477cfdaee83d5fc', 'admin', '2019-02-23 20:06:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7afe56eae4a845c98bf687b6805915aa', '654321', '2019-03-08 09:39:20', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7b450f1c726c4687a02810b497e71e86', 'admin', '2019-02-14 16:04:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7cc32e1923e143c18ebb7182f4a1cd4c', 'admin', '2019-03-20 18:13:21', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7d4b16d6dcdf4df4a196607445ef9bdd', '笑嘻嘻123456789', '2019-03-05 09:23:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7d7daece84f44f69998686b5e7048323', '123456789', '2019-03-08 09:51:22', '新注册');
INSERT INTO `sys_fhlog` VALUES ('7dad3159fa7e4169a5436b6759ba5dca', 'admin', '2019-01-02 23:05:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7de60cd014a74457add2f07bed855828', 'admin', '2019-03-08 11:35:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7e24d25a242249bdba02cef2e0fdfeda', 'admin', '2019-02-16 19:29:21', '修改菜单内容管理');
INSERT INTO `sys_fhlog` VALUES ('7e408098c7e947a2874c47c77a3807ab', 'admin', '2019-02-26 17:43:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7e5c83b2923b4d2983bef1a2c8216261', '654321', '2019-03-07 22:58:32', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7e91e522737f4cac8cc561dd94e33961', 'admin', '2019-03-04 19:08:57', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7ec51e00e383484391d6b0b40785a1cb', 'admin', '2018-10-10 02:10:05', '修改菜单模版六');
INSERT INTO `sys_fhlog` VALUES ('7fd61242d2e4412ebb704ff92d6dfaf3', 'admin', '2019-03-05 11:00:04', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('81d481e71d464af7a6151594af8ff18f', 'admin', '2019-01-08 00:10:38', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8215d854ccf74127a1db340536b53563', '77777', '2019-02-16 19:43:14', '新注册');
INSERT INTO `sys_fhlog` VALUES ('823779b988064beca727a7b13b94a5c4', 'sunningning', '2019-03-20 21:59:34', '新注册');
INSERT INTO `sys_fhlog` VALUES ('834ca6229aaa4d078f22baa86ca4cff3', 'admin', '2019-01-10 21:44:10', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8389fae33492493795a61db77df200b2', '77777', '2019-02-16 19:56:02', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('83caa17eebbd4e09910d33f283723829', '18186845539', '2019-03-08 12:29:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('84872649f111402ba35b0a778ac65257', 'admin', '2019-01-07 13:55:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8503abdf5e4b4423b9ecac95df5eb3ac', 'admin', '2019-02-15 19:36:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('862bbf4881784f659cedaaf7e3bc45bf', 'admin', '2019-01-13 18:46:49', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('864c0521b2dd4754add6d9f60b1afa1d', '18186845539', '2019-01-24 19:17:45', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8697d35978384914a21c38e951661e19', 'admin', '2019-01-12 13:34:59', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('86ca4902aac749a0bc4241591f55dd08', 'admin', '2019-01-13 18:52:57', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('86dfdcf0c3674c50acdd67ae23a7254b', 'admin', '2019-01-04 16:44:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8841219fb817476c8b4c37e0b16e4dc3', 'admin', '2019-03-04 13:06:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('894632c509d7480baeb7fcc2d95d3ded', 'admin', '2019-01-07 16:20:43', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('89692c930d8745c7806543f2949a06c6', '18186845539', '2019-01-07 14:39:10', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8a16a066f23546f09e7c356742ec76df', 'sunningning', '2019-03-20 21:59:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8a96dbf00f5b4029af54170e5cf113b7', '18186845539', '2019-01-02 17:12:00', '退出');
INSERT INTO `sys_fhlog` VALUES ('8b53faaba4cc4e789680ad28f80eb97d', 'admin', '2018-10-09 15:58:38', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8b9594305b7a425d9fbae56dc40bfe9f', 'admin', '2019-02-15 16:04:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8bd6f86e779f4a88be0cc167613816b4', 'admin', '2019-01-04 16:59:13', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8bf600f8ba984cc49bbda78d0769217f', '大哥', '2019-03-10 20:47:36', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8c3c58ecaa154497a9204ac0cab98a9d', '18186845539', '2019-03-08 15:02:19', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8c990fbb813f4e2f89f2398cdf77c700', 'admin', '2019-02-16 09:51:04', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8cd74090507b47939d15363f913d6df1', 'earwaywb', '2019-03-05 10:32:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8d25f9554f414aee95e92fb673a1afc8', 'admin', '2019-01-07 14:20:00', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8d72625cef54409d9f6b35e61f459e5c', '笑嘻嘻123456789', '2019-03-05 09:22:39', '新注册');
INSERT INTO `sys_fhlog` VALUES ('8dc47bf9043341879ee31d331466500f', 'admin', '2019-01-07 23:47:24', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8e174c7451a34bf2837b737f1e2ce702', 'admin', '2019-01-12 16:59:10', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8e4bffe2d77a4a5fad2f6b48d0cf6bfb', 'admin', '2019-01-04 15:34:24', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8e7285cb55b049d5a2d801254cfce7d2', 'admin', '2019-01-13 12:54:21', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8e745a4a207d464780d09045a3b13592', 'test123', '2019-03-28 20:00:01', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('8e959b140f854043ac191d5cf7409f1c', '18186845539', '2019-01-02 18:44:29', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('90cf9f0eb6534051bcd0c4280e94d749', '18186845539', '2019-01-09 14:38:36', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9177fe377583440a936cf1118a0841ab', 'admin', '2019-01-04 16:11:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('91c6b199484d4c70920a376e9295816f', 'admin', '2018-10-09 01:40:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('925f425f613344f39aecf148b45bc347', 'admin', '2019-01-08 14:25:01', '修改菜单模版三');
INSERT INTO `sys_fhlog` VALUES ('92c618b393a94e6baafd6febfa2ca676', 'admin', '2019-01-02 16:34:00', '退出');
INSERT INTO `sys_fhlog` VALUES ('92cff62c73f34aa8a84f1bc1997e8ef5', '18186845539', '2019-03-06 22:29:59', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('936fa46c08fe492abc58a4f7f179af94', 'admin', '2019-01-07 14:50:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('94251a23b7c3464d8151078b427a73af', 'admin', '2019-01-02 23:22:52', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9427dd051dfa44688d01a1987b7b40e0', 'admin', '2018-10-09 01:02:34', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9462904a8a23421da249cba64c6e0760', 'admin', '2018-07-27 15:37:43', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('946cd9e1605d4c298854268638f562fc', 'admin', '2019-01-04 17:16:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('94760036c6434b46b484ff64dcbf7dbf', '654321', '2019-03-08 09:45:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9507988ad9434d069a97b083b762974c', 'admin', '2019-01-10 22:13:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('95425fb688ae4d35bd19d32b01459dec', '18186845539', '2019-01-09 13:33:31', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('965ec5e16348461f91af4a03afbcb542', 'admin', '2019-02-23 20:59:09', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('96b31af0a42246fb83b6b7c5421e8ad0', 'admin', '2019-02-26 17:23:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('96d0a04a68f74f38ad50722c95117af9', 'sunning', '2019-03-07 21:52:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9824522d89c347d397f89d2d6f417e2e', '123456', '2019-01-08 17:28:12', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9982d706211a42eba708fa39ce812402', 'admin', '2019-01-04 16:55:44', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9990ecd70c19437a85c4384b8b5d17c3', '18186845539', '2019-01-08 10:55:31', '退出');
INSERT INTO `sys_fhlog` VALUES ('9992c226f7b84db8ac904c7bd996c098', '987654321', '2019-03-20 18:04:26', '新注册');
INSERT INTO `sys_fhlog` VALUES ('99e3c9f2bac7410db4ddc359498cb8c1', 'admin', '2018-10-09 17:55:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('99ee69e8078142cc8d356f9e4b73f043', 'admin', '2019-01-13 15:17:08', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9a97f755a41d4ebbbc71bd3f8af36f45', '77777', '2019-02-16 20:01:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9a9bb5522593425aa4c669c6d1834f9c', 'admin', '2019-02-23 21:17:32', '修改系统用户：admin');
INSERT INTO `sys_fhlog` VALUES ('9b9cc23139b84a08a2a9fdaf26f069ef', 'admin', '2019-02-23 18:39:13', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9c2f8d56990344d2afa23d96b3606e68', 'admin', '2019-01-13 18:49:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9d4205959ca14d179115c67401925889', '987654321', '2019-03-20 18:30:31', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9d5024310c264c269b39305fbdf259ab', 'admin', '2019-02-16 09:24:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9d67166fcf6b449297e33272abe9c8ea', 'admin', '2019-01-07 16:45:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9dc8e268703040e9b2134aef41e7bd58', 'admin', '2018-06-28 11:40:56', '新增菜单联系我们');
INSERT INTO `sys_fhlog` VALUES ('9df176fddcdf48dfb3df75640cc4b478', 'admin', '2018-06-28 11:36:21', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9e54e0cd1ddb4571a7d1857aeaab94bc', '18186845539', '2019-01-09 14:42:04', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9fa9383441044b698a03d8c258e1a634', 'admin', '2019-03-10 21:11:22', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a171071572f9482cad252d7fc3e976cb', 'admin', '2019-01-12 19:54:45', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a1a0af76c69949b6843d1b314779eb32', 'admin', '2019-01-12 17:04:04', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a20b44496f6e42bea75ace61b7d0d262', '18186845539', '2019-01-07 15:22:46', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a285807c7a304c8587a0de5f3a91763f', '18186845539', '2019-03-06 23:35:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a2d1097b152d45e8a96ea0cfa9ae381a', '18186845539', '2019-02-15 17:59:31', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a2d9a3910c254961b71160e198902aa5', 'admin', '2019-01-11 21:50:43', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a353460d3e3e470d9985cafd24b3b5e5', 'admin', '2018-03-09 14:58:20', '退出');
INSERT INTO `sys_fhlog` VALUES ('a36d293a1a1440d0b25be57f5d453041', 'admin', '2019-02-24 12:13:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a3b4cfc36c8945499729a31ad459a103', 'admin', '2019-02-15 17:53:17', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a3b4e054d597405fb4996a1c317b376a', 'admin', '2019-02-16 19:56:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a3ce1dfcb0084dd0b5657492ab6c5f03', '18186845539', '2019-01-09 14:36:31', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a3ee63ec75c343e193a782f5e7c9ee9e', '18186845539', '2019-01-07 14:49:02', '退出');
INSERT INTO `sys_fhlog` VALUES ('a4567b785be84b26bbf6c23b0e11b760', 'admin', '2019-01-04 15:38:12', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a47fb65cb97a416ea020a9b39851a7dc', '123456789', '2019-03-05 12:27:20', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('a4f236f7983c4eacae3086694287ee2c', 'test123', '2019-03-28 20:00:09', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a508fa17f4b143bd9ef4188f5039face', '18186845539', '2019-03-05 21:56:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a54c9718fa2841f0b97dabcf3fe175a5', '18186845539', '2019-01-08 10:54:55', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a6159fbcfaf04141bb6d0bf091f013bf', 'admin', '2019-02-26 15:21:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a73cefd020684174b4341127722a0d8b', 'admin', '2019-02-23 23:02:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a75fcca6f20a489e9d0b3209bda83cfa', 'admin', '2018-06-22 23:02:04', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a76e5870869445d7a5a30f65d51bcc5e', '18186845539', '2019-02-23 23:05:25', '退出');
INSERT INTO `sys_fhlog` VALUES ('a78717ba7ae642ff96e7126c1b3f1995', 'admin', '2019-02-16 19:57:48', '修改菜单内容管理');
INSERT INTO `sys_fhlog` VALUES ('a7dd88c73ec44269be467dc4e71937ba', '111111', '2019-03-05 13:40:21', '新注册');
INSERT INTO `sys_fhlog` VALUES ('a7e17e971bed41e78bb72c357ee4e694', '18186845539', '2019-03-08 11:43:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a7fbc735a6504489aa2eea483855308a', 'admin', '2019-01-11 20:27:48', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a80e2fbd43a84f0ea49bbfcb830c20bd', 'admin', '2019-02-14 15:42:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a814a403b9a34d9ea0217afb6fadb881', 'admin', '2019-02-16 18:38:57', '退出');
INSERT INTO `sys_fhlog` VALUES ('a89a28979ccf4f2db4c861958d3fcd79', 'admin', '2019-02-14 17:12:19', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a8f33ab6963e4d9cae0b93c9d1f4a690', 'admin', '2019-01-07 12:28:45', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a955924668a9452cb2bc0bce96b851dd', 'admin', '2019-01-11 11:37:27', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a95f49bab30f43aab439344b410ec31a', '18186845539', '2019-01-11 15:56:55', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a965dedb011247668a9ae1efa6553e30', 'admin', '2019-03-05 13:31:24', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a96744b704b545c181c727611ede5129', '77777', '2019-02-16 20:02:36', '退出');
INSERT INTO `sys_fhlog` VALUES ('a9729cce8522416bb110fb1891ecacee', 'admin', '2019-01-12 22:29:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('aa130d965482464eaf44e27274939b49', 'admin', '2019-02-23 19:50:06', '退出');
INSERT INTO `sys_fhlog` VALUES ('aa5047a36020470f8edbcc8e1ab6c6de', 'admin', '2019-03-08 11:40:28', '退出');
INSERT INTO `sys_fhlog` VALUES ('aa55f2b9354d4d2da25e2f1195c5c48a', 'admin', '2018-10-10 02:11:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('aa5ae014a6364f718879310e254a5d5f', 'admin', '2019-01-11 19:28:18', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('aaadd6a4080e445f8694983c05553fb3', '18186845539', '2019-02-15 18:18:20', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ab4fc0e205794977a45f3e34828b60df', 'admin', '2019-01-08 14:30:45', '修改菜单模版六');
INSERT INTO `sys_fhlog` VALUES ('ace79a7af56c49efaccb0bb7a7372f2e', '18186845539', '2019-01-02 15:48:04', '新注册');
INSERT INTO `sys_fhlog` VALUES ('ace9e8b2eebb4c22b8dcddad42b294d7', '18186845539', '2019-01-11 17:59:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ad36d6a6a0b14f4bb1d9d46b7e494de4', 'admin', '2019-02-23 20:33:14', '退出');
INSERT INTO `sys_fhlog` VALUES ('ae763e30515549b58a3bf8f390e4c52c', 'admin', '2018-06-22 17:09:48', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b05e3fc5b015487589459b476393bc76', '大哥', '2019-03-10 21:06:19', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b07c1d8ba41b4ec9b83c457371a72994', '987654321', '2019-03-20 18:04:45', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b1110fd898a24c2b87ee4e9071d8c275', 'admin', '2019-02-15 15:55:45', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b1fa716eac454880b924398ef3c22710', '18186845539', '2019-02-24 11:14:09', '修改系统用户：18186845539');
INSERT INTO `sys_fhlog` VALUES ('b209bf90399341c59427b3077d100d76', 'admin', '2019-01-07 14:14:34', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b22c064a7fb64251853847f6fa77c921', 'admin', '2019-02-16 09:50:59', '退出');
INSERT INTO `sys_fhlog` VALUES ('b289b9912064467db79ad10311bf22ec', 'admin', '2019-01-04 16:45:43', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b29e066e9e2c4e02870dd23fe48e3722', '18186845539', '2019-01-09 14:22:24', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b36b4c6e3ae84c53b83e7d89c6ee40db', 'admin', '2019-01-08 17:04:03', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b36ce3dda99a491993bc99e958badb70', 'admin', '2019-01-02 23:12:43', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b39fcbdb6dc44e1e97c85682af3d02d9', 'admin', '2018-06-28 11:42:15', '退出');
INSERT INTO `sys_fhlog` VALUES ('b429f5893a1c47b1b70ccdcaabf00a3f', 'admin', '2019-01-13 13:44:55', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b481e88580004b80b805720e59eb22b9', 'admin', '2019-03-07 12:44:04', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b4b7128d4d484c77918264d6c665bdc0', 'admin', '2019-01-08 11:26:42', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b588f0ecb5c147089fd98b5bddab406a', 'admin', '2019-02-15 16:49:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b631d75d33114ecdb80205162f43d763', 'admin', '2018-10-10 02:10:45', '新增菜单单页');
INSERT INTO `sys_fhlog` VALUES ('b69ef292d51644e8a19d040bc9604265', 'admin', '2019-01-07 23:20:18', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b6d0bc8405ff493eac7d4def31f28183', 'admin', '2019-03-05 14:34:43', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b6f7ce6b01e440adaef575128fe2ff5e', '杰瑞', '2019-03-27 21:48:59', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b74b4ecf4e8d49c7a842e6a50a54c931', 'admin', '2019-01-12 21:59:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b89a7784a6d74a51a71b1723f8975e93', 'admin', '2019-01-11 22:10:18', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b8edf28879d94be699bc47dca481f152', 'admin', '2019-01-13 15:20:58', '退出');
INSERT INTO `sys_fhlog` VALUES ('b940aef358af4812850bb17f99487d5f', 'admin', '2019-01-11 20:27:48', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b95f4d9262cd423dbe9d7eebdc502168', '18186845539', '2019-01-07 14:35:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b9f250bd6679442f9337260bf5029be2', '18186845539', '2019-01-07 14:29:38', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ba49ca327a1e4351a23715cbe857aaee', 'admin', '2019-01-11 23:44:47', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ba992371f74244b4b63cda1e82c714e9', '18186845539', '2019-02-15 18:42:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('bace850b00514a7283a322aedaeedabd', 'admin', '2019-01-13 14:11:03', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('bad3884aca5f45eca23b0b3ec22b3358', 'admin', '2019-02-15 16:01:59', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('baf1d0119f5642c295ff103779bb744b', 'admin', '2018-06-28 11:38:21', '新增菜单关于我们');
INSERT INTO `sys_fhlog` VALUES ('bb160be8905d4ab3a80580e0c5d6e48f', 'admin', '2019-01-08 14:14:54', '退出');
INSERT INTO `sys_fhlog` VALUES ('bb2914b3ec60416282d2e9326fad441a', 'admin', '2019-02-16 09:34:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('bba455ecd3314560b3584663e51b9d0d', 'admin', '2019-03-14 22:25:17', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('bbaf5d25a2874d8c9c893a22407ee95f', '18186845539', '2019-03-08 11:48:36', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('bd420cade370431f8a36e1c1fb8a702d', 'admin', '2019-01-03 00:24:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('bd766d9b163a4931959b76a316df50f2', 'admin', '2019-02-26 17:33:57', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('bde80f85ad1c4c0e87990ea13fa53fa9', 'admin', '2019-02-14 16:04:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('be151a7301144b05905611d6a7ae5718', '18186845539', '2019-03-15 14:21:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('beaeead063044dbe9e4311a50abd6fa6', 'admin', '2019-01-02 23:57:58', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('beef9bd97327407fa1716526e80d59cd', '654321', '2019-03-07 22:52:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('bf2b0c401fdb4e0a9493112d9d294ef2', 'admin', '2019-03-07 16:51:59', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('bfb5dea588d2450ea115d3edda9ce9fd', 'admin', '2019-02-16 20:02:47', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c05f8c7b81a3486c9e040f199d71e741', 'admin', '2019-01-11 21:45:17', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c082d28a8e6840b38aee6bd9200b6a69', 'admin', '2019-01-12 13:36:52', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c135af32f5f74eb1b0f59227b1ef6b38', '18186845539', '2019-01-02 16:19:00', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c13e2c45b72c49d5a7d67f8cfb58ecff', 'admin', '2019-01-24 19:17:10', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c176ae2c130643b98dd4543f8d055e5e', 'admin', '2019-01-11 22:20:45', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c19c69a3cdd94a24bdc8d3f7220516cf', '18186845539', '2019-02-15 18:51:04', '退出');
INSERT INTO `sys_fhlog` VALUES ('c19e9271046145f0863fec582e5eda07', 'admin', '2019-01-05 16:52:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c1d00d19971949cead6e2070deb55e1c', '18186845539', '2019-02-23 23:05:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c2b9b2eab0c147d5bc28efbcf5cbf8a5', 'earwaywb', '2019-03-05 10:31:44', '新注册');
INSERT INTO `sys_fhlog` VALUES ('c2e4f6e03a3c40ff91afe13064849dde', 'admin', '2019-02-15 16:28:22', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c31256da5df24ad596e80eef35722328', 'admin', '2019-01-11 22:28:00', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c333e5a1e6d94f6da17fe9084f34589a', 'admin', '2019-01-04 22:43:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c34ba050b5674e8fa75a21a30da648d6', 'admin', '2019-01-08 14:25:08', '修改菜单模版六');
INSERT INTO `sys_fhlog` VALUES ('c3c08f34085348f589c440dbb9af6f21', 'admin', '2019-03-06 21:13:36', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c5ea6ba26c8e4d37870c5d2cd4b9eb40', 'admin', '2019-03-06 20:50:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c6c116f07e594f4abc223ce5f3092f22', 'admin', '2019-01-09 15:54:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c6e92b0a352d4e078a67b1bc87fbfcf5', '18186845539', '2019-01-08 17:07:48', '退出');
INSERT INTO `sys_fhlog` VALUES ('c70694b8a6ed4f6899f1c7f9ad42246a', '18186845539', '2019-03-05 19:19:18', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c7d5b8096cfb42ff88e4aa3b0085f98c', 'admin', '2019-02-24 11:11:05', '退出');
INSERT INTO `sys_fhlog` VALUES ('c7fd7c852c904e2086ae4f53054275d9', 'admin', '2019-01-08 11:42:44', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c87544f56e2b4cf28f0dec5939d72adc', 'admin', '2019-01-13 15:31:28', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c87bb54dd3814c37bf58af2eae4e1fc9', 'admin', '2019-02-14 15:39:59', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c9344d3cc9604c2f9d016782c0713c8d', '18186845539', '2019-01-07 14:44:16', '退出');
INSERT INTO `sys_fhlog` VALUES ('ca4d7ec828bf49e89b78a570f495f958', 'admin', '2018-10-10 02:09:16', '新增菜单模版六');
INSERT INTO `sys_fhlog` VALUES ('caad06e0c8d44dbc85c9d4a3c3ee5513', 'admin', '2018-06-22 17:39:03', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('cb402bfb2d324ceba05c32be60c6a6f4', '18186845539', '2019-01-09 15:11:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('cb6e19dffb194fb68916e1969d5178a6', '18186845539', '2019-01-02 15:48:24', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('cc6680e271e9444cb3ed5eafe6e95be8', '18186845539', '2019-01-13 00:15:25', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ccdcc627c4984080aaf994946743728b', 'admin', '2019-01-13 12:54:21', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ce57247f66974b0b8053cd6368aaeabe', 'admin', '2019-02-14 19:54:28', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ce96cd100c204b5d9a17f9825c3f7bf4', 'admin', '2019-02-23 20:13:58', '退出');
INSERT INTO `sys_fhlog` VALUES ('ceebad51039f425ca7df95d17d801c95', 'admin', '2019-03-06 23:35:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d0684859abe14970a175e92e2a01a6c5', 'admin', '2019-01-12 13:35:42', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d0d8cefdebc84630a01c698f2987fd12', 'admin', '2019-01-07 15:01:37', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d17c632666b2490e902216d52e6400c7', 'admin', '2019-02-16 17:19:00', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d3b55f892f564cb3a85cf1ce8dd98a11', 'admin', '2019-01-08 14:18:24', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d541485da14f445ead3f42bab7b0147a', 'test123', '2019-03-28 19:59:51', '新注册');
INSERT INTO `sys_fhlog` VALUES ('d5d6fd1696014d0ab0e8e6c46e57b02d', '18186845539', '2019-01-02 16:04:07', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d62b1d57cbc44b0da780db09492f7405', 'admin', '2019-01-13 18:47:49', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d6e898fd847e4eaeae1634e2e4d85137', 'admin', '2019-03-07 15:56:40', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d7f6c07e6c8040d695056230a69daf75', 'admin', '2019-01-12 12:38:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d863c4076e024b38b5c54feb637481e7', 'admin', '2019-01-04 16:15:04', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d86f9c3de46f4e4b86e48d6a172debc3', 'admin', '2019-01-04 23:04:13', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d87fce4d56d64bfbade422cc3d8e888b', '18186845539', '2019-01-02 16:19:13', '退出');
INSERT INTO `sys_fhlog` VALUES ('d8b00f14fdf145799d79b3bdc52edc79', 'admin', '2018-06-28 11:41:57', '新增菜单页尾');
INSERT INTO `sys_fhlog` VALUES ('d8e3e5ac7fdf46fa811164307a068eec', 'admin', '2019-01-12 17:01:29', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d920243df202447c96f24f82d72117cc', '18186845539', '2019-01-08 11:34:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d98f331c29d6466da6b25367e907c6c3', 'admin', '2019-01-13 13:18:45', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('da6084fa1d9a4fdcb9cef7e771af7624', '18186845539', '2019-01-07 23:34:08', '退出');
INSERT INTO `sys_fhlog` VALUES ('da6be1839f424c508edf222ab6bcc8dc', '18186845539', '2019-01-02 18:42:22', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('dc08e9a083e042d9999b0881ce0789bf', '18186845539', '2019-01-05 12:44:17', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('dc0df561ff154dfda97350d6537dbd93', 'admin', '2019-02-16 14:58:38', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('dc63f047dcfe4957b951699ae1d35725', '111111', '2019-03-06 22:29:48', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('dccc266b9a374ac0a1975a31d2ef0de0', '18186845539', '2019-01-08 17:06:57', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('dd13c90fe82c440e99c946146cd9c40f', 'admin', '2019-01-07 14:44:27', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('dd45a506dbd54d3295764856076ee2ba', 'admin', '2019-02-15 16:08:35', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ddcadc454e0547859c0bcf15c3ab9260', '654800', '2019-01-04 16:07:08', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ddd5c98071bc4b82864b10052215dbb0', '18186845539', '2019-01-09 14:33:55', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('de0ae7dc9705471781f1429cb8b0a9a2', 'admin', '2019-01-11 18:35:39', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('de433ee6c1b14114bef3fa6d18686c18', 'admin', '2019-01-08 14:25:39', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('de712f0770de4a13a15ed4c805a437ac', 'admin', '2019-02-23 20:26:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('deea6ba49e214cc69f9c2c7e2b744c10', '笑嘻嘻123456789', '2019-03-05 09:30:59', '退出');
INSERT INTO `sys_fhlog` VALUES ('df11d2ddc41e42999f5d35bd7f768606', 'admin', '2018-07-27 15:44:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('df2e84c771154f0f87b95eb14c126a55', 'admin', '2019-02-16 19:26:12', '修改菜单产品案例');
INSERT INTO `sys_fhlog` VALUES ('dff79d45227d4d95becf6196db6be70d', 'admin', '2019-02-16 17:48:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('dff89c233ee941849a2604dfcd2a23e8', '18186845539', '2019-01-02 16:34:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e026d38b510545e395ec0416587e6b55', 'admin', '2018-10-10 02:11:15', '退出');
INSERT INTO `sys_fhlog` VALUES ('e11bc80428e14e63b641d4da3d899be1', '笑嘻嘻123', '2019-03-05 09:22:16', '新注册');
INSERT INTO `sys_fhlog` VALUES ('e27988813872431a81978c30336688dd', 'admin', '2019-01-07 17:55:59', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e2ee4a04e6284ba78eb6da69b8f5c6fb', '123456789', '2019-03-08 11:40:22', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e34f11e11730401db8ee204db2b8c90b', 'admin', '2019-02-23 18:46:13', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e36314b1ae864a4e9921123198eb6aa2', 'admin', '2019-01-24 19:52:21', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e399eb863c864bbaa6180b7bc68ceaa8', '666666', '2019-03-07 22:02:02', '新注册');
INSERT INTO `sys_fhlog` VALUES ('e48a3187d6ed4272affc360247b9fb14', '654321', '2019-03-07 23:17:22', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e57f9125525c459892073dcfc3cd890f', 'admin', '2019-01-04 16:13:00', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e59a7c5a967f417e836f8446b89b27be', 'admin', '2019-02-26 16:15:03', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e606572d280a4e48880d3afb07b427fe', 'admin', '2019-01-13 19:00:42', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e612f2e2ab8844d1ad9fa21c1f50b8f3', '111111', '2019-03-05 13:40:37', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e7860c269adb465d90e3ab0f411b23d5', 'admin', '2018-06-28 11:36:54', '修改菜单模版五');
INSERT INTO `sys_fhlog` VALUES ('e87005f9d15a498b86d55a30e21f75bd', 'admin', '2019-01-12 20:53:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e8cb2cb49133412abd06ea4d56c7d1e5', '18186845539', '2019-01-07 23:30:09', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e9a7404cec53450eaff8222f6acc99d0', 'admin', '2019-03-05 20:47:40', '修改系统用户：admin');
INSERT INTO `sys_fhlog` VALUES ('e9c2f8fac3454bf3a2b60b276bbfbb4b', 'admin', '2019-01-11 23:59:48', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ea65d6ceadd54bb1ae15ef6bf20212af', '18186845539', '2019-03-06 21:28:26', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ead5d77fa5384ee6a5769f1f1b5c9a0b', '18186845539', '2019-03-05 19:28:18', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ec44bfff77254f139fa6b640b1071c72', '18186845539', '2019-02-14 16:04:21', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ec7af90f10e042789e7e1f9871b5f456', 'admin', '2018-06-22 22:53:28', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('eca865c65f6a4e6eb75eb3ca38d1b167', 'admin', '2019-01-04 16:57:37', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ecb30984f9b9468395e547ad80ac1df0', '孙宁宁', '2019-03-20 18:46:46', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ecbf0764193b43929dabfb2138a5b079', '18186845539', '2019-01-08 17:53:10', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ece5055a6f6345beb5693cdc3d70c8dc', 'admin', '2019-03-09 07:50:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('eeb90bedcb174e7ba9d6dab75c74f160', 'admin', '2019-01-11 22:45:39', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('efd4ed7a8cde4dd8a4c39d19dd63817d', 'admin', '2019-02-15 16:56:59', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('effe0353f73e459eb956d5a0f5ef8174', 'wotaoyanni', '2019-03-07 22:08:08', '新注册');
INSERT INTO `sys_fhlog` VALUES ('f11588762a0048b6add8f0eadef72600', 'admin', '2018-06-28 11:39:57', '新增菜单新闻动态');
INSERT INTO `sys_fhlog` VALUES ('f14969b714e54473acd9be4ce573f075', 'admin', '2019-02-25 17:09:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f1d4c2061d37434d9efffa60e04b37df', 'admin', '2019-01-03 00:14:43', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f2a094a197004aa683e153805f86adb4', 'admin', '2019-02-15 15:54:46', '退出');
INSERT INTO `sys_fhlog` VALUES ('f3071bf9cc824cc789f68df3cdde0db2', 'admin', '2019-01-12 22:04:29', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f4444aa04a464c4c902a9d3752dea84c', 'test123', '2019-03-28 20:00:05', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('f44e348fa2654df0952b9aa6cd785d11', 'admin', '2019-01-07 15:20:24', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f49efb91fb424ead956605c64395948f', 'admin', '2019-01-08 17:07:57', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f4ed4b1254d8433fb28bd13416af46d1', 'admin', '2019-02-16 08:39:17', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f4ef5603d3244eb8b0573fd284d1e955', 'admin', '2019-03-07 17:52:36', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f59c4213998a4de4867e6aa7710dcf4d', '杰瑞', '2019-03-27 21:48:27', '新注册');
INSERT INTO `sys_fhlog` VALUES ('f62b712d3a864d4fba22ca175c946d07', 'admin', '2019-03-06 20:59:07', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f648fa0f04cd4251afc6c0d076013101', 'admin', '2019-02-23 21:29:08', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f6bc5991101942bda9445276119e2081', 'admin', '2019-01-02 17:12:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f6fb45070e9e4eaebde4089de443f33c', '654321', '2019-03-07 23:21:12', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f71a1b896054417594ea1b39cf1ba376', 'admin', '2019-01-07 15:41:24', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f79b86f191004ce8bef204cf023955d9', 'admin', '2019-02-25 16:18:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f7a53aac3e314721b397cdd753e6ccae', 'admin', '2019-01-12 13:30:48', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f878dc859fe64dceabfcee1c019f1fc7', 'admin', '2019-01-24 19:00:02', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f87b2256bd684bddb55036f227f1c58a', 'admin', '2019-02-15 15:51:22', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f8ad1058f5d64ac4bece2835f1830a54', 'admin', '2018-06-28 11:36:48', '新增菜单模版五');
INSERT INTO `sys_fhlog` VALUES ('f96bddc3032c4b868d262b7a527ec478', 'admin', '2019-03-04 14:58:39', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f9769f95cb2245619a0266bbf3a66fa8', 'admin', '2019-01-12 23:01:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f979656bb07a46e9a1afb93c9790a2b7', 'admin', '2019-01-11 20:09:24', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('fae93ca44e324ef1bd245f8f18542850', 'admin', '2019-02-14 15:32:49', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('fcf3764fb56a4cf3bed89b5b4bde4239', '18186845539', '2019-02-15 18:22:03', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('fd4907fcafbb4f6a9a7192eb4d77a39f', 'admin', '2019-02-15 17:48:35', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('fdb2b26325a64589a4571b552febe5e1', '18186845539', '2019-03-06 22:32:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('fe4b4c7e05db48e59ef03aa6ed856aa6', '18186845539', '2019-03-08 12:33:26', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('feddc8fda4a947239bc134a57c9f685a', '18186845539', '2019-01-02 16:08:40', '修改系统用户：18186845539');
INSERT INTO `sys_fhlog` VALUES ('ff3ecb347dea44babf05131fc4612640', '123456', '2019-01-08 17:27:50', '新注册');
INSERT INTO `sys_fhlog` VALUES ('ff8878c0c3b94f6699e9b7928ddf5198', 'admin', '2019-01-08 10:09:19', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ffa7228b56e4468a914d3d067f933f18', '18186845539', '2019-01-08 17:26:46', '退出');

-- ----------------------------
-- Table structure for `sys_loginimg`
-- ----------------------------
DROP TABLE IF EXISTS `sys_loginimg`;
CREATE TABLE `sys_loginimg` (
  `LOGINIMG_ID` varchar(100) NOT NULL,
  `NAME` varchar(30) DEFAULT NULL COMMENT '文件名',
  `FILEPATH` varchar(100) DEFAULT NULL COMMENT '路径',
  `TYPE` int(2) NOT NULL COMMENT '状态',
  `FORDER` int(3) NOT NULL COMMENT '排序',
  PRIMARY KEY (`LOGINIMG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_loginimg
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `MENU_ID` int(11) NOT NULL,
  `MENU_NAME` varchar(255) DEFAULT NULL,
  `MENU_URL` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `MENU_ORDER` varchar(100) DEFAULT NULL,
  `MENU_ICON` varchar(60) DEFAULT NULL,
  `MENU_TYPE` varchar(10) DEFAULT NULL,
  `MENU_STATE` int(1) DEFAULT NULL,
  PRIMARY KEY (`MENU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '#', '0', '1', 'menu-icon fa fa-desktop blue', '2', '1');
INSERT INTO `sys_menu` VALUES ('2', '权限管理', '#', '1', '1', 'menu-icon fa fa-lock black', '1', '1');
INSERT INTO `sys_menu` VALUES ('3', '日志管理', 'fhlog/list.do', '1', '6', 'menu-icon fa fa-book blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('6', '资源管理', '#', '0', '5', 'menu-icon fa fa-credit-card green', '2', '1');
INSERT INTO `sys_menu` VALUES ('7', '图片管理', '#', '6', '1', 'menu-icon fa fa-folder-o pink', '2', '1');
INSERT INTO `sys_menu` VALUES ('8', '性能监控', 'druid/index.html', '9', '8', 'menu-icon fa fa-tachometer red', '1', '1');
INSERT INTO `sys_menu` VALUES ('9', '系统工具', '#', '0', '3', 'menu-icon fa fa-cog black', '2', '1');
INSERT INTO `sys_menu` VALUES ('22', '一级菜单', '#', '0', '10', 'menu-icon fa fa-fire orange', '1', '1');
INSERT INTO `sys_menu` VALUES ('23', '二级菜单', '#', '22', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('24', '三级菜单', '#', '23', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('30', '四级菜单', '#', '24', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('31', '五级菜单1', '#', '30', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('32', '五级菜单2', '#', '30', '2', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('33', '六级菜单', '#', '31', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('34', '六级菜单2', 'login_default.do', '31', '2', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('35', '四级菜单2', 'login_default.do', '24', '2', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('36', '角色(基础权限)', 'role.do', '2', '1', 'menu-icon fa fa-key orange', '1', '1');
INSERT INTO `sys_menu` VALUES ('37', '按钮权限', 'buttonrights/list.do', '2', '2', 'menu-icon fa fa-key green', '1', '1');
INSERT INTO `sys_menu` VALUES ('38', '菜单管理', 'menu/listAllMenu.do', '1', '3', 'menu-icon fa fa-folder-open-o brown', '1', '1');
INSERT INTO `sys_menu` VALUES ('39', '按钮管理', 'fhbutton/list.do', '1', '2', 'menu-icon fa fa-download orange', '1', '1');
INSERT INTO `sys_menu` VALUES ('40', '用户管理', '#', '0', '2', 'menu-icon fa fa-users blue', '2', '1');
INSERT INTO `sys_menu` VALUES ('41', '系统用户', 'user/listUsers.do', '40', '1', 'menu-icon fa fa-users green', '1', '1');
INSERT INTO `sys_menu` VALUES ('42', '会员管理', 'happuser/listUsers.do', '40', '2', 'menu-icon fa fa-users orange', '1', '1');
INSERT INTO `sys_menu` VALUES ('43', '数据字典', 'dictionaries/listAllDict.do?DICTIONARIES_ID=0', '1', '4', 'menu-icon fa fa-book purple', '1', '1');
INSERT INTO `sys_menu` VALUES ('44', '代码生成器', '#', '9', '0', 'menu-icon fa fa-cogs brown', '1', '1');
INSERT INTO `sys_menu` VALUES ('45', '七级菜单1', '#', '33', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('46', '七级菜单2', '#', '33', '2', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('47', '八级菜单', 'login_default.do', '45', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('51', '图片列表', 'pictures/list.do', '7', '1', 'menu-icon fa fa-folder-open-o green', '1', '1');
INSERT INTO `sys_menu` VALUES ('52', '图片爬虫', 'pictures/goImageCrawler.do', '7', '2', 'menu-icon fa fa-cloud-download green', '1', '1');
INSERT INTO `sys_menu` VALUES ('53', '表单构建器', 'tool/goFormbuilder.do', '9', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('54', '数据库管理', '#', '0', '9', 'menu-icon fa fa-hdd-o blue', '2', '1');
INSERT INTO `sys_menu` VALUES ('55', '数据库备份', 'brdb/listAllTable.do', '54', '1', 'menu-icon fa fa-cloud-upload blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('56', '数据库还原', 'brdb/list.do', '54', '3', 'menu-icon fa fa-cloud-download blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('57', '备份定时器', 'timingbackup/list.do', '54', '2', 'menu-icon fa fa-tachometer blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('58', 'SQL编辑器', 'sqledit/view.do', '54', '4', 'menu-icon fa fa-pencil-square-o blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('61', '反向生成', 'recreateCode/list.do', '44', '2', 'menu-icon fa fa-cogs blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('62', '正向生成', 'createCode/list.do', '44', '1', 'menu-icon fa fa-cogs green', '1', '1');
INSERT INTO `sys_menu` VALUES ('67', '首页管理', '#', '0', '11', 'menu-icon fa fa-globe green', '2', '1');
INSERT INTO `sys_menu` VALUES ('68', '网站信息', 'information/list.do', '67', '1', 'menu-icon fa fa-book blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('69', '轮播图片', 'image/list.do?TYPE=1', '67', '2', 'menu-icon fa fa-camera-retro green', '1', '1');
INSERT INTO `sys_menu` VALUES ('70', '项目案例', 'image/list.do?TYPE=2', '67', '3', 'menu-icon fa fa-camera-retro blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('71', '合作伙伴', 'image/list.do?TYPE=3', '67', '4', 'menu-icon fa fa-camera-retro purple', '1', '1');
INSERT INTO `sys_menu` VALUES ('72', '技术团队', 'image/list.do?TYPE=4', '67', '5', 'menu-icon fa fa-camera-retro orange', '1', '1');
INSERT INTO `sys_menu` VALUES ('73', '业务说明', 'ourbusiness/list.do', '67', '1', 'menu-icon fa fa-book green', '1', '1');
INSERT INTO `sys_menu` VALUES ('74', '公司理念', 'corporatephilosophy/list.do', '67', '1', 'menu-icon fa fa-book purple', '1', '1');
INSERT INTO `sys_menu` VALUES ('75', '联系我们', 'contactus/list.do', '80', '5', 'menu-icon fa fa-home green', '1', '1');
INSERT INTO `sys_menu` VALUES ('76', '访客留言', 'leavemsg/list.do', '80', '6', 'menu-icon fa fa-bookmark blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('77', '关于我们', 'aboutus/list.do', '80', '1', 'menu-icon fa fa-home purple', '1', '1');
INSERT INTO `sys_menu` VALUES ('78', '合作共赢', 'cooperation/list.do', '80', '3', 'menu-icon fa fa-fire green', '1', '1');
INSERT INTO `sys_menu` VALUES ('79', '产品案例', 'image/list.do?TYPE=5', '80', '2', 'menu-icon fa fa-camera-retro orange', '1', '1');
INSERT INTO `sys_menu` VALUES ('80', '内容管理', '#', '0', '12', 'menu-icon fa fa-book blue', '2', '1');
INSERT INTO `sys_menu` VALUES ('81', '新闻动态', 'news/list.do', '80', '4', 'menu-icon fa fa-pencil-square-o red', '1', '1');
INSERT INTO `sys_menu` VALUES ('82', '模版管理', '#', '0', '13', 'menu-icon fa fa-folder-open orange', '2', '1');
INSERT INTO `sys_menu` VALUES ('83', '模版一', '#', '82', '1', 'menu-icon fa fa-folder-open-o blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('84', '模版二', '#', '82', '2', 'menu-icon fa fa-folder-open-o green', '1', '0');
INSERT INTO `sys_menu` VALUES ('85', '模版三', '#', '82', '3', 'menu-icon fa fa-folder-open-o purple', '1', '0');
INSERT INTO `sys_menu` VALUES ('86', '首页', 'codeeditor/goEdit.do?type=createHtml&ftl=indexTemplate', '83', '1', 'menu-icon fa fa-folder red', '1', '1');
INSERT INTO `sys_menu` VALUES ('87', '关于我们', 'codeeditor/goEdit.do?type=createHtml&ftl=aboutusTemplate', '83', '2', 'menu-icon fa fa-folder green', '1', '1');
INSERT INTO `sys_menu` VALUES ('88', '产品案例', 'codeeditor/goEdit.do?type=createHtml&ftl=productTemplate', '83', '3', 'menu-icon fa fa-folder orange', '1', '1');
INSERT INTO `sys_menu` VALUES ('89', '合作共赢', 'codeeditor/goEdit.do?type=createHtml&ftl=cooperationTemplate', '83', '4', 'menu-icon fa fa-folder purple', '1', '1');
INSERT INTO `sys_menu` VALUES ('90', '新闻动态', 'codeeditor/goEdit.do?type=createHtml&ftl=newsTemplate', '83', '5', 'menu-icon fa fa-folder pink', '1', '1');
INSERT INTO `sys_menu` VALUES ('91', '联系我们', 'codeeditor/goEdit.do?type=createHtml&ftl=contactusTemplate', '83', '7', 'menu-icon fa fa-folder grey', '1', '1');
INSERT INTO `sys_menu` VALUES ('92', '新闻详情', 'codeeditor/goEdit.do?type=createHtml&ftl=newsdetailTemplate', '83', '6', 'menu-icon fa fa-folder blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('93', '页头', 'codeeditor/goEdit.do?type=createHtml&ftl=headerTemplate', '83', '8', 'menu-icon fa fa-folder brown', '1', '1');
INSERT INTO `sys_menu` VALUES ('94', '页尾', 'codeeditor/goEdit.do?type=createHtml&ftl=footerTemplate', '83', '9', 'menu-icon fa fa-folder purple', '1', '1');
INSERT INTO `sys_menu` VALUES ('95', '首页', 'codeeditor/goEdit.do?type=createHtml2&ftl=indexTemplate', '84', '1', 'menu-icon fa fa-folder red', '1', '1');
INSERT INTO `sys_menu` VALUES ('96', '关于我们', 'codeeditor/goEdit.do?type=createHtml2&ftl=aboutusTemplate', '84', '2', 'menu-icon fa fa-folder green', '1', '1');
INSERT INTO `sys_menu` VALUES ('97', '产品案例', 'codeeditor/goEdit.do?type=createHtml2&ftl=productTemplate', '84', '3', 'menu-icon fa fa-folder orange', '1', '1');
INSERT INTO `sys_menu` VALUES ('98', '合作共赢', 'codeeditor/goEdit.do?type=createHtml2&ftl=cooperationTemplate', '84', '4', 'menu-icon fa fa-folder purple', '1', '1');
INSERT INTO `sys_menu` VALUES ('99', '新闻动态', 'codeeditor/goEdit.do?type=createHtml2&ftl=newsTemplate', '84', '5', 'menu-icon fa fa-folder pink', '1', '1');
INSERT INTO `sys_menu` VALUES ('100', '联系我们', 'codeeditor/goEdit.do?type=createHtml2&ftl=contactusTemplate', '84', '7', 'menu-icon fa fa-folder grey', '1', '1');
INSERT INTO `sys_menu` VALUES ('101', '新闻详情', 'codeeditor/goEdit.do?type=createHtml2&ftl=newsdetailTemplate', '84', '6', 'menu-icon fa fa-folder blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('102', '页头', 'codeeditor/goEdit.do?type=createHtml2&ftl=headerTemplate', '84', '8', 'menu-icon fa fa-folder brown', '1', '1');
INSERT INTO `sys_menu` VALUES ('103', '页尾', 'codeeditor/goEdit.do?type=createHtml2&ftl=footerTemplate', '84', '9', 'menu-icon fa fa-folder purple', '1', '1');
INSERT INTO `sys_menu` VALUES ('104', '首页', 'codeeditor/goEdit.do?type=createHtml3&ftl=indexTemplate', '85', '1', 'menu-icon fa fa-folder red', '1', '1');
INSERT INTO `sys_menu` VALUES ('105', '关于我们', 'codeeditor/goEdit.do?type=createHtml3&ftl=aboutusTemplate', '85', '2', 'menu-icon fa fa-folder green', '1', '1');
INSERT INTO `sys_menu` VALUES ('106', '产品案例', 'codeeditor/goEdit.do?type=createHtml3&ftl=productTemplate', '85', '3', 'menu-icon fa fa-folder orange', '1', '1');
INSERT INTO `sys_menu` VALUES ('107', '合作共赢', 'codeeditor/goEdit.do?type=createHtml3&ftl=cooperationTemplate', '85', '4', 'menu-icon fa fa-folder purple', '1', '1');
INSERT INTO `sys_menu` VALUES ('108', '新闻动态', 'codeeditor/goEdit.do?type=createHtml3&ftl=newsTemplate', '85', '5', 'menu-icon fa fa-folder pink', '1', '1');
INSERT INTO `sys_menu` VALUES ('109', '联系我们', 'codeeditor/goEdit.do?type=createHtml3&ftl=contactusTemplate', '85', '7', 'menu-icon fa fa-folder grey', '1', '1');
INSERT INTO `sys_menu` VALUES ('110', '新闻详情', 'codeeditor/goEdit.do?type=createHtml3&ftl=newsdetailTemplate', '85', '6', 'menu-icon fa fa-folder blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('111', '页头', 'codeeditor/goEdit.do?type=createHtml3&ftl=headerTemplate', '85', '8', 'menu-icon fa fa-folder brown', '1', '1');
INSERT INTO `sys_menu` VALUES ('112', '页尾', 'codeeditor/goEdit.do?type=createHtml3&ftl=footerTemplate', '85', '9', 'menu-icon fa fa-folder purple', '1', '1');
INSERT INTO `sys_menu` VALUES ('113', '访问记录', 'statistics/grlist.do', '1', '7', 'menu-icon fa fa-globe orange', '1', '1');
INSERT INTO `sys_menu` VALUES ('114', 'IP黑名单', 'blacklist/list.do', '1', '8', 'menu-icon fa fa-adjust black', '1', '1');
INSERT INTO `sys_menu` VALUES ('115', '流量统计', 'chartsstatistics/pvcharts.do', '1', '9', 'menu-icon fa fa-bar-chart-o green', '1', '1');
INSERT INTO `sys_menu` VALUES ('116', '模版四', '#', '82', '4', 'menu-icon fa fa-folder-open-o pink', '1', '1');
INSERT INTO `sys_menu` VALUES ('117', '首页', 'codeeditor/goEdit.do?type=createHtml4&ftl=indexTemplate', '116', '1', 'menu-icon fa fa-folder red', '1', '1');
INSERT INTO `sys_menu` VALUES ('118', '关于我们', 'codeeditor/goEdit.do?type=createHtml4&ftl=aboutusTemplate', '116', '2', 'menu-icon fa fa-folder green', '1', '1');
INSERT INTO `sys_menu` VALUES ('119', '产品案例', 'codeeditor/goEdit.do?type=createHtml4&ftl=productTemplate', '116', '3', 'menu-icon fa fa-folder orange', '1', '1');
INSERT INTO `sys_menu` VALUES ('120', '合作共赢', 'codeeditor/goEdit.do?type=createHtml4&ftl=cooperationTemplate', '116', '4', 'menu-icon fa fa-folder purple', '1', '1');
INSERT INTO `sys_menu` VALUES ('121', '新闻动态', 'codeeditor/goEdit.do?type=createHtml4&ftl=newsTemplate', '116', '5', 'menu-icon fa fa-folder pink', '1', '1');
INSERT INTO `sys_menu` VALUES ('122', '新闻详情', 'codeeditor/goEdit.do?type=createHtml4&ftl=newsdetailTemplate', '116', '6', 'menu-icon fa fa-folder blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('123', '联系我们', 'codeeditor/goEdit.do?type=createHtml4&ftl=contactusTemplate', '116', '7', 'menu-icon fa fa-folder grey', '1', '1');
INSERT INTO `sys_menu` VALUES ('124', '页头', 'codeeditor/goEdit.do?type=createHtml4&ftl=headerTemplate', '116', '8', 'menu-icon fa fa-folder brown', '1', '1');
INSERT INTO `sys_menu` VALUES ('125', '尾页', 'codeeditor/goEdit.do?type=createHtml4&ftl=footerTemplate', '116', '9', 'menu-icon fa fa-folder orange', '1', '1');
INSERT INTO `sys_menu` VALUES ('126', '模版五', '#', '82', '5', 'menu-icon fa fa-folder-open-o orange', '1', '1');
INSERT INTO `sys_menu` VALUES ('127', '首页', 'codeeditor/goEdit.do?type=createHtml5&ftl=indexTemplate', '126', '1', 'menu-icon fa fa-folder red', '1', '1');
INSERT INTO `sys_menu` VALUES ('128', '关于我们', 'codeeditor/goEdit.do?type=createHtml5&ftl=aboutusTemplate', '126', '2', 'menu-icon fa fa-folder green', '1', '1');
INSERT INTO `sys_menu` VALUES ('129', '产品案例', 'codeeditor/goEdit.do?type=createHtml5&ftl=productTemplate', '126', '3', 'menu-icon fa fa-folder orange', '1', '1');
INSERT INTO `sys_menu` VALUES ('130', '合作共赢', 'codeeditor/goEdit.do?type=createHtml5&ftl=cooperationTemplate', '126', '4', 'menu-icon fa fa-folder purple', '1', '1');
INSERT INTO `sys_menu` VALUES ('131', '新闻动态', 'codeeditor/goEdit.do?type=createHtml5&ftl=newsTemplate', '126', '5', 'menu-icon fa fa-folder pink', '1', '1');
INSERT INTO `sys_menu` VALUES ('132', '新闻详情', 'codeeditor/goEdit.do?type=createHtml5&ftl=newsdetailTemplate', '126', '6', 'menu-icon fa fa-folder blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('133', '联系我们', 'codeeditor/goEdit.do?type=createHtml5&ftl=contactusTemplate', '126', '7', 'menu-icon fa fa-folder grey', '1', '1');
INSERT INTO `sys_menu` VALUES ('134', '页头', 'codeeditor/goEdit.do?type=createHtml5&ftl=headerTemplate', '126', '8', 'menu-icon fa fa-folder brown', '1', '1');
INSERT INTO `sys_menu` VALUES ('135', '页尾', 'codeeditor/goEdit.do?type=createHtml5&ftl=footerTemplate', '126', '9', 'menu-icon fa fa-folder black', '1', '1');
INSERT INTO `sys_menu` VALUES ('136', '模版六', '#', '82', '6', 'menu-icon fa fa-folder-open-o blue', '1', '0');
INSERT INTO `sys_menu` VALUES ('137', '单页', 'codeeditor/goEdit.do?type=createHtml6&ftl=indexTemplate', '136', '1', 'menu-icon fa fa-folder green', '1', '1');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `ROLE_ID` varchar(100) NOT NULL,
  `ROLE_NAME` varchar(100) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `ADD_QX` varchar(255) DEFAULT NULL,
  `DEL_QX` varchar(255) DEFAULT NULL,
  `EDIT_QX` varchar(255) DEFAULT NULL,
  `CHA_QX` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '系统管理组', '348449143727040986586355516076995035268046', '0', '1', '1', '1', '1');
INSERT INTO `sys_role` VALUES ('115b386ff04f4352b060dffcd2b5d1da', '中级会员', '', '2', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('1b67fc82ce89457a8347ae53e43a347e', '初级会员', '', '2', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('2', '会员组', '', '0', '0', '0', '0', '1');
INSERT INTO `sys_role` VALUES ('3', '注册用户', '', '1', '', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('3264c8e83d0248bb9e3ea6195b4c0216', '一级管理员', '147573389638682795998', '1', '36892925196425486294', '36892925196425486294', '36892925196425486294', '36892925196425486294');
INSERT INTO `sys_role` VALUES ('46294b31a71c4600801724a6eb06bb26', '职位组', '', '0', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('5466347ac07044cb8d82990ec7f3a90e', '主管', '', '46294b31a71c4600801724a6eb06bb26', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('68f8e4a39efe47c7bb869e9d15ab925d', '二级管理员', '73786413343844589510', '1', '0', '0', '2251798773489606', '0');
INSERT INTO `sys_role` VALUES ('856849f422774ad390a4e564054d8cc8', '经理', '', '46294b31a71c4600801724a6eb06bb26', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('8b70a7e67f2841e7aaba8a4d92e5ff6f', '高级会员', '', '2', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('c21cecf84048434b93383182b1d98cba', '组长', '', '46294b31a71c4600801724a6eb06bb26', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('d449195cd8e7491080688c58e11452eb', '总监', '', '46294b31a71c4600801724a6eb06bb26', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('de9de2f006e145a29d52dfadda295353', '三级管理员', '73786413343844589510', '1', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `sys_role_fhbutton`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_fhbutton`;
CREATE TABLE `sys_role_fhbutton` (
  `RB_ID` varchar(100) NOT NULL,
  `ROLE_ID` varchar(100) DEFAULT NULL,
  `BUTTON_ID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`RB_ID`),
  KEY `角色表外键` (`ROLE_ID`) USING BTREE,
  KEY `fbutton` (`BUTTON_ID`),
  CONSTRAINT `sys_role_fhbutton_ibfk_1` FOREIGN KEY (`BUTTON_ID`) REFERENCES `sys_fhbutton` (`FHBUTTON_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sys_role_fhbutton_ibfk_2` FOREIGN KEY (`ROLE_ID`) REFERENCES `sys_role` (`ROLE_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_fhbutton
-- ----------------------------
INSERT INTO `sys_role_fhbutton` VALUES ('1743733f366240c693c4295b527d1b0e', 'de9de2f006e145a29d52dfadda295353', '4efa162fce8340f0bd2dcd3b11d327ec');
INSERT INTO `sys_role_fhbutton` VALUES ('469ffb4848ad49c389867d99560a4698', 'de9de2f006e145a29d52dfadda295353', '46992ea280ba4b72b29dedb0d4bc0106');
INSERT INTO `sys_role_fhbutton` VALUES ('4ee1e2bc03a64ef1bc578fcf2e2ea2c1', '68f8e4a39efe47c7bb869e9d15ab925d', '3542adfbda73410c976e185ffe50ad06');
INSERT INTO `sys_role_fhbutton` VALUES ('5669c8754b4d4e368365ed5065f9fc10', '3264c8e83d0248bb9e3ea6195b4c0216', '3542adfbda73410c976e185ffe50ad06');
INSERT INTO `sys_role_fhbutton` VALUES ('74203935bfa34ce3b9b80e81f2a2bcfe', '68f8e4a39efe47c7bb869e9d15ab925d', '4efa162fce8340f0bd2dcd3b11d327ec');
INSERT INTO `sys_role_fhbutton` VALUES ('81d31bc5bf02490a85ce496b6755ef26', '3', '46992ea280ba4b72b29dedb0d4bc0106');
INSERT INTO `sys_role_fhbutton` VALUES ('8231c216fb514b4188e4162e629c6237', '3264c8e83d0248bb9e3ea6195b4c0216', '4efa162fce8340f0bd2dcd3b11d327ec');
INSERT INTO `sys_role_fhbutton` VALUES ('88f66a65ee1642bea7979e0e1050ac5f', '3', '4efa162fce8340f0bd2dcd3b11d327ec');
INSERT INTO `sys_role_fhbutton` VALUES ('8e478e8615ee455e95671ba05a29e457', 'de9de2f006e145a29d52dfadda295353', '3542adfbda73410c976e185ffe50ad06');
INSERT INTO `sys_role_fhbutton` VALUES ('d80abc961d594f75b65e90d5b7437aa9', '3', 'cc51b694d5344d28a9aa13c84b7166cd');
INSERT INTO `sys_role_fhbutton` VALUES ('f0329033d0914faf8ea6e9ff252cc5e6', '68f8e4a39efe47c7bb869e9d15ab925d', '46992ea280ba4b72b29dedb0d4bc0106');
INSERT INTO `sys_role_fhbutton` VALUES ('f627982cc9d4479dbc03af726dc6ac58', 'de9de2f006e145a29d52dfadda295353', 'cc51b694d5344d28a9aa13c84b7166cd');
INSERT INTO `sys_role_fhbutton` VALUES ('f919c1f620634bdaa353a9f63194a2e0', '3', '3542adfbda73410c976e185ffe50ad06');

-- ----------------------------
-- Table structure for `sys_statistics`
-- ----------------------------
DROP TABLE IF EXISTS `sys_statistics`;
CREATE TABLE `sys_statistics` (
  `STATISTICS_ID` varchar(100) NOT NULL,
  `IP` varchar(20) DEFAULT NULL COMMENT 'IP',
  `AREA` varchar(255) DEFAULT NULL COMMENT '地区',
  `OPERATOR` varchar(10) DEFAULT NULL COMMENT '运营商',
  `CDATE` varchar(32) DEFAULT NULL COMMENT '日期',
  `CTIME` varchar(32) DEFAULT NULL COMMENT '时间',
  `REGION` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`STATISTICS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_statistics
-- ----------------------------
INSERT INTO `sys_statistics` VALUES ('0014017c8a9f43c3b0a35f0084585c18', '124.234.225.45', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 22:03:39', '吉林');
INSERT INTO `sys_statistics` VALUES ('0045322186924879a1af1cecf1f35aa1', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:29:06', 'XX');
INSERT INTO `sys_statistics` VALUES ('00457d97ec79483f910dbb55544ba957', '124.234.225.68', '中国  吉林 长春', '电信', '2019-01-13', '2019-01-13 11:37:39', '吉林');
INSERT INTO `sys_statistics` VALUES ('00c630bf2f0f4da2af318768c827b77e', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:37:09', 'XX');
INSERT INTO `sys_statistics` VALUES ('00ead35f89cf439bbdcd7b7ed1d878a0', '123.172.48.28', '中国  吉林 长春', '电信', '2019-01-08', '2019-01-08 17:11:56', '吉林');
INSERT INTO `sys_statistics` VALUES ('00ef3f36443e487fb31b32e3ec5d229f', '218.247.142.216', '中国  北京 北京', '鹏博士', '2019-03-28', '2019-03-28 20:16:10', '北京');
INSERT INTO `sys_statistics` VALUES ('01012c391b7342fdbac6f79f7aeabdb9', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 00:16:38', 'XX');
INSERT INTO `sys_statistics` VALUES ('010163806b604c59af297611986d0926', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:31:09', 'XX');
INSERT INTO `sys_statistics` VALUES ('010fc5c2008e4f61a2162332cce7bfbc', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 14:58:46', '吉林');
INSERT INTO `sys_statistics` VALUES ('01212dee6be24c95b7ec012a0f1e0205', '36.104.26.201', '中国  吉林 长春', '电信', '2019-03-04', '2019-03-04 14:02:30', '吉林');
INSERT INTO `sys_statistics` VALUES ('01442d33b9554b6990c1162d96987b1c', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-07', '2019-03-07 16:52:09', '吉林');
INSERT INTO `sys_statistics` VALUES ('0167698cd4b84d29907db44cc2c11d96', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 19:54:22', '吉林');
INSERT INTO `sys_statistics` VALUES ('01e69b99c8ae4c25a9adc2178d332187', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-07', '2019-03-07 17:39:26', '吉林');
INSERT INTO `sys_statistics` VALUES ('01e99bd9f2f2409c8db3a53bf3fe5d62', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:32:35', 'XX');
INSERT INTO `sys_statistics` VALUES ('01f15f0d13d644169335abaea8c99c69', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:03:18', 'XX');
INSERT INTO `sys_statistics` VALUES ('0227750437c04f1e8fa8802941c15688', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 21:04:52', '吉林');
INSERT INTO `sys_statistics` VALUES ('022c5ce85cba437a8230e4613e7b9c36', '124.234.225.17', '中国  吉林 长春', '电信', '2019-01-11', '2019-01-11 23:59:56', '吉林');
INSERT INTO `sys_statistics` VALUES ('0258389ba9d741239a6b16c0c0278ffa', '223.104.16.80', '中国  吉林 长春', '移动', '2019-03-10', '2019-03-10 21:09:41', '吉林');
INSERT INTO `sys_statistics` VALUES ('02592e0766b84016939b7d80d8b4b9af', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:06:05', 'XX');
INSERT INTO `sys_statistics` VALUES ('025aa6d67d974343b6fb0c8a9650f65c', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 11:44:15', '吉林');
INSERT INTO `sys_statistics` VALUES ('0277f3c3b31043d48ca43658ea241823', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 16:28:27', '吉林');
INSERT INTO `sys_statistics` VALUES ('028cf492ad2a42ffb911d9bb16b63e22', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-07', '2019-03-07 17:25:04', '吉林');
INSERT INTO `sys_statistics` VALUES ('02da264f49f64e698b6b1c28947b5303', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 14:15:12', '吉林');
INSERT INTO `sys_statistics` VALUES ('031a22de2839431b95f8e56f166117d1', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:16:46', 'XX');
INSERT INTO `sys_statistics` VALUES ('03203659e4bc40f387cd16f2b0eedf5f', '124.234.225.45', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 22:28:39', '吉林');
INSERT INTO `sys_statistics` VALUES ('0393454380e240a79a02d06b7cfd7a95', '36.104.51.72', '中国  吉林 长春', '电信', '2019-01-11', '2019-01-11 19:26:54', '吉林');
INSERT INTO `sys_statistics` VALUES ('03ac21949f8f4a97bb699bb71b5276d7', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 18:50:31', '吉林');
INSERT INTO `sys_statistics` VALUES ('03affbcbc323451796b3540bce79ad35', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 22:05:39', '吉林');
INSERT INTO `sys_statistics` VALUES ('03b545e4000442b0aff5d69f6d4eeac4', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:19:04', 'XX');
INSERT INTO `sys_statistics` VALUES ('03bde385b0314cddb04e614a82b023db', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-28', '2019-03-28 08:08:21', '吉林');
INSERT INTO `sys_statistics` VALUES ('03c892a4c55844709b217e80894dd974', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:25:24', '吉林');
INSERT INTO `sys_statistics` VALUES ('03e476fa628e49f6b39e3ed8947d1ef0', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:25:31', 'XX');
INSERT INTO `sys_statistics` VALUES ('0407e4cf35a54eacb949b52ed13045d3', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:13:06', '吉林');
INSERT INTO `sys_statistics` VALUES ('052a9f7722d44f2aafa2975e08732b94', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:08:13', 'XX');
INSERT INTO `sys_statistics` VALUES ('0572eb5d74624e94a3843d186e9df512', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:29:03', 'XX');
INSERT INTO `sys_statistics` VALUES ('0598ec28ee574398a3d8a49d85a48dd4', '111.26.36.117', '中国  吉林 吉林', '移动', '2019-02-16', '2019-02-16 19:59:19', '吉林');
INSERT INTO `sys_statistics` VALUES ('05c55f6fd6fd4e23b25290c61293130e', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 19:01:19', '吉林');
INSERT INTO `sys_statistics` VALUES ('05e7bddb119740988fe32bfaa91bfc32', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 18:53:35', '吉林');
INSERT INTO `sys_statistics` VALUES ('05ed94eeb81942c08f8a73b4e3932fda', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-03', '2019-01-03 00:27:31', 'XX');
INSERT INTO `sys_statistics` VALUES ('05f6f359fdf041f2bee7ba3f7cd9694e', '223.104.16.80', '中国  吉林 长春', '移动', '2019-03-10', '2019-03-10 21:09:42', '吉林');
INSERT INTO `sys_statistics` VALUES ('0610bc04a4f44715905bf71663ded4c4', '124.234.225.17', '中国  吉林 长春', '电信', '2019-01-11', '2019-01-11 22:39:27', '吉林');
INSERT INTO `sys_statistics` VALUES ('0611959b1f064524a3951e9fdfafc7a2', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 15:35:19', 'XX');
INSERT INTO `sys_statistics` VALUES ('06361b9a7ea04ed29bcf7bff7828bf65', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:15:50', 'XX');
INSERT INTO `sys_statistics` VALUES ('063e8785cb50436eac09b61389b00814', '36.104.26.201', '中国  吉林 长春', '电信', '2019-03-04', '2019-03-04 13:53:31', '吉林');
INSERT INTO `sys_statistics` VALUES ('065fb1976a51415c8526ab6056680510', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-07', '2019-03-07 22:54:00', '吉林');
INSERT INTO `sys_statistics` VALUES ('0660163cf23343a4b68d0904b45b4d40', '36.104.54.72', '中国  吉林 长春', '电信', '2019-01-08', '2019-01-08 17:21:05', '吉林');
INSERT INTO `sys_statistics` VALUES ('06a804f3514b4c8e9a7202725c3139a3', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 10:21:49', '吉林');
INSERT INTO `sys_statistics` VALUES ('07128f3110b2423398f71a521c42d099', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 20:47:43', '吉林');
INSERT INTO `sys_statistics` VALUES ('071364184ef7444a84078f3d1f654d46', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 18:06:17', '吉林');
INSERT INTO `sys_statistics` VALUES ('0719c56c0948495a990ec67b3d13d274', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-27', '2019-03-27 22:26:35', '吉林');
INSERT INTO `sys_statistics` VALUES ('072ce1959e174a118d3d6161b51b139c', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 14:13:40', '吉林');
INSERT INTO `sys_statistics` VALUES ('073db27d009f4bba8ed2380cb0e05e6f', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-07', '2019-03-07 17:13:16', '吉林');
INSERT INTO `sys_statistics` VALUES ('074115821bff4bfaba2087a18ef11e15', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 16:46:01', 'XX');
INSERT INTO `sys_statistics` VALUES ('0746695daf1d491f8817a25dba2abc42', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:51:55', 'XX');
INSERT INTO `sys_statistics` VALUES ('07466d440d4246ab84a871d90bf136a1', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 19:19:05', '吉林');
INSERT INTO `sys_statistics` VALUES ('075453c409244b0cafa28f531ce4dbe9', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:33:28', '吉林');
INSERT INTO `sys_statistics` VALUES ('076a0a370abb46158bb64e6312c245be', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 14:13:41', '吉林');
INSERT INTO `sys_statistics` VALUES ('07907a5578064bc88b30ba202cff2721', '36.48.113.165', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 16:26:33', '吉林');
INSERT INTO `sys_statistics` VALUES ('0792bf6898cc4dd7b30bbacf8c363393', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:19:40', 'XX');
INSERT INTO `sys_statistics` VALUES ('07c42cdf230546998868a06403b472ac', '123.172.56.82', '中国  吉林 长春', '电信', '2019-01-12', '2019-01-12 17:16:11', '吉林');
INSERT INTO `sys_statistics` VALUES ('07de7471e2aa44bd8a902090c7fb5e55', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 21:50:41', '吉林');
INSERT INTO `sys_statistics` VALUES ('0833eeab66c744febb02dbd3b9bb4d72', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 20:03:42', '吉林');
INSERT INTO `sys_statistics` VALUES ('084cfcf36ded4090a26453ecd2a931d5', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 19:47:26', '吉林');
INSERT INTO `sys_statistics` VALUES ('0852d96915964aabbb0846d488c55407', '111.26.36.117', '中国  吉林 吉林', '移动', '2019-02-16', '2019-02-16 20:02:04', '吉林');
INSERT INTO `sys_statistics` VALUES ('085f8cfccfd941e6be0fc2d8694b77fd', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 20:02:29', '吉林');
INSERT INTO `sys_statistics` VALUES ('08e46677e3e94c9099cf6ca1ef8b967c', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 23:48:40', 'XX');
INSERT INTO `sys_statistics` VALUES ('08edfcb234f6433288bbdb235c5cd342', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 12:46:48', 'XX');
INSERT INTO `sys_statistics` VALUES ('0910d04ad48a49049677cccd386b3c64', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:55:14', 'XX');
INSERT INTO `sys_statistics` VALUES ('094af68fa7f24040a438f7b1e18b67ec', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:31:27', 'XX');
INSERT INTO `sys_statistics` VALUES ('097ff45bdfda485a839b3d41f8fd2106', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 21:17:32', '吉林');
INSERT INTO `sys_statistics` VALUES ('09c3317ab8574ae5b7c28871c13d1033', '123.172.48.28', '中国  吉林 长春', '电信', '2019-01-11', '2019-01-11 19:46:50', '吉林');
INSERT INTO `sys_statistics` VALUES ('0a922e54ca9741339a84a23430d8f257', '123.172.56.82', '中国  吉林 长春', '电信', '2019-01-12', '2019-01-12 19:09:34', '吉林');
INSERT INTO `sys_statistics` VALUES ('0ad42b0e582f4df1b65d93186367e518', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:14:20', 'XX');
INSERT INTO `sys_statistics` VALUES ('0ad4e8776ad148ea9a029160e9584d96', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:10:53', 'XX');
INSERT INTO `sys_statistics` VALUES ('0ae04e737a9247f4908f430077d47510', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 20:06:22', '吉林');
INSERT INTO `sys_statistics` VALUES ('0ae3e1555d964034aba9eb88286250da', '218.247.142.216', '中国  北京 北京', '鹏博士', '2019-03-28', '2019-03-28 20:15:35', '北京');
INSERT INTO `sys_statistics` VALUES ('0ae97c3c3d47467992977ccb3b5c7289', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 22:57:43', '吉林');
INSERT INTO `sys_statistics` VALUES ('0b01862d15be4372b7b9e315f2ee5cdf', '36.104.51.39', '中国  吉林 长春', '电信', '2019-01-11', '2019-01-11 12:11:04', '吉林');
INSERT INTO `sys_statistics` VALUES ('0b3b38ae79784044925d332309ea3dcc', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 13:54:41', 'XX');
INSERT INTO `sys_statistics` VALUES ('0b3dac5990d4466cb2e6272709f10010', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 15:13:35', '吉林');
INSERT INTO `sys_statistics` VALUES ('0be6aee99ef540dc84daf2a90f80ad2f', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 19:23:04', '吉林');
INSERT INTO `sys_statistics` VALUES ('0c3c857dccbe4352bc17a9b80056a38b', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 19:08:51', '吉林');
INSERT INTO `sys_statistics` VALUES ('0c5001903b394235acac4d7695bdfb11', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 13:46:19', '吉林');
INSERT INTO `sys_statistics` VALUES ('0c8b2eab14244de08baf3ddff3f86e3e', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:18:45', 'XX');
INSERT INTO `sys_statistics` VALUES ('0cc147958fee484d87b61054f6fc2f0b', '123.172.48.28', '中国  吉林 长春', '电信', '2019-01-11', '2019-01-11 19:54:09', '吉林');
INSERT INTO `sys_statistics` VALUES ('0cc621f4f42c4573ab223e8a61588abd', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 15:29:33', 'XX');
INSERT INTO `sys_statistics` VALUES ('0cda16beb7ce4727a14e97b6b835d37e', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:20:13', 'XX');
INSERT INTO `sys_statistics` VALUES ('0d0fe5536b164c579e907b7edc73a69e', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 20:30:27', 'XX');
INSERT INTO `sys_statistics` VALUES ('0d112c5a590b4d9c90301218d309d8e2', '111.26.36.117', '中国  吉林 吉林', '移动', '2019-02-16', '2019-02-16 19:59:09', '吉林');
INSERT INTO `sys_statistics` VALUES ('0d6d655851d745f5a89e39b5305b0777', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 15:33:52', 'XX');
INSERT INTO `sys_statistics` VALUES ('0e23401645034a74b72e054edc068a73', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 14:20:00', '吉林');
INSERT INTO `sys_statistics` VALUES ('0e289db0eda946ac867074a086719ca8', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 23:00:22', '吉林');
INSERT INTO `sys_statistics` VALUES ('0e2b6925568349299dfdbdec21398779', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:14:33', 'XX');
INSERT INTO `sys_statistics` VALUES ('0e63b22bbad548989bacc80c4cb0173d', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 16:48:33', '吉林');
INSERT INTO `sys_statistics` VALUES ('0e90a0d7bd824961a32969cb69fb826f', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-28', '2019-03-28 07:49:48', '吉林');
INSERT INTO `sys_statistics` VALUES ('0ec08e5591ec44adae1d383f6cb80c1a', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 20:26:27', 'XX');
INSERT INTO `sys_statistics` VALUES ('0ecf47892f5d4e8d8bbf4edb3411a5ef', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 17:30:33', '吉林');
INSERT INTO `sys_statistics` VALUES ('0ee61671cabc451c9d2e698baf6e640a', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 22:55:54', 'XX');
INSERT INTO `sys_statistics` VALUES ('0ef44265024c4651a673bff230a52175', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:34:10', '吉林');
INSERT INTO `sys_statistics` VALUES ('0efab5db1c5243e79fd0f5c63b8800c9', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 10:41:14', 'XX');
INSERT INTO `sys_statistics` VALUES ('0f095d7ecd094f36a83d3914ee8ae8d7', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 18:42:55', '吉林');
INSERT INTO `sys_statistics` VALUES ('0f35a685a261437e843680725926c686', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:30:17', 'XX');
INSERT INTO `sys_statistics` VALUES ('0f396a2515244b79a36d8577c1d5e9b9', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:41:32', '吉林');
INSERT INTO `sys_statistics` VALUES ('0f4160392f534a22a1f2a2ee68ecf37c', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 16:14:36', '吉林');
INSERT INTO `sys_statistics` VALUES ('0f57608cbfa147c990274343260c17f0', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 16:25:56', 'XX');
INSERT INTO `sys_statistics` VALUES ('0fcba1852300498b98f3ee663e0fd254', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 16:36:07', '吉林');
INSERT INTO `sys_statistics` VALUES ('0fd503a9f9014fbab835bceb84b6a5c7', '111.26.36.117', '中国  吉林 吉林', '移动', '2019-02-16', '2019-02-16 19:52:23', '吉林');
INSERT INTO `sys_statistics` VALUES ('10201a1dee9b4c2ab5c9053b225bfa82', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 19:14:23', '吉林');
INSERT INTO `sys_statistics` VALUES ('1056e5eabcde4853b59c2f62c2b6ef8b', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:58:27', 'XX');
INSERT INTO `sys_statistics` VALUES ('109692f2a8b44bfc8c11a65121e9e8c6', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 22:49:35', 'XX');
INSERT INTO `sys_statistics` VALUES ('10bc5ff8ec8c4e629f4e08a00d2ef8b5', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 11:35:55', '吉林');
INSERT INTO `sys_statistics` VALUES ('1102b007d6f0476fb898e9776ac30b9b', '218.247.142.216', '中国  北京 北京', '鹏博士', '2019-03-28', '2019-03-28 20:15:40', '北京');
INSERT INTO `sys_statistics` VALUES ('11093bf45d0a47dbad887d6d031f4ba0', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 20:46:48', '吉林');
INSERT INTO `sys_statistics` VALUES ('11634a793f3e427081ae5aaf9d65d467', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 15:38:42', 'XX');
INSERT INTO `sys_statistics` VALUES ('1173129520ad4610bcf33b005ec50415', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 10:41:47', 'XX');
INSERT INTO `sys_statistics` VALUES ('1219ef103aa44245b690297033e1220e', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:28:25', 'XX');
INSERT INTO `sys_statistics` VALUES ('122000520a654ba392295b390ed1f428', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:26:07', 'XX');
INSERT INTO `sys_statistics` VALUES ('123047558c4d4a4ca70d86ab487de902', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 12:01:34', 'XX');
INSERT INTO `sys_statistics` VALUES ('1269dcfda33143e88b1795d4685883b8', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 23:47:13', 'XX');
INSERT INTO `sys_statistics` VALUES ('12be354f29e24ee291c76064c0326404', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:01:49', 'XX');
INSERT INTO `sys_statistics` VALUES ('1304d6ab40f84314b251c0727277db0a', '124.234.225.45', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 22:27:50', '吉林');
INSERT INTO `sys_statistics` VALUES ('131858e7515b47ac99629ecd448cc08f', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 11:46:01', '吉林');
INSERT INTO `sys_statistics` VALUES ('1345153245f641269c896e74c04dfb37', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 12:09:22', 'XX');
INSERT INTO `sys_statistics` VALUES ('13810ab7e7624e2ba17f228d2ca466de', '36.104.36.115', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 15:55:05', '吉林');
INSERT INTO `sys_statistics` VALUES ('139234ba213143c18ea578dc31607bcc', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 17:08:23', '吉林');
INSERT INTO `sys_statistics` VALUES ('13b1f1c43baf4398a284f91e11b38c26', '36.104.36.115', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 15:55:10', '吉林');
INSERT INTO `sys_statistics` VALUES ('13bb4fa9792a4160bd7bd1dc5f503eb1', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 19:18:32', '吉林');
INSERT INTO `sys_statistics` VALUES ('13bc9eb11cd649d0913d375ea8544059', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:25:11', '吉林');
INSERT INTO `sys_statistics` VALUES ('13bd728e47544610bb0586fcc473bd12', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 22:56:01', 'XX');
INSERT INTO `sys_statistics` VALUES ('13ebf89ed5b942bc9697e9e6a2c759cf', '124.234.225.45', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 22:05:31', '吉林');
INSERT INTO `sys_statistics` VALUES ('13f16a654e2d485b80e7632a016182e3', '123.172.48.28', '中国  吉林 长春', '电信', '2019-01-11', '2019-01-11 20:54:43', '吉林');
INSERT INTO `sys_statistics` VALUES ('1433c8624c5b48c997eab02b60350965', '36.104.26.201', '中国  吉林 长春', '电信', '2019-03-04', '2019-03-04 15:02:17', '吉林');
INSERT INTO `sys_statistics` VALUES ('145977c30cf440da82e15048253fc193', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 16:20:24', '吉林');
INSERT INTO `sys_statistics` VALUES ('14a4e7b893d645eba8883f7c9dc82d70', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 15:26:06', 'XX');
INSERT INTO `sys_statistics` VALUES ('14b86ac17a6d4bdeb4c0b7c3f4740893', '36.104.54.72', '中国  吉林 长春', '电信', '2019-01-08', '2019-01-08 17:53:23', '吉林');
INSERT INTO `sys_statistics` VALUES ('157e5c42f85c4168a11fc49d5ed9b305', '124.234.225.21', '中国  吉林 长春', '电信', '2019-03-04', '2019-03-04 21:27:33', '吉林');
INSERT INTO `sys_statistics` VALUES ('1583697bfd4d4213b89a82d098b66866', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 19:05:10', '吉林');
INSERT INTO `sys_statistics` VALUES ('15dd16dc3dd84d21a80e7a6f55790fd0', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 18:06:30', '吉林');
INSERT INTO `sys_statistics` VALUES ('15f220d65e9249c49ea13e37759e59cd', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:54:33', 'XX');
INSERT INTO `sys_statistics` VALUES ('1666ad1046f04ab0878afbf27b54820d', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 16:27:57', '吉林');
INSERT INTO `sys_statistics` VALUES ('168f757aeebd44c6a08fa5a6e504f8cc', '36.104.23.30', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 19:18:13', '吉林');
INSERT INTO `sys_statistics` VALUES ('16b1735f2e5b4386974c07ca4ebee724', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:28:46', 'XX');
INSERT INTO `sys_statistics` VALUES ('16c15a2c225b438a96fb0d92cfd7a549', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:14:26', 'XX');
INSERT INTO `sys_statistics` VALUES ('16c54ddcb3aa40a8a0f298d74ac05b1a', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-03', '2019-01-03 00:24:44', 'XX');
INSERT INTO `sys_statistics` VALUES ('16d519373c9f46f98eb5ffc16369d51f', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:19:13', 'XX');
INSERT INTO `sys_statistics` VALUES ('16dbb4c62efa4a678e65150096cea719', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 17:30:49', 'XX');
INSERT INTO `sys_statistics` VALUES ('175d1f7b8fe14fb690487b442e5efeae', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:13:51', 'XX');
INSERT INTO `sys_statistics` VALUES ('17719163460946ec818bdc33cfc6560b', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 16:45:50', '吉林');
INSERT INTO `sys_statistics` VALUES ('17853e1d1d5f48d78a901467c404776c', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 11:43:52', '吉林');
INSERT INTO `sys_statistics` VALUES ('17a6af6d6657434ebde334fdd3eda679', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 17:06:51', 'XX');
INSERT INTO `sys_statistics` VALUES ('17c62c6029fc46bb832239b1c30869df', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 16:15:26', '吉林');
INSERT INTO `sys_statistics` VALUES ('17fa700887a945d2a57010ed93c3fbfa', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 15:12:07', '吉林');
INSERT INTO `sys_statistics` VALUES ('1816f9cf14a54294920b5b7280b345e9', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:23:18', '吉林');
INSERT INTO `sys_statistics` VALUES ('18415e83d84e4d988deed408c2d1fa98', '36.104.54.72', '中国  吉林 长春', '电信', '2019-01-08', '2019-01-08 17:09:14', '吉林');
INSERT INTO `sys_statistics` VALUES ('18419816db38449fae04e0ab66a132b5', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 21:16:34', '吉林');
INSERT INTO `sys_statistics` VALUES ('1865e27d6f224205a3df8794eebe6f22', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 11:35:24', '吉林');
INSERT INTO `sys_statistics` VALUES ('18a7e6cd863c4779a65406aa383478e1', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:44:25', 'XX');
INSERT INTO `sys_statistics` VALUES ('1901908144a74bdf88fbc13e01dcc335', '36.48.113.165', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 16:28:30', '吉林');
INSERT INTO `sys_statistics` VALUES ('190b91d570be400c8eec7fd3bc959da1', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 22:12:17', 'XX');
INSERT INTO `sys_statistics` VALUES ('1918e7de411548f4b7612d80985c25f2', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 19:18:47', '吉林');
INSERT INTO `sys_statistics` VALUES ('193077d79e7c4bc89d42c0e9f3283e76', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:54:51', 'XX');
INSERT INTO `sys_statistics` VALUES ('196c60fde2664341a9ac320732dacbba', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:20:32', '吉林');
INSERT INTO `sys_statistics` VALUES ('19cfb1a35e894915887f18cfbe37fbc7', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:41:31', 'XX');
INSERT INTO `sys_statistics` VALUES ('19d0b9b7b8b0414d9aabf48dd8ebeeb9', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 18:03:15', '吉林');
INSERT INTO `sys_statistics` VALUES ('19d6a3c9a79e459381bba8033cb58d30', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:31:08', 'XX');
INSERT INTO `sys_statistics` VALUES ('19f5c63840a949f5bd31fdc80cb60bbd', '111.26.36.15', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 22:25:56', '吉林');
INSERT INTO `sys_statistics` VALUES ('1a199f388b3041b291b3cbf21a6eb699', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 13:54:43', 'XX');
INSERT INTO `sys_statistics` VALUES ('1a70616e061d4207b943f1b69bb50746', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-27', '2019-03-27 22:51:47', '吉林');
INSERT INTO `sys_statistics` VALUES ('1a9fb926ce4e4675aa5f3c25f56249d2', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:59:51', 'XX');
INSERT INTO `sys_statistics` VALUES ('1b073f936e654ab39a113a05ab2f5ec9', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 21:24:28', '吉林');
INSERT INTO `sys_statistics` VALUES ('1b08070d0a6c49778cbe980d7d614652', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:02:33', 'XX');
INSERT INTO `sys_statistics` VALUES ('1b2485289b3a44e6b0c61bc3e78cd7af', '36.104.51.219', '中国  吉林 长春', '电信', '2019-01-13', '2019-01-13 00:31:08', '吉林');
INSERT INTO `sys_statistics` VALUES ('1b2d2c4a4b484e218c6b3ed8820de868', '36.104.51.72', '中国  吉林 长春', '电信', '2019-01-11', '2019-01-11 18:30:07', '吉林');
INSERT INTO `sys_statistics` VALUES ('1b54bcca7e9440de97f103d3466da0da', '111.26.36.15', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 22:25:51', '吉林');
INSERT INTO `sys_statistics` VALUES ('1b6340466d224cbc9ed029600ef2bff0', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 18:43:04', '吉林');
INSERT INTO `sys_statistics` VALUES ('1ba2b136af00493aa7083d67eac16a7e', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 18:42:46', '吉林');
INSERT INTO `sys_statistics` VALUES ('1bc818847ec6442fb903a62f5c6a8a89', '223.104.16.80', '中国  吉林 长春', '移动', '2019-03-10', '2019-03-10 21:09:40', '吉林');
INSERT INTO `sys_statistics` VALUES ('1be22f65b15b4291ac3675ec5ae13177', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 12:08:17', 'XX');
INSERT INTO `sys_statistics` VALUES ('1bfd4ef8dc1449a091912023229ac652', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:18:15', 'XX');
INSERT INTO `sys_statistics` VALUES ('1c0265107bb74b038df445cf5c335127', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-07', '2019-03-07 18:30:08', '吉林');
INSERT INTO `sys_statistics` VALUES ('1c0868d82cec4a65a425aff7134034bc', '124.234.225.45', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 09:50:17', '吉林');
INSERT INTO `sys_statistics` VALUES ('1c1cb317bdbc4f4abdea24445065849f', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:13:53', 'XX');
INSERT INTO `sys_statistics` VALUES ('1c66e5c330cf48b4a382605cdb37a27d', '223.104.16.80', '中国  吉林 长春', '移动', '2019-03-10', '2019-03-10 21:05:12', '吉林');
INSERT INTO `sys_statistics` VALUES ('1c849e8ef23c4f919e15505fe0883429', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 10:41:43', 'XX');
INSERT INTO `sys_statistics` VALUES ('1d45781457234e89a448febe0404d685', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 18:30:20', '吉林');
INSERT INTO `sys_statistics` VALUES ('1d643b8990f344e28e5eb8b8cf0d3bab', '118.89.225.69', '中国  天津 天津', '电信', '2019-02-15', '2019-02-15 17:49:46', '天津');
INSERT INTO `sys_statistics` VALUES ('1d73a00806114fc28b3546d1807e8f34', '36.104.23.30', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 19:16:03', '吉林');
INSERT INTO `sys_statistics` VALUES ('1d98388f94e449cca0bf640d0e452620', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-04', '2019-03-04 19:54:30', '吉林');
INSERT INTO `sys_statistics` VALUES ('1d9e3a2898f84b5db69714f6635c319a', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 15:26:05', 'XX');
INSERT INTO `sys_statistics` VALUES ('1dc0ff0733b0493b928a3001e7d64d2a', '111.26.36.65', '中国  吉林 吉林', '移动', '2019-02-10', '2019-02-10 17:43:45', '吉林');
INSERT INTO `sys_statistics` VALUES ('1dd5ecf4f0be4cabb030d831e8453b89', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:54:13', 'XX');
INSERT INTO `sys_statistics` VALUES ('1ddf883fa8004aacb3d1abd4f0f13270', '36.104.51.39', '中国  吉林 长春', '电信', '2019-01-11', '2019-01-11 17:58:32', '吉林');
INSERT INTO `sys_statistics` VALUES ('1e3dda4b0f644284899688d2cf6083ed', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 12:29:05', 'XX');
INSERT INTO `sys_statistics` VALUES ('1e4edb5e8e5142c8be0d62e010673ebd', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:42:57', 'XX');
INSERT INTO `sys_statistics` VALUES ('1e9a0ba7dc3a4100a6ca3a440b54b4b2', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 10:26:29', '吉林');
INSERT INTO `sys_statistics` VALUES ('1e9b7a718d1a49508bfd722546a90299', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 09:44:46', '吉林');
INSERT INTO `sys_statistics` VALUES ('1e9cad92947742498d80b18df55558af', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:56:39', 'XX');
INSERT INTO `sys_statistics` VALUES ('1ec5e965dd70408d82de3531c0e9c820', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:19:09', 'XX');
INSERT INTO `sys_statistics` VALUES ('1eda4b76deea498aaf1187da6d47e6f1', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 16:31:36', 'XX');
INSERT INTO `sys_statistics` VALUES ('1f4b9ef61dee46c5aa1877064278b888', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:59:33', 'XX');
INSERT INTO `sys_statistics` VALUES ('1f53527870f644e2b3a28d0f59984b4c', '218.247.142.216', '中国  北京 北京', '鹏博士', '2019-03-28', '2019-03-28 20:07:45', '北京');
INSERT INTO `sys_statistics` VALUES ('1f9e22f7c82e4ac58c7cf51f1bc1aea2', '36.104.23.30', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 19:17:54', '吉林');
INSERT INTO `sys_statistics` VALUES ('1fd194df33d443f99b10708b2aa1ca43', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-03', '2019-01-03 00:26:12', 'XX');
INSERT INTO `sys_statistics` VALUES ('1fe65cbd83114edab56d0c8e29133bf9', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 12:45:04', 'XX');
INSERT INTO `sys_statistics` VALUES ('204bc65d6a1441faa2783690f70414f3', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 20:01:59', '吉林');
INSERT INTO `sys_statistics` VALUES ('205d67888dbb42abbeb9aeaab9038189', '223.104.16.80', '中国  吉林 长春', '移动', '2019-03-10', '2019-03-10 21:15:29', '吉林');
INSERT INTO `sys_statistics` VALUES ('2083d14aef9d459a9ef61956d91023bb', '36.48.113.165', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 16:25:29', '吉林');
INSERT INTO `sys_statistics` VALUES ('20a76f955a2a4f5082d0db62d04c0829', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:59:02', 'XX');
INSERT INTO `sys_statistics` VALUES ('20e6251dd1b2481c950059698d7acacb', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 20:02:44', '吉林');
INSERT INTO `sys_statistics` VALUES ('2102baca0a184abab8d243ad93916e9f', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 18:05:12', '吉林');
INSERT INTO `sys_statistics` VALUES ('211b39b4ee5b48fc9786f06f1acb50c4', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-27', '2019-03-27 22:45:13', '吉林');
INSERT INTO `sys_statistics` VALUES ('2124f47769ee4f4a9152039f617e59c9', '36.48.113.165', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 16:27:04', '吉林');
INSERT INTO `sys_statistics` VALUES ('2134e6985f4b4f1f992091e412b253db', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:14:30', 'XX');
INSERT INTO `sys_statistics` VALUES ('21574b2e3760449b85f1412a0acc7b92', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-27', '2019-03-27 22:56:48', '吉林');
INSERT INTO `sys_statistics` VALUES ('217561f243ac4cc8b2fea0ddab59df1f', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 23:48:13', 'XX');
INSERT INTO `sys_statistics` VALUES ('2185531e4b944f41a746969d90128d0f', '36.104.51.219', '中国  吉林 长春', '电信', '2019-01-13', '2019-01-13 00:11:35', '吉林');
INSERT INTO `sys_statistics` VALUES ('21c60c73218d4f8aad5a33a9ba8ff4c3', '111.26.36.117', '中国  吉林 吉林', '移动', '2019-02-16', '2019-02-16 20:00:22', '吉林');
INSERT INTO `sys_statistics` VALUES ('21e0a6b480a14d869374adf93384687a', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 16:01:48', '吉林');
INSERT INTO `sys_statistics` VALUES ('2221e3b151fa4c749599b8dbddaf630d', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 20:49:19', '吉林');
INSERT INTO `sys_statistics` VALUES ('22366d314e924209bf0d1b38070f778e', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 21:28:00', '吉林');
INSERT INTO `sys_statistics` VALUES ('224a36e177454ee2bd11b812dca1c31c', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-07', '2019-03-07 17:15:00', '吉林');
INSERT INTO `sys_statistics` VALUES ('224d678bee6c48e4a550d9a6ac4dacaf', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 15:25:36', 'XX');
INSERT INTO `sys_statistics` VALUES ('228ea1980fae4b9db864803a264a9477', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-03', '2019-01-03 00:26:18', 'XX');
INSERT INTO `sys_statistics` VALUES ('22f97f30f5c84834a65593c50eef4015', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 23:04:13', '吉林');
INSERT INTO `sys_statistics` VALUES ('2302dbc2107b416db3fc8cafeeceaa62', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 19:36:33', '吉林');
INSERT INTO `sys_statistics` VALUES ('2327775ff5c3447c86db6bee0b176a21', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:15:49', 'XX');
INSERT INTO `sys_statistics` VALUES ('23553a9c6bdb4d17842db468cfa6f0fe', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 16:34:45', '吉林');
INSERT INTO `sys_statistics` VALUES ('236c53a906d94b5eb3407a86ce6179f8', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 12:41:28', '吉林');
INSERT INTO `sys_statistics` VALUES ('2384a30557174410baca616895541f59', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 21:15:33', '吉林');
INSERT INTO `sys_statistics` VALUES ('241a31ff763c4c7db8f587f2c9fbc8ed', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 15:29:28', 'XX');
INSERT INTO `sys_statistics` VALUES ('2442259837704210b52ab574296a321e', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 12:44:56', '吉林');
INSERT INTO `sys_statistics` VALUES ('2456e1a7a3a74163bb84acb3142af289', '36.104.23.30', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 19:18:09', '吉林');
INSERT INTO `sys_statistics` VALUES ('247178b7dbc94214b5f5c8857ae5449c', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 00:13:51', 'XX');
INSERT INTO `sys_statistics` VALUES ('2485bb8383ea4186ad048d336054ec64', '36.48.113.165', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 16:27:36', '吉林');
INSERT INTO `sys_statistics` VALUES ('24b39844713b48ee89e88cd044526f10', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:18:50', 'XX');
INSERT INTO `sys_statistics` VALUES ('24c6d2902d4c465bbfa1da75f1363a3f', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-27', '2019-03-27 22:50:32', '吉林');
INSERT INTO `sys_statistics` VALUES ('24d696cdf1db4c5ba509be0fa83aae19', '36.104.51.72', '中国  吉林 长春', '电信', '2019-01-11', '2019-01-11 20:04:42', '吉林');
INSERT INTO `sys_statistics` VALUES ('24e9bb8ce27943c084bc44a12d84ae8e', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 13:32:58', '吉林');
INSERT INTO `sys_statistics` VALUES ('25063482d13c4f0593f838bdc500824e', '36.104.51.72', '中国  吉林 长春', '电信', '2019-01-11', '2019-01-11 19:26:42', '吉林');
INSERT INTO `sys_statistics` VALUES ('25095d20dc5146c7a41362ea762afd5b', '124.234.225.45', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 22:33:27', '吉林');
INSERT INTO `sys_statistics` VALUES ('250e6603d26d47109d6330dd491dc7b8', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 20:17:13', 'XX');
INSERT INTO `sys_statistics` VALUES ('257ef678079e4bad9a4814000bde2e9c', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 11:08:18', '吉林');
INSERT INTO `sys_statistics` VALUES ('25863e76a5b14527b89e08e2aae8eeb7', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 15:43:14', 'XX');
INSERT INTO `sys_statistics` VALUES ('25b8cd0a7518454f8e291de49d98ac02', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 17:02:11', 'XX');
INSERT INTO `sys_statistics` VALUES ('25f4a751b9fc4cf2b2bc405c73e6dbe3', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:33:30', 'XX');
INSERT INTO `sys_statistics` VALUES ('264eb7fa0ab64b019219af93a49315a2', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 16:17:36', '吉林');
INSERT INTO `sys_statistics` VALUES ('264f29e296a946b9955a8b5d39efc724', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:20:55', '吉林');
INSERT INTO `sys_statistics` VALUES ('26b69771eda14de680d9a599169052bb', '111.26.36.117', '中国  吉林 吉林', '移动', '2019-02-16', '2019-02-16 19:58:39', '吉林');
INSERT INTO `sys_statistics` VALUES ('26d7aaaae02148ee80ac0a112a00310d', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 12:44:55', '吉林');
INSERT INTO `sys_statistics` VALUES ('26d85297b0fd43fbb673baf1ac24e7eb', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 22:57:11', 'XX');
INSERT INTO `sys_statistics` VALUES ('26ee5587187d45fa91b6fd97da058850', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 13:35:54', '吉林');
INSERT INTO `sys_statistics` VALUES ('26ee8a08fb334dd4996cdb7f2f3e66eb', '124.234.225.105', '中国  吉林 长春', '电信', '2019-01-13', '2019-01-13 15:33:04', '吉林');
INSERT INTO `sys_statistics` VALUES ('26f6c4cda06b489594433a2df164f3af', '124.234.225.105', '中国  吉林 长春', '电信', '2019-01-13', '2019-01-13 15:34:51', '吉林');
INSERT INTO `sys_statistics` VALUES ('26fd8531b26847e68da3a0133d069c65', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 12:19:26', '吉林');
INSERT INTO `sys_statistics` VALUES ('270b958ad0dd49228e899a90662d172a', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:50:52', 'XX');
INSERT INTO `sys_statistics` VALUES ('270c578c500c4054ae31720cd58b8791', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 21:56:24', '吉林');
INSERT INTO `sys_statistics` VALUES ('270df01c847e4b9b97ba5a884db8f681', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:52:49', 'XX');
INSERT INTO `sys_statistics` VALUES ('272d0e4848fe485692b6d07b5b5f3e96', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 20:48:31', '吉林');
INSERT INTO `sys_statistics` VALUES ('27c5f22345834c53a831b7190560e629', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 12:20:37', '吉林');
INSERT INTO `sys_statistics` VALUES ('27d052099a18424992465669a3a55fcd', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 18:48:56', '吉林');
INSERT INTO `sys_statistics` VALUES ('27f65e2a35a044089c65f4b311dcfc2c', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:15:21', '吉林');
INSERT INTO `sys_statistics` VALUES ('281de610c7b04122b280aa59f91be9a9', '111.26.36.117', '中国  吉林 吉林', '移动', '2019-02-16', '2019-02-16 17:48:33', '吉林');
INSERT INTO `sys_statistics` VALUES ('2820add672234f2d8052d777b7beac4f', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 00:21:55', 'XX');
INSERT INTO `sys_statistics` VALUES ('283cba0bba244b53b1f3c1d40ce8dd0a', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:17:30', 'XX');
INSERT INTO `sys_statistics` VALUES ('283e2a019ffb475a995a9f5eaac7516e', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:33:06', 'XX');
INSERT INTO `sys_statistics` VALUES ('289e6694d7094bd094dda019d09af982', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:29:53', 'XX');
INSERT INTO `sys_statistics` VALUES ('28a1acac3eb84b1e8edf9c142e2cb688', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 14:44:07', '吉林');
INSERT INTO `sys_statistics` VALUES ('28ec7c80ac5a4a76b80423edf114ff68', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:58:23', 'XX');
INSERT INTO `sys_statistics` VALUES ('2950224cd5234ecd94cafd3c0be1b407', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:47:45', 'XX');
INSERT INTO `sys_statistics` VALUES ('2958061cb23340b6a5d30bd0ee1bb74e', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 16:30:15', 'XX');
INSERT INTO `sys_statistics` VALUES ('29911ae7a4c64c84a0082d92d32743ba', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:14:29', '吉林');
INSERT INTO `sys_statistics` VALUES ('29b91d2cd144466b968e2c41efee5700', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 15:38:42', 'XX');
INSERT INTO `sys_statistics` VALUES ('2a256cbb08554f37bd7bb9b471bb2872', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 22:49:39', 'XX');
INSERT INTO `sys_statistics` VALUES ('2a4534c1dcce4798b6187249dea9d7f9', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-07', '2019-03-07 22:35:54', '吉林');
INSERT INTO `sys_statistics` VALUES ('2aa3d2ab0fd74bb9ad17daa605c2a973', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 22:09:57', 'XX');
INSERT INTO `sys_statistics` VALUES ('2aac11d38bc8486ba3794060477c233b', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 17:30:11', '吉林');
INSERT INTO `sys_statistics` VALUES ('2ae67eba62e2481b92c7f05ee6de000f', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:35:49', 'XX');
INSERT INTO `sys_statistics` VALUES ('2aeec51c7a4d4035a3cac096ae154f00', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 15:25:03', 'XX');
INSERT INTO `sys_statistics` VALUES ('2af0b77b46c34733895fe0dae0c31556', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 19:54:06', '吉林');
INSERT INTO `sys_statistics` VALUES ('2b287692bbb6450ab450fbf5d68042ad', '36.48.113.165', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 16:27:03', '吉林');
INSERT INTO `sys_statistics` VALUES ('2bb873297f454ed683622f761557d110', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:25:27', '吉林');
INSERT INTO `sys_statistics` VALUES ('2be3182e165a42f48bc3f5f648f9e3f4', '123.172.48.28', '中国  吉林 长春', '电信', '2019-01-11', '2019-01-11 19:45:22', '吉林');
INSERT INTO `sys_statistics` VALUES ('2c2daf2c3f444e5daf928a5db3cdc267', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 12:41:47', '吉林');
INSERT INTO `sys_statistics` VALUES ('2c4bef442be3479980b0f6b9c339d9b2', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 20:03:56', '吉林');
INSERT INTO `sys_statistics` VALUES ('2c7328ccab9f44a2ac1ea5a956bb41fc', '36.104.23.88', '中国  吉林 长春', '电信', '2019-02-16', '2019-02-16 08:50:55', '吉林');
INSERT INTO `sys_statistics` VALUES ('2c8a67e4e7cb4d3e854592cb672af1d2', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-27', '2019-03-27 22:55:28', '吉林');
INSERT INTO `sys_statistics` VALUES ('2c8dd95fc02b474995d473c96042a6f3', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:47:33', 'XX');
INSERT INTO `sys_statistics` VALUES ('2cc80d89aa4c40d6a9262a7ff5114311', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 12:41:41', '吉林');
INSERT INTO `sys_statistics` VALUES ('2cdcd78c7fc94ad081af19637ba4f3eb', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:37:09', 'XX');
INSERT INTO `sys_statistics` VALUES ('2cf67284be4a4d3491edc3136bc443de', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 14:14:53', '吉林');
INSERT INTO `sys_statistics` VALUES ('2d46552fb2344f07bbdb43023862df2e', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 15:27:25', 'XX');
INSERT INTO `sys_statistics` VALUES ('2d5215bfc1a74c089348999730995a79', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 18:40:30', '吉林');
INSERT INTO `sys_statistics` VALUES ('2d62816bc5114ad6ae2e6ebe86244d2e', '123.172.56.82', '中国  吉林 长春', '电信', '2019-01-12', '2019-01-12 19:51:48', '吉林');
INSERT INTO `sys_statistics` VALUES ('2d70159dcfe44054885c7771e842ad7d', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 16:31:41', 'XX');
INSERT INTO `sys_statistics` VALUES ('2d771372528b438db3ac8db938745033', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 16:31:46', '吉林');
INSERT INTO `sys_statistics` VALUES ('2db64856371b43058d5125c782a459b1', '124.234.225.105', '中国  吉林 长春', '电信', '2019-01-13', '2019-01-13 18:53:08', '吉林');
INSERT INTO `sys_statistics` VALUES ('2de6426938f541dc8b2c2d95989a6b45', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 16:07:47', '吉林');
INSERT INTO `sys_statistics` VALUES ('2e314a65b45646e9bac2ce0e60b07f0a', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 20:01:59', '吉林');
INSERT INTO `sys_statistics` VALUES ('2e5aa130a2c84a0ca9c4808fdf767fb0', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 18:22:20', '吉林');
INSERT INTO `sys_statistics` VALUES ('2ea247bf426e498abd53cba0a3680b4a', '36.104.24.43', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 13:24:50', '吉林');
INSERT INTO `sys_statistics` VALUES ('2eebd107d1214ced9239e6102b27bae2', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 15:38:30', 'XX');
INSERT INTO `sys_statistics` VALUES ('2efdebc0280d448cbb6b418aca714ea1', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:48:51', 'XX');
INSERT INTO `sys_statistics` VALUES ('2f1501deb6294da7ada85b1c65d39817', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 19:51:30', '吉林');
INSERT INTO `sys_statistics` VALUES ('2f346c25a51f4b519d358717011d4a69', '124.234.225.45', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 22:28:50', '吉林');
INSERT INTO `sys_statistics` VALUES ('2f7aca0dd47e4f638df7fac61b228e03', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 20:05:16', '吉林');
INSERT INTO `sys_statistics` VALUES ('2fa540146add45e7b64ad1c8a96109d8', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:20:31', 'XX');
INSERT INTO `sys_statistics` VALUES ('2fc1ab93cce741469caa7dadb5e5472d', '123.172.48.28', '中国  吉林 长春', '电信', '2019-01-11', '2019-01-11 19:46:53', '吉林');
INSERT INTO `sys_statistics` VALUES ('2ff988e79ff0404ebc29d8395976b416', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 18:50:48', '吉林');
INSERT INTO `sys_statistics` VALUES ('3008d7e2dc9b49efa1870decbc273649', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 15:50:25', '吉林');
INSERT INTO `sys_statistics` VALUES ('301085f0975b44fa85674341b8dbd091', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 16:10:29', '吉林');
INSERT INTO `sys_statistics` VALUES ('301463b6f92f420c99cd6a700da60d70', '223.104.16.80', '中国  吉林 长春', '移动', '2019-03-10', '2019-03-10 21:15:19', '吉林');
INSERT INTO `sys_statistics` VALUES ('302990425fac456997adb402c5e0522f', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 12:00:02', 'XX');
INSERT INTO `sys_statistics` VALUES ('3061a48623c047109cef0cd357dac0cb', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:42:53', '吉林');
INSERT INTO `sys_statistics` VALUES ('307e15518ec0410a9da9db56189b5191', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:20:00', 'XX');
INSERT INTO `sys_statistics` VALUES ('3090d745f9f543f0b80d04f6e1a80832', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:03:30', 'XX');
INSERT INTO `sys_statistics` VALUES ('30c0d720249d42c38e43f8f01fa8e9fe', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 22:51:23', 'XX');
INSERT INTO `sys_statistics` VALUES ('30c6ea58c3834dfca43816246e51c626', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 12:19:24', '吉林');
INSERT INTO `sys_statistics` VALUES ('30cdbad03b5b47fc94cc230d6dde360c', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:21:16', '吉林');
INSERT INTO `sys_statistics` VALUES ('313064af5c6e4b5bb7d246747f480ed5', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 16:28:43', '吉林');
INSERT INTO `sys_statistics` VALUES ('3142674e677f4cb194336121e38b1877', '218.247.142.216', '中国  北京 北京', '鹏博士', '2019-03-28', '2019-03-28 20:07:43', '北京');
INSERT INTO `sys_statistics` VALUES ('31455529c7a645319643e154de1f3ed2', '36.49.187.12', '中国  吉林 长春', '电信', '2019-03-04', '2019-03-04 15:42:36', '吉林');
INSERT INTO `sys_statistics` VALUES ('317b914261f7487f97190c06db836e12', '36.104.23.30', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 19:15:34', '吉林');
INSERT INTO `sys_statistics` VALUES ('3191a4efeef84bd4aaed56e1bbd75d20', '124.234.225.105', '中国  吉林 长春', '电信', '2019-01-13', '2019-01-13 17:58:33', '吉林');
INSERT INTO `sys_statistics` VALUES ('31ad0a425a1649fd98052c7cd9c36c65', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 17:12:28', 'XX');
INSERT INTO `sys_statistics` VALUES ('32171343691848508946a0de8e304bfe', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-03', '2019-01-03 00:26:00', 'XX');
INSERT INTO `sys_statistics` VALUES ('3218cd0b9c9f476097f8075de2770861', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 15:16:33', 'XX');
INSERT INTO `sys_statistics` VALUES ('325a117909064077811b0e1b48af4925', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 17:53:24', '吉林');
INSERT INTO `sys_statistics` VALUES ('326d18d3c85a4fedab119ec4e4187e81', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 16:10:41', '吉林');
INSERT INTO `sys_statistics` VALUES ('327fc12d136d47dca5df5bfd47c64395', '36.104.54.72', '中国  吉林 长春', '电信', '2019-01-08', '2019-01-08 17:24:54', '吉林');
INSERT INTO `sys_statistics` VALUES ('328fe05d04e6453aa83bd79034f664af', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 16:45:10', 'XX');
INSERT INTO `sys_statistics` VALUES ('32d2d451ede741b2ad85c4640666da08', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 19:54:08', '吉林');
INSERT INTO `sys_statistics` VALUES ('33052757f5404503a1640af900f7f4db', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-27', '2019-03-27 22:58:35', '吉林');
INSERT INTO `sys_statistics` VALUES ('3355db3a42fc424fbb2b697af4fdc7bd', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 16:31:17', 'XX');
INSERT INTO `sys_statistics` VALUES ('335a0d3742f34323a7e72405fc9b7144', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 18:08:50', '吉林');
INSERT INTO `sys_statistics` VALUES ('335b15209ea04d4a8326fec3584d3ee0', '123.172.56.82', '中国  吉林 长春', '电信', '2019-01-12', '2019-01-12 19:52:44', '吉林');
INSERT INTO `sys_statistics` VALUES ('336c926428ea4500a33a8b8801a79919', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:52:56', 'XX');
INSERT INTO `sys_statistics` VALUES ('3382373b6f024670a0ea351431f9700a', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:28:23', 'XX');
INSERT INTO `sys_statistics` VALUES ('3387d02b365d4d1f88ca6abf7706b5d1', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 19:08:49', '吉林');
INSERT INTO `sys_statistics` VALUES ('33a66081f3bd4de58f703754bf7ce889', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 16:31:36', 'XX');
INSERT INTO `sys_statistics` VALUES ('33d17e4fecf8463aa0f187aca65de29a', '111.26.36.117', '中国  吉林 吉林', '移动', '2019-02-16', '2019-02-16 19:52:02', '吉林');
INSERT INTO `sys_statistics` VALUES ('34051d01e7574e0d869bf205130da4bb', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:55:13', 'XX');
INSERT INTO `sys_statistics` VALUES ('340f2345abe84100b836d5a80895fe28', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 17:13:42', 'XX');
INSERT INTO `sys_statistics` VALUES ('341d687921e948ffa27cc11e205a910d', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 16:45:15', 'XX');
INSERT INTO `sys_statistics` VALUES ('347912446af6480eaa25eba5c97f8eb3', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 20:02:54', '吉林');
INSERT INTO `sys_statistics` VALUES ('3480e8e3218542388785f9a19caff1a3', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 15:49:00', '吉林');
INSERT INTO `sys_statistics` VALUES ('34ced722de854a2a9ef6aa555be844dc', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 15:37:48', 'XX');
INSERT INTO `sys_statistics` VALUES ('34e861e8168a47ee8105f628d5919db5', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 17:19:36', 'XX');
INSERT INTO `sys_statistics` VALUES ('34f9d46726114dffb5a352326c41dfa7', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 12:45:56', 'XX');
INSERT INTO `sys_statistics` VALUES ('352f4547ab1344e8a3991b96087eac2a', '36.104.26.201', '中国  吉林 长春', '电信', '2019-03-04', '2019-03-04 13:12:58', '吉林');
INSERT INTO `sys_statistics` VALUES ('353f98f4a4b14f59907729d44349f0f9', '36.104.26.201', '中国  吉林 长春', '电信', '2019-03-04', '2019-03-04 13:23:18', '吉林');
INSERT INTO `sys_statistics` VALUES ('358a6828c2254564afe2ddf9a00b898e', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 15:33:51', 'XX');
INSERT INTO `sys_statistics` VALUES ('35ff9a15139e470ebecc50ede546b0be', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 00:12:32', 'XX');
INSERT INTO `sys_statistics` VALUES ('365116a4610443e1b5eba58c3a356d7a', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:17:40', 'XX');
INSERT INTO `sys_statistics` VALUES ('3666a49f60b845098ae4b7b636f2c123', '111.26.36.65', '中国  吉林 吉林', '移动', '2019-02-10', '2019-02-10 19:38:27', '吉林');
INSERT INTO `sys_statistics` VALUES ('36efd840e9a548e8a1040f9fe21e9ff9', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:51:34', 'XX');
INSERT INTO `sys_statistics` VALUES ('3709008a8ff541d8a86380e4129025b2', '117.136.190.16', '中国  北京 北京', '移动', '2019-02-25', '2019-02-25 20:59:10', '北京');
INSERT INTO `sys_statistics` VALUES ('370c0a47367742f491e66eeec49f7098', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 17:48:43', '吉林');
INSERT INTO `sys_statistics` VALUES ('373e8fa1b223486bb1c2a4fbc45e0117', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:20:07', 'XX');
INSERT INTO `sys_statistics` VALUES ('3748feabb1b04dc78e0edb1620ab1eb0', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 15:27:34', 'XX');
INSERT INTO `sys_statistics` VALUES ('374e44dfe4024b56b1fc1a7b9b649aa3', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-27', '2019-03-27 22:55:12', '吉林');
INSERT INTO `sys_statistics` VALUES ('376d5cec079f46fca5f5e3687d3990f7', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:27:43', 'XX');
INSERT INTO `sys_statistics` VALUES ('376dff4ad41747509b6d7207cc469a10', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:20:04', '吉林');
INSERT INTO `sys_statistics` VALUES ('37791d13afb0422a92f6d656c15bf4b8', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:29:11', 'XX');
INSERT INTO `sys_statistics` VALUES ('37817be6daaa4324ba57ed329e90717a', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:36:44', '吉林');
INSERT INTO `sys_statistics` VALUES ('37a1e76fbb2548eeaf3f1c2920b2729d', '124.234.225.45', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 21:55:08', '吉林');
INSERT INTO `sys_statistics` VALUES ('37a64f3c8e564efb80ecd9c7e9b0abde', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 17:17:33', '吉林');
INSERT INTO `sys_statistics` VALUES ('37ad978f88a746c0b9076c0dfab55c5d', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 10:48:29', 'XX');
INSERT INTO `sys_statistics` VALUES ('37d47f7815d54d789f272349c090069d', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 20:36:40', '吉林');
INSERT INTO `sys_statistics` VALUES ('37e7ec64f87c4d2aa79f17d9d6ce458c', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:56:36', 'XX');
INSERT INTO `sys_statistics` VALUES ('3811b13f87104d51aee121dfbeb3adc1', '124.234.225.45', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 21:36:32', '吉林');
INSERT INTO `sys_statistics` VALUES ('381dd4fa705947d69ae6f4dc215f4819', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 22:49:40', 'XX');
INSERT INTO `sys_statistics` VALUES ('383b81c4a3f44c59ae1c66913854e007', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 09:51:37', '吉林');
INSERT INTO `sys_statistics` VALUES ('389799d799bb43d8ab7ce862b70c3e5c', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 14:58:38', '吉林');
INSERT INTO `sys_statistics` VALUES ('39077dc4acf246a490024ae6c1aec66e', '124.234.225.105', '中国  吉林 长春', '电信', '2019-01-13', '2019-01-13 14:11:30', '吉林');
INSERT INTO `sys_statistics` VALUES ('390947706bbe47fdaebe7b9f72f39cb2', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 12:43:54', '吉林');
INSERT INTO `sys_statistics` VALUES ('390ff78f69ca4293879e3a1a866d1f2e', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 20:02:01', '吉林');
INSERT INTO `sys_statistics` VALUES ('3924403fda9941be8879ad2aec2d9ddf', '36.104.51.219', '中国  吉林 长春', '电信', '2019-01-13', '2019-01-13 00:11:36', '吉林');
INSERT INTO `sys_statistics` VALUES ('39361e11da044aeeaefcf915bf21fc81', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 10:47:09', 'XX');
INSERT INTO `sys_statistics` VALUES ('397793170c204be088cb01d0d13188ed', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 00:21:58', 'XX');
INSERT INTO `sys_statistics` VALUES ('39b5609d389b4315818eb669e6ae5c59', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 20:24:13', 'XX');
INSERT INTO `sys_statistics` VALUES ('39c9d205222d407e9aa30874176612e9', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 21:58:54', '吉林');
INSERT INTO `sys_statistics` VALUES ('3a0d971f7e1f4a8f88c38b5f2bc4ea1f', '111.26.36.15', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 22:26:17', '吉林');
INSERT INTO `sys_statistics` VALUES ('3a5bd75e42da410dbd1b4a1c3d43b420', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 15:33:49', 'XX');
INSERT INTO `sys_statistics` VALUES ('3a5fedc4c0aa4eb9ae713f1681f994d7', '111.26.36.117', '中国  吉林 吉林', '移动', '2019-02-16', '2019-02-16 20:00:20', '吉林');
INSERT INTO `sys_statistics` VALUES ('3a8d9b6bbc9b4ebe86b3e79950ca24b0', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 19:47:22', '吉林');
INSERT INTO `sys_statistics` VALUES ('3a9ddba1fe9f4f49ba80dd1eb7cb2b25', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:26:48', 'XX');
INSERT INTO `sys_statistics` VALUES ('3aa02d17209b461ca0ef94069e403480', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:27:00', 'XX');
INSERT INTO `sys_statistics` VALUES ('3acc272387cf4b45b877cee453730bcf', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-28', '2019-03-28 08:08:30', '吉林');
INSERT INTO `sys_statistics` VALUES ('3ad5285c722a44d4883de5926b3749a9', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:18:50', 'XX');
INSERT INTO `sys_statistics` VALUES ('3ad6f91158484416bd686ef63394cc4b', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 12:41:37', '吉林');
INSERT INTO `sys_statistics` VALUES ('3b15f682717642a3926fa956d8e99a42', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:18:49', 'XX');
INSERT INTO `sys_statistics` VALUES ('3b68324743cf4647810db1ff5cd2b5ae', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 15:57:39', '吉林');
INSERT INTO `sys_statistics` VALUES ('3b78fc387d0a4af198cdce73881a2035', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 19:49:25', '吉林');
INSERT INTO `sys_statistics` VALUES ('3bba9b133f63470d9b184a22b813d94f', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 16:46:45', '吉林');
INSERT INTO `sys_statistics` VALUES ('3bee88382ea04930b37abc2563d55dc6', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 23:05:18', 'XX');
INSERT INTO `sys_statistics` VALUES ('3c07b095b1414156bf990fea8fbbf984', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 18:47:03', '吉林');
INSERT INTO `sys_statistics` VALUES ('3c36c1b12b944b42a1b7afb36bc59cfb', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 16:40:42', '吉林');
INSERT INTO `sys_statistics` VALUES ('3c451cfe0fe14d11a598793bfdabc24e', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 16:37:21', '吉林');
INSERT INTO `sys_statistics` VALUES ('3c4b3d5b80bf4b0fb574b1fb02a106bf', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 16:27:39', 'XX');
INSERT INTO `sys_statistics` VALUES ('3c76b1e311cf42ce9a815729b489ea89', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:41:28', 'XX');
INSERT INTO `sys_statistics` VALUES ('3c919d9c59c44a39a95565e41a4a189c', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 15:57:57', 'XX');
INSERT INTO `sys_statistics` VALUES ('3ca610821c0a4619845ea875a1721836', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 12:00:20', 'XX');
INSERT INTO `sys_statistics` VALUES ('3cb4ce587d5145bfa28d3ca11aa14b34', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 11:35:33', '吉林');
INSERT INTO `sys_statistics` VALUES ('3cc6615afc2e452684965c75031c8b16', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:36:46', 'XX');
INSERT INTO `sys_statistics` VALUES ('3cebd730945840d2b68ede4f0ad9e587', '36.104.51.39', '中国  吉林 长春', '电信', '2019-01-11', '2019-01-11 11:47:23', '吉林');
INSERT INTO `sys_statistics` VALUES ('3d0cc22be9624dd9925c222cfb3fc087', '111.26.36.117', '中国  吉林 吉林', '移动', '2019-02-16', '2019-02-16 19:58:51', '吉林');
INSERT INTO `sys_statistics` VALUES ('3d27a77b93e24644a81de3ee8526471b', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 15:13:18', 'XX');
INSERT INTO `sys_statistics` VALUES ('3d32646e436d483a8437b0924bebeeb7', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 15:12:05', '吉林');
INSERT INTO `sys_statistics` VALUES ('3d6c71fc64de4f1e8e127bc70a8380dc', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 00:20:17', 'XX');
INSERT INTO `sys_statistics` VALUES ('3d72048fa7ac4dd78de665fa0ebb8801', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 11:35:26', '吉林');
INSERT INTO `sys_statistics` VALUES ('3da959d6496e43a39000c1702f5396b1', '36.104.54.72', '中国  吉林 长春', '电信', '2019-01-08', '2019-01-08 17:21:52', '吉林');
INSERT INTO `sys_statistics` VALUES ('3e0a49fda6e94510ad3df211b2b078e2', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-03', '2019-01-03 00:26:55', 'XX');
INSERT INTO `sys_statistics` VALUES ('3e1e5754d7594f948e909865a7ef8d6e', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:54:32', 'XX');
INSERT INTO `sys_statistics` VALUES ('3e247b1971cd4d47ac4965cab16366dd', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 20:03:51', '吉林');
INSERT INTO `sys_statistics` VALUES ('3e28f69d440b44c383d7a0f80533eae5', '117.136.58.128', '中国  吉林 XX', '移动', '2019-02-14', '2019-02-14 15:58:04', '吉林');
INSERT INTO `sys_statistics` VALUES ('3e2f1f952ddf414794839dea28756525', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:20:14', 'XX');
INSERT INTO `sys_statistics` VALUES ('3eb854bc5bed4a4a8f33c88e18da1348', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 22:57:10', 'XX');
INSERT INTO `sys_statistics` VALUES ('3edd8b03689e4c8181df9d744f3aa92c', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:21:13', '吉林');
INSERT INTO `sys_statistics` VALUES ('3eff858c9b0f487a92734b4bfcd6758e', '123.172.56.82', '中国  吉林 长春', '电信', '2019-01-12', '2019-01-12 19:57:53', '吉林');
INSERT INTO `sys_statistics` VALUES ('3f16ebcc7451497bb6873e9e7525156b', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 21:27:41', '吉林');
INSERT INTO `sys_statistics` VALUES ('3f32dfef56f8436bbd19b4293de1ee01', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 14:44:17', '吉林');
INSERT INTO `sys_statistics` VALUES ('3f3ccc9d1e20479c8238676b25c51364', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:33:23', 'XX');
INSERT INTO `sys_statistics` VALUES ('3f893a122bff4f5ab43e3c87d1e2d7fb', '223.104.16.80', '中国  吉林 长春', '移动', '2019-03-10', '2019-03-10 21:21:11', '吉林');
INSERT INTO `sys_statistics` VALUES ('3f8d0f709b4240afb121208897103987', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 16:31:39', 'XX');
INSERT INTO `sys_statistics` VALUES ('3fae8b8ecf054b1a9f14ebb5c24fd229', '111.26.36.117', '中国  吉林 吉林', '移动', '2019-02-16', '2019-02-16 19:56:17', '吉林');
INSERT INTO `sys_statistics` VALUES ('3fcf2aff22504c4eb47acba0d053860a', '124.234.225.45', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 22:33:08', '吉林');
INSERT INTO `sys_statistics` VALUES ('3ffe9dbfd17a43ed9666bef97c685851', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 10:40:47', 'XX');
INSERT INTO `sys_statistics` VALUES ('401806e441a549e08014a283673738fe', '124.234.225.45', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 22:02:07', '吉林');
INSERT INTO `sys_statistics` VALUES ('401a0e5b4a22430ba14d67677d58e2ed', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 17:48:49', '吉林');
INSERT INTO `sys_statistics` VALUES ('401b29ca584445328b69098965c21488', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:41:50', 'XX');
INSERT INTO `sys_statistics` VALUES ('4035131c889743829ee3447deffacc90', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:28:51', 'XX');
INSERT INTO `sys_statistics` VALUES ('403a0cf542924eab97bafcfe89e028eb', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 19:42:09', '吉林');
INSERT INTO `sys_statistics` VALUES ('4064a88542a84df596cf72494943b5ef', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 12:34:43', '吉林');
INSERT INTO `sys_statistics` VALUES ('4066cb79288d4a0dbc7e1f58374c8cbd', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:23:23', '吉林');
INSERT INTO `sys_statistics` VALUES ('407c72a054ed4f6482262b30bb537dd8', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 10:21:51', '吉林');
INSERT INTO `sys_statistics` VALUES ('40e64f9a48444676a74dc86b870b87f3', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:46:54', 'XX');
INSERT INTO `sys_statistics` VALUES ('4140a5d4667949aab46e2d78d5871eb0', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:05:37', 'XX');
INSERT INTO `sys_statistics` VALUES ('414c1749c9a34543908017910fd15d1b', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:10:51', 'XX');
INSERT INTO `sys_statistics` VALUES ('41ad0165e05d48378ff1455aceebaf82', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:59:50', 'XX');
INSERT INTO `sys_statistics` VALUES ('4216aa54ccfb4e0da3e6ec1dcf399524', '36.104.26.201', '中国  吉林 长春', '电信', '2019-03-04', '2019-03-04 14:58:47', '吉林');
INSERT INTO `sys_statistics` VALUES ('42fed608397d4c25acf814e700761266', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:14:07', 'XX');
INSERT INTO `sys_statistics` VALUES ('4316af8e45364ba983095ab8011339d8', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 10:40:44', 'XX');
INSERT INTO `sys_statistics` VALUES ('434550d74ff447209539323fa51727df', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 14:43:28', '吉林');
INSERT INTO `sys_statistics` VALUES ('435b778b00794f079fa7242396cfda1f', '124.234.225.105', '中国  吉林 长春', '电信', '2019-01-13', '2019-01-13 14:13:43', '吉林');
INSERT INTO `sys_statistics` VALUES ('43a9ea733b76470f9d6a7f111c3d4508', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 19:34:58', '吉林');
INSERT INTO `sys_statistics` VALUES ('43de9413f87d42a9a7bbf24c5da66174', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 22:58:12', 'XX');
INSERT INTO `sys_statistics` VALUES ('441498b6ba434a378087419eb699d69c', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:23:08', 'XX');
INSERT INTO `sys_statistics` VALUES ('44213e1e0ef246b6a7e425d29c304d08', '124.234.225.45', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 21:32:57', '吉林');
INSERT INTO `sys_statistics` VALUES ('44441a50b43441f9a47ede9a965a83c1', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 22:16:03', 'XX');
INSERT INTO `sys_statistics` VALUES ('444d8b1c3fed46a9bad19edd7246f11e', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 15:04:09', '吉林');
INSERT INTO `sys_statistics` VALUES ('44682410a28c497fb792db428d38f21e', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 19:28:49', '吉林');
INSERT INTO `sys_statistics` VALUES ('446c9e85e852406e8a84a2a392c3fbea', '36.104.54.72', '中国  吉林 长春', '电信', '2019-01-08', '2019-01-08 17:21:14', '吉林');
INSERT INTO `sys_statistics` VALUES ('4471c9437074411f893d7ae23cf5b030', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:54:10', 'XX');
INSERT INTO `sys_statistics` VALUES ('44a8402564a84ce99718072bf55cb38a', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 18:06:11', '吉林');
INSERT INTO `sys_statistics` VALUES ('44ca82b83a2049cb9473003e06d0f207', '123.172.56.82', '中国  吉林 长春', '电信', '2019-01-12', '2019-01-12 17:04:14', '吉林');
INSERT INTO `sys_statistics` VALUES ('4505a783839947249d56db093fd8b295', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:44:23', 'XX');
INSERT INTO `sys_statistics` VALUES ('4520a5815bdb4f819e2d2d7b384fe34e', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 12:42:28', '吉林');
INSERT INTO `sys_statistics` VALUES ('4536b541578847c2aa9491e95c132f3d', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:36:04', '吉林');
INSERT INTO `sys_statistics` VALUES ('45485f20781e43e98c3225cd5bd2e622', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 16:37:33', 'XX');
INSERT INTO `sys_statistics` VALUES ('456c179facfc460dbfa36fdf1a1a12c4', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 18:49:40', '吉林');
INSERT INTO `sys_statistics` VALUES ('459d9f8f10254dcca6a6a3597fb3c5ac', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 20:26:56', '吉林');
INSERT INTO `sys_statistics` VALUES ('45dd93519fc443a39a247a0ca2f5adaa', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 17:49:04', '吉林');
INSERT INTO `sys_statistics` VALUES ('461bff22a1a64568ab94a6e43616fe7f', '111.26.36.65', '中国  吉林 吉林', '移动', '2019-02-10', '2019-02-10 17:43:23', '吉林');
INSERT INTO `sys_statistics` VALUES ('46a80b1af6a74fedb42d4e2a81fca53f', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 18:41:55', '吉林');
INSERT INTO `sys_statistics` VALUES ('478be67b14694dcfa505a8b48ee856d8', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:20:48', 'XX');
INSERT INTO `sys_statistics` VALUES ('47cfd5f8e2344f8e93103b55ff4387d0', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:36:34', 'XX');
INSERT INTO `sys_statistics` VALUES ('47e48cdab81147a4b0550d63b7646da3', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 18:52:26', 'XX');
INSERT INTO `sys_statistics` VALUES ('482690ebf9174d7692652cadc2ae7b17', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 00:12:15', 'XX');
INSERT INTO `sys_statistics` VALUES ('482d8b4b67da44d2969f44a7420c411a', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:29:13', 'XX');
INSERT INTO `sys_statistics` VALUES ('48439aa0032a409f8c7339e7d1f63b63', '36.104.54.72', '中国  吉林 长春', '电信', '2019-01-08', '2019-01-08 17:23:38', '吉林');
INSERT INTO `sys_statistics` VALUES ('48507cfbef7d419f9279a61b0f30fdd3', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 19:28:32', '吉林');
INSERT INTO `sys_statistics` VALUES ('4853433470894723ba322232a6e2e21d', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 12:37:13', '吉林');
INSERT INTO `sys_statistics` VALUES ('4873e2611d8c4ea0bf0ff0e87e3cdae0', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:22:36', '吉林');
INSERT INTO `sys_statistics` VALUES ('48b3ef0e23af49678103845530e185c6', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 19:49:02', '吉林');
INSERT INTO `sys_statistics` VALUES ('49172c95a197416d9e6f730a71ee5abe', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 18:58:57', '吉林');
INSERT INTO `sys_statistics` VALUES ('492d5750e2f94908acde9576437e2376', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-03', '2019-01-03 00:27:08', 'XX');
INSERT INTO `sys_statistics` VALUES ('495f2a00c84a41989413d310a960b16a', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:59:26', 'XX');
INSERT INTO `sys_statistics` VALUES ('49bda289b81d459ebd931dca2f33cccb', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:12:09', 'XX');
INSERT INTO `sys_statistics` VALUES ('49bdd6bb480b43bdb2c6cbc0cc8c20e2', '124.234.225.17', '中国  吉林 长春', '电信', '2019-01-12', '2019-01-12 11:54:54', '吉林');
INSERT INTO `sys_statistics` VALUES ('49c66e4144de48d398e0262734ee3136', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 16:37:35', '吉林');
INSERT INTO `sys_statistics` VALUES ('49ebb2442aee424ba276568723baa612', '36.104.51.219', '中国  吉林 长春', '电信', '2019-01-13', '2019-01-13 19:02:30', '吉林');
INSERT INTO `sys_statistics` VALUES ('4a1c6e38092d4f77ae2e22bad63928ba', '36.104.26.201', '中国  吉林 长春', '电信', '2019-03-04', '2019-03-04 14:03:28', '吉林');
INSERT INTO `sys_statistics` VALUES ('4a61c5cccf27402db8fcd434e21a6a26', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 20:24:06', 'XX');
INSERT INTO `sys_statistics` VALUES ('4aca99ca082a4bdc9151c53410bb5f03', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:59:13', 'XX');
INSERT INTO `sys_statistics` VALUES ('4b13ee835a4b4e5d8c785af547fcfaa7', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 00:01:49', 'XX');
INSERT INTO `sys_statistics` VALUES ('4b5fa47d5b2a4a488bffc287615a17a5', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 19:00:24', '吉林');
INSERT INTO `sys_statistics` VALUES ('4b878e7ff89644a4b3d5b818dc59c21c', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:14:32', 'XX');
INSERT INTO `sys_statistics` VALUES ('4bc6a1408ab44654be828dd8fcbd7fb4', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 19:01:15', '吉林');
INSERT INTO `sys_statistics` VALUES ('4c6c1abafb4d4cd4894ca0a48a8a6abe', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 15:25:58', 'XX');
INSERT INTO `sys_statistics` VALUES ('4c94219f9da246e09b4bcc6854650c4f', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 22:51:22', 'XX');
INSERT INTO `sys_statistics` VALUES ('4ccdce70df3b46b7885128792c8d5b6b', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 20:02:59', '吉林');
INSERT INTO `sys_statistics` VALUES ('4ce99dd1f4ed4f32b3fc5344a31c04b4', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-07', '2019-03-07 13:21:56', '吉林');
INSERT INTO `sys_statistics` VALUES ('4d075accd44f41ea9616c15ded78050f', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 12:12:58', '吉林');
INSERT INTO `sys_statistics` VALUES ('4d11287adbc84c2cbfd5549cdc67bcc7', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:44:33', 'XX');
INSERT INTO `sys_statistics` VALUES ('4d19a067ef7d45a1ba0a249cf8ab9eea', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 21:24:50', '吉林');
INSERT INTO `sys_statistics` VALUES ('4d239c925bed479e901515a4287dadaf', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 19:48:48', '吉林');
INSERT INTO `sys_statistics` VALUES ('4d3e7aa779514370a8e25f46a5b0b50d', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-28', '2019-03-28 08:13:42', '吉林');
INSERT INTO `sys_statistics` VALUES ('4d9cf73fcf434251833f4eaa5a59e94e', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 15:25:57', 'XX');
INSERT INTO `sys_statistics` VALUES ('4deb7189ddeb472c8b8e56447d04e039', '218.247.142.216', '中国  北京 北京', '鹏博士', '2019-03-28', '2019-03-28 20:08:20', '北京');
INSERT INTO `sys_statistics` VALUES ('4df5dc0102da4fff9a43acfa5a977517', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:05:14', 'XX');
INSERT INTO `sys_statistics` VALUES ('4e196ff0a0184f06a036ddce574e7918', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 12:43:05', '吉林');
INSERT INTO `sys_statistics` VALUES ('4e791f3f39374c33b928a673e7b3bc66', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 16:23:13', 'XX');
INSERT INTO `sys_statistics` VALUES ('4e95b2ed98b64c599531504b52721cff', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 19:08:44', '吉林');
INSERT INTO `sys_statistics` VALUES ('4e9e3ec5126d4acb8d7ef15eb3549d83', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 19:14:32', '吉林');
INSERT INTO `sys_statistics` VALUES ('4ec3b89e954b4c16b6d51d5da12bb238', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:41:40', '吉林');
INSERT INTO `sys_statistics` VALUES ('4edec03eb6b64f1a8d059113dd0a897f', '36.104.51.72', '中国  吉林 长春', '电信', '2019-01-11', '2019-01-11 19:59:38', '吉林');
INSERT INTO `sys_statistics` VALUES ('4f1fd7e371114be1becab79c4011bce6', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:17:29', 'XX');
INSERT INTO `sys_statistics` VALUES ('4f86e41be5524a9aa1ae90c08155a751', '111.26.36.117', '中国  吉林 吉林', '移动', '2019-02-16', '2019-02-16 17:48:45', '吉林');
INSERT INTO `sys_statistics` VALUES ('4f9e58cc36dc411895e12331bd910000', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 17:06:53', 'XX');
INSERT INTO `sys_statistics` VALUES ('4fabad18b0254aa7bdd03c316c49d687', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 12:44:49', '吉林');
INSERT INTO `sys_statistics` VALUES ('4ff87c37d8d04b21b26a90f12a46500b', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 23:47:46', 'XX');
INSERT INTO `sys_statistics` VALUES ('501222ca944e4d2eb9b84d38282a7fbc', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 19:04:21', '吉林');
INSERT INTO `sys_statistics` VALUES ('502ae0136a4d4d36851817cd9b2355bb', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:11:01', 'XX');
INSERT INTO `sys_statistics` VALUES ('5067b15e2afa4496a77ced694300ac1f', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 12:19:18', '吉林');
INSERT INTO `sys_statistics` VALUES ('50902086a5df4cf0af162f502e7ea0e5', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 18:08:51', '吉林');
INSERT INTO `sys_statistics` VALUES ('509e858a9de649b1a699c5270a1b45a1', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 15:22:34', '吉林');
INSERT INTO `sys_statistics` VALUES ('50affeadd3054dbbb8b44b425dcea6e0', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:36:41', 'XX');
INSERT INTO `sys_statistics` VALUES ('50c8c49374ef4ebc88b112613a6647fa', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:42:16', 'XX');
INSERT INTO `sys_statistics` VALUES ('5106800bfd9442f99a85bd0b4faba0e9', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 11:23:36', '吉林');
INSERT INTO `sys_statistics` VALUES ('512805136c7f4708b548b70998b749c4', '36.49.187.12', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 11:00:32', '吉林');
INSERT INTO `sys_statistics` VALUES ('512bc98e95974c2287851df92e5db499', '123.172.56.82', '中国  吉林 长春', '电信', '2019-01-12', '2019-01-12 17:04:12', '吉林');
INSERT INTO `sys_statistics` VALUES ('5187a00aa46c46d89471d9a3bc21a8bb', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 16:20:07', '吉林');
INSERT INTO `sys_statistics` VALUES ('51960134a42d435e9c6abd8f8b747baf', '223.104.16.80', '中国  吉林 长春', '移动', '2019-03-10', '2019-03-10 21:21:10', '吉林');
INSERT INTO `sys_statistics` VALUES ('519aa1a8d1074fe89c7980c8e2bd6331', '124.234.225.105', '中国  吉林 长春', '电信', '2019-01-13', '2019-01-13 17:58:32', '吉林');
INSERT INTO `sys_statistics` VALUES ('51b5e9db87c44e41a8a4e2a3a2456413', '118.89.225.69', '中国  天津 天津', '电信', '2019-02-15', '2019-02-15 17:49:56', '天津');
INSERT INTO `sys_statistics` VALUES ('51b70e1bfa4b4d14bc0e6a2a25bc1ec0', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:19:26', 'XX');
INSERT INTO `sys_statistics` VALUES ('51c21d6e838b46e29b584fc765f9ddb0', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:34:50', 'XX');
INSERT INTO `sys_statistics` VALUES ('5268eed19b6c48f79085b2a9c914c3ad', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 20:46:29', '吉林');
INSERT INTO `sys_statistics` VALUES ('5274ec9820c84e12abf57923a8319912', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 17:55:28', 'XX');
INSERT INTO `sys_statistics` VALUES ('5278030d58094845a396d51801c42178', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:35:52', 'XX');
INSERT INTO `sys_statistics` VALUES ('52b55b7d56384692bd9a8638eb0e7c67', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 12:11:51', 'XX');
INSERT INTO `sys_statistics` VALUES ('52e96403e2e642ceadfc99006b4108ba', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:42:55', 'XX');
INSERT INTO `sys_statistics` VALUES ('5345fd022ed7410586315db9f70224de', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 17:48:52', '吉林');
INSERT INTO `sys_statistics` VALUES ('537190d81dff429894cc783b6e42aac0', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-03', '2019-01-03 00:25:56', 'XX');
INSERT INTO `sys_statistics` VALUES ('53754ee9b8b14323823b93d9dd79f895', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:59:00', 'XX');
INSERT INTO `sys_statistics` VALUES ('537c2553f1be487f85090e5aa81f286a', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:54:00', 'XX');
INSERT INTO `sys_statistics` VALUES ('538e33a1e86b408c8d84244244d49b91', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-04', '2019-03-04 19:11:35', '吉林');
INSERT INTO `sys_statistics` VALUES ('53d3c3878deb4bdb8c8e0c5db3ebb5e8', '124.234.225.45', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 09:52:13', '吉林');
INSERT INTO `sys_statistics` VALUES ('53fbaba3ce894bcdb9a6e546280687e3', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 12:42:50', '吉林');
INSERT INTO `sys_statistics` VALUES ('541a648d258b44bc974c09ab77bc1bcc', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 12:34:52', '吉林');
INSERT INTO `sys_statistics` VALUES ('544fe79541644e2aa0e3c2c9180dd2df', '223.104.16.80', '中国  吉林 长春', '移动', '2019-03-10', '2019-03-10 21:21:12', '吉林');
INSERT INTO `sys_statistics` VALUES ('545c32ba10a1429cb01b5efb95bd6a0a', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 16:35:16', 'XX');
INSERT INTO `sys_statistics` VALUES ('5493c3601add46daac8d2f49cd0260d8', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 16:07:46', '吉林');
INSERT INTO `sys_statistics` VALUES ('54b32e8c0f754a78aab03c4ee53c21e8', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:14:36', 'XX');
INSERT INTO `sys_statistics` VALUES ('54bed760b7a4407b89fb12a7b08475af', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 17:43:44', '吉林');
INSERT INTO `sys_statistics` VALUES ('54bf25e1b75e411394183e51bd58505d', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:28:45', 'XX');
INSERT INTO `sys_statistics` VALUES ('54e317eb48c24013a7aa095b5430794f', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 16:17:33', '吉林');
INSERT INTO `sys_statistics` VALUES ('550079d597d44861b68aecdb9c89e8ed', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-28', '2019-03-28 08:13:53', '吉林');
INSERT INTO `sys_statistics` VALUES ('5517f2eb17a74fc3a83330ba4ec5287f', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 13:55:13', 'XX');
INSERT INTO `sys_statistics` VALUES ('553d471a2495416eac289c8fd3d600b3', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 11:18:51', '吉林');
INSERT INTO `sys_statistics` VALUES ('55b417f75d8b4b3897ceaa7d89823e16', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 15:13:16', 'XX');
INSERT INTO `sys_statistics` VALUES ('55b5d04d1a1e40ef913db566ae135c9f', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:14:26', '吉林');
INSERT INTO `sys_statistics` VALUES ('55c742e2b2654627bbed1622be7b28a0', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-07', '2019-03-07 16:49:13', '吉林');
INSERT INTO `sys_statistics` VALUES ('55ddfb6967634f7e98e28dd8525db58e', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 21:29:24', '吉林');
INSERT INTO `sys_statistics` VALUES ('561ab4f125c14aea97b0e6dc5f7afca4', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:59:15', 'XX');
INSERT INTO `sys_statistics` VALUES ('563ddac46156409ab19613d25ab80b71', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:54:12', 'XX');
INSERT INTO `sys_statistics` VALUES ('56430e15e85a4647b801935b64fcbd4f', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 15:57:24', '吉林');
INSERT INTO `sys_statistics` VALUES ('568811cf28fc4b79869c049abcb48f5a', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 18:16:24', 'XX');
INSERT INTO `sys_statistics` VALUES ('5695a33a3457475ea11018e7b447d71d', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:52:59', 'XX');
INSERT INTO `sys_statistics` VALUES ('56d2ab7483bf47378ad33ed00cf9fe42', '36.104.54.72', '中国  吉林 长春', '电信', '2019-01-08', '2019-01-08 17:26:43', '吉林');
INSERT INTO `sys_statistics` VALUES ('56f1ec1e71dd444e9740d2760f0937c4', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 16:56:42', 'XX');
INSERT INTO `sys_statistics` VALUES ('56faf33255b7474e99db7904c6455dc3', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 16:57:18', '吉林');
INSERT INTO `sys_statistics` VALUES ('56fe338ab27b4bb2bd5aad28604a3f53', '118.89.225.69', '中国  天津 天津', '电信', '2019-01-11', '2019-01-11 21:46:58', '天津');
INSERT INTO `sys_statistics` VALUES ('5742452887cc417bb15756648c41c70e', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 11:48:49', '吉林');
INSERT INTO `sys_statistics` VALUES ('5753a0a2f18f4672b67e617dc36434fa', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-07', '2019-03-07 22:51:47', '吉林');
INSERT INTO `sys_statistics` VALUES ('576b32fa956e43f08488c2ffd3b729d5', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 20:48:09', '吉林');
INSERT INTO `sys_statistics` VALUES ('5797b1b1bb474e52bcccd0dac9e6b291', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 17:16:34', 'XX');
INSERT INTO `sys_statistics` VALUES ('57d7823e61574cf2a29de1891b18aec4', '218.247.142.216', '中国  北京 北京', '鹏博士', '2019-03-28', '2019-03-28 20:14:39', '北京');
INSERT INTO `sys_statistics` VALUES ('58146cc357694fefb26fb0a64d2ef6c5', '223.104.16.80', '中国  吉林 长春', '移动', '2019-03-10', '2019-03-10 21:14:53', '吉林');
INSERT INTO `sys_statistics` VALUES ('5845cec0f8494db88794a543f21277d1', '36.104.23.30', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 19:18:00', '吉林');
INSERT INTO `sys_statistics` VALUES ('5853a5f1a552459f8b2571920d48d693', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 15:31:53', 'XX');
INSERT INTO `sys_statistics` VALUES ('5866e1382e6a4d799ae181fdcdd3ca89', '111.26.36.117', '中国  吉林 吉林', '移动', '2019-02-16', '2019-02-16 19:58:50', '吉林');
INSERT INTO `sys_statistics` VALUES ('587be4526e9f4daeab5ee692abfdcefb', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 17:10:33', '吉林');
INSERT INTO `sys_statistics` VALUES ('5886301bda874a089bced25c948ceb0e', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 19:36:36', '吉林');
INSERT INTO `sys_statistics` VALUES ('58aaefa60b05408789da924435552c32', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 14:59:01', '吉林');
INSERT INTO `sys_statistics` VALUES ('58b9992f6a404fa381fc5a1dcd03cbc3', '36.104.51.72', '中国  吉林 长春', '电信', '2019-01-11', '2019-01-11 19:59:41', '吉林');
INSERT INTO `sys_statistics` VALUES ('58e4e95149b843ba9ac55bce24e3ed7c', '124.234.225.105', '中国  吉林 长春', '电信', '2019-01-13', '2019-01-13 14:12:54', '吉林');
INSERT INTO `sys_statistics` VALUES ('59016cccdcb54a338d0321acef3c56ab', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:36:42', 'XX');
INSERT INTO `sys_statistics` VALUES ('59060fc7cd1d494eb7f132ef596d780f', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 12:29:03', 'XX');
INSERT INTO `sys_statistics` VALUES ('591d8472ec4b4bd0a8ca6c85a90195c9', '218.247.142.216', '中国  北京 北京', '鹏博士', '2019-03-28', '2019-03-28 20:15:39', '北京');
INSERT INTO `sys_statistics` VALUES ('5934762d90044642ab5e8c4038539ed6', '111.26.36.117', '中国  吉林 吉林', '移动', '2019-02-16', '2019-02-16 17:19:19', '吉林');
INSERT INTO `sys_statistics` VALUES ('5936737af75a43c1913295e53b143a4b', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 11:14:51', '吉林');
INSERT INTO `sys_statistics` VALUES ('5953584adb354706b093aa025095c09d', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 16:46:48', '吉林');
INSERT INTO `sys_statistics` VALUES ('59612377705448ffa9e81cb38809f9b7', '36.104.26.201', '中国  吉林 长春', '电信', '2019-03-04', '2019-03-04 13:26:23', '吉林');
INSERT INTO `sys_statistics` VALUES ('5998b961c62f48049f2a9ff2290d1010', '36.104.54.72', '中国  吉林 长春', '电信', '2019-01-08', '2019-01-08 17:22:47', '吉林');
INSERT INTO `sys_statistics` VALUES ('59a0073769c549a3ae765b439a9d27d4', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 17:02:03', 'XX');
INSERT INTO `sys_statistics` VALUES ('59ccff03961f4fe49fe1bf8a827fbf87', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 16:59:35', '吉林');
INSERT INTO `sys_statistics` VALUES ('59d4d56f1492489d8b38a897b8891784', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 19:00:32', '吉林');
INSERT INTO `sys_statistics` VALUES ('5a2fa87fd2184086882fccec8a0dfed6', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 18:59:38', '吉林');
INSERT INTO `sys_statistics` VALUES ('5a3826a665fe4edcac11b558a689ed0b', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 18:23:51', 'XX');
INSERT INTO `sys_statistics` VALUES ('5abfa132055e4cb7b20d934ea71c25d1', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:14:08', 'XX');
INSERT INTO `sys_statistics` VALUES ('5b2971f63ae149d2b40c5eb0b31cdaf9', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 21:24:40', '吉林');
INSERT INTO `sys_statistics` VALUES ('5b6493246cc24a1fb2c321b92caeab4c', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 19:01:50', '吉林');
INSERT INTO `sys_statistics` VALUES ('5beeae9191d94b35956a06a059b48eff', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 16:20:28', '吉林');
INSERT INTO `sys_statistics` VALUES ('5bf90047bbd94da6bac68d91a7674a34', '111.26.36.117', '中国  吉林 吉林', '移动', '2019-02-16', '2019-02-16 17:48:33', '吉林');
INSERT INTO `sys_statistics` VALUES ('5c2b544ec67b46d18ca1eed9eba9d302', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:20:21', '吉林');
INSERT INTO `sys_statistics` VALUES ('5c4297ec08554005af43f3b596df64f2', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:32:23', 'XX');
INSERT INTO `sys_statistics` VALUES ('5c5c5ba445fd48618ed8aa9f8031210a', '36.104.51.39', '中国  吉林 长春', '电信', '2019-01-11', '2019-01-11 15:58:29', '吉林');
INSERT INTO `sys_statistics` VALUES ('5c855811de3844a1b2e1271b57a979d2', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 21:08:33', '吉林');
INSERT INTO `sys_statistics` VALUES ('5cb36476dfc44ffc8a13d170cbd3c8e7', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:41:28', 'XX');
INSERT INTO `sys_statistics` VALUES ('5cbbed3318944ca1a1119ea594d900a9', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 10:29:49', '吉林');
INSERT INTO `sys_statistics` VALUES ('5d0b9da9c70845a3aa16e2a6f4a8654a', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 22:09:53', 'XX');
INSERT INTO `sys_statistics` VALUES ('5d16edddc0764db684fe02c2aefab494', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:19:18', 'XX');
INSERT INTO `sys_statistics` VALUES ('5d263db392514ad4b458237047983354', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:58:29', 'XX');
INSERT INTO `sys_statistics` VALUES ('5d40377e8ce74830bab6fe374c6d3d78', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:12:11', 'XX');
INSERT INTO `sys_statistics` VALUES ('5d79cc7710704ab5ad552f13b8d3f593', '36.104.51.39', '中国  吉林 长春', '电信', '2019-01-11', '2019-01-11 11:51:24', '吉林');
INSERT INTO `sys_statistics` VALUES ('5dab3c20d9f04ec0befa01642ef84c39', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 00:19:58', 'XX');
INSERT INTO `sys_statistics` VALUES ('5e05abd093a64c16bd0e58549ea6750b', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:15:58', '吉林');
INSERT INTO `sys_statistics` VALUES ('5e41cbf293ab43d79f1db7be7371d4e0', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:58:41', 'XX');
INSERT INTO `sys_statistics` VALUES ('5e4b6150597c43ff862b79b750e261c2', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 10:26:35', '吉林');
INSERT INTO `sys_statistics` VALUES ('5e5357b00c014561880d4594a555d21f', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 12:11:45', 'XX');
INSERT INTO `sys_statistics` VALUES ('5e883e6fe12448809576adcfb7fd8563', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 12:46:49', 'XX');
INSERT INTO `sys_statistics` VALUES ('5e92a92f4b0c4d89b5f05ca3fb23af58', '36.104.26.201', '中国  吉林 长春', '电信', '2019-03-04', '2019-03-04 14:59:19', '吉林');
INSERT INTO `sys_statistics` VALUES ('5f039cbc034d4d5dbf8f7832dd767b51', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 11:14:28', '吉林');
INSERT INTO `sys_statistics` VALUES ('5f13be68f62246a5909097cf85b6dce7', '123.172.48.28', '中国  吉林 长春', '电信', '2019-01-08', '2019-01-08 17:21:32', '吉林');
INSERT INTO `sys_statistics` VALUES ('5f18cb042d804c1cb3722bc99e36ae32', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 20:48:32', '吉林');
INSERT INTO `sys_statistics` VALUES ('5f291713381546718c4e577539b9851b', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:24:00', 'XX');
INSERT INTO `sys_statistics` VALUES ('5f6c601ea86e4d24903398498a52a7c1', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 16:15:54', '吉林');
INSERT INTO `sys_statistics` VALUES ('5fa8d493e0fb4e30aafebe6ad7c41890', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 20:17:51', '吉林');
INSERT INTO `sys_statistics` VALUES ('5fb4edbcd6e34136bba5176de1c9ec3e', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 21:00:53', '吉林');
INSERT INTO `sys_statistics` VALUES ('5ffaaa50f11e499bb26912ced17a7371', '123.172.56.82', '中国  吉林 长春', '电信', '2019-01-12', '2019-01-12 13:36:57', '吉林');
INSERT INTO `sys_statistics` VALUES ('603119c819a14dc099e43c0c0ec9b5ac', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 13:55:46', 'XX');
INSERT INTO `sys_statistics` VALUES ('606c09f5fd5d4920af740682fce51f78', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 17:48:46', '吉林');
INSERT INTO `sys_statistics` VALUES ('607b880cfb794027ae4c65148a0115b5', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:14:03', 'XX');
INSERT INTO `sys_statistics` VALUES ('608e592506ce41339a981feb3ccae11c', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 15:55:13', '吉林');
INSERT INTO `sys_statistics` VALUES ('60cb1dc9b35644f7a18d8ca9dbe415af', '110.185.162.119', '中国  四川 成都', '电信', '2019-03-05', '2019-03-05 09:25:06', '四川');
INSERT INTO `sys_statistics` VALUES ('60d433ae94de460182bc302c2d80a905', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 13:54:14', 'XX');
INSERT INTO `sys_statistics` VALUES ('60d4344e852a4f49a821466d520b9a23', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 12:01:29', 'XX');
INSERT INTO `sys_statistics` VALUES ('61072e67b5724638bdb985af97345b54', '36.104.26.201', '中国  吉林 长春', '电信', '2019-03-04', '2019-03-04 13:23:35', '吉林');
INSERT INTO `sys_statistics` VALUES ('61549845278a486e8bce0a8c7d7d39c1', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 14:58:31', '吉林');
INSERT INTO `sys_statistics` VALUES ('61ae7537257b43f8ab547e673b519f0c', '36.104.54.72', '中国  吉林 长春', '电信', '2019-01-08', '2019-01-08 17:28:23', '吉林');
INSERT INTO `sys_statistics` VALUES ('61c25a7857a84175a5bd9fece4955bda', '111.26.36.29', '中国  吉林 吉林', '移动', '2019-02-14', '2019-02-14 17:12:32', '吉林');
INSERT INTO `sys_statistics` VALUES ('61fd8cb985094f85b585b8e562996a60', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:27:26', '吉林');
INSERT INTO `sys_statistics` VALUES ('6293a2e8c341440b8471707086ae4a0d', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 20:01:29', '吉林');
INSERT INTO `sys_statistics` VALUES ('62d6ccec954e4be3b6c518b5fbb7bc48', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 23:07:00', 'XX');
INSERT INTO `sys_statistics` VALUES ('62e2d79ba80b4fe3a380ba8c86a34709', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 15:34:51', 'XX');
INSERT INTO `sys_statistics` VALUES ('62e3c02ecc7b4ec5bc2c0c7b6e81a3e7', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:11:34', 'XX');
INSERT INTO `sys_statistics` VALUES ('62eccb48c2c04b81813dccc29f8b2d6a', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 14:44:19', '吉林');
INSERT INTO `sys_statistics` VALUES ('6302cdacf6034356a57f5d4ab1be9dc3', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 16:24:27', '吉林');
INSERT INTO `sys_statistics` VALUES ('634af9ade0a743ed9351576230f049d4', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 17:39:05', '吉林');
INSERT INTO `sys_statistics` VALUES ('635329b9a70c42fb8764b3726bc50833', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 00:05:50', 'XX');
INSERT INTO `sys_statistics` VALUES ('636820c9e0ac46b2b6467cee2f49811e', '36.49.187.12', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 13:47:15', '吉林');
INSERT INTO `sys_statistics` VALUES ('6381c990aa4a4a1ab70dae14e0cb1d62', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 10:11:02', 'XX');
INSERT INTO `sys_statistics` VALUES ('63877e4b592643be866794af5ea811af', '123.172.48.28', '中国  吉林 长春', '电信', '2019-01-11', '2019-01-11 20:19:27', '吉林');
INSERT INTO `sys_statistics` VALUES ('63fe63cb8d1b42cd991947462bc2dccd', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 13:54:48', 'XX');
INSERT INTO `sys_statistics` VALUES ('645f929c216e4c739c7315c42862816d', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 16:56:42', 'XX');
INSERT INTO `sys_statistics` VALUES ('6469e7694d504c59bf00ec21d9132ad2', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 12:22:01', '吉林');
INSERT INTO `sys_statistics` VALUES ('647554c555bd48508900ec8961eef659', '123.172.56.82', '中国  吉林 长春', '电信', '2019-01-12', '2019-01-12 20:19:01', '吉林');
INSERT INTO `sys_statistics` VALUES ('647942c7c72e492fab2011bd7007536f', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 15:48:43', '吉林');
INSERT INTO `sys_statistics` VALUES ('648f479547ff4fcea86d4977c6a528a5', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:14:21', 'XX');
INSERT INTO `sys_statistics` VALUES ('649832e20c9848af8ec0a9df5a6a11e0', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 00:15:05', 'XX');
INSERT INTO `sys_statistics` VALUES ('64b55a79baed44778f27c4783f42b904', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 18:10:23', '吉林');
INSERT INTO `sys_statistics` VALUES ('64d2c1ba9eab4abba839c588b9cacf56', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-27', '2019-03-27 22:58:27', '吉林');
INSERT INTO `sys_statistics` VALUES ('64e5729cc35a4be7994f044cdd0fce92', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:45:18', 'XX');
INSERT INTO `sys_statistics` VALUES ('64f2f7b4f7eb4118a740374974a7dffd', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-27', '2019-03-27 22:25:28', '吉林');
INSERT INTO `sys_statistics` VALUES ('64f4b756e8714f079a7153cf352ebe36', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 16:30:36', '吉林');
INSERT INTO `sys_statistics` VALUES ('65458d03947c47b4872407fbc9f95741', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 17:21:28', 'XX');
INSERT INTO `sys_statistics` VALUES ('658722d82b424b3a96a693591f240567', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-07', '2019-03-07 16:04:43', '吉林');
INSERT INTO `sys_statistics` VALUES ('658d5aca73ef4efba3e60245ea821764', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:32:31', 'XX');
INSERT INTO `sys_statistics` VALUES ('65944a7a327545158620cf44a2324369', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 20:47:56', '吉林');
INSERT INTO `sys_statistics` VALUES ('65964d33bc8e4a048894e97d1967cced', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-07', '2019-03-07 17:26:35', '吉林');
INSERT INTO `sys_statistics` VALUES ('65a227856a114ab1b95f2531e5688a2e', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 20:03:42', '吉林');
INSERT INTO `sys_statistics` VALUES ('66b2f4c4657c4f928dfa6baf6527e2ee', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 20:26:19', 'XX');
INSERT INTO `sys_statistics` VALUES ('66bc860af09d41dc9d25b07a53e2b00d', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 15:06:52', '吉林');
INSERT INTO `sys_statistics` VALUES ('66c0d8999b7f442b84b952a8779c88b8', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:37:15', 'XX');
INSERT INTO `sys_statistics` VALUES ('66cafe549af14829b10470ab1089527d', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:10:56', 'XX');
INSERT INTO `sys_statistics` VALUES ('66cc33eed69d42c485615cf7da367fcf', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 10:21:42', '吉林');
INSERT INTO `sys_statistics` VALUES ('673cc04a41204ce7a787cc510d0d02c0', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 11:13:52', '吉林');
INSERT INTO `sys_statistics` VALUES ('6778add1a7a54fc4a35d2da30021a90f', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 16:32:09', 'XX');
INSERT INTO `sys_statistics` VALUES ('677cb99a322d413081eaab0942588365', '124.234.225.45', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 22:30:44', '吉林');
INSERT INTO `sys_statistics` VALUES ('6796ef292a9b43a49495118cfa0f2137', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 00:13:52', 'XX');
INSERT INTO `sys_statistics` VALUES ('683ae9b8b7b74ac3adea1ea68abb9287', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 23:02:48', '吉林');
INSERT INTO `sys_statistics` VALUES ('686342af22b047799c965ef393fccdaf', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 18:20:43', 'XX');
INSERT INTO `sys_statistics` VALUES ('6885e881a6b449d78dd2332087fd9cc4', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-07', '2019-03-07 18:29:58', '吉林');
INSERT INTO `sys_statistics` VALUES ('68898b40c74947e58dd77961165d1a05', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 16:20:06', '吉林');
INSERT INTO `sys_statistics` VALUES ('688b00190b53430eab4261e804dd8b65', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 22:47:56', 'XX');
INSERT INTO `sys_statistics` VALUES ('6898dcf9b57b4dc2b4a4acd637ce341a', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 17:13:40', 'XX');
INSERT INTO `sys_statistics` VALUES ('68995353c16f48a1873afca79df5cca7', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:26:07', 'XX');
INSERT INTO `sys_statistics` VALUES ('68a4e0f1e8004c5a94029041c8d0a568', '124.234.225.45', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 22:03:03', '吉林');
INSERT INTO `sys_statistics` VALUES ('68ac32c9622f4626b7bcab404e7dec1c', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 16:31:46', 'XX');
INSERT INTO `sys_statistics` VALUES ('68bce89114004d88918f386e563abd94', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 17:55:23', 'XX');
INSERT INTO `sys_statistics` VALUES ('68fa97f9b1db4f79b1eaf73f6bfbcce0', '124.234.225.45', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 21:57:26', '吉林');
INSERT INTO `sys_statistics` VALUES ('692c53d4c8d64dfaa00f8339f59d14c1', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 21:24:45', '吉林');
INSERT INTO `sys_statistics` VALUES ('692f2746813b4e2986322a8b3bc9ae63', '36.104.54.72', '中国  吉林 长春', '电信', '2019-01-08', '2019-01-08 17:23:13', '吉林');
INSERT INTO `sys_statistics` VALUES ('69495bc1aa814386b6501737db398e82', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:19:56', 'XX');
INSERT INTO `sys_statistics` VALUES ('695fe2ee22114f7aaf130a8a2b8c24f1', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:16:21', 'XX');
INSERT INTO `sys_statistics` VALUES ('696be20acf8745388e9f590b281f2b38', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 17:30:47', '吉林');
INSERT INTO `sys_statistics` VALUES ('696d6ae5abbc428d8a0951c8562718fe', '111.26.36.29', '中国  吉林 吉林', '移动', '2019-02-14', '2019-02-14 18:25:26', '吉林');
INSERT INTO `sys_statistics` VALUES ('6971317e4f364efd8ed3b7d4514ba476', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 12:50:40', 'XX');
INSERT INTO `sys_statistics` VALUES ('699c8ebd4c284248b4739987fe61718a', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 13:46:17', '吉林');
INSERT INTO `sys_statistics` VALUES ('699e9435f55344c6a1f48c8ab99c90af', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 17:19:33', 'XX');
INSERT INTO `sys_statistics` VALUES ('69a4673733cc411b8c577b1d45a2f9b0', '118.89.225.69', '中国  天津 天津', '电信', '2019-02-15', '2019-02-15 17:50:15', '天津');
INSERT INTO `sys_statistics` VALUES ('6a37f7efbe5c4272b92183f03d1e8a84', '36.104.51.219', '中国  吉林 长春', '电信', '2019-01-13', '2019-01-13 00:29:39', '吉林');
INSERT INTO `sys_statistics` VALUES ('6a73eeb959ab44ff95d429fea5306a2e', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 10:22:25', '吉林');
INSERT INTO `sys_statistics` VALUES ('6a82f86d9ca54f768d3a30ada9bb85b8', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 10:47:33', 'XX');
INSERT INTO `sys_statistics` VALUES ('6adfce09522a425490708e2769cd7644', '111.26.36.29', '中国  吉林 吉林', '移动', '2019-02-14', '2019-02-14 17:49:15', '吉林');
INSERT INTO `sys_statistics` VALUES ('6afc43deafca474791d3f8c80f708326', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 20:47:11', '吉林');
INSERT INTO `sys_statistics` VALUES ('6afc5db5068845e6b37e4d61924ef052', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 11:44:39', '吉林');
INSERT INTO `sys_statistics` VALUES ('6afed507184d4f75bcae235d96df3d8c', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:04:33', 'XX');
INSERT INTO `sys_statistics` VALUES ('6b128f7d65c74133978d82401cd98e07', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 16:31:38', 'XX');
INSERT INTO `sys_statistics` VALUES ('6b1ef66e273e460a924612e0b9c16390', '58.21.210.168', '中国  吉林 白城', '联通', '2019-02-23', '2019-02-23 09:55:25', '吉林');
INSERT INTO `sys_statistics` VALUES ('6b41f865320a4ee495ad38a2807e0fa0', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-27', '2019-03-27 22:50:27', '吉林');
INSERT INTO `sys_statistics` VALUES ('6b818a5b7cce44e3a2451b0748529ae6', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:13:04', '吉林');
INSERT INTO `sys_statistics` VALUES ('6b86a0cca0e949b092a825d4a6dd4af1', '36.48.113.165', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 16:26:47', '吉林');
INSERT INTO `sys_statistics` VALUES ('6b8ae6fcd59e427f99077ec35df08744', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 15:04:15', '吉林');
INSERT INTO `sys_statistics` VALUES ('6baf65b6aa634590aab037c52cb45524', '111.26.36.29', '中国  吉林 吉林', '移动', '2019-02-14', '2019-02-14 17:12:29', '吉林');
INSERT INTO `sys_statistics` VALUES ('6bb37edd28ce41fcb6001e8d1a4b301f', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:33:33', 'XX');
INSERT INTO `sys_statistics` VALUES ('6bbc7661f35f4401a0747e1cc563ed31', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:54:09', 'XX');
INSERT INTO `sys_statistics` VALUES ('6bfe2247833e40e19ffc7ae7bdb74793', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 00:10:21', 'XX');
INSERT INTO `sys_statistics` VALUES ('6c04a339ea6d426eb5440fd21a94fe78', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-27', '2019-03-27 22:27:03', '吉林');
INSERT INTO `sys_statistics` VALUES ('6c41a85b27424288a0a002d4805a626c', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 12:19:43', '吉林');
INSERT INTO `sys_statistics` VALUES ('6c5b74c114cc438e9e25376a9d0b936b', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 21:24:20', '吉林');
INSERT INTO `sys_statistics` VALUES ('6cb9cc9c0346453eac97845f7e06d4ad', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:31:20', '吉林');
INSERT INTO `sys_statistics` VALUES ('6cc59756c9e64ad0a08527812b75c825', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 10:51:57', 'XX');
INSERT INTO `sys_statistics` VALUES ('6cec3762caf84848a19b9669cb7cac8c', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 19:01:03', '吉林');
INSERT INTO `sys_statistics` VALUES ('6d0bf9f409c3414c9dac6f9ea3da6e03', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:15:31', 'XX');
INSERT INTO `sys_statistics` VALUES ('6d4a2342eaef4bf5bddae8606e352d59', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:37:12', 'XX');
INSERT INTO `sys_statistics` VALUES ('6d500f04b1154fff98b09f5eb7fb6142', '111.26.36.15', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 22:26:00', '吉林');
INSERT INTO `sys_statistics` VALUES ('6daaeaef2c464122a53ac9b25332ffe5', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 11:35:47', '吉林');
INSERT INTO `sys_statistics` VALUES ('6de88cec10994946b70d365cd9a209dc', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 19:18:53', '吉林');
INSERT INTO `sys_statistics` VALUES ('6e7c399451fb4b99a6ccef97797bc563', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-03', '2019-01-03 00:26:11', 'XX');
INSERT INTO `sys_statistics` VALUES ('6ed15bfac2bb4e0f92239e9731dcc2db', '223.104.16.80', '中国  吉林 长春', '移动', '2019-03-10', '2019-03-10 21:12:49', '吉林');
INSERT INTO `sys_statistics` VALUES ('6ed74f5683fc426590c7a3132191e006', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 21:16:40', '吉林');
INSERT INTO `sys_statistics` VALUES ('6f102fda0c6d42529762f66d0535aae5', '124.234.225.105', '中国  吉林 长春', '电信', '2019-01-13', '2019-01-13 17:58:33', '吉林');
INSERT INTO `sys_statistics` VALUES ('6f14fa56c45940e69012bd4c3b6451b1', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:36:36', 'XX');
INSERT INTO `sys_statistics` VALUES ('6f17065dd9de415e8719546a47611b12', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 22:51:18', 'XX');
INSERT INTO `sys_statistics` VALUES ('6f3a1d7ba58d4a3987e8a5fb33e64d51', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 15:25:35', 'XX');
INSERT INTO `sys_statistics` VALUES ('6f3cd2ef28ad4ec5898ee25b53b38ecb', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 19:03:30', '吉林');
INSERT INTO `sys_statistics` VALUES ('6f526497233e4e4dab799832edb45035', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 14:56:27', '吉林');
INSERT INTO `sys_statistics` VALUES ('6f6edb3026af43b0a5e0d586e7903f17', '124.234.225.105', '中国  吉林 长春', '电信', '2019-01-13', '2019-01-13 14:18:04', '吉林');
INSERT INTO `sys_statistics` VALUES ('6f7fcce5818148ddb8c184eb90a930b3', '124.234.225.105', '中国  吉林 长春', '电信', '2019-01-13', '2019-01-13 14:18:49', '吉林');
INSERT INTO `sys_statistics` VALUES ('6f986bcafd6d44059e0bf27f20b743c5', '123.172.48.28', '中国  吉林 长春', '电信', '2019-01-11', '2019-01-11 19:59:27', '吉林');
INSERT INTO `sys_statistics` VALUES ('6fab756cfc084a37a7a9907ae300b33f', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:23:27', 'XX');
INSERT INTO `sys_statistics` VALUES ('6fbb4761bdd94329b446bb905158c7aa', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 16:30:04', 'XX');
INSERT INTO `sys_statistics` VALUES ('6fe1ef0fae124561b9dacd72e0f0599f', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:14:20', 'XX');
INSERT INTO `sys_statistics` VALUES ('700ae063af92439babb743dfebd1886b', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 17:16:57', '吉林');
INSERT INTO `sys_statistics` VALUES ('70156b34121945c0ae6d8c9f4eb25c20', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-27', '2019-03-27 22:25:38', '吉林');
INSERT INTO `sys_statistics` VALUES ('7022bef4d9dc46b8ae24cdf11bb41b76', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 23:03:01', '吉林');
INSERT INTO `sys_statistics` VALUES ('703ab5c12bfd4c25870e6feb90b100a1', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 23:47:32', 'XX');
INSERT INTO `sys_statistics` VALUES ('706d6910dc174201a2a35b6c6cd02b70', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 16:19:02', '吉林');
INSERT INTO `sys_statistics` VALUES ('7094f3c272fc49eeab1ae85c02a7175f', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-27', '2019-03-27 22:51:50', '吉林');
INSERT INTO `sys_statistics` VALUES ('7136211b221a4ebb9cdd9fcfa987e7b1', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 16:24:31', '吉林');
INSERT INTO `sys_statistics` VALUES ('717c2deab7f44631b4198fa86e76eb0d', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 16:17:04', '吉林');
INSERT INTO `sys_statistics` VALUES ('7197b1d25fb540ffa0c1f19379c9f84a', '219.149.214.105', '中国  吉林 长春', '电信', '2019-03-04', '2019-03-04 16:02:08', '吉林');
INSERT INTO `sys_statistics` VALUES ('71b5e6b879ec400680e4dc5d588401fe', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 15:04:29', '吉林');
INSERT INTO `sys_statistics` VALUES ('71c32d1aafab46d7a1a7e9aca9a0b40a', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-07', '2019-03-07 17:35:43', '吉林');
INSERT INTO `sys_statistics` VALUES ('71c538372e864b8f89a649f29ab1205d', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 11:36:40', '吉林');
INSERT INTO `sys_statistics` VALUES ('7208663d39f5498da55e71063d1d1df0', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-27', '2019-03-27 22:26:58', '吉林');
INSERT INTO `sys_statistics` VALUES ('7220b58290aa40c1a6f871324d1361f0', '124.234.225.45', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 21:55:54', '吉林');
INSERT INTO `sys_statistics` VALUES ('72505fe1b3034ff5aa31c316af8e9378', '36.104.54.72', '中国  吉林 长春', '电信', '2019-01-08', '2019-01-08 17:22:32', '吉林');
INSERT INTO `sys_statistics` VALUES ('725de58a2ffd498b956f67049db368dd', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 16:29:52', '吉林');
INSERT INTO `sys_statistics` VALUES ('72f34bdf33904b72a7a37ec50cf4cfd7', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:46:44', 'XX');
INSERT INTO `sys_statistics` VALUES ('72f4179116814d92b3d073ab6fa0093e', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 18:10:03', '吉林');
INSERT INTO `sys_statistics` VALUES ('733de820954e4cc38ae9ceaaf04e9f1c', '123.172.56.82', '中国  吉林 长春', '电信', '2019-01-12', '2019-01-12 19:55:42', '吉林');
INSERT INTO `sys_statistics` VALUES ('7352f51c9ca84484825663657158a7d8', '36.104.54.72', '中国  吉林 长春', '电信', '2019-01-08', '2019-01-08 17:25:38', '吉林');
INSERT INTO `sys_statistics` VALUES ('7391f413c9cb453991ccd82c9dab2e3c', '36.48.113.165', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 16:27:05', '吉林');
INSERT INTO `sys_statistics` VALUES ('7397935b8866444c9d7ea1b2929885ca', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:22:52', 'XX');
INSERT INTO `sys_statistics` VALUES ('73ab4262a22f4f9ea163ae92d583be2a', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 21:28:44', '吉林');
INSERT INTO `sys_statistics` VALUES ('73ae7047aa9749f9b904579b53e2c8e4', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 15:25:27', 'XX');
INSERT INTO `sys_statistics` VALUES ('73c5f94dbc3843098b82e47439523f55', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 11:43:59', '吉林');
INSERT INTO `sys_statistics` VALUES ('7421ef8f0eba45c4a597f36c41f84c7c', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 10:23:19', '吉林');
INSERT INTO `sys_statistics` VALUES ('743c104ceb944e8f81c6c793e65f8538', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 11:44:07', '吉林');
INSERT INTO `sys_statistics` VALUES ('7441a5acaf564b2693a85a467feaf127', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:42:24', 'XX');
INSERT INTO `sys_statistics` VALUES ('748e438e9a674538a6874666f4d63cd7', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 19:26:37', '吉林');
INSERT INTO `sys_statistics` VALUES ('74ac78d946684c689462f5d7639e1fea', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 15:25:56', 'XX');
INSERT INTO `sys_statistics` VALUES ('74c7247fbd0a493ca25ecacc009c52ee', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:26:57', 'XX');
INSERT INTO `sys_statistics` VALUES ('74f58042d03e4dbdb3274b8aa8dce7e4', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:59:21', 'XX');
INSERT INTO `sys_statistics` VALUES ('75191491b60a4e0795f2b4acd1465d0e', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:46:23', 'XX');
INSERT INTO `sys_statistics` VALUES ('753368ed3a9b40a3a598a920b5091f30', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 17:18:43', '吉林');
INSERT INTO `sys_statistics` VALUES ('756bd8eb6c9b4daaac91057f34baafc7', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:54:32', 'XX');
INSERT INTO `sys_statistics` VALUES ('7572f1b278fe4566a0e03e8d5535915d', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 17:01:51', 'XX');
INSERT INTO `sys_statistics` VALUES ('7578dd3bd90841adab18a7ebf2b511b9', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 23:15:21', 'XX');
INSERT INTO `sys_statistics` VALUES ('7587cf34583e45ed80eabcaad17ffebd', '111.26.36.29', '中国  吉林 吉林', '移动', '2019-02-14', '2019-02-14 17:20:04', '吉林');
INSERT INTO `sys_statistics` VALUES ('75b6b980134c444783ae97ba9381e095', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 20:48:21', '吉林');
INSERT INTO `sys_statistics` VALUES ('75bce26c8d4b40c795ac7b9bb8b3b78d', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 12:08:18', 'XX');
INSERT INTO `sys_statistics` VALUES ('75e50d34cacc434ea6c80b35df1bc93e', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 16:31:37', 'XX');
INSERT INTO `sys_statistics` VALUES ('75e5ba8dd6b74a46b522d7a4e2ab13f6', '117.136.58.128', '中国  吉林 XX', '移动', '2019-02-14', '2019-02-14 15:59:21', '吉林');
INSERT INTO `sys_statistics` VALUES ('75eed3a80e294fbd8f4fe8887175e5f6', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-27', '2019-03-27 22:51:52', '吉林');
INSERT INTO `sys_statistics` VALUES ('76145dac7c804d2ba1af4ea7a835af42', '223.104.16.80', '中国  吉林 长春', '移动', '2019-03-10', '2019-03-10 21:06:52', '吉林');
INSERT INTO `sys_statistics` VALUES ('761ffc112ae94991906f1b4761f83717', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 18:01:41', '吉林');
INSERT INTO `sys_statistics` VALUES ('7655d5d09dc74537b374236f93674a7f', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-03', '2019-01-03 00:26:59', 'XX');
INSERT INTO `sys_statistics` VALUES ('76cef31a2b0d424f85887f8d3673a028', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 21:58:16', '吉林');
INSERT INTO `sys_statistics` VALUES ('76d8c1cac5ba482b8c916d539e0cf6d7', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 16:20:34', '吉林');
INSERT INTO `sys_statistics` VALUES ('770ce767709e41a5a5f4b358e31e1779', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 17:33:28', '吉林');
INSERT INTO `sys_statistics` VALUES ('779602a74eab444bb2294be10a6b26ef', '36.104.27.246', '中国  吉林 长春', '电信', '2019-02-17', '2019-02-17 10:20:10', '吉林');
INSERT INTO `sys_statistics` VALUES ('77a8968a2ad840c09f888ad79082b30e', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 16:30:45', '吉林');
INSERT INTO `sys_statistics` VALUES ('77becaa4ffca4631b110d93d2a85d01b', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 09:46:21', '吉林');
INSERT INTO `sys_statistics` VALUES ('77cbaab76dde4198a25213937a66ce2f', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:59:27', 'XX');
INSERT INTO `sys_statistics` VALUES ('7821d02eb10549768b9c3329a6805e52', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 20:03:36', '吉林');
INSERT INTO `sys_statistics` VALUES ('78787a0356bd4138a9a1aa18c76979d2', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:55:57', 'XX');
INSERT INTO `sys_statistics` VALUES ('78ca8df98c004a998521c9b96f380d43', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:18:43', 'XX');
INSERT INTO `sys_statistics` VALUES ('78e9a57d228f44bb9184a05214117794', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:37:14', 'XX');
INSERT INTO `sys_statistics` VALUES ('78fe3680294a46c4a5f8abf35c5ac532', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 15:27:28', 'XX');
INSERT INTO `sys_statistics` VALUES ('7903d12663984a07963807d87be3c383', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:51:53', 'XX');
INSERT INTO `sys_statistics` VALUES ('7909a237c4144419811c61f7d7bf877b', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:48:18', 'XX');
INSERT INTO `sys_statistics` VALUES ('795b20efe9754ea0843f4d72083e540d', '117.136.190.14', '中国  北京 北京', '移动', '2019-02-24', '2019-02-24 23:58:48', '北京');
INSERT INTO `sys_statistics` VALUES ('795b3f2d022f4ee4bdd4087b8fc78b27', '124.234.225.45', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 22:27:19', '吉林');
INSERT INTO `sys_statistics` VALUES ('796cdd219481462e8e4d163f49ce30b5', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:33:17', 'XX');
INSERT INTO `sys_statistics` VALUES ('79bdef59956c4777964ff2f14fd1c37d', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:31:43', 'XX');
INSERT INTO `sys_statistics` VALUES ('7a37bc153fde4ab79b520c820adb1954', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-07', '2019-03-07 12:44:43', '吉林');
INSERT INTO `sys_statistics` VALUES ('7a621afb879a47cd9d2f74a8b269f296', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 22:47:55', 'XX');
INSERT INTO `sys_statistics` VALUES ('7a77c73f81cc4ab48da8914c2e7ff44b', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:32:44', 'XX');
INSERT INTO `sys_statistics` VALUES ('7ab002e81ad24c74ab1d09fed18e980c', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:02:34', 'XX');
INSERT INTO `sys_statistics` VALUES ('7ad444cf9951479ab12b468e00e31942', '218.247.142.216', '中国  北京 北京', '鹏博士', '2019-03-28', '2019-03-28 20:16:00', '北京');
INSERT INTO `sys_statistics` VALUES ('7aeb14aab3f04d76a5ed44e78772857b', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 12:33:53', '吉林');
INSERT INTO `sys_statistics` VALUES ('7af58e8ade4a45aabe203bd490b5d2af', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 22:47:56', 'XX');
INSERT INTO `sys_statistics` VALUES ('7b453a2100c24ce7baf64416c55374f8', '36.104.51.72', '中国  吉林 长春', '电信', '2019-01-11', '2019-01-11 19:59:45', '吉林');
INSERT INTO `sys_statistics` VALUES ('7b5d29d5b49d43b5a894377557dced9b', '223.104.16.80', '中国  吉林 长春', '移动', '2019-03-10', '2019-03-10 21:09:40', '吉林');
INSERT INTO `sys_statistics` VALUES ('7b6a801a5ec44dad8c26d52cb0ad9518', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:46:10', 'XX');
INSERT INTO `sys_statistics` VALUES ('7b6e06690e564333b5c4d30170e00c41', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 10:42:12', 'XX');
INSERT INTO `sys_statistics` VALUES ('7bff986360cf4b19adde8468c4cb9d63', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 10:47:30', 'XX');
INSERT INTO `sys_statistics` VALUES ('7c717a547d36447aa2da2a170542900f', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:04:28', 'XX');
INSERT INTO `sys_statistics` VALUES ('7caaf770f5a44c2eb035bdeee7b2785c', '36.104.23.30', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 19:17:11', '吉林');
INSERT INTO `sys_statistics` VALUES ('7cb24bad7fc34e15b526cfd467fededb', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:31:18', '吉林');
INSERT INTO `sys_statistics` VALUES ('7cb30d54547f4c5e9a7fc57a401f14df', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:23:06', '吉林');
INSERT INTO `sys_statistics` VALUES ('7cc1e26b3f6c4e6283bad01df7f4e16f', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 11:12:15', '吉林');
INSERT INTO `sys_statistics` VALUES ('7cc8c5e4fabf42619076b79dc69a6bbf', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:52:15', 'XX');
INSERT INTO `sys_statistics` VALUES ('7cdbd837903d4017b8fea171000f62fd', '117.136.6.121', '中国  吉林 XX', '移动', '2019-02-14', '2019-02-14 16:14:45', '吉林');
INSERT INTO `sys_statistics` VALUES ('7d05bf4256f04d8aab9f41d937fd2524', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 00:02:23', 'XX');
INSERT INTO `sys_statistics` VALUES ('7d7882d438854cc598429f3b635957c5', '111.26.36.117', '中国  吉林 吉林', '移动', '2019-02-16', '2019-02-16 17:19:24', '吉林');
INSERT INTO `sys_statistics` VALUES ('7d86408ddfa847ee9207c3c7357c24f1', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 12:23:11', '吉林');
INSERT INTO `sys_statistics` VALUES ('7d95fa69b6a144c0a1b843d9d6ef01a3', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 23:07:05', 'XX');
INSERT INTO `sys_statistics` VALUES ('7dfca6a482bd4b2f8a54ad26f564fb85', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 19:28:53', '吉林');
INSERT INTO `sys_statistics` VALUES ('7e1e4548cd924a87b709fbb1161b3ff8', '111.26.36.117', '中国  吉林 吉林', '移动', '2019-02-16', '2019-02-16 20:01:47', '吉林');
INSERT INTO `sys_statistics` VALUES ('7e20d81a67314fd99563ec6e13470b1f', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 17:07:20', 'XX');
INSERT INTO `sys_statistics` VALUES ('7e4a6cf40fbf4e4a9e5c2a67d8967dbf', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-27', '2019-03-27 21:53:39', '吉林');
INSERT INTO `sys_statistics` VALUES ('7e5615111abd434ab01f3a0a98916c03', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 11:35:29', '吉林');
INSERT INTO `sys_statistics` VALUES ('7e57a2ac0db94b359f892950d475840f', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 00:05:42', 'XX');
INSERT INTO `sys_statistics` VALUES ('7e59a4b536af41e080f20727f11ab722', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 16:35:14', 'XX');
INSERT INTO `sys_statistics` VALUES ('7e8b97e63a1843f38dc8af38df2326d2', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 16:10:15', '吉林');
INSERT INTO `sys_statistics` VALUES ('7eff4d8c7d344c49b7fda41fa175d62f', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:20:06', 'XX');
INSERT INTO `sys_statistics` VALUES ('7fb7350149ad4a3982a9aaa38a06a463', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-03', '2019-01-03 00:27:02', 'XX');
INSERT INTO `sys_statistics` VALUES ('7fbf975a83164ea79b3de18c2f5bee74', '36.104.54.72', '中国  吉林 长春', '电信', '2019-01-08', '2019-01-08 17:25:17', '吉林');
INSERT INTO `sys_statistics` VALUES ('7fd2355233684c4c9aaab35ff1e62933', '218.247.142.216', '中国  北京 北京', '鹏博士', '2019-03-28', '2019-03-28 20:02:53', '北京');
INSERT INTO `sys_statistics` VALUES ('7fe3057b004048d09a16227595c28f7e', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 17:19:30', 'XX');
INSERT INTO `sys_statistics` VALUES ('7ffe2d1af26c45fc9623aef56aaa90ed', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:19:37', 'XX');
INSERT INTO `sys_statistics` VALUES ('800d987c5ac6439aba51796f7f84fbc0', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:13:55', 'XX');
INSERT INTO `sys_statistics` VALUES ('8034cc122caa4a41b242150a8d281774', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 19:09:01', '吉林');
INSERT INTO `sys_statistics` VALUES ('808bc7c604734659aa67839f90bb1d23', '36.104.23.30', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 19:15:32', '吉林');
INSERT INTO `sys_statistics` VALUES ('80a314bd38554c9d9e471e966d62d822', '36.48.113.165', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 16:24:04', '吉林');
INSERT INTO `sys_statistics` VALUES ('80a630ce12ca4e74b7e5a87d95ce1aa6', '123.172.48.28', '中国  吉林 长春', '电信', '2019-01-08', '2019-01-08 17:21:20', '吉林');
INSERT INTO `sys_statistics` VALUES ('80c33b8c44544fac84555b9066b4f720', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 11:45:31', '吉林');
INSERT INTO `sys_statistics` VALUES ('80c3814f889042479765cd21c267bef6', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-07', '2019-03-07 17:14:23', '吉林');
INSERT INTO `sys_statistics` VALUES ('80e2a823fded4a4fb1de3bc9dc6b41e7', '36.104.51.39', '中国  吉林 长春', '电信', '2019-01-11', '2019-01-11 12:09:17', '吉林');
INSERT INTO `sys_statistics` VALUES ('80e9c69e68f5462aab1b0fd83794ca0e', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:42:58', 'XX');
INSERT INTO `sys_statistics` VALUES ('811b440745c34c479b2bc872f725a811', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:05:03', 'XX');
INSERT INTO `sys_statistics` VALUES ('813103712c4f487ca42a2f8bc8a501bf', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 23:23:36', 'XX');
INSERT INTO `sys_statistics` VALUES ('8136908a835d4c6bb65464ddf95c88e0', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-07', '2019-03-07 22:45:43', '吉林');
INSERT INTO `sys_statistics` VALUES ('815bae884d694cfdaf3e9869a553e52f', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:58:46', 'XX');
INSERT INTO `sys_statistics` VALUES ('8175918ea11745f4ae0cc15ed3a8e38e', '218.247.142.216', '中国  北京 北京', '鹏博士', '2019-03-28', '2019-03-28 20:03:15', '北京');
INSERT INTO `sys_statistics` VALUES ('817ab67c6cb74616adea6764eca69a21', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:03:26', 'XX');
INSERT INTO `sys_statistics` VALUES ('819bd3fedec340a4a130d29202f0d6d4', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 23:06:17', '吉林');
INSERT INTO `sys_statistics` VALUES ('81c1df64b61a4908be8277560fa76855', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 20:02:38', '吉林');
INSERT INTO `sys_statistics` VALUES ('81d05716fc3249c7aa6c668800ff5752', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 15:25:59', 'XX');
INSERT INTO `sys_statistics` VALUES ('81ef3c0ab2a946259f47c0aff998d548', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 12:34:34', '吉林');
INSERT INTO `sys_statistics` VALUES ('820743c7830b48fe8538a352ef9f04c1', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:59:57', 'XX');
INSERT INTO `sys_statistics` VALUES ('8260cc5cfca548a780a8d59b3e72599f', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:15:46', 'XX');
INSERT INTO `sys_statistics` VALUES ('827f0ec98ff343d8951edda70014166f', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 14:58:48', '吉林');
INSERT INTO `sys_statistics` VALUES ('8286e8e807dc46e6a87b8eacac64abd5', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:41:18', 'XX');
INSERT INTO `sys_statistics` VALUES ('828a5b33f388425c8db08a8fab841264', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:30:39', 'XX');
INSERT INTO `sys_statistics` VALUES ('832a463d6b814d7dbfd0c2c0a45688eb', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 18:24:49', 'XX');
INSERT INTO `sys_statistics` VALUES ('83440d6d708c4b5491750ba463572588', '36.48.113.165', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 16:25:10', '吉林');
INSERT INTO `sys_statistics` VALUES ('835b7394d24c48999c62d4f96c278837', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 12:50:11', 'XX');
INSERT INTO `sys_statistics` VALUES ('836821ecb13f4e6399970d1943f9490d', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 21:40:04', '吉林');
INSERT INTO `sys_statistics` VALUES ('836d8a249bc44ce7b1615aa043453779', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 19:20:19', '吉林');
INSERT INTO `sys_statistics` VALUES ('83ae4341aa704e8992412755ae03607a', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 18:40:33', '吉林');
INSERT INTO `sys_statistics` VALUES ('83c9c5c119584f7e8ffcbe0ab21f31ca', '124.234.225.105', '中国  吉林 长春', '电信', '2019-01-13', '2019-01-13 18:58:40', '吉林');
INSERT INTO `sys_statistics` VALUES ('83fcdf0fde1844e68b115b0e304edb85', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 23:05:59', '吉林');
INSERT INTO `sys_statistics` VALUES ('840ac66f941d4494b31281822e83d416', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:10:29', 'XX');
INSERT INTO `sys_statistics` VALUES ('840c7f5c51914611aeecb6b5a731dd7d', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:42:48', 'XX');
INSERT INTO `sys_statistics` VALUES ('8455b2457ac14eada0fe1cf94603f65f', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:16:52', '吉林');
INSERT INTO `sys_statistics` VALUES ('84abd3f2918048488d590bfe9050eec5', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:55:46', 'XX');
INSERT INTO `sys_statistics` VALUES ('84b7cd552479427ebe8006adbd6e02db', '117.136.58.128', '中国  吉林 XX', '移动', '2019-02-14', '2019-02-14 15:59:13', '吉林');
INSERT INTO `sys_statistics` VALUES ('84d07de9bec7461ba3ab8fbdfee4cb86', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:32:30', 'XX');
INSERT INTO `sys_statistics` VALUES ('84da8c7ca5a0438dac4b08e416eaa24a', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 22:51:56', 'XX');
INSERT INTO `sys_statistics` VALUES ('85ec3cd673f5400ca916d9bb92c16976', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 16:14:35', '吉林');
INSERT INTO `sys_statistics` VALUES ('85fbc95e3511440cbbac8239e441fe33', '36.104.26.201', '中国  吉林 长春', '电信', '2019-03-04', '2019-03-04 14:03:03', '吉林');
INSERT INTO `sys_statistics` VALUES ('85febf404a8a4818a2b67cbc421ad3ca', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-07', '2019-03-07 22:51:55', '吉林');
INSERT INTO `sys_statistics` VALUES ('86128a350d684185acdf565a204e6f19', '36.104.26.201', '中国  吉林 长春', '电信', '2019-03-04', '2019-03-04 13:10:08', '吉林');
INSERT INTO `sys_statistics` VALUES ('86421646cbb7406f8b206aea93cb5271', '111.26.36.15', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 22:26:23', '吉林');
INSERT INTO `sys_statistics` VALUES ('8680d592c434445a9c55aaddc923e86f', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 18:11:09', 'XX');
INSERT INTO `sys_statistics` VALUES ('8695bf67b29a4f218535ea08910119c8', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 19:50:37', '吉林');
INSERT INTO `sys_statistics` VALUES ('86f9a50349c24a8c9acaf87985055ee7', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 17:12:27', 'XX');
INSERT INTO `sys_statistics` VALUES ('870408fc000a4c3f8f26ecab02d96090', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 14:32:16', '吉林');
INSERT INTO `sys_statistics` VALUES ('870574700595438c8ac2553d851548ae', '36.104.23.30', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 19:18:10', '吉林');
INSERT INTO `sys_statistics` VALUES ('8721a3b8b9e64e508137945fdb7e8b11', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 19:51:11', '吉林');
INSERT INTO `sys_statistics` VALUES ('8730afae6e6c4b76ad6c5cf8df6b106b', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 10:10:22', 'XX');
INSERT INTO `sys_statistics` VALUES ('877d1f4c554d4e86a6dc199690084c4e', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 15:25:33', 'XX');
INSERT INTO `sys_statistics` VALUES ('87fbb81034f64122bec6d67dcbd84949', '124.234.225.17', '中国  吉林 长春', '电信', '2019-01-12', '2019-01-12 12:29:01', '吉林');
INSERT INTO `sys_statistics` VALUES ('881eb6f5b88e41b1ab3347c2a68f031b', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:23:21', 'XX');
INSERT INTO `sys_statistics` VALUES ('88279c119cc8444fa2b8ee48801788e7', '123.172.56.82', '中国  吉林 长春', '电信', '2019-01-12', '2019-01-12 17:11:41', '吉林');
INSERT INTO `sys_statistics` VALUES ('885dc9e2dc594ad48f04f6eea9d744ca', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 19:28:37', '吉林');
INSERT INTO `sys_statistics` VALUES ('886b60116f1b4a5080ca2e213f437969', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:11:42', 'XX');
INSERT INTO `sys_statistics` VALUES ('88d8373666e74f96af51800853bfb11d', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-27', '2019-03-27 22:29:45', '吉林');
INSERT INTO `sys_statistics` VALUES ('890822856beb42759f12da1113911aa7', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 12:34:25', '吉林');
INSERT INTO `sys_statistics` VALUES ('8916939df95c47f1b94fcf7d7d0987ff', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 15:37:49', 'XX');
INSERT INTO `sys_statistics` VALUES ('892a7baf9d27468eb215f87c2b9dde39', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 19:49:17', '吉林');
INSERT INTO `sys_statistics` VALUES ('893c90c020694fdd91c1f2642ca265c9', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 17:17:47', '吉林');
INSERT INTO `sys_statistics` VALUES ('89d903d1241e4a2c97af6335c11006bb', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 16:20:26', '吉林');
INSERT INTO `sys_statistics` VALUES ('8a0e66d18ef54c10ad40568c62d9eea9', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-27', '2019-03-27 22:50:13', '吉林');
INSERT INTO `sys_statistics` VALUES ('8a31afc1331d4becb879747c9c852573', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 15:12:56', 'XX');
INSERT INTO `sys_statistics` VALUES ('8ab569268c0c4c8484c0a0c182c49a66', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:22:09', 'XX');
INSERT INTO `sys_statistics` VALUES ('8ad24eef3f30424a8379797711000b29', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 19:54:19', '吉林');
INSERT INTO `sys_statistics` VALUES ('8af10b6196b04024ad441099c21bba15', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-03', '2019-01-03 00:26:02', 'XX');
INSERT INTO `sys_statistics` VALUES ('8b2e7d32436e4689951e890f584ac7dd', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 10:40:45', 'XX');
INSERT INTO `sys_statistics` VALUES ('8b39dd8c7e2b45e693bf61cda079b5aa', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 12:11:38', 'XX');
INSERT INTO `sys_statistics` VALUES ('8b49f9f9eb084da4875a39eddf68c7d7', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-07', '2019-03-07 18:45:18', '吉林');
INSERT INTO `sys_statistics` VALUES ('8bb9e7d3d0d24d7da8b829a62b9ab5db', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-07', '2019-03-07 18:33:53', '吉林');
INSERT INTO `sys_statistics` VALUES ('8bc1174dd945498891a635c6a74fa0a1', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 20:01:30', '吉林');
INSERT INTO `sys_statistics` VALUES ('8be1aaa81ee94dffa8df95764160e89b', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 18:42:29', '吉林');
INSERT INTO `sys_statistics` VALUES ('8bf123e1cd3542df9bf0bc382bd11a75', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 23:36:38', '吉林');
INSERT INTO `sys_statistics` VALUES ('8c091d6768e5495c88ec1ce2b97f32b2', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 22:33:21', '吉林');
INSERT INTO `sys_statistics` VALUES ('8c1b870e4116479481afdcf290a6490e', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:22:57', '吉林');
INSERT INTO `sys_statistics` VALUES ('8c5300d392e9482789f65b4c8665eec7', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-27', '2019-03-27 22:50:14', '吉林');
INSERT INTO `sys_statistics` VALUES ('8c6d91d5fca34f63a2e97d177e03a737', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 19:20:11', '吉林');
INSERT INTO `sys_statistics` VALUES ('8c73731940d249449a70235b593eb3ac', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 19:01:18', '吉林');
INSERT INTO `sys_statistics` VALUES ('8c940b49d6a742fdaa7422386bdeabda', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 15:38:24', 'XX');
INSERT INTO `sys_statistics` VALUES ('8c9b978b4574494c89d619773ddbda10', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:06:25', 'XX');
INSERT INTO `sys_statistics` VALUES ('8cac446acd29477db0e7dd260b3d4fab', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 19:36:30', '吉林');
INSERT INTO `sys_statistics` VALUES ('8d56f1e6926f4961b91956f7f3e51457', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 20:02:01', '吉林');
INSERT INTO `sys_statistics` VALUES ('8d58548309a746fa88ceaf0368c23600', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 17:30:52', '吉林');
INSERT INTO `sys_statistics` VALUES ('8d800c4c8e3b4f799714959ace4af78a', '36.104.26.201', '中国  吉林 长春', '电信', '2019-03-04', '2019-03-04 13:10:17', '吉林');
INSERT INTO `sys_statistics` VALUES ('8ddc055e75a84290bec8f7bad9134559', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:17:39', 'XX');
INSERT INTO `sys_statistics` VALUES ('8e0d57afcded48d3a63dd861e1e6a663', '124.234.225.105', '中国  吉林 长春', '电信', '2019-01-13', '2019-01-13 14:18:48', '吉林');
INSERT INTO `sys_statistics` VALUES ('8e0f67d557ad4d969410039b1bdceece', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:05:16', 'XX');
INSERT INTO `sys_statistics` VALUES ('8e1fbb9dec8f4257849bd54bf90e05fa', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 20:05:06', '吉林');
INSERT INTO `sys_statistics` VALUES ('8e322397401c4e1982dc3c634ba6d259', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:19:36', 'XX');
INSERT INTO `sys_statistics` VALUES ('8e3fd71c3c8c41af8a0d13b89bdc315e', '36.49.187.12', '中国  吉林 长春', '电信', '2019-03-04', '2019-03-04 15:43:24', '吉林');
INSERT INTO `sys_statistics` VALUES ('8e51df3a6bcc44d6a2bed33a727b7986', '36.104.51.39', '中国  吉林 长春', '电信', '2019-01-11', '2019-01-11 12:11:08', '吉林');
INSERT INTO `sys_statistics` VALUES ('8e57a651ee914aceb5a4d25826cdcdef', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:14:43', 'XX');
INSERT INTO `sys_statistics` VALUES ('8ecf4c97a0fb4c72ba243423b26db2dd', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-27', '2019-03-27 22:23:28', '吉林');
INSERT INTO `sys_statistics` VALUES ('8f12acf3d5f945548b3bd67e9ee74e3f', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 17:30:19', '吉林');
INSERT INTO `sys_statistics` VALUES ('8f249e93c75c4f3c9c0b5723592a7f3a', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 19:50:01', '吉林');
INSERT INTO `sys_statistics` VALUES ('8fb772126ec2465fad2480eb39bdb121', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2018-10-10', '2018-10-10 01:21:18', 'XX');
INSERT INTO `sys_statistics` VALUES ('8fee7ec2557b4b548750f0bd27aba69d', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 12:01:26', 'XX');
INSERT INTO `sys_statistics` VALUES ('8ff6dcd7bb8d4ec196c6524973e6b25a', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 15:27:32', 'XX');
INSERT INTO `sys_statistics` VALUES ('8ffff9754f8c426ab9e46bd5fb8ed2dd', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 22:09:54', 'XX');
INSERT INTO `sys_statistics` VALUES ('9047a58a5ad043b89f5792009c05746e', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 16:30:25', '吉林');
INSERT INTO `sys_statistics` VALUES ('9068b9ce4f1a4ab2948499068c67db9b', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 15:04:01', '吉林');
INSERT INTO `sys_statistics` VALUES ('9073003fb402490d88eb732d228d216d', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 10:22:01', '吉林');
INSERT INTO `sys_statistics` VALUES ('9086854c1243425db2eafc4c6e97a8c1', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 00:07:27', 'XX');
INSERT INTO `sys_statistics` VALUES ('908b896e8c3d45be91b621168d3cc1ff', '36.104.26.201', '中国  吉林 长春', '电信', '2019-03-04', '2019-03-04 13:06:46', '吉林');
INSERT INTO `sys_statistics` VALUES ('90dea105b1dd4159acdd61f651c20e1a', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:14:21', 'XX');
INSERT INTO `sys_statistics` VALUES ('90ed6d1ab87a469099f36dc8afab6714', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 16:34:30', '吉林');
INSERT INTO `sys_statistics` VALUES ('90f19ab42b98497997aeef6676dc77a6', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:25:55', 'XX');
INSERT INTO `sys_statistics` VALUES ('91167ef72d354d01b226dd584cda904e', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:14:22', 'XX');
INSERT INTO `sys_statistics` VALUES ('9199c6cba3d044e7b6173a3e00d58f52', '36.104.54.72', '中国  吉林 长春', '电信', '2019-01-08', '2019-01-08 17:18:23', '吉林');
INSERT INTO `sys_statistics` VALUES ('919ca32c8502471c8600ebc39ae0c573', '123.172.56.82', '中国  吉林 长春', '电信', '2019-01-12', '2019-01-12 13:35:51', '吉林');
INSERT INTO `sys_statistics` VALUES ('91aed62171204ed897b18860c699bbc2', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 10:18:43', 'XX');
INSERT INTO `sys_statistics` VALUES ('91afee9c79eb46bf8557cb51f264f7b4', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:52:39', 'XX');
INSERT INTO `sys_statistics` VALUES ('91f1bd90cce142b18c1bcd9853ff366d', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 16:27:25', 'XX');
INSERT INTO `sys_statistics` VALUES ('921dbfb0082b466e8d8a8eb208f5fab4', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:29:26', 'XX');
INSERT INTO `sys_statistics` VALUES ('9248064c63884cb18b040d6c3583f81a', '111.26.36.117', '中国  吉林 吉林', '移动', '2019-02-16', '2019-02-16 19:45:21', '吉林');
INSERT INTO `sys_statistics` VALUES ('92865db8b1814aa4855841ab4a2643f5', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 00:21:28', 'XX');
INSERT INTO `sys_statistics` VALUES ('92f81c8e2f18423e9b6e05ce8040880d', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:23:23', 'XX');
INSERT INTO `sys_statistics` VALUES ('92fb4b83d03a489e90e4fdb03b3b8abb', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 14:57:03', '吉林');
INSERT INTO `sys_statistics` VALUES ('931d74d0e5f7483dbb24b07bd98708df', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:17:42', 'XX');
INSERT INTO `sys_statistics` VALUES ('934327bfe19545248c1c513a4d118e6f', '111.26.36.29', '中国  吉林 吉林', '移动', '2019-02-14', '2019-02-14 17:24:28', '吉林');
INSERT INTO `sys_statistics` VALUES ('93968492ea854bd6bc383c8aeaca9a4a', '123.172.56.82', '中国  吉林 长春', '电信', '2019-01-12', '2019-01-12 19:52:41', '吉林');
INSERT INTO `sys_statistics` VALUES ('939d94ff9f3a4c3e94452dfadc1ab0ee', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 10:22:07', '吉林');
INSERT INTO `sys_statistics` VALUES ('93a304719d4d48889ff7efbe7edbc310', '124.234.225.45', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 22:29:03', '吉林');
INSERT INTO `sys_statistics` VALUES ('93da6653ef4d4bab9a46aa499aa0b266', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:23:16', 'XX');
INSERT INTO `sys_statistics` VALUES ('93e66b3c14574efbba9eab8a7c1970be', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:32:39', 'XX');
INSERT INTO `sys_statistics` VALUES ('942e36a11dde4a19bf4d079bc20613c2', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 00:15:01', 'XX');
INSERT INTO `sys_statistics` VALUES ('942fd71d6fae4e8da65195a4127efbac', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 16:20:00', '吉林');
INSERT INTO `sys_statistics` VALUES ('9444c6fddf3f4ff5b169a136b5cdc85d', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 10:48:27', 'XX');
INSERT INTO `sys_statistics` VALUES ('9464c7217a794597b998890eb940090b', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 16:32:06', 'XX');
INSERT INTO `sys_statistics` VALUES ('94700d1602634a93976b2855ff4d7646', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 20:48:11', '吉林');
INSERT INTO `sys_statistics` VALUES ('94c2cb3b52e6464997f4bc4bc77a159b', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:44:01', 'XX');
INSERT INTO `sys_statistics` VALUES ('94c8bbf3264b4186961fcd3b2e48e23c', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 17:23:03', '吉林');
INSERT INTO `sys_statistics` VALUES ('950a63c64ae34bf7bbb67ae2e5fab39c', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 23:47:57', 'XX');
INSERT INTO `sys_statistics` VALUES ('951c223d14c545afb40c510deb810824', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:22:59', '吉林');
INSERT INTO `sys_statistics` VALUES ('953c8ad69aea497084093f8622a5ce13', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:59:25', 'XX');
INSERT INTO `sys_statistics` VALUES ('95a99f86893143bbbdac8a0a2a8ef4fc', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 17:16:32', 'XX');
INSERT INTO `sys_statistics` VALUES ('95b1d3f8738441a7b3cc1fb29723a58c', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 17:16:11', 'XX');
INSERT INTO `sys_statistics` VALUES ('964057daea084ed8a8b507e2686242ae', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-27', '2019-03-27 22:33:35', '吉林');
INSERT INTO `sys_statistics` VALUES ('964bc97a04d74bbd830a3473882e5f51', '36.48.113.165', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 16:29:05', '吉林');
INSERT INTO `sys_statistics` VALUES ('965165ea31924bf7b814763e4a60a4ee', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 00:18:43', 'XX');
INSERT INTO `sys_statistics` VALUES ('96648d42ac2f4970b09b4760e65186ac', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:05:14', 'XX');
INSERT INTO `sys_statistics` VALUES ('96693f580f6242faa1ed39b7a3d93f42', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 23:07:03', 'XX');
INSERT INTO `sys_statistics` VALUES ('967a3805b3264ea297a08b3f58ccc432', '36.104.51.39', '中国  吉林 长春', '电信', '2019-01-11', '2019-01-11 12:07:16', '吉林');
INSERT INTO `sys_statistics` VALUES ('968e9ca7f4684e2f81cede9d3eba9f8b', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:20:36', 'XX');
INSERT INTO `sys_statistics` VALUES ('969c6fe0f5dc4cc8b6714158074ed475', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 22:09:53', '吉林');
INSERT INTO `sys_statistics` VALUES ('96d1fa815fc94da38cb443ce7b866d04', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 22:57:15', 'XX');
INSERT INTO `sys_statistics` VALUES ('96e247781aee42049717957bc3e7e53a', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 00:12:37', 'XX');
INSERT INTO `sys_statistics` VALUES ('970009b6eebb4103997b03389fb4a645', '111.26.36.117', '中国  吉林 吉林', '移动', '2019-02-16', '2019-02-16 17:48:06', '吉林');
INSERT INTO `sys_statistics` VALUES ('97149ff06288477a979d069acb3eb23e', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 22:49:40', 'XX');
INSERT INTO `sys_statistics` VALUES ('976d51538a2545c8842449176661410d', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 00:10:22', 'XX');
INSERT INTO `sys_statistics` VALUES ('97c0adb113d44419a89c9b1786dde576', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 19:48:02', '吉林');
INSERT INTO `sys_statistics` VALUES ('97fd3ac3f6a34ab18199bd6071a6b6c8', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:19:30', 'XX');
INSERT INTO `sys_statistics` VALUES ('980fccf6ec974a6aaf3c4fde1b7cecdc', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 15:25:53', 'XX');
INSERT INTO `sys_statistics` VALUES ('98375d7fde704d7aac6979f4ebb3f856', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 16:32:02', '吉林');
INSERT INTO `sys_statistics` VALUES ('9866f57317bc463683ec6db32faad502', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 00:12:38', 'XX');
INSERT INTO `sys_statistics` VALUES ('9886698a45d54cdca498d34bdd02b786', '118.89.225.69', '中国  天津 天津', '电信', '2019-01-11', '2019-01-11 21:49:54', '天津');
INSERT INTO `sys_statistics` VALUES ('9894fb93572d4cd2b27b85b474bcaac0', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 15:04:51', '吉林');
INSERT INTO `sys_statistics` VALUES ('98b24de5533245ed8ed03100ce94357a', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 15:34:32', 'XX');
INSERT INTO `sys_statistics` VALUES ('990a0a2b826e4a88adabd0a6ed9d6dd9', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 18:08:48', '吉林');
INSERT INTO `sys_statistics` VALUES ('9950788474354302ac91d86334b25719', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 17:11:40', 'XX');
INSERT INTO `sys_statistics` VALUES ('9988a0137c8d45ba929725a5945e1d73', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 00:07:29', 'XX');
INSERT INTO `sys_statistics` VALUES ('99af83908a0f47e89399733dcc379dda', '123.172.48.28', '中国  吉林 长春', '电信', '2019-01-11', '2019-01-11 20:02:42', '吉林');
INSERT INTO `sys_statistics` VALUES ('99d964584a6f4582bc9d0bc005a495e3', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:32:33', 'XX');
INSERT INTO `sys_statistics` VALUES ('9a3c46108600412ca22e84f8e48647fd', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 12:01:21', 'XX');
INSERT INTO `sys_statistics` VALUES ('9a3ebdb1c32c414cb3abd43c2e46c023', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:33:31', 'XX');
INSERT INTO `sys_statistics` VALUES ('9a686b6a2ab94410b624244fdba7e2f7', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-07', '2019-03-07 23:21:20', '吉林');
INSERT INTO `sys_statistics` VALUES ('9a6ba37ff9b04b5b992ac7abaf89f243', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 22:43:32', 'XX');
INSERT INTO `sys_statistics` VALUES ('9a918edf6e2f402680cac23f9cbb0de8', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:36:42', '吉林');
INSERT INTO `sys_statistics` VALUES ('9a96936e4509439db2cc2c97f2948105', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 20:46:47', '吉林');
INSERT INTO `sys_statistics` VALUES ('9ac631573e1e49a49292983bad5ede58', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 16:28:47', 'XX');
INSERT INTO `sys_statistics` VALUES ('9ae04838a70d4748a7e45f7e36debd81', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:53:03', 'XX');
INSERT INTO `sys_statistics` VALUES ('9af8d5ec6adf493eafa8edb7700d113e', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 20:01:36', '吉林');
INSERT INTO `sys_statistics` VALUES ('9b25b33206e44bc6aa12cf19c3d73728', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-07', '2019-03-07 17:30:09', '吉林');
INSERT INTO `sys_statistics` VALUES ('9b29c9a91f86402ea6fedeb213ddc960', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:53:12', 'XX');
INSERT INTO `sys_statistics` VALUES ('9b2e1c65f4e1451c81e468be0131d602', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 16:31:50', '吉林');
INSERT INTO `sys_statistics` VALUES ('9b4569a3b1124207b4794ffee5fc2252', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 11:24:15', '吉林');
INSERT INTO `sys_statistics` VALUES ('9b6099d6200f420bb6969584a311ddc4', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-27', '2019-03-27 22:24:53', '吉林');
INSERT INTO `sys_statistics` VALUES ('9b8f94f3596b4d808bacd430d65488f8', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-07', '2019-03-07 16:48:22', '吉林');
INSERT INTO `sys_statistics` VALUES ('9bbbd1f988844681af423b328f74d253', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-03', '2019-01-03 00:26:10', 'XX');
INSERT INTO `sys_statistics` VALUES ('9c0c5ccec3a24f1ebdbd844940be590a', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 20:48:24', '吉林');
INSERT INTO `sys_statistics` VALUES ('9c36ada7a9664d5080ece2065c7eb832', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 17:34:53', '吉林');
INSERT INTO `sys_statistics` VALUES ('9c71ae144de24307bfe4975116a034a2', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:33:18', 'XX');
INSERT INTO `sys_statistics` VALUES ('9c7d1f62533a451e92b1eecee0079efd', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 10:41:12', 'XX');
INSERT INTO `sys_statistics` VALUES ('9c9a40ffc9094896b83d58fb7a520488', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:27:44', 'XX');
INSERT INTO `sys_statistics` VALUES ('9cccb44f85c3482cb6fc882deefb83c6', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:18:35', 'XX');
INSERT INTO `sys_statistics` VALUES ('9cdb142eae754e3ca40b0a40afa90ecd', '36.104.51.219', '中国  吉林 长春', '电信', '2019-01-13', '2019-01-13 12:05:39', '吉林');
INSERT INTO `sys_statistics` VALUES ('9cdb2fb8d39a4a31975060e091455ef0', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:53:02', 'XX');
INSERT INTO `sys_statistics` VALUES ('9ce261de0efe4236b160d292b12d2dc0', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 19:52:54', '吉林');
INSERT INTO `sys_statistics` VALUES ('9cfced99fa7249ff8b9c7047797035bf', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 18:52:42', 'XX');
INSERT INTO `sys_statistics` VALUES ('9d2060eeeb3c4a7a9ccf5011672b6170', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:28:48', 'XX');
INSERT INTO `sys_statistics` VALUES ('9d4f441841634bb8a697367f0aca930b', '118.89.225.69', '中国  天津 天津', '电信', '2019-02-10', '2019-02-10 19:16:21', '天津');
INSERT INTO `sys_statistics` VALUES ('9d651329f1eb4579ab611c112c9ef9fa', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 19:20:45', '吉林');
INSERT INTO `sys_statistics` VALUES ('9d8e1cc7805b4890b01e205bdae1b0fa', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 10:26:28', '吉林');
INSERT INTO `sys_statistics` VALUES ('9d9f214cdf56472fb22460c4ed8c4538', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 22:09:54', 'XX');
INSERT INTO `sys_statistics` VALUES ('9dea1efcc810481491309787363f4755', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 15:04:13', '吉林');
INSERT INTO `sys_statistics` VALUES ('9e35443a3da0443eb9b19366e70c6ff6', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:13:53', '吉林');
INSERT INTO `sys_statistics` VALUES ('9e3dc0d641ff4da5be04b021600acf57', '36.49.187.12', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 13:41:04', '吉林');
INSERT INTO `sys_statistics` VALUES ('9e9295bec1ff4f6fb89e5f5701d978e3', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 23:47:36', 'XX');
INSERT INTO `sys_statistics` VALUES ('9e9a9996a2094bde852bde4a5d5db272', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 16:18:51', '吉林');
INSERT INTO `sys_statistics` VALUES ('9ec205459da0466ab3fc1326fbd4e0f9', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 23:15:20', 'XX');
INSERT INTO `sys_statistics` VALUES ('9f0ae7a274164b97aa0583b8f3d48837', '218.247.142.216', '中国  北京 北京', '鹏博士', '2019-03-28', '2019-03-28 20:15:53', '北京');
INSERT INTO `sys_statistics` VALUES ('9f1c41ffd26c4f2f968ca6138ca0e74a', '124.234.225.105', '中国  吉林 长春', '电信', '2019-01-13', '2019-01-13 17:58:32', '吉林');
INSERT INTO `sys_statistics` VALUES ('9f496e06ba9c46aab37019e37d774031', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 14:59:00', '吉林');
INSERT INTO `sys_statistics` VALUES ('9f650b898cea43ddaecad5861ca2715f', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:29:20', 'XX');
INSERT INTO `sys_statistics` VALUES ('9f94da567843405f8f9076e8b896ccd7', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 20:32:51', '吉林');
INSERT INTO `sys_statistics` VALUES ('9fa4b4955c374634aea7b74a72dc90c9', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 12:01:27', 'XX');
INSERT INTO `sys_statistics` VALUES ('9fa596106460484782d24a039005252a', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 16:26:36', 'XX');
INSERT INTO `sys_statistics` VALUES ('9fbeb5bd4c8a478ea6d6445c83e91d1d', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 13:46:10', '吉林');
INSERT INTO `sys_statistics` VALUES ('a0798641145740089566bd3fa44f64b1', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 20:45:20', '吉林');
INSERT INTO `sys_statistics` VALUES ('a0924b2f3fd941c4b89ae393b5b3922d', '124.234.225.45', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 22:27:40', '吉林');
INSERT INTO `sys_statistics` VALUES ('a09589b912af4ac9a2e88db42717dfc4', '124.234.225.45', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 22:31:45', '吉林');
INSERT INTO `sys_statistics` VALUES ('a09c35a553fa49c9b902639992a53f45', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 21:45:39', '吉林');
INSERT INTO `sys_statistics` VALUES ('a0caf17a00664ad3aa070e98e53f2676', '117.136.6.121', '中国  吉林 XX', '移动', '2019-02-14', '2019-02-14 16:17:41', '吉林');
INSERT INTO `sys_statistics` VALUES ('a0fc56982520450dbe8b0b4f48d7484e', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 15:00:19', '吉林');
INSERT INTO `sys_statistics` VALUES ('a13ae7fbc95e46cda9e88a523fe1fbac', '36.48.113.165', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 16:26:35', '吉林');
INSERT INTO `sys_statistics` VALUES ('a19cb46d8fb84e869b376d1c8b5c20ef', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:14:43', 'XX');
INSERT INTO `sys_statistics` VALUES ('a1a93200f6fc4e8aa76210c8e01d9353', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 12:01:30', 'XX');
INSERT INTO `sys_statistics` VALUES ('a1d8050a40c2483ba404c6425e65599b', '36.104.54.72', '中国  吉林 长春', '电信', '2019-01-08', '2019-01-08 17:17:51', '吉林');
INSERT INTO `sys_statistics` VALUES ('a1de35361a264ae2bf23697c05b6d38c', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 11:43:52', '吉林');
INSERT INTO `sys_statistics` VALUES ('a1e9588c9e00466abf3cfc163d3c82d5', '124.234.225.45', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 22:03:02', '吉林');
INSERT INTO `sys_statistics` VALUES ('a22281ecb3ab434fa3722e9bac40e010', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:20:40', 'XX');
INSERT INTO `sys_statistics` VALUES ('a285d94680154204b25b5d1f5f7351b1', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:49:26', 'XX');
INSERT INTO `sys_statistics` VALUES ('a2a302446b284c8ba092baf46872183b', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:58:05', 'XX');
INSERT INTO `sys_statistics` VALUES ('a2d05edd04b444638354b277c670568e', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 12:11:46', 'XX');
INSERT INTO `sys_statistics` VALUES ('a3a2cf7df52a4be4a4381e3de2994ff5', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:51:51', 'XX');
INSERT INTO `sys_statistics` VALUES ('a3d9590f377b476fa7b80e1262a2ccfa', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-27', '2019-03-27 22:49:36', '吉林');
INSERT INTO `sys_statistics` VALUES ('a3e7dd3c30754a55ac4b09595c672ee4', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:04:28', 'XX');
INSERT INTO `sys_statistics` VALUES ('a4624097fb85455191b9d66ee090d5eb', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 19:00:50', '吉林');
INSERT INTO `sys_statistics` VALUES ('a4964a994da6431199f19e72ab20b714', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 15:00:30', 'XX');
INSERT INTO `sys_statistics` VALUES ('a525008ab4be4743811973b84456b011', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:17:41', 'XX');
INSERT INTO `sys_statistics` VALUES ('a53b6b4007ff44329e9c608a04574391', '124.234.225.105', '中国  吉林 长春', '电信', '2019-01-13', '2019-01-13 15:33:06', '吉林');
INSERT INTO `sys_statistics` VALUES ('a5c1d18f82ef431aa5d1a45f910ccef3', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 17:33:24', '吉林');
INSERT INTO `sys_statistics` VALUES ('a65d5643fa7f4a918930c730af247fb0', '124.234.225.45', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 22:27:42', '吉林');
INSERT INTO `sys_statistics` VALUES ('a671709e772a45e78e2736f584ef8c4f', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 17:01:24', '吉林');
INSERT INTO `sys_statistics` VALUES ('a677a03184c94351867391d4d50f30ea', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 14:07:17', '吉林');
INSERT INTO `sys_statistics` VALUES ('a6902bcdcef74a9b9f2151f0c5dd59ed', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 20:05:13', '吉林');
INSERT INTO `sys_statistics` VALUES ('a6dd4837341940c9825494c6eea711e7', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 17:00:32', 'XX');
INSERT INTO `sys_statistics` VALUES ('a6e31931e6994276a69e3369a8855c0e', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:13:13', '吉林');
INSERT INTO `sys_statistics` VALUES ('a6e6e9aa8d57491c961a410621619196', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:14:40', 'XX');
INSERT INTO `sys_statistics` VALUES ('a6ec3e44c6fe48fdbb8cd556c014afa7', '58.21.210.168', '中国  吉林 白城', '联通', '2019-02-22', '2019-02-22 20:09:37', '吉林');
INSERT INTO `sys_statistics` VALUES ('a6f3f812153e402eb6721c7d41112aa5', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 15:25:04', 'XX');
INSERT INTO `sys_statistics` VALUES ('a76c9caac3884a5d8f8d24d853f140b2', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:41:26', 'XX');
INSERT INTO `sys_statistics` VALUES ('a7f2f9f1df144cab9448d24f6372a6a4', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 16:31:21', '吉林');
INSERT INTO `sys_statistics` VALUES ('a8053cdf0a0c4b8d9c8e571a778b3c4a', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-27', '2019-03-27 22:49:45', '吉林');
INSERT INTO `sys_statistics` VALUES ('a81b4c5adca34fd0bcb128146332688c', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 12:11:37', 'XX');
INSERT INTO `sys_statistics` VALUES ('a82ffaa01ece4624b95f123fa973446c', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:12:09', 'XX');
INSERT INTO `sys_statistics` VALUES ('a831ca46954b4bf2801250aff1aee1a9', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:59:28', 'XX');
INSERT INTO `sys_statistics` VALUES ('a8543625a80a4f18be90e16708a2057a', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 15:35:12', 'XX');
INSERT INTO `sys_statistics` VALUES ('a874f222c693491d83e70d8c6850971f', '124.234.225.105', '中国  吉林 长春', '电信', '2019-01-13', '2019-01-13 13:49:12', '吉林');
INSERT INTO `sys_statistics` VALUES ('a8ae8d31cd0549bbbeeb61cfe75c362d', '223.104.16.80', '中国  吉林 长春', '移动', '2019-03-10', '2019-03-10 21:09:39', '吉林');
INSERT INTO `sys_statistics` VALUES ('a8b182ef893f466995bd27dee4359b44', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 20:05:22', '吉林');
INSERT INTO `sys_statistics` VALUES ('a8ba42918f4149eca4e370a5f1b8b137', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:15:42', 'XX');
INSERT INTO `sys_statistics` VALUES ('a8d986b2cb75421e8e20b39c5f336b54', '111.26.36.29', '中国  吉林 吉林', '移动', '2019-02-14', '2019-02-14 19:56:45', '吉林');
INSERT INTO `sys_statistics` VALUES ('a8ebf418003e48508705d4e6c3a1fb7e', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-07', '2019-03-07 17:13:25', '吉林');
INSERT INTO `sys_statistics` VALUES ('a916f292883b43c69cdc48bcd3e9a3f3', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-27', '2019-03-27 22:04:31', '吉林');
INSERT INTO `sys_statistics` VALUES ('a96e0b660f034b049a0c7824f1568d6b', '111.26.36.117', '中国  吉林 吉林', '移动', '2019-02-16', '2019-02-16 19:56:15', '吉林');
INSERT INTO `sys_statistics` VALUES ('a97cfe550abd464aa390752758db338b', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 10:10:17', 'XX');
INSERT INTO `sys_statistics` VALUES ('a97e34da1362459793f616b5887c6b22', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 15:55:54', '吉林');
INSERT INTO `sys_statistics` VALUES ('a983e10d8d134ac59d75f197dd31a6ff', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 10:42:23', 'XX');
INSERT INTO `sys_statistics` VALUES ('a98816b2bc904abc87143b0688a840f9', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 18:50:45', '吉林');
INSERT INTO `sys_statistics` VALUES ('a98ba6b0c9c14cfe8db3aa5341dda531', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-07', '2019-03-07 22:58:42', '吉林');
INSERT INTO `sys_statistics` VALUES ('a9b18d6480504ee1a2b851bef9214fae', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 17:16:13', 'XX');
INSERT INTO `sys_statistics` VALUES ('a9efc9e4eb884b99b9530bced2e1d9c0', '36.104.26.201', '中国  吉林 长春', '电信', '2019-03-04', '2019-03-04 13:23:52', '吉林');
INSERT INTO `sys_statistics` VALUES ('aa1a645e7392491b95e1d5ff50ea7045', '124.234.225.105', '中国  吉林 长春', '电信', '2019-01-13', '2019-01-13 15:33:35', '吉林');
INSERT INTO `sys_statistics` VALUES ('aa1d9d2a90bf4d0195395f292dce366f', '218.247.142.216', '中国  北京 北京', '鹏博士', '2019-03-28', '2019-03-28 20:07:49', '北京');
INSERT INTO `sys_statistics` VALUES ('aa2226d24a87434fbae04ebddc8a86a3', '111.26.36.117', '中国  吉林 吉林', '移动', '2019-02-16', '2019-02-16 19:52:25', '吉林');
INSERT INTO `sys_statistics` VALUES ('aa5e93a1a278427d83471379809163c4', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 20:01:50', '吉林');
INSERT INTO `sys_statistics` VALUES ('aa6470b1bbcf4ebeac1fedcd7acfe55e', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 19:14:35', '吉林');
INSERT INTO `sys_statistics` VALUES ('aa87f706544f4c62a56b63a89ecc081b', '111.26.36.117', '中国  吉林 吉林', '移动', '2019-02-16', '2019-02-16 19:45:17', '吉林');
INSERT INTO `sys_statistics` VALUES ('aa991cf677c24e829511f6629705b69b', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:59:36', 'XX');
INSERT INTO `sys_statistics` VALUES ('aaa8429f9dde4b0f848f7a0f101a31ac', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 16:23:14', 'XX');
INSERT INTO `sys_statistics` VALUES ('aad9daf5e8e6443e82d791490b0d5f1a', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 16:16:43', '吉林');
INSERT INTO `sys_statistics` VALUES ('aaf19e0d6d6b4cdd9baaf9fdc165ffa7', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:20:06', 'XX');
INSERT INTO `sys_statistics` VALUES ('ab212296c53d4fa08c53ab91a1f065a6', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:29:39', 'XX');
INSERT INTO `sys_statistics` VALUES ('abc1811cd8ad4ad6a65b77e02a2e9505', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 15:12:37', '吉林');
INSERT INTO `sys_statistics` VALUES ('abdec8aa5ae64bb09218572e50d37c36', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 12:21:19', '吉林');
INSERT INTO `sys_statistics` VALUES ('abe4b451a6e94cb5b26b62a9fa8ed533', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 19:47:18', '吉林');
INSERT INTO `sys_statistics` VALUES ('ac7219ff174f4e33b16a2275a4220db8', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 15:36:24', 'XX');
INSERT INTO `sys_statistics` VALUES ('ac8f9e435ed44fbb929a05f67e36fc7c', '111.26.36.65', '中国  吉林 吉林', '移动', '2019-02-10', '2019-02-10 19:15:59', '吉林');
INSERT INTO `sys_statistics` VALUES ('acc6789c5c234aaab998c7089476540a', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:23:20', 'XX');
INSERT INTO `sys_statistics` VALUES ('acee522dfaa84190b1e2c543ddf9434c', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-07', '2019-03-07 18:30:09', '吉林');
INSERT INTO `sys_statistics` VALUES ('acf56f329a2544418e73c792cea471fb', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 21:36:36', '吉林');
INSERT INTO `sys_statistics` VALUES ('ad416567872b4e47866771dc88bdc7d7', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 19:48:47', '吉林');
INSERT INTO `sys_statistics` VALUES ('ad5199daaf91476c96e36fef23491fa5', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 19:00:36', '吉林');
INSERT INTO `sys_statistics` VALUES ('ad82d0a4e0a84710a2b305bb8a0e14e0', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 21:24:13', '吉林');
INSERT INTO `sys_statistics` VALUES ('ad8313fc499f417c8ec96b0e76eb5119', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:19:16', 'XX');
INSERT INTO `sys_statistics` VALUES ('adca123d340742f7b33c2e7199d630de', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:41:26', 'XX');
INSERT INTO `sys_statistics` VALUES ('adf350ed0f174954bc4e4df55111258e', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:36:44', 'XX');
INSERT INTO `sys_statistics` VALUES ('adfe652871464ff6899732222e3ea4f9', '36.49.187.12', '中国  吉林 长春', '电信', '2019-03-04', '2019-03-04 15:40:51', '吉林');
INSERT INTO `sys_statistics` VALUES ('ae267fec61c340cfa668260ab81189f4', '111.26.36.117', '中国  吉林 吉林', '移动', '2019-02-16', '2019-02-16 18:34:42', '吉林');
INSERT INTO `sys_statistics` VALUES ('ae329ca499ba4ebb8a61e45095171ecb', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:02:07', 'XX');
INSERT INTO `sys_statistics` VALUES ('ae6e601a2df2458faa2c600276f9db79', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 13:54:02', 'XX');
INSERT INTO `sys_statistics` VALUES ('ae9aa00a496a4f519fb949f192700329', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-07', '2019-03-07 18:30:01', '吉林');
INSERT INTO `sys_statistics` VALUES ('aea2941333c447218b6d2a09ea675ec6', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 18:50:24', '吉林');
INSERT INTO `sys_statistics` VALUES ('aeb37fc0d2954588a96ae1de8814bfb3', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 12:01:28', 'XX');
INSERT INTO `sys_statistics` VALUES ('aeb97c4787234f0a85d905fe4a002b36', '111.26.36.117', '中国  吉林 吉林', '移动', '2019-02-16', '2019-02-16 19:58:36', '吉林');
INSERT INTO `sys_statistics` VALUES ('aebb0626c6d94ca3b6e4962880124f2c', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 14:33:07', '吉林');
INSERT INTO `sys_statistics` VALUES ('aec179670cbd4fa7973147c728fba0ca', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 10:49:12', 'XX');
INSERT INTO `sys_statistics` VALUES ('aec320d978944ef6ada285373f51929d', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:37:13', 'XX');
INSERT INTO `sys_statistics` VALUES ('aedf96a49d3c42199efce16b95142acd', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 23:47:54', 'XX');
INSERT INTO `sys_statistics` VALUES ('af8a8b1914e44f91b0c7f6c20c7ec9be', '36.104.26.201', '中国  吉林 长春', '电信', '2019-03-04', '2019-03-04 14:01:06', '吉林');
INSERT INTO `sys_statistics` VALUES ('afa2f466f34341a7a48acfbbec7bb6a6', '124.234.225.45', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 21:56:14', '吉林');
INSERT INTO `sys_statistics` VALUES ('b0124bd16b7f4219a75660c9d1946b1e', '111.26.36.117', '中国  吉林 吉林', '移动', '2019-02-16', '2019-02-16 19:22:26', '吉林');
INSERT INTO `sys_statistics` VALUES ('b066c78499284012a2e195a8acadecd8', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 19:53:09', '吉林');
INSERT INTO `sys_statistics` VALUES ('b06f4b0cd89245ba8604e2205228da65', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-07', '2019-03-07 22:30:50', '吉林');
INSERT INTO `sys_statistics` VALUES ('b081badd09b84aa1a9be28918da1f3a9', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 10:40:39', 'XX');
INSERT INTO `sys_statistics` VALUES ('b095b7c1534d42dda4903446216eb7ee', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 18:43:29', '吉林');
INSERT INTO `sys_statistics` VALUES ('b10340ca33544124973fadb32e1d5c81', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:49:31', 'XX');
INSERT INTO `sys_statistics` VALUES ('b10df0170219440ba1c552033ff86141', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:35:19', 'XX');
INSERT INTO `sys_statistics` VALUES ('b10f602fde804d0280c363beb6363b46', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:51:52', 'XX');
INSERT INTO `sys_statistics` VALUES ('b135622b2a0549d2a1804da938fb3f76', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 15:36:22', 'XX');
INSERT INTO `sys_statistics` VALUES ('b13fcf0de9e749549e4747d3b48e6d7d', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:43:34', 'XX');
INSERT INTO `sys_statistics` VALUES ('b1652c0660d6428f820ef95fed69a862', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 11:14:42', '吉林');
INSERT INTO `sys_statistics` VALUES ('b16ab9d43877469c98909a7a60745f69', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:19:50', 'XX');
INSERT INTO `sys_statistics` VALUES ('b17ea42be50d4ff791de9d31c7d1602a', '58.21.210.168', '中国  吉林 白城', '联通', '2019-02-22', '2019-02-22 21:29:13', '吉林');
INSERT INTO `sys_statistics` VALUES ('b1e2ef9315bf48eeb99c0f2a856a09c9', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 10:08:01', 'XX');
INSERT INTO `sys_statistics` VALUES ('b1f2d187b70046bab7b2fa5e4b0eddf3', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:47:31', 'XX');
INSERT INTO `sys_statistics` VALUES ('b20ed70ba15b4fb9b3a87e7b886455e8', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 12:11:36', 'XX');
INSERT INTO `sys_statistics` VALUES ('b22053b171934606a87cc4ed3a8f1092', '36.104.51.219', '中国  吉林 长春', '电信', '2019-01-13', '2019-01-13 00:29:41', '吉林');
INSERT INTO `sys_statistics` VALUES ('b229267193614b6090b38c1cbbac66be', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-27', '2019-03-27 22:25:13', '吉林');
INSERT INTO `sys_statistics` VALUES ('b27ca16c5e194a10a7e0176d9cbefa74', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 16:02:08', '吉林');
INSERT INTO `sys_statistics` VALUES ('b2ad928667e64f4abb46a2e7ad588aa4', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:14:08', 'XX');
INSERT INTO `sys_statistics` VALUES ('b2d1dabc62d645cda76b7c7325b12278', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 18:10:21', '吉林');
INSERT INTO `sys_statistics` VALUES ('b32aac09072a42c08a9477dcc60efbc0', '218.247.142.216', '中国  北京 北京', '鹏博士', '2019-03-28', '2019-03-28 20:15:36', '北京');
INSERT INTO `sys_statistics` VALUES ('b38fc2e6d5bc4f0097ac925d28517337', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:14:22', 'XX');
INSERT INTO `sys_statistics` VALUES ('b3daa3fa82e34517b096124b4bf92cd5', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:42:24', '吉林');
INSERT INTO `sys_statistics` VALUES ('b3eb9bfb59dc469da04e708ddec0a578', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-03', '2019-01-03 00:25:04', 'XX');
INSERT INTO `sys_statistics` VALUES ('b4294c8d981a455eb3ae923388ef3ddd', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 00:02:57', 'XX');
INSERT INTO `sys_statistics` VALUES ('b42bac3279f84962944d8f7283221e76', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 15:43:16', 'XX');
INSERT INTO `sys_statistics` VALUES ('b43778b511304661b0a830a693270990', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 15:12:25', 'XX');
INSERT INTO `sys_statistics` VALUES ('b454e1ce69c74288ae7c403028b88d2c', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:03:54', 'XX');
INSERT INTO `sys_statistics` VALUES ('b482398324a44db690696af24b04b6f3', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-07', '2019-03-07 17:01:00', '吉林');
INSERT INTO `sys_statistics` VALUES ('b48d8b74844c454b97727cca7ba73197', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:19:26', 'XX');
INSERT INTO `sys_statistics` VALUES ('b4983304593245f4835d014ef8b2c187', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:11:21', 'XX');
INSERT INTO `sys_statistics` VALUES ('b49f12af5215421690acb8f7ae877007', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 17:43:07', '吉林');
INSERT INTO `sys_statistics` VALUES ('b4d3c777ff834eb782e07dcb3cd8a268', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 14:15:33', '吉林');
INSERT INTO `sys_statistics` VALUES ('b4ef3935e04c4fc7a89e1fcf765d6edf', '218.247.142.216', '中国  北京 北京', '鹏博士', '2019-03-28', '2019-03-28 20:15:38', '北京');
INSERT INTO `sys_statistics` VALUES ('b4ffdd070a2e4318af8085511b2bb9ed', '36.104.23.30', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 19:16:56', '吉林');
INSERT INTO `sys_statistics` VALUES ('b52d9b8afc0d4b5ebff7961343d4701d', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:34:54', 'XX');
INSERT INTO `sys_statistics` VALUES ('b55bc740e8f94742a9fccfd6fd113701', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:14:06', 'XX');
INSERT INTO `sys_statistics` VALUES ('b561ce1ac50f4340b39976476279f3ab', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 20:46:34', '吉林');
INSERT INTO `sys_statistics` VALUES ('b58b2bc9258245f6aed1f48b9ff47cec', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 15:14:11', '吉林');
INSERT INTO `sys_statistics` VALUES ('b5eebb503e0c4f17a51c0f9c808e464e', '118.89.225.69', '中国  天津 天津', '电信', '2019-01-11', '2019-01-11 21:48:16', '天津');
INSERT INTO `sys_statistics` VALUES ('b630b1efea7c4276a1f8f3c6f17ca5e5', '124.234.225.21', '中国  吉林 长春', '电信', '2019-03-04', '2019-03-04 21:27:33', '吉林');
INSERT INTO `sys_statistics` VALUES ('b66cd76e415142d38af45f5066150557', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 16:25:27', 'XX');
INSERT INTO `sys_statistics` VALUES ('b6cf2d6c95b04a878b7e01987abb5657', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 15:25:28', 'XX');
INSERT INTO `sys_statistics` VALUES ('b6fcad20a05f4f1bae32534ff5711b9a', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-27', '2019-03-27 22:23:42', '吉林');
INSERT INTO `sys_statistics` VALUES ('b71c8759044f490fa9b9453f15515fdf', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 17:20:40', '吉林');
INSERT INTO `sys_statistics` VALUES ('b7615477d4414aa9a82268ee7de7e787', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 00:12:31', 'XX');
INSERT INTO `sys_statistics` VALUES ('b796a2cb50e04324bb53589e3828f7c4', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 16:55:41', 'XX');
INSERT INTO `sys_statistics` VALUES ('b7de2a9a26084f7ab3961028807709bf', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 00:02:37', 'XX');
INSERT INTO `sys_statistics` VALUES ('b8101185bfd2448a96ead127ebd9a5c1', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 18:43:27', '吉林');
INSERT INTO `sys_statistics` VALUES ('b82599e59fc941a88f5fde76a7d591b4', '124.234.225.105', '中国  吉林 长春', '电信', '2019-01-13', '2019-01-13 15:33:31', '吉林');
INSERT INTO `sys_statistics` VALUES ('b83b70edf0b04462bf8782250659ced8', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 19:42:12', '吉林');
INSERT INTO `sys_statistics` VALUES ('b85bfa4ed3174dabbbfb3fad2260d032', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 15:12:34', '吉林');
INSERT INTO `sys_statistics` VALUES ('b872fe3f9a6642c7aa7103bfc80f6cc9', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 10:41:56', 'XX');
INSERT INTO `sys_statistics` VALUES ('b8bc31e0db2f43feac558d5e5aad76a4', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 15:33:53', 'XX');
INSERT INTO `sys_statistics` VALUES ('b8f838e8b4fa45afa24f62cf17ba5698', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 19:19:17', '吉林');
INSERT INTO `sys_statistics` VALUES ('b9111706c75f4cd98244741b9e28a478', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 20:48:33', '吉林');
INSERT INTO `sys_statistics` VALUES ('b9268adda151415a8c97f79bfd557f0e', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 20:48:23', '吉林');
INSERT INTO `sys_statistics` VALUES ('b92aa760ad8e4773b44b749abb76c822', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 13:54:41', 'XX');
INSERT INTO `sys_statistics` VALUES ('b994c5555e534405a8799cc8e9bd4cd9', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 17:11:14', 'XX');
INSERT INTO `sys_statistics` VALUES ('b9a35eee2cd34a66a5b211335345791b', '111.26.36.117', '中国  吉林 吉林', '移动', '2019-02-16', '2019-02-16 17:47:16', '吉林');
INSERT INTO `sys_statistics` VALUES ('b9b6e9b53d2c42708d7818a004781718', '124.234.225.45', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 21:57:14', '吉林');
INSERT INTO `sys_statistics` VALUES ('b9e3c4379a7448d2aef52c05612a271a', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:10:57', 'XX');
INSERT INTO `sys_statistics` VALUES ('b9e5007e5b9940dea382654036bc71cf', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:35:18', 'XX');
INSERT INTO `sys_statistics` VALUES ('ba182d898114449eabea32fc08278d88', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:23:58', 'XX');
INSERT INTO `sys_statistics` VALUES ('ba2c97e93e344228a5caa5219c0fa0e6', '110.185.162.119', '中国  四川 成都', '电信', '2019-03-05', '2019-03-05 09:28:53', '四川');
INSERT INTO `sys_statistics` VALUES ('ba7e52f1f8ce4359b66cc3d2d647d8cb', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:14:45', 'XX');
INSERT INTO `sys_statistics` VALUES ('ba9629ae2d434031bf10d6924ff1c325', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:30:27', 'XX');
INSERT INTO `sys_statistics` VALUES ('ba977d11cb4d48c5af7e286dee0d065f', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 15:26:08', 'XX');
INSERT INTO `sys_statistics` VALUES ('baec12d9ee2c4cf595e7e634acc45379', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 00:03:00', 'XX');
INSERT INTO `sys_statistics` VALUES ('bb7dac7e9c21477ea558ddaaac47be0e', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 10:22:55', '吉林');
INSERT INTO `sys_statistics` VALUES ('bc2616fe64844ab0a92d2f24e59b86ee', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:53:21', 'XX');
INSERT INTO `sys_statistics` VALUES ('bc4fdb70e9314d22b63c2fc4964c431e', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 09:40:59', '吉林');
INSERT INTO `sys_statistics` VALUES ('bc5a047c423b4dc9adb1c50d06c5ba0a', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:23:57', 'XX');
INSERT INTO `sys_statistics` VALUES ('bc650a58bc4141b98eabcfe7cf8fee6a', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 19:20:08', '吉林');
INSERT INTO `sys_statistics` VALUES ('bc7060437ba843cbacf490716ebf49a8', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-27', '2019-03-27 22:25:53', '吉林');
INSERT INTO `sys_statistics` VALUES ('bca3e498cc0c4c748151a62681e87357', '36.104.26.201', '中国  吉林 长春', '电信', '2019-03-04', '2019-03-04 13:24:29', '吉林');
INSERT INTO `sys_statistics` VALUES ('bccad4580bfa45d0906c4b606d8fabb3', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 16:55:53', 'XX');
INSERT INTO `sys_statistics` VALUES ('bccd75e5fa1043b8bb7e564fbdeb419b', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 16:01:13', '吉林');
INSERT INTO `sys_statistics` VALUES ('bce0ccad8661415c8d799fa7621aba38', '36.104.54.72', '中国  吉林 长春', '电信', '2019-01-08', '2019-01-08 17:25:43', '吉林');
INSERT INTO `sys_statistics` VALUES ('bd141a4639b64b9dbcd86e69a5d43f46', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 11:14:57', '吉林');
INSERT INTO `sys_statistics` VALUES ('bda21c8accdc44499aa68dcadb5ecd75', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 12:35:10', '吉林');
INSERT INTO `sys_statistics` VALUES ('bddcdcc5e57f4fe8beef01734588df91', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 11:08:43', '吉林');
INSERT INTO `sys_statistics` VALUES ('be0e3f4176ed412aaaadc39bb4dab6c9', '118.89.225.69', '中国  天津 天津', '电信', '2019-01-11', '2019-01-11 21:47:31', '天津');
INSERT INTO `sys_statistics` VALUES ('be30b8619ceb4b60a4c8633c12263f4b', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 21:01:01', '吉林');
INSERT INTO `sys_statistics` VALUES ('be320f5a12c34705a13ed3d3a23ef0d7', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 18:47:49', '吉林');
INSERT INTO `sys_statistics` VALUES ('be51a1e35c8e40868229b82534cf3311', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 13:46:14', '吉林');
INSERT INTO `sys_statistics` VALUES ('beb2dbbfb6214298b51b392d132ff133', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 16:26:59', '吉林');
INSERT INTO `sys_statistics` VALUES ('bed8bc95c0d440c499d90c2800950bf8', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:33:31', 'XX');
INSERT INTO `sys_statistics` VALUES ('beed40d23b0f4a40b6ab126b5cc5534e', '123.172.56.82', '中国  吉林 长春', '电信', '2019-01-12', '2019-01-12 17:16:08', '吉林');
INSERT INTO `sys_statistics` VALUES ('bef83b35913e48f79e4a519dc48b6921', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:54:35', 'XX');
INSERT INTO `sys_statistics` VALUES ('bf0f08f6975242bb99f46adcd023b64e', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 17:19:25', 'XX');
INSERT INTO `sys_statistics` VALUES ('bf33a3fe519c4c1d9dfd3ec58d268a54', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 15:25:32', 'XX');
INSERT INTO `sys_statistics` VALUES ('bf495bc1e59a429aa3922c27517f1d36', '111.26.36.29', '中国  吉林 吉林', '移动', '2019-02-14', '2019-02-14 17:24:26', '吉林');
INSERT INTO `sys_statistics` VALUES ('bf4b0212e9e942209e6ec62ad16a98fd', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-04', '2019-03-04 19:54:35', '吉林');
INSERT INTO `sys_statistics` VALUES ('bf5fde4f43cf4dd383948e6dd5ccce9e', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 22:16:04', 'XX');
INSERT INTO `sys_statistics` VALUES ('bf7912b2eb8d4da8b36fe33900baa509', '118.89.225.69', '中国  天津 天津', '电信', '2019-01-11', '2019-01-11 21:47:33', '天津');
INSERT INTO `sys_statistics` VALUES ('bf81f3cc52e846a6aebe79d58cdf08d9', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:23:04', 'XX');
INSERT INTO `sys_statistics` VALUES ('bf9aa4bf784446d596ebb6d1a9a083e5', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:59:46', 'XX');
INSERT INTO `sys_statistics` VALUES ('bfaf18bbd45445569c60a54c4adad78f', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-07', '2019-03-07 23:32:12', '吉林');
INSERT INTO `sys_statistics` VALUES ('c02e36e0dc244ae6b6769f77367b117e', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:32:32', 'XX');
INSERT INTO `sys_statistics` VALUES ('c03155d7761c4562b15ff029028fae36', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-07', '2019-03-07 18:32:55', '吉林');
INSERT INTO `sys_statistics` VALUES ('c03ce701786c4b7d82a3b722380bc619', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 12:08:20', 'XX');
INSERT INTO `sys_statistics` VALUES ('c05df424fbc74c1e9dd141f341d6e1a2', '118.89.225.69', '中国  天津 天津', '电信', '2019-01-11', '2019-01-11 21:46:52', '天津');
INSERT INTO `sys_statistics` VALUES ('c07dde8e90e042588386c409fc8fb4d9', '123.172.48.28', '中国  吉林 长春', '电信', '2019-01-11', '2019-01-11 20:48:05', '吉林');
INSERT INTO `sys_statistics` VALUES ('c08e64f6d9df4f1290e61ceeda14d033', '36.104.51.219', '中国  吉林 长春', '电信', '2019-01-13', '2019-01-13 00:29:36', '吉林');
INSERT INTO `sys_statistics` VALUES ('c09953d9c7c446fb887823ef4961dc34', '36.48.113.165', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 16:26:32', '吉林');
INSERT INTO `sys_statistics` VALUES ('c0cb9fa4018a49b791073d970fb05433', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 19:28:32', '吉林');
INSERT INTO `sys_statistics` VALUES ('c0e91c04d18749a2a58f193fc179b0ca', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 17:15:24', 'XX');
INSERT INTO `sys_statistics` VALUES ('c0fd7a9586f04039b20a76491b707470', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 17:15:02', '吉林');
INSERT INTO `sys_statistics` VALUES ('c114225fc0ec49838ca802d4384cbe27', '36.49.187.12', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 11:43:25', '吉林');
INSERT INTO `sys_statistics` VALUES ('c1171f5034d4433096548188418f3f97', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-27', '2019-03-27 22:56:49', '吉林');
INSERT INTO `sys_statistics` VALUES ('c11cda84eceb4cd08422e055f3a0b9eb', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 12:11:34', 'XX');
INSERT INTO `sys_statistics` VALUES ('c16fadbfbcaf44dbbc5326d0b9a98045', '124.234.225.45', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 21:55:58', '吉林');
INSERT INTO `sys_statistics` VALUES ('c1775db26b334a78b64bb904fb6b4946', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 22:17:53', 'XX');
INSERT INTO `sys_statistics` VALUES ('c19daca647a24e83bab12066ed512e45', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 19:00:42', '吉林');
INSERT INTO `sys_statistics` VALUES ('c19fba7f10b44b708d7391a5399ef4cc', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-03', '2019-01-03 00:26:57', 'XX');
INSERT INTO `sys_statistics` VALUES ('c1a5306183914e04b00b5a4a2088ea81', '111.26.36.29', '中国  吉林 吉林', '移动', '2019-02-14', '2019-02-14 17:50:51', '吉林');
INSERT INTO `sys_statistics` VALUES ('c1d0493f9948445c88e53d2eb26dc39f', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 11:36:11', '吉林');
INSERT INTO `sys_statistics` VALUES ('c1d17ecc68454ebca317b48a20f83e4b', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 20:05:19', '吉林');
INSERT INTO `sys_statistics` VALUES ('c1f94a34ce7545d1ad3f27d1866390a2', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:58:03', 'XX');
INSERT INTO `sys_statistics` VALUES ('c20a677661b54633885f5f13aa516fed', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:05:06', 'XX');
INSERT INTO `sys_statistics` VALUES ('c2507930de804d7cad30870824cf023e', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:36:02', '吉林');
INSERT INTO `sys_statistics` VALUES ('c2a41ccc98934bcb9a0224096db9481e', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 19:20:18', '吉林');
INSERT INTO `sys_statistics` VALUES ('c2d9555ad5f44ac3963decf33480e22d', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 22:17:50', 'XX');
INSERT INTO `sys_statistics` VALUES ('c34fa57af9644fb3a579a3280b6997f6', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 20:48:33', '吉林');
INSERT INTO `sys_statistics` VALUES ('c35a95b7b31f49d2b347b50b4928bbb7', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 17:55:25', 'XX');
INSERT INTO `sys_statistics` VALUES ('c3611a6fd88a4626a4b5a7395a4977ba', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:10:00', 'XX');
INSERT INTO `sys_statistics` VALUES ('c3b1369d776c40bca578b483c21db96f', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:11:41', 'XX');
INSERT INTO `sys_statistics` VALUES ('c426503443554addb82873a1842499a6', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 17:15:25', 'XX');
INSERT INTO `sys_statistics` VALUES ('c443fc2a7f084701ac49a8cb3a4003b5', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-27', '2019-03-27 22:55:25', '吉林');
INSERT INTO `sys_statistics` VALUES ('c44bc61dca9849929942bac1ccf1c40f', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-07', '2019-03-07 13:22:01', '吉林');
INSERT INTO `sys_statistics` VALUES ('c481ed54e3324445a2c2894f4ae2a972', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 22:08:35', 'XX');
INSERT INTO `sys_statistics` VALUES ('c485641725d04114bb16475bac51b118', '124.234.225.45', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 22:04:37', '吉林');
INSERT INTO `sys_statistics` VALUES ('c4d167ee2f4e4ae8a4534c61cd370aa1', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 19:48:45', '吉林');
INSERT INTO `sys_statistics` VALUES ('c4e152e83e0b4b1f82da250d7a2179d2', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:19:18', 'XX');
INSERT INTO `sys_statistics` VALUES ('c4e8008a994e4ddaba0327ed5d76f12b', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 22:49:37', 'XX');
INSERT INTO `sys_statistics` VALUES ('c4f0016653e047c7810e6d2343a877d6', '218.247.142.216', '中国  北京 北京', '鹏博士', '2019-03-28', '2019-03-28 20:15:31', '北京');
INSERT INTO `sys_statistics` VALUES ('c4fe7c4faf66451395ff15c10509e119', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:19:20', 'XX');
INSERT INTO `sys_statistics` VALUES ('c5b4d96b22654165bc16d9506acc6c23', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-07', '2019-03-07 18:30:37', '吉林');
INSERT INTO `sys_statistics` VALUES ('c5ca6d0a58734e958398d801d39a5ac2', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:44:38', 'XX');
INSERT INTO `sys_statistics` VALUES ('c5caeea4c6854de38c9683adf7f99b2b', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:15:30', '吉林');
INSERT INTO `sys_statistics` VALUES ('c5fbefe52845483784d4a37ad937548e', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 10:29:28', '吉林');
INSERT INTO `sys_statistics` VALUES ('c627c3d35be349c28e3fa60a7a3cc1c7', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 15:58:32', 'XX');
INSERT INTO `sys_statistics` VALUES ('c655a179f986492d8442ac7589dae9a3', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:19:19', 'XX');
INSERT INTO `sys_statistics` VALUES ('c682951284e945ed935a8e3773572670', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:20:46', 'XX');
INSERT INTO `sys_statistics` VALUES ('c6943690c6eb46fc974837d1f2ce6a8e', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:19:35', 'XX');
INSERT INTO `sys_statistics` VALUES ('c6bd31ee978b45478e65a70ba79abbab', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 12:34:41', '吉林');
INSERT INTO `sys_statistics` VALUES ('c6e58c53063b4c28b95c195183a0c989', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 12:34:37', '吉林');
INSERT INTO `sys_statistics` VALUES ('c70b12ca88614a7da0d531d971d4d17b', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 17:11:13', 'XX');
INSERT INTO `sys_statistics` VALUES ('c719325926164e979e107508b69a42a8', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-03', '2019-01-03 00:26:58', 'XX');
INSERT INTO `sys_statistics` VALUES ('c763174aba674df09819a301f32ff160', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 16:17:41', '吉林');
INSERT INTO `sys_statistics` VALUES ('c7636d28fa89496f9d4c6ca905c8d74f', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 15:33:54', 'XX');
INSERT INTO `sys_statistics` VALUES ('c786804bd07a4b2aaacaf596d4b7f41f', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:29:15', 'XX');
INSERT INTO `sys_statistics` VALUES ('c78dc39dce3e46dab432f171c1209a37', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:22:08', 'XX');
INSERT INTO `sys_statistics` VALUES ('c7a9c626cd6e4b6f8fb5ccd76838319e', '123.172.56.82', '中国  吉林 长春', '电信', '2019-01-12', '2019-01-12 19:51:49', '吉林');
INSERT INTO `sys_statistics` VALUES ('c829a12af5cc4731b8b37d3e5c992fdb', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 12:50:39', 'XX');
INSERT INTO `sys_statistics` VALUES ('c84bad620cec4d3690c896cab56b12fc', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:32:20', 'XX');
INSERT INTO `sys_statistics` VALUES ('c8cd14a7319b4a8ebbde4277f044a966', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 20:03:54', '吉林');
INSERT INTO `sys_statistics` VALUES ('c8f064cf042246bd9541de72626b1e62', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 10:26:23', '吉林');
INSERT INTO `sys_statistics` VALUES ('c8f994d54bc64b74a7537c14b58ce4fe', '123.172.48.28', '中国  吉林 长春', '电信', '2019-01-11', '2019-01-11 19:44:20', '吉林');
INSERT INTO `sys_statistics` VALUES ('c92637fe2a424978874fb24e60089705', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 16:27:17', '吉林');
INSERT INTO `sys_statistics` VALUES ('c95d2d197b2a4757a4be21bb7f89c9c4', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 18:19:37', '吉林');
INSERT INTO `sys_statistics` VALUES ('c967d9a790f3440599f3ccbb3a037b5f', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 16:04:47', '吉林');
INSERT INTO `sys_statistics` VALUES ('c969488de72743f49d7f166d2f026b8c', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 21:08:09', '吉林');
INSERT INTO `sys_statistics` VALUES ('c97a09384a8047ce8f453e89cfbdf24d', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-03', '2019-01-03 00:27:00', 'XX');
INSERT INTO `sys_statistics` VALUES ('c9bb2cd26f7444d894e9ddf2d1cd196a', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:31:25', 'XX');
INSERT INTO `sys_statistics` VALUES ('c9e768784fda4019aef97c7db8766960', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:44:28', 'XX');
INSERT INTO `sys_statistics` VALUES ('cad3fd27d41742629a4a4d998a395637', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 14:43:55', '吉林');
INSERT INTO `sys_statistics` VALUES ('cb1e0004b14b442dbb287d8d9cf3b564', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 15:29:30', 'XX');
INSERT INTO `sys_statistics` VALUES ('cb2aa46ae7134b8686bc86a13a80b4ac', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:44:35', 'XX');
INSERT INTO `sys_statistics` VALUES ('cb3c1ed9386d4d2c9029028ba5624471', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:20:57', '吉林');
INSERT INTO `sys_statistics` VALUES ('cb68a1fad2234320b9984f2b5a79c119', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2018-10-10', '2018-10-10 01:25:07', 'XX');
INSERT INTO `sys_statistics` VALUES ('cb842f1f48494805a30da69cbf03f404', '123.172.48.28', '中国  吉林 长春', '电信', '2019-01-08', '2019-01-08 17:05:49', '吉林');
INSERT INTO `sys_statistics` VALUES ('cbc073567114408c9fb4d88e09f54977', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 20:03:10', '吉林');
INSERT INTO `sys_statistics` VALUES ('cc2528a8935f422ca4c76d59fb4248db', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:54:33', 'XX');
INSERT INTO `sys_statistics` VALUES ('cc25c834516245659c54b7fa83270dee', '123.172.48.28', '中国  吉林 长春', '电信', '2019-01-11', '2019-01-11 20:54:45', '吉林');
INSERT INTO `sys_statistics` VALUES ('cc714433568f4687b60063aeca7d1b2f', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 21:07:30', '吉林');
INSERT INTO `sys_statistics` VALUES ('ccbec337b6e74a98976df3899adab020', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 00:01:25', 'XX');
INSERT INTO `sys_statistics` VALUES ('cccfac6e9eb34b23bea1ea86409151a1', '124.234.225.105', '中国  吉林 长春', '电信', '2019-01-13', '2019-01-13 18:53:08', '吉林');
INSERT INTO `sys_statistics` VALUES ('ccea92487ace437f97ae060169439029', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 18:06:25', '吉林');
INSERT INTO `sys_statistics` VALUES ('cceb42baf8e44a52b547e66b9de9b512', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 12:50:09', 'XX');
INSERT INTO `sys_statistics` VALUES ('cdfda36ce7714b049f5e084374deb500', '218.247.142.216', '中国  北京 北京', '鹏博士', '2019-03-28', '2019-03-28 20:15:30', '北京');
INSERT INTO `sys_statistics` VALUES ('ce06dce376db401d86b7120f508c1027', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 18:21:52', '吉林');
INSERT INTO `sys_statistics` VALUES ('ce12d2e7acd24775b81690d686cda34f', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 20:02:08', '吉林');
INSERT INTO `sys_statistics` VALUES ('ce435889298b4c1ea0957efbb9a76f41', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:05:12', 'XX');
INSERT INTO `sys_statistics` VALUES ('ce7ea0cce4a646f49cab169f8a34516f', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 21:09:50', '吉林');
INSERT INTO `sys_statistics` VALUES ('cec11dbea59f47728cdef01019413be6', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:15:19', '吉林');
INSERT INTO `sys_statistics` VALUES ('cf8883a6bcf74abda8e2579953cd0fdf', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 17:06:53', 'XX');
INSERT INTO `sys_statistics` VALUES ('cf8d3d3c5f194ca985d3ce42400f917a', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 15:33:48', 'XX');
INSERT INTO `sys_statistics` VALUES ('cf9b86ed725445188df8fdcaf175c6b4', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 12:23:15', '吉林');
INSERT INTO `sys_statistics` VALUES ('cfa02283865f4c6daeeb28345388aef1', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:26:39', '吉林');
INSERT INTO `sys_statistics` VALUES ('cfafda06e3b54ebfa4efa029e4bad942', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 00:19:49', 'XX');
INSERT INTO `sys_statistics` VALUES ('cff2ca5094f54f43b48792bde7080c7c', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:22:48', '吉林');
INSERT INTO `sys_statistics` VALUES ('cffa2e6449f3403b86522146d2f809a5', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:54:42', 'XX');
INSERT INTO `sys_statistics` VALUES ('d014a23f3df34d6db95fa22a1710cd7c', '36.104.54.72', '中国  吉林 长春', '电信', '2019-01-08', '2019-01-08 17:21:02', '吉林');
INSERT INTO `sys_statistics` VALUES ('d02813e8a7d648fcb88864aa4ad343cb', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:58:58', 'XX');
INSERT INTO `sys_statistics` VALUES ('d05d9cf3102e49fbb94e98b3f9dd532e', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 18:56:06', '吉林');
INSERT INTO `sys_statistics` VALUES ('d077600b757a4af580fc8dcad0713af6', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 11:43:55', '吉林');
INSERT INTO `sys_statistics` VALUES ('d0bda6f0a6124b1db562c6a59b08a252', '36.104.54.72', '中国  吉林 长春', '电信', '2019-01-08', '2019-01-08 17:28:44', '吉林');
INSERT INTO `sys_statistics` VALUES ('d0d8b0fda9dd42aaa57a7668b26bf378', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 14:56:24', '吉林');
INSERT INTO `sys_statistics` VALUES ('d11e5c6a9ecb428c9b8c47a3d7bdcbc9', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 14:29:07', '吉林');
INSERT INTO `sys_statistics` VALUES ('d1767cbfd4d04057a175ae91b2e96791', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 18:06:27', '吉林');
INSERT INTO `sys_statistics` VALUES ('d178f6eaf6b646fc84aecd063d9ea275', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:14:43', 'XX');
INSERT INTO `sys_statistics` VALUES ('d1acebc3d4ee43079cc730fc17c0ac4c', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 17:06:27', '吉林');
INSERT INTO `sys_statistics` VALUES ('d1f6d36c8a5546eeb1b0faa14bb0dd16', '218.247.142.216', '中国  北京 北京', '鹏博士', '2019-03-28', '2019-03-28 20:07:59', '北京');
INSERT INTO `sys_statistics` VALUES ('d200c681b46646b7a1b99be6de9fcfcc', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 16:31:44', 'XX');
INSERT INTO `sys_statistics` VALUES ('d20ac86b749f4d7ebbce7b6af14662ba', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:12:53', '吉林');
INSERT INTO `sys_statistics` VALUES ('d20d46150b4c46d38a74ae3594947e20', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 16:14:39', '吉林');
INSERT INTO `sys_statistics` VALUES ('d2381debcea9493a966d0e3bc3209928', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:20:41', 'XX');
INSERT INTO `sys_statistics` VALUES ('d2e5c97ba73c48e7be78402666f8bbf4', '123.172.48.28', '中国  吉林 长春', '电信', '2019-01-08', '2019-01-08 17:17:04', '吉林');
INSERT INTO `sys_statistics` VALUES ('d2ebf7482c164b43932491697259184a', '36.104.51.72', '中国  吉林 长春', '电信', '2019-01-11', '2019-01-11 19:26:57', '吉林');
INSERT INTO `sys_statistics` VALUES ('d300f1cf668a439ebe741503e592ea05', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 10:26:38', '吉林');
INSERT INTO `sys_statistics` VALUES ('d301d6a14c914b65a5f01c69017d5d94', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 15:12:37', '吉林');
INSERT INTO `sys_statistics` VALUES ('d3422abd90744d079107c1f445da141f', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 16:07:16', '吉林');
INSERT INTO `sys_statistics` VALUES ('d3842c67003d4334bc4755e215523653', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:23:39', 'XX');
INSERT INTO `sys_statistics` VALUES ('d389e66bd1204adea8dd7a66077edd24', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:59:57', 'XX');
INSERT INTO `sys_statistics` VALUES ('d3c42ca6e0e3402bba66a22d385b7ddb', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 21:16:56', '吉林');
INSERT INTO `sys_statistics` VALUES ('d3da0a7c3177489c804ed701ffd20e4c', '111.26.36.117', '中国  吉林 吉林', '移动', '2019-02-16', '2019-02-16 19:52:26', '吉林');
INSERT INTO `sys_statistics` VALUES ('d3dd5e597beb489092f6171fbf1a8873', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:22:51', 'XX');
INSERT INTO `sys_statistics` VALUES ('d410bd4a4156498db50188cd74ba420f', '218.247.142.216', '中国  北京 北京', '鹏博士', '2019-03-28', '2019-03-28 20:15:54', '北京');
INSERT INTO `sys_statistics` VALUES ('d435fba81a4e4e22adc0a111f5e83d2e', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-07', '2019-03-07 17:52:42', '吉林');
INSERT INTO `sys_statistics` VALUES ('d5188f148a494ee1aaa9b63a06510598', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 18:17:03', '吉林');
INSERT INTO `sys_statistics` VALUES ('d56962d5d45149928cef2b60d01da6f7', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:22:03', '吉林');
INSERT INTO `sys_statistics` VALUES ('d58268e9b1f34028bbb51313c97c084b', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 16:30:30', '吉林');
INSERT INTO `sys_statistics` VALUES ('d58d5d6ae4224443bc761ea7a480dce2', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 19:47:06', '吉林');
INSERT INTO `sys_statistics` VALUES ('d5b38997520f4213a8aefa221f63dabd', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 10:47:26', 'XX');
INSERT INTO `sys_statistics` VALUES ('d5c1c3b4a22b495d8d78ac6b52c9f032', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 00:02:41', 'XX');
INSERT INTO `sys_statistics` VALUES ('d5f24d33de7a4f238c24a52a75399916', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:28:08', 'XX');
INSERT INTO `sys_statistics` VALUES ('d62ee24fc6364747b673c93d741e6792', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 11:45:58', '吉林');
INSERT INTO `sys_statistics` VALUES ('d6428a46a82e4e39a84afbe0b09601bd', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 19:08:45', '吉林');
INSERT INTO `sys_statistics` VALUES ('d69dab3356ba4c589bb1c9cbdb9e84e4', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 15:33:55', 'XX');
INSERT INTO `sys_statistics` VALUES ('d6e656f9e2324ceca77e0455a7092bf7', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:04:07', 'XX');
INSERT INTO `sys_statistics` VALUES ('d70404101adc4c3188d54bacb8a2d49a', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 21:07:00', '吉林');
INSERT INTO `sys_statistics` VALUES ('d728d4188dea49099228d0b2dcf12a63', '111.26.36.117', '中国  吉林 吉林', '移动', '2019-02-16', '2019-02-16 19:22:50', '吉林');
INSERT INTO `sys_statistics` VALUES ('d74c09e2e3d049998cf480007c09c035', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 14:29:07', '吉林');
INSERT INTO `sys_statistics` VALUES ('d8173e39d47640d2862fb42d8ec08bda', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 15:00:18', '吉林');
INSERT INTO `sys_statistics` VALUES ('d81914805b034eea80f09eb5e8e0cc9c', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 10:27:14', '吉林');
INSERT INTO `sys_statistics` VALUES ('d8208391407c4569bc3bd0a548b3b30f', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:46:47', 'XX');
INSERT INTO `sys_statistics` VALUES ('d827bbf3f555474ea3f7a5a81e617030', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-27', '2019-03-27 22:25:09', '吉林');
INSERT INTO `sys_statistics` VALUES ('d85fafefd0d946549fd660a232acd807', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-27', '2019-03-27 22:26:59', '吉林');
INSERT INTO `sys_statistics` VALUES ('d861c72848d343f5b143dd4ca30dc20b', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:42:59', 'XX');
INSERT INTO `sys_statistics` VALUES ('d866ae6de7684cf9813046074aee453b', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 00:12:33', 'XX');
INSERT INTO `sys_statistics` VALUES ('d882240fae6b4071bfc6e28ee939adca', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:29:52', 'XX');
INSERT INTO `sys_statistics` VALUES ('d8884ecf68a246af91f04d2bd38e8431', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 12:43:23', '吉林');
INSERT INTO `sys_statistics` VALUES ('d8a007fce9b6444c8638b42839f1d07f', '123.172.48.28', '中国  吉林 长春', '电信', '2019-01-11', '2019-01-11 20:10:49', '吉林');
INSERT INTO `sys_statistics` VALUES ('d8bdaa844e26419b8d53e85b2d0b38e9', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:14:21', '吉林');
INSERT INTO `sys_statistics` VALUES ('d8f3692697284360bd4c4316a50a36c1', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:04:51', 'XX');
INSERT INTO `sys_statistics` VALUES ('d903a15ca78e4730903fd9d2e94f796d', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:14:34', 'XX');
INSERT INTO `sys_statistics` VALUES ('d93e5e9da5434363a0f871d7fc6e7557', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 20:10:56', '吉林');
INSERT INTO `sys_statistics` VALUES ('d94355bfbd3340efac29289bc4cf0197', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 16:55:49', 'XX');
INSERT INTO `sys_statistics` VALUES ('d95205ad3c5e42aa9db4501b24b2cdba', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 17:56:10', 'XX');
INSERT INTO `sys_statistics` VALUES ('d99fdbf7959a4e15b1074c043a20cd1d', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-04', '2019-03-04 19:11:38', '吉林');
INSERT INTO `sys_statistics` VALUES ('d9a8721f73304bea848a0c43c0398acf', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 20:30:37', '吉林');
INSERT INTO `sys_statistics` VALUES ('d9c9c57419ba48a781216af7911669c4', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 20:20:33', 'XX');
INSERT INTO `sys_statistics` VALUES ('da0df246672a4caf85c8b196b4ccbc45', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:23:09', 'XX');
INSERT INTO `sys_statistics` VALUES ('da16e5b8cd7047539e8025ff93927d37', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 15:36:44', 'XX');
INSERT INTO `sys_statistics` VALUES ('da1c16e6e2714a07acac379e4f60a6e6', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:42:47', 'XX');
INSERT INTO `sys_statistics` VALUES ('da209eb4b2fe49ab91bcedb7efa1ada5', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-27', '2019-03-27 22:25:37', '吉林');
INSERT INTO `sys_statistics` VALUES ('da2d7fb7263d44a0b720cf0d0078d027', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 22:09:52', 'XX');
INSERT INTO `sys_statistics` VALUES ('da4100d0a37d473883fe15cd96445837', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:16:54', 'XX');
INSERT INTO `sys_statistics` VALUES ('da901dfb351c4df48c8bbcd518d0f3c2', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:28:21', '吉林');
INSERT INTO `sys_statistics` VALUES ('da9f2d493e664e26a9605fc8090ce830', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 21:27:56', '吉林');
INSERT INTO `sys_statistics` VALUES ('dae55a3f41bf4a9482d5895fb59410b2', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 20:03:46', '吉林');
INSERT INTO `sys_statistics` VALUES ('db07f8e3839246679d201f9c22e04373', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 13:33:43', '吉林');
INSERT INTO `sys_statistics` VALUES ('db1121dae12f43a6952b6c2c04574622', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 13:54:17', 'XX');
INSERT INTO `sys_statistics` VALUES ('db234ff4d50b47c49aa3bdbcedf18bd9', '192.168.16.105', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 15:31:40', 'XX');
INSERT INTO `sys_statistics` VALUES ('db564a2854424e1b8a9e5423047480c2', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:27:46', 'XX');
INSERT INTO `sys_statistics` VALUES ('db6a43941c7c4b18af3fafde820ecae3', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:13:59', 'XX');
INSERT INTO `sys_statistics` VALUES ('db98ff1eed2e441ca73d7d06f2767333', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:20:32', 'XX');
INSERT INTO `sys_statistics` VALUES ('dbae0d7781c340b087c3efc99d263d8e', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:30:24', 'XX');
INSERT INTO `sys_statistics` VALUES ('dbb7ce9641364c5492a57b5893f18021', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:37:16', 'XX');
INSERT INTO `sys_statistics` VALUES ('dbd110af46e14a74a42854c7435828be', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:28:03', 'XX');
INSERT INTO `sys_statistics` VALUES ('dc01493f0fb34cd5b3edaaa0417dad41', '124.234.225.105', '中国  吉林 长春', '电信', '2019-01-13', '2019-01-13 15:33:41', '吉林');
INSERT INTO `sys_statistics` VALUES ('dc38204799e44dbfa81c27a326919e5b', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 19:54:21', '吉林');
INSERT INTO `sys_statistics` VALUES ('dcce883dc98d4a8a9064c4449a459f1b', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 15:55:57', '吉林');
INSERT INTO `sys_statistics` VALUES ('dd44303ce5804ee6b6f20b7782c0636f', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:39:16', 'XX');
INSERT INTO `sys_statistics` VALUES ('dd4acdb055764b369ab8a75751eb3edb', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 16:17:28', '吉林');
INSERT INTO `sys_statistics` VALUES ('dd5a65f5770f4b428239feac31084634', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 14:04:11', '吉林');
INSERT INTO `sys_statistics` VALUES ('dd60172d85a749598df291c491ab48e7', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 15:00:23', 'XX');
INSERT INTO `sys_statistics` VALUES ('dd890fc22a5742c9a88a009df46ffb55', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 19:20:15', '吉林');
INSERT INTO `sys_statistics` VALUES ('ddb951e3a52d44009e4ca853f3c6855c', '124.234.225.105', '中国  吉林 长春', '电信', '2019-01-13', '2019-01-13 17:58:30', '吉林');
INSERT INTO `sys_statistics` VALUES ('ddea4bee8f824f79b8abe52c9a4142e5', '118.89.225.69', '中国  天津 天津', '电信', '2019-01-11', '2019-01-11 21:49:51', '天津');
INSERT INTO `sys_statistics` VALUES ('dded794bc4b64356a56f1c58c5d61755', '124.234.225.45', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 22:29:05', '吉林');
INSERT INTO `sys_statistics` VALUES ('ddef6ffd9c5a4956ab7f967df45dd39a', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 21:16:36', '吉林');
INSERT INTO `sys_statistics` VALUES ('ddf2937f7871438fa71a80185b5f736a', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 11:12:21', '吉林');
INSERT INTO `sys_statistics` VALUES ('de5ff9093e2548fcb2c0a698da2cffb7', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 18:42:53', '吉林');
INSERT INTO `sys_statistics` VALUES ('deeba5769d5443ed8887662b5b2a9b3f', '124.234.225.45', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 22:28:47', '吉林');
INSERT INTO `sys_statistics` VALUES ('deed987142654ec28199de526c2e305f', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 23:47:44', 'XX');
INSERT INTO `sys_statistics` VALUES ('df0b15dc31104014a9c2488594bc5c97', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 15:25:53', '吉林');
INSERT INTO `sys_statistics` VALUES ('df11a0c5e1574c0888dbc6de9e0b6237', '36.104.26.201', '中国  吉林 长春', '电信', '2019-03-04', '2019-03-04 14:02:11', '吉林');
INSERT INTO `sys_statistics` VALUES ('df29445edfc84855bbbe2523a9ba0a91', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:42:33', '吉林');
INSERT INTO `sys_statistics` VALUES ('df95d28763264c68859c3380f1cf6d8a', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 18:48:09', '吉林');
INSERT INTO `sys_statistics` VALUES ('dfbad3e915074fa9aba2fab83411595e', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 20:05:10', '吉林');
INSERT INTO `sys_statistics` VALUES ('dfcfe1220c98465a9e9c6922b7e09456', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:11:18', 'XX');
INSERT INTO `sys_statistics` VALUES ('e037ced191ed4f5894bd304a996426ff', '36.104.26.201', '中国  吉林 长春', '电信', '2019-03-04', '2019-03-04 14:02:45', '吉林');
INSERT INTO `sys_statistics` VALUES ('e07d534d25ec4eaba6a1786a00ebdba8', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:54:33', 'XX');
INSERT INTO `sys_statistics` VALUES ('e09ced7253b645b4bc4f4fa983eba6a8', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 17:49:10', '吉林');
INSERT INTO `sys_statistics` VALUES ('e0eb4cc89424463bae6b5c9d447cfe53', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 15:33:53', 'XX');
INSERT INTO `sys_statistics` VALUES ('e1066860a8e74e3f813aaf347cdc44ce', '124.234.225.45', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 22:28:53', '吉林');
INSERT INTO `sys_statistics` VALUES ('e10bfa36ffe24840a97c7916bf290cab', '123.172.48.28', '中国  吉林 长春', '电信', '2019-01-08', '2019-01-08 17:05:43', '吉林');
INSERT INTO `sys_statistics` VALUES ('e14f7ee7636447e2ab879f8a907bbab9', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:10:04', 'XX');
INSERT INTO `sys_statistics` VALUES ('e159016049194d58829614e9861d2130', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 12:08:19', 'XX');
INSERT INTO `sys_statistics` VALUES ('e1590288540e445b8fb64824823b737d', '218.247.142.216', '中国  北京 北京', '鹏博士', '2019-03-28', '2019-03-28 20:07:53', '北京');
INSERT INTO `sys_statistics` VALUES ('e17ccbce9a404bad8a68eda7f57301cb', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 16:55:54', 'XX');
INSERT INTO `sys_statistics` VALUES ('e18848eae8c247938ef51c37e1697bc0', '117.136.6.121', '中国  吉林 XX', '移动', '2019-02-14', '2019-02-14 16:15:55', '吉林');
INSERT INTO `sys_statistics` VALUES ('e1eebbc2b65d4892ac3c6b826e325611', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 14:32:15', '吉林');
INSERT INTO `sys_statistics` VALUES ('e1fc2bd3894e4fa79dfdc00d033480aa', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 13:55:12', 'XX');
INSERT INTO `sys_statistics` VALUES ('e250b4b4a4224b1eb3b2244c79788074', '36.104.51.72', '中国  吉林 长春', '电信', '2019-01-11', '2019-01-11 19:59:46', '吉林');
INSERT INTO `sys_statistics` VALUES ('e26433b8849440f79c6dfbbe4de34c1c', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 17:07:35', '吉林');
INSERT INTO `sys_statistics` VALUES ('e281164b69b348aaa9ebe34590d999f0', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 18:06:29', '吉林');
INSERT INTO `sys_statistics` VALUES ('e313ac24362d4114b37f6b319b1210b8', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:41:20', 'XX');
INSERT INTO `sys_statistics` VALUES ('e3196e1f3faf430d9cfba06e02277e58', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 16:17:36', '吉林');
INSERT INTO `sys_statistics` VALUES ('e32b712c441b453f91816e6effeb9714', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 10:29:08', '吉林');
INSERT INTO `sys_statistics` VALUES ('e341bf57fd0541ad82786640498ddb35', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 20:46:57', '吉林');
INSERT INTO `sys_statistics` VALUES ('e35c6197133b4085973b8a6313cc1352', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 17:51:53', '吉林');
INSERT INTO `sys_statistics` VALUES ('e3765ad4211b4c18b402ebfc968caae3', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:03:52', 'XX');
INSERT INTO `sys_statistics` VALUES ('e37ab661f8374bffa88dd453f5c574ec', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 15:26:38', 'XX');
INSERT INTO `sys_statistics` VALUES ('e3b107c255c1473aaff3c36c109fe77c', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 19:32:02', '吉林');
INSERT INTO `sys_statistics` VALUES ('e3b2a86c0a1d4800a490d368c16a3d50', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:19:35', 'XX');
INSERT INTO `sys_statistics` VALUES ('e3ebdfa24fbc4ffd901627edf86c5f90', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 00:10:44', 'XX');
INSERT INTO `sys_statistics` VALUES ('e3fa996ad069454d902caeb6c376b5e4', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-03', '2019-01-03 00:26:05', 'XX');
INSERT INTO `sys_statistics` VALUES ('e3fcb9fd8013493dad644a1f34dfd812', '111.26.36.15', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 20:13:07', '吉林');
INSERT INTO `sys_statistics` VALUES ('e3ff03f73dd8475e82b67d48565798dd', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 17:26:23', '吉林');
INSERT INTO `sys_statistics` VALUES ('e42bb8ea87634a4b9dd9d3d5e56d5a66', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-27', '2019-03-27 22:50:17', '吉林');
INSERT INTO `sys_statistics` VALUES ('e44bf7f141564c65984710bae6be7ad4', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:28:02', 'XX');
INSERT INTO `sys_statistics` VALUES ('e48bffc02520464590cc037bf011fbc5', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:18:48', 'XX');
INSERT INTO `sys_statistics` VALUES ('e496159ff27a4e44bc5d6e839bd28954', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 15:36:43', 'XX');
INSERT INTO `sys_statistics` VALUES ('e4a3656db0224e19b5db3c205369f5f9', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 12:52:08', 'XX');
INSERT INTO `sys_statistics` VALUES ('e4ba640e3a454dbba1263f80573c89e5', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-03', '2019-01-03 00:26:10', 'XX');
INSERT INTO `sys_statistics` VALUES ('e4c6a70e65784f1cacd1368dbc979f02', '36.104.26.201', '中国  吉林 长春', '电信', '2019-03-04', '2019-03-04 13:29:22', '吉林');
INSERT INTO `sys_statistics` VALUES ('e4e39010c6fe45a186f0b1bb6a509ef0', '111.26.36.117', '中国  吉林 吉林', '移动', '2019-02-16', '2019-02-16 19:59:15', '吉林');
INSERT INTO `sys_statistics` VALUES ('e4fafed6ff224e4289eee9c5f6b78825', '123.172.48.28', '中国  吉林 长春', '电信', '2019-01-11', '2019-01-11 18:35:53', '吉林');
INSERT INTO `sys_statistics` VALUES ('e502c1bff68944a48016be28a0afbc6d', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 18:53:07', '吉林');
INSERT INTO `sys_statistics` VALUES ('e505bdd68a9c40bcad73cca5ff8ee4bd', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 21:28:03', '吉林');
INSERT INTO `sys_statistics` VALUES ('e5261a17d9fa45b0821a97bd365f3d42', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 17:19:35', 'XX');
INSERT INTO `sys_statistics` VALUES ('e5337a3281da41c28dac13b6e50abeca', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 22:16:53', 'XX');
INSERT INTO `sys_statistics` VALUES ('e5362d9965e1497a99adbc091a2b0791', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:55:47', 'XX');
INSERT INTO `sys_statistics` VALUES ('e54f1797ab0744bab91d8a106791b0b5', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 10:56:01', 'XX');
INSERT INTO `sys_statistics` VALUES ('e5513b27847d492483d4763e82dd71c9', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 16:35:17', 'XX');
INSERT INTO `sys_statistics` VALUES ('e59d36076a3b440da41627a2947fb2c9', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 15:38:31', 'XX');
INSERT INTO `sys_statistics` VALUES ('e5e9ebf146f94fed9cd71d71db648308', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 22:58:11', 'XX');
INSERT INTO `sys_statistics` VALUES ('e5f32b7c688a41c698b03132431c2e7f', '111.26.36.117', '中国  吉林 吉林', '移动', '2019-02-16', '2019-02-16 17:48:01', '吉林');
INSERT INTO `sys_statistics` VALUES ('e66b6cbb4c44483ea1827652ac0d63c7', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 20:09:44', '吉林');
INSERT INTO `sys_statistics` VALUES ('e6745d6cb9eb483f8aadd9903612f3a3', '124.234.225.105', '中国  吉林 长春', '电信', '2019-01-13', '2019-01-13 15:33:44', '吉林');
INSERT INTO `sys_statistics` VALUES ('e68fa7daa22a4deebc7d3943979b21aa', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:59:29', 'XX');
INSERT INTO `sys_statistics` VALUES ('e6d6d2e9971a4551b3608b36fbe08cb8', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:16:44', 'XX');
INSERT INTO `sys_statistics` VALUES ('e74d8a33ab0d4413b5482d54e770adab', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 17:55:22', 'XX');
INSERT INTO `sys_statistics` VALUES ('e79b4a21e55049b38cfd61e09107b3cc', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 10:40:48', 'XX');
INSERT INTO `sys_statistics` VALUES ('e7a5f80651cb42fea3077aef0b4b671e', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 20:00:07', '吉林');
INSERT INTO `sys_statistics` VALUES ('e8318bfd12a74ef489d123d390633a1d', '36.48.113.165', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 16:26:41', '吉林');
INSERT INTO `sys_statistics` VALUES ('e83795188d1d47078d30c4cd0b09cbd8', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:16:19', 'XX');
INSERT INTO `sys_statistics` VALUES ('e83810a2427348febd70553a270174aa', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:58:44', 'XX');
INSERT INTO `sys_statistics` VALUES ('e86f0e6e00c74a1b9d24c4f0b0517aa8', '223.104.16.80', '中国  吉林 长春', '移动', '2019-03-10', '2019-03-10 21:09:39', '吉林');
INSERT INTO `sys_statistics` VALUES ('e8becc3edd5645fba9203e60d2355e5d', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 19:36:29', '吉林');
INSERT INTO `sys_statistics` VALUES ('e90d08cda5e84d79b2e7fc29284c695d', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-27', '2019-03-27 22:48:54', '吉林');
INSERT INTO `sys_statistics` VALUES ('e925ad33b0d4414fa83108120e345604', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 17:21:27', 'XX');
INSERT INTO `sys_statistics` VALUES ('e93a7d34d933450c927ca130e4e9e26e', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:28:38', 'XX');
INSERT INTO `sys_statistics` VALUES ('e945c57829ff488eb1b52c156824a864', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:09:30', 'XX');
INSERT INTO `sys_statistics` VALUES ('e95e543657ba4cd29c8b789cdee04b1d', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:25:21', 'XX');
INSERT INTO `sys_statistics` VALUES ('e96226f4d09144399d4cb0bc78734fda', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 16:45:15', 'XX');
INSERT INTO `sys_statistics` VALUES ('e97f41d8e1ef4d57a5a1cf157b4e5d4d', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:59:32', 'XX');
INSERT INTO `sys_statistics` VALUES ('e980cd5403ef46feb7df0503bd10dad1', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:30:50', '吉林');
INSERT INTO `sys_statistics` VALUES ('e9890be749a8462e99ac18505faf3785', '223.104.16.80', '中国  吉林 长春', '移动', '2019-03-10', '2019-03-10 21:09:48', '吉林');
INSERT INTO `sys_statistics` VALUES ('e9bcb6c8fb19476d8688875981dc8491', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 15:29:42', 'XX');
INSERT INTO `sys_statistics` VALUES ('e9e66dccf7184d809dde696f8c8f7af0', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 20:28:07', '吉林');
INSERT INTO `sys_statistics` VALUES ('e9efb15773584da3a52a9278a8b63a8e', '36.104.54.72', '中国  吉林 长春', '电信', '2019-01-08', '2019-01-08 17:28:38', '吉林');
INSERT INTO `sys_statistics` VALUES ('ea0463c0b1a5409b842b8fbe472e1adf', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-03', '2019-01-03 00:25:48', 'XX');
INSERT INTO `sys_statistics` VALUES ('ea194250f542434aa4fb950aa87eeda6', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 20:01:38', '吉林');
INSERT INTO `sys_statistics` VALUES ('ea1fcf5a74db47e8a5dc7f29721a0c89', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 23:05:22', 'XX');
INSERT INTO `sys_statistics` VALUES ('ea2cd97b177046cd8449c29281dc8b9a', '111.26.36.117', '中国  吉林 吉林', '移动', '2019-02-16', '2019-02-16 19:22:54', '吉林');
INSERT INTO `sys_statistics` VALUES ('ea394e8cfa514a4883f351f65365692b', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 13:54:20', 'XX');
INSERT INTO `sys_statistics` VALUES ('ea47de7e5e074ec88a038a04d0a1f670', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:10:57', 'XX');
INSERT INTO `sys_statistics` VALUES ('ea639c81275a4ea38063c611c6512c80', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:14:26', 'XX');
INSERT INTO `sys_statistics` VALUES ('ea7cf104ee4149f8950ba9a6a5c796f1', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 10:28:19', '吉林');
INSERT INTO `sys_statistics` VALUES ('ea8054da1b884146b0b0e59737459cd8', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:05:39', 'XX');
INSERT INTO `sys_statistics` VALUES ('eaa37aa217c9485d8b433995a1d23ae7', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:59:11', 'XX');
INSERT INTO `sys_statistics` VALUES ('eaa9ff0bdbe645cda35de3223cfa692d', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-27', '2019-03-27 22:50:29', '吉林');
INSERT INTO `sys_statistics` VALUES ('eae27dabb41042df9afd6dc064e4ce04', '36.104.51.72', '中国  吉林 长春', '电信', '2019-01-11', '2019-01-11 19:26:59', '吉林');
INSERT INTO `sys_statistics` VALUES ('eb0d66b1f46845b0a331ba6d14dcd9f0', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 00:01:39', 'XX');
INSERT INTO `sys_statistics` VALUES ('eb20822f5bf7415e9dd3f108f249e514', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:32:32', 'XX');
INSERT INTO `sys_statistics` VALUES ('eb76879ff9db48468aaac5118d9a319a', '36.104.54.72', '中国  吉林 长春', '电信', '2019-01-08', '2019-01-08 17:17:16', '吉林');
INSERT INTO `sys_statistics` VALUES ('eb94f243638e4124a206903f8ae4a771', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 18:06:15', '吉林');
INSERT INTO `sys_statistics` VALUES ('eba8ee7159ec4d1b8da786db3817bac5', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 14:55:06', '吉林');
INSERT INTO `sys_statistics` VALUES ('ebaa744c991946828825ae95b6e53f65', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 15:53:29', '吉林');
INSERT INTO `sys_statistics` VALUES ('ebc9bf423a054672b26ec3efc6240b96', '223.104.16.80', '中国  吉林 长春', '移动', '2019-03-10', '2019-03-10 21:13:06', '吉林');
INSERT INTO `sys_statistics` VALUES ('ebd7b9086dde4ed290498bea196b46c2', '223.104.16.80', '中国  吉林 长春', '移动', '2019-03-10', '2019-03-10 21:07:08', '吉林');
INSERT INTO `sys_statistics` VALUES ('ec0819a2503e488792be8cfe532737d8', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 16:27:50', '吉林');
INSERT INTO `sys_statistics` VALUES ('ec3a52d1513a41449677ee50c9283751', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 00:21:56', 'XX');
INSERT INTO `sys_statistics` VALUES ('ec8dad55f7de475daab6e69a5295f10f', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:59:22', 'XX');
INSERT INTO `sys_statistics` VALUES ('eccc4b74497f420f80f112c2bb274e6a', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 11:35:28', '吉林');
INSERT INTO `sys_statistics` VALUES ('ececd82fc107439d8cace46ea45ace16', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:56:54', 'XX');
INSERT INTO `sys_statistics` VALUES ('ed210bad8f1449b09cd222e981999aec', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:52:07', 'XX');
INSERT INTO `sys_statistics` VALUES ('ed31547b3eb543968839c6824f337487', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 22:48:50', 'XX');
INSERT INTO `sys_statistics` VALUES ('ed3965283f6b48f3bf95a996e83b42c3', '36.49.187.12', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 13:29:15', '吉林');
INSERT INTO `sys_statistics` VALUES ('ed7f5eaf4c50452e9484842e8dea8387', '36.104.54.72', '中国  吉林 长春', '电信', '2019-01-08', '2019-01-08 17:25:49', '吉林');
INSERT INTO `sys_statistics` VALUES ('ed91a6df44e748e584a89d1f806a14f1', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 23:58:13', 'XX');
INSERT INTO `sys_statistics` VALUES ('ed98fb856189496ebfa09c1736bdb723', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 13:54:38', 'XX');
INSERT INTO `sys_statistics` VALUES ('ede61bd9d07c4a89879358cc42374243', '124.234.225.105', '中国  吉林 长春', '电信', '2019-01-13', '2019-01-13 15:33:38', '吉林');
INSERT INTO `sys_statistics` VALUES ('edf243e4b4e044d296246c18191497e3', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 18:07:17', '吉林');
INSERT INTO `sys_statistics` VALUES ('edf8aff86f824a56ac6a94d290ea8206', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:11:10', 'XX');
INSERT INTO `sys_statistics` VALUES ('edfae84b000d4c579a232841ef2b076e', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:11:15', 'XX');
INSERT INTO `sys_statistics` VALUES ('ee1be9a92a9b4ce6a696c29c457f820b', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:20:31', 'XX');
INSERT INTO `sys_statistics` VALUES ('ee32a1321500424889e52e6391d37104', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 10:41:03', 'XX');
INSERT INTO `sys_statistics` VALUES ('ee55d3e89dc64eb28b2a7991ce66950e', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-02', '2019-01-02 23:04:56', 'XX');
INSERT INTO `sys_statistics` VALUES ('ee828dc370bd467fa94a51e5b416c525', '111.26.36.117', '中国  吉林 吉林', '移动', '2019-02-16', '2019-02-16 18:34:26', '吉林');
INSERT INTO `sys_statistics` VALUES ('ee92cf176b7d459b95694eb34b620158', '124.234.225.61', '中国  吉林 长春', '电信', '2019-03-08', '2019-03-08 15:04:10', '吉林');
INSERT INTO `sys_statistics` VALUES ('eeb82aa13eb44e39b9759d05db83a827', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-03', '2019-01-03 00:27:48', 'XX');
INSERT INTO `sys_statistics` VALUES ('ef35514afbb648e29fcfa4717e664d11', '117.136.58.128', '中国  吉林 XX', '移动', '2019-02-14', '2019-02-14 15:54:17', '吉林');
INSERT INTO `sys_statistics` VALUES ('ef458edb56a14fb18e67021600ad7f2d', '124.234.225.79', '中国  吉林 长春', '电信', '2019-03-27', '2019-03-27 22:23:13', '吉林');
INSERT INTO `sys_statistics` VALUES ('ef475510c5e5416f9a59f606886599d6', '58.21.210.168', '中国  吉林 白城', '联通', '2019-02-22', '2019-02-22 20:09:35', '吉林');
INSERT INTO `sys_statistics` VALUES ('ef5ae97e04d4472e9456b5690b179449', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 19:18:44', '吉林');
INSERT INTO `sys_statistics` VALUES ('ef5e3317c25c48b7bbf40301dafadf7e', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:04:44', 'XX');
INSERT INTO `sys_statistics` VALUES ('ef974dbfd3704f9da3b58fde29c1d119', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 13:54:38', 'XX');
INSERT INTO `sys_statistics` VALUES ('efbd69b3e7ef47f4bf5bdfce705fe983', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:42:45', 'XX');
INSERT INTO `sys_statistics` VALUES ('efc171f1de7446059bab0e193f8b9afd', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 17:01:20', 'XX');
INSERT INTO `sys_statistics` VALUES ('efcabfbb8a0f4f728acb98f98bb87969', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 15:27:00', 'XX');
INSERT INTO `sys_statistics` VALUES ('efd22e6437a243158be3184680609f77', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 18:19:08', '吉林');
INSERT INTO `sys_statistics` VALUES ('f014004be08646aaa76e66aba67cafde', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 11:14:44', '吉林');
INSERT INTO `sys_statistics` VALUES ('f03d8862aecc44879c2f69040bfd03d9', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 00:02:06', 'XX');
INSERT INTO `sys_statistics` VALUES ('f09f9c76d6d049a498b4bd15531d97f3', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:20:39', 'XX');
INSERT INTO `sys_statistics` VALUES ('f0ac57f4038a4e73b70e23d2655d93b8', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 17:34:46', '吉林');
INSERT INTO `sys_statistics` VALUES ('f0b49ee7f26f43ef9ec48f29e7fa9815', '36.48.113.165', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 16:27:04', '吉林');
INSERT INTO `sys_statistics` VALUES ('f0b7cff963fb4d8f853dc044cc88f93d', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 16:35:05', 'XX');
INSERT INTO `sys_statistics` VALUES ('f0d9d58ad00d400a9b9e0ca40c21a11c', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:08:40', 'XX');
INSERT INTO `sys_statistics` VALUES ('f0df61c702f34ccfa4cd4d41a8f9472a', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 19:48:57', '吉林');
INSERT INTO `sys_statistics` VALUES ('f1188b994471402687306a6edad09bbe', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-07', '2019-03-07 18:30:20', '吉林');
INSERT INTO `sys_statistics` VALUES ('f11ee0c4b3a3463a91d17922a6a0f0d8', '124.234.225.45', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 22:28:37', '吉林');
INSERT INTO `sys_statistics` VALUES ('f14d02789696448bb80dc728a2dbe00d', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-03', '2019-01-03 00:25:41', 'XX');
INSERT INTO `sys_statistics` VALUES ('f17543e7a5d34f1f81af24dd5e49c0b6', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:12:55', '吉林');
INSERT INTO `sys_statistics` VALUES ('f183cfbffe2e4dc899da19f41eadd4a6', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:54:58', 'XX');
INSERT INTO `sys_statistics` VALUES ('f18e6bb6221b4aaf8f9165eb4fa8bc08', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 12:42:35', '吉林');
INSERT INTO `sys_statistics` VALUES ('f19a7ccf7bf14da6a3874d58dfd02639', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 22:51:38', 'XX');
INSERT INTO `sys_statistics` VALUES ('f19e25c7f0be44bcb236f38f4262424d', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 12:01:26', 'XX');
INSERT INTO `sys_statistics` VALUES ('f1ab6db5c50a4b9e8973e394286c88af', '124.234.225.45', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 21:55:52', '吉林');
INSERT INTO `sys_statistics` VALUES ('f1c98802e8824cc0bdf5f3e528ac4be4', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:26:02', 'XX');
INSERT INTO `sys_statistics` VALUES ('f1dc75c0b6964ee9a3a98fc94a4b4139', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 14:14:58', '吉林');
INSERT INTO `sys_statistics` VALUES ('f1fd45d8c22c49ce80ec935788e8807b', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:14:45', 'XX');
INSERT INTO `sys_statistics` VALUES ('f23ec18586bc46ddabe270ded4620632', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:11:19', 'XX');
INSERT INTO `sys_statistics` VALUES ('f257ce84ac45479b97fa3e731d9119b8', '124.234.225.105', '中国  吉林 长春', '电信', '2019-01-13', '2019-01-13 17:58:33', '吉林');
INSERT INTO `sys_statistics` VALUES ('f2955ab69947432a865bded151531ea5', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 14:33:05', '吉林');
INSERT INTO `sys_statistics` VALUES ('f298571553d94e78bc4429f1b387bd0a', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 15:25:30', 'XX');
INSERT INTO `sys_statistics` VALUES ('f2cb5694fa29474cbab4a19bab7cd08b', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:28:17', '吉林');
INSERT INTO `sys_statistics` VALUES ('f32825ea03c34e9d9699527f4ff11917', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 20:27:11', '吉林');
INSERT INTO `sys_statistics` VALUES ('f33dfdd617c247e8832e8e8e8b7764c9', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 14:55:12', '吉林');
INSERT INTO `sys_statistics` VALUES ('f376976ffae24209bad6be6af92809fb', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:31:24', 'XX');
INSERT INTO `sys_statistics` VALUES ('f392e5a19621458c83bf442a4e4abd76', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 00:15:23', 'XX');
INSERT INTO `sys_statistics` VALUES ('f3966220cc3443f3bc0a19681505dc43', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 14:54:58', '吉林');
INSERT INTO `sys_statistics` VALUES ('f3b25b2f76a84d189f4f400b2fe022dc', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:54:01', 'XX');
INSERT INTO `sys_statistics` VALUES ('f3ba3fc968b944409f785d125c4cc10b', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 12:11:35', 'XX');
INSERT INTO `sys_statistics` VALUES ('f3bf6fb8664e4161a7e5817ff768d66f', '36.104.26.201', '中国  吉林 长春', '电信', '2019-03-04', '2019-03-04 13:24:42', '吉林');
INSERT INTO `sys_statistics` VALUES ('f3fba51da9e4470ca8da72af80d8fb4a', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:18:30', 'XX');
INSERT INTO `sys_statistics` VALUES ('f43556521cca4dcc92ba8628723216c8', '118.89.225.69', '中国  天津 天津', '电信', '2019-01-11', '2019-01-11 21:46:37', '天津');
INSERT INTO `sys_statistics` VALUES ('f439eecd8178456cb3ddc1c8eb9ef15d', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 12:01:25', 'XX');
INSERT INTO `sys_statistics` VALUES ('f4504d882c8c49909f28e947f4958479', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 19:49:07', '吉林');
INSERT INTO `sys_statistics` VALUES ('f461c032beee456b9cfd9369c9ffbf90', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:35:50', 'XX');
INSERT INTO `sys_statistics` VALUES ('f48b16ec569744a2b5fc7d6ae4048cac', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:26:30', 'XX');
INSERT INTO `sys_statistics` VALUES ('f4cb3c9cea264c7ba108ea37c40194e0', '123.172.48.28', '中国  吉林 长春', '电信', '2019-01-11', '2019-01-11 19:45:33', '吉林');
INSERT INTO `sys_statistics` VALUES ('f4cbedbde494462eb8fba2c993d31322', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 15:28:57', 'XX');
INSERT INTO `sys_statistics` VALUES ('f511ce31cc424920adf08bb4843a49fb', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 16:33:13', '吉林');
INSERT INTO `sys_statistics` VALUES ('f517b80a5edc489e8b39be9faf70559c', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-25', '2019-02-25 21:16:35', '吉林');
INSERT INTO `sys_statistics` VALUES ('f52f3b4035a94c04a478912309b37686', '111.26.36.29', '中国  吉林 吉林', '移动', '2019-02-14', '2019-02-14 18:25:42', '吉林');
INSERT INTO `sys_statistics` VALUES ('f52fe1ef74d5424cba9b7feda8730679', '111.26.36.117', '中国  吉林 吉林', '移动', '2019-02-16', '2019-02-16 17:47:49', '吉林');
INSERT INTO `sys_statistics` VALUES ('f535ba1c0c624207b7bc7cc82dac7a39', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 17:16:14', 'XX');
INSERT INTO `sys_statistics` VALUES ('f54a202741d546d9a9a011519c9128c1', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 12:21:44', '吉林');
INSERT INTO `sys_statistics` VALUES ('f57c37c54c9e4ca3abcfb3404179c916', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 00:06:56', 'XX');
INSERT INTO `sys_statistics` VALUES ('f5aa83ea1096433ca08f3483f589d08c', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 15:38:32', 'XX');
INSERT INTO `sys_statistics` VALUES ('f60a5c643e35482c9662d7cf09a2f2f1', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 17:52:13', '吉林');
INSERT INTO `sys_statistics` VALUES ('f6161769fa8940ea8079809ff91bfc6b', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 15:13:17', 'XX');
INSERT INTO `sys_statistics` VALUES ('f66c16a6da984e2aaea1825ba3e735a6', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 18:17:00', '吉林');
INSERT INTO `sys_statistics` VALUES ('f671d2b1e4ff4551b052d3a48f088f97', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:31:04', 'XX');
INSERT INTO `sys_statistics` VALUES ('f6dbc4bded3c41649572a7da412a67e7', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 15:14:11', '吉林');
INSERT INTO `sys_statistics` VALUES ('f6e8e83c7ef4499eae94708550f57cdc', '36.104.23.30', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 19:16:22', '吉林');
INSERT INTO `sys_statistics` VALUES ('f6e8fd4a777e40dd8917333ef489f6af', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 19:53:40', '吉林');
INSERT INTO `sys_statistics` VALUES ('f6f69b734e8f48779667cd03ce00d9b9', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:41:27', 'XX');
INSERT INTO `sys_statistics` VALUES ('f6f7c3045f864fc2a87bfe07164c34b9', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 18:02:06', 'XX');
INSERT INTO `sys_statistics` VALUES ('f7330c5cea31448ea425a7c8e2dee24b', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:22:31', 'XX');
INSERT INTO `sys_statistics` VALUES ('f74db3e38565420dba67b8bcf4454a6e', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 11:14:37', '吉林');
INSERT INTO `sys_statistics` VALUES ('f764f701af084594985c2283c6d41760', '111.26.31.28', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 18:30:31', '吉林');
INSERT INTO `sys_statistics` VALUES ('f7a1a6645f69428ba808a8645ef85842', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 17:00:43', 'XX');
INSERT INTO `sys_statistics` VALUES ('f7b0c6ef81f245308e927edc63538c0a', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:18:55', 'XX');
INSERT INTO `sys_statistics` VALUES ('f7b5b6e3b1424dbe8c29ca3694e80fad', '124.234.225.45', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 22:03:03', '吉林');
INSERT INTO `sys_statistics` VALUES ('f7ef4a277ad845d78627f8183c553ac0', '36.104.51.72', '中国  吉林 长春', '电信', '2019-01-11', '2019-01-11 19:26:47', '吉林');
INSERT INTO `sys_statistics` VALUES ('f7f1ae1f37c141ae80f6f353838ee532', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 00:07:14', 'XX');
INSERT INTO `sys_statistics` VALUES ('f7f9d2dfe54145f2b3395a974b200071', '123.172.48.28', '中国  吉林 长春', '电信', '2019-01-08', '2019-01-08 17:05:53', '吉林');
INSERT INTO `sys_statistics` VALUES ('f80c49fe61764c698f44d5d25cff56b8', '223.104.16.80', '中国  吉林 长春', '移动', '2019-03-10', '2019-03-10 21:06:51', '吉林');
INSERT INTO `sys_statistics` VALUES ('f86186a0630548f1975ad3eb150d6ab2', '36.48.113.165', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 16:24:26', '吉林');
INSERT INTO `sys_statistics` VALUES ('f8825b4461864ed2b546786094857de3', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:33:25', '吉林');
INSERT INTO `sys_statistics` VALUES ('f8acd4f7a1b749b38dc47bd0a23de00b', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 15:37:55', 'XX');
INSERT INTO `sys_statistics` VALUES ('f91332d513364893a2eea1729e971508', '36.104.54.72', '中国  吉林 长春', '电信', '2019-01-08', '2019-01-08 17:22:51', '吉林');
INSERT INTO `sys_statistics` VALUES ('f91718a239244936bc06c074e87c5118', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:37:17', 'XX');
INSERT INTO `sys_statistics` VALUES ('f917a3e49cb946daa39d2f3b04122e37', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:56:38', 'XX');
INSERT INTO `sys_statistics` VALUES ('f922dd08a8a04a73acd62c9f88d69203', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 17:48:45', '吉林');
INSERT INTO `sys_statistics` VALUES ('f9362a8bc38d401f80d1a0b51b710a7c', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:33:14', 'XX');
INSERT INTO `sys_statistics` VALUES ('f94f885369b8435e9f30df5677ef8ee7', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-07', '2019-03-07 15:56:59', '吉林');
INSERT INTO `sys_statistics` VALUES ('f97e2894df704cc7a64f4c0ecbc935e1', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 16:37:30', '吉林');
INSERT INTO `sys_statistics` VALUES ('f9ba0614ef104a41892b2063da593bae', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 17:02:05', 'XX');
INSERT INTO `sys_statistics` VALUES ('f9c1ca54fab04c829b7d77af0a45d280', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 13:54:32', 'XX');
INSERT INTO `sys_statistics` VALUES ('f9c963387d264bb796ab4d0958da3083', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-04', '2019-01-04 16:11:14', 'XX');
INSERT INTO `sys_statistics` VALUES ('f9cc5df629c8479f8261a37abf0905d4', '111.26.36.117', '中国  吉林 吉林', '移动', '2019-02-16', '2019-02-16 17:48:03', '吉林');
INSERT INTO `sys_statistics` VALUES ('fa060aba4ab2480d90488212b0efb4ac', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 10:42:45', 'XX');
INSERT INTO `sys_statistics` VALUES ('fa1835db98fe424982458db2d4eaf5d5', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 11:55:59', 'XX');
INSERT INTO `sys_statistics` VALUES ('fa54c72361c042b2a7c09dc5dbf9f860', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-24', '2019-02-24 19:18:49', '吉林');
INSERT INTO `sys_statistics` VALUES ('fa6c794f18aa4434a931d9868f83835f', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 00:02:34', 'XX');
INSERT INTO `sys_statistics` VALUES ('fa9c6738d1c94332a8640e560460c4b4', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:58:28', 'XX');
INSERT INTO `sys_statistics` VALUES ('faa4ea5016314905a33577469d9cb421', '111.26.36.15', '中国  吉林 吉林', '移动', '2019-02-15', '2019-02-15 22:26:21', '吉林');
INSERT INTO `sys_statistics` VALUES ('fac7be35b85446449627bb09c733531b', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-23', '2019-02-23 19:54:05', '吉林');
INSERT INTO `sys_statistics` VALUES ('fad5c45ea19d4e9998952c30ee18ccb1', '123.172.48.28', '中国  吉林 长春', '电信', '2019-01-08', '2019-01-08 17:20:18', '吉林');
INSERT INTO `sys_statistics` VALUES ('fb129f66bb5844c28a01a3425cf2b534', '124.234.225.45', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 22:30:19', '吉林');
INSERT INTO `sys_statistics` VALUES ('fb30e82b719a42c78fd536b56a881517', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 22:55:58', 'XX');
INSERT INTO `sys_statistics` VALUES ('fb3409e489fe419dabe2adbde64269cc', '36.104.51.39', '中国  吉林 长春', '电信', '2019-01-11', '2019-01-11 17:59:23', '吉林');
INSERT INTO `sys_statistics` VALUES ('fb6b316710804210a1191aba95fc6791', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 12:01:23', 'XX');
INSERT INTO `sys_statistics` VALUES ('fb78b339734c47f8b68b5b73d4ef9bf6', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 16:45:05', 'XX');
INSERT INTO `sys_statistics` VALUES ('fb8a3f0ce7534006b0b36fc629f4446b', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-06', '2019-03-06 18:57:30', '吉林');
INSERT INTO `sys_statistics` VALUES ('fb8a8ef933c24700aa77a5d2df6ca592', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 19:28:56', '吉林');
INSERT INTO `sys_statistics` VALUES ('fbb15bb5e32d45829de6dd68f3c37e38', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 16:46:04', 'XX');
INSERT INTO `sys_statistics` VALUES ('fbc157da3f174a4288dc5483a059018b', '36.104.27.246', '中国  吉林 长春', '电信', '2019-02-17', '2019-02-17 10:20:03', '吉林');
INSERT INTO `sys_statistics` VALUES ('fbc6daf45e3a46fdbd37e860ec6bb04d', '123.172.48.28', '中国  吉林 长春', '电信', '2019-01-08', '2019-01-08 17:21:23', '吉林');
INSERT INTO `sys_statistics` VALUES ('fbc701f8f6164254b660266779f2d5de', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:36:29', 'XX');
INSERT INTO `sys_statistics` VALUES ('fbf72a1faf1c4bfc89adae736d9f3f1e', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 00:20:26', 'XX');
INSERT INTO `sys_statistics` VALUES ('fc1ac2948e5d42c5a52ccb9fa16a763e', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-08', '2019-01-08 14:53:08', 'XX');
INSERT INTO `sys_statistics` VALUES ('fc2ac39df0cf4d8992446d5864524356', '111.26.36.117', '中国  吉林 吉林', '移动', '2019-02-16', '2019-02-16 20:01:28', '吉林');
INSERT INTO `sys_statistics` VALUES ('fc3d4e66b5d049549d4c4aa320ee4135', '36.104.16.156', '中国  吉林 长春', '电信', '2019-01-09', '2019-01-09 14:20:35', '吉林');
INSERT INTO `sys_statistics` VALUES ('fc3ec5270af542019fc0698a164e0d51', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:17:33', 'XX');
INSERT INTO `sys_statistics` VALUES ('fc474b4851e44a0aa8f89b3d101f8867', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 16:32:10', 'XX');
INSERT INTO `sys_statistics` VALUES ('fd1ae157207d456c954e8b64a7f12095', '124.234.225.1', '中国  吉林 长春', '电信', '2019-03-05', '2019-03-05 19:20:14', '吉林');
INSERT INTO `sys_statistics` VALUES ('fd6c48d371864927a506ca94c70a0570', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 15:13:24', '吉林');
INSERT INTO `sys_statistics` VALUES ('fdeb28c8e2794a11939d67671e1d089c', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:49:58', 'XX');
INSERT INTO `sys_statistics` VALUES ('fe0785d7e9e04c7180d3d14538309d24', '36.104.51.84', '中国  吉林 长春', '电信', '2019-01-24', '2019-01-24 19:36:37', '吉林');
INSERT INTO `sys_statistics` VALUES ('fe27ecf55d3e48798aceaf52311f39e3', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 16:42:29', '吉林');
INSERT INTO `sys_statistics` VALUES ('fe2af12633d8437d8c5d60256ed724c8', '117.136.190.12', '中国  北京 北京', '移动', '2019-02-24', '2019-02-24 19:58:52', '北京');
INSERT INTO `sys_statistics` VALUES ('fe5dc503cb8049df9dcc78dfb2af2277', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:36:18', 'XX');
INSERT INTO `sys_statistics` VALUES ('fe697ae4d43d4e1fb8fceec1f5fc1c69', '36.104.26.201', '中国  吉林 长春', '电信', '2019-03-04', '2019-03-04 13:06:51', '吉林');
INSERT INTO `sys_statistics` VALUES ('fe829cb3324d4dd6aeb91789ed45ff8f', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:28:47', 'XX');
INSERT INTO `sys_statistics` VALUES ('feafa6bfd42d4142ab8b6e9aefa3599a', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 15:02:09', 'XX');
INSERT INTO `sys_statistics` VALUES ('fed24823dc85470c8f49453c70dc73c5', '119.48.217.194', '中国  吉林 长春', '联通', '2019-01-09', '2019-01-09 14:56:14', '吉林');
INSERT INTO `sys_statistics` VALUES ('fefd8961c5534ff68ed4aa96bc0c61e7', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 23:26:05', 'XX');
INSERT INTO `sys_statistics` VALUES ('ff538ef8f98941bf83adc86953e6d824', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:28:03', 'XX');
INSERT INTO `sys_statistics` VALUES ('ff7f5efdf10d4bed9926893e506b3520', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-01-07', '2019-01-07 14:38:56', 'XX');
INSERT INTO `sys_statistics` VALUES ('fff03a38cf2b438699e9ad23831e267c', '111.26.36.109', '中国  吉林 吉林', '移动', '2019-02-26', '2019-02-26 17:14:49', '吉林');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `USER_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `ROLE_ID` varchar(100) DEFAULT NULL,
  `LAST_LOGIN` varchar(255) DEFAULT NULL,
  `IP` varchar(100) DEFAULT NULL,
  `STATUS` varchar(32) DEFAULT NULL,
  `BZ` varchar(255) DEFAULT NULL,
  `SKIN` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(32) DEFAULT NULL,
  `NUMBER` varchar(100) DEFAULT NULL,
  `PHONE` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('0017f7c9a0664a08a7093767153a3737', '987654321', '46569447a9bbaa77ba86602c483cc9979554cc97', '5820', '', '3', '2019-03-20 18:46:38', '124.234.225.105', '0', '注册用户', 'no-skin', '4848884848@qq.com', '', '');
INSERT INTO `sys_user` VALUES ('03247bd2bf1d4697a8492e666d69aa67', 'test123', 'f3272f0ab985b34ca4e0c66e2f220b2df8bcbac6', 'aaa', '', '3', '2019-03-28 20:00:09', '218.247.142.216', '0', '注册用户', 'no-skin', '111@111.com', '', '');
INSERT INTO `sys_user` VALUES ('0c3afce5b7ac4528926301884d254260', '654800', '66e9d93c945632a20b582596abb38c8ee047bbe8', '张世杰', '', '3', '2019-01-07 14:49:17', '0:0:0:0:0:0:0:1', '0', '注册用户', 'no-skin', '1939580880@qq.com', '', '');
INSERT INTO `sys_user` VALUES ('1', 'admin', '9463699b48a062f8e45b1999a40e4533810ac1dd', '白玲', '1133671055321055258374707980945218933803269864762743594642571294', '1', '2019-03-20 18:13:21', '124.234.225.105', '0', 'admin', 'no-skin', '1939580880@qq.com', '001', '18186845539');
INSERT INTO `sys_user` VALUES ('31c8d55890b343acbf47e00e86499b02', '18186845539', '8eeadbe510002a19181627ae5d0c956ecc76424b', '白玲', '', '3', '2019-03-15 14:21:01', '219.149.214.105', '0', '注册用户', 'no-skin', '1939580880@qq.com', '007', '18186845539');
INSERT INTO `sys_user` VALUES ('365c3bd63eb84c54b6c48e51874fc99c', '45455', '01f589121466fd0ec45b4ea83a03b7c063dad23a', '80', '', '3', '2019-03-07 21:59:09', '124.234.225.1', '0', '注册用户', 'no-skin', '5887744@qq.com', '', '');
INSERT INTO `sys_user` VALUES ('37670ae3e172489488888b6d43c81097', '123456', '71dd07494c5ee54992a27746d547e25dee01bd97', '白玲玲', '', '3', '2019-01-08 17:28:12', '36.104.54.72', '0', '注册用户', 'no-skin', '1114919286@qq.com', '', '');
INSERT INTO `sys_user` VALUES ('3d1d76fa7feb4ef9962d09d058480ffd', '孙宁宁', '442ea8149309519faa5400a5cfd7cbb440d20590', '孙宁', '', '3', '2019-03-20 18:46:46', '124.234.225.12', '0', '注册用户', 'no-skin', '123@qq.com', '', '');
INSERT INTO `sys_user` VALUES ('40208670870b40b6a5107c76f18f5cdb', 'OOO', '6738ca4bbad2596b2c6373e0ee6a7d5e1a4c2e72', 'OOO', '', '3', '', '', '0', '注册用户', 'no-skin', 'OOO@QQ.COM', '', '');
INSERT INTO `sys_user` VALUES ('533a2ffc82594e509a9741d6102cd2d4', '77777', '5aaf28c6f7b1abc1a4ab473b3d6162e080b5409a', '白玲', '', '3', '2019-02-16 20:01:54', '111.26.36.117', '0', '注册用户', 'no-skin', '1968484@qq.com', '', '');
INSERT INTO `sys_user` VALUES ('5ef40279423342618ad3d7a87e755002', '111111', '37a4ed502e3e6968bb094aebf7f1cf7034068d62', '111111', '', '3', '2019-03-05 13:40:37', '36.49.187.12', '0', '注册用户', 'no-skin', '1548484848@qq.com', '', '');
INSERT INTO `sys_user` VALUES ('61102681c00a4e2c9a7942347f7eae4c', 'sunning', 'a6f915034ec753a1f065694c3addad17913146a3', '孙宁', '', '3', '2019-03-07 21:52:50', '124.234.225.1', '0', '注册用户', 'no-skin', '48448454@qq.com', '', '');
INSERT INTO `sys_user` VALUES ('83994e9814db4f5c9fe30a22e5fc9de7', '654321', 'f3f5dacbe265bb6b8c21cfd064cc2dbb4ca3b774', '654321', '', '3', '2019-03-08 09:45:50', '124.234.225.61', '0', '注册用户', 'no-skin', '654321@qq.com', '', '');
INSERT INTO `sys_user` VALUES ('8fc22b200fa44fa6a0d9a4ef968504d1', '123456789', '3175de158db24c987b7ced3bf65d46c1fcfb3c5f', '123456789', '', '3', '2019-03-08 11:40:22', '', '0', '注册用户', 'no-skin', '123456789@qq.com', '', '');
INSERT INTO `sys_user` VALUES ('a05f23ffa27e417aa9d403fdec5d5410', '笑嘻嘻', '0e5ea0b20a28b4814c4008e254b763d75754cbd9', '安然', '', '3', '', '', '0', '注册用户', 'no-skin', '3132950863@qq.com', '', '');
INSERT INTO `sys_user` VALUES ('b444ff7d461c4344a477deaa3dfa8abd', 'sunningning', 'a0acd2c3080c1a9af48bb0814c0d8518785d1cdc', '孙宁', '', '3', '2019-03-20 21:59:41', '124.234.225.12', '0', '注册用户', 'no-skin', '123@qq.com', '', '');
INSERT INTO `sys_user` VALUES ('b5420c7f9d434455aa8148a57c64a94f', '笑嘻嘻123', '53327f347787e92c867765b4142354032535fb6b', '安然', '', '3', '', '', '0', '注册用户', 'no-skin', '3132950863@qq.com', '', '');
INSERT INTO `sys_user` VALUES ('bbd56d90da3741009136eae50c0c8992', '笑嘻嘻123456789', 'fe91837b3941f4cf14ad7e239fe69cbf54f41d99', '安然', '', '3', '2019-03-05 12:28:44', '118.112.107.141', '0', '注册用户', 'no-skin', '3132950863@qq.com', '', '');
INSERT INTO `sys_user` VALUES ('bcb76c8a48c84300a736411c482f2821', 'woaini', '3437534d8a68f03dc2e725a1b25dca16b84e19b5', 'woaini', '', '3', '', '', '0', '注册用户', 'no-skin', 'woaini@qq.com', '', '');
INSERT INTO `sys_user` VALUES ('c4b3c7f0dab04c35972f7f6b0f3f7e28', 'earwaywb', 'bf867d6a2ab4393f645ad345ecbeed360be94ef8', '王斌', '', '3', '2019-03-05 10:32:11', '118.112.106.67', '0', '注册用户', 'no-skin', 'earway_wangbin@163.com', '', '');
INSERT INTO `sys_user` VALUES ('d38bff1a612043b386446f05e7674739', '1234567', 'f0e9a86b6e757ddca231297669e5711e32ead6c4', '123456', '', '3', '2019-03-07 22:30:20', '124.234.225.1', '0', '注册用户', 'no-skin', '123456@qq.com', '', '');
INSERT INTO `sys_user` VALUES ('d5675ec218904c119089f3dc9609ab44', '拉拉', '377e311d84d9cfa4354b1f3208076e2f2350d454', '拉拉', '', '3', '2019-03-08 09:51:42', '124.234.225.45', '0', '注册用户', 'no-skin', '123@qq.com', '', '');
INSERT INTO `sys_user` VALUES ('d6e87100df4a4a95ae3e14ccfc9bfb24', '杰瑞', 'a6d91c8f81773fe1aa0437d03a39294da37b0fac', '李凤娇', '', '3', '2019-03-28 07:43:57', '124.234.225.79', '0', '注册用户', 'no-skin', '2279203420@qq.com', '', '');
INSERT INTO `sys_user` VALUES ('d77b94894bdc40a5ae46448bb8a4f989', 'wwww', 'efc1875868806cf8216f69880d8ec4559a5243f1', 'wwww', '', '3', '', '', '0', '注册用户', 'no-skin', 'www@qq.com', '', '');
INSERT INTO `sys_user` VALUES ('d9dfe6b886a4480aae6581d4c667867c', '大哥', 'c7f7dc145318b666ba879006bb74f6b19ad04140', '闫琦', '', '3', '2019-03-10 21:22:05', '223.104.16.80', '0', '注册用户', 'no-skin', '2726284423@qq.com', '', '');
INSERT INTO `sys_user` VALUES ('da6f19a48f3741a89766d9e5a3d384cb', '666666', '21c43fbc3342c17394417a3f43b3ee7d44c0cedd', '666666', '', '3', '2019-03-07 22:02:15', '124.234.225.1', '0', '注册用户', 'no-skin', '66666666@qq.com', '', '');
INSERT INTO `sys_user` VALUES ('e50ec9f8c3324b188dff99219328819c', 'wotaoyanni', 'db73b7c8323c0337f6e700874f481a4bd71adefd', 'wotaoni', '', '3', '', '', '0', '注册用户', 'no-skin', 'jfj@qq.com', '', '');
INSERT INTO `sys_user` VALUES ('eded77bdf35347249b2bacfa181c869d', 'w1', 'c46e5c325e9edfbf213d5d82018ba3c522eabbea', '1212', '', '68f8e4a39efe47c7bb869e9d15ab925d', '', '', '0', '111', 'no-skin', '313596790@qq.com', '112', '13566625555');

-- ----------------------------
-- Table structure for `sys_userphoto`
-- ----------------------------
DROP TABLE IF EXISTS `sys_userphoto`;
CREATE TABLE `sys_userphoto` (
  `USERPHOTO_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(30) DEFAULT NULL COMMENT '用户名',
  `PHOTO0` varchar(255) DEFAULT NULL COMMENT '原图',
  `PHOTO1` varchar(100) DEFAULT NULL COMMENT '头像1',
  `PHOTO2` varchar(100) DEFAULT NULL COMMENT '头像2',
  `PHOTO3` varchar(100) DEFAULT NULL COMMENT '头像3',
  PRIMARY KEY (`USERPHOTO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_userphoto
-- ----------------------------
INSERT INTO `sys_userphoto` VALUES ('62e358d275a0434ca0b6d41c6c601c44', '18186845539', '', 'uploadFiles/uploadUserPhoto/jsp_avatar1_201901021638497znk7o4db.jpg', 'uploadFiles/uploadUserPhoto/jsp_avatar2_201901021638497znk7o4db.jpg', 'uploadFiles/uploadUserPhoto/jsp_avatar3_201901021638497znk7o4db.jpg');

-- ----------------------------
-- Table structure for `tb_pictures`
-- ----------------------------
DROP TABLE IF EXISTS `tb_pictures`;
CREATE TABLE `tb_pictures` (
  `PICTURES_ID` varchar(100) NOT NULL,
  `TITLE` varchar(255) DEFAULT NULL COMMENT '标题',
  `NAME` varchar(255) DEFAULT NULL COMMENT '文件名',
  `PATH` varchar(255) DEFAULT NULL COMMENT '路径',
  `CREATETIME` varchar(100) DEFAULT NULL COMMENT '创建时间',
  `MASTER_ID` varchar(255) DEFAULT NULL COMMENT '属于',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`PICTURES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_pictures
-- ----------------------------
INSERT INTO `tb_pictures` VALUES ('0eef0d0494ad4a84b95f6a22689605e8', '图片', '6ddb997d9d6946b89e2eec1737f97858.jpg', '20190223/6ddb997d9d6946b89e2eec1737f97858.jpg', '2019-02-23 19:56:59', '1', '图片管理处上传');
INSERT INTO `tb_pictures` VALUES ('25cc464856b945a79a5a8ad6f8d1dd81', '图片', '206a305d88ad466a9e24ce6b973f5c41.jpg', '20190223/206a305d88ad466a9e24ce6b973f5c41.jpg', '2019-02-23 19:35:47', '1', '图片管理处上传');
INSERT INTO `tb_pictures` VALUES ('387efe53f98a431c9c3f3ba14f9cf3c5', '图片', 'a4a13dffd34146668718ec874beca382.png', '20190223/a4a13dffd34146668718ec874beca382.png', '2019-02-23 19:57:03', '1', '图片管理处上传');
INSERT INTO `tb_pictures` VALUES ('3d7f28bdef4d4172a8fadf7813c77d3a', '图片', '04f4ea4210cd4cb884ed7343759d6126.jpg', '20190223/04f4ea4210cd4cb884ed7343759d6126.jpg', '2019-02-23 19:57:00', '1', '图片管理处上传');
INSERT INTO `tb_pictures` VALUES ('523689cfaa6a4f1d824617d2371b3e81', '图片', 'c8b46975996344599d132ca0b66bcc3e.jpg', '20190223/c8b46975996344599d132ca0b66bcc3e.jpg', '2019-02-23 19:32:16', '1', '图片管理处上传');
INSERT INTO `tb_pictures` VALUES ('db1cd9201aa1416dbfb0b5a3e1afbbaa', '图片', '6ea6cd8c3afc4b2081ec01dbb41d8997.png', '20190223/6ea6cd8c3afc4b2081ec01dbb41d8997.png', '2019-02-23 19:32:55', '1', '图片管理处上传');
INSERT INTO `tb_pictures` VALUES ('eaa781b140574b8f9fff53a08b4d0be3', '图片', 'faa3747892354a71bca7b21127593364.png', '20190223/faa3747892354a71bca7b21127593364.png', '2019-02-23 19:32:46', '1', '图片管理处上传');
INSERT INTO `tb_pictures` VALUES ('ed199728c0e34bd4b47974c582b4f950', '图片', '1884ba981bfc40728e4a267c49c5b1d6.png', '20190304/1884ba981bfc40728e4a267c49c5b1d6.png', '2019-03-04 13:09:27', '1', '图片管理处上传');
INSERT INTO `tb_pictures` VALUES ('fa6e9363e8c541088d78f790980e97fd', '图片', '9b0fe7e10d9943f3ac4e89a724746d8a.jpg', '20190223/9b0fe7e10d9943f3ac4e89a724746d8a.jpg', '2019-02-23 19:56:54', '1', '图片管理处上传');

-- ----------------------------
-- Table structure for `web_aboutus`
-- ----------------------------
DROP TABLE IF EXISTS `web_aboutus`;
CREATE TABLE `web_aboutus` (
  `ABOUTUS_ID` varchar(100) NOT NULL,
  `CONTENT` text COMMENT '内容',
  PRIMARY KEY (`ABOUTUS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_aboutus
-- ----------------------------
INSERT INTO `web_aboutus` VALUES ('1', '<p style=\"text-align:center\"><span style=\"line-height: 26.6667px;\"><video class=\"edui-upload-video video-js vjs-default-skin\" controls=\"\" preload=\"none\" width=\"420\" height=\"280\" src=\"/FH-WEB/plugins/ueditor/jsp/upload/20190305/50911551763987957.mp4\" data-setup=\"{}\"><source src=\"/FH-WEB/plugins/ueditor/jsp/upload/20190305/50911551763987957.mp4\" type=\"video/mp4\"/></video></span></p><p style=\"padding: 0px 0px 1em; margin-top: 0px; margin-bottom: 0px; line-height: 27px; font-size: 12px; color: rgb(90, 90, 90); font-family: 宋体; white-space: normal; background-color: rgb(255, 255, 255); text-align: left; text-indent: 0em;\">&nbsp; &nbsp;<span style=\"font-size: 20px;\">本产品将“移动智能终端、PC端和VR技术”结合，从而开发出一款听障儿童康复训练的软件，该产品应用到了<span style=\"color: rgb(90, 90, 90); font-family: 宋体; font-size: 20px; background-color: rgb(255, 255, 255);\">呼吸练习系统、<span style=\"color: rgb(90, 90, 90); font-family: 宋体; font-size: 20px; background-color: rgb(255, 255, 255);\">发音练习系统、</span></span>唇语学习系统。本产品在<span style=\"color: rgb(90, 90, 90); font-family: 宋体; font-size: 20px; background-color: rgb(255, 255, 255);\">呼吸练习系统应用到了动画生成技术，使用动画的形式，设置呼气和吸气的时间，帮助听障儿童更好的锻炼呼吸。</span>唇语学习系统上应用到了VR技术，3D建模技术，人脸模型生成技术，视频处理技术，服务器连接，移动端到PC端，产品提供了唇语学习视频，运用VR技术虚拟一个三维发音人头像，呈现出汉语中音节发音的唇部动作，舌部运动，以及对应的口型，能够让听障儿童更生动的学习唇语。 发音训练系统应用到了语音识别技术，<span style=\"color: rgb(90, 90, 90); font-family: 宋体; font-size: 20px; background-color: rgb(255, 255, 255);\">和标准语音数据库，将发出的音与标准语义库进行比较，从而判断出发音是否标准，并在屏幕上显示识别出结果与标准语言的相似度。</span>听障儿童可以在屏幕上观察发音时舌部的动作，尤其是对舌和下颚之间的配合发音较为复杂，和较为隐蔽的发音部位都可以细致的呈现出来，教会听障儿童在发音时舌与下颚的配合，达到准确发音的目的，更好的帮助听障儿童进行言语康复训练。</span></p><p><br/></p><p><br/></p>');

-- ----------------------------
-- Table structure for `web_contactus`
-- ----------------------------
DROP TABLE IF EXISTS `web_contactus`;
CREATE TABLE `web_contactus` (
  `CONTACTUS_ID` varchar(100) NOT NULL,
  `CONTENT` text COMMENT '内容',
  `DIMENSION` varchar(200) DEFAULT NULL,
  `LONGITUDE` varchar(200) DEFAULT NULL,
  `PZOOM` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`CONTACTUS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_contactus
-- ----------------------------
INSERT INTO `web_contactus` VALUES ('1', '<p>全国免费资讯热线：18186845539</p><p>邮箱：1939580880@qq.com</p><p>网址：http://www.dreamtospeak.com</p><p>地址 ：吉林省长春市朝阳区</p>', '43.834649', '125.317958', '15');

-- ----------------------------
-- Table structure for `web_cooperation`
-- ----------------------------
DROP TABLE IF EXISTS `web_cooperation`;
CREATE TABLE `web_cooperation` (
  `COOPERATION_ID` varchar(100) NOT NULL,
  `CONTENT` text COMMENT '内容',
  PRIMARY KEY (`COOPERATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_cooperation
-- ----------------------------
INSERT INTO `web_cooperation` VALUES ('1', '<h1 style=\"margin-top:8px;margin-bottom:8px;margin-left: 0\"><span style=\";font-family:宋体\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></h1><h1 style=\"margin-top:8px;margin-bottom:8px;margin-left: 0\"><span style=\";font-family:宋体\"><br/></span></h1><h1 style=\"margin-top: 8px; margin-bottom: 8px; margin-left: 0px; text-align: center;\"><span style=\";font-family:宋体\">适用人群</span></h1><p><br/></p><p style=\"white-space: normal;\">&nbsp; &nbsp; <span style=\"font-family: 宋体, SimSun; font-size: 24px;\">&nbsp; 0—3岁是听障儿童康复的黄金期。这个时期孩子的大脑发育最快，也是学习语言最关键时期，尽早让孩子配戴合适的助听设备接受声音和进行该软件的训练，尽早让孩子接受康复训练，听障儿童发声的几率非常高。如果超过6岁才进行康复训练，康复效果则会大打折扣。由于听障儿童遭受先天性与后天性听力障碍的影响，在其生长和发育的几个关键时期，无法或较少地接受自然界的声音与语言声的刺激，因而失去有效的听觉功能，致使听障儿童从聋到哑。”由于90%的聋儿都有残余听力，只要有残余听力，如尽早的使用该软件再戴上合适的助听器或人工耳蜗，听力能补偿到最适范围内，家长和语言康复老师就能从察觉、分辨、辨识、理解这四个阶段进行康复训练，从而让听障儿童从无声的世界到会听、会说、会唱、会沟通，最后能回归主流社会。</span></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>');

-- ----------------------------
-- Table structure for `web_corporatephilosophy`
-- ----------------------------
DROP TABLE IF EXISTS `web_corporatephilosophy`;
CREATE TABLE `web_corporatephilosophy` (
  `CORPORATEPHILOSOPHY_ID` varchar(100) NOT NULL,
  `TITLE` varchar(50) DEFAULT NULL COMMENT '标题',
  `CONTENT` varchar(50) DEFAULT NULL COMMENT '内容',
  `TOURL` varchar(255) DEFAULT NULL COMMENT '内容链接',
  PRIMARY KEY (`CORPORATEPHILOSOPHY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_corporatephilosophy
-- ----------------------------
INSERT INTO `web_corporatephilosophy` VALUES ('1', '呼吸练习系统', '缩唇呼吸，腹式呼吸，强化呼吸肌的训练。', 'https://www.dreamtospeak.com:5480/FH-WEB/jsp/huxilianxixitongjiemian.jsp');
INSERT INTO `web_corporatephilosophy` VALUES ('2', '发音练习系统', '进行发音训练，逐步获得言语功能。', 'https://www.dreamtospeak.com:5480/FH-WEB//jsp/fayinlianxichushijiemian.jsp');
INSERT INTO `web_corporatephilosophy` VALUES ('3', '唇语学习系统', '学习唇语，读懂正常人表达的想法。', 'https://www.dreamtospeak.com:5480/FH-WEB//jsp/chunyuxueximoshixuanzejiemian.jsp');
INSERT INTO `web_corporatephilosophy` VALUES ('4', '我的', '完善个人信息，设置自定义风格。', 'http://www.dreamtospeak.com:8080/FH-WEB/user/goEditMyU.do');

-- ----------------------------
-- Table structure for `web_image`
-- ----------------------------
DROP TABLE IF EXISTS `web_image`;
CREATE TABLE `web_image` (
  `IMAGE_ID` varchar(100) NOT NULL,
  `TITLE` varchar(100) DEFAULT NULL COMMENT '标题',
  `IMGURL` varchar(255) DEFAULT NULL COMMENT '路径',
  `TOURL` varchar(255) DEFAULT NULL COMMENT '链接',
  `TYPE` int(2) NOT NULL COMMENT '类型',
  `FORDER` varchar(11) DEFAULT NULL COMMENT '排序',
  `BZ` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`IMAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_image
-- ----------------------------
INSERT INTO `web_image` VALUES ('0d252569b3174a3390b293b31e82e3b5', '技术团队', 'http://wx1.sinaimg.cn/large/005B44p8ly1fw2jbb3ok9j305k05ka9y.jpg', '', '4', '2', '2');
INSERT INTO `web_image` VALUES ('1193528722af455581e783d268a14dab', '技术团队', 'http://wx4.sinaimg.cn/large/005B44p8ly1fw2jbbogtcj305k05k74h.jpg', '', '4', '3', '3');
INSERT INTO `web_image` VALUES ('339d0beaf2124c5fbba37ed48ca2cab1', '成果二', 'http://www.dreamtospeak.com:8080/FH-WEB/uploadFiles/uploadImgs/20190223/04f4ea4210cd4cb884ed7343759d6126.jpg', '', '2', '2', '成果二');
INSERT INTO `web_image` VALUES ('35972aeb6bb44b85abc18aed2728d431', '成果三', 'http://www.dreamtospeak.com:8080/FH-WEB/uploadFiles/uploadImgs/20190223/c8b46975996344599d132ca0b66bcc3e.jpg', '', '2', '3', '成果三');
INSERT INTO `web_image` VALUES ('52faef5a86fc494a93555413ad4cd4db', '1', 'https://img03.sogoucdn.com/app/a/07/e82b73b5b94c48f9247188a10fbe16f5', '', '1', '2', '');
INSERT INTO `web_image` VALUES ('774b990874fc46959f0b6df283f2eb8b', '成果四', 'http://www.dreamtospeak.com:8080/FH-WEB/uploadFiles/uploadImgs/20190223/206a305d88ad466a9e24ce6b973f5c41.jpg', '', '2', '4', '4');
INSERT INTO `web_image` VALUES ('7bc6cea7f41f4ff3bd666f18028e4b08', '成果一', 'http://www.dreamtospeak.com:8080/FH-WEB/uploadFiles/uploadImgs/20190223/6ea6cd8c3afc4b2081ec01dbb41d8997.png', '', '2', '1', '成果一');
INSERT INTO `web_image` VALUES ('7cdab770e4874b4490e3013bc54f0cf4', '发音练习系统', 'https://img03.sogoucdn.com/app/a/100520024/1b709c1451c04d58336731d9c2f53826', 'https://www.dreamtospeak.com:5480/FH-WEB/jsp/fayinlianxichushijiemian.jsp', '5', '2', '');
INSERT INTO `web_image` VALUES ('a9b9e43575e54e0993977ae629b2fbf5', '呼吸训练系统', 'https://img02.sogoucdn.com/app/a/100520024/a61261bf2af5745c7c1a252ca508ee80', 'https://www.dreamtospeak.com:5480/FH-WEB/jsp/huxilianxixitongjiemian.jsp', '5', '1', '');
INSERT INTO `web_image` VALUES ('d5fdedf1b9524adc8f47eaa4eecc041d', '唇语学习系统', 'http://wx4.sinaimg.cn/large/005spsLRly1frp5pivstrj30jg0czaix.jpg', 'https://www.dreamtospeak.com:5480/FH-WEB/jsp/chunyuxueximoshixuanzejiemian.jsp', '5', '3', '');
INSERT INTO `web_image` VALUES ('e1e1275dc4d948d8ac6f859740d93af0', '技术团队', 'http://wx3.sinaimg.cn/large/005B44p8ly1fw2jbapjc9j305k05k3yg.jpg', '', '4', '1', '1');

-- ----------------------------
-- Table structure for `web_information`
-- ----------------------------
DROP TABLE IF EXISTS `web_information`;
CREATE TABLE `web_information` (
  `INFORMATION_ID` varchar(100) NOT NULL,
  `NAME` varchar(30) DEFAULT NULL COMMENT '网站名称',
  `TITLE` varchar(100) DEFAULT NULL COMMENT '标题',
  `KEYWORDS` varchar(100) DEFAULT NULL COMMENT '关键词',
  `DESCRIPTION` varchar(200) DEFAULT NULL COMMENT '描述',
  `LOGO` varchar(200) DEFAULT NULL COMMENT 'logo',
  `TEL` varchar(20) DEFAULT NULL COMMENT '电话',
  `EMAIL` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `QQ` varchar(20) DEFAULT NULL COMMENT 'QQ',
  `FAX` varchar(20) DEFAULT NULL COMMENT '传真',
  `WEBURL` varchar(50) DEFAULT NULL COMMENT '官网',
  `ADDRESS` varchar(100) DEFAULT NULL COMMENT '地址',
  `COPYRIGHT` varchar(20) DEFAULT NULL COMMENT '版权',
  `TECHNOLOGY` varchar(20) DEFAULT NULL COMMENT '技术支持',
  `BEIAN` varchar(15) DEFAULT NULL COMMENT '备案',
  `ABOUTUS1` varchar(255) DEFAULT NULL,
  `ABOUTUS2` varchar(255) DEFAULT NULL,
  `NEW1` varchar(255) DEFAULT NULL,
  `NEW2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`INFORMATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_information
-- ----------------------------
INSERT INTO `web_information` VALUES ('1', '听障儿童言语康复训练软件', '听障儿童言语康复训练软件', '关爱无声孩子', '关爱无声孩子', 'http://www.dreamtospeak.com:8080/FH-WEB/uploadFiles/uploadImgs/20190304/1884ba981bfc40728e4a267c49c5b1d6.png', '18186845539', '1939580880@qq.com', '1939580880', '1114919286', 'http://www.dreamtospeak.com', '吉林长春', '©2019   由xxx本人所有', '由xx xxx等人支持。', '京-00000001', '目前国内对于听障儿童言语康复训练采用的大多是通过药物，手术，佩戴助听器和植入人工耳蜗等方式提高听力，从而促进听障儿童言语康复。解决途径较为单一 ，解决的效果并不理想。', '本项目将“移动智能终端、PC端和VR技术”结合，从而开发出一款听障儿童康复训练的软件，该产品应用到了唇语学习系统、发音训练系统、言语呼吸练习系统，语音识别系统，从多方面解决听障儿童言语问题，创新了听障儿童言语问题解决方法，提高了听障儿童言语康复的效果。', ' 人民网：听障考生可以佩戴助听器或人工耳蜗参加全国高考', ' 教育部办公厅 :中国残联办公厅关于做好残疾儿童少年义务教育招生入学的通知');

-- ----------------------------
-- Table structure for `web_leavemsg`
-- ----------------------------
DROP TABLE IF EXISTS `web_leavemsg`;
CREATE TABLE `web_leavemsg` (
  `LEAVEMSG_ID` varchar(100) NOT NULL,
  `NAME` varchar(10) DEFAULT NULL COMMENT '姓名',
  `EMAIL` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `ADDRESS` varchar(50) DEFAULT NULL COMMENT '地址',
  `LCONTENT` varchar(2000) DEFAULT NULL COMMENT '内容',
  `CTIME` varchar(32) DEFAULT NULL COMMENT '提交时间',
  PRIMARY KEY (`LEAVEMSG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_leavemsg
-- ----------------------------
INSERT INTO `web_leavemsg` VALUES ('45b72e44693d467390db5987d9ec6662', 'bailing', '1939580880@qq.com', '', 'cdhcdusichsduics', '2019-01-02 16:22:18');
INSERT INTO `web_leavemsg` VALUES ('5441436d35b14c31960a181a686d0287', '闫琦', '2726284423@qq.com', '长春', '我觉得界面做的不够明确，想找的东西不知道在哪里，点进来在界面卡了很久都进不来', '2019-03-10 21:18:02');
INSERT INTO `web_leavemsg` VALUES ('598400916d324aa2bb118ff65f140824', '白玲玲', '1939580880@qq.com', '家', '精明哦', '2019-01-08 17:26:14');
INSERT INTO `web_leavemsg` VALUES ('6c911ff75f88471ea60aa477a37d4af5', 'bailing', '1939580880', 'changchundshi', 'caic565656', '2019-01-02 16:28:59');
INSERT INTO `web_leavemsg` VALUES ('8007571fa45b4d0e9e887da901cc979e', '小猪', '1939580880@qq.com', '家', '很好', '2019-01-08 17:24:20');
INSERT INTO `web_leavemsg` VALUES ('b63c7b531bb04337a4403488e071e90c', 'xdwp[lcwpe', '.cw;rf.;er.f', 'csdsdcds;c,sdc', 'erlpflerlfe', '2019-01-24 19:09:25');
INSERT INTO `web_leavemsg` VALUES ('c3aea5e362ea41779a4e992960630eb7', 'thhtr', 'hrthtr', 'trhrh', 'hrthrt', '2019-02-16 17:48:17');

-- ----------------------------
-- Table structure for `web_news`
-- ----------------------------
DROP TABLE IF EXISTS `web_news`;
CREATE TABLE `web_news` (
  `NEWS_ID` varchar(100) NOT NULL,
  `TITLE` varchar(50) DEFAULT NULL COMMENT '标题',
  `CTIME` varchar(32) DEFAULT NULL COMMENT '发表时间',
  `STEMFROM` varchar(100) DEFAULT NULL COMMENT '来源',
  `IMAGE` varchar(100) DEFAULT NULL COMMENT '图片',
  `SHORTCONTENT` varchar(5000) DEFAULT NULL COMMENT '简述',
  `CONTENT` longtext COMMENT '内容',
  `HIDE` varchar(5) DEFAULT NULL,
  `WEIGHT` int(11) DEFAULT NULL,
  PRIMARY KEY (`NEWS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_news
-- ----------------------------
INSERT INTO `web_news` VALUES ('2fa0b30b869740789079e9c8b3f656e8', '如何指导家长在生活中帮助听障儿童丰富语言 ', '2017-01-08 01:48:43', '聋儿网', 'http://n.sinaimg.cn/edu/11_img/upload/c5a2040e/698/w899h599/20180522/ZwU7-hawmaua5849644.jpg', '如何指导家长在生活中帮助听障儿童丰富语言 ', '<p><span style=\"line-height: 25.2px; background-color: rgb(255, 255, 255); font-family: 宋体, SimSun; font-size: 20px;\">[摘\r\n \r\n要]鉴于目前新生儿听力筛查技术和现代助听设备的普及使听障儿童早期干预技术日益成熟，在此影响下早期干预的时间的不断提前，这样就使我们的康复模式随之发生变化，从以机构为中心的模式向以家庭为中心的模式转变，从过去把主要放在言语训练和言语矫治上转变为支持听障儿童通过日常交流习得听说能力。&nbsp;<br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/></span></p><p><span style=\"line-height: 25.2px; background-color: rgb(255, 255, 255); font-family: 宋体, SimSun; font-size: 20px;\"><br/></span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\"><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　随着新生儿听力筛查技术和现代助听设备的普及使听障儿童早期干预技术日益成熟，早期干预的效果更加显现。早期干预的时间的不断提前，这就使听障儿童接受听觉刺激的时间大大提前，确保了听障儿童的神经发育和听觉、言语发展能够按照正常儿童的发展模式进行。在这种状态下，我们面临的康复对象越来越小，这就使我们的康复模式也逐步发生变化，从以机构为中心的模式向以家庭为中心的模式转变，从过去把主要放在言语训练和言语矫治上转变为支持听障儿童通过日常交流习得听说能力。这种模式下的听障儿童康复强调在自然的，有意义的交流环境下发展听障儿童的听觉、言语能力，这样就把家庭环境做为习得听觉、言语的主要环境；家长也就在听障儿童康复中充分发挥主导作用，康复教师则变为辅导和指导的角色。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　这样，当前摆在我们面前最迫切的任务就是如何指导家长在听障儿童康复中的发挥主导作用，通过近几年对听障幼儿的教学实践得出，指导家长在生活中开展听说能力训练要从以下几个方面做起：&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　</span></span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\"><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; color: rgb(2, 30, 170); background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; 　一、关注听能，团队合作，全面了解儿童的发展状况。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　听障儿童康复涉及到听力补偿（重建）、听觉言语训练、学前教育、医学诊断等多方面的工作，只有听力师、康复教师、学前教医生师、等组成一个综合的团队共同参与才能确保听障幼儿尽早接受听到清晰、完整的语言及环境声音，使听障儿童的大脑尽早接收听觉刺激。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　1、要指导家长与听力师配合为孩子做听力学检查，评估，为孩子选择适当的助听设备（助听器、人工耳蜗），同时帮助家长了解孩子发生听障的原因、过程和实际的听力表现，并在完成适配后，与家长、教师密切合作跟踪观察孩子的听力变化及助听效果，并且不断优化孩子的听能情况。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　2、教师在听力师和家长的帮助下，对孩子进行听觉、言语、认知、动作、情绪等进行全面综合的测评，并根据评估结果科学制定康复计划，并对家长进行培训，指导家长有信心进行家庭康复，并把康复中实际听说表现及时地家长和听力师做反馈。同时在指导家长时要注意，在对听障儿童开展听觉言语康复的同时，还必须高度重视听障儿童做为儿童的一部分的普便性，通过学前教育提高他们的全面素质和能力。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　3、为孩子提供有效的听觉环境。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　为听障儿童提供良好的聆听环境、丰富的语言环境是取得康复成功的保障。创造有利的声学环境是进行听说能力训练的前提。任何高端的，现代的助听设备也不能完全满足听障儿童对听清楚的需求，助听器或电子耳蜗只能在适当的距离和安静的环境才能发挥最大的作用，但听障儿童在家庭环境中总会遇到各种各样噪音（如吵菜声、家用电器声、外面的车声等），房间内有混响问题等，这都对听障儿童的听觉分辨能力有很大影响。因此我们指导家长在家庭中可采取铺设地毯，加挂厚窗帘，与孩子近距离讲话，增添一些绒布玩具，与孩子说话时关闭门窗、电器等方法来解决这些嗓音问题，为孩子创造良好的聆听环境和学习环境。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　</span></span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\"><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; <span style=\"font-size: 18px; font-family: 宋体, SimSun; line-height: 25.2px; color: rgb(2, 30, 170);\">&nbsp; &nbsp;二、让孩子我分担家庭责任，来丰富孩子的语言&nbsp;</span></span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　提供有丰富交流机会的语言环境是取得良好听说能力的关键，听障儿童只有接受大量言语刺激，积累丰富的言语、语言经验，才可能发展言语交流能力。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　我们的康复实践表明，年龄越小，听障儿和健儿之间的差别越小，听觉言语能力也不例外。健听儿童在2岁之前就能储备大量的词汇，2岁起就能通过别人谈话自发学习言语、语言。为此我们指导家长在优化的助听条件下，在关键期内，以孩子的兴趣出发，在家庭中为孩子提供一个有丰富语言交流机会的语言环境。这就要求我们的家长以自然的生活状态、以与孩子的日常生活相关的活动，，通过孩子自己在生活中承担的责任来设计丰富孩子的语言。如一位妈妈可以对她2岁的宝宝，在喂她吃饭时提供丰富的语言刺激“来，宝宝吃饭啦，张大嘴、好香啊、肉肉掉了、擦擦嘴、香喷喷的米饭、不要了，还吃吗，吃没了，拍拍肚，吃饱了等。”在多次的语言刺激后，宝宝就能听懂妈妈的话，并能妈妈的话做出表情或动作上的互动交流，有的甚至会自然的模仿妈妈发一些音，在这种生活状态下发展的语言，都是自然习得的，而且是丰富的，生动的，最有使用价值的。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　根据听障儿童的生理、心理、认知等发展特点，按照年龄把他们能分担的主要生活责任大致分为以下活动：&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　1、二--三岁的孩子可以学习--&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　1） 将不玩的玩具捡起来，归回原位。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　2） 把书和杂志放到书架上。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　3） 扫地。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　4） 将纸巾、碗及其它餐具放到桌上，不需要排列整齐。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　5） 清理饭后掉落的东西。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　6） 作简单的决定，如吃早餐时让小孩从两中食物中选择一种。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　7） 上厕所。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　8） 基本上的卫生习惯：如洗手并将手擦干、梳头发。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　9） 自己穿衣服-爸、妈可帮忙。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　 &nbsp; 10） 擦拭自己不小心弄翻后沾到的东西。&nbsp;　　</span></span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\"><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; &nbsp; &nbsp;11） 清理自己桌子上的东西；把未吃完的食物倒进垃圾桶，并将盘子放到整理柜上。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　2、四岁孩子可以学到--&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　1） 饭前将餐具摆好。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　2） 把常用的日用品按功能归位。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　3） 去超市或商场帮忙找出要买的东西&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　4） 擦鞋子，并将清洁用品收拾好。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　5） 帮助喂家里的宠物吃东西。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　6） 帮忙擦拭家里桌子等家俱灰尘。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　7） 帮忙扫地，并把清洁工具放回&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　8） 帮忙饭后收拾餐具。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　9） 独立照顾自己用餐，如把果酱涂在面包上。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　10） 帮妈妈端菜等准备全家人的晚餐。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　11） 与朋友分享玩具（操练礼貌）。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　12） 帮父母取所用物品&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　17） 出去玩之前告诉爸、妈去处。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　18） 自己玩，不需要大人一直在旁边看着。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　19） 将袜子、手帕、毛巾挂在较矮的晒衣绳上。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　20） 把等食品从包装箱中拿出来。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　21） 擦洗自己的玩具。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　3、五岁孩子可以学习--&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　1） 不用找零，帮忙买常用食品和物品。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　2） 自己吃早餐，并收拾干净。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　3） 倒自己要喝的饮料。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　4） 把餐具摆到桌子上排好。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　5） 学父母做食物，如包饺子&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　6） 认识烹饪材料。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　7）学习 整理自己的房间。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　8） 选择外出要穿的衣物并且自己穿好。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　9） 帮助招待客人，拿水果饮料等。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　10） 将要洗的衣服分类，如把白色的放一堆，其它颜色放另一堆。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　11） 将洗净的衣服折叠好，并放回衣柜里。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　12） 接听电话并打电话。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　13）认识钱币。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　14） 把垃圾拿出去丢掉。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　15） 喂他的宠物吃东西及清理宠物的活动区。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　16） 学习绑鞋带。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　4、七岁小孩可以学习--&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　1） 接电话时请对方留言或帮忙找人&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　2） 帮爸爸、妈妈跑腿。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　3） 清扫房间。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　4） 帮家里植物浇水。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　5） 好好玩具及器物。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　6） 帮狗和猫洗澡。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　7） 早上自己起床，晚上自己上床睡觉。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　8） 遵守生活礼仪，和别人分享并尊重别人。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　9） 维持室内的整齐，用完物品放回原处。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　10） 刷洗自己的鞋、车、玩具等。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　八至九岁的小孩可以学习--&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　1）按顺序将餐具摆整齐。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　2） 拖地板。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　3） 参与规划并帮忙调整家具位置。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　5） 自己放洗澡水。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　6） 当别人要求协助某项家务时，帮忙合作完成。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　7） 整理好自己的衣橱和抽屉。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　8） 与爸爸、妈妈逛街时，自己选衣服和鞋子。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　9） 不需父母叮咛，自己换衣服。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　10） 叠棉被。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　11） 缝补坏的物品，如娃娃、扣子&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　12） 清理屋子内外宠物的粪便。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　13） 充当短时间的小保姆。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　14） 采摘水果。。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　15） 写贺卡、短消息&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　16） 喂婴儿。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　17） 帮弟弟、妹妹洗澡。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　18） 帮忙做简单家务&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　父母是孩子的第一位启蒙教师，任何一名康复教师都代替不了家长在生活中那份尽心尽力的责任，只有指导家长运用科学的理念，执着的态度，使用专业的康复知识和技巧，才能保证我们的听障儿童在家庭这个充满爱的环境下，自然的学习并发展听说能力，逐步缩小同健儿的差距，做一个身心健康发展的儿童，尽早融入到美好的社会生活中去。&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　参考文献：&nbsp;</span><br style=\"line-height: 1.2em; font-family: Arial, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">　　[1]中国聋儿康复研究中心.听障儿童全面康复.北京科学技术出版社.</span></span></p><p><br/></p>', 'no', '21');
INSERT INTO `web_news` VALUES ('a28b54c614d142f9bb0cd6ac3f90f67d', '让听障儿童不受欺负 ', '2017-10-21 15:23:21', '搜狐网', 'http://5b0988e595225.cdn.sohucs.com/images/20170901/aac903e21ca847208f8f26d433072755.png', '让听障儿童不受伤害', '<p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">最近新闻媒体曝光的几起性侵猥亵未成年人案件，让未成年人的安全及心理问题再一次站上风尖浪口。而听障儿童的心理健康问题，又再一次被家长所关注。</span></p><p><img src=\"http://5b0988e595225.cdn.sohucs.com/images/20170901/aac903e21ca847208f8f26d433072755.png\" max-width=\"600\"/></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">听障儿童通常对关心TA的人有一定程度的依赖感，对于对TA比较好的人会计听言从，这是由于听障儿童的处境所决定的，听障儿童在上学后，很可能会遇到嘲笑、排斥、孤立等等，一个眼神一个动作都会造成心理上的波动，尤其是初中时期，正值青春少年，更会被琐事烦扰，这时候一个关心TA的朋友就很重要了，TA会把这个朋友或长辈看做是一个可信赖的人。</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">但是我们要教育孩子的是，这个世界上，不但有好人，也有坏人，而类似于性侵猥亵一类的事件，也多发生在熟人身边，发生在孩子信任的人身上，近期被曝光的几起事件，告诉了我们儿童性教育有多么重要。我们不要认为等孩子大一些再教孩子这些，社会上的色狼可不等你孩子长大。而且我们要知道的是，男孩女孩都有可能会遭受性侵猥亵。在西方性教育较完善的地区，孩子从4岁起家长就会告诉TA身体有哪些地方是别人不能碰的；如果是男孩，有些地方是妈妈不能碰的，如果是女孩，有些地方是爸爸不能碰的。对于听障儿童而言，信任是一把双刃剑。</span></p><p><img src=\"http://5b0988e595225.cdn.sohucs.com/images/20170901/fcd36a1dfe2b401eb181d436aa74bed3.png\" max-width=\"600\"/></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">但是在生活中，这类事件极少发生，发生更多的，是孩子在学校里被欺负了。之前爱耳君与家长聊天的时候，家长的说法各种各样都有，有的说被欺负了一定要打回去；有的说孩子的事多一事不如少一事；还有的说让孩子自己处理，家长不要过度干涉。</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">无论哪种办法，看得出来小孩子之间的小脾气小任性小冲突，父母的重视程度都是很高的。</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">很遗憾，现在的校园欺凌，从幼儿园就开始了，这是一个全世界都在面临的问题，前段时间，facebook上爆出一个小男孩被几个大孩子辱骂殴打的视频，而他们都只有6岁。我们也总是能在新闻里看到这样的消息，特别揪心。《美国学校健康日报》上发表的一项研究显示：19%的美国幼儿园孩子都收到过欺凌。美国教育学会称，每天有超过16万因为害怕被欺负不敢上学的孩子。</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">所以，对于听障儿童而言，比思考“孩子被欺负了之后该怎么办”更重要的是，怎么教育，才能让孩子不被人欺负。举个例子，学校里总有一种小孩，自带“我很不好惹别来惹我”光圈，让\r\n \r\n“小霸王”们不敢靠近。对！就是要把孩子培养成这种“不好惹”的角色！这么说可能三观有点不太正，但是不是说把孩子培养成“小霸王”，而是培养成“小霸王”不敢惹的人。</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">无论哪个学校，都会有这么一批“坏孩子”，他们有的学习好有的学习差，天生就有一种优越感，喜欢欺负那些“软柿子”同学，起外号，嘲笑起哄，让同学下不来台，这是我们没法改变的，我们能改变的，只有尽量让我们的孩子无人敢欺。</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\"><strong>一、爱与尊重，缺一不可</strong></span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">孩子的童年是美好的，但是孩子们也应该明白，爱与尊重，缺一不可，我们在社会活动中不仅要诚心待人，也要彼此尊重。<strong>我们在教导孩子宽容的同时，也要有底线。</strong></span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">预防孩子被欺负或欺负人的最根本的方法是——确保TA在充满爱与尊重的亲子关系中成长，而不是在被暴力和权力控制的环境中长大。</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">比如父母用掌掴等体罚来管教孩子，或者夫妻二人一言不合就动手，上演“全武行”，这无疑是告诉孩子暴力即是解决人际关系问题的最直接有效的方法，或者会变成懦弱胆怯的人；如果父母习惯用权力来强压孩子，孩子就学会仗势欺人，或者会变得习惯屈从于强势。特别是耳蜗儿童，本身在心理上处于弱势，可能在争辩上也处于弱势，这样很容易让孩子用拳头解决问题。</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\"><strong>二、鼓励孩子多表达个人意愿</strong></span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">有些听障儿童比较内向，不善于在陌生人面前表达，所以别人做TA不喜欢的事也不去抗议或说出来。<strong>我们建议家里的大事小事，多让孩子参与，鼓励他们说出自己的想法，表达个人意愿。</strong>一味的压制、强加和约束，只会压抑思维和信念。容易被欺负的小孩多胆怯，懦弱，其实跟父母过于强势的性格有关。</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">像“大人说话小孩少插嘴”“别问为什么，我说是就是”这些强烈压制孩子性格与想法的威胁性句式，我们小的时候就特别讨厌听到，现在更不能对孩子说。况且，童言无忌，你永远不知道那个小脑袋里藏着多少稀奇古怪的想法，也许你家那个有点话唠的小家伙，会成为未来的乔布斯或者扎克伯格呢！</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\"><strong>三、孩子也有自己的朋友圈</strong></span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">在学校里，<strong>不合群的孩子更容易受欺负</strong>，尤其是听障儿童，有好朋友是很不容易的，一旦有了自己的朋友圈，底气就足了。所以从孩子小时候就可以去培养孩子的社交技能，广交朋友，即便你戴着耳蜗或助听器，也可以成为一个受人欢迎、受人尊敬的人。</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\"><strong>四、学会“吵架”</strong></span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\"><strong>“吵架”不是打人，更不是骂人，这里的“吵架”带双引号，是一种解决问题或避免问题的方式方法。</strong></span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">吵架，是孩子在成长过程中必然的一个环节，听障儿童也不例外，然而我们听障儿童因为听力的缘故，可能并不会“吵架”，或是语速跟不上。告诉孩子，受到挑衅，吓得大声哭泣，反而会满足欺凌者“看好戏”的心态，导致自己处境更加被动。</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">受到言语上的攻击，嘲讽，自信地回一句：“那又怎么样！”（如果在言语上反驳有困难，就回这一句就好了）然后朝着对方身后走开，比一声不响转身走开更有气场；对于小学阶段的吵架来说，基本只需要在气势上镇住对方即可，比如“你凭什么打人？”“打人是不对的！”“你以为你是最厉害的吗？才不是！”对方只要一想这些问题，就会分神，大脑死机，所以就“懵”了，气势瞬间没了半截。而初中则复杂一些，需要更多策略。</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\"><strong>五、站在孩子这一边，永远做孩子坚强后盾</strong></span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">孩子玩具被抢走，或者被打了几下，或者自己的耳蜗或助听器被人扯拽，不是因为TA没用，而是遇见“小霸王”。让孩子知道，任何时候，有困难都可以向爸爸妈妈求助。出现了被欺凌的情况，一定要保护孩子，主动不要以息事宁人的态度离开，这样孩子会觉得家长无法保护自己，以后受到更多欺负时也不愿发声。</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\"><strong>六、从应对欺负中磨练高智商</strong></span></p><p><img src=\"http://5b0988e595225.cdn.sohucs.com/images/20170901/5cbcbc3baad9497ab07677d5f9537d41.png\" max-width=\"600\" width=\"100%\" height=\"\"/></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">现实社会总会出现那么几个让人讨厌的孩子，对于耳蜗或助听器儿童而言，我们不应该是弱势群体，我们和其他学生一样应该受到尊重，然而现实总是会打脸，初中阶段是最难搞的。这个时期的孩子处于懂点与不懂之间，是青春期最为复杂的时期，也是人格形成的时期，心智发育都不成熟。</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">对于听障儿童而言，我们难免会遇到欺凌，尽管家长们可以读这篇文章并教育孩子，但实际上孩子的应对也只能在不断被欺凌中获得经验并成长，这是无奈也是历练，我们希望孩子的历练期能短一些。</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">《保持冷静》是一本讲述怎么和有攻击倾向的孩子打交道的心理咨询书，这本书的作者之一迈克尔·尼尔森博士在序言中写道：爱欺凌他人的“小霸王”一般都自尊心低，他们缺乏同理心，心理上就有一些要当老大的冲动。另外，他们过火的行为可能只是想试探一下别人的底线。</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">教给孩子对付这些小霸王的对策：挑事者都是通过挑衅别人以显示自己的强大，如果受害者情绪失控，恰恰正中下怀。所以，<strong>面对欺负，保持冷静、维护自己的尊严，不攻击和贬低对方，尽量淡然处之。</strong></span></p><p><img src=\"http://5b0988e595225.cdn.sohucs.com/images/20170901/d51715aac3b94705a5f2bc99d25cb155.png\" max-width=\"600\"/></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">孩子离开家庭、言语康复学校这个温室，去幼儿园，去读小学，初中，高中……爸爸妈妈最担心的是TA会不会挨欺负。每个孩子都是全家的宝贝，我们努力给他营造一个阳光、正面的生活环境，希望他们健康成长。</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">但是孩子在成长中，会遇到各种各样的问题；总有一天，他们将离开我们，独自生活。在保护他们的同时，教会他们保护自己，为的就是当孩子离开我们以后，同样活得乐观和积极。</span></p><p><br/></p>', 'no', '6');
INSERT INTO `web_news` VALUES ('b5739322b529419f958b92684a38aac3', '听障儿童家长必读!帮助孩子融入社会', '2017-10-21 15:22:47', '搜狐网', 'http://n.sinaimg.cn/default/1_img/uplaod/3933d981/20170929/gpnu-fymkwyt6505865.jpg', '帮助孩子融入社会', '<p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">对于听障儿童及其父母来说，进入普通学校学习是多年为之康复准备和向往的目标。</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">父母应该在儿童入学前一年作准备。听障儿童接受融合教育在很大程度上取决于父母和教师的有效合作。</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">1. 开学之前父母的准备工作——</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">自信对于刚入学的听障儿童很重要。为了能自信地开始学校生活，儿童需要掌握听说交流的能力，以便真正独立，同时胜任日常生活和社会交往。</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">2. 语言水平</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">对于父母来说，在孩子入学一年前向学校索取一份课程表很重要。这可以帮助父母知道孩子在语言方面的差距。</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">当普通学校不能提供康复帮助时，父母作为康复指导者和教育者的角色就更为关键。</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">不同学校环境中的语言和词汇是需要准备的另一个方面。父母可以在孩子入学前一年就开始着手练习。</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">3. 独立</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">根据听障儿童的年龄，父母应尽可能地让他们独立管理自己的助听设备。他们应该能自己开/关助听设备、更换电池、告诉老师助听设备出了故障等。</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">鼓励孩子表达他们的需要，而不是一切替他们想好、做好。让孩子在家里的日常生活中练习独立。</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">4. 自我保护</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">自我保护是指让听障儿童有信心和口语能力来回答为什么他们需要配戴助听设备等问题。父母可以在家里给孩子示范如何自我拥护。创设孩子可能碰到的来自同伴、教师的问题情境，让孩子以角色扮演的方式进行练习。这也是入学前的准备工作之一。</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">从一开始就教会孩子助听设备各个部件正确的名称是重要的。因为要想做到自我保护，儿童应该能用正确的词语给他人、教师讲述人工耳蜗、言语处理器等部件。当设备出现故障时，儿童知道是哪部分有问题也很重要。</span></p><p><br/></p>', 'no', '1');
INSERT INTO `web_news` VALUES ('d3b7cd0ff0044038be260ad81a879be1', '委员声音:加大听障儿童家庭的帮扶政策和力度 ', '2017-12-11 10:51:33', '搜狐网', 'http://wx2.sinaimg.cn/large/005spsLRly1frp60hvywdj30bo088ad4.jpg', '加大听障儿童家庭的帮扶政策和力度 ', '<p><img src=\"http://n1.itc.cn/img8/wb/recom/2017/01/10/148400766838188633.JPEG\"/></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">本网讯 记者卢幼莲报道 \r\n近几年衡阳市政府实施了政府购买服务项目，将许多走不出家门、踏不进康复学校的孩子送进了康复学校。但是，诸多的因素并列，对于偏远农村家庭而言，在实际的康复路上对于免费项目也很无奈。为此，来自衡阳市聆音聋儿康复中心的政协委员谢海英建议，凡是政府购买服务项目，都配套一个对听障儿童家庭经济帮扶的内容，同时对于听障儿童家庭建立诚信档案，加大听障儿童家庭的经济帮扶政策和力度。</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">谢海英通过走访城乡目前在训的约100名听力残疾儿童后发现，听障儿童每月康复经费1500—2500元，家庭生活开支每月2000—2500元，这些听障儿童康复时间在2—3年，甚至更长。谢海英说，“对于这些家庭来说，家庭、家人在承受的非一般的心理压力和社会压力的同时，还要承受沉重的经济压力。而且，一个家庭有这样一个孩子，父母必须牺牲其中一个的时间，专门来带养并配合康复学校进行家庭辅助康复工作，这是老人无法替代的事情，那么家庭经济压力尤为沉重。”</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">听障儿童在所有残疾儿童中康复率达70%，是所有残疾类别中康复率最高的。“无论是家庭还是政府，短暂的付出换得了听障儿童一辈子的独立自强。我想，这是有效救助，这是有效项目，也是立项的本意。”谢海英告诉记者。</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">为了帮助听障儿童能够持续得到康复训练，帮助听障儿童家庭能够持续支撑孩子的康复路，谢海英建议，凡是政府购买服务项目，都配套一个对听障儿童家庭经济帮扶的内容，例如政府购买服务时间是3个月，同时对其家庭经济帮扶3个月，每月补助500元；凡是在政府购买服务项目之外仍然自费坚持送孩子康复的听障儿童家庭，政府对其家庭实施经济帮扶，如每月补助1000元。同时将听障孩子一个救助项目时间延长至2年，或者3年。</span></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">谢海英告诉记者，对于听障儿童家庭建立诚信档案，以便于政府帮助那些真正坚持不懈为残疾儿童康复坚守的、不离不弃的听障儿童家庭。她建议，2017年凡是残疾儿童康复训练，全部实施指纹打卡的实时考勤。同时增加项目覆盖率，增加项目名额，最好做到全覆盖，加大听障儿童家庭的经济帮扶政策和力度，也从一定程度上减少了放弃孩子、走出家门那类家长和家庭，将残疾儿童享受康复率提高至100%</span></p><p><br/></p>', 'no', '1');
INSERT INTO `web_news` VALUES ('eba04dd7092449bda6f925ab272756f0', '关于听障儿童的相关政策', '2017-01-09 13:48:18', '中国听障儿童网', 'http://www.yukang.org.cn/upload_files/article/78/1_20180117100134_1mtlc.jpg', ' ​关于听障儿童的相关政策', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;关于听障儿童的相关政策</p><p>&nbsp; &nbsp; &nbsp; <span style=\"font-family: 宋体, SimSun; font-size: 18px;\">&nbsp;来信内容：您好！我是一位聋儿家长，孩子从小不仅体弱多病，还伴有肌张力协调障碍和听力残疾。去年享受了“七彩梦”项目，2015年7月份接受了人工耳蜗的植入，在重庆残疾人服务综合中心进行言语康复至今已经有一年了，也就意味着“七彩梦”项目已经结束，但康复的结果..</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"font-family: 宋体, SimSun; font-size: 18px;\"><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"font-size: 18px; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: 宋体;\">来信内容</span></strong><span style=\"font-size: 18px; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: 宋体;\">：您好！</span><span style=\"font-size: 18px; font-family: 宋体, SimSun; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"font-family: 宋体, SimSun; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: 18px;\"><span style=\"font-size: 18px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; font-family: 宋体;\">我是一位聋儿家长，孩子从小不仅体弱多病，还伴有肌张力协调障碍和听力残疾。去年享受了</span>“七彩梦”项目，<span style=\"font-size: 18px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; font-family: calibri;\">2015</span><span style=\"font-size: 18px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; font-family: 宋体;\">年</span><span style=\"font-size: 18px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; font-family: calibri;\">7</span><span style=\"font-size: 18px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; font-family: 宋体;\">月份接受了人工耳蜗的植入，在重庆残疾人服务综合中心进行言语康复至今已经有一年了，也就意味着“七彩梦”项目已经结束，但康复的结果只能说是现在基本能听好，今后还要继续语言康复，我们家就孩子父亲一人工作，现在我们面临着高额的康复费用，一个月的康复费就是</span><span style=\"font-size: 18px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; font-family: calibri;\">2000</span><span style=\"font-size: 18px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; font-family: 宋体;\">多，家庭经济能力确实也承受不起。</span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"font-family: 宋体, SimSun; font-size: 18px;\"><span style=\"font-size: 18px; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: 宋体;\">请问，这样的孩子政府有没有什么补贴？</span><span style=\"font-size: 18px; font-family: 宋体, SimSun; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: 宋体, SimSun; font-size: 18px;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"font-family: 宋体, SimSun; font-size: 18px;\"><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"font-size: 18px; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: 宋体;\">办理单位</span></strong><span style=\"font-size: 18px; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: 宋体;\">：渝北区政府</span><span style=\"font-size: 18px; font-family: 宋体, SimSun; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: 宋体, SimSun; font-size: 18px;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"font-family: 宋体, SimSun; font-size: 18px;\"><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"font-size: 18px; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: 宋体;\">办理结果</span></strong><span style=\"font-size: 18px; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: 宋体;\">：来信人：您好！首先，非常感谢您对渝北区民生工作的监督、关心和支持！接到来信反映的问题后，按照职能职责，渝北区政府立即责区残联对此进行调查处理，现将有关情况回复如下：</span><span style=\"font-size: 18px; font-family: 宋体, SimSun; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: 宋体, SimSun; font-size: 18px;\">&nbsp;<img src=\"http://www.yukang.org.cn/upload_files/article/78/1_20180117100134_1mtlc.jpg\" title=\"七彩梦行动计划\" border=\"0\" hspace=\"0\" vspace=\"0\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; float: none;\"/><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"font-family: 宋体, SimSun; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: 18px;\"><span style=\"font-size: 18px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; font-family: 宋体;\">　　根据中残联</span>“七彩梦行动计划”人工耳蜗项目的相关要求，符合救助条件的聋儿在实施人工耳蜗植入手术后，可以进行一年的术后康复训练，该项目不能重复享受。您孩子目前的已经接受了免费的人工耳蜗植入手术和<span style=\"font-size: 18px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; font-family: calibri;\">1</span><span style=\"font-size: 18px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; font-family: 宋体;\">年的术后康复训练，则不能再重复享受该项目。如果您觉得孩子目前还需要继续进行康复训练，则可自费到全市的各定点康复训练机构参加训练。根据渝北区政策可每年</span><span style=\"font-size: 18px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; font-family: calibri;\">6</span><span style=\"font-size: 18px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; font-family: 宋体;\">月到区残联申报每月</span><span style=\"font-size: 18px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; font-family: calibri;\">500</span><span style=\"font-size: 18px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; font-family: 宋体;\">元的康复训练补贴，其条件为：</span><span style=\"font-size: 18px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; font-family: calibri;\">1.</span><span style=\"font-size: 18px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; font-family: 宋体;\">持有第二代残疾人证的渝北区户籍残疾人；</span><span style=\"font-size: 18px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; font-family: calibri;\">2.</span><span style=\"font-size: 18px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; font-family: 宋体;\">年龄在</span><span style=\"font-size: 18px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; font-family: calibri;\">0-16</span><span style=\"font-size: 18px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; font-family: 宋体;\">周岁；</span><span style=\"font-size: 18px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; font-family: calibri;\">3.</span><span style=\"font-size: 18px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; font-family: 宋体;\">在定点康复训练机构（附后）自费康复训练。</span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"font-family: 宋体, SimSun; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: 18px;\"><span style=\"font-size: 18px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; font-family: 宋体;\">　　重庆市听力残疾儿童定点康复机构：</span>1<span style=\"font-size: 18px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; font-family: 宋体;\">．万州区残服中心；</span><span style=\"font-size: 18px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; font-family: calibri;\">2</span><span style=\"font-size: 18px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; font-family: 宋体;\">．涪陵区残疾人康复训练中心；</span><span style=\"font-size: 18px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; font-family: calibri;\">3</span><span style=\"font-size: 18px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; font-family: 宋体;\">．渝中区启音听力语言康复中心；</span><span style=\"font-size: 18px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; font-family: calibri;\">4</span><span style=\"font-size: 18px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; font-family: 宋体;\">．南岸区向阳花听力语言康复中心、春晖如意听力语言康复中心、县人民医院；</span><span style=\"font-size: 18px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; font-family: calibri;\">5</span><span style=\"font-size: 18px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; font-family: 宋体;\">．云阳县聋儿语训班；</span><span style=\"font-size: 18px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; font-family: calibri;\">6</span><span style=\"font-size: 18px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; font-family: 宋体;\">．市残疾人综合服务中心；</span><span style=\"font-size: 18px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; font-family: calibri;\">7</span><span style=\"font-size: 18px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; font-family: 宋体;\">．市聋校。</span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: 宋体, SimSun; font-size: 18px;\"><span style=\"font-size: 18px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; font-family: 宋体;\">　　最后，再次感谢您一直以来对渝北区民生工作的关心、支持和理解。同时，欢迎继续对我们的工作进行监督并提出宝贵的意见和建议。如有其他问题，可致电区残联具体咨询，联系电话：</span>88620285<span style=\"font-size: 18px; margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; font-family: 宋体;\">。</span></span></p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p>', 'no', '22');
INSERT INTO `web_news` VALUES ('f999d0c302f2419c9bf778ba6a979fff', '首届听障儿童“25分贝公益音乐会”在京举行', '2017-10-21 15:23:06', '新华网', 'http://images.china.cn/site1000/2019-01/05/9d66ab6e-87ce-44a7-8c66-6e0a7cab163c.jpg', '首届听障儿童“25分贝公益音乐会”在京举行', '<p><br/></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">2019年1月4日，由中国听力语言康复研究中心、中国少年儿童文化艺术基金会联合主办的首届听障儿童“25分贝公益音乐会”在北京举行。音乐会上，7名佩戴人工耳蜗的听障儿童表演了钢琴、小提琴、古筝、单簧管等演奏及独唱节目。</span></p><p><br/></p><p><br/></p><p><br/></p><p><span style=\"font-family: 宋体, SimSun; font-size: 20px;\"> \r\n			&nbsp;			</span></p><p><br/></p><p><br/></p><p style=\"text-align:justify;TEXT-JUSTIFY: distribute; TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\"><span style=\"font-family: 宋体, SimSun; font-size: 20px;\">2019年1月4日，由中国听力语言康复研究中心、中国少年儿童文化艺术基金会联合主办的首届听障儿童“25分贝公益音乐会”在北京举行。音乐会上，7名佩戴人工耳蜗的听障儿童表演了钢琴、小提琴、古筝、单簧管等演奏及独唱节目。活动旨在展示听障儿童康复成果，发动全社会关心和支持听障儿童康复成长。</span></p><p><br/></p>', 'no', '2');

-- ----------------------------
-- Table structure for `web_ourbusiness`
-- ----------------------------
DROP TABLE IF EXISTS `web_ourbusiness`;
CREATE TABLE `web_ourbusiness` (
  `OURBUSINESS_ID` varchar(100) NOT NULL,
  `TITLE1` varchar(255) DEFAULT NULL COMMENT '介绍上',
  `TITLE2` varchar(255) DEFAULT NULL COMMENT '介绍下',
  `CONTENT1` varchar(255) DEFAULT NULL COMMENT '内容上',
  `CONTENT2` varchar(255) DEFAULT NULL COMMENT '内容上',
  `TOURL` varchar(255) DEFAULT NULL COMMENT '内容链接',
  `OTHER1` varchar(255) DEFAULT NULL,
  `OTHER2` varchar(255) DEFAULT NULL,
  `IMG1` varchar(300) DEFAULT NULL,
  `IMG2` varchar(300) DEFAULT NULL,
  `M3_TITLE` varchar(255) DEFAULT NULL,
  `M3_CONTENT1` varchar(1000) DEFAULT NULL,
  `M3_CONTENT2` varchar(1000) DEFAULT NULL,
  `M3_CONTENT3` varchar(1000) DEFAULT NULL,
  `IMG3` varchar(300) DEFAULT NULL,
  `IMG4` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`OURBUSINESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_ourbusiness
-- ----------------------------
INSERT INTO `web_ourbusiness` VALUES ('1', '欢迎使用听障儿童言语康复训练软件', '我们要改变听障人士的命运', '精准助残帮扶 我们一直在路上', '让听障人士恢复语言能力  <br /> 能和正常人交流', 'http://www.my33er.com/', '', '', 'http://www.dreamtospeak.com:8080/FH-WEB/uploadFiles/uploadImgs/20190223/a4a13dffd34146668718ec874beca382.png', '', '', '', '', '', 'http://www.dreamtospeak.com:8080/FH-WEB/uploadFiles/uploadImgs/20190223/04f4ea4210cd4cb884ed7343759d6126.jpg', '');
