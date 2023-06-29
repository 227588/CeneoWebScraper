-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Cze 29, 2023 at 07:59 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ceneowebscraper`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cons`
--

CREATE TABLE `cons` (
  `cons_id` int(11) NOT NULL,
  `text` text NOT NULL,
  `opinion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cons`
--

INSERT INTO `cons` (`cons_id`, `text`, `opinion_id`) VALUES
(9, 'regrywalność', 17569392),
(10, 'cena', 10387828),
(11, 'fabuła', 8967457),
(12, 'cena', 17017918),
(13, 'fabuła', 15504772),
(14, 'jakość dźwięku', 16925625),
(15, 'cena', 14281961),
(16, 'mało kart', 14281961),
(17, 'cena', 15855858),
(18, 'mało kart', 15855858);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `opinions`
--

CREATE TABLE `opinions` (
  `id` int(11) NOT NULL,
  `opinion_id` int(11) NOT NULL,
  `author` text NOT NULL,
  `recommendation` text DEFAULT NULL,
  `score` text NOT NULL,
  `purchased` text DEFAULT NULL,
  `published_at` datetime NOT NULL,
  `purchased_at` datetime DEFAULT NULL,
  `thumbs_up` int(11) NOT NULL,
  `thumbs_down` int(11) NOT NULL,
  `content` text NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `opinions`
--

INSERT INTO `opinions` (`id`, `opinion_id`, `author`, `recommendation`, `score`, `purchased`, `published_at`, `purchased_at`, `thumbs_up`, `thumbs_down`, `content`, `product_id`) VALUES
(760, 16985579, 'a...c', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-01-06 20:58:14', '2022-12-07 14:01:32', 0, 0, 'Mistrz!Rozgrywka z dodatkiem rewelacyjna!', 47),
(761, 12474899, 'surfinia82', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2020-05-20 16:56:10', '2020-05-03 16:52:38', 1, 0, 'Komplet dodatkow juz jest', 47),
(762, 17569392, 'Jacek', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-01 07:44:48', '2023-05-26 13:04:35', 0, 0, 'Tego typu gry rzadko kiedy bywają na 7 osób. W tym przypadku daje taką możliwość co jest bardzo użyteczne jeśli mamy większą ekipę chętną do gry. Szkoda, że w podstawowej wersji gry frakcje są \"nadrukowane\" na plansze i wymuszają położenie graczy przy stole. Już w tej wersji gry powinny być żetony frakcji możliwe to ułożenia w dowolnym miejscu.', 47),
(763, 10305419, 'Dominik', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2019-03-27 08:03:11', '2019-03-18 13:30:27', 0, 0, 'Dodatek do Scythe dodający nowe frakcję oraz umożliwiający grę na 7 osób. Nawet grając w 3/4 osoby daje nowe możliwości graczą ze względu na właściwości frakcji i miejsca startowe. Polecam fanom Scythe', 47),
(764, 10387828, 'Vimesky', 'Polecam', '4/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2019-04-12 11:26:19', '2019-04-09 14:44:51', 0, 0, 'Fajny dodatek. Wprowadza do gry Scythe większą regrywalnosc dzięki 2 nowym frakcją i 2 planszetką rozwoju. Na plus jest jeszcze to że można teraz grać 6-7 osób.', 47),
(765, 8967457, 'VV.', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2019-01-22 10:47:27', '2019-01-17 21:41:58', 0, 0, '2 dodatkowe frakcje... Nie wprowadzają żadnych rewolucji, ale jeżeli ktoś lubi Scythe - wypada mieć :) \r\n\nJakośc jak zawsze bardzo dobra.', 47),
(766, 8978913, 'Kuba', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2019-01-23 21:54:38', '2019-01-03 21:13:05', 1, 0, 'świetny dodatek wzbogacający grę o dwie nowe frakcje, piękne szczegółowe figurki, rewelacyjne grafiki Jakuba Różalskiego', 47),
(767, 10125959, 'Rafał', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2019-02-20 11:16:54', '2019-02-18 09:06:06', 0, 0, 'Dodatek do gry Scythe wnosi możliwość większej różnorodności przy wyborze frakcji. Dzięki temu zwiększa regrywalność.', 47),
(768, 8050005, 'Witold', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2018-06-14 21:25:16', '2018-06-11 21:35:13', 0, 0, 'Bardzo fajne rozszerzenie, chociaż nie tak dobre jak Igrając z Wiatrem. \r\nWykonanie jak zawsze na wysokim poziomie.', 47),
(769, 10318606, 'Michał', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2019-03-28 22:33:55', '2019-03-15 00:24:23', 0, 0, 'Rozszerzenie tak na prawdę dopełniające podstawkę. Dopiero z nim gra wydaje się kompletna. Pozycja obowiązkowa.', 47),
(770, 17017918, 'l...1', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-01-14 22:11:07', '2022-12-12 00:16:58', 0, 0, 'Co tu dużo mówić, taki \"must have\" każdego komu przypadło do gustu Scythe :-) Jedyny minus jest taki, że nie ma tych nacji od razu w podstawce...', 47),
(771, 8090322, 'Witold', 'Polecam', '5/5', NULL, '2018-06-28 13:49:23', NULL, 0, 0, 'Bardzo dobry dodatek, wykonanie najwyższej jakości. Polecam wszystkim posiadaczom Scythe!', 47),
(772, 8996767, 'Witamina B6', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2019-01-28 08:36:32', '2019-01-16 11:18:46', 0, 0, 'Jako dodatek to jednej z najlepszych gier, które kiedykolwiek wydano jest to must have.', 47),
(773, 11778147, 'Użytkownik Ceneo', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2020-02-20 17:39:25', '2020-02-17 09:27:55', 0, 0, 'Obowiązkowy dodatek do Scythe. Dwie nowe, inne frakcje wprowadzają rozgrywkę na nowy poziom. No i można grać w 6 osób :)', 47),
(774, 8950015, 'Patryk', 'Polecam', '4,5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2019-01-18 11:20:26', '2019-01-15 11:55:32', 0, 0, 'jest to dodatek, do cąłości wnoszcy dwa nowe klany i lekkie modyfikacje starych, ślicznie wykonana i godna posiadania', 47),
(775, 10128442, 'Rafał', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2019-02-20 14:42:21', '2019-02-08 11:28:31', 0, 0, 'Dodatek do gry Scythe wnosi możliwość większej różnorodności przy wyborze frakcji. Dzięki temu zwiększa regrywalność.', 47),
(776, 8906403, 'smailliw', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2019-01-11 10:46:11', '2019-01-06 11:28:38', 0, 0, 'Dobry dodatek! 2 nowe frakcje mają ciekawe umiejętności.', 47),
(777, 13824358, 'Jan', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2021-01-22 22:15:01', '2021-01-04 13:52:34', 0, 0, 'Odmienne nacje od podstawowych, więc wymagają trochę więcej kombinowania i urozmaicają rozgrywkę.', 47),
(778, 11829104, 'Yuthul', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2020-03-01 11:20:03', '2020-02-03 16:08:28', 0, 0, 'Świetny dodatek, można grać w Scythe nawet w 6/7 graczy lub wcielić się w nowe potężne frakcje.', 47),
(779, 8943511, 'Mieszko', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2019-01-17 12:47:42', '2019-01-07 12:34:54', 0, 0, 'Świetny dodatek poszerzający możliwości gry', 47),
(780, 12927742, 'a...w', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2020-08-09 19:35:11', '2020-07-29 01:32:55', 0, 0, 'Piękne wykonanie. Dodatek nieobowiązkowy ale urozmaicenie dzięki 2 dodatkowym frakcjom.', 47),
(781, 13897057, 's...4', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2021-02-04 10:59:47', '2021-02-02 14:12:37', 0, 0, 'Wprowadza możliwość gry w większym gronie, pozwala na większą regrywalnosc gry', 47),
(782, 12777476, 'o...m', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2020-07-08 20:32:58', '2020-05-05 07:52:19', 0, 0, 'Dwie bardzo ciekawe frakcje, które jeszcze bardziej podnoszą regrywalność gry.', 47),
(783, 14687877, 'w...k', NULL, '3/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2021-07-06 18:09:33', '2021-06-06 15:09:15', 0, 0, 'Niestety, czekam na dostawę. Liczę, że nie zawiodę się i dodatkowe nowe postacie wzbogacą rozgrywkę. Dostawa ma być jesienią, kasa zablokowana, myślę jednak, że  warto poczekać.', 47),
(784, 11898790, 'Użytkownik Ceneo', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2020-03-13 07:11:22', '2020-02-24 07:47:58', 0, 0, 'Nie niezbędny ale urozmaicający i rozszerzający możliwości rozgrywki dodatek', 47),
(785, 8062759, 'Edyta', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2018-06-19 20:06:25', '2018-06-13 14:40:33', 0, 0, 'spełnia oczekiwania', 47),
(786, 10625697, 'p...3', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2019-06-06 15:57:37', '2019-05-01 09:37:19', 0, 0, 'bardzo ok', 47),
(787, 10625680, 'piotrpawel2883', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2019-06-06 15:55:59', '2019-05-02 20:15:33', 0, 0, 'bardzo ok', 47),
(788, 13916419, 'K...k', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2021-02-08 10:58:56', '2021-02-04 18:43:04', 0, 0, 'Bardzo dobry, szczególnie że będziemy grać w 7 osób :)', 47),
(789, 8427873, 'Seba', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2018-10-10 13:59:41', '2018-09-17 19:45:19', 0, 0, 'ok', 47),
(790, 12642132, 'k...1', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2020-06-13 11:21:02', '2020-06-10 13:54:37', 0, 0, 'Piękne wykonanie i ciekawe nowe mechaniki. Polecam!', 47),
(791, 12256216, 'Użytkownik Ceneo', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2020-04-25 17:23:59', '2020-04-21 19:43:23', 0, 0, 'Dobry dodatek do gry. Poszerza możliwości gry.', 47),
(792, 15504772, 'd...1', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2022-01-04 23:17:20', '2021-12-19 10:40:26', 0, 0, 'Obowiązkowy do grania w więcej niż 5 osób ;-)', 47),
(793, 12073167, 'Użytkownik Ceneo', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2020-04-06 11:11:30', '2020-04-02 14:11:12', 0, 0, 'Poleca - jak każdy inny dodatek do Scythe.', 47),
(794, 13721409, 'Karol', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2021-01-06 20:22:01', '2020-12-20 18:01:40', 0, 0, 'Fajne 2 nowe frakcje z fajnymi figrukami', 47),
(795, 15750026, 'Łukasz', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2022-02-24 21:48:26', '2022-02-07 11:51:16', 0, 0, 'wszystko spoko... szybka wysyłka', 47),
(796, 12966644, 'a...z', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2020-08-17 22:10:54', '2020-07-30 14:15:43', 0, 0, 'Super umożliwia grę w więcej osób', 47),
(797, 16250526, 'f...c', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2022-06-25 12:56:28', '2022-05-30 15:15:38', 0, 0, 'Dobrej jakości wykonanie fugurek', 47),
(798, 17613119, 'p...o', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-15 00:50:32', '2023-05-19 00:21:48', 0, 0, 'Dodatek podnosi regrywalność.', 47),
(799, 13983195, 'g...9', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2021-02-18 23:27:59', '2021-02-02 21:04:00', 0, 0, 'Wszystko ok Pozdrawiam !', 47),
(800, 15554033, 'p...c', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2022-01-13 10:08:07', '2022-01-03 14:29:51', 0, 0, 'Gra typu musisz to mieć!', 47),
(801, 12828807, 'A...a', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2020-07-20 20:48:22', '2020-07-02 06:02:48', 0, 0, 'Dodatek obowiązkowy', 47),
(802, 14670611, 'l...s', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2021-07-01 14:17:20', '2021-06-29 11:13:44', 0, 0, 'Dodatek must have', 47),
(803, 8966270, 'Użytkownik Ceneo', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2019-01-22 00:31:51', '2019-01-10 21:10:09', 0, 0, 'OK, bez problemów', 47),
(804, 15644060, 'b...9', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2022-02-02 09:06:45', '2022-01-27 10:55:51', 0, 0, 'Małe pudełko', 47),
(805, 14022750, 'l...k', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2021-02-25 23:47:55', '2021-02-08 21:39:35', 0, 0, 'Fajny dodatek', 47),
(806, 11513614, 'Hanna', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2020-01-01 12:33:59', '2019-11-10 23:03:57', 0, 0, 'super dodatek', 47),
(807, 15518223, 'm...9', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2022-01-07 11:40:59', '2021-12-28 16:46:23', 0, 0, 'Wszystko ok', 47),
(808, 13348259, 'w...r', 'Polecam', '4/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2020-11-09 16:49:06', '2020-10-27 13:36:45', 0, 0, 'To scythe.', 47),
(809, 7990072, 'andrzej waluk', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2018-05-24 21:52:09', '2018-05-11 21:19:06', 0, 0, 'Jest super', 47),
(810, 17622593, 'p...k', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-18 10:42:28', '2023-06-05 22:05:53', 0, 0, 'pełna moc', 47),
(811, 14655675, 'w...l', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2021-06-28 20:58:47', '2021-06-17 00:02:33', 0, 0, 'Jest ok', 47),
(812, 16771043, 'w...1', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2022-11-21 11:14:31', '2021-07-23 08:53:35', 0, 0, '10/10', 47),
(813, 14993564, 'y...s', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2021-09-24 10:39:15', '2021-09-11 21:28:46', 0, 0, 'super', 47),
(814, 12694934, 'w...7', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2020-06-23 07:42:38', '2020-06-02 07:04:52', 0, 0, 'SUPER', 47),
(815, 16212438, 'Grzegorz', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2022-06-15 10:47:28', '2022-06-06 11:24:18', 0, 0, 'Ok', 47),
(816, 13032964, 'p...k', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2020-09-01 17:44:42', '2020-08-26 17:25:51', 0, 0, '..', 47),
(817, 12770176, 'lossenorod', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2020-07-07 21:14:11', '2020-06-20 22:53:03', 0, 0, 'ok', 47),
(818, 8303941, 'domin', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2018-08-31 09:19:20', '2018-08-28 21:04:44', 0, 0, 'ok', 47),
(819, 8494508, 'pk_87', 'Polecam', '5/5', NULL, '2018-10-29 10:26:14', NULL, 0, 0, 'Dodatek urozmaica podstawkę dodatkowymi frakcjami, które wprowadzają nowe możliwości frakcji, przez co gra trochę się zmienia.\r\nPolecam graczom, którzy już kilka razy zagrali w podstawkę. Osobą którzy nie grali w tę gre polecam wpierw zagrac 2-3 krotnie w podstawkę.', 47),
(820, 10644959, 'Użytkownik Ceneo', NULL, '5/5', NULL, '2019-06-11 15:01:14', NULL, 0, 0, '5,0/5', 47),
(821, 10592537, 'Użytkownik Ceneo', NULL, '5/5', NULL, '2019-05-29 21:05:01', NULL, 0, 0, '5,0/5', 47),
(822, 8417991, 'Użytkownik Ceneo', NULL, '5/5', NULL, '2018-10-07 17:17:42', NULL, 0, 0, '5,0/5', 47),
(823, 8273863, 'Użytkownik Ceneo', NULL, '4,5/5', NULL, '2018-08-22 20:57:21', NULL, 0, 0, '4,5/5', 47),
(824, 8043371, 'Użytkownik Ceneo', NULL, '5/5', NULL, '2018-06-13 10:55:54', NULL, 0, 0, '5,0/5', 47),
(825, 6507018, 'Użytkownik Ceneo', NULL, '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2018-01-23 12:07:56', '2018-01-13 18:19:51', 0, 0, '5,0/5', 47),
(826, 5019182, 'Użytkownik Ceneo', NULL, '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2017-09-07 20:51:59', '2017-08-30 09:06:29', 0, 0, '5,0/5', 47),
(827, 16477319, 'a...a', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2022-09-01 10:12:12', '2022-08-29 08:36:59', 0, 0, 'Słuchawki rewelacja! Idealnie dopasowane a dźwięk idealny!', 48),
(828, 16834742, 'k...t', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2022-12-05 20:42:54', '2022-11-09 09:01:49', 0, 0, 'Świetny produkt,szybko i sprawnie.Polecam.', 48),
(829, 16567374, 'S...3', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2022-09-27 21:25:22', '2022-09-22 20:10:33', 0, 0, 'Dobre wykonanie', 48),
(830, 16916859, 'Stanisław', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2022-12-22 09:19:57', '2022-12-09 08:50:50', 0, 0, 'jest ok', 48),
(831, 16486313, 'jac', 'Polecam', '4/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2022-09-04 10:21:29', '2022-08-04 13:05:30', 0, 0, 'ok', 48),
(832, 16947699, 'a...2', 'Polecam', '4,5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2022-12-29 13:13:10', '2022-12-11 12:15:34', 1, 0, 'Syn zadowolony ,słuchawki bardzo dobrze się sprawują i nie ma  z nimi i żadnego problemu.', 48),
(833, 16957392, 'r...k', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2022-12-31 06:28:12', '2022-12-13 21:53:40', 0, 0, 'Spełnienia swoją rolę', 48),
(834, 17541753, 'a...3', 'Polecam', '4/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-24 11:22:46', '2023-05-21 09:00:17', 0, 0, 'Spelnia oczekiwania', 48),
(835, 17253835, 'k...z', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-03-11 00:21:09', '2023-02-25 15:40:50', 0, 0, ':)', 48),
(836, 16925625, 'Użytkownik Ceneo', 'Nie polecam', '2/5', NULL, '2022-12-23 23:38:25', NULL, 2, 1, 'Nie mogę przyciszyć ich na iPhone odpowiednio, są wciąż za głośne nawet na mega mininalnej głośności. Na samsungu bez problemu.. albo laptopie. Masakra :/ i dźwięk gorszy niż z słuchawek iPhone, taki płaski, choć nie przeszkadzałoby mi to, gdyby w ogóle moznaby było je przyciszyć!!!', 48),
(837, 16544121, 'a...2', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2022-09-21 11:24:10', '2022-09-08 15:48:27', 0, 0, 'Ok', 48),
(838, 15659862, 'Użytkownik Ceneo', 'Nie polecam', '2,5/5', NULL, '2022-02-04 20:11:49', NULL, 0, 4, 'Słuchawki fajne jeśli kosztował by 200 zł.', 48),
(839, 15275519, 'h...4', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2021-11-29 19:26:20', '2021-10-29 23:13:22', 0, 0, 'Rewelacja', 49),
(840, 13659078, 'p...a', 'Polecam', '4,5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2020-12-28 09:53:57', '2020-11-27 14:14:39', 0, 0, 'piekne i dobre wykonanie gra może nie wnosi zbyt wiele ułatwia setup podstawki bo już nie musimy rozkładać drzewa jedynie dokładamy niewielką planszę dodatkowo grą możemy cieszyć się w wiekszym gronie  :D ale najwiekszym plusem  są karty  zwierzaków które wnoszą asymetryczność do gry  :D', 49),
(841, 14281961, 'r...a', 'Polecam', '4/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2021-04-13 20:21:36', '2021-04-09 22:16:03', 0, 0, 'Dodatek nie wprowadza do gry tyle nowości ilu można by się było spodziewać po jego cenie. Mimo wszystko warto rozszerzyć Everdell o tę opcję. Asymetria w zdolnościach meepli, nowe osiągnięcia i targowisko wprowadzają powiew świeżości.', 49),
(842, 13151338, 'Dominik', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2020-10-01 20:43:19', '2020-09-14 08:25:41', 0, 0, 'OJJJ dla fanów Everdell dodatek obowiązkowy! bardzo fajnie urozmaica grę i dodaje kilka ciekawych możliwości. Wraz z żoną uwielbiamy!', 49),
(843, 13603289, 't...o', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2020-12-18 00:03:24', '2020-11-27 21:49:46', 0, 0, 'Jedna z lepszych gier, która jest prosta i zarazem piękna i wciąż wciągająca , bo nie jest utarta koniec początek', 49),
(844, 16875606, 'f...a', 'Polecam', '4/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2022-12-14 00:29:03', '2022-11-05 13:26:47', 0, 0, 'Bardzo dobre wykonanie, choć cena produktu jest za wysoka względem zawartości, choć to już nie zależy od sklepu.', 49),
(845, 13571847, 'j...k', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2020-12-14 12:15:32', '2020-12-09 08:19:43', 0, 0, 'Przesyłka nadeszła bardzo szybko. Trudno mi ocenić sam produkt, ponieważ jest to prezent na święta', 49),
(846, 13790600, 'm...a', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2021-01-18 12:46:58', '2021-01-13 21:57:02', 0, 0, 'Pieknie wykonany dodatek. Urozmaica grę i daje nowe możliwości.', 49),
(847, 14881584, 's...k', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2021-08-25 10:24:26', '2021-08-12 13:17:32', 0, 0, 'Przepięknie wykonane karty oraz dodatkowe elementy.', 49),
(848, 13421477, 'Użytkownik Ceneo', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2020-11-21 07:32:44', '2020-10-28 06:28:28', 0, 0, 'Świetny dodatek. Każdy fan tej gry powinien to miec', 49),
(849, 15667144, 'Dorota', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2022-02-07 13:26:30', '2022-01-28 19:32:19', 0, 0, 'Śliczny dodatek - targowisko dodanej nowych emocji', 49),
(850, 14215173, 'm...k', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2021-04-01 09:35:11', '2021-03-15 20:49:31', 0, 0, 'produkt zgodny z opisem; świetny dodatek do gry', 49),
(851, 15585412, 'P...k', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2022-01-20 10:51:43', '2022-01-10 11:37:34', 0, 0, 'Bardzo fajny dodatek, polecam ! :D', 49),
(852, 13686358, 'Marcin', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2020-12-30 22:47:39', '2020-12-13 17:28:56', 0, 0, 'Produkt bajecznie wykonany.', 49),
(853, 16048257, 'm...r', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2022-05-05 21:12:38', '2022-04-13 00:47:37', 0, 0, 'Super dodatek, polecam.', 49),
(854, 14099976, 'lolus17', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2021-03-11 19:14:33', '2021-03-02 20:43:34', 0, 0, 'wszystko w porzadku', 49),
(855, 14241341, 'p...o', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2021-04-07 00:41:33', '2021-03-27 22:02:00', 0, 0, 'świetny dodatek', 49),
(856, 15855858, 'b...a', 'Polecam', '4/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2022-03-22 19:09:50', '2022-03-19 15:38:39', 0, 0, 'nie warto ;)', 49),
(857, 13812827, 'd...5', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2021-01-21 10:52:26', '2021-01-18 20:29:09', 0, 0, 'Rewelacja!', 49),
(858, 14270913, 'k...7', 'Polecam', '4,5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2021-04-11 19:54:01', '2021-03-11 22:01:57', 0, 0, 'REWELACJA', 49),
(859, 11867793, 'Użytkownik Ceneo', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2020-03-07 20:18:26', '2020-02-06 09:56:43', 0, 0, 'Polecam', 49),
(860, 14915835, 'k...i', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2021-09-02 17:25:33', '2021-08-24 19:17:12', 0, 0, '👍🏼😁', 49),
(861, 14053636, 'b...a', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2021-03-03 22:24:09', '2021-02-21 11:59:33', 0, 0, 'Super.', 49),
(862, 16915909, 'b...a', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2022-12-22 00:55:32', '2022-12-03 23:43:00', 0, 0, 'Super', 49),
(863, 14204979, 'Q...6', 'Polecam', '4,5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2021-03-30 21:35:20', '2021-03-19 19:27:42', 0, 0, 'Super', 49),
(864, 14424812, 'k...i', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2021-05-07 18:08:26', '2021-04-06 19:52:45', 0, 0, 'Ok', 49),
(865, 14131268, 'm...5', 'Polecam', '4/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2021-03-17 13:52:43', '2021-03-15 00:25:18', 0, 0, 'ok', 49),
(866, 1851305, '2...4', 'Polecam', '4/5', NULL, '2011-11-30 13:40:28', NULL, 0, 0, 'Do dnia dzisiejszego nie było żadnych problemów. Lodówka działała sprawnie, dobrze mroziła, w miarę cicho chodziła. Jednak po 3,5 roku użytkowania wysiadła sprężarka. Część nie nadająca się do naprawy. Trzeba ją wymienić na nową, a wymiana, jak się dowiedzieliśmy, kosztowała by nas ok 500,00 zł. Przy obecnej cenie tej lodówki ok. 800 zł opłaca się kupić coś nowego i może coś, co wytrzyma min. 5 lat.. Ogólnie nie polecam.', 50),
(867, 1075211, 'Użytkownik Ceneo', 'Polecam', '5/5', NULL, '2009-10-03 16:50:27', NULL, 0, 0, 'Kupiłam tą lodówkę rok temu ze względu na małą szerokość, gdyż większa nie weszłaby mi do kuchni. Póki co nie mam powodów do narzekania. Nie zgadzam się z innymi opiniami u mnie jej pracy wogóle nie słychać, dobrze chłodzi, uszczelki póki co tez w porządku, można powiedzieć że trzymają aż za dobrze. Dla mnie dobra lodówka', 50),
(868, 1637327, 'Użytkownik Ceneo', 'Polecam', '5/5', NULL, '2010-02-24 17:25:03', NULL, 2, 0, 'Posiadam tę lodówkę od 2 lat jednak w kolorze  inox.Lodówka jest niestety dość hałaśliwa, stale sie w niej coś przelewa i szumi jednak jeśli chodzi o utrzymanie czystości to naprawdę dobrze się ja sprząta.Lodówka ma regulowane szklane półki,jest bardzo pojemna i sama się odmraża.polecam', 50),
(869, 1074736, 'Użytkownik Ceneo', 'Polecam', '5/5', NULL, '2009-10-03 17:39:10', NULL, 0, 0, 'Mieszkam w bloku, mamy małe mieszkanko i zależy nam aby w kuchni znalazły się wszystkie potrzebne rzeczy.No a jak każdy wie bez lodówki normalnie żyć jest cięzko.Kupiliśmy ją 2 lata temu i jak narazie to się świetnie sprawdza.Niby jest wąziutka ,ale pomieści bardzo dużo rzeczy,Polecam', 50),
(870, 1682968, 'Użytkownik Ceneo', 'Polecam', '5/5', NULL, '2010-02-18 10:33:34', NULL, 0, 1, 'Bardzo dobra lodówka ,wysokiej klasy produkt, wykonana z bardzo dobrego materiału co stawia ją na wysokim poziomie. Elegancki i stylowy wygląd, energooszczędna i bezawaryjna, bardzo solidnie wykonana i stabilna. Jest niedroga , do codziennego użytku. Polecam wszystkim.', 50),
(871, 1716881, 'b...d', NULL, '3/5', NULL, '2010-05-08 12:55:56', NULL, 0, 0, 'Niestety zawiodłam się. Kupiłam tą lodówkę 1,5 roku temu. Już raz miałam wymieniany agregat. Zgadzam się z innym, że głośno chodzi. Jeśli chodzi o chłodzenie to na \"2\" raz mam na ściankach wodę a raz lód, natomiast jak podkręcę np na \"3\", to zamarzają mi produkty !!! Ostatnio z ogórka zrobił się lód !! Drugi raz nie kupiłabym jej.', 50),
(872, 356270, '8...c', 'Nie polecam', '1/5', NULL, '2009-06-09 15:26:26', NULL, 6, 0, 'Witam wszystkich, ludzie nie kupujcie tego złomu, nie wiem jak można wypuścić na rynek taki bubel. Po pierwsze zgadzam się ze wszystkimi, chodzi głośno, kompresor spalił się już dwa razy, na dodatek po drugiej wymianie był efekt głośnej jego pracy, co w następstwie pociągnęło za sobą spalenie kompresora, uszczelki - szajs (pękają po 6 miesiącach). To już jest druga moja lodówka( która zepsuła się po dwóch tygodniach), obecnie czekam na TRZECIĄ!!! Mam już dość. Na dodatek w centralnym serwisie BEKO w Warszawie powiedzieli że nie zwracają pieniędzy - tylko towar za towar. Jeśli tak dalej pójdzie - sprawa trafi do sądu o zwrot pieniędzy.\r\rSTANOWCZO ODRADZAM lepiej dołożyć troszkę więcej pieniążków i kupić coś wiarygodniejszego.', 50),
(873, 364025, 'Użytkownik Ceneo', 'Nie polecam', '1/5', NULL, '2009-06-16 10:36:31', NULL, 4, 1, 'nie kupujcie tej lodówki półki szczelają jak chcą właśnie jade zamówić kolejne nadaje się tylko na wystawę bo ładnie wygląda w praktyce nie do użycia  głśna mam otwartą kuchnie jak się włancza muszę dawać głóśniej telewizor no i uszczelki do d.... serwisant jak wymieniał mówił że to wina nie odpowiedniego otwierania ale po przeczytaniu opinni stwierdzam że to lodówka nie dla polaków bo każdemu pękają uszczelki nie tylko mi', 50),
(874, 269554, 'Użytkownik Ceneo', 'Nie polecam', '1/5', NULL, '2009-02-27 23:34:21', NULL, 1, 0, 'Mam tą lodówkę 8 miesiecy i własnie spalił sie kompresor, wymiana na szczęście na gwarancji. Po wymianie kompresora kolejny chodzi caly czas az obudowa lodówki jest gorąca, postawiłam koło lodowki gasnice w razie czegoś i czekam na kolejną wizyte serwisu. Jak na razie rozczarowanie. Poza tym słaba jakość uszcelek u mnie pękła uszczelka chłodziarki i kwalifikuje sie do wymiany.', 50),
(875, 1492364, 'e...f', 'Nie polecam', '1/5', NULL, '2010-01-07 20:26:05', NULL, 1, 0, 'Lodówka beko to czysty bubel, podczas gwarancji mieliśmy wymienioną sprężarkę ale po 9 miesiącach znowu stało się to samo tym razem serwisant już nie uznaje gwarancji bo ona skończyła się w czerwcu a na wymianę pod zespołu już jej nie daje normalnie paranoja pieniądze wyrzucone w błoto odradzam zakup sprzętu agd z tej firmy.', 50),
(876, 1990955, 'c...d', 'Polecam', '5/5', NULL, '2012-08-31 10:55:52', NULL, 0, 0, 'mam ją 5 lat, jest niezawodna aż do dziś guma z uszczelki sparciała czy juz sie po prostu zużyła od nadmiernego otwierania wiadomo lodówka to sprzęt codziennego użytku. wie ktos moze czy da sie wuymienic uszczelkę w drzwiach?', 50),
(877, 1728335, '7...0', NULL, '3/5', NULL, '2010-07-16 18:47:48', NULL, 0, 0, 'Po pół roku użytkowania lodówki popsuł się agregat, głośno chodzi (słychać przelewanie), cały czas jest \"nakręcona\" na poziom 2. Raz na ściankach jest woda, a raz wszystko w lodówce mi zamarza! Ogolnie odradzam, choć ładnie wizualnie wygląda (mam model INOX).', 50),
(878, 1346918, '3...d', NULL, '3/5', NULL, '2009-12-01 11:56:22', NULL, 0, 1, 'Fatalna sprawa. Zespuła sie po 2,5 roku. Przestała sie wyłączać. Pan z serwisu BEKO powiedział, że już nie do naprawy. Gaz uciekał. No ale co się dziwić, produkuje je w Rumuni. Eh, pieniądze w błoto wyrzucone.', 50),
(879, 831854, '6...f', NULL, '3/5', NULL, '2009-09-21 21:48:41', NULL, 5, 0, 'Głośna praca. Bardzo głośna. Charakteryzuje się bulgotaniem. Poziomowanie nie zmienia sytuacji. Grzeje się. ODRADZAM', 50),
(880, 2030463, 'Użytkownik Ceneo', NULL, '3/5', NULL, '2013-02-16 15:23:49', NULL, 0, 0, 'póki co mam tę lodówkę prawie rok i wszystko jest ok,posiada dużo miejsca z czego jestem zadowolony ,ale jest przerażająco hałaśliwa', 50),
(881, 358161, '2...3', NULL, '3/5', NULL, '2009-06-11 12:11:54', NULL, 2, 0, 'Zgadzam się z przedmówcami,tandeta. 2 awarie,2 lodówka i to samo,znowu awaria.A 20 letni mińsk jeszcze chodzi.', 50),
(882, 351048, 'a...2', NULL, '3/5', NULL, '2009-06-01 21:06:24', NULL, 3, 0, 'Mam ja już prawie rok. Bardzo głośno chodzi. W życiu nie słyszałem tak głośnej lodówki', 50),
(883, 2129195, 'Użytkownik Ceneo', 'Polecam', '5/5', NULL, '2013-06-30 22:00:16', NULL, 0, 0, '5,0/5', 51),
(884, 300843, 'Użytkownik Ceneo', 'Nie polecam', '1/5', NULL, '2009-03-05 22:41:40', NULL, 0, 0, 'Tonsil zawsze był dla mnie synonimem luksusu w świecie audio, dlatego też jak wiele lat temu w końcu stać mnie było na zakup głośników, wybór był oczywisty (oczywiście mocno zawężony posiadanym budżetem). \rJako młody chłopak szukałem kolumn, które będą w stanie rozbujać domową imprezkę. I jako takie sprawują się znakomicie, są o wiele przy tym subelniejsze od Altusów.\rCóż, z wiekiem zmieniają się oczekiwania od sprzętu i chciałoby się mieć coś wiecej. A tutaj już nie jest tak wesoło.\rBas jest dobry, o ile moco wysterujemy kolumny, choć nie musi się to już podobać sąsiadom. Niestety nie ma on tej przyjemnej głębi i ciepła. Górne pasmo wogóle nie istnieje... Jedynym argumentem na obronę Soundfinderów jest przystępna cena oraz brak funduszy na lepszy sprzęt, ale jak się nie ma co się lubi...', 51),
(885, 1584710, 'Użytkownik Ceneo', 'Nie polecam', '2/5', NULL, '2010-01-31 17:27:57', NULL, 0, 2, 'Prezentowane kolumny to słaby produkt. O ile moc jest w miarę wystarczająca, to co do jakości mam zastrzeżenia. O ile tony wysokie są wystarczające, to wyraźnie brakuje tonów niskich. Podsumowując, nie polecam tych kolumn.', 51);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_code`) VALUES
(47, 53026041),
(48, 120522561),
(49, 90892559),
(50, 234234),
(51, 123123);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pros`
--

CREATE TABLE `pros` (
  `pros_id` int(11) NOT NULL,
  `text` text NOT NULL,
  `opinion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pros`
--

INSERT INTO `pros` (`pros_id`, `text`, `opinion_id`) VALUES
(1455, 'fabuła', 16985579),
(1456, 'grywalność', 16985579),
(1457, 'jakość', 16985579),
(1458, 'regrywalność', 16985579),
(1459, 'fabuła', 17569392),
(1460, 'grywalność', 17569392),
(1461, 'jakość', 17569392),
(1462, 'fabuła', 10305419),
(1463, 'grywalność', 10305419),
(1464, 'jakość', 10305419),
(1465, 'nowe frakcje', 10387828),
(1466, 'regrywalność', 10387828),
(1467, 'śliczne pudelko.', 10387828),
(1468, 'grywalność', 8967457),
(1469, 'jakość', 8967457),
(1470, 'fabuła', 8978913),
(1471, 'grywalność', 8978913),
(1472, 'jakość', 8978913),
(1473, 'grywalność', 10125959),
(1474, 'jakość', 10125959),
(1475, 'fabuła', 8050005),
(1476, 'grywalność', 8050005),
(1477, 'jakość', 8050005),
(1478, 'fabuła', 10318606),
(1479, 'grywalność', 10318606),
(1480, 'jakość', 10318606),
(1481, 'fabuła', 17017918),
(1482, 'grywalność', 17017918),
(1483, 'jakość', 17017918),
(1484, 'nowe frakcje', 17017918),
(1485, 'regrywalność', 17017918),
(1486, 'śliczne pudelko.', 17017918),
(1487, 'fabuła', 8090322),
(1488, 'grywalność', 8090322),
(1489, 'jakość', 8090322),
(1490, 'fabuła', 8996767),
(1491, 'grywalność', 8996767),
(1492, 'jakość', 8996767),
(1493, 'grywalność', 8906403),
(1494, 'jakość', 8906403),
(1495, 'fabuła', 13824358),
(1496, 'grywalność', 13824358),
(1497, 'jakość', 13824358),
(1498, 'regrywalność', 13824358),
(1499, 'fabuła', 8943511),
(1500, 'grywalność', 8943511),
(1501, 'jakość', 8943511),
(1502, 'fabuła', 12927742),
(1503, 'grywalność', 12927742),
(1504, 'jakość', 12927742),
(1505, 'nowe frakcje', 12927742),
(1506, 'regrywalność', 12927742),
(1507, 'śliczne pudelko.', 12927742),
(1508, 'fabuła', 13897057),
(1509, 'grywalność', 13897057),
(1510, 'jakość', 13897057),
(1511, 'regrywalność', 13897057),
(1512, 'fabuła', 12777476),
(1513, 'grywalność', 12777476),
(1514, 'jakość', 12777476),
(1515, 'regrywalność', 12777476),
(1516, 'fabuła', 8062759),
(1517, 'grywalność', 8062759),
(1518, 'jakość', 8062759),
(1519, 'fabuła', 13916419),
(1520, 'grywalność', 13916419),
(1521, 'jakość', 13916419),
(1522, 'regrywalność', 13916419),
(1523, 'fabuła', 8427873),
(1524, 'grywalność', 8427873),
(1525, 'fabuła', 12642132),
(1526, 'grywalność', 12642132),
(1527, 'jakość', 12642132),
(1528, 'regrywalność', 12642132),
(1529, 'grywalność', 15504772),
(1530, 'jakość', 15504772),
(1531, 'regrywalność', 15504772),
(1532, 'fabuła', 13721409),
(1533, 'grywalność', 13721409),
(1534, 'jakość', 13721409),
(1535, 'nowe frakcje', 13721409),
(1536, 'regrywalność', 13721409),
(1537, 'śliczne pudelko.', 13721409),
(1538, 'cena', 16250526),
(1539, 'fabuła', 16250526),
(1540, 'grywalność', 16250526),
(1541, 'jakość', 16250526),
(1542, 'nowe frakcje', 16250526),
(1543, 'regrywalność', 16250526),
(1544, 'śliczne pudelko.', 16250526),
(1545, 'fabuła', 17613119),
(1546, 'grywalność', 17613119),
(1547, 'jakość', 17613119),
(1548, 'regrywalność', 17613119),
(1549, 'cena', 15644060),
(1550, 'fabuła', 15644060),
(1551, 'grywalność', 15644060),
(1552, 'jakość', 15644060),
(1553, 'nowe frakcje', 15644060),
(1554, 'regrywalność', 15644060),
(1555, 'śliczne pudelko.', 15644060),
(1556, 'fabuła', 14022750),
(1557, 'grywalność', 14022750),
(1558, 'jakość', 14022750),
(1559, 'fabuła', 13348259),
(1560, 'grywalność', 13348259),
(1561, 'jakość', 13348259),
(1562, 'regrywalność', 13348259),
(1563, 'cena', 17622593),
(1564, 'fabuła', 17622593),
(1565, 'grywalność', 17622593),
(1566, 'jakość', 17622593),
(1567, 'nowe frakcje', 17622593),
(1568, 'regrywalność', 17622593),
(1569, 'śliczne pudelko.', 17622593),
(1570, 'fabuła', 16771043),
(1571, 'grywalność', 16771043),
(1572, 'jakość', 16771043),
(1573, 'regrywalność', 16771043),
(1574, 'fabuła', 14993564),
(1575, 'grywalność', 14993564),
(1576, 'jakość', 14993564),
(1577, 'regrywalność', 14993564),
(1578, 'fabuła', 12694934),
(1579, 'grywalność', 12694934),
(1580, 'jakość', 12694934),
(1581, 'fabuła', 13032964),
(1582, 'grywalność', 13032964),
(1583, 'jakość', 13032964),
(1584, 'regrywalność', 13032964),
(1585, 'jakość dźwięku', 16477319),
(1586, 'wygląd', 16477319),
(1587, 'wygoda używania', 16477319),
(1588, 'jakość dźwięku', 16486313),
(1589, 'wygląd', 16486313),
(1590, 'wygoda używania', 16486313),
(1591, 'jakość dźwięku', 16947699),
(1592, 'wygląd', 16947699),
(1593, 'wygoda używania', 16947699),
(1594, 'wygląd', 16925625),
(1595, 'wygoda używania', 16925625),
(1596, 'jakość dźwięku', 16544121),
(1597, 'wygląd', 16544121),
(1598, 'jakość dźwięku', 15659862),
(1599, 'wygląd', 15659862),
(1600, 'fabuła', 15275519),
(1601, 'grywalność', 15275519),
(1602, 'ilustracje', 15275519),
(1603, 'jakość', 15275519),
(1604, 'fabuła', 14281961),
(1605, 'grywalność', 14281961),
(1606, 'ilustracje', 14281961),
(1607, 'jakość', 14281961),
(1608, 'wykonanie', 14281961),
(1609, 'fabuła', 13151338),
(1610, 'grywalność', 13151338),
(1611, 'ilustracje', 13151338),
(1612, 'jakość', 13151338),
(1613, 'fabuła', 13603289),
(1614, 'grywalność', 13603289),
(1615, 'ilustracje', 13603289),
(1616, 'jakość', 13603289),
(1617, 'fabuła', 13790600),
(1618, 'grywalność', 13790600),
(1619, 'ilustracje', 13790600),
(1620, 'jakość', 13790600),
(1621, 'wykonanie', 13790600),
(1622, 'fabuła', 14881584),
(1623, 'grywalność', 14881584),
(1624, 'ilustracje', 14881584),
(1625, 'jakość', 14881584),
(1626, 'fabuła', 13421477),
(1627, 'grywalność', 13421477),
(1628, 'ilustracje', 13421477),
(1629, 'jakość', 13421477),
(1630, 'fabuła', 15667144),
(1631, 'grywalność', 15667144),
(1632, 'ilustracje', 15667144),
(1633, 'jakość', 15667144),
(1634, 'fabuła', 14215173),
(1635, 'grywalność', 14215173),
(1636, 'ilustracje', 14215173),
(1637, 'jakość', 14215173),
(1638, 'fabuła', 15585412),
(1639, 'grywalność', 15585412),
(1640, 'ilustracje', 15585412),
(1641, 'jakość', 15585412),
(1642, 'ilustracje', 13686358),
(1643, 'jakość', 13686358),
(1644, 'fabuła', 16048257),
(1645, 'grywalność', 16048257),
(1646, 'ilustracje', 16048257),
(1647, 'jakość', 16048257),
(1648, 'grywalność', 15855858),
(1649, 'ilustracje', 15855858),
(1650, 'jakość', 15855858),
(1651, 'fabuła', 14915835),
(1652, 'grywalność', 14915835),
(1653, 'ilustracje', 14915835),
(1654, 'jakość', 14915835),
(1655, 'fabuła', 14053636),
(1656, 'grywalność', 14053636),
(1657, 'ilustracje', 14053636),
(1658, 'jakość', 14053636),
(1659, 'fabuła', 14204979),
(1660, 'grywalność', 14204979),
(1661, 'ilustracje', 14204979),
(1662, 'jakość', 14204979);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stats`
--

CREATE TABLE `stats` (
  `stats_id` int(11) NOT NULL,
  `opinions_count` int(11) NOT NULL,
  `pros_count` int(11) NOT NULL,
  `cons_count` int(11) NOT NULL,
  `avg_score` float NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stats`
--

INSERT INTO `stats` (`stats_id`, `opinions_count`, `pros_count`, `cons_count`, `avg_score`, `product_id`) VALUES
(2, 67, 34, 5, 4.93, 53026041),
(3, 12, 6, 1, 4.33, 120522561),
(4, 27, 16, 2, 4.8, 90892559),
(5, 17, 0, 0, 3.18, 234234),
(6, 3, 0, 0, 2.67, 123123);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `cons`
--
ALTER TABLE `cons`
  ADD PRIMARY KEY (`cons_id`),
  ADD KEY `opinion_id` (`opinion_id`);

--
-- Indeksy dla tabeli `opinions`
--
ALTER TABLE `opinions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `opinion_id` (`opinion_id`);

--
-- Indeksy dla tabeli `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indeksy dla tabeli `pros`
--
ALTER TABLE `pros`
  ADD PRIMARY KEY (`pros_id`),
  ADD KEY `opinion_id` (`opinion_id`);

--
-- Indeksy dla tabeli `stats`
--
ALTER TABLE `stats`
  ADD PRIMARY KEY (`stats_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cons`
--
ALTER TABLE `cons`
  MODIFY `cons_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `opinions`
--
ALTER TABLE `opinions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=886;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `pros`
--
ALTER TABLE `pros`
  MODIFY `pros_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1663;

--
-- AUTO_INCREMENT for table `stats`
--
ALTER TABLE `stats`
  MODIFY `stats_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cons`
--
ALTER TABLE `cons`
  ADD CONSTRAINT `cons_ibfk_1` FOREIGN KEY (`opinion_id`) REFERENCES `opinions` (`opinion_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `opinions`
--
ALTER TABLE `opinions`
  ADD CONSTRAINT `opinions_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
