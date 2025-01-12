-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2025 at 01:14 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flutter-project`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `imageUrl` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `imageUrl`) VALUES
(1, 'Fruits', 'https://images.pexels.com/photos/1128678/pexels-photo-1128678.jpeg'),
(2, 'Vegetables', 'https://images.pexels.com/photos/257816/pexels-photo-257816.jpeg'),
(3, 'Meat', 'https://images.pexels.com/photos/65175/pexels-photo-65175.jpeg'),
(4, 'Fish', 'https://images.pexels.com/photos/842142/pexels-photo-842142.jpeg'),
(5, 'Dairy', 'https://images.pexels.com/photos/11826943/pexels-photo-11826943.jpeg'),
(6, 'Bakery', 'https://images.pexels.com/photos/4828364/pexels-photo-4828364.jpeg'),
(7, 'Sweets', 'https://images.pexels.com/photos/1126359/pexels-photo-1126359.jpeg'),
(8, 'Drinks', 'https://images.pexels.com/photos/4051257/pexels-photo-4051257.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `description` text NOT NULL,
  `imageUrl` text NOT NULL,
  `categoryId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `description`, `imageUrl`, `categoryId`) VALUES
(1, 'Apple', 0.99, 'A fresh, juicy apple harvested from the finest orchards, perfect for snacking, baking, or adding to your favorite dishes. Packed with natural sweetness and nutrients.', 'https://images.pexels.com/photos/102104/pexels-photo-102104.jpeg', 1),
(2, 'Banana', 0.5, 'A ripe, creamy yellow banana, naturally sweet and rich in potassium, making it an ideal snack or addition to smoothies, desserts, and breakfasts.', 'https://images.pexels.com/photos/41123/pexels-photo-41123.jpeg', 1),
(3, 'Orange', 0.75, 'A sweet and tangy orange, bursting with citrus flavor and loaded with Vitamin C. Enjoy it fresh, juiced, or as a zesty addition to your dishes.', 'https://images.pexels.com/photos/8383/pexels-photo.jpg', 1),
(4, 'Carrot', 0.4, 'A crisp, fresh organic carrot packed with flavor and nutrients. Perfect for salads, snacking, cooking, or juicing for a healthy lifestyle.', 'https://images.pexels.com/photos/42059/pexels-photo-42059.jpeg', 2),
(5, 'Cucumber', 0.6, 'A refreshing, crisp cucumber, ideal for hydrating snacks, cooling salads, or enhancing your favorite dishes with a light and crunchy texture.', 'https://images.pexels.com/photos/108356/pexels-photo-108356.jpeg', 2),
(6, 'Tomato', 0.8, 'A plump, juicy red tomato full of robust flavor. Perfect for sandwiches, sauces, salads, or enjoying fresh as a healthy snack.', 'https://images.pexels.com/photos/1128660/pexels-photo-1128660.jpeg', 2),
(7, 'Beef', 5.99, 'High-quality, tender beef cuts sourced from trusted farms. Ideal for grilling, roasting, or slow cooking to create hearty and delicious meals.', 'https://images.pexels.com/photos/3577432/pexels-photo-3577432.jpeg', 3),
(8, 'Chicken', 4.99, 'Fresh farm-raised chicken, known for its juicy tenderness and versatility. Perfect for roasting, grilling, frying, or adding to your favorite recipes.', 'https://images.pexels.com/photos/6187755/pexels-photo-6187755.jpeg', 3),
(9, 'Lamb', 7.99, 'Delicious, tender lamb meat that is rich in flavor and perfect for roasting, grilling, or slow cooking in traditional and modern recipes.', 'https://images.pexels.com/photos/8862758/pexels-photo-8862758.jpeg', 3),
(10, 'Salmon', 8.99, 'Premium, fresh Atlantic salmon rich in Omega-3 fatty acids. Perfect for grilling, baking, or pan-searing to enjoy its delicate, flavorful taste.', 'https://images.pexels.com/photos/6294462/pexels-photo-6294462.jpeg', 4),
(11, 'Tuna', 7.49, 'Premium-quality tuna steaks, ideal for sushi, grilling, or as a centerpiece in fresh salads. Naturally rich in flavor and high in protein.', 'https://images.pexels.com/photos/879454/pexels-photo-879454.jpeg', 4),
(12, 'Cod', 6.99, 'Flaky and delicious cod, perfect for pan-frying, baking, or adding to soups and stews. A mild and versatile fish suitable for any dish.', 'https://images.pexels.com/photos/305021/pexels-photo-305021.jpeg', 4),
(13, 'Milk', 1.2, 'Fresh, creamy whole milk sourced from healthy dairy farms. Rich in calcium and perfect for drinking, cooking, or adding to your morning coffee or cereal.', 'https://images.pexels.com/photos/236338/pexels-photo-236338.jpeg', 5),
(14, 'Cheese', 2.5, 'Smooth, creamy cheddar cheese with a rich, tangy flavor. Ideal for sandwiches, snacks, or as a flavorful addition to recipes.', 'https://images.pexels.com/photos/266830/pexels-photo-266830.jpeg', 5),
(15, 'Yogurt', 1, 'Silky smooth yogurt, crafted for a creamy texture and a tangy taste. Perfect for snacking, smoothies, or as a healthy dessert topping.', 'https://images.pexels.com/photos/405171/pexels-photo-405171.jpeg', 5),
(16, 'Bread', 1.5, 'Freshly baked bread with a soft and fluffy interior and a golden, crispy crust. Perfect for sandwiches, toasting, or as a side to soups and meals.', 'https://images.pexels.com/photos/209743/pexels-photo-209743.jpeg', 6),
(17, 'Croissant', 1.8, 'A golden, flaky butter croissant with layers of delicate pastry. Perfect for breakfast, snacks, or pairing with coffee and jam.', 'https://images.pexels.com/photos/320278/pexels-photo-320278.jpeg', 6),
(18, 'Donut', 1.2, 'A sweet, soft donut with a classic sugary glaze. Ideal for satisfying your sweet tooth or as a delightful treat with coffee or tea.', 'https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg', 6),
(19, 'Chocolate', 2, 'Rich, decadent dark chocolate crafted from the finest cocoa beans. Perfect for desserts, snacking, or gifting to chocolate lovers.', 'https://images.pexels.com/photos/291528/pexels-photo-291528.jpeg', 7),
(20, 'Candy', 1, 'A colorful assortment of candies, offering a burst of sweetness and joy in every bite. Perfect for parties, gifts, or as a sweet treat.', 'https://images.pexels.com/photos/325526/pexels-photo-325526.jpeg', 7),
(21, 'Ice Cream', 3, 'Creamy, rich vanilla ice cream made with natural ingredients. A delightful dessert for hot days, parties, or indulgent moments.', 'https://images.pexels.com/photos/108370/pexels-photo-108370.jpeg', 7),
(22, 'Water', 0.5, 'Pure, refreshing bottled water sourced from pristine springs. Perfect for hydration at home, on the go, or during workouts.', 'https://images.pexels.com/photos/33260/spring-flowers-bottle-macro.jpg', 8),
(23, 'Juice', 2.5, 'Fresh, natural fruit juice, bursting with vibrant flavors and packed with essential vitamins. A perfect way to start your day or refresh yourself.', 'https://images.pexels.com/photos/1239302/pexels-photo-1239302.jpeg', 8),
(24, 'Soda', 1, 'Effervescent and refreshing soda with a crisp, sweet taste. Perfect for parties, gatherings, or enjoying as a fizzy treat anytime.', 'https://images.pexels.com/photos/377975/pexels-photo-377975.jpeg', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prod_cat_id` (`categoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `prod_cat_id` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
