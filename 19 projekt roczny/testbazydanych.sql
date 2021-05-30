-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 30 Maj 2021, 19:59
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
-- Baza danych: `testbazydanych`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategoria`
--

CREATE TABLE `kategoria` (
  `ID` int(6) NOT NULL,
  `Kategoria` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `kategoria`
--

INSERT INTO `kategoria` (`ID`, `Kategoria`) VALUES
(1, 'Tworzenie tabeli'),
(2, 'Teoria'),
(3, 'Tworzenie użytkowników'),
(4, 'Modyfikowanie tabeli'),
(5, 'Modyfikowanie danych');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `odpowiedzi`
--

CREATE TABLE `odpowiedzi` (
  `ID` int(6) NOT NULL,
  `ID_pytania` int(6) NOT NULL,
  `Tresc` varchar(200) NOT NULL,
  `Prawidlowa` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `odpowiedzi`
--

INSERT INTO `odpowiedzi` (`ID`, `ID_pytania`, `Tresc`, `Prawidlowa`) VALUES
(1, 1, 'Srednia', 1),
(2, 1, 'Suma', 0),
(3, 1, 'Iloraz', 0),
(4, 1, 'Iloczyn', 0),
(5, 2, 'Ryba', 1),
(6, 2, 'Suma', 1),
(7, 2, 'Srednia', 0),
(8, 2, 'Roznica', 0),
(9, 3, 'do liczenia', 1),
(10, 3, 'do sumowania', 0),
(11, 3, 'do odejmowania', 0),
(12, 3, 'do wpisania rekordu', 0),
(13, 4, 'laczenia tekstu', 1),
(14, 4, 'usuwaniu tekstu', 0),
(15, 4, 'skracania tekst', 0),
(16, 4, 'spawania rekordow', 0),
(17, 5, 'musi być unikalna', 1),
(18, 5, 'jest null', 0),
(19, 5, 'musi być Stringiem', 0),
(20, 5, 'sluzy do szyfrowania', 0),
(21, 6, 'UNIQUE', 0),
(22, 6, 'DROP TABLE', 1),
(23, 6, 'TRUNCATE TABLE', 0),
(24, 6, 'DELETE', 0),
(25, 7, 'create table', 0),
(26, 7, 'create data', 0),
(27, 7, 'create base', 0),
(28, 7, 'create database', 1),
(29, 8, 'maksymlna liczbe', 0),
(30, 8, 'minimalne liczbe', 1),
(31, 8, 'minimalistyczna liczbe', 0),
(32, 8, 'srednia liczbe', 0),
(33, 9, 'maksymlna liczbe', 1),
(34, 9, 'minimalne liczbe', 0),
(35, 9, 'minimalistyczna liczbe', 0),
(36, 9, 'srednia liczbe', 0),
(37, 10, 'ustawia po kolei ', 1),
(38, 10, 'grupuje', 0),
(39, 10, 'usuwa rekordy po kolei', 0),
(40, 10, 'ustawia na odwrot', 0),
(41, 11, 'DROP', 0),
(42, 11, 'INSERT', 0),
(43, 11, 'SHOW', 0),
(44, 11, 'SELECT', 1),
(45, 12, 'wprowadza dane', 1),
(46, 12, 'wyswietla dane', 0),
(47, 12, 'usuwa rekordy', 0),
(48, 12, 'wyswietla dane', 0),
(49, 13, 'Hubert Gnach', 0),
(50, 13, 'ryba', 0),
(51, 13, 'język programowania', 0),
(52, 13, 'system zarządzania relacyjnymi bazami danych', 1),
(53, 14, 'Hubert Gnach', 0),
(54, 14, 'Szymon Rychter', 0),
(55, 14, 'Takumi Fujiwara', 0),
(56, 14, 'MySQL AB', 1),
(57, 15, 'Wyswietli dane z tabeli glupi_projekt_roczny', 1),
(58, 15, 'nic', 0),
(59, 15, 'duzo', 0),
(60, 15, 'pobierze libreoffice', 0),
(61, 16, 'Usunie baze danych o nazwie dasgtrdrd', 1),
(62, 16, 'Usunie MySQL', 0),
(63, 16, 'Wylaczy komputer', 0),
(64, 16, 'Usunie tabele o nazwie dasgtrdrd', 0),
(65, 17, 'nic', 0),
(66, 17, 'nie wiem', 0),
(67, 17, 'usunie kolumne', 1),
(68, 17, 'usunie MySQL', 0),
(69, 18, 'Do niczego', 0),
(70, 18, 'To cheaty do gier', 0),
(71, 18, 'Do robienia przelewow', 0),
(72, 18, 'Do tworzenia baz danych', 1),
(73, 19, 'Do niczego', 0),
(74, 19, 'Do tworzenia tabeli', 1),
(75, 19, 'Do instalacji MySQL', 0),
(76, 19, 'Do usuwania wirusow', 0),
(77, 20, 'Valve', 0),
(78, 20, 'MyCreators', 0),
(79, 20, 'Oracle', 1),
(80, 20, 'Logitech', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pytania`
--

CREATE TABLE `pytania` (
  `ID` int(6) NOT NULL,
  `ID_kategoria` int(6) NOT NULL,
  `Tresc` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `pytania`
--

INSERT INTO `pytania` (`ID`, `ID_kategoria`, `Tresc`) VALUES
(1, 2, 'Co to AVG'),
(2, 2, 'Co to SUM'),
(3, 2, 'Do czego sluzy COUNT'),
(4, 2, 'Funkcja CONCAT() sluzy do'),
(5, 2, 'Wartość pola tabeli pełniącego rolę klucza podstawowego'),
(6, 2, 'Aby usunąć tabelę należy zastosować kwerendę'),
(7, 2, 'Jak stworzyc baze danych w MySQL'),
(8, 2, 'Co zwraca  MIN'),
(9, 2, 'Co zwraca MAX'),
(10, 2, 'Co robi GROUP BY'),
(11, 2, 'Jakie zapytanie sluzy do wyswietlania rekordow tabeli'),
(12, 2, 'Co robi INSERT'),
(13, 2, 'Co to jest MySQL?'),
(14, 2, 'Kto stworzył MySQL?'),
(15, 2, 'Co zrobi SELECT * FROM glupi_projekt_roczny'),
(16, 2, 'Co zrobi DROP DATABASE dasgtrdrd'),
(17, 2, 'Co robi DROP COLUMN'),
(18, 2, 'Do czego sluzy phpMyAdmin'),
(19, 2, 'Do czego sluzy CREATE TABLE'),
(20, 2, 'Kto teraz pracuje nad MySQL');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `test_odp`
--

CREATE TABLE `test_odp` (
  `ID` int(6) NOT NULL,
  `ID_testu` int(6) NOT NULL,
  `ID_uzytkownika` int(6) NOT NULL,
  `ID_pytania` int(6) NOT NULL,
  `ID_odpowiedzi` int(6) NOT NULL,
  `Czy_poprawna` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `test_odp`
--

INSERT INTO `test_odp` (`ID`, `ID_testu`, `ID_uzytkownika`, `ID_pytania`, `ID_odpowiedzi`, `Czy_poprawna`) VALUES
(1, 1, 1, 1, 1, 1),
(2, 1, 1, 2, 3, 0),
(3, 1, 1, 3, 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `ID` int(11) NOT NULL,
  `Nazwa` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Haslo` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`ID`, `Nazwa`, `Email`, `Haslo`) VALUES
(1, 'user', 'gmail@gmail.com', '202cb962ac59075b964b07152d234b70');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `kategoria`
--
ALTER TABLE `kategoria`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `odpowiedzi`
--
ALTER TABLE `odpowiedzi`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_pytania` (`ID_pytania`);

--
-- Indeksy dla tabeli `pytania`
--
ALTER TABLE `pytania`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_kategoria` (`ID_kategoria`);

--
-- Indeksy dla tabeli `test_odp`
--
ALTER TABLE `test_odp`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_testu` (`ID_testu`,`ID_uzytkownika`,`ID_pytania`,`ID_odpowiedzi`),
  ADD KEY `ID_uzytkownika` (`ID_uzytkownika`),
  ADD KEY `ID_odpowiedzi` (`ID_odpowiedzi`),
  ADD KEY `ID_pytania` (`ID_pytania`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `kategoria`
--
ALTER TABLE `kategoria`
  MODIFY `ID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `odpowiedzi`
--
ALTER TABLE `odpowiedzi`
  MODIFY `ID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT dla tabeli `pytania`
--
ALTER TABLE `pytania`
  MODIFY `ID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT dla tabeli `test_odp`
--
ALTER TABLE `test_odp`
  MODIFY `ID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `odpowiedzi`
--
ALTER TABLE `odpowiedzi`
  ADD CONSTRAINT `odpowiedzi_ibfk_1` FOREIGN KEY (`ID_pytania`) REFERENCES `pytania` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `pytania`
--
ALTER TABLE `pytania`
  ADD CONSTRAINT `pytania_ibfk_1` FOREIGN KEY (`ID_kategoria`) REFERENCES `kategoria` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `test_odp`
--
ALTER TABLE `test_odp`
  ADD CONSTRAINT `test_odp_ibfk_1` FOREIGN KEY (`ID_uzytkownika`) REFERENCES `uzytkownicy` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `test_odp_ibfk_2` FOREIGN KEY (`ID_odpowiedzi`) REFERENCES `odpowiedzi` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `test_odp_ibfk_3` FOREIGN KEY (`ID_pytania`) REFERENCES `pytania` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
