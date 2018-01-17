-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Gen 17, 2018 alle 12:51
-- Versione del server: 10.1.29-MariaDB
-- Versione PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `garmsafe`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `articoli`
--

CREATE TABLE `articoli` (
  `id` int(10) UNSIGNED NOT NULL,
  `titolo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sottotitolo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descrizione` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sx` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `articoli`
--

INSERT INTO `articoli` (`id`, `titolo`, `sottotitolo`, `descrizione`, `img`, `sx`) VALUES
(1, 'Chi Siamo', '', 'GarmSafe (Garment Safety Corp.) è un\'impresa incentrata nella produzione di indumenti biotecnologici.', 'chi-siamo.png', 0),
(2, 'Prodotti', '', 'L’offerta e le soluzioni proposte da GS sono strutturate per rivolgersi sia al singolo individuo disabile sia alla diffusione sul mercato ad associazioni.', 'prodotti.png', 0),
(3, 'Cosa facciamo', '', 'La mission di GarmSafe è quella di divenire la principale azienda del Nord Italia nella vendita di indumenti tecnologici studiati con particolare attenzione per persone con disabilità.', 'cosa-facciamo.png', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `articoli_pagine`
--

CREATE TABLE `articoli_pagine` (
  `id_pagina` int(10) UNSIGNED NOT NULL,
  `id_articolo` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2018_01_16_090646_create_pagine_table', 2),
(8, '2018_01_16_093155_create_articoli_table', 2),
(21, '2014_10_12_000000_create_users_table', 3),
(22, '2014_10_12_100000_create_password_resets_table', 3),
(23, '2018_01_16_150311_create_pagine_table', 3),
(24, '2018_01_16_150518_create_articoli_table', 3),
(25, '2018_01_16_150752_create_articoli_pagine_table', 3),
(26, '2018_01_16_152046_create_tab3_table', 3),
(27, '2018_01_16_152541_create_tab3_articoli_table', 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `pagine`
--

CREATE TABLE `pagine` (
  `id` int(10) UNSIGNED NOT NULL,
  `titolo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descrizione` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `pagine`
--

INSERT INTO `pagine` (`id`, `titolo`, `descrizione`, `url`, `created_at`, `updated_at`) VALUES
(1, 'GarmSafe', 'Your Safety, our responsability!', 'home', NULL, NULL),
(2, 'Prodotti', 'pagina prodotti ajdisajdiasjdjasjdjasijdiasjd', 'prodotti', NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `tab3`
--

CREATE TABLE `tab3` (
  `id` int(10) UNSIGNED NOT NULL,
  `titolo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sottotitolo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_pagina` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `tab3`
--

INSERT INTO `tab3` (`id`, `titolo`, `sottotitolo`, `id_pagina`) VALUES
(1, '', '', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `tab3_articoli`
--

CREATE TABLE `tab3_articoli` (
  `id_tab3` int(10) UNSIGNED NOT NULL,
  `id_articolo` int(10) UNSIGNED NOT NULL,
  `img_hover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `tab3_articoli`
--

INSERT INTO `tab3_articoli` (`id_tab3`, `id_articolo`, `img_hover`, `link`) VALUES
(1, 1, 'chi-siamo.gif', NULL),
(1, 2, 'prodotti.gif', NULL),
(1, 3, 'cosa-facciamo.gif', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `articoli`
--
ALTER TABLE `articoli`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `articoli_pagine`
--
ALTER TABLE `articoli_pagine`
  ADD PRIMARY KEY (`id_pagina`,`id_articolo`),
  ADD KEY `articoli_pagine_id_articolo_foreign` (`id_articolo`);

--
-- Indici per le tabelle `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `pagine`
--
ALTER TABLE `pagine`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indici per le tabelle `tab3`
--
ALTER TABLE `tab3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tab3_id_pagina_foreign` (`id_pagina`);

--
-- Indici per le tabelle `tab3_articoli`
--
ALTER TABLE `tab3_articoli`
  ADD PRIMARY KEY (`id_tab3`,`id_articolo`),
  ADD KEY `tab3_articoli_id_articolo_foreign` (`id_articolo`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `articoli`
--
ALTER TABLE `articoli`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT per la tabella `pagine`
--
ALTER TABLE `pagine`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `tab3`
--
ALTER TABLE `tab3`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `articoli_pagine`
--
ALTER TABLE `articoli_pagine`
  ADD CONSTRAINT `articoli_pagine_id_articolo_foreign` FOREIGN KEY (`id_articolo`) REFERENCES `articoli` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `articoli_pagine_id_pagina_foreign` FOREIGN KEY (`id_pagina`) REFERENCES `pagine` (`id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `tab3`
--
ALTER TABLE `tab3`
  ADD CONSTRAINT `tab3_id_pagina_foreign` FOREIGN KEY (`id_pagina`) REFERENCES `pagine` (`id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `tab3_articoli`
--
ALTER TABLE `tab3_articoli`
  ADD CONSTRAINT `tab3_articoli_id_articolo_foreign` FOREIGN KEY (`id_articolo`) REFERENCES `articoli` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tab3_articoli_id_tab3_foreign` FOREIGN KEY (`id_tab3`) REFERENCES `tab3` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
