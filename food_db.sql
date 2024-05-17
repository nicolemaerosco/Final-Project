-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2024 at 09:47 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_db`
--

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(3, 'rosco', '0c5714691edc850c13cbf62a32516f8f7ce069df'),
(4, 'mj', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8');

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(5, 6, 3, 'Hot Coffee Choco', 90, 2, 'drink-2.png');

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 1, 'JM', 'michaeljohnacidella@gmail.com', '0909090', 'Hi hehehe');

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 1, 'Nicole Mae', '9052350740', 'rosconicolemae17@gmail.com', 'cash on delivery', 'Purok 3C, Building 4, Liboon, Ampayon, Butuan City, ADN, Philippines - 8080', 'Overload King Burger (100 x 1) - ', 100, '2024-05-14', 'completed'),
(2, 1, 'Nicole Mae', '9052350740', 'rosconicolemae17@gmail.com', 'paypal', 'Purok 3C, Building 4, Liboon, Ampayon, Butuan City, ADN, Philippines - 8080', 'Hot Coffee Choco (90 x 2) - Chicken Queen Burger (150 x 2) - ', 480, '2024-05-14', 'completed');

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `image`) VALUES
(1, 'Overload King Burger', 'fast food', 100, 'burger-1.png'),
(2, 'Chicken Queen Burger', 'fast food', 150, 'burger-2.png'),
(3, 'Hot Coffee Choco', 'drinks', 90, 'drink-2.png'),
(4, 'Choco Berry Cupcake', 'desserts', 190, 'dessert-4.png');

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `number`, `password`, `address`) VALUES
(1, 'Nicole Mae', 'rosconicolemae17@gmail.com', '9052350740', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Purok 3C, Building 4, Liboon, Ampayon, Butuan City, ADN, Philippines - 8080'),
(2, 'hey', 'hey@gmail.com', '090909090', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', ''),
(3, 'collin', 'collin@yahoo.com', '0910923759', '8cb2237d0679ca88db6464eac60da96345513964', ''),
(4, 'user', 'user@yahoo.com', '09090000', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', ''),
(5, 'collin', 'collin@gmail.com', '0980909090', '8cb2237d0679ca88db6464eac60da96345513964', ''),
(6, 'alert(&#34;Hacked by', 'asda@gmail.com', '0000000000', '7575cdcc8b725f838473818c74f38d7431713420', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
