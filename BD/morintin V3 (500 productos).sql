-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-02-2024 a las 19:52:30
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
(1, 'Arizona - Green Tea', 'Sports', '$2.46', 'La ley', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(2, 'Oranges', 'Beauty', '$7.31', 'Sams', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(3, 'Beef - Ox Tail, Frozen', 'Tools', '$5.72', 'Bodega Aurrera', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(4, 'Carbonated Water - Cherry', 'Computers', '$5.09', 'Walmart', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(5, 'Fish - Base, Bouillion', 'Music', '$6.54', 'La ley', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(6, 'Wine - Toasted Head', 'Automotive', '$8.38', 'Bodega Aurrera', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(7, 'Chicken Breast Halal', 'Computers', '$0.56', 'Chedraui', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(8, 'Beef - Roasted, Cooked', 'Games', '$8.45', 'Costco', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(9, 'Bagel - 12 Grain Preslice', 'Garden', '$0.88', 'Superama', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(10, 'Clams - Bay', 'Beauty', '$7.57', 'Sams', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(11, 'Stock - Veal, Brown', 'Outdoors', '$6.34', 'Sams', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(12, 'Pasta - Fettuccine, Dry', 'Electronics', '$4.40', 'Superama', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(13, 'Halibut - Steaks', 'Books', '$1.89', 'Costco', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(14, 'Cup - 3.5oz, Foam', 'Movies', '$0.72', 'Chedraui', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(15, 'Bols Melon Liqueur', 'Garden', '$7.14', 'Bodega Aurrera', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(16, 'Beer - Rickards Red', 'Kids', '$9.39', 'Costco', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(17, 'Curry Paste - Green Masala', 'Health', '$5.14', 'Chedraui', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(18, 'Lemons', 'Kids', '$2.41', 'Sams', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(19, 'Coffee Guatemala Dark', 'Outdoors', '$5.61', 'Superama', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(20, 'Wasabi Paste', 'Home', '$0.17', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(21, 'Wine - Bouchard La Vignee Pinot', 'Books', '$2.49', 'Sams', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(22, 'Bread - Rye', 'Shoes', '$3.96', 'Walmart', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(23, 'Eggplant - Asian', 'Baby', '$5.98', 'Costco', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(24, 'Pork - Kidney', 'Home', '$8.17', 'Sams', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(25, 'Pastry - Choclate Baked', 'Health', '$1.52', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(26, 'Muffin Mix - Corn Harvest', 'Toys', '$7.56', 'Sams', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(27, 'Snapple - Iced Tea Peach', 'Music', '$8.78', 'Bodega Aurrera', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(28, 'Wine - Toasted Head', 'Computers', '$1.71', 'Walmart', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(29, 'Pumpkin', 'Sports', '$4.46', 'La ley', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(30, 'Lychee', 'Jewelry', '$3.51', 'Chedraui', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(31, 'Cheese - Brick With Pepper', 'Beauty', '$5.25', 'La ley', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(32, 'Potato - Sweet', 'Tools', '$4.38', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(33, 'Mcguinness - Blue Curacao', 'Books', '$0.74', 'Chedraui', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(34, 'Baking Powder', 'Kids', '$9.68', 'Walmart', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(35, 'Appetizer - Seafood Assortment', 'Sports', '$9.68', 'La ley', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(36, 'Wine - Red, Lurton Merlot De', 'Grocery', '$6.37', 'Costco', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(37, 'Bouq All Italian - Primerba', 'Shoes', '$9.77', 'Superama', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(38, 'Roe - Lump Fish, Black', 'Electronics', '$1.55', 'Chedraui', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(39, 'Rum - Dark, Bacardi, Black', 'Tools', '$0.97', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(40, 'Ginger - Pickled', 'Toys', '$1.75', 'Bodega Aurrera', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(41, 'Rambutan', 'Shoes', '$5.41', 'Costco', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(42, 'Creme De Banane - Marie', 'Grocery', '$4.07', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(43, 'Lid - 10,12,16 Oz', 'Garden', '$8.18', 'Sams', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(44, 'Lamb - Shanks', 'Industrial', '$7.81', 'Sams', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(45, 'Juice - Tomato, 10 Oz', 'Shoes', '$0.20', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(46, 'Chicken - Thigh, Bone In', 'Kids', '$1.60', 'La ley', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(47, 'Cheese - Montery Jack', 'Electronics', '$6.77', 'Sams', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(48, 'Lady Fingers', 'Games', '$5.47', 'La ley', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(49, 'Oneshot Automatic Soap System', 'Baby', '$5.25', 'La ley', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(50, 'Wine - Barossa Valley Estate', 'Games', '$6.45', 'Bodega Aurrera', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(51, 'Table Cloth 54x54 Colour', 'Outdoors', '$4.65', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(52, 'Tea Leaves - Oolong', 'Books', '$6.30', 'Bodega Aurrera', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(53, 'Bacardi Mojito', 'Music', '$2.95', 'Sams', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(54, 'Wine - Riesling Dr. Pauly', 'Toys', '$3.73', 'La ley', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(55, 'Breadfruit', 'Clothing', '$6.20', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(56, 'Tilapia - Fillets', 'Grocery', '$8.67', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(57, 'Beef Flat Iron Steak', 'Toys', '$7.07', 'Superama', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(58, 'Pepper - Scotch Bonnet', 'Computers', '$6.17', 'Superama', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(59, 'Lighter - Bbq', 'Outdoors', '$0.67', 'Superama', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(60, 'Cheese - St. Andre', 'Home', '$4.90', 'Sams', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(61, 'Longos - Burritos', 'Kids', '$2.59', 'Bodega Aurrera', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(62, 'Wine - Clavet Saint Emilion', 'Shoes', '$0.22', 'Chedraui', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(63, 'Pepper - Cubanelle', 'Automotive', '$8.70', 'Bodega Aurrera', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(64, 'Wine - Carmenere Casillero Del', 'Toys', '$1.87', 'Superama', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(65, 'Pasta - Fettuccine, Egg, Fresh', 'Electronics', '$5.37', 'La ley', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(66, 'Thyme - Fresh', 'Games', '$1.44', 'La ley', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(67, 'Beef - Tenderlion, Center Cut', 'Outdoors', '$1.49', 'Bodega Aurrera', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(68, 'Beef - Inside Round', 'Games', '$8.54', 'Walmart', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(69, 'Cheese - Romano, Grated', 'Sports', '$0.28', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(70, 'Appetizer - Chicken Satay', 'Grocery', '$2.05', 'Walmart', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(71, 'Pepper - Green', 'Grocery', '$2.39', 'Sams', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(72, 'Beef - Baby, Liver', 'Industrial', '$6.05', 'Costco', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(73, 'Shichimi Togarashi Peppeers', 'Baby', '$7.97', 'Sams', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(74, 'Coffee - Decaffeinato Coffee', 'Toys', '$2.98', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(75, 'Tea - Lemon Scented', 'Toys', '$4.46', 'La ley', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(76, 'Soup Campbells Turkey Veg.', 'Health', '$5.35', 'Bodega Aurrera', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(77, 'Swordfish Loin Portions', 'Garden', '$4.44', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(78, 'Sauce - Chili', 'Shoes', '$5.54', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(79, 'Icecream - Dstk Strw Chseck', 'Grocery', '$2.06', 'Superama', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(80, 'Chicken - Thigh, Bone In', 'Kids', '$4.79', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(81, 'Chicken - Wings, Tip Off', 'Health', '$5.70', 'La ley', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(82, 'Quinoa', 'Clothing', '$2.21', 'La ley', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(83, 'Bread - Bagels, Mini', 'Computers', '$3.31', 'Sams', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(84, 'Chocolate Bar - Reese Pieces', 'Electronics', '$2.95', 'La ley', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(85, 'Saskatoon Berries - Frozen', 'Shoes', '$5.55', 'Costco', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(86, 'Wine - Pinot Noir Pond Haddock', 'Grocery', '$3.65', 'Bodega Aurrera', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(87, 'Raspberries - Fresh', 'Kids', '$5.86', 'Bodega Aurrera', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(88, 'Liners - Baking Cups', 'Music', '$1.35', 'Costco', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(89, 'Soup - Tomato Mush. Florentine', 'Grocery', '$3.69', 'Superama', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(90, 'Rice - Aborio', 'Grocery', '$2.78', 'Chedraui', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(91, 'Wanton Wrap', 'Electronics', '$5.06', 'Sams', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(92, 'Pork - European Side Bacon', 'Clothing', '$3.11', 'Walmart', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(93, 'Raspberries - Frozen', 'Tools', '$0.37', 'Sams', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(94, 'Rabbit - Legs', 'Automotive', '$6.27', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(95, 'Beef - Salted', 'Grocery', '$9.38', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(96, 'Wine - Pinot Noir Latour', 'Electronics', '$4.57', 'Costco', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(97, 'Chips Potato Salt Vinegar 43g', 'Beauty', '$7.43', 'La ley', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(98, 'Currants', 'Tools', '$2.64', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(99, 'Beef - Tenderloin', 'Garden', '$9.27', 'Superama', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(100, 'Sauce - Black Current, Dry Mix', 'Games', '$4.71', 'Bodega Aurrera', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(101, 'Carbonated Water - Peach', 'Tools', '$4.45', 'Superama', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(102, 'Cake - Dulce De Leche', 'Home', '$5.28', 'Bodega Aurrera', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(103, 'Wakami Seaweed', 'Tools', '$6.04', 'Costco', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(104, 'Pastry - Banana Tea Loaf', 'Jewelry', '$6.36', 'Costco', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(105, 'Wine - Chateau Bonnet', 'Sports', '$9.59', 'Sams', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(106, 'Sauce - Alfredo', 'Garden', '$9.13', 'La ley', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(107, 'Noodles - Cellophane, Thin', 'Garden', '$2.10', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(108, 'Greens Mustard', 'Shoes', '$7.68', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(109, 'Asparagus - Green, Fresh', 'Clothing', '$1.64', 'Costco', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(110, 'Beer - Fruli', 'Clothing', '$0.57', 'La ley', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(111, 'Broom - Push', 'Baby', '$6.21', 'Superama', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(112, 'Wine - Chardonnay South', 'Tools', '$3.09', 'Superama', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(113, 'Capon - Breast, Wing On', 'Jewelry', '$0.75', 'Walmart', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(114, 'Langers - Ruby Red Grapfruit', 'Beauty', '$2.53', 'Superama', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(115, 'Lamb Leg - Bone - In Nz', 'Home', '$2.45', 'Superama', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(116, 'Truffle Paste', 'Beauty', '$2.26', 'Chedraui', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(117, 'Paper Cocktail Umberlla 80 - 180', 'Games', '$4.39', 'Chedraui', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(118, 'Pheasants - Whole', 'Shoes', '$5.40', 'Sams', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(119, 'Lambcasing', 'Books', '$5.87', 'Superama', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(120, 'Chocolate Bar - Reese Pieces', 'Health', '$1.76', 'Superama', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(121, 'Wine - Rubyport', 'Sports', '$6.89', 'Bodega Aurrera', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(122, 'Coffee - Almond Amaretto', 'Outdoors', '$2.01', 'Sams', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(123, 'Longos - Burritos', 'Tools', '$0.89', 'Chedraui', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(124, 'Carrots - Mini, Stem On', 'Grocery', '$3.16', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(125, 'Oil - Shortening,liqud, Fry', 'Beauty', '$9.54', 'Walmart', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(126, 'Chick Peas - Dried', 'Music', '$7.74', 'Chedraui', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(127, 'Loaf Pan - 2 Lb, Foil', 'Baby', '$1.00', 'Sams', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(128, 'Beer - Maudite', 'Shoes', '$7.00', 'Bodega Aurrera', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(129, 'Blue Curacao - Marie Brizard', 'Games', '$7.75', 'Superama', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(130, 'Nut - Hazelnut, Whole', 'Health', '$3.95', 'Walmart', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(131, 'Wine - Magnotta, White', 'Grocery', '$8.14', 'Bodega Aurrera', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(132, 'Vinegar - Balsamic', 'Home', '$0.46', 'Walmart', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(133, 'Sprite - 355 Ml', 'Baby', '$4.77', 'Costco', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(134, 'Salt - Rock, Course', 'Tools', '$4.89', 'Bodega Aurrera', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(135, 'Sausage - Andouille', 'Industrial', '$9.59', 'Bodega Aurrera', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(136, 'Wine - Puligny Montrachet A.', 'Health', '$4.46', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(137, 'Icecream Cone - Areo Chocolate', 'Kids', '$4.64', 'Bodega Aurrera', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(138, 'Bok Choy - Baby', 'Computers', '$3.37', 'La ley', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(139, 'Mahi Mahi', 'Baby', '$4.22', 'Sams', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(140, 'Shrimp - 100 / 200 Cold Water', 'Tools', '$6.39', 'Walmart', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(141, 'Soup Knorr Chili With Beans', 'Kids', '$1.93', 'Costco', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(142, 'Soup - Knorr, Chicken Gumbo', 'Home', '$5.39', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(143, 'Longos - Grilled Chicken With', 'Games', '$5.85', 'La ley', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(144, 'Wine - Puligny Montrachet A.', 'Clothing', '$3.02', 'La ley', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(145, 'Muffin Hinge - 211n', 'Baby', '$8.46', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(146, 'Appetizer - Shrimp Puff', 'Grocery', '$8.92', 'Chedraui', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(147, 'Steampan - Lid For Half Size', 'Games', '$0.34', 'Bodega Aurrera', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(148, 'Lamb - Loin Chops', 'Books', '$8.76', 'Bodega Aurrera', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(149, 'Evaporated Milk - Skim', 'Shoes', '$5.81', 'Costco', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(150, 'V8 Splash Strawberry Kiwi', 'Computers', '$3.70', 'Walmart', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(151, 'Marsala - Sperone, Fine, D.o.c.', 'Beauty', '$0.52', 'Sams', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(152, 'Tea - Orange Pekoe', 'Garden', '$1.53', 'Chedraui', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(153, 'Veal - Eye Of Round', 'Toys', '$7.72', 'Superama', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(154, 'Towel Multifold', 'Home', '$9.45', 'La ley', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(155, 'Creamers - 10%', 'Sports', '$7.23', 'Superama', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(156, 'Scotch - Queen Anne', 'Electronics', '$4.06', 'Walmart', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(157, 'Tia Maria', 'Industrial', '$8.76', 'Costco', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(158, 'Tomatoes - Grape', 'Music', '$5.97', 'Sams', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(159, 'Paper Cocktail Umberlla 80 - 180', 'Industrial', '$4.71', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(160, 'Cranberry Foccacia', 'Jewelry', '$2.25', 'Walmart', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(161, 'Wine - Black Tower Qr', 'Automotive', '$4.81', 'Sams', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(162, 'Cheese - Swiss', 'Outdoors', '$5.89', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(163, 'Chick Peas - Canned', 'Books', '$2.79', 'Chedraui', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(164, 'Chestnuts - Whole,canned', 'Electronics', '$2.76', 'Bodega Aurrera', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(165, 'Sandwich Wrap', 'Shoes', '$5.49', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(166, 'Corn - Cream, Canned', 'Movies', '$0.37', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(167, 'Bread - Ciabatta Buns', 'Electronics', '$6.29', 'Walmart', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(168, 'Sausage - Meat', 'Home', '$7.16', 'Chedraui', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(169, 'Calvados - Boulard', 'Toys', '$5.11', 'Sams', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(170, 'Truffle Shells - Semi - Sweet', 'Shoes', '$7.55', 'Costco', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(171, 'Bay Leaf', 'Kids', '$3.00', 'La ley', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(172, 'Wine - Balbach Riverside', 'Games', '$1.41', 'La ley', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(173, 'Lychee - Canned', 'Jewelry', '$9.80', 'Superama', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(174, 'Plate Foam Laminated 9in Blk', 'Movies', '$4.73', 'Bodega Aurrera', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(175, 'Tuna - Loin', 'Computers', '$8.81', 'Superama', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(176, 'Bagel - 12 Grain Preslice', 'Outdoors', '$4.03', 'Chedraui', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(177, 'Wine - Redchard Merritt', 'Books', '$6.40', 'Superama', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(178, 'Caviar - Salmon', 'Automotive', '$6.09', 'Bodega Aurrera', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(179, 'Wine - Fat Bastard Merlot', 'Jewelry', '$9.64', 'La ley', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(180, 'Cake - Pancake', 'Toys', '$8.44', 'La ley', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(181, 'Soup - Campbells, Creamy', 'Toys', '$2.64', 'Superama', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(182, 'Bread Base - Italian', 'Sports', '$8.91', 'Bodega Aurrera', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(183, 'Pasta - Shells, Medium, Dry', 'Electronics', '$0.69', 'Bodega Aurrera', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(184, 'Wakami Seaweed', 'Garden', '$4.22', 'La ley', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(185, 'Kirsch - Schloss', 'Shoes', '$3.75', 'Chedraui', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(186, 'Shrimp - 31/40', 'Computers', '$9.29', 'Superama', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(187, 'Salmon - Atlantic, Fresh, Whole', 'Jewelry', '$1.18', 'La ley', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(188, 'Cheese - Manchego, Spanish', 'Automotive', '$4.65', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(189, 'Wine - Two Oceans Sauvignon', 'Grocery', '$7.67', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(190, 'Breadfruit', 'Electronics', '$6.10', 'Sams', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(191, 'Venison - Liver', 'Sports', '$9.89', 'Sams', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(192, 'Cookies Cereal Nut', 'Shoes', '$4.93', 'Costco', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(193, 'Aromat Spice / Seasoning', 'Movies', '$3.86', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(194, 'Yogurt - Peach, 175 Gr', 'Baby', '$1.92', 'Walmart', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(195, 'Bread - Pullman, Sliced', 'Grocery', '$3.14', 'La ley', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(196, 'Compound - Strawberry', 'Electronics', '$5.36', 'Superama', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(197, 'Cake - Dulce De Leche', 'Shoes', '$7.23', 'Sams', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(198, 'Pate - Cognac', 'Sports', '$6.08', 'La ley', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(199, 'Fennel', 'Electronics', '$8.83', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(200, 'Cake - Miini Cheesecake Cherry', 'Clothing', '$0.39', 'Sams', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(201, 'Cake - Bande Of Fruit', 'Outdoors', '$3.69', 'Walmart', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(202, 'Beer - Labatt Blue', 'Clothing', '$6.76', 'Chedraui', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(203, 'Corn - On The Cob', 'Electronics', '$1.15', 'Bodega Aurrera', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(204, 'Nantuket Peach Orange', 'Garden', '$0.00', 'Sams', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(205, 'Soap - Hand Soap', 'Health', '$8.91', 'Bodega Aurrera', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(206, 'Chinese Foods - Chicken Wing', 'Electronics', '$2.23', 'Bodega Aurrera', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(207, 'Strawberries - California', 'Tools', '$3.32', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(208, 'Parsnip', 'Home', '$0.11', 'Chedraui', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(209, 'Basil - Primerba, Paste', 'Clothing', '$2.14', 'Sams', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(210, 'Gelatine Leaves - Envelopes', 'Kids', '$0.11', 'La ley', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(211, 'Fudge - Chocolate Fudge', 'Grocery', '$5.27', 'Sams', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(212, 'Appetizer - Crab And Brie', 'Computers', '$6.91', 'Costco', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(213, 'Crackers - Trio', 'Toys', '$6.39', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(214, 'Soup Campbells Beef With Veg', 'Electronics', '$7.73', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(216, 'Foam Dinner Plate', 'Jewelry', '$0.94', 'Walmart', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(217, 'Tomatoes - Orange', 'Computers', '$1.73', 'Sams', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(218, 'Mix - Cappucino Cocktail', 'Toys', '$0.25', 'Sams', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(219, 'Wine - Vovray Sec Domaine Huet', 'Tools', '$6.93', 'La ley', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(220, 'Plasticforkblack', 'Movies', '$5.42', 'Chedraui', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(221, 'Fiddlehead - Frozen', 'Baby', '$6.59', 'Bodega Aurrera', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(222, 'Longos - Assorted Sandwich', 'Music', '$6.62', 'Bodega Aurrera', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(223, 'Pasta - Penne Primavera, Single', 'Tools', '$1.66', 'Sams', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(224, 'Cheese - Stilton', 'Music', '$3.26', 'Sams', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(225, 'Broom - Angled', 'Music', '$4.10', 'Superama', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(226, 'Wine - Jaboulet Cotes Du Rhone', 'Outdoors', '$0.94', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(227, 'Sausage - Chorizo', 'Jewelry', '$9.62', 'Walmart', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(228, 'Danishes - Mini Cheese', 'Health', '$7.77', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(229, 'Cake - French Pear Tart', 'Outdoors', '$4.05', 'Bodega Aurrera', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(230, 'Dates', 'Outdoors', '$9.47', 'Superama', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(231, 'Cheese - Bocconcini', 'Books', '$0.35', 'Walmart', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(232, 'Oil - Safflower', 'Health', '$3.76', 'Chedraui', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(233, 'Muffin - Banana Nut Individual', 'Books', '$8.83', 'Chedraui', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(234, 'Bread - Wheat Baguette', 'Home', '$4.60', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(235, 'Napkin - Dinner, White', 'Electronics', '$6.39', 'Costco', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(236, 'Remy Red Berry Infusion', 'Beauty', '$4.80', 'Sams', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(237, 'Cheese - Grie Des Champ', 'Jewelry', '$7.82', 'Sams', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(238, 'Broom - Push', 'Industrial', '$8.72', 'Bodega Aurrera', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(239, 'Parsley Italian - Fresh', 'Sports', '$7.02', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(240, 'Kiwi Gold Zespri', 'Music', '$8.39', 'Superama', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(241, 'Beef - Eye Of Round', 'Toys', '$0.35', 'Bodega Aurrera', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(242, 'Rabbit - Saddles', 'Books', '$7.28', 'Superama', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(243, 'Apple - Northern Spy', 'Music', '$7.68', 'Sams', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(244, 'Calypso - Lemonade', 'Tools', '$5.44', 'Chedraui', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(245, 'Cheese - Augre Des Champs', 'Garden', '$6.98', 'Chedraui', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(246, 'Sandwich Wrap', 'Baby', '$3.40', 'La ley', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(247, 'Wakami Seaweed', 'Industrial', '$3.72', 'Walmart', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(248, 'Nestea - Ice Tea, Diet', 'Clothing', '$7.30', 'La ley', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(249, 'Potatoes - Purple, Organic', 'Computers', '$7.99', 'La ley', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(250, 'Club Soda - Schweppes, 355 Ml', 'Outdoors', '$0.93', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(251, 'Milk - 2% 250 Ml', 'Sports', '$3.72', 'Superama', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(252, 'Scallops - 10/20', 'Music', '$5.86', 'Superama', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(253, 'Brocolinni - Gaylan, Chinese', 'Shoes', '$6.84', 'La ley', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(254, 'Apple - Fuji', 'Books', '$0.61', 'Chedraui', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(255, 'Appetizer - Asian Shrimp Roll', 'Jewelry', '$3.91', 'Bodega Aurrera', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(256, 'Coffee Beans - Chocolate', 'Clothing', '$0.44', 'Superama', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(257, 'Wine - Rosso Del Veronese Igt', 'Health', '$2.41', 'Sams', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(258, 'Bagel - Sesame Seed Presliced', 'Health', '$8.00', 'Sams', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(259, 'Milk - 1%', 'Movies', '$6.82', 'Bodega Aurrera', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(260, 'Sansho Powder', 'Sports', '$0.76', 'Walmart', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(261, 'Bread - Roll, Canadian Dinner', 'Garden', '$4.42', 'Bodega Aurrera', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(262, 'Bread - 10 Grain Parisian', 'Health', '$9.31', 'La ley', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(263, 'Mushroom - Morel Frozen', 'Computers', '$1.92', 'Chedraui', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(264, 'Cheese - Goat With Herbs', 'Books', '$4.37', 'Walmart', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(265, 'Beer - Sleeman Fine Porter', 'Grocery', '$1.43', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(266, 'Sauce - Oyster', 'Tools', '$5.55', 'La ley', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(267, 'Bamboo Shoots - Sliced', 'Outdoors', '$7.28', 'Superama', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(268, 'Wine - Charddonnay Errazuriz', 'Clothing', '$7.16', 'Sams', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(269, 'Plasticspoonblack', 'Toys', '$6.85', 'Chedraui', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(270, 'Soup - Campbells Asian Noodle', 'Games', '$0.53', 'La ley', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(271, 'Wine - Sake', 'Tools', '$0.34', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(272, 'Sauce - Soy Low Sodium - 3.87l', 'Jewelry', '$7.65', 'Sams', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(273, 'Pastry - Banana Muffin - Mini', 'Automotive', '$8.55', 'Costco', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(274, 'Syrup - Chocolate', 'Home', '$6.42', 'Chedraui', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(275, 'Flour - Strong Pizza', 'Games', '$5.15', 'Walmart', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(276, 'The Pop Shoppe - Root Beer', 'Garden', '$3.29', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(277, 'Bar Mix - Pina Colada, 355 Ml', 'Tools', '$1.16', 'Sams', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(278, 'Oil - Canola', 'Toys', '$3.99', 'Bodega Aurrera', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(279, 'Wine - Chateau Timberlay', 'Clothing', '$9.64', 'Walmart', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(280, 'Slt - Individual Portions', 'Electronics', '$6.45', 'Superama', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(281, 'Ice Cream - Chocolate', 'Grocery', '$4.24', 'Costco', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(282, 'Calypso - Lemonade', 'Health', '$6.62', 'Bodega Aurrera', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(283, 'Ecolab - Orange Frc, Cleaner', 'Jewelry', '$6.75', 'Bodega Aurrera', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(284, 'Cheese - Asiago', 'Beauty', '$7.38', 'Bodega Aurrera', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(285, 'Puree - Pear', 'Toys', '$8.29', 'Bodega Aurrera', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(286, 'Beer - Camerons Auburn', 'Games', '$0.56', 'La ley', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(287, 'Beer - Mcauslan Apricot', 'Outdoors', '$5.59', 'Sams', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(288, 'Pasta - Canelloni, Single Serve', 'Computers', '$3.64', 'Costco', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(289, 'Wine - Fontanafredda Barolo', 'Automotive', '$0.99', 'Sams', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(290, 'Irish Cream - Baileys', 'Toys', '$0.36', 'La ley', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(291, 'Edible Flower - Mixed', 'Music', '$3.22', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(292, 'Creme De Menthe Green', 'Tools', '$7.09', 'Costco', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(293, 'Squid - Tubes / Tenticles 10/20', 'Toys', '$7.16', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(294, 'Lychee', 'Garden', '$7.53', 'Sams', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(295, 'Cheese - Valancey', 'Tools', '$9.70', 'Bodega Aurrera', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(296, 'Beans - Kidney, Red Dry', 'Movies', '$6.95', 'Sams', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(297, 'Lobster - Canned Premium', 'Computers', '$1.39', 'Sams', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(298, 'Campari', 'Outdoors', '$7.80', 'Sams', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(299, 'Muffin Mix - Morning Glory', 'Electronics', '$9.37', 'Chedraui', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(300, 'Olives - Black, Pitted', 'Garden', '$4.66', 'Sams', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(301, 'Carbonated Water - Lemon Lime', 'Grocery', '$6.95', 'Costco', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(302, 'Table Cloth 62x114 Colour', 'Tools', '$6.53', 'Chedraui', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(303, 'Cheese - Cambozola', 'Garden', '$2.32', 'La ley', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(304, 'Ham - Black Forest', 'Kids', '$0.96', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(305, 'Cookies - Englishbay Oatmeal', 'Baby', '$9.61', 'Sams', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(306, 'Truffle Shells - White Chocolate', 'Games', '$6.57', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(307, 'Bagels Poppyseed', 'Automotive', '$4.72', 'Chedraui', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(308, 'Rum - Cream, Amarula', 'Games', '$3.39', 'Superama', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(309, 'Praline Paste', 'Automotive', '$7.11', 'Bodega Aurrera', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(310, 'Tart Shells - Savory, 4', 'Games', '$1.45', 'Sams', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(311, 'Beef - Cow Feet Split', 'Music', '$3.11', 'Costco', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(312, 'Puff Pastry - Slab', 'Industrial', '$4.37', 'Chedraui', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(313, 'Veal - Brisket, Provimi, Bone - In', 'Home', '$8.49', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(314, 'Bandage - Finger Cots', 'Toys', '$1.82', 'Sams', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(315, 'Water, Tap', 'Sports', '$1.96', 'Walmart', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(316, 'Soup - Campbells', 'Garden', '$1.66', 'La ley', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(317, 'Soupcontfoam16oz 116con', 'Grocery', '$2.88', 'La ley', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(318, 'Wine - Tio Pepe Sherry Fino', 'Baby', '$2.22', 'Walmart', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(319, 'Container Clear 8 Oz', 'Kids', '$7.76', 'Costco', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg');
INSERT INTO `productos` (`producto_id`, `nombre`, `categoria`, `precio`, `nombre_superm`, `image`) VALUES
(320, 'Pepper - Chipotle, Canned', 'Electronics', '$1.93', 'Walmart', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(321, 'Doilies - 7, Paper', 'Books', '$0.66', 'Walmart', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(322, 'Beer - Guiness', 'Automotive', '$3.71', 'Bodega Aurrera', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(323, 'Devonshire Cream', 'Electronics', '$4.20', 'La ley', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(324, 'Wine - White, Cooking', 'Tools', '$3.05', 'Bodega Aurrera', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(325, 'Beef Ground Medium', 'Music', '$2.17', 'Costco', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(326, 'Turkey - Breast, Smoked', 'Games', '$8.52', 'Walmart', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(327, 'Juice - Tomato, 48 Oz', 'Beauty', '$0.46', 'Bodega Aurrera', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(328, 'Macaroons - Homestyle Two Bit', 'Computers', '$2.68', 'Bodega Aurrera', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(329, 'Ice Cream - Super Sandwich', 'Games', '$5.37', 'Sams', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(330, 'Scallop - St. Jaques', 'Beauty', '$7.25', 'Sams', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(331, 'Spoon - Soup, Plastic', 'Music', '$0.83', 'Bodega Aurrera', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(332, 'Pears - Fiorelle', 'Movies', '$6.93', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(333, 'Nori Sea Weed - Gold Label', 'Garden', '$6.53', 'Bodega Aurrera', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(334, 'Cheese - Roquefort Pappillon', 'Books', '$6.90', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(335, 'Salmon Steak - Cohoe 8 Oz', 'Outdoors', '$6.28', 'Walmart', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(336, 'Potatoes - Idaho 80 Count', 'Jewelry', '$6.13', 'Sams', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(337, 'Mushrooms - Black, Dried', 'Beauty', '$1.42', 'La ley', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(338, 'Dc - Frozen Momji', 'Baby', '$2.49', 'Chedraui', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(339, 'Sauce - White, Mix', 'Industrial', '$5.62', 'La ley', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(340, 'Olive - Spread Tapenade', 'Games', '$9.44', 'La ley', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(341, 'Flour - So Mix Cake White', 'Kids', '$0.21', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(342, 'Sugar - Crumb', 'Games', '$5.15', 'La ley', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(343, 'Cattail Hearts', 'Clothing', '$6.29', 'Walmart', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(344, 'Lamb Rack - Ontario', 'Sports', '$7.38', 'Costco', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(345, 'Bar Bran Honey Nut', 'Industrial', '$8.56', 'Bodega Aurrera', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(346, 'Calypso - Pineapple Passion', 'Movies', '$5.00', 'Costco', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(347, 'Beets - Candy Cane, Organic', 'Movies', '$4.70', 'La ley', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(348, 'Tumeric', 'Home', '$1.38', 'Walmart', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(349, 'Carbonated Water - Blackberry', 'Grocery', '$9.88', 'Bodega Aurrera', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(350, 'Dates', 'Music', '$3.02', 'Chedraui', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(351, 'Liqueur Banana, Ramazzotti', 'Music', '$1.36', 'Bodega Aurrera', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(352, 'Lamb - Shoulder, Boneless', 'Tools', '$5.62', 'Superama', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(353, 'Pepsi - Diet, 355 Ml', 'Jewelry', '$5.88', 'La ley', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(354, 'Vinegar - Sherry', 'Health', '$3.32', 'La ley', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(355, 'Longan', 'Home', '$7.63', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(356, 'Beer - Moosehead', 'Clothing', '$8.70', 'Superama', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(357, 'Cream - 18%', 'Garden', '$5.91', 'Sams', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(358, 'Clams - Canned', 'Games', '$4.11', 'Superama', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(359, 'Soup - Campbells Tomato Ravioli', 'Clothing', '$8.49', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(360, 'Beef - Rib Roast, Cap On', 'Toys', '$0.71', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(361, 'Octopus - Baby, Cleaned', 'Baby', '$3.66', 'Sams', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(362, 'Beef - Top Butt Aaa', 'Electronics', '$3.33', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(363, 'Soup - Campbells Beef Noodle', 'Computers', '$5.69', 'Superama', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(364, 'Soup - Campbells, Lentil', 'Clothing', '$1.31', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(365, 'Blueberries - Frozen', 'Outdoors', '$8.93', 'Walmart', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(366, 'Cheese - Cottage Cheese', 'Music', '$1.06', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(367, 'Bread Crumbs - Panko', 'Kids', '$7.12', 'La ley', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(368, 'Beans - Kidney White', 'Health', '$6.48', 'La ley', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(369, 'Lobster - Base', 'Jewelry', '$7.48', 'Superama', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(370, 'Lid - 16 Oz And 32 Oz', 'Home', '$4.33', 'Bodega Aurrera', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(371, 'Sausage - Chorizo', 'Beauty', '$1.29', 'Chedraui', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(372, 'Beef - Ground Lean Fresh', 'Grocery', '$7.93', 'Bodega Aurrera', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(373, 'Pomegranates', 'Grocery', '$9.37', 'Sams', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(374, 'Vanilla Beans', 'Music', '$4.13', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(375, 'Muffin Orange Individual', 'Jewelry', '$3.48', 'Superama', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(376, 'Hot Chocolate - Individual', 'Computers', '$5.72', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(377, 'Water - Tonic', 'Electronics', '$1.88', 'La ley', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(378, 'Roe - Lump Fish, Black', 'Automotive', '$8.88', 'La ley', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(379, 'Soup - Base Broth Beef', 'Clothing', '$7.59', 'Sams', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(380, 'Shrimp - Black Tiger 8 - 12', 'Games', '$1.59', 'Bodega Aurrera', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(381, 'Island Oasis - Sweet And Sour Mix', 'Computers', '$8.18', 'Sams', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(382, 'Croissant, Raw - Mini', 'Garden', '$0.29', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(383, 'Brandy Cherry - Mcguinness', 'Computers', '$6.98', 'La ley', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(384, 'Bread - Roll, Soft White Round', 'Health', '$9.30', 'Sams', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(385, 'Lamb Rack Frenched Australian', 'Garden', '$8.04', 'Superama', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(386, 'Pumpkin - Seed', 'Music', '$1.17', 'Bodega Aurrera', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(387, 'Quail - Whole, Boneless', 'Baby', '$4.20', 'Superama', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(388, 'Turkey - Breast, Boneless Sk On', 'Games', '$6.80', 'Costco', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(389, 'Bread - Raisin Walnut Pull', 'Computers', '$5.65', 'Bodega Aurrera', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(390, 'Nut - Walnut, Chopped', 'Industrial', '$0.56', 'Bodega Aurrera', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(391, 'Bread - Onion Focaccia', 'Kids', '$1.79', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(392, 'Chips Potato Swt Chilli Sour', 'Jewelry', '$4.37', 'La ley', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(393, 'Cucumber - English', 'Jewelry', '$0.25', 'Sams', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(394, 'Sprite, Diet - 355ml', 'Shoes', '$0.09', 'Superama', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(395, 'Oranges - Navel, 72', 'Outdoors', '$3.67', 'Bodega Aurrera', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(396, 'Soup - Campbells Beef Stew', 'Grocery', '$0.69', 'Costco', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(397, 'Cup - 6oz, Foam', 'Games', '$5.41', 'Walmart', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(398, 'Ocean Spray - Kiwi Strawberry', 'Automotive', '$7.80', 'Superama', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(400, 'English Muffin', 'Clothing', '$1.08', 'La ley', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(401, 'Cups 10oz Trans', 'Jewelry', '$9.02', 'Walmart', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(402, 'Loquat', 'Automotive', '$3.59', 'Costco', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(403, 'Artichoke - Bottom, Canned', 'Industrial', '$2.67', 'Chedraui', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(404, 'Southern Comfort', 'Grocery', '$2.85', 'Bodega Aurrera', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(405, 'Sugar - Palm', 'Home', '$6.06', 'La ley', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(406, 'Tea - Decaf 1 Cup', 'Shoes', '$1.42', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(407, 'Rice - Basmati', 'Industrial', '$2.03', 'Bodega Aurrera', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(408, 'Muffin Hinge - 211n', 'Books', '$1.30', 'Superama', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(409, 'Sambuca Cream', 'Baby', '$3.19', 'Walmart', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(410, 'Pails With Lids', 'Automotive', '$0.39', 'Bodega Aurrera', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(411, 'Oil - Shortening,liqud, Fry', 'Clothing', '$3.07', 'Costco', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(413, 'Bread - Calabrese Baguette', 'Automotive', '$7.85', 'Bodega Aurrera', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(414, 'Wine - Champagne Brut Veuve', 'Games', '$8.37', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(415, 'Wine - White, Ej Gallo', 'Health', '$6.16', 'Superama', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(416, 'Lettuce - Lolla Rosa', 'Beauty', '$4.68', 'Bodega Aurrera', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(417, 'Capers - Pickled', 'Baby', '$3.35', 'La ley', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(418, 'Cheese - Parmesan Cubes', 'Games', '$7.86', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(419, 'Eggs - Extra Large', 'Health', '$3.38', 'Walmart', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(420, 'Appetizer - Spring Roll, Veg', 'Industrial', '$6.19', 'Superama', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(421, 'Sauce - Hoisin', 'Garden', '$1.45', 'Superama', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(422, 'Glass - Juice Clear 5oz 55005', 'Home', '$4.16', 'Sams', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(423, 'Beans - Fava, Canned', 'Health', '$8.40', 'Costco', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(424, 'Ecolab - Lime - A - Way 4/4 L', 'Home', '$7.93', 'Chedraui', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(425, 'Snapple Lemon Tea', 'Home', '$7.00', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(426, 'Crab - Dungeness, Whole, live', 'Sports', '$8.52', 'Costco', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(427, 'Five Alive Citrus', 'Grocery', '$8.08', 'Chedraui', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(428, 'Garlic - Elephant', 'Toys', '$4.15', 'Chedraui', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(429, 'Quail - Jumbo', 'Music', '$8.43', 'Superama', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(430, 'Apple - Northern Spy', 'Books', '$2.90', 'Bodega Aurrera', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(431, 'Mace Ground', 'Baby', '$1.72', 'Superama', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(432, 'Icecream - Dstk Strw Chseck', 'Books', '$0.13', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(433, 'Sugar - Invert', 'Books', '$6.08', 'La ley', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(434, 'Stainless Steel Cleaner Vision', 'Automotive', '$1.49', 'Superama', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(435, 'Banana Turning', 'Garden', '$6.44', 'Bodega Aurrera', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(436, 'Lemons', 'Home', '$2.49', 'Bodega Aurrera', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(437, 'Yogurt - Raspberry, 175 Gr', 'Baby', '$7.48', 'Chedraui', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(438, 'Sugar - Cubes', 'Health', '$1.74', 'La ley', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(439, 'Sauce - Demi Glace', 'Kids', '$2.47', 'Sams', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(440, 'Beans - Turtle, Black, Dry', 'Clothing', '$0.81', 'Costco', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(441, 'Irish Cream - Butterscotch', 'Baby', '$5.44', 'Walmart', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(442, 'Carbonated Water - Raspberry', 'Games', '$6.60', 'Walmart', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(443, 'Muffin Batt - Ban Dream Zero', 'Home', '$7.64', 'Walmart', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(444, 'Cornstarch', 'Grocery', '$5.31', 'Chedraui', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(445, 'Bread - Olive', 'Health', '$0.50', 'La ley', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(446, 'Zucchini - Mini, Green', 'Games', '$7.79', 'La ley', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(447, 'Sword Pick Asst', 'Games', '$3.30', 'Bodega Aurrera', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(448, 'Bread - Olive', 'Outdoors', '$9.10', 'Bodega Aurrera', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(449, 'Beef Cheek Fresh', 'Games', '$5.77', 'Superama', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(450, 'Beef - Sushi Flat Iron Steak', 'Outdoors', '$0.54', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(451, 'Tea - Jasmin Green', 'Grocery', '$1.25', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(452, 'Coffee - Dark Roast', 'Books', '$6.00', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(453, 'Bacardi Limon', 'Toys', '$6.77', 'Walmart', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(454, 'Pastry - Chocolate Chip Muffin', 'Books', '$6.49', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(455, 'Wine - Chateau Aqueria Tavel', 'Sports', '$2.05', 'Sams', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(456, 'Salt - Kosher', 'Tools', '$8.82', 'Costco', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(457, 'Noodles - Cellophane, Thin', 'Music', '$2.07', 'La ley', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(458, 'Oven Mitt - 13 Inch', 'Baby', '$7.52', 'Superama', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(459, 'Lamb - Whole Head Off,nz', 'Music', '$4.36', 'Bodega Aurrera', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(460, 'Containter - 3oz Microwave Rect.', 'Games', '$0.66', 'Walmart', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(461, 'Shrimp, Dried, Small / Lb', 'Sports', '$6.98', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(462, 'Leeks - Large', 'Games', '$2.75', 'Bodega Aurrera', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(463, 'Cheese - Brie', 'Books', '$6.72', 'Superama', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(464, 'Juice - Happy Planet', 'Home', '$1.41', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(465, 'Bowl 12 Oz - Showcase 92012', 'Automotive', '$0.91', 'Sams', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(466, 'Seedlings - Clamshell', 'Electronics', '$0.21', 'Walmart', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(467, 'Pepsi - 600ml', 'Movies', '$9.00', 'Superama', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(468, 'Beef - Ox Tongue, Pickled', 'Tools', '$4.12', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(469, 'Tomato - Green', 'Baby', '$3.71', 'Bodega Aurrera', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(470, 'Fiddlehead - Frozen', 'Industrial', '$8.56', 'Costco', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(471, 'Chinese Lemon Pork', 'Sports', '$3.30', 'Walmart', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(472, 'Beer - Steamwhistle', 'Health', '$5.30', 'Walmart', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(473, 'Onions - Green', 'Computers', '$9.17', 'Superama', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(474, 'Salt - Table', 'Toys', '$3.52', 'Bodega Aurrera', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(475, 'Tea - Camomele', 'Clothing', '$1.80', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(476, 'Red Pepper Paste', 'Baby', '$5.56', 'Bodega Aurrera', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(477, 'Pan Grease', 'Garden', '$3.80', 'Superama', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(478, 'Pepper - Pablano', 'Shoes', '$0.30', 'Costco', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(479, 'Table Cloth 54x54 Colour', 'Games', '$0.05', 'Superama', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(480, 'Pork - Ham, Virginia', 'Garden', '$4.72', 'Bodega Aurrera', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(481, 'Cheese - Brie', 'Sports', '$0.36', 'Sams', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(482, 'Salsify, Organic', 'Movies', '$0.65', 'Costco', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(483, 'Venison - Striploin', 'Sports', '$5.98', 'Sams', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(484, 'Nut - Peanut, Roasted', 'Automotive', '$5.23', 'Superama', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(485, 'Absolut Citron', 'Kids', '$9.97', 'Superama', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(486, 'Tray - 12in Rnd Blk', 'Beauty', '$6.32', 'Chedraui', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(487, 'Mushroom - King Eryingii', 'Toys', '$8.23', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(488, 'Mahi Mahi', 'Tools', '$6.41', 'La ley', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(489, 'Coffee - 10oz Cup 92961', 'Kids', '$0.94', 'Bodega Aurrera', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(490, 'Dill Weed - Dry', 'Kids', '$8.58', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(491, 'Easy Off Oven Cleaner', 'Clothing', '$2.55', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(492, 'Worcestershire Sauce', 'Industrial', '$8.56', 'Sams', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(493, 'Wine - Barolo Fontanafredda', 'Shoes', '$8.12', 'Bodega Aurrera', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(495, 'Pepsi, 355 Ml', 'Jewelry', '$4.17', 'La ley', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(496, 'Beans - Fine', 'Home', '$4.86', 'Walmart', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
(497, 'Yeast - Fresh, Fleischman', 'Automotive', '$4.34', 'Chedraui', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(499, 'Ice - Clear, 300 Lb For Carving', 'Sports', '$4.25', 'La ley', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(500, 'Ginger - Ground', 'Jewelry', '$2.80', 'Sams', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(501, 'Carbonated Water - Orange', 'Jewelry', '$7.92', 'La ley', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg');

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
  MODIFY `producto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;

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
