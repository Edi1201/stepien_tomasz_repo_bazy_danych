-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 07 Mar 2021, 21:05
-- Wersja serwera: 10.4.17-MariaDB
-- Wersja PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `wplaty`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `imie`
--

CREATE TABLE `imie` (
  `ID` int(11) NOT NULL,
  `Imię` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `imie`
--

INSERT INTO `imie` (`ID`, `Imię`) VALUES
(1, 'Adam'),
(2, 'Monika'),
(3, 'Anna'),
(4, 'Marta'),
(5, 'Krzysztof'),
(6, 'Paweł'),
(7, 'Marzena'),
(8, 'Zbyszek'),
(9, 'Stefan'),
(10, 'Adrian'),
(11, 'Krystian'),
(12, 'Robert'),
(13, 'Weronika'),
(14, 'Sebastian'),
(15, 'Wojciech'),
(16, 'Andrzej'),
(17, 'Stanisław');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `miasto`
--

CREATE TABLE `miasto` (
  `ID` int(11) NOT NULL,
  `Miasto` varchar(15) DEFAULT NULL,
  `Kod` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `miasto`
--

INSERT INTO `miasto` (`ID`, `Miasto`, `Kod`) VALUES
(1, 'Nowe Miasteczko', '67-124'),
(2, 'Gubin', '61-100'),
(3, 'Szczecin', '20-150'),
(4, 'Kożuchów', '67-120'),
(5, 'Kraków', '05-100'),
(6, 'Wrocław', '50-100'),
(7, 'Zielona Góra', '67-100'),
(8, 'Waszyngton', '00-001');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `nazwisko`
--

CREATE TABLE `nazwisko` (
  `ID` int(11) NOT NULL,
  `Nazwisko` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `nazwisko`
--

INSERT INTO `nazwisko` (`ID`, `Nazwisko`) VALUES
(1, 'Stelmaszyk'),
(2, 'Wspaniała'),
(3, 'Stelmaszyk'),
(4, 'Wesoła'),
(5, 'Karolik'),
(6, 'Śmiały'),
(7, 'Szybki'),
(8, 'Nowak'),
(9, 'Donowan'),
(10, 'Lekter'),
(11, 'Lewinski'),
(12, 'Gandi'),
(13, 'August'),
(14, 'Wasoły'),
(15, 'Macała'),
(16, 'Zimny'),
(17, 'Kowalski'),
(18, 'Wesoły'),
(19, 'Wspaniała');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wplaty`
--

CREATE TABLE `wplaty` (
  `ID` int(11) NOT NULL,
  `Data` date NOT NULL,
  `ID_Imie` int(11) NOT NULL,
  `ID_Nazwisko` int(11) NOT NULL,
  `ID_Miasto` int(11) NOT NULL,
  `Wplata` int(6) NOT NULL,
  `Plec` enum('M','K') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `wplaty`
--

INSERT INTO `wplaty` (`ID`, `Data`, `ID_Imie`, `ID_Nazwisko`, `ID_Miasto`, `Wplata`, `Plec`) VALUES
(1, '2021-07-30', 11, 3, 4, 5, 'M'),
(2, '1987-08-07', 3, 19, 5, 1415, 'K'),
(3, '1981-09-11', 13, 11, 5, 583, 'K'),
(4, '1994-07-20', 15, 5, 4, 1337, 'M'),
(5, '1996-12-12', 4, 12, 5, 1613, 'M'),
(6, '1989-10-23', 10, 8, 3, 15, 'K'),
(7, '1987-08-11', 14, 18, 3, 1614, 'M'),
(8, '1981-09-18', 16, 17, 5, 72, 'K'),
(9, '1991-09-26', 8, 7, 4, 638, 'M'),
(10, '1984-11-06', 1, 12, 8, 87, 'K'),
(11, '1986-05-23', 3, 3, 2, 1404, 'M'),
(12, '1998-04-25', 11, 6, 5, 550, 'K'),
(13, '1990-08-21', 13, 11, 5, 1748, 'M'),
(14, '1997-08-18', 4, 1, 5, 1828, 'K'),
(15, '1996-03-13', 12, 3, 4, 1696, 'M'),
(16, '1999-04-19', 8, 2, 8, 1196, 'K'),
(17, '1983-02-21', 10, 11, 8, 775, 'M'),
(18, '1999-08-06', 3, 18, 4, 282, 'K'),
(19, '1991-04-17', 5, 10, 6, 209, 'M'),
(20, '1987-07-13', 12, 5, 1, 823, 'K'),
(21, '2000-09-17', 14, 8, 3, 1190, 'M'),
(22, '1999-01-07', 2, 12, 7, 439, 'K'),
(23, '1994-10-06', 5, 17, 5, 518, 'M'),
(24, '1991-12-06', 2, 17, 1, 1198, 'K'),
(25, '1998-08-12', 4, 14, 2, 691, 'M'),
(26, '1988-11-16', 15, 13, 6, 700, 'K'),
(27, '1996-11-01', 8, 6, 8, 216, 'M'),
(28, '1992-07-03', 11, 1, 2, 1115, 'K'),
(29, '1989-07-10', 2, 5, 2, 1555, 'M'),
(30, '1991-07-27', 4, 18, 3, 541, 'K'),
(31, '1994-09-10', 11, 4, 8, 684, 'M'),
(32, '1996-11-03', 13, 12, 5, 836, 'K'),
(33, '1984-08-19', 7, 16, 2, 143, 'M'),
(34, '1980-10-27', 8, 5, 7, 1320, 'K'),
(35, '1994-06-12', 10, 11, 2, 1467, 'M'),
(36, '1989-12-19', 6, 13, 3, 426, 'K'),
(37, '1988-04-08', 8, 6, 3, 840, 'M'),
(38, '1986-04-15', 13, 3, 4, 1360, 'K'),
(39, '1983-10-14', 17, 9, 3, 289, 'M'),
(40, '1997-09-10', 7, 15, 7, 1393, 'K'),
(41, '1981-04-05', 15, 2, 5, 1053, 'M'),
(42, '1981-08-01', 3, 14, 2, 948, 'K'),
(43, '1980-08-28', 4, 18, 2, 1394, 'M'),
(44, '1984-11-21', 4, 12, 5, 1783, 'K'),
(45, '1989-02-08', 14, 8, 4, 1931, 'K'),
(46, '1991-11-03', 8, 18, 4, 1170, 'M'),
(47, '1992-08-12', 3, 6, 2, 1174, 'K'),
(48, '1994-08-04', 12, 2, 3, 946, 'M'),
(49, '1998-03-01', 10, 18, 7, 1511, 'K'),
(50, '1981-11-13', 8, 16, 7, 1561, 'K'),
(51, '1987-06-03', 3, 6, 1, 675, 'K'),
(52, '1992-01-11', 11, 5, 2, 1895, 'K'),
(53, '1988-02-04', 7, 13, 2, 1609, 'K'),
(54, '1991-03-16', 1, 9, 3, 1827, 'K'),
(55, '1996-03-19', 13, 16, 6, 633, 'K'),
(56, '1987-09-14', 7, 9, 2, 888, 'K'),
(57, '1994-03-26', 1, 7, 5, 1633, 'M'),
(58, '1997-08-17', 3, 15, 4, 109, 'K'),
(59, '1997-03-05', 6, 19, 2, 1237, 'M'),
(60, '1995-10-21', 7, 13, 2, 888, 'K'),
(61, '1980-08-11', 13, 15, 5, 764, 'M'),
(62, '1986-05-24', 4, 10, 8, 200, 'K'),
(63, '1994-04-07', 5, 11, 2, 270, 'M'),
(64, '1983-05-07', 3, 19, 5, 1274, 'K'),
(65, '1993-04-11', 4, 12, 6, 1005, 'M'),
(66, '1990-11-26', 2, 10, 3, 1986, 'K'),
(67, '1982-05-22', 13, 8, 6, 1339, 'M'),
(68, '1980-01-03', 6, 5, 3, 35, 'K'),
(69, '1981-03-17', 8, 11, 5, 1710, 'M'),
(70, '1994-01-27', 13, 15, 7, 1176, 'K'),
(71, '1991-11-04', 13, 9, 7, 1796, 'M'),
(72, '2000-04-12', 5, 2, 5, 1041, 'K'),
(73, '1999-04-12', 5, 19, 3, 299, 'M'),
(74, '1982-11-14', 10, 9, 4, 1438, 'K'),
(75, '1988-10-03', 13, 10, 4, 935, 'M'),
(76, '1982-03-12', 9, 9, 6, 67, 'K'),
(77, '1995-10-20', 4, 14, 1, 1808, 'K'),
(78, '1990-10-19', 13, 17, 2, 284, 'M'),
(79, '1984-08-14', 9, 2, 7, 420, 'K'),
(80, '1988-04-10', 13, 15, 6, 234, 'M'),
(81, '1990-02-26', 7, 3, 5, 585, 'K'),
(82, '1997-05-05', 14, 10, 1, 1745, 'M'),
(83, '1983-03-10', 4, 16, 6, 690, 'K'),
(84, '1987-10-02', 11, 2, 4, 1382, 'M'),
(85, '1987-09-14', 6, 4, 7, 1563, 'K'),
(86, '1987-05-17', 2, 11, 6, 1059, 'M'),
(87, '1994-10-05', 6, 18, 8, 1669, 'K'),
(88, '1987-03-25', 15, 15, 3, 1607, 'M'),
(89, '1987-04-10', 15, 7, 1, 600, 'K'),
(90, '1986-09-17', 15, 10, 8, 275, 'M'),
(91, '1998-02-22', 10, 12, 3, 1107, 'K'),
(92, '1999-02-13', 1, 15, 6, 790, 'M'),
(93, '1996-09-10', 7, 18, 5, 92, 'K'),
(94, '1990-05-14', 4, 10, 7, 1816, 'M'),
(95, '1998-11-20', 14, 18, 4, 273, 'K');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `imie`
--
ALTER TABLE `imie`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `miasto`
--
ALTER TABLE `miasto`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `nazwisko`
--
ALTER TABLE `nazwisko`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `wplaty`
--
ALTER TABLE `wplaty`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Imie` (`ID_Imie`,`ID_Nazwisko`,`ID_Miasto`),
  ADD KEY `ID_Miasto` (`ID_Miasto`),
  ADD KEY `ID_Nazwisko` (`ID_Nazwisko`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `imie`
--
ALTER TABLE `imie`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT dla tabeli `miasto`
--
ALTER TABLE `miasto`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `nazwisko`
--
ALTER TABLE `nazwisko`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT dla tabeli `wplaty`
--
ALTER TABLE `wplaty`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `wplaty`
--
ALTER TABLE `wplaty`
  ADD CONSTRAINT `wplaty_ibfk_1` FOREIGN KEY (`ID_Miasto`) REFERENCES `miasto` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wplaty_ibfk_2` FOREIGN KEY (`ID_Nazwisko`) REFERENCES `nazwisko` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wplaty_ibfk_3` FOREIGN KEY (`ID_Imie`) REFERENCES `imie` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
