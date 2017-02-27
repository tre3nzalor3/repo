-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 27 Lut 2017, 22:39
-- Wersja serwera: 10.1.13-MariaDB
-- Wersja PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `inzynierka`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `events`
--

CREATE TABLE `events` (
  `Id` int(4) NOT NULL,
  `Tytul` varchar(128) COLLATE utf8_polish_ci NOT NULL,
  `Data` varchar(128) COLLATE utf8_polish_ci NOT NULL,
  `Opis` varchar(256) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `events`
--

INSERT INTO `events` (`Id`, `Tytul`, `Data`, `Opis`) VALUES
(1, 'sssssssss', '12-08-2017', 'aaaaaaaaaaa'),
(2, 'wydarzenie2', '11-01-2015', 'wydarzenie2'),
(3, 'asdasd', '28-02-2017', 'asdasd'),
(4, 'knkjnj', '15-03-2017', 'hjgh'),
(5, 'wydarzenie3', '12-12-2014', 'asdasdasdasd');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `events_user`
--

CREATE TABLE `events_user` (
  `Id` int(4) NOT NULL,
  `user_id` int(4) NOT NULL,
  `events_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `events_user`
--

INSERT INTO `events_user` (`Id`, `user_id`, `events_id`) VALUES
(2, 1, 2),
(3, 4, 1),
(5, 1, 1),
(6, 1, 1),
(7, 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `games`
--

CREATE TABLE `games` (
  `Id` int(4) NOT NULL,
  `Tytul` varchar(128) COLLATE utf8_polish_ci NOT NULL,
  `Opis` varchar(256) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `games`
--

INSERT INTO `games` (`Id`, `Tytul`, `Opis`) VALUES
(1, 'Heroes1', 'Kolejnym elementem gry są zamki. Zamek służy głównie do rekrutacji bohaterów oraz jednostek. Początkowo do dyspozycji są tylko słabe jednostki, jednak dostateczna ilość zgromadzonych surowców pozwoli na wybudowanie siedlisk potężniejszych stworzeń.'),
(2, 'Heroes2', 'Druga część różniła się zmienionymi jednostkami i zamkami, a także fabułą. Całkowicie zmieniono np. wygląd i rozmiar wszystkich jednostek, budynki w zamkach. Była to również pierwsza część serii, do której wydano dodatki. Były to Price of.'),
(3, 'Heroes3', 'Kolejnej części z tej serii towarzyszy skok jakościowy grafiki, która uległa znacznej zmianie – większość została wyrenderowana z modeli trójwymiarowych, a nie narysowana jak w poprzednich częściach.'),
(4, 'sims', 'gra fajna');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `games_user`
--

CREATE TABLE `games_user` (
  `Id` int(4) NOT NULL,
  `user_id` int(4) NOT NULL,
  `game_id` int(4) NOT NULL,
  `isExchange` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `games_user`
--

INSERT INTO `games_user` (`Id`, `user_id`, `game_id`, `isExchange`) VALUES
(24, 5, 4, 1),
(26, 6, 2, 1),
(32, 1, 2, 1),
(33, 1, 3, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `news`
--

CREATE TABLE `news` (
  `Id` int(4) NOT NULL,
  `Tytul` varchar(128) COLLATE utf8_polish_ci NOT NULL,
  `Opis` varchar(256) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `news`
--

INSERT INTO `news` (`Id`, `Tytul`, `Opis`) VALUES
(1, 'gta ', 'gta super gra. hauhauahuahuahuhasdasdasdasdasdasdasdasdasdasdasdasdasds'),
(2, 'sims', 'dla ludzikow, qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq'),
(3, 'LOL', 'biega sie, zabija, wygrywa'),
(4, 'asd', 'asd'),
(6, 'aaaaaaaaaa', 'aaaaaaaaaaaaaaaa'),
(7, 'NOWA GRA', 'wyszla nowa gra !!!'),
(8, 'gta5', 'gta5 wyszlo w miniony weekend');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `news_user`
--

CREATE TABLE `news_user` (
  `Id` int(4) NOT NULL,
  `user_id` int(4) NOT NULL,
  `news_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `porady`
--

CREATE TABLE `porady` (
  `Id` int(4) NOT NULL,
  `Tytul` varchar(128) COLLATE utf8_polish_ci NOT NULL,
  `Opis` varchar(512) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `porady`
--

INSERT INTO `porady` (`Id`, `Tytul`, `Opis`) VALUES
(1, 'porada1', 'porada1'),
(2, 'porada2', 'porada2'),
(3, 'porada3', 'porada3'),
(4, 'porada4', 'porada4');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `porady_games`
--

CREATE TABLE `porady_games` (
  `Id` int(4) NOT NULL,
  `porady_id` int(4) NOT NULL,
  `games_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `porady_games`
--

INSERT INTO `porady_games` (`Id`, `porady_id`, `games_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `Id` int(4) NOT NULL,
  `Name` varchar(128) COLLATE utf8_polish_ci NOT NULL,
  `Surname` varchar(128) COLLATE utf8_polish_ci NOT NULL,
  `Role` varchar(128) COLLATE utf8_polish_ci NOT NULL,
  `Nickname` varchar(128) COLLATE utf8_polish_ci NOT NULL,
  `Password` varchar(128) COLLATE utf8_polish_ci NOT NULL,
  `Email` varchar(128) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`Id`, `Name`, `Surname`, `Role`, `Nickname`, `Password`, `Email`) VALUES
(1, 'qwerty', 'qwerty', 'admin', 'admin', 'admin', 'qwerty@wp.pl'),
(2, 'asd', 'asd', 'gracz', 'asd', 'asd', 'asd@oo.pl'),
(3, 'zzz', 'zzz', 'gracz', 'zzz', 'zzz', 'zzz@oo.pl'),
(4, 'uczen', 'uczen', 'student', 'uczen', 'uczen', 'uczen@o2.pl'),
(5, 'qqqqqq', 'qqqqqq', 'admin', 'qwerty', 'qwerty', 'qwerty@o2.pl'),
(6, 'janek', 'janek', 'admin', 'janek', 'janek', 'janek@wp.pl');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `events_user`
--
ALTER TABLE `events_user`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `events_id` (`events_id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `games_user`
--
ALTER TABLE `games_user`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `game_id` (`game_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `news_user`
--
ALTER TABLE `news_user`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `news_id` (`news_id`);

--
-- Indexes for table `porady`
--
ALTER TABLE `porady`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `porady_games`
--
ALTER TABLE `porady_games`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `events`
--
ALTER TABLE `events`
  MODIFY `Id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT dla tabeli `events_user`
--
ALTER TABLE `events_user`
  MODIFY `Id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT dla tabeli `games`
--
ALTER TABLE `games`
  MODIFY `Id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT dla tabeli `games_user`
--
ALTER TABLE `games_user`
  MODIFY `Id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT dla tabeli `news`
--
ALTER TABLE `news`
  MODIFY `Id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT dla tabeli `news_user`
--
ALTER TABLE `news_user`
  MODIFY `Id` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `porady`
--
ALTER TABLE `porady`
  MODIFY `Id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT dla tabeli `porady_games`
--
ALTER TABLE `porady_games`
  MODIFY `Id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `news_user`
--
ALTER TABLE `news_user`
  ADD CONSTRAINT `news_user_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`Id`),
  ADD CONSTRAINT `news_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`Id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
