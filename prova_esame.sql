-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Lug 17, 2022 alle 23:29
-- Versione del server: 10.4.22-MariaDB
-- Versione PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prova_esame`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `fermata`
--

CREATE TABLE `fermata` (
  `id` int(30) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `zona` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `fermata`
--

INSERT INTO `fermata` (`id`, `nome`, `zona`) VALUES
(1, 'Statuto', 'U'),
(2, 'Piazza Castello', 'U'),
(3, 'Porta Susa sud', 'U'),
(4, 'Collegno', 'O'),
(5, 'Rivoli', 'O'),
(6, 'Pianezza', 'O'),
(7, 'Alpignano', 'O'),
(8, 'Casellette', 'O'),
(9, 'Rosta', 'O'),
(10, 'Avigliana', 'P'),
(11, 'Villar Dora', 'P'),
(12, 'Condove', 'Q'),
(13, 'Chiusa San Michele', 'Q'),
(14, 'Inghilterra', 'U'),
(15, 'Vittorio Emanuele II', 'U'),
(16, 'Porta susa nord', 'U'),
(17, 'Porta nuova', 'U'),
(18, 'Lingotto', 'U'),
(19, 'Carlo alberto', 'U'),
(20, 'Valentino', 'U'),
(21, 'Nizza', 'U'),
(22, 'Francia', 'U'),
(23, 'Massaua', 'U'),
(24, 'Rivoli', 'U');

-- --------------------------------------------------------

--
-- Struttura della tabella `fermata_linea`
--

CREATE TABLE `fermata_linea` (
  `id` int(50) NOT NULL,
  `id_fermata` int(50) NOT NULL,
  `id_linea` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `fermata_linea`
--

INSERT INTO `fermata_linea` (`id`, `id_fermata`, `id_linea`) VALUES
(1, 1, 1),
(2, 1, 3),
(3, 1, 22),
(4, 1, 24),
(5, 1, 23),
(6, 2, 22),
(7, 2, 24),
(8, 2, 23),
(9, 2, 4),
(10, 2, 5),
(11, 2, 6),
(12, 3, 14),
(13, 3, 15),
(14, 3, 16),
(15, 3, 17),
(16, 3, 18),
(17, 3, 19),
(18, 4, 8),
(19, 4, 9),
(20, 4, 10),
(21, 4, 11),
(22, 4, 12);

-- --------------------------------------------------------

--
-- Struttura della tabella `linea`
--

CREATE TABLE `linea` (
  `id` int(100) NOT NULL,
  `nome` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `linea`
--

INSERT INTO `linea` (`id`, `nome`) VALUES
(1, '1'),
(2, 'A'),
(3, '2'),
(4, 'B');

-- --------------------------------------------------------

--
-- Struttura della tabella `preventivo`
--

CREATE TABLE `preventivo` (
  `id` int(50) NOT NULL,
  `nome_azienda` varchar(50) NOT NULL,
  `nome_piano` varchar(50) NOT NULL,
  `max_fermate` int(50) NOT NULL,
  `max_extraurbane` int(50) NOT NULL,
  `max_zone` int(50) NOT NULL,
  `prezzo` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `preventivo`
--

INSERT INTO `preventivo` (`id`, `nome_azienda`, `nome_piano`, `max_fermate`, `max_extraurbane`, `max_zone`, `prezzo`) VALUES
(1, 'Autotrasporti srl', ' Torino 5f', 5, 0, 1, 500),
(2, 'Autotrasporti srl', ' Piemonte 4f', 4, 4, 2, 600),
(3, 'TiPortoVia srl', ' Torino 7f', 7, 0, 1, 750),
(4, 'TiPortoVia srl', ' Torino 10f', 10, 0, 1, 1200),
(5, 'TiPortoVia srl', ' Torino 6f', 6, 1, 2, 900),
(6, 'Autotrasporti srl', ' Piemonte 6f', 6, 6, 2, 900),
(7, 'TiPortoVia srl', ' Piemonte 8f', 8, 8, 3, 1500),
(8, 'TiPortoVia srl', ' Piemonte 10f', 10, 10, 4, 1700);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `fermata`
--
ALTER TABLE `fermata`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `fermata_linea`
--
ALTER TABLE `fermata_linea`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `linea`
--
ALTER TABLE `linea`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `preventivo`
--
ALTER TABLE `preventivo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `fermata`
--
ALTER TABLE `fermata`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT per la tabella `fermata_linea`
--
ALTER TABLE `fermata_linea`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT per la tabella `linea`
--
ALTER TABLE `linea`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la tabella `preventivo`
--
ALTER TABLE `preventivo`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
