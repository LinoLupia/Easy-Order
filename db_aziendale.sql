-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Creato il: Ott 02, 2016 alle 17:54
-- Versione del server: 5.7.11
-- Versione PHP: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_aziendale`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `account_utenti`
--

CREATE TABLE `account_utenti` (
  `nome` varchar(20) NOT NULL,
  `cognome` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `account_utenti`
--

INSERT INTO `account_utenti` (`nome`, `cognome`, `username`, `password`) VALUES
('Lino', 'Lupia', 'linol', 'pass'),
('Enzo', 'Lupia', 'enzoxc2', 'pass'),
('Monia', 'lupia', 'grassa', 'monia');

-- --------------------------------------------------------

--
-- Struttura della tabella `clienti`
--

CREATE TABLE `clienti` (
  `IdCliente` int(11) NOT NULL,
  `Nome` varchar(45) NOT NULL,
  `Cognome` varchar(45) NOT NULL,
  `Citta` varchar(45) NOT NULL,
  `Indirizzo` varchar(45) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `PartitaIva` varchar(20) NOT NULL,
  `CodiceFiscale` varchar(20) NOT NULL,
  `TipoCliente` tinyint(1) NOT NULL,
  `Nazione` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `clienti`
--

INSERT INTO `clienti` (`IdCliente`, `Nome`, `Cognome`, `Citta`, `Indirizzo`, `Telefono`, `Email`, `PartitaIva`, `CodiceFiscale`, `TipoCliente`, `Nazione`) VALUES
(1, 'Enzo', 'Lupia', 'Sersale', 'Via Roma 33', '33333333333', 'enzo@enzo.it', '', 'qw', 0, 'Italia'),
(2, 'Endo', 'lupia', 'sersale', 'via roma', '2223334455', 'lino@lino.it', '1234567899', 'lkm', 0, 'italia'),
(3, 'Monia', 'lupia', 'hawai', 'via grassime', '22334453466455684', 'monia@grass.com', '12345678911', 'lpupql87c25c35c6', 0, 'italia'),
(5, 'Serafino', 'Lupia', 'Sersale', 'Via Roma 33', '33245', 'serafinoxc2@libero.it', '234234', 'sdfswdf', 1, 'Italia'),
(6, 'Antonella', 'Taverna', 'Sersale', 'Via Ciao', '222', 'anto@anto.it', '123456789', 'antosdfoinds', 0, 'Romania'),
(7, 'Gianfranco', 'Zappala', 'Sersale', 'Via Colla', '', '', '12345678912', 'akljdhbioasjd', 0, 'Belgio'),
(8, 'Enzo', 'enzo', 'enzo', 'Enzo', '333', 'enO@enzo.it', '4589388657', 'emzo', 0, 'Enzo');

-- --------------------------------------------------------

--
-- Struttura della tabella `id_aziendale`
--

CREATE TABLE `id_aziendale` (
  `id_aziendale` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `id_aziendale`
--

INSERT INTO `id_aziendale` (`id_aziendale`) VALUES
('6');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `account_utenti`
--
ALTER TABLE `account_utenti`
  ADD PRIMARY KEY (`username`);

--
-- Indici per le tabelle `clienti`
--
ALTER TABLE `clienti`
  ADD PRIMARY KEY (`IdCliente`),
  ADD UNIQUE KEY `Partita_iva` (`PartitaIva`),
  ADD UNIQUE KEY `Partita_iva_2` (`PartitaIva`);

--
-- Indici per le tabelle `id_aziendale`
--
ALTER TABLE `id_aziendale`
  ADD PRIMARY KEY (`id_aziendale`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `clienti`
--
ALTER TABLE `clienti`
  MODIFY `IdCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
