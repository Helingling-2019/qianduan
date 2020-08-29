-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-07-23 13:45:25
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `producuts`
--

-- --------------------------------------------------------

--
-- 表的结构 `list`
--

CREATE TABLE `list` (
  `id` tinyint(5) NOT NULL COMMENT '商品id',
  `title` varchar(200) NOT NULL COMMENT '商品名称',
  `description` varchar(1000) NOT NULL COMMENT '商品描述',
  `image` varchar(200) NOT NULL COMMENT '商品图片'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `list`
--

INSERT INTO `list` (`id`, `title`, `description`, `image`) VALUES
(1, '【承德扶贫馆】新鲜胡萝卜带泥现挖胡萝卜承德特产 长5-7寸 2.5kg含包装', '商品名称：【承德扶贫馆】新鲜胡萝卜带泥现挖胡萝卜承德特产 长5-7寸 2.5kg含包装商品编号：50696230702店铺： 中国特产·承德扶贫馆商品毛重：2.5kg商品产地：中国大陆种植方式：其它烹饪建议：火锅，炒菜分类：萝卜产期：7月，8月售卖方式：单品', 'images/1.jpg'),
(2, '【静宁扶贫馆】红六福 静宁苹果生鲜水果富硒红富士苹果甘肃特产 红富士12枚75#单果约160~240g', '商品名称：【静宁扶贫馆】红六福 静宁苹果生鲜水果富硒红富士苹果甘肃特产 红富士12枚75#单果约160~240g商品编号：36520691277店铺： 中国特产·静宁扶贫馆商品毛重：2.0kg商品产地：中国大陆货号：20181275等级：一级国产/进口：国产是否有机：否特产品类：其它原产地：中国（甘肃）', 'images/2.jpg'),
(3, '金钻凤梨 新鲜菠萝带箱10斤 当季生鲜水果 精选10斤装', '商品名称：金钻凤梨 新鲜菠萝带箱10斤 当季生鲜水果 精选10斤装商品编号：46003115689店铺： 芸汁生鲜专营店商品毛重：5.0kg商品产地：中国大陆热卖时间：4月，5月，6月，7月，8月，9月，10月分类：凤梨国产/进口：国产原产地：中国大陆', 'images/3.jpg'),
(4, '雪梨5斤 河北赵县雪花梨鲜梨子 新鲜水果', '商品名称：雪梨5斤 河北赵县雪花梨鲜梨子 新鲜水果商品编号：17304713122店铺： 新边界生鲜官方旗舰店商品毛重：100.00g货号：新边界540923547629国产/进口：国产分类：雪花梨原产地：中国（河北）\r\n', 'images/4.jpg'),
(5, '果迎鲜 沃柑 5斤装 非广西皇帝柑 沃柑 新鲜水果 桔子5斤 柑橘子 沃柑 京东生鲜', '商品名称：果迎鲜 沃柑 5斤装 非广西皇帝柑 沃柑 新鲜水果 桔子5斤 柑橘子 沃柑 京东生鲜商品编号：33482864270店铺： 果迎鲜官方旗舰店商品毛重：2.5kg商品产地：中国大陆', 'images/5.jpg'),
(6, '【新泰馆】福建土楼特产 新鲜红皮美人香蕉 5斤 原产地直发 现摘现发 应季水果', '商品名称：【新泰馆】福建土楼特产 新鲜红皮美人香蕉 5斤 原产地直发 现摘现发 应季水果商品编号：47552029376店铺： 中国特产·新泰馆商品毛重：2.5kg商品产地：中国大陆', 'images/6.jpg'),
(7, '【铜梁馆】 越南红心火龙果4个装 新鲜水果 红肉火龙果大果单果约300g-400g 水果', '商品名称：【铜梁馆】 越南红心火龙果4个装 新鲜水果 红肉火龙果大果单果约300g-400g 水果商品编号：38268240104店铺： 中国特产·铜梁馆商品毛重：2.5kg国产/进口：国产分类：白心火龙果', 'images/7.jpg'),
(8, '品赞 澳洲脐橙12个 单果170-200g 澳橙澳大利亚甜橙进口水果新鲜橙子', '商品名称：品赞 澳洲脐橙12个 单果170-200g 澳橙澳大利亚甜橙进口水果新鲜橙子商品编号：25883867533店铺： 品赞生鲜旗舰店商品毛重：3.0kg商品产地：澳大利亚国产/进口：进口分类：脐橙', 'images/8.jpg'),
(9, '上海南汇8424西瓜2个礼盒装 单果约6~7斤 脆甜薄皮西瓜当季新鲜精品西瓜水果', '商品名称：上海南汇8424西瓜2个礼盒装 单果约6~7斤 脆甜薄皮西瓜当季新鲜精品西瓜水果商品编号：49018945126店铺： 怡然优果旗舰店商品毛重：8.0kg商品产地：中国大陆国产/进口：国产分类：西瓜', 'images/9.jpg'),
(10, '【第二件9.9元】哈密瓜网纹瓜新鲜瓜果水果甜瓜香瓜西周蜜瓜单果1.5kg-2kg', '商品名称：【第二件9.9元】哈密瓜网纹瓜新鲜瓜果水果甜瓜香瓜西周蜜瓜单果1.5kg-2kg商品编号：28792714541店铺： 优果佰纷佰专营店商品毛重：1.0kg国产/进口：国产分类：哈密瓜/网纹瓜', 'images/10.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `list`
--
ALTER TABLE `list`
  MODIFY `id` tinyint(5) NOT NULL AUTO_INCREMENT COMMENT '商品id', AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
