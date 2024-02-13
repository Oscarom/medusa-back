-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-02-2024 a las 20:06:33
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `morintin`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles_lista`
--

CREATE TABLE `detalles_lista` (
  `detalle_id` int(11) NOT NULL,
  `lista_id` int(11) DEFAULT NULL,
  `producto_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalles_lista`
--

INSERT INTO `detalles_lista` (`detalle_id`, `lista_id`, `producto_id`) VALUES
(3, 1, 34);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listas`
--

CREATE TABLE `listas` (
  `lista_id` int(11) NOT NULL,
  `nombre_lista` varchar(100) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `listas`
--

INSERT INTO `listas` (`lista_id`, `nombre_lista`, `usuario_id`) VALUES
(1, 'comida semana', 1),
(2, 'ejemplo2', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `producto_id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `precio` varchar(100) NOT NULL,
  `nombre_superm` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`producto_id`, `nombre`, `categoria`, `precio`, `nombre_superm`, `image`) VALUES
(1, 'Pepper - Paprika, Spanish', 'Clothing', '107.09', 'La ley', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(2, 'Veal - Inside', 'Industrial', '40.61', 'Walmart', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(3, 'Bananas', 'Tools', '98.81', 'La ley', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(4, 'Cheese - Goat', 'Tools', '170.23', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(5, 'Stock - Veal, White', 'Grocery', '184.14', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(6, 'Turkey - Breast, Boneless Sk On', 'Grocery', '102.13', 'Chedraui', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(7, 'Vermouth - Sweet, Cinzano', 'Books', '135.27', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(8, 'Tamarind Paste', 'Kids', '98.29', 'Superama', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(9, 'Crab - Meat', 'Industrial', '83.6', 'Superama', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(10, 'Muffin Hinge Container 6', 'Outdoors', '103.08', 'Chedraui', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(11, 'Lentils - Green, Dry', 'Music', '170.91', 'Superama', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(12, 'Venison - Racks Frenched', 'Outdoors', '126.39', 'Bodega Aurrera', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(13, 'Gooseberry', 'Clothing', '73.73', 'Superama', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(14, 'Tomatoes - Roma', 'Electronics', '155.88', 'Chedraui', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(15, 'Beef Ground Medium', 'Industrial', '185.91', 'Superama', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(16, 'Energy - Boo - Koo', 'Sports', '169.46', 'Bodega Aurrera', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(17, 'Puree - Strawberry', 'Garden', '21.39', 'Bodega Aurrera', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(18, 'Soup - Knorr, French Onion', 'Kids', '177.7', 'Superama', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(19, 'Chocolate - Milk Coating', 'Jewelry', '150.04', 'Chedraui', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(20, 'Pepper - Pablano', 'Garden', '180.11', 'Chedraui', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(21, 'Cake - Mini Potato Pancake', 'Music', '80.07', 'La ley', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(22, 'Urban Zen Drinks', 'Music', '154.06', 'Sams', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(23, 'Onions - Cippolini', 'Computers', '96.56', 'Sams', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(24, 'Soup - Campbells - Tomato', 'Garden', '85.61', 'Costco', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(25, 'Lychee - Canned', 'Jewelry', '190.84', 'La ley', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(26, 'Paper Cocktail Umberlla 80 - 180', 'Electronics', '144.22', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(27, 'Pastry - Apple Muffins - Mini', 'Beauty', '162.53', 'Sams', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(28, 'Beer - Blue Light', 'Books', '37.25', 'La ley', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(29, 'Sugar Thermometer', 'Shoes', '188.85', 'La ley', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(30, 'Papayas', 'Industrial', '111.36', 'Bodega Aurrera', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(31, 'Wine - Gato Negro Cabernet', 'Games', '142.7', 'Chedraui', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(32, 'Ecolab - Lime - A - Way 4/4 L', 'Shoes', '75.39', 'Bodega Aurrera', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(33, 'Pastry - Cherry Danish - Mini', 'Outdoors', '112.67', 'La ley', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(34, 'Taro Root', 'Music', '199.06', 'Chedraui', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(35, 'Wine - Montecillo Rioja Crianza', 'Health', '116.86', 'Superama', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(36, 'Pork - Ham Hocks - Smoked', 'Beauty', '174.2', 'Sams', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(37, 'The Pop Shoppe - Grape', 'Outdoors', '46.91', 'Walmart', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(38, 'Crab - Claws, Snow 16 - 24', 'Baby', '37.21', 'Costco', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(39, 'Tandoori Curry Paste', 'Home', '67.98', 'Costco', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(40, 'Frangelico', 'Jewelry', '136.94', 'La ley', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(41, 'Cheese Cloth', 'Baby', '54.38', 'Superama', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(42, 'Lotus Leaves', 'Baby', '147.74', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(43, 'Fuji Apples', 'Toys', '32.58', 'Bodega Aurrera', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(44, 'Edible Flower - Mixed', 'Grocery', '100.01', 'Sams', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(45, 'Wine - Chardonnay Mondavi', 'Computers', '121.78', 'La ley', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(46, 'Pork - Tenderloin, Frozen', 'Shoes', '76.03', 'Bodega Aurrera', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(47, 'Muffin - Mix - Strawberry Rhubarb', 'Kids', '30.29', 'Sams', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(48, 'Fruit Mix - Light', 'Home', '187.36', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(49, 'Pasta - Fusili Tri - Coloured', 'Home', '138.64', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(50, 'Sesame Seed Black', 'Kids', '82.1', 'Sams', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(51, 'Sauce - Chili', 'Books', '127.53', 'Walmart', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(52, 'Lemonade - Kiwi, 591 Ml', 'Grocery', '158.56', 'Costco', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(53, 'Appetizer - Chicken Satay', 'Electronics', '105.3', 'Chedraui', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(54, 'Pasta - Penne, Rigate, Dry', 'Garden', '43.19', 'Bodega Aurrera', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(55, 'Ice Cream Bar - Oreo Sandwich', 'Movies', '106.18', 'La ley', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(56, 'Bread - Ciabatta Buns', 'Tools', '70.27', 'Walmart', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(57, 'Tahini Paste', 'Music', '192.41', 'Costco', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(58, 'Mudslide', 'Shoes', '171.77', 'La ley', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(59, 'Wine - White, Mosel Gold', 'Sports', '51.49', 'Superama', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(60, 'Lamb - Shoulder, Boneless', 'Shoes', '161.58', 'Chedraui', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(61, 'Coffee Decaf Colombian', 'Clothing', '190.37', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(62, 'Bread - White, Unsliced', 'Books', '99.57', 'Costco', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(63, 'Pepsi - 600ml', 'Beauty', '36.22', 'Walmart', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(64, 'Flour - Chickpea', 'Baby', '39.22', 'Bodega Aurrera', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(65, 'Wine - Pinot Grigio Collavini', 'Books', '77.87', 'Superama', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(66, 'Tart Shells - Savory, 3', 'Tools', '93.96', 'Chedraui', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(67, 'Pop - Club Soda Can', 'Shoes', '46.57', 'Superama', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(68, 'Pork Loin Cutlets', 'Sports', '138.09', 'Superama', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(69, 'Lemonade - Island Tea, 591 Ml', 'Games', '129.15', 'Chedraui', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(70, 'Cheese - Asiago', 'Sports', '104.06', 'La ley', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(71, 'Pastry - Choclate Baked', 'Home', '158.32', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(72, 'Goulash Seasoning', 'Industrial', '62.75', 'Bodega Aurrera', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(73, 'Cake - Mini Cheesecake', 'Jewelry', '186.41', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(74, 'Wine - Zonnebloem Pinotage', 'Industrial', '111.29', 'Bodega Aurrera', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(75, 'Sugar Thermometer', 'Shoes', '168.08', 'Superama', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(76, 'Lettuce - Romaine', 'Movies', '197.5', 'Costco', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(77, 'Icecream Bar - Del Monte', 'Home', '128.59', 'Sams', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(78, 'Huck White Towels', 'Movies', '150.14', 'Sams', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(79, 'Wine - Gewurztraminer Pierre', 'Garden', '129.11', 'Sams', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(80, 'Bread - White, Unsliced', 'Jewelry', '28.18', 'Chedraui', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(81, 'Plasticknivesblack', 'Health', '135.72', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(82, 'Muffin Batt - Blueberry Passion', 'Music', '166.0', 'Sams', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(83, 'Ginger - Fresh', 'Shoes', '51.79', 'Chedraui', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(84, 'Pickle - Dill', 'Industrial', '132.12', 'Superama', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(85, 'Wine - Segura Viudas Aria Brut', 'Clothing', '105.67', 'Sams', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(86, 'Muffin - Blueberry Individual', 'Beauty', '174.83', 'La ley', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(87, 'Chives - Fresh', 'Outdoors', '36.61', 'Sams', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(88, 'Dry Ice', 'Outdoors', '197.02', 'Chedraui', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(89, 'Squash - Sunburst', 'Movies', '78.17', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(90, 'Muffin Mix - Oatmeal', 'Books', '163.68', 'Walmart', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(91, 'Flower - Commercial Bronze', 'Jewelry', '126.7', 'La ley', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(93, 'Capon - Whole', 'Baby', '187.07', 'Superama', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(94, 'Fish - Halibut, Cold Smoked', 'Sports', '116.19', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(95, 'Chestnuts - Whole,canned', 'Automotive', '149.25', 'Chedraui', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(96, 'Crackers - Graham', 'Jewelry', '104.33', 'La ley', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(97, 'Cranberries - Fresh', 'Sports', '173.3', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(98, 'Sage - Rubbed', 'Shoes', '191.17', 'La ley', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(99, 'Flour - Bran, Red', 'Kids', '93.12', 'Bodega Aurrera', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(100, 'Mussels - Cultivated', 'Outdoors', '187.09', 'Sams', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(101, 'Oxtail - Cut', 'Industrial', '32.98', 'Superama', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(102, 'Scrubbie - Scotchbrite Hand Pad', 'Kids', '57.23', 'Bodega Aurrera', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(103, 'Pork Ham Prager', 'Clothing', '145.49', 'La ley', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(104, 'Table Cloth 91x91 Colour', 'Kids', '84.97', 'Bodega Aurrera', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(105, 'Tuna - Bluefin', 'Industrial', '144.89', 'Costco', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(106, 'Wine - Sicilia Igt Nero Avola', 'Automotive', '45.88', 'Sams', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(107, 'Syrup - Monin - Blue Curacao', 'Electronics', '22.93', 'Chedraui', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(108, 'Steampan Lid', 'Games', '34.02', 'Bodega Aurrera', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(109, 'Bar - Sweet And Salty Chocolate', 'Computers', '146.59', 'Superama', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(110, 'Cheese - Cambozola', 'Music', '63.73', 'Costco', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(111, 'Melon - Watermelon Yellow', 'Clothing', '165.36', 'Superama', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(112, 'Soup Campbells - Tomato Bisque', 'Books', '58.91', 'Sams', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(113, 'Rabbit - Saddles', 'Beauty', '52.93', 'Walmart', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(114, 'Anchovy In Oil', 'Computers', '36.26', 'Sams', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(115, 'Hummus - Spread', 'Automotive', '158.65', 'Sams', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(116, 'Wine - Valpolicella Masi', 'Music', '176.17', 'Costco', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(117, 'Vegetable - Base', 'Baby', '79.12', 'La ley', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(118, 'Wine - Mondavi Coastal Private', 'Kids', '136.49', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(120, 'Bread - Wheat Baguette', 'Tools', '177.48', 'Bodega Aurrera', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(121, 'Bandage - Fexible 1x3', 'Electronics', '179.97', 'Superama', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(122, 'Tea - Jasmin Green', 'Shoes', '190.12', 'Superama', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(123, 'Wine - Saint - Bris 2002, Sauv', 'Grocery', '116.53', 'La ley', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(124, 'Chicken - Livers', 'Sports', '198.7', 'Sams', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(125, 'Coffee - Frthy Coffee Crisp', 'Garden', '160.14', 'La ley', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(126, 'Ice Cream - Life Savers', 'Health', '174.42', 'Bodega Aurrera', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(127, 'Cheese - Gouda', 'Movies', '35.0', 'Costco', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(128, 'Puree - Blackcurrant', 'Movies', '191.29', 'Chedraui', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(129, 'Dragon Fruit', 'Automotive', '155.13', 'Superama', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(130, 'Chef Hat 25cm', 'Sports', '50.81', 'Walmart', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(131, 'Gooseberry', 'Baby', '197.41', 'Bodega Aurrera', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(132, 'Pepper - Chipotle, Canned', 'Tools', '137.88', 'Superama', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(133, 'Venison - Striploin', 'Clothing', '50.82', 'Chedraui', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(134, 'Pesto - Primerba, Paste', 'Grocery', '45.67', 'Sams', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(135, 'Vermouth - White, Cinzano', 'Music', '197.91', 'Chedraui', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(136, 'Ecolab Silver Fusion', 'Beauty', '136.67', 'La ley', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(137, 'Flour Dark Rye', 'Clothing', '114.05', 'Superama', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(138, 'Milk Powder', 'Clothing', '185.18', 'La ley', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(139, 'Crackers - Graham', 'Garden', '109.91', 'Chedraui', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(140, 'Sugar - Monocystal / Rock', 'Baby', '131.04', 'Costco', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(141, 'Baking Soda', 'Automotive', '40.09', 'Bodega Aurrera', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(142, 'Muffin Hinge Container 6', 'Music', '111.86', 'Walmart', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(143, 'Sauerkraut', 'Home', '73.08', 'Walmart', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(144, 'Tart Shells - Barquettes, Savory', 'Shoes', '134.42', 'Chedraui', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(145, 'Chinese Foods - Cantonese', 'Computers', '144.99', 'Sams', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(146, 'Cheese - Fontina', 'Garden', '186.71', 'Superama', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(147, 'Jam - Apricot', 'Sports', '107.66', 'Chedraui', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(148, 'Sugar - Crumb', 'Electronics', '32.84', 'Sams', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(149, 'Wine - Rubyport', 'Games', '121.4', 'Bodega Aurrera', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(150, 'Beer - Alexander Kieths, Pale Ale', 'Industrial', '79.97', 'Costco', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(151, 'Butter Balls Salted', 'Kids', '26.02', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(152, 'Tea - Orange Pekoe', 'Industrial', '185.96', 'La ley', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(153, 'Lid Coffeecup 12oz D9542b', 'Health', '116.55', 'Sams', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(154, 'Ecolab - Power Fusion', 'Grocery', '165.03', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(155, 'Cheese - Wine', 'Sports', '35.25', 'Bodega Aurrera', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(156, 'Anchovy Fillets', 'Grocery', '21.94', 'La ley', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(157, 'Crab - Claws, Snow 16 - 24', 'Beauty', '185.41', 'La ley', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(158, 'Garam Marsala', 'Clothing', '91.15', 'Superama', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(159, 'Sage - Ground', 'Games', '118.26', 'Sams', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(160, 'Cheese - Boursin, Garlic / Herbs', 'Baby', '30.27', 'Superama', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(161, 'Longos - Cheese Tortellini', 'Sports', '65.06', 'Chedraui', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(162, 'Spice - Onion Powder Granulated', 'Outdoors', '33.57', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(163, 'Goldschalger', 'Garden', '147.6', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(164, 'Blue Curacao - Marie Brizard', 'Books', '129.27', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(165, 'Beer - Heinekin', 'Games', '178.33', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(166, 'Chinese Foods - Cantonese', 'Grocery', '46.3', 'Costco', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(167, 'Wine - White, Pelee Island', 'Baby', '157.3', 'Sams', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(168, 'Dried Apple', 'Outdoors', '130.23', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(169, 'Chocolate - Mi - Amere Semi', 'Outdoors', '161.82', 'Chedraui', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(170, 'Table Cloth 81x81 White', 'Toys', '82.46', 'Chedraui', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(171, 'Pork - Bacon, Sliced', 'Baby', '168.7', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(172, 'Oil - Olive Bertolli', 'Automotive', '24.49', 'La ley', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(173, 'Mcguinness - Blue Curacao', 'Toys', '190.66', 'Chedraui', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(174, 'Island Oasis - Peach Daiquiri', 'Grocery', '171.54', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(175, 'Tart - Butter Plain Squares', 'Sports', '175.5', 'La ley', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(176, 'Crab - Blue, Frozen', 'Toys', '186.12', 'Superama', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(177, 'Bread - English Muffin', 'Outdoors', '30.59', 'Costco', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(178, 'Bread - Crusty Italian Poly', 'Shoes', '27.07', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(179, 'Carbonated Water - Blackberry', 'Grocery', '138.5', 'Sams', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(180, 'Cheese - Stilton', 'Garden', '150.92', 'Bodega Aurrera', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(181, 'Lotus Rootlets - Canned', 'Computers', '20.66', 'Bodega Aurrera', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(182, 'Mushrooms - Black, Dried', 'Grocery', '138.63', 'Chedraui', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(183, 'Chocolate - Unsweetened', 'Books', '136.61', 'Sams', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(184, 'Sauce - Vodka Blush', 'Shoes', '52.53', 'La ley', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(185, 'Coriander - Seed', 'Automotive', '44.97', 'Costco', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(186, 'Veal - Bones', 'Outdoors', '47.82', 'Costco', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(187, 'Halibut - Whole, Fresh', 'Music', '38.8', 'Walmart', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(188, 'Kellogs All Bran Bars', 'Jewelry', '72.38', 'Costco', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(189, 'Bowl 12 Oz - Showcase 92012', 'Home', '163.84', 'Bodega Aurrera', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(190, 'Trueblue - Blueberry', 'Games', '85.36', 'Sams', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(191, 'Trueblue - Blueberry', 'Beauty', '46.6', 'Superama', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(192, 'Bread - 10 Grain', 'Electronics', '146.75', 'La ley', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(193, 'Steampan - Half Size Shallow', 'Movies', '87.63', 'La ley', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(194, 'Oven Mitts 17 Inch', 'Home', '67.87', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(195, 'Hold Up Tool Storage Rack', 'Jewelry', '96.93', 'Sams', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(196, 'Cookies - Englishbay Chochip', 'Toys', '114.49', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(197, 'Papayas', 'Books', '158.99', 'Sams', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(198, 'Foam Espresso Cup Plain White', 'Automotive', '70.73', 'Sams', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(199, 'Thyme - Lemon, Fresh', 'Health', '53.6', 'Costco', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(200, 'Chicken - Base', 'Movies', '27.36', 'Sams', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(201, 'Wine - Shiraz Wolf Blass Premium', 'Electronics', '162.36', 'Superama', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(202, 'Milk - Skim', 'Books', '66.57', 'Sams', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(203, 'Orange - Blood', 'Garden', '176.11', 'Superama', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(204, 'Rice - Basmati', 'Grocery', '168.19', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(205, 'Pork - Backs - Boneless', 'Clothing', '49.78', 'Sams', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(206, 'Pomello', 'Music', '41.9', 'Superama', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(207, 'Salmon Steak - Cohoe 6 Oz', 'Beauty', '22.7', 'Costco', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(208, 'Mints - Striped Red', 'Movies', '84.25', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(209, 'Chickhen - Chicken Phyllo', 'Baby', '60.07', 'Chedraui', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(210, 'Sausage - Andouille', 'Grocery', '109.46', 'Bodega Aurrera', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(211, 'Lemonade - Black Cherry, 591 Ml', 'Books', '73.32', 'Superama', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(212, 'Wine - Gato Negro Cabernet', 'Automotive', '167.68', 'Sams', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(213, 'Soup - Campbells, Spinach Crm', 'Shoes', '110.74', 'Walmart', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(214, 'Pasta - Linguini, Dry', 'Grocery', '56.65', 'Chedraui', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(215, 'Coffee - Irish Cream', 'Clothing', '42.18', 'Walmart', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(216, 'Pie Shell - 9', 'Beauty', '21.52', 'Chedraui', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(217, 'Tomato Puree', 'Home', '197.82', 'Chedraui', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(218, 'Cheese - Cheddar With Claret', 'Movies', '117.68', 'Chedraui', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(219, 'Wine - White, Lindemans Bin 95', 'Movies', '102.66', 'La ley', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(221, 'Pork - Bacon,back Peameal', 'Kids', '171.88', 'Bodega Aurrera', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(222, 'Yeast - Fresh, Fleischman', 'Grocery', '100.85', 'La ley', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(223, 'Veal - Slab Bacon', 'Sports', '185.61', 'Chedraui', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(224, 'Nantucket Cranberry Juice', 'Garden', '150.58', 'La ley', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(225, 'Sprouts - Corn', 'Industrial', '184.55', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(226, 'V8 Splash Strawberry Banana', 'Grocery', '60.08', 'Chedraui', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(227, 'Long Island Ice Tea', 'Grocery', '57.76', 'Sams', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(228, 'Island Oasis - Pina Colada', 'Industrial', '49.44', 'Sams', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(229, 'Rum - Dark, Bacardi, Black', 'Home', '137.46', 'Sams', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(230, 'Chocolate - Chips Compound', 'Beauty', '85.43', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(231, 'Bagel - Everything Presliced', 'Electronics', '117.07', 'Bodega Aurrera', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(232, 'Carbonated Water - Cherry', 'Books', '141.03', 'Superama', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(233, 'Wine - Chateauneuf Du Pape', 'Games', '151.1', 'Sams', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(234, 'Lid - 0090 Clear', 'Health', '163.25', 'Walmart', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(235, 'Lobster - Cooked', 'Outdoors', '37.11', 'Superama', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(236, 'Wine - Mas Chicet Rose, Vintage', 'Outdoors', '165.46', 'Bodega Aurrera', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(237, 'Peach - Fresh', 'Books', '20.38', 'Walmart', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(238, 'Munchies Honey Sweet Trail Mix', 'Health', '112.79', 'Bodega Aurrera', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(239, 'Artichoke - Hearts, Canned', 'Games', '62.48', 'La ley', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(240, 'Sprite, Diet - 355ml', 'Sports', '81.71', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(241, 'Creamers - 10%', 'Electronics', '126.36', 'Sams', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(242, 'Liners - Baking Cups', 'Jewelry', '167.11', 'La ley', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(243, 'Vegetable - Base', 'Books', '199.04', 'Walmart', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(244, 'Pork - Kidney', 'Grocery', '100.24', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(245, 'Wine - Piper Heidsieck Brut', 'Industrial', '181.75', 'La ley', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(246, 'Sauce - Roasted Red Pepper', 'Outdoors', '82.84', 'Chedraui', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(247, 'Soup Campbells Beef With Veg', 'Outdoors', '75.38', 'Bodega Aurrera', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(248, 'Appetizer - Escargot Puff', 'Toys', '42.72', 'Sams', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(249, 'The Pop Shoppe - Cream Soda', 'Industrial', '100.64', 'Sams', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(250, 'Pastry - Choclate Baked', 'Jewelry', '93.83', 'Walmart', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(251, 'Muffin Puck Ww Carrot', 'Sports', '112.23', 'Sams', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(252, 'Pears - Bartlett', 'Jewelry', '119.49', 'Walmart', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(253, 'Rappini - Andy Boy', 'Sports', '103.05', 'Costco', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(254, 'Soup - Campbells, Spinach Crm', 'Kids', '35.86', 'Bodega Aurrera', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(255, 'Crab - Blue, Frozen', 'Beauty', '74.98', 'La ley', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(256, 'Beef - Ground, Extra Lean, Fresh', 'Baby', '139.13', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(257, 'Initation Crab Meat', 'Kids', '82.51', 'La ley', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(258, 'Dr. Pepper - 355ml', 'Movies', '105.47', 'Superama', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(259, 'Garam Marsala', 'Clothing', '137.16', 'La ley', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(260, 'Tomatoes - Heirloom', 'Electronics', '64.01', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(261, 'Beans - Butter Lrg Lima', 'Beauty', '22.81', 'Bodega Aurrera', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(262, 'Cake Circle, Foil, Scallop', 'Games', '102.54', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(263, 'Icecream Bar - Del Monte', 'Movies', '41.48', 'Costco', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(264, 'Veal - Inside Round / Top, Lean', 'Grocery', '66.63', 'Chedraui', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(265, 'Beer - Blue', 'Automotive', '48.5', 'Costco', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(266, 'Towel Multifold', 'Sports', '186.98', 'Sams', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(267, 'Wine - Bourgogne 2002, La', 'Baby', '70.01', 'Walmart', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(268, 'Napkin - Dinner, White', 'Movies', '44.17', 'La ley', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(269, 'Bread - Corn Muffaletta', 'Music', '125.19', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(270, 'Wine - Pinot Noir Latour', 'Shoes', '159.15', 'Bodega Aurrera', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(271, 'Appetizer - Asian Shrimp Roll', 'Electronics', '51.04', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(272, 'Sproutsmustard Cress', 'Books', '125.71', 'La ley', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(273, 'Wine - Red, Pinot Noir, Chateau', 'Automotive', '133.09', 'Walmart', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(274, 'Pear - Asian', 'Toys', '32.97', 'Superama', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(275, 'Chicken - Wieners', 'Games', '186.08', 'Superama', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(276, 'Crab - Soft Shell', 'Jewelry', '86.96', 'La ley', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(277, 'Mustard - Dijon', 'Kids', '95.14', 'Walmart', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(278, 'Tea - Jasmin Green', 'Movies', '25.39', 'Walmart', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(279, 'Eggplant - Regular', 'Electronics', '37.0', 'Walmart', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(280, 'Olives - Morracan Dired', 'Kids', '38.45', 'Sams', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(281, 'Dried Peach', 'Beauty', '76.59', 'La ley', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(282, 'Skewers - Bamboo', 'Jewelry', '47.47', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(283, 'Muffin Batt - Choc Chk', 'Grocery', '32.37', 'Bodega Aurrera', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(284, 'Tamarind Paste', 'Kids', '161.97', 'Bodega Aurrera', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(285, 'Celery Root', 'Clothing', '165.85', 'Walmart', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(286, 'Ice Cream - Chocolate', 'Grocery', '63.27', 'Walmart', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(288, 'Potatoes - Yukon Gold 5 Oz', 'Garden', '150.53', 'Walmart', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(289, 'Absolut Citron', 'Toys', '68.0', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(290, 'Beef - Roasted, Cooked', 'Movies', '58.89', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(291, 'Potatoes - Peeled', 'Shoes', '109.68', 'Chedraui', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(292, 'Lid Coffeecup 12oz D9542b', 'Shoes', '176.62', 'La ley', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(293, 'Mop Head - Cotton, 24 Oz', 'Electronics', '26.09', 'Bodega Aurrera', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(294, 'Vodka - Lemon, Absolut', 'Tools', '110.68', 'La ley', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(295, 'Soup - Campbells, Butternut', 'Baby', '75.85', 'Bodega Aurrera', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(296, 'Turkey Tenderloin Frozen', 'Outdoors', '130.48', 'Bodega Aurrera', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(297, 'Tuna - Salad Premix', 'Home', '151.85', 'Costco', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(298, 'Fish - Base, Bouillion', 'Grocery', '184.28', 'Sams', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(299, 'Beef Ground Medium', 'Industrial', '100.93', 'Costco', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(300, 'Calypso - Black Cherry Lemonade', 'Jewelry', '95.53', 'La ley', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(301, 'Ham - Proscuitto', 'Games', '180.77', 'La ley', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(302, 'Molasses - Fancy', 'Grocery', '148.51', 'Walmart', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(303, 'Energy Drink - Franks Original', 'Clothing', '42.65', 'Sams', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(304, 'Soup - Cream Of Potato / Leek', 'Toys', '97.1', 'Superama', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(305, 'Octopus - Baby, Cleaned', 'Electronics', '177.6', 'Bodega Aurrera', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(306, 'Eggplant - Baby', 'Books', '99.63', 'Walmart', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(307, 'Bread - Pita', 'Home', '64.75', 'Chedraui', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(308, 'Salmon Atl.whole 8 - 10 Lb', 'Music', '134.58', 'Superama', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(309, 'Chips - Assorted', 'Outdoors', '159.41', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(310, 'Rice - Aborio', 'Electronics', '71.76', 'Walmart', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(311, 'Tomatoes - Plum, Canned', 'Grocery', '38.45', 'Chedraui', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(312, 'Beans - French', 'Computers', '165.61', 'Costco', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(313, 'Icecream - Dstk Strw Chseck', 'Toys', '196.25', 'Sams', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(314, 'Orange - Blood', 'Jewelry', '105.91', 'Chedraui', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(315, 'Squid - U 5', 'Music', '59.76', 'Walmart', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(316, 'Pasta - Ravioli', 'Toys', '90.5', 'Superama', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(317, 'Cheese - Brie Roitelet', 'Home', '20.21', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(318, 'Sauce - Soya, Dark', 'Kids', '152.56', 'Bodega Aurrera', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(319, 'Nut - Pine Nuts, Whole', 'Books', '184.7', 'Superama', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg');
INSERT INTO `productos` (`producto_id`, `nombre`, `categoria`, `precio`, `nombre_superm`, `image`) VALUES
(320, 'Wine - Cousino Macul Antiguas', 'Games', '177.6', 'Bodega Aurrera', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(321, 'Bread - Kimel Stick Poly', 'Clothing', '114.63', 'Sams', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(322, 'Dooleys Toffee', 'Clothing', '34.09', 'Superama', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(323, 'Puree - Blackcurrant', 'Shoes', '191.9', 'Costco', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(324, 'Seedlings - Mix, Organic', 'Clothing', '186.12', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(325, 'Container - Hngd Cll Blk 7x7x3', 'Movies', '160.56', 'Walmart', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(326, 'Wine - Magnotta - Cab Sauv', 'Automotive', '139.41', 'Sams', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(327, 'Dehydrated Kelp Kombo', 'Baby', '100.78', 'Walmart', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(328, 'Wine - Cahors Ac 2000, Clos', 'Games', '174.47', 'Chedraui', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(329, 'Kellogs Raisan Bran Bars', 'Home', '173.07', 'Sams', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(330, 'Wine - Magnotta - Belpaese', 'Baby', '158.96', 'Costco', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(331, 'Soup - Campbells Pasta Fagioli', 'Baby', '189.05', 'Costco', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(332, 'Butter Sweet', 'Games', '98.27', 'Sams', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(333, 'Flour - Pastry', 'Shoes', '156.47', 'La ley', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(334, 'Juice - Apple Cider', 'Jewelry', '102.13', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(335, 'Mayonnaise', 'Jewelry', '69.77', 'Bodega Aurrera', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(336, 'Bread Country Roll', 'Games', '146.29', 'La ley', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(337, 'Vinegar - Sherry', 'Sports', '109.13', 'Costco', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(338, 'Pork - Bacon Cooked Slcd', 'Jewelry', '40.48', 'Superama', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(339, 'Celery Root', 'Tools', '136.53', 'La ley', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(340, 'Cheese - Blue', 'Beauty', '37.69', 'Chedraui', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(341, 'Muffin - Bran Ind Wrpd', 'Beauty', '67.49', 'Bodega Aurrera', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(342, 'Soup - French Onion', 'Music', '110.46', 'La ley', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(343, 'Knife Plastic - White', 'Movies', '166.89', 'Walmart', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(344, 'Appetizer - Shrimp Puff', 'Home', '167.32', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(345, 'Cheese - Brie', 'Clothing', '126.9', 'Superama', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(346, 'Appetizer - Mini Egg Roll, Shrimp', 'Electronics', '87.42', 'La ley', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(347, 'Soap - Mr.clean Floor Soap', 'Computers', '84.05', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(348, 'Beer - Moosehead', 'Health', '43.67', 'Bodega Aurrera', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(349, 'Eggplant - Regular', 'Shoes', '149.5', 'La ley', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(350, 'Beef - Ox Tongue, Pickled', 'Baby', '94.87', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(351, 'Rum - Cream, Amarula', 'Books', '87.79', 'Costco', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(352, 'Jam - Apricot', 'Games', '192.69', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(353, 'Breakfast Quesadillas', 'Baby', '81.24', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(354, 'Onions - Vidalia', 'Movies', '138.36', 'Sams', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(355, 'Wine - Stoneliegh Sauvignon', 'Sports', '155.48', 'Bodega Aurrera', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(356, 'Wild Boar - Tenderloin', 'Games', '74.78', 'Superama', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(357, 'Versatainer Nc - 9388', 'Toys', '91.4', 'Superama', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(358, 'Kiwi Gold Zespri', 'Tools', '188.38', 'Superama', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(359, 'Sauce - Mint', 'Computers', '35.87', 'Sams', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(360, 'Langers - Ruby Red Grapfruit', 'Health', '146.27', 'Superama', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(361, 'Coffee Cup 8oz 5338cd', 'Garden', '77.14', 'Costco', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(362, 'Wine - Delicato Merlot', 'Home', '53.44', 'Superama', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(363, 'Champagne - Brights, Dry', 'Computers', '135.43', 'Walmart', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(364, 'Sesame Seed Black', 'Beauty', '91.08', 'Superama', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(365, 'Flour - Masa De Harina Mexican', 'Music', '120.61', 'Sams', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(366, 'Vinegar - Rice', 'Beauty', '153.85', 'La ley', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(367, 'Potatoes - Idaho 100 Count', 'Health', '84.86', 'Chedraui', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(368, 'Pepper - Red Thai', 'Tools', '78.13', 'Walmart', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(369, 'Chip - Potato Dill Pickle', 'Music', '92.31', 'Sams', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(371, 'Raisin - Dark', 'Jewelry', '58.23', 'La ley', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(372, 'Carbonated Water - Peach', 'Music', '144.01', 'Superama', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(373, 'Nantucket Orange Juice', 'Shoes', '178.94', 'La ley', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(374, 'Foil - 4oz Custard Cup', 'Tools', '78.46', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(375, 'Appetizer - Tarragon Chicken', 'Baby', '26.33', 'Sams', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(376, 'Cheese - St. Paulin', 'Computers', '32.32', 'Walmart', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(377, 'Wine - Red, Concha Y Toro', 'Sports', '163.03', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(378, 'Wine - Port Late Bottled Vintage', 'Garden', '134.41', 'La ley', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(379, 'Bread - Rosemary Focaccia', 'Industrial', '195.69', 'Bodega Aurrera', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(380, 'Cup Translucent 9 Oz', 'Toys', '119.08', 'La ley', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(381, 'Water - Tonic', 'Music', '188.11', 'Bodega Aurrera', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(382, 'Watercress', 'Home', '183.39', 'Sams', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(383, 'Edible Flower - Mixed', 'Computers', '40.66', 'Superama', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(384, 'Spice - Greek 1 Step', 'Home', '101.37', 'Bodega Aurrera', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(385, 'Chicken - Leg / Back Attach', 'Sports', '146.73', 'Bodega Aurrera', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(386, 'Wine - Zinfandel Rosenblum', 'Movies', '56.17', 'Chedraui', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(387, 'Cheese - Romano, Grated', 'Garden', '83.77', 'Superama', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(388, 'Propel Sport Drink', 'Health', '55.38', 'Costco', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(389, 'Jam - Apricot', 'Beauty', '46.14', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(390, 'Tomatoes - Vine Ripe, Red', 'Games', '135.1', 'Walmart', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(391, 'Pork Ham Prager', 'Electronics', '79.27', 'Chedraui', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(392, 'Beets - Pickled', 'Garden', '142.03', 'Superama', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(393, 'Sauce - Sesame Thai Dressing', 'Health', '142.11', 'La ley', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(394, 'Flour - Buckwheat, Dark', 'Industrial', '68.29', 'Walmart', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(395, 'Versatainer Nc - 8288', 'Jewelry', '176.11', 'La ley', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(396, 'Sugar - Palm', 'Music', '84.41', 'Superama', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(397, 'Potatoes - Idaho 80 Count', 'Music', '57.35', 'Superama', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(398, 'Apricots - Dried', 'Beauty', '104.34', 'Bodega Aurrera', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(399, 'Eggplant - Regular', 'Movies', '149.11', 'Superama', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(400, 'Thyme - Dried', 'Computers', '153.56', 'Costco', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(401, 'Ham - Virginia', 'Sports', '105.98', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(402, 'Turkey - Ground. Lean', 'Clothing', '141.3', 'Costco', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(403, 'Wine - Masi Valpolocell', 'Baby', '81.35', 'Sams', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(404, 'Wine - White, Pinot Grigio', 'Jewelry', '110.61', 'La ley', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(405, 'Cup Translucent 9 Oz', 'Sports', '156.49', 'Sams', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(406, 'Icecream - Dstk Super Cone', 'Home', '62.89', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(407, 'Cake Circle, Paprus', 'Kids', '163.84', 'Walmart', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(408, 'Wine - White, Colubia Cresh', 'Industrial', '117.44', 'Chedraui', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(409, 'Olives - Stuffed', 'Toys', '128.69', 'Costco', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(410, 'Pineapple - Golden', 'Clothing', '84.05', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(411, 'Cheese - Cheddar, Mild', 'Electronics', '169.97', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(412, 'Veal - Slab Bacon', 'Jewelry', '170.9', 'Walmart', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(413, 'Hand Towel', 'Industrial', '39.19', 'Chedraui', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(414, 'Bread - Calabrese Baguette', 'Garden', '80.96', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(415, 'The Pop Shoppe Pinapple', 'Grocery', '125.35', 'Walmart', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(416, 'Cake - Mini Cheesecake', 'Games', '174.41', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(417, 'Cheese - Swiss', 'Home', '86.71', 'Chedraui', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(418, 'Salmon - Fillets', 'Toys', '49.57', 'Superama', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(419, 'Chicken - Leg / Back Attach', 'Sports', '106.03', 'Chedraui', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(420, 'Dc - Sakura Fu', 'Garden', '162.49', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(421, 'Nut - Peanut, Roasted', 'Clothing', '91.36', 'Sams', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(422, 'Tea - Green', 'Beauty', '151.0', 'Chedraui', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(423, 'Oxtail - Cut', 'Garden', '136.55', 'Costco', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(424, 'Pastry - Baked Cinnamon Stick', 'Home', '122.65', 'Sams', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(425, 'Tomatoes', 'Garden', '139.72', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(426, 'Nut - Almond, Blanched, Whole', 'Shoes', '58.52', 'Chedraui', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(427, 'Strawberries - California', 'Books', '131.96', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(428, 'Magnotta - Bel Paese White', 'Books', '61.11', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(429, 'Brandy - Bar', 'Toys', '60.46', 'La ley', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(430, 'Table Cloth 53x53 White', 'Health', '145.96', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(431, 'Sauce - Apple, Unsweetened', 'Industrial', '160.14', 'Walmart', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(432, 'Soup - Knorr, Veg / Beef', 'Movies', '150.37', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(433, 'Veal - Round, Eye Of', 'Games', '60.4', 'Bodega Aurrera', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(434, 'Pork - Loin, Center Cut', 'Grocery', '149.27', 'Chedraui', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(435, 'Bonito Flakes - Toku Katsuo', 'Beauty', '137.82', 'La ley', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(436, 'Pork - Smoked Back Bacon', 'Beauty', '180.96', 'Chedraui', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(437, 'Nantucket - Carrot Orange', 'Health', '189.4', 'Superama', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(438, 'Pasta - Detalini, White, Fresh', 'Games', '179.31', 'Chedraui', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(440, 'Wine - Shiraz Wolf Blass Premium', 'Computers', '112.49', 'Bodega Aurrera', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(441, 'Sobe - Liz Blizz', 'Garden', '76.9', 'Superama', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(442, 'Lamb - Sausage Casings', 'Computers', '37.93', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(443, 'Tea - Grapefruit Green Tea', 'Outdoors', '183.55', 'Sams', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(444, 'Steel Wool', 'Home', '143.2', 'Chedraui', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(445, 'C - Plus, Orange', 'Automotive', '114.33', 'Bodega Aurrera', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(446, 'Appetizer - Sausage Rolls', 'Health', '187.9', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(447, 'Bread - Roll, Calabrese', 'Electronics', '168.07', 'Bodega Aurrera', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(448, 'Muffin Batt - Ban Dream Zero', 'Health', '150.85', 'La ley', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(449, 'Rosemary - Fresh', 'Industrial', '64.4', 'Superama', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(450, 'Lady Fingers', 'Electronics', '154.8', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(451, 'Garam Marsala', 'Beauty', '164.07', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(452, 'Mussels - Frozen', 'Toys', '174.99', 'Chedraui', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(453, 'Oneshot Automatic Soap System', 'Sports', '70.46', 'Costco', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(454, 'Capon - Whole', 'Music', '138.06', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(455, 'Shortbread - Cookie Crumbs', 'Automotive', '92.72', 'Superama', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(456, 'Split Peas - Green, Dry', 'Garden', '76.03', 'Superama', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(457, 'Cookie Chocolate Chip With', 'Health', '79.83', 'Bodega Aurrera', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(458, 'Beef - Top Butt', 'Shoes', '123.23', 'La ley', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(459, 'Energy Drink - Redbull 355ml', 'Electronics', '175.76', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(460, 'Wine - White Cab Sauv.on', 'Games', '163.36', 'Walmart', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(461, 'Lobster - Base', 'Grocery', '22.27', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(462, 'Pomegranates', 'Electronics', '117.6', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(463, 'Glove - Cutting', 'Home', '187.5', 'Walmart', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(464, 'Cheese - Shred Cheddar / Mozza', 'Outdoors', '28.8', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(465, 'Food Colouring - Blue', 'Computers', '90.14', 'Sams', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(466, 'Muffin Hinge Container 6', 'Outdoors', '38.26', 'Superama', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(468, 'Wooden Mop Handle', 'Automotive', '112.46', 'La ley', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(469, 'Raspberries - Frozen', 'Music', '191.65', 'La ley', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(470, 'Paper Cocktail Umberlla 80 - 180', 'Home', '136.27', 'Superama', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(471, 'Lamb - Whole, Fresh', 'Baby', '89.83', 'Chedraui', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(472, 'Lemonade - Island Tea, 591 Ml', 'Grocery', '185.9', 'Sams', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(473, 'Appetizer - Tarragon Chicken', 'Beauty', '51.78', 'Bodega Aurrera', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(474, 'Barley - Pearl', 'Movies', '100.82', 'Walmart', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(475, 'Longos - Chicken Curried', 'Music', '71.39', 'Costco', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(476, 'Tomatoes', 'Games', '177.07', 'La ley', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(477, 'Tomatillo', 'Shoes', '49.18', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(478, 'Carbonated Water - White Grape', 'Home', '195.85', 'Bodega Aurrera', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(479, 'True - Vue Containers', 'Tools', '97.8', 'Superama', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(480, 'Duck - Fat', 'Movies', '32.1', 'Superama', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(481, 'Cheese - Parmigiano Reggiano', 'Books', '150.67', 'Bodega Aurrera', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(482, 'Sorrel - Fresh', 'Beauty', '36.79', 'Chedraui', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(483, 'Bread - Bistro White', 'Electronics', '48.27', 'Bodega Aurrera', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(484, 'Lettuce - Lambs Mash', 'Automotive', '81.79', 'Superama', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(485, 'Chinese Foods - Thick Noodles', 'Automotive', '68.87', 'Bodega Aurrera', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(486, 'Cookies Oatmeal Raisin', 'Outdoors', '49.87', 'Superama', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(487, 'Beans - Black Bean, Canned', 'Home', '110.07', 'Bodega Aurrera', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(488, 'Soho Lychee Liqueur', 'Sports', '20.21', 'Walmart', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(489, 'Beef - Ground Lean Fresh', 'Games', '72.98', 'Chedraui', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(490, 'Pepper - Roasted Red', 'Clothing', '178.94', 'Sams', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(491, 'Quiche Assorted', 'Industrial', '83.58', 'Superama', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(492, 'Egg Patty Fried', 'Games', '160.27', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(493, 'Grenadillo', 'Home', '135.47', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(494, 'Pasta - Lasagna, Dry', 'Beauty', '152.99', 'La ley', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(495, 'Pineapple - Canned, Rings', 'Automotive', '196.39', 'La ley', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(496, 'Lamb Rack Frenched Australian', 'Games', '154.0', 'Bodega Aurrera', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(497, 'Beef - Salted', 'Movies', '161.32', 'Chedraui', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(498, 'Artichokes - Knobless, White', 'Movies', '185.61', 'Bodega Aurrera', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(499, 'Pork - Tenderloin, Fresh', 'Shoes', '95.17', 'Chedraui', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(500, 'Lobster - Cooked', 'Music', '169.67', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(501, 'Pepper - Black, Whole', 'Garden', '178.33', 'Superama', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(502, 'Everfresh Products', 'Sports', '116.58', 'Chedraui', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(503, 'Table Cloth 62x120 Colour', 'Beauty', '158.08', 'La ley', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(504, 'Bread - Calabrese Baguette', 'Tools', '39.31', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(505, 'Lotus Root', 'Automotive', '94.54', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(506, 'Soup - Knorr, Chicken Gumbo', 'Beauty', '38.85', 'Bodega Aurrera', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(507, 'Smoked Tongue', 'Movies', '120.41', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(508, 'Lamb - Loin, Trimmed, Boneless', 'Books', '134.17', 'Bodega Aurrera', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(509, 'Tart Shells - Barquettes, Savory', 'Toys', '139.43', 'La ley', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(510, 'Pasta - Rotini, Colour, Dry', 'Computers', '108.8', 'Sams', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(511, 'Sugar - Cubes', 'Sports', '110.05', 'Costco', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(512, 'Pastry - Plain Baked Croissant', 'Beauty', '56.15', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(513, 'Chambord Royal', 'Games', '27.92', 'Sams', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(514, 'Crush - Orange, 355ml', 'Industrial', '187.23', 'Costco', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(515, 'Wine - Masi Valpolocell', 'Baby', '95.41', 'Bodega Aurrera', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(516, 'Sage - Fresh', 'Health', '87.16', 'Sams', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(517, 'Broom - Push', 'Toys', '68.53', 'La ley', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(518, 'Garbage Bags - Clear', 'Jewelry', '105.38', 'Superama', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(519, 'Extract - Vanilla,artificial', 'Electronics', '199.13', 'Costco', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(520, 'Steampan - Half Size Shallow', 'Computers', '192.29', 'Chedraui', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(521, 'Cookie Dough - Chunky', 'Automotive', '97.03', 'Walmart', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(522, 'Chip - Potato Dill Pickle', 'Movies', '117.1', 'Superama', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(523, 'Fireball Whisky', 'Clothing', '39.31', 'Costco', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(524, 'Table Cloth 53x69 White', 'Health', '94.95', 'La ley', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(525, 'Cake Circle, Foil, Scallop', 'Electronics', '168.83', 'Sams', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(526, 'Fish - Bones', 'Automotive', '173.97', 'La ley', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(527, 'Tea - Herbal Orange Spice', 'Shoes', '175.56', 'Chedraui', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(528, 'Wine - Vidal Icewine Magnotta', 'Tools', '167.58', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(529, 'Bacardi Raspberry', 'Movies', '192.84', 'Superama', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(530, 'Bread Crumbs - Panko', 'Sports', '44.07', 'La ley', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(531, 'Coffee Beans - Chocolate', 'Industrial', '100.52', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(532, 'Island Oasis - Wildberry', 'Movies', '51.42', 'Costco', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(533, 'Tea - Herbal Orange Spice', 'Industrial', '197.66', 'La ley', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(534, 'Cheese - Cheddar, Old White', 'Movies', '180.57', 'Chedraui', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(535, 'Guava', 'Clothing', '55.34', 'Chedraui', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(536, 'Chicken - Leg, Boneless', 'Toys', '49.05', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(537, 'Rice Pilaf, Dry,package', 'Grocery', '91.11', 'Superama', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(538, 'Mop Head - Cotton, 24 Oz', 'Beauty', '46.21', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(539, 'Bread - Crusty Italian Poly', 'Kids', '185.88', 'Walmart', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(540, 'Water Chestnut - Canned', 'Outdoors', '81.7', 'Superama', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(541, 'Pork - Kidney', 'Electronics', '155.65', 'La ley', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `user_id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`user_id`, `nombre`, `email`, `password`, `token`) VALUES
(1, '', 'oscar@gmail.com', '12345', ''),
(2, '', 'omar_23@algo.com', '12345', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detalles_lista`
--
ALTER TABLE `detalles_lista`
  ADD PRIMARY KEY (`detalle_id`),
  ADD KEY `lista_id` (`lista_id`),
  ADD KEY `producto_id` (`producto_id`);

--
-- Indices de la tabla `listas`
--
ALTER TABLE `listas`
  ADD PRIMARY KEY (`lista_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`producto_id`),
  ADD UNIQUE KEY `unique_producto` (`nombre`,`nombre_superm`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `detalles_lista`
--
ALTER TABLE `detalles_lista`
  MODIFY `detalle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `listas`
--
ALTER TABLE `listas`
  MODIFY `lista_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `producto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=542;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalles_lista`
--
ALTER TABLE `detalles_lista`
  ADD CONSTRAINT `detalles_lista_ibfk_1` FOREIGN KEY (`lista_id`) REFERENCES `listas` (`lista_id`),
  ADD CONSTRAINT `detalles_lista_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`producto_id`);

--
-- Filtros para la tabla `listas`
--
ALTER TABLE `listas`
  ADD CONSTRAINT `listas_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
