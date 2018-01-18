-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Gen 18, 2018 alle 08:59
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
(3, 'Cosa facciamo', '', 'La mission di GarmSafe è quella di divenire la principale azienda del Nord Italia nella vendita di indumenti tecnologici studiati con particolare attenzione per persone con disabilità.', 'cosa-facciamo.png', 0),
(4, 'Territorio', '', 'Bergamo è una delle province Italiane più attive grazie ai suoi 242 comuni, costituisce quindi la prima provincia lombarda e la terza in tutto il paese.', 'territorio.png', 0),
(5, 'Statuto', '', 'Regoliamo la vita interna e il funzionamento della nostra società nel rispetto delle norme poste dal Codice Civile.', 'statuto.png', 0),
(6, 'Contatti', '', 'Siamo aperti a nuove idee e a conoscere i vostri interessi nell\' intento di migliorarci. Contattarci è facile e veloce.', 'contatti.png', 0),
(7, 'Innovazione', '', 'Il nostro prodotto fa uso di tecnologie moderne ed efficienti. Oltre ad utilizzare arduino, un microcontrollore moderno e open source, il nostro prodotto fa uso di altri componenti elettronici (sensori ad ultrasuoni, Vibration Motor ecc.).', 'innovazione.png', 0),
(8, 'Praticità', '', 'Per utilizzare il nostro prodotto basterà applicare le fascie elasticizzate sopra i vestiti della persona ipovedente. Grazie al design e alla cucitura ergonomica, la fascia BlindStrip si adatta facilmente al corpo della persona in questione.', 'praticita.png', 0),
(9, 'Efficienza', '', 'Il nostro dispositivo permette di rilevare gli ostacoli nel raggio di circa 2 metri davanti all’utente, avvertendolo con una vibrazione emessa da un apposito motore installato su di esso.', 'efficienza.png', 0),
(10, 'BLINDSTRIP', 'Il sogno è quello di eliminare il bastone', 'l nostro prodotto principale sarà Blindstrip, una fascia elastica adattabile al corpo della persona che, grazie a un apposito sensore a ultrasuoni, permette di rilevare gli ostacoli nel raggio di circa 2 metri davanti all’utente, avvertendolo con una vibrazione emessa da un apposito motore installato su di essa. In base alla distanza degli oggetti la potenza di vibrazione cambierà: più la distanza sarà minore, più la vibrazione sarà intermittente. Il tutto sarà controllato dal microcontrollore Arduino nano.', 'art1-prodotti.png', 1),
(11, 'HC-SR04', 'L\'elemento al centro del progetto', 'Il sensore ad ultrasuoni HC-SR04 emette delle onde sonore e ne misura il tempo dopo aver incontrato un ostacolo che lo riflette. Il fascio di onde sonore è, in questo caso, di forma conica sia quando viene emesso dalla sorgente sia quando viene riflesso al primo ostacolo; questo fa si che il sensore riceva molte riflessioni da diversi oggetti e ciò rende il sensore, se solo, incapace di distinguere i tipi di oggetto od oggetti troppo piccoli. HC-SR04 dispone di 4 pin che sono: Vcc(+5v), Trigger, Echo e GND. Si invia un impulso alto sul Trigger per almeno 10 secondi dove successivamente il sensore invierà l’onda sonora aspettando così il suo ritorno gestito dal pin Echo. Dopo 38 millisecondi si considera che le onde non abbiano avuto alcun ostacolo quindi vengono attesi altri ms di sicurezza (in genere fino ai 50-60ms ) per evitare interferenze con la successiva misurazione.', 'art2-prodotti.jpg', 0),
(12, 'BENVENUTI IN LOMBARDIA', 'Una delle regioni più attive in Italia', 'Trezzo sull\'Adda è un comune italiano di 12.178 abitanti situato all\'estremità orientale della provincia di Milano, in Lombardia. L\'origine del nome \'Trezzo sull\'Adda\' non è nota anche se esistono diverse teorie al riguardo; la più diffusa vuole che Trezzo derivi da Trecc, termine germanico per promontorio. Il nome è probabilmente dovuto alla posizione strategica in cui si trova la città antica rispetto al fiume, su un promontorio. La città è localizzata sul confine tra la provincia di Bergamo e di Milano,in una zona favorevole dal punto di vista logistico grazie alla vicinanza con l’autostrada.', 'art1-territorio.png', 1),
(13, 'PER CHI HA BISOGNO', 'In Italia il numero è in crescita', 'Nel contesto sociale italiano possiamo notare come il numero degli individui che presentano una disabilità di qualsiasi tipo sia in aumento durante il corso degli anni; le percentuali espongono questo dato in modo chiaro e netto, infatti le stime del Censis (Centro Studi Investimenti Sociali) riguardo gli invalidi sono le seguenti: 4,8 milioni entro il 2020 (7,9% della popolazione italiana); 6,7 milioni entro il 2040 (10,7% della popolazione italiana). Possiamo dunque notare come le statistiche indichino che il numero di questi soggetti sia in aumento: da ciò si può dedurre che sempre più persone in futuro avranno bisogno di uno strumento che permetta loro di muoversi in libertà e sicurezza in qualsiasi tipo di ambiente.', 'art2-territorio.png', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `articoli_pagine`
--

CREATE TABLE `articoli_pagine` (
  `id_pagina` int(10) UNSIGNED NOT NULL,
  `id_articolo` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `articoli_pagine`
--

INSERT INTO `articoli_pagine` (`id_pagina`, `id_articolo`) VALUES
(2, 10),
(2, 11),
(4, 12),
(4, 13);

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
(8, '2014_10_12_000000_create_users_table', 1),
(9, '2014_10_12_100000_create_password_resets_table', 1),
(10, '2018_01_16_150311_create_pagine_table', 1),
(11, '2018_01_16_150518_create_articoli_table', 1),
(12, '2018_01_16_150752_create_articoli_pagine_table', 1),
(13, '2018_01_16_152046_create_tab3_table', 1),
(14, '2018_01_16_152541_create_tab3_articoli_table', 1);

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
(1, 'GarmSafe', 'Your Safety, our responsibility!', 'home', NULL, NULL),
(2, 'Prodotti', 'BlindStrip - un progetto pronto a rivoluzionare il modo di vivere le disabilità visive!', 'prodotti', NULL, NULL),
(3, 'Chi siamo', 'Il nostro team è composto da giovani ragazzi che si sono messi in gioco per creare un progetto rivoluzionario.', 'chi-siamo', NULL, NULL),
(4, 'Territorio', 'Dove è nata la nostra azienda e perchè è nata proprio in questa magnifica regione.', 'territorio', NULL, NULL),
(5, 'Statuto', 'GarmSafe e la legge. Come viene regolata la vita interna ed il funzionamento della nostra azienda.', 'statuto', NULL, NULL),
(6, 'Contatti', 'Interessato al prodotto o semplice voglia di sapere cosa ci sta dietro? Contattaci!', 'contatti', NULL, NULL);

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
(1, '', '', 1),
(2, '', '', 1),
(3, 'UNA RIVOLUZIONE CHE PARTE DAL BASSO', 'Innovazione, praticità ed efficienza - il mix perfetto', 2);

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
(1, 3, 'cosa-facciamo.gif', NULL),
(2, 4, 'territorio.gif', NULL),
(2, 5, 'statuto.gif', NULL),
(2, 6, 'contatti.gif', NULL),
(3, 7, '', NULL),
(3, 8, '', NULL),
(3, 9, '', NULL);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT per la tabella `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT per la tabella `pagine`
--
ALTER TABLE `pagine`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la tabella `tab3`
--
ALTER TABLE `tab3`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
