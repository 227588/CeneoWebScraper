-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Cze 30, 2023 at 06:28 AM
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
(1, 'brak minijack', 17497612),
(2, 'bloatware', 17450857),
(3, 'czas pracy na baterii', 17597796),
(4, 'brak minijack', 17554555),
(5, 'czas pracy na baterii', 17554555),
(6, 'brak minijack', 17595574),
(7, 'grubość', 17595574),
(8, 'czas pracy na baterii', 17534054),
(9, 'funkcjonalność', 17534054),
(10, 'wygląd', 17534054),
(11, 'bloatware', 17568745),
(12, 'czas pracy na baterii', 17570745),
(13, 'funkcjonalność', 17570745),
(14, 'wygląd', 17570745),
(15, 'brak minijack', 17544129),
(16, 'czas pracy na baterii', 17627186),
(17, 'brak minijack', 17642675),
(18, 'czas pracy na baterii', 17642675),
(19, 'wygląd', 17363048),
(20, 'czas pracy na baterii', 17480549),
(21, 'wygląd', 17480549),
(22, 'brak minijack', 17565660),
(23, 'grubość', 17565660),
(24, 'brak minijack', 17580057),
(25, 'funkcjonalność', 17580057),
(26, 'printscreen', 17580057),
(27, 'grubość', 17636521),
(28, 'czas pracy na baterii', 17608170),
(29, 'czas pracy na baterii', 17506438),
(30, 'brak minijack', 17547947);

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
(1, 17644074, 'h...z', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-24 10:14:32', '2023-06-18 15:04:42', 0, 0, '#Promocja-Galaxy \nTelefon jest szybki, działa bez zacięć. Robi dobre zdjęcia, bateria trzyma dwa dni,\nbardzo dobry głośnik. Dużym plusem jest że ma miejsce na kartę microSD.\nBardzo dobry smartfon. Jestem bardzo zadowolona z zakupu.', 1),
(2, 17497612, 'M...k', 'Polecam', '4,5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-11 18:21:22', '2023-04-11 10:11:56', 4, 2, 'Przesiadłam się z Samsunga A50 na A54 więc przeskok jest spory. Nie lubię zbyt często zmieniać telefonu więc pomyślałam że poprostu przesiądę się na nowszy model. A53 mnie nie przekonało więc czekałam na A54. Po miesiącu użytkowania mogę powiedzieć że:\n*robi fajne zdjęcia, \n*bluetooth szybko paruje się z urzadzeniami, \n*jakość rozmów jest dobra,\n*aplikacje socjal mediów się nie zacinają,\n*szybko łączy się z internetem czy to WiFi czy transmisja danych,\n*bateria trzyma cały dzień,\n*bardzo fajny głośnik.\nZ wad to napewno brak wejścia mini jack  oraz raz zawiesił się podczas oglądania filmu na disney+. Czy polecam ten telefon? Dla osoby która nie gra w gry tylko zależy jej na dobrych zdjęciach, długim wsparciu że strony producenta oraz żeby apki płynnie śmigały to jak najbardziej.', 1),
(3, 17646953, 'p...a', 'Polecam', '4,5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-26 11:12:01', '2023-06-20 21:11:55', 0, 0, 'Design miły dla oka, wielki plus za szkło z tyłu,. Telefon jest dość szeroki ale to mi absolutnie nie przeszkadza a wręcz dla mnie jest to atut. Super jasny ekran o dobrej jakości. Aparat robi dobre zdjęcia zarówno w dzień jak i w nocy. Co ważne dla mnie to to że aparat nie przekłamuje kolorów a zdjęcia są ostre. Głośniki mają na prawdę dobra jakość. Ogólne użytkowanie oceniam na 9/10, ponieważ bateria w nocy zaskakująco szybko spada (nawet o 20%) z czym się nie spotkałam w poprzednich modelach telefonów. Mimo tego bateria wytrzymuje cały dzień intensywnego użytkowania bez włączonego oszczędzania baterii i włączoną transmisją danych. Z minusów oprócz działania baterii w nocy mogę wymienić ewentualnie długość jej ładowania mimo super szybkiego trybu ładownia od 6 do 100% ładuje się w ponad godzinę, a w porowanaiu do wcześniejszego telefonu jest to spora różnica. Podsumowując - po ok. tygodniu używania - polecam. Za cenę 1599 zł myślę, że warty kupna.', 1),
(4, 17525754, 'w...3', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-19 11:08:51', '2023-05-14 16:38:49', 1, 0, 'Jestem zadowolony z produktu', 1),
(5, 17450857, 'Mateusz', 'Polecam', '4/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-04-27 10:18:05', '2023-04-23 16:43:35', 9, 1, 'Telefon sprzętowo jest super pod każdym względem. Bateria z biedą wytrzyma nawet 2 dni. 2 miejsca na karty SIM i obsługuje eSIM (super!). Wspiera VoWifi i VoLTE. Jest miejsce na microSD. Dobre głośniki, ekran i wystarczająco szybki procesor do bardzo komfortowej pracy. Nie jestem ekspertem od kamery, ale wydaje się pstrykać bardzo ładne zdjęcia. Na dzień dzisiejszy w zasadzie nie widzę sensu kupowania dwa razy droższej serii S, bo dodatkowa prędkość procesora jest po prostu niepotrzebna, a aparat jest dobry nawet w serii A.\n\nDuży minus to ogramna ilość niepotrzebnego oprogramowania jakie Samsung pakuje do swoich produktów (tak zwane bloatware) i ciągłe namawianie na założenie konta Samsung i konta Google. Do usunięcia części denerwującego oprogramowania trzeba używać komputera i magicznych narzędzi, które nie są możliwe do obsługi przez przeciętną osobę. Jeszcze lepiej byłoby gdyby Samsung pozwalał łatwo wgrywać alternatywny system operacyjny.', 1),
(6, 17650751, 'Krzysztof H.', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-27 11:17:38', '2023-06-12 19:59:54', 0, 0, 'Telefon przyzwoicie zapakowany, ale wyposażenie budżetowe. W zestawie tylko kabel usb CC, który bardzo ułatwia transfer danych i ustawień ze starego telefonu. Średniak z dobrym aparatem, pojemną baterią i pewnie działającym czytnikiem linii papilarnych. Polecam.', 1),
(7, 17520342, 'm...a', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-18 08:41:52', '2023-05-09 13:11:43', 2, 0, '#Promocja-Galaxy Telefon jest śliczny, bardzo poręczny i funkcjonalny. Jestem bardzo zadowolona z jakości zdjęć. To ogromny plus. Wad nie zauważyłam:)', 1),
(8, 17467799, 'p...k', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-03 08:58:00', '2023-04-17 10:42:58', 2, 1, 'Telefon mam od kilku dni, więc nie jest to recenzja długoterminowa. Bardziej - pierwsze wrażenia użytkowania.\nTelefon w porównaniu do poprzedniej generacji wygląda dużo, dużo lepiej. Wykonany jest z lepszych materiałów i to po prostu czuć w dłoni.\n\nNakładka systemowa Samsunga - One UI 5.1 jest w porządku. Przesiadłem się z A53 więc trudno o ekscytację w tym temacie ale jeśli planujesz zmianę ze starszego Xiaomi to jest duża szansa że poczujesz dużą ulgę. Samsung deklaruje długie wspieranie urządzeń i aktualizacje rzeczywiście pojawiają się regularnie. Doceniam to.\n\nBateria działa wyraźnie lepiej niż u mojego poprzednika, którego czas pracy bywał rozczarowujący. Nie jestem graczem, telefon służy mi do normalnej pracy, nawigacji, social media. Teraz wytrzymuje 1.5 dnia i to jest duży plus.\n\nEkran, aparaty, głośniki są po prostu w porządku. Podsumowując: Elementy zwykłego średniaka zostały ubrane w droższą obudowę.\n\nWady: Prędkość ładowania baterii. 25W jest poniżej oczekiwań. Słabe jest to że Samsung nie dodaje nic prócz kabla USB.\nZwykły silikonowy case czy ładowarka w tej cenie telefonu powinny po prostu być w zestawie.\n\nCzy jestem zadowolony? Wiedziałem czego się spodziewać i dokładnie to otrzymałem. Obsługa sklepu x-kom bez jakichkolwiek problemów', 1),
(9, 17406009, 'a...o', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-04-15 12:05:03', '2023-03-26 11:00:03', 1, 1, 'Mam go dwa tygodnie. Wszystko sprawuje sie super. Na poczatku byly duze spadki baterii w nocy(nawet 30 procent) pomimo ze wszystko bylo wylaczone ( ale podobno tak sie dzieje). Teraz juz jest  ok.', 1),
(10, 17620210, 'r...l', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-16 20:35:31', '2023-06-07 23:00:02', 0, 0, 'I received the phone in very good condition.  I have been using it for almost a week now.  I am still learning how to use it,  but I  think it is a great device that surely serves its purpose.', 1),
(11, 17597796, 'k...a', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-10 06:01:53', '2023-05-15 13:10:44', 0, 0, 'Świetny telefon,  robi fajnie zdjęcia', 1),
(12, 17554555, 'm...k', NULL, '3,5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-27 07:35:39', '2023-05-15 22:11:15', 1, 0, 'Telefon jest szybki, działa bez zacięć. Czytnik linii papilarnych fajnie działa nawet gdy dłonie są mokre. Mój stary A32 miał z tym problem. Słuchawki tylko usb-c. Nie kupiłem dla aparatu, bo ten jest przeciętny.Potrzebowałem funkcjonalnego telefonu z aplikacjami biurowymi i to otrzymałem. Na plus e-sim. Na minus czas pracy na baterii, bo spodziewałem się, że będzie dłuższy, no i oczywiście mocne grzanie się podczas pracy. Dużo energii z baterii idzie na podgrzanie telefonu. Szkoda, bo to zasadnicza wada.', 1),
(13, 17433566, 's...r', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-04-22 10:26:26', '2023-04-01 16:35:04', 4, 0, 'Nie mam zastrzeżeń do produktu. W porównaniu do Galaxy a 17 lepsza jakość dźwięku oraz zdjęć, A poza tym jest to Android 13 z bardzo dużą pamięcią. Dla mnie też ma znaczenie że firma Samsung nie jest efemerydą która pojawia się i znika, może współpracować z wieloma innymi urządzeniami, mam też wsparcie technologiczne przez kilka kolejnych lat a w razie czego łatwo znaleźć serwis. Natomiast chińszczyzna może być objęta jakimiś ograniczeniami więc jest to produkt niepewny.', 1),
(14, 17595574, 'm...a', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-09 12:18:02', '2023-06-04 16:20:32', 0, 0, 'Stosunek jakości do ceny (w przypadku kwoty 1.750 zł) w porządku. Telefon działa płynnie, bezproblemowo.', 1),
(15, 17600191, 'j...o', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-11 19:42:37', '2023-05-31 08:13:43', 0, 0, 'Po tygodniu użytkowania jestem zadowolony. Potwierdzam pozytywne opinie na temat czasu pracy baterii', 1),
(16, 17654947, 't...1', 'Polecam', '4,5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-28 11:16:16', '2023-06-15 05:50:12', 0, 0, 'Jakościowo bardzo dobry smartfon. Szybko działa . Zdjęcia i filmy ładne jakościowo . Polecam. Mirek.', 1),
(17, 17642342, 'd...s', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-23 18:03:05', '2023-06-12 11:01:39', 0, 0, 'Trochę duży, ale to zależy co kto lubi. Kwestia przyzwyczajenia. W obsłudze bardzo dobry. Polecam.', 1),
(18, 17606864, 'e...5', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-13 19:39:08', '2023-05-24 16:40:11', 0, 0, 'Przy niższej cenie skorzystałabym z zamówienia bez zawachania gdyż cenie markę Samsung', 1),
(19, 17511980, 'm...1', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-16 11:28:16', '2023-05-02 16:35:14', 0, 0, 'Telefon estetyczny, solidnie wykonany. Mam go zbyt krótko żeby napisać o nim obszerniej', 1),
(20, 17538010, 'q...v', 'Polecam', '4/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-23 16:01:56', '2023-04-27 16:27:17', 0, 0, 'Gdyby było wyjście słuchawkowe (jack) i gdyby telefon był ciut cieńszy to byłby super.', 1),
(21, 17645168, 's...k', 'Polecam', '4/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-25 07:16:20', '2023-06-10 23:30:20', 0, 0, 'Dobra jakość wykonania,  aparat rewelacyjny, wszystko funkcjonuje beż zastrzeżeń...', 1),
(22, 17630148, 'P...a', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-20 20:09:09', '2023-06-06 10:55:05', 0, 0, 'Po dwóch tygodniach użytkowania mogę polecić rem telefon, nie ma żadnych problemów', 1),
(23, 17618834, 's...s', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-16 12:22:39', '2023-06-02 17:00:21', 0, 0, 'Po samsungu A50 (dobry!!!) ten model  z nowym oprogramowaniem jest piętro wyżej', 1),
(24, 17562638, 'd...a', 'Polecam', '4/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-30 16:58:41', '2023-05-23 17:20:17', 0, 0, 'Obsługa ok. bateria przyzwoita, aparaty słabo.Realme8 robi lepsze foty .', 1),
(25, 17534054, 't...p', NULL, '3/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-22 18:41:52', '2023-05-14 16:21:49', 0, 0, 'wygląd to rzecz gustu, aczkolwiek - poprzedni model miał duużo ładniejszą tę ramkę dookoła, ten ma ładniejsze \"plecy\" - gdyby to połączyć byłoby na prawdę ładnie. tyle o \"estetyce\". sam telefon, po kilku dniach użytkowania, na razie rozczarowuje. dosyć często aplikacje przy próbie uruchamiania zawieszają się - nie ma reguły - różne aplikacje, efekt po uruchomieniu czarny ekran. poczekamy na aktualizację - może coś się poprawi. zdjęcia bez rewelacji (przeciętne), ale chyba najbardziej rozczarowuje bateria - nie za bardzo wystarcza na cały dzień (pojemność ..5000)', 1),
(26, 17473716, 'k...k', 'Polecam', '4/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-04 18:27:06', '2023-04-02 23:36:19', 0, 0, 'Telefon działa poprawnie. Ale słuchawek jeszcze nie dostałem. :😞', 1),
(27, 17620023, 'd...9', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-16 19:55:33', '2023-05-28 12:10:19', 0, 0, 'Wszystko ok. Sprawny, nowy. Nie ma sie do czego przyczepic', 1),
(28, 17424490, 'm...7', 'Polecam', '4,5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-04-20 10:42:24', '2023-04-16 15:14:26', 1, 0, 'Rewelacyjny dźwięk z głośników w telefonie', 1),
(29, 17630006, 'm...a', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-20 19:18:17', '2023-06-06 20:20:21', 0, 0, 'Telefon zgodny z opisem. Przyszedł po pięciu dniach.', 1),
(30, 17581423, 'b...4', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-05 12:40:03', '2023-05-23 21:30:36', 0, 0, 'Zgodne z opisem, oryginalnie opakowane. Wszystko ok', 1),
(31, 17437126, 'm...y', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-04-24 11:35:01', '2023-04-18 17:30:09', 1, 0, 'Fajny telefon jakość naprawdę w porządku', 1),
(32, 17544626, 'g...2', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-24 21:39:00', '2023-05-10 16:00:51', 1, 0, 'Dla 65 - latka dobry nawet bardzo dobry.', 1),
(33, 17568745, 'Dariusz', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-31 22:22:44', '2023-05-09 20:51:22', 1, 0, 'bardzo dobry telefon jak na średniaka', 1),
(34, 17582548, 'm...0', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-05 20:27:16', '2023-05-23 16:11:18', 0, 0, 'Wszystko w jak najlepszym porządku. Polecam', 1),
(35, 17661574, 'j...w', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-29 21:06:03', '2023-06-17 09:45:29', 0, 0, 'Petarda, dla mnie dobra cena do jakości', 1),
(36, 17566556, 'a...r', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-31 13:29:06', '2023-05-18 20:20:18', 0, 0, 'Telefon jest super.jestem zadowolony.', 1),
(37, 17570745, 'p...i', 'Polecam', '4,5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-01 12:01:49', '2023-05-20 16:05:18', 0, 0, 'Wszystko zgodnie z opisem. Polecam.', 1),
(38, 17487206, 'b...4', 'Polecam', '4/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-09 10:07:02', '2023-04-21 17:26:07', 0, 2, 'Za krutki czas by wyrazić jakąkolwiek opinie.', 1),
(39, 17338444, 'm...0', 'Polecam', '4,5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-03-30 04:44:43', '2023-03-22 12:40:59', 2, 1, 'Bardzo dobry proktut', 1),
(40, 17488122, 'm...2', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-09 12:24:25', '2023-04-24 09:20:21', 0, 0, 'Sprzęt spełnia moje oczekiwania', 1),
(41, 17400730, 't...7', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-04-14 09:43:44', '2023-03-15 19:47:34', 1, 0, 'Genialny smartphone', 1),
(42, 17572206, 'j...0', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-01 20:05:58', '2023-05-11 21:53:36', 0, 0, 'Bardzo dobry telefon polecam', 1),
(43, 17520900, 'p...1', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-18 10:28:44', '2023-05-13 11:44:30', 0, 0, 'Jestem bardzo zadowolony.', 1),
(44, 17635344, 'Tadeusz', 'Polecam', '4,5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-21 22:03:21', '2023-06-13 22:24:09', 0, 0, 'Zgodny z opisem, bez uwag', 1),
(45, 17613568, 'g...a', 'Polecam', '4/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-15 08:18:58', '2023-05-22 13:07:24', 0, 0, 'Ogólnie Ok, trochę gruby', 1),
(46, 17478479, 'Paweł', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-05 20:43:47', '2023-04-14 11:08:50', 0, 0, 'Bardzo fajny telefon :)', 1),
(47, 17596024, 'm...n', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-09 15:28:27', '2023-05-20 14:30:19', 0, 0, 'Taki za gruby troche', 1),
(48, 17549134, 'r...g', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-25 21:01:36', '2023-05-14 18:17:37', 0, 0, 'Polecam, dobra cena.', 1),
(49, 17647155, 'a...k', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-26 11:52:27', '2023-06-20 17:06:28', 0, 0, 'Jestem zadowolony.', 1),
(50, 17518771, 'k...d', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-17 20:05:53', '2023-04-16 20:28:35', 0, 0, 'Zgodnie z opisem', 1),
(51, 17563836, 'e...3', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-30 21:44:24', '2023-05-18 13:05:57', 0, 0, 'Super telefon', 1),
(52, 17616549, 'a...3', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-15 20:40:03', '2023-06-11 12:27:04', 0, 0, 'Bardzo dobry', 1),
(53, 17591794, 'a...i', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-08 08:19:54', '2023-05-18 14:35:18', 0, 0, 'wszystko ok', 1),
(54, 17544129, 'Arek', 'Polecam', '4,5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-24 20:35:45', '2023-05-09 11:25:29', 0, 0, 'Bardzo OK', 1),
(55, 17560381, 'i...6', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-30 01:44:21', '2023-05-21 18:30:29', 0, 0, 'Śmiga.', 1),
(56, 17555369, 'p...r', 'Polecam', '4/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-27 17:24:17', '2023-04-26 18:07:50', 0, 0, 'Polecam', 1),
(57, 17555031, 'n...4', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-27 11:51:30', '2023-05-15 11:25:22', 0, 0, 'Супер', 1),
(58, 17637520, 's...4', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-22 11:39:08', '2023-06-17 21:44:48', 0, 0, 'Super', 1),
(59, 17627186, 'k...1', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-20 03:11:53', '2023-06-14 22:27:08', 0, 0, 'Super', 1),
(60, 17548542, 's...z', 'Polecam', '4,5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-25 19:23:31', '2023-04-25 10:46:53', 0, 0, 'super', 1),
(61, 17472784, 'a...e', 'Polecam', '4/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-04 13:06:24', '2023-04-19 08:15:29', 0, 0, 'Fajny', 1),
(62, 17658036, 'p...i', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-28 23:28:37', '2023-06-08 14:11:49', 0, 0, 'Ok', 1),
(63, 17649173, 'g...w', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-26 22:34:04', '2023-06-16 11:10:55', 0, 0, 'Ok', 1),
(64, 17642675, 'l...l', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-23 20:22:28', '2023-06-12 11:11:01', 0, 0, 'Ok', 1),
(65, 17629632, 'e...1', 'Polecam', '4/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-20 16:55:06', '2023-06-03 16:05:19', 0, 0, 'Ok', 1),
(66, 17628796, 'n...y', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-20 12:03:59', '2023-06-14 17:59:11', 0, 0, 'Ok', 1),
(67, 17613892, 'p...k', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-15 09:30:10', '2023-06-11 14:59:46', 0, 0, 'ok', 1),
(68, 17438061, 'a...q', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-04-24 15:28:45', '2023-04-13 00:08:41', 0, 0, 'Ok', 1),
(69, 17363048, 'Użytkownik Ceneo', NULL, '3/5', NULL, '2023-04-05 07:45:46', NULL, 9, 4, 'Długo czekałem na ten telefon, myślałem ze zmienię po dwóch latach mojego a52s. Jednak gdy go wziąłem do ręki rzuciły się w oczy jego szerokie ramki jak w telefonie z przed kilku lat co w polaczeniu ze zmienionymi proporcjami ekranu i kanciastymi krawędziami spowodowały ze telefon stał się bardzo nieporęczny. Parametry tez nie zachwycają, jedynie trochę większa bateria, a rezygnacje z jednego aparatu to chyba nie można nazwać postępem (osobiście czekam na telefon z jednym porządnym aparatem). Poszukam czegoś innego.', 1),
(70, 17464662, 'w...t', NULL, '3/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-02 10:56:10', '2023-04-24 17:35:39', 0, 2, 'Trudno powiedzieć, jeszcze testuję', 1),
(71, 17475481, 'l...l', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-05 07:08:15', '2023-04-24 14:22:27', 0, 0, 'Jakość produktu dobra, działa płynnie, program tak jest stworzony, że pomagał mi pojawiającymi  informacjami przenieść zawartość ze starego telefonu (też Samsunga) do nowego wszystko co chciałem (dane i ustawienia). W związku z tym jest OK.', 1),
(72, 17640043, 'k...3', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-23 05:38:06', '2023-06-14 10:33:35', 0, 0, 'Od kilku dni jestem posiadaczem samsunga a54 i póki co nie mam zastrzeżeń. Telefon działa plynnie ,i nie zacina się.  Uważam że w tyn budżecie jest to bardzo dobry telefon.', 1),
(73, 17595784, 's...7', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-09 13:30:22', '2023-05-28 12:45:14', 0, 0, 'Telefon dobrze się prezentuje jest wykorzystywany do rozmów i wiadomości, nie korzystam z rozszerzeń. Używam dopiero 4 dni więc nie mogę wypowiadać się co do wad i zalet.', 1),
(74, 17642655, 'b...9', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-23 20:17:10', '2023-05-11 12:35:31', 0, 0, 'Samsung Galaxy A54 8/128GB.\nKupiłem córce w prezencie i jak do tej pory jest bardzo zadowolona.\nMyślę, że z czystym sumieniem mogę polecić ten produkt.\nPozdrawiam B.', 1),
(75, 17511967, 'm...1', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-16 11:26:34', '2023-05-02 16:35:14', 0, 0, 'Telefon mam od niedawna. Wydaje się, że wszystko jest ok. Przesyłkę otrzymałem szybko. Cena telefonu jest atrakcyjna i konkurencyjna wobec innych propozycji. Polecam', 1),
(76, 17480549, 'd...k', 'Polecam', '4/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-06 13:25:06', '2023-04-24 11:12:41', 0, 0, 'Na razie słabo z baterią góra 1 dzień a nie używam zbyt wiele.. trochę gruby miałem wcześniej lg stylus 2 niestety już bez wsparcia technicznego.', 1),
(77, 17658916, 'j...a', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-29 09:30:29', '2023-06-13 09:03:17', 0, 0, 'jeszcze nie wypróbowałam wszystkim możliwości, to potrwa, ale po pierwszym tygodniu jestem zachwycona swoim nowym telefonem', 1),
(78, 17582786, 'Leszek', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-05 20:55:38', '2023-05-23 22:32:12', 0, 0, 'Transakcja przebiegła błyskawicznie. Polecam. Produkt kredytowałem i tu również intuicyjnie i expresowo. Brawo Wy!', 1),
(79, 17510267, 'k...5', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-15 21:20:03', '2023-05-05 10:50:19', 0, 0, 'Prezentuje się bardzo fajnie (wersja w kolorze fiolet). Zakupiony w ramach prezentu zapewne będzie się podobał.', 1),
(80, 17480074, 'U...a', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-06 09:45:15', '2023-04-24 10:37:04', 0, 0, 'Krótko użytkuję, ale wydaje się fajny. Szybko działa,kręci filmiki w rewelacyjnej jakości', 1),
(81, 17637637, 'c...6', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-22 11:57:36', '2023-06-11 11:35:41', 0, 0, 'Z telefonu korzystam już kilka dni mój poprzedni to A 51 i widzę ogromną różnice.  Jestem zadowolona z zakupu', 1),
(82, 17644681, 'p...a', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-24 17:50:26', '2023-06-06 18:26:39', 0, 0, 'Elegancki wygląd. Funkcjonalny. Dobry aparat. Jednej rzeczy, której mi brakuje, to wejście słuchawkowe.', 1),
(83, 17624062, 'p...i', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-19 10:17:07', '2023-06-13 15:24:35', 0, 0, 'Wszystko działa, oryginalnie zapakowane, a cena jak za model o klasę niższy. Bardzo polecam', 1),
(84, 17519310, 'c...k', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-17 21:27:24', '2023-05-06 22:25:50', 0, 0, 'Spełnia moje oczekiwania po przejściu z a50, dużo lepiej działa skaner linii papilarnych', 1),
(85, 17423696, 'c...d', 'Polecam', '4/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-04-20 08:57:25', '2023-04-16 11:26:27', 4, 0, 'dobry telefon ale mógłby być trochę tańszy', 1),
(86, 17591934, 'jujo33', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-08 09:22:06', '2023-05-18 20:10:27', 0, 0, 'Jeszcze trochę za wcześnie na pełną ocenę, ale na razie jest wszystko w porządku.', 1),
(87, 17574681, 'l...5', 'Polecam', '4,5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-02 11:28:28', '2023-05-24 17:56:00', 0, 0, 'dopiero rozpoczęto użytkowanie ale na ten moment oceniam bardzo dobrze', 1),
(88, 17466715, 'e...a', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-02 20:58:00', '2023-04-24 14:14:33', 0, 0, 'Super telefon, za tą cenę jak na średniaka jest bardzo dobry', 1),
(89, 17632855, 'p...a', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-21 11:36:20', '2023-06-19 20:22:58', 0, 0, 'Dziękuję jestem zadowolony, produkt i cena godne polecenia.', 1),
(90, 17607153, 'k...s', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-13 20:32:45', '2023-05-31 20:32:32', 0, 0, 'Szybki, dobry aparat foto. Jak na półkę A Samsunga jest ok.', 1),
(91, 17524759, 'j...2', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-19 08:25:59', '2023-05-15 10:49:45', 0, 0, 'Wszystko w jak najlepszym porządku. Towar zgodny z opisem', 1),
(92, 17647116, 'r...k', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-26 11:45:59', '2023-06-01 21:49:20', 0, 0, 'Super. W tej cenie nic lepszego nie dostaniemy na rynku.', 1),
(93, 17314571, 's...2', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-03-24 11:57:28', '2023-03-18 21:43:31', 3, 3, 'Żona zachwycona. Kolejny Samsung i kolejny +', 1),
(94, 17600624, 'a...1', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-12 07:45:41', '2023-05-23 15:22:39', 0, 0, 'Wygląd ładny zgodny z opisem.Funkcjonalność testuje.', 1),
(95, 17592498, 'Zgadnijkto7', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-08 14:04:42', '2023-05-24 20:31:35', 0, 0, 'Super telefon, bardzo łatwy w użyciu, super zdjęcia', 1),
(96, 17565660, 'y...s', 'Polecam', '4/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-31 10:54:07', '2023-05-17 13:24:10', 0, 0, 'Ok', 1),
(97, 17573372, 'wieslaw', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-02 00:28:49', '2023-05-05 13:00:13', 0, 0, 'Na smartfona ze średniej pólki jest dla mnie nr 1.', 1),
(98, 17390226, 'P...l', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-04-12 11:39:54', '2023-04-06 17:28:04', 2, 2, 'mam dopiero kilka dni lecz spełnia oczekiwania', 1),
(99, 17528171, 's...2', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-19 21:15:34', '2023-05-09 14:00:15', 0, 0, 'mam nadzieję ,że  będzie robił b.dobre zdjęcia', 1),
(100, 17660065, 't...z', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-29 12:31:07', '2023-06-08 20:34:30', 0, 0, 'Telefon godny polecenia córka zadowolona.', 1),
(101, 17408262, 'd...2', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-04-16 19:06:14', '2023-04-08 13:10:45', 1, 1, 'Żona zadowolona z telefonu. Ładny kolor.', 1),
(102, 17626538, 's...3', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-19 21:24:28', '2023-05-30 10:29:20', 0, 0, 'Bardzo fajny telefon w przystępnej cenie', 1),
(103, 17580057, 'a...7', NULL, '3/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-04 22:30:51', '2023-05-15 10:17:19', 0, 0, 'Ogólnie jest poprawny, ale zdjęcia wychodzą dość słabo w porównaniu ze staruszkiem p20pro', 1),
(104, 17518763, 'k...d', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-17 20:04:25', '2023-04-16 20:28:35', 0, 0, 'Zgodnie z opisem oryginalnie zapakowany', 1),
(105, 17524620, 'a...3', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-19 07:49:27', '2023-05-02 20:43:35', 0, 0, 'Jestem zadowolona  z produktu i obslugi', 1),
(106, 17576983, 'd...k', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-02 22:07:52', '2023-05-15 17:23:24', 0, 0, 'Szybko i bez problemów, polecam 😁', 1),
(107, 17456748, 'j...k', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-04-28 12:38:44', '2023-04-20 21:57:38', 0, 0, 'Świetny stosunek jakości do ceny.', 1),
(108, 17650010, 'a...h', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-27 09:32:23', '2023-06-20 08:22:58', 0, 0, 'Dobry telefon jak za tą cenę', 1),
(109, 17624475, 't...a', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-19 11:18:27', '2023-06-13 10:57:02', 0, 0, 'Na razie testuje ale jest ok', 1),
(110, 17511171, 'o...6', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-16 09:05:34', '2023-05-11 13:30:31', 0, 0, 'Jak w opisie. Super sprzęt', 1),
(111, 17534553, 'Krzysztof', 'Polecam', '4,5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-22 20:37:50', '2023-04-23 11:05:26', 0, 0, 'spełnia moje oczekiwania', 1),
(112, 17373049, 'K...z', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-04-06 21:55:29', '2023-03-31 21:39:03', 3, 1, '👍🏻', 1),
(113, 17636521, 'a...a', 'Polecam', '4/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-22 09:20:27', '2023-05-26 14:04:06', 0, 0, 'Zbyt krótko go posiadam.', 1),
(114, 17615502, 's...a', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-15 14:24:20', '2023-06-11 08:49:49', 0, 0, 'Super jestem zadowolony', 1),
(115, 17551851, 's...i', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-26 11:48:02', '2023-05-23 16:12:20', 0, 0, 'Zgodnie z oczekiwaniami', 1),
(116, 17564073, 'a...1', 'Polecam', '4,5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-30 22:21:34', '2023-05-23 15:13:22', 0, 0, 'Wygląd zgodny z opisem', 1),
(117, 17599503, 'z...a', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-11 08:07:03', '2023-06-04 10:04:38', 0, 0, 'Bardzo mi się podoba.', 1),
(118, 17654331, 'b...s', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-28 10:03:55', '2023-06-22 09:29:00', 0, 0, 'Bardzo fajny telefon', 1),
(119, 17654177, 'a...a', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-28 09:37:27', '2023-06-08 16:40:22', 0, 0, 'wszystko jest super', 1),
(120, 17428332, 'a...4', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-04-21 06:33:42', '2023-03-31 11:05:29', 0, 1, 'brak jakichkolwiek zastrzeżeń', 1),
(121, 17521003, 'Przemysław', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-18 10:43:37', '2023-05-13 12:41:36', 0, 0, 'Narazie jest super', 1),
(122, 17392196, 'm...d', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-04-12 19:42:28', '2023-03-24 11:37:16', 1, 1, 'Bardzo zadowolona', 1),
(123, 17422340, 'a...k', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-04-19 21:52:37', '2023-04-05 13:50:35', 1, 0, 'Super', 1),
(124, 17514121, 'M...2', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-16 21:07:12', '2023-05-09 10:46:15', 0, 0, 'Za tą cenę warto', 1),
(125, 17637492, 'S...3', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-22 11:32:55', '2023-06-18 11:34:40', 0, 0, 'Wszystko super', 1),
(126, 17495935, 'w...f', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-11 10:27:36', '2023-05-08 16:00:33', 0, 0, 'Dla mnie super.', 1),
(127, 17608170, 'w...l', 'Polecam', '4/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-14 00:27:36', '2023-06-05 11:20:52', 0, 0, 'Słaba bateria', 1),
(128, 17428334, 'a...4', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-04-21 06:34:21', '2023-03-31 11:05:29', 0, 0, 'bez zastrzeżeń', 1),
(129, 17630031, 's...i', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-20 19:27:03', '2023-06-06 09:50:28', 0, 0, 'Wszytko okok', 1),
(130, 17606275, 'p...k', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-13 15:37:17', '2023-06-06 17:11:19', 0, 0, 'Bardzo dobry.', 1),
(131, 17506438, 'j...5', 'Polecam', '4/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-14 18:26:08', '2023-04-14 14:50:58', 0, 0, 'Dobra jakość', 1),
(132, 17344127, 'p...1', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-03-31 06:33:24', '2023-03-22 13:30:40', 2, 1, 'Ok', 1),
(133, 17420102, 'm...8', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-04-19 14:41:07', '2023-04-16 13:46:18', 1, 0, 'Ok', 1),
(134, 17600548, 'w...k', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-12 05:47:11', '2023-05-29 17:29:16', 0, 0, 'Bardzo dobry', 1),
(135, 17614023, 's...1', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-15 09:49:10', '2023-06-11 20:39:26', 0, 0, 'Wszystko ok', 1),
(136, 17573775, 'd...3', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-02 08:33:32', '2023-05-13 15:16:03', 0, 0, 'Same zalety', 1),
(137, 17437505, 'p...i', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-04-24 12:43:03', '2023-04-20 06:40:17', 0, 0, 'bardo dobra', 1),
(138, 17647845, 's...k', 'Polecam', '4/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-26 16:51:14', '2023-06-06 19:05:23', 0, 0, 'Telefon ok', 1),
(139, 17537413, 'a...i', 'Polecam', '4,5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-23 12:58:43', '2023-05-09 20:40:38', 0, 0, 'telefon OK', 1),
(140, 17591078, 'k...8', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-07 21:58:33', '2023-06-02 22:00:27', 0, 0, 'Idealny', 1),
(141, 17627584, 'p...a', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-20 08:31:47', '2023-05-29 20:00:37', 0, 0, 'Polecam', 1),
(142, 17479611, 'c...k', 'Polecam', '4,5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-06 06:17:51', '2023-04-19 17:24:32', 0, 0, 'Jest ok', 1),
(143, 17616783, 'k...8', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-15 21:38:37', '2023-05-29 20:56:12', 0, 0, 'Super', 1),
(144, 17603562, 'l...6', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-12 21:15:40', '2023-06-04 13:14:30', 0, 0, 'Super', 1),
(145, 17551931, 'j...o', 'Polecam', '4,5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-26 12:04:20', '2023-05-23 20:08:01', 0, 0, 'Super', 1),
(146, 17550801, 'l...8', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-26 09:26:06', '2023-05-05 16:49:03', 0, 0, 'Super.', 1),
(147, 17641124, 'k...t', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-23 11:20:40', '2023-06-19 07:57:39', 0, 0, 'Super', 1),
(148, 17640294, 'g...k', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-23 08:26:54', '2023-05-23 15:22:15', 0, 0, 'super', 1),
(149, 17624299, 'j...z', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-19 10:53:57', '2023-06-13 15:59:03', 0, 0, 'Super', 1),
(150, 17587473, 'p...i', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-07 05:16:44', '2023-05-29 18:23:33', 0, 0, 'super', 1),
(151, 17562309, 'g...k', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-30 14:15:05', '2023-05-23 15:55:28', 0, 0, 'super', 1),
(152, 17547947, 'z...1', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-25 15:53:22', '2023-05-18 08:39:00', 0, 0, 'super', 1),
(153, 17658025, 'g...a', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-28 23:22:26', '2023-06-24 15:46:36', 0, 0, 'O.k.', 1),
(154, 17394393, 'j...0', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-04-13 07:03:07', '2023-03-30 22:00:31', 1, 1, 'Ok', 1),
(155, 17639947, 'G...i', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-22 23:39:34', '2023-06-11 20:23:00', 0, 0, 'Ok', 1),
(156, 17627223, 'Дмитрий', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-20 05:43:23', '2023-06-09 09:39:45', 0, 0, 'Ok', 1),
(157, 17578324, 'k...k', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-06-03 13:21:30', '2023-05-20 13:15:11', 0, 0, 'Ok', 1),
(158, 17552599, 'r...k', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-26 15:48:50', '2023-05-21 08:17:10', 0, 0, 'Ok', 1),
(159, 17542343, 'a...a', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-24 12:53:52', '2023-05-14 14:43:12', 0, 0, 'ok', 1),
(160, 17535489, 'r...i', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-23 00:06:58', '2023-04-22 00:00:37', 0, 0, 'Ok', 1),
(161, 17525873, 'j...i', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-19 11:21:59', '2023-05-08 19:20:17', 0, 0, 'ok', 1),
(162, 17524880, 'd...a', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-19 08:55:09', '2023-05-17 10:17:25', 0, 0, 'ok', 1),
(163, 17493776, 'j...k', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-10 17:41:58', '2023-05-05 00:58:50', 0, 0, 'Ok', 1),
(164, 17447067, 'a...a', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-04-26 14:48:49', '2023-04-22 09:51:40', 0, 0, 'Ok', 1),
(165, 17524541, 'b...k', 'Polecam', '5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-05-19 07:25:08', '2023-05-07 11:15:45', 0, 1, 'Ok', 1),
(166, 17417910, 'j...t', 'Nie polecam', '2,5/5', 'Transakcja pochodzi z Marketplace Ceneo (usługi Kup Teraz).', '2023-04-19 09:28:49', '2023-03-20 12:06:44', 0, 4, 'Ogólnie ok \nTylko ciężki', 1);

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
(1, 149845826);

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
(1, 'czas pracy na baterii', 17497612),
(2, 'długie wsparcie', 17497612),
(3, 'głośnik', 17497612),
(4, 'łatwość obsługi', 17497612),
(5, 'szybki bluetooth', 17497612),
(6, 'wygląd', 17497612),
(7, 'czas pracy na baterii', 17646953),
(8, 'długie wsparcie', 17646953),
(9, 'funkcjonalność', 17646953),
(10, 'głośnik', 17646953),
(11, 'łatwość obsługi', 17646953),
(12, 'szybki bluetooth', 17646953),
(13, 'wygląd', 17646953),
(14, 'czas pracy na baterii', 17525754),
(15, 'funkcjonalność', 17525754),
(16, 'łatwość obsługi', 17525754),
(17, 'wygląd', 17525754),
(18, 'czas pracy na baterii', 17450857),
(19, 'łatwość obsługi', 17450857),
(20, 'czas pracy na baterii', 17650751),
(21, 'funkcjonalność', 17650751),
(22, 'łatwość obsługi', 17650751),
(23, 'wygląd', 17650751),
(24, 'bloatware', 17520342),
(25, 'czas pracy na baterii', 17520342),
(26, 'długie wsparcie', 17520342),
(27, 'funkcjonalność', 17520342),
(28, 'głośnik', 17520342),
(29, 'łatwość obsługi', 17520342),
(30, 'szybki bluetooth', 17520342),
(31, 'wygląd', 17520342),
(32, 'długie wsparcie', 17597796),
(33, 'funkcjonalność', 17597796),
(34, 'głośnik', 17597796),
(35, 'łatwość obsługi', 17597796),
(36, 'wygląd', 17597796),
(37, 'długie wsparcie', 17554555),
(38, 'funkcjonalność', 17554555),
(39, 'głośnik', 17554555),
(40, 'łatwość obsługi', 17554555),
(41, 'szybki bluetooth', 17554555),
(42, 'wygląd', 17554555),
(43, 'czas pracy na baterii', 17433566),
(44, 'funkcjonalność', 17433566),
(45, 'łatwość obsługi', 17433566),
(46, 'wygląd', 17433566),
(47, 'bloatware', 17595574),
(48, 'czas pracy na baterii', 17595574),
(49, 'długie wsparcie', 17595574),
(50, 'głośnik', 17595574),
(51, 'łatwość obsługi', 17595574),
(52, 'szybki bluetooth', 17595574),
(53, 'wygląd', 17595574),
(54, 'czas pracy na baterii', 17606864),
(55, 'funkcjonalność', 17606864),
(56, 'łatwość obsługi', 17606864),
(57, 'wygląd', 17606864),
(58, 'czas pracy na baterii', 17538010),
(59, 'funkcjonalność', 17538010),
(60, 'łatwość obsługi', 17538010),
(61, 'wygląd', 17538010),
(62, 'czas pracy na baterii', 17562638),
(63, 'długie wsparcie', 17562638),
(64, 'funkcjonalność', 17562638),
(65, 'głośnik', 17562638),
(66, 'łatwość obsługi', 17562638),
(67, 'wygląd', 17562638),
(68, 'łatwość obsługi', 17534054),
(69, 'czas pracy na baterii', 17620023),
(70, 'funkcjonalność', 17620023),
(71, 'łatwość obsługi', 17620023),
(72, 'wygląd', 17620023),
(73, 'czas pracy na baterii', 17424490),
(74, 'funkcjonalność', 17424490),
(75, 'łatwość obsługi', 17424490),
(76, 'wygląd', 17424490),
(77, 'czas pracy na baterii', 17630006),
(78, 'funkcjonalność', 17630006),
(79, 'łatwość obsługi', 17630006),
(80, 'wygląd', 17630006),
(81, 'bloatware', 17544626),
(82, 'długie wsparcie', 17544626),
(83, 'funkcjonalność', 17544626),
(84, 'głośnik', 17544626),
(85, 'łatwość obsługi', 17544626),
(86, 'szybki bluetooth', 17544626),
(87, 'wygląd', 17544626),
(88, 'czas pracy na baterii', 17568745),
(89, 'długie wsparcie', 17568745),
(90, 'funkcjonalność', 17568745),
(91, 'głośnik', 17568745),
(92, 'łatwość obsługi', 17568745),
(93, 'szybki bluetooth', 17568745),
(94, 'wygląd', 17568745),
(95, 'czas pracy na baterii', 17582548),
(96, 'funkcjonalność', 17582548),
(97, 'łatwość obsługi', 17582548),
(98, 'wygląd', 17582548),
(99, 'bloatware', 17570745),
(100, 'długie wsparcie', 17570745),
(101, 'głośnik', 17570745),
(102, 'łatwość obsługi', 17570745),
(103, 'szybki bluetooth', 17570745),
(104, 'wygląd', 17488122),
(105, 'funkcjonalność', 17572206),
(106, 'łatwość obsługi', 17572206),
(107, 'wygląd', 17572206),
(108, 'bloatware', 17478479),
(109, 'czas pracy na baterii', 17478479),
(110, 'funkcjonalność', 17478479),
(111, 'łatwość obsługi', 17478479),
(112, 'wygląd', 17478479),
(113, 'czas pracy na baterii', 17549134),
(114, 'funkcjonalność', 17549134),
(115, 'łatwość obsługi', 17549134),
(116, 'wygląd', 17549134),
(117, 'czas pracy na baterii', 17544129),
(118, 'długie wsparcie', 17544129),
(119, 'funkcjonalność', 17544129),
(120, 'głośnik', 17544129),
(121, 'łatwość obsługi', 17544129),
(122, 'wygląd', 17544129),
(123, 'czas pracy na baterii', 17560381),
(124, 'funkcjonalność', 17560381),
(125, 'łatwość obsługi', 17560381),
(126, 'wygląd', 17560381),
(127, 'funkcjonalność', 17627186),
(128, 'wygląd', 17627186),
(129, 'czas pracy na baterii', 17472784),
(130, 'funkcjonalność', 17472784),
(131, 'łatwość obsługi', 17472784),
(132, 'wygląd', 17472784),
(133, 'czas pracy na baterii', 17658036),
(134, 'funkcjonalność', 17658036),
(135, 'łatwość obsługi', 17658036),
(136, 'wygląd', 17658036),
(137, 'bloatware', 17642675),
(138, 'długie wsparcie', 17642675),
(139, 'funkcjonalność', 17642675),
(140, 'głośnik', 17642675),
(141, 'grubość', 17642675),
(142, 'łatwość obsługi', 17642675),
(143, 'printscreen', 17642675),
(144, 'szybki bluetooth', 17642675),
(145, 'wygląd', 17642675),
(146, 'czas pracy na baterii', 17438061),
(147, 'funkcjonalność', 17438061),
(148, 'łatwość obsługi', 17438061),
(149, 'wygląd', 17438061),
(150, 'czas pracy na baterii', 17464662),
(151, 'funkcjonalność', 17464662),
(152, 'łatwość obsługi', 17464662),
(153, 'wygląd', 17464662),
(154, 'czas pracy na baterii', 17475481),
(155, 'funkcjonalność', 17475481),
(156, 'łatwość obsługi', 17475481),
(157, 'wygląd', 17475481),
(158, 'bloatware', 17595784),
(159, 'czas pracy na baterii', 17595784),
(160, 'długie wsparcie', 17595784),
(161, 'funkcjonalność', 17595784),
(162, 'głośnik', 17595784),
(163, 'grubość', 17595784),
(164, 'łatwość obsługi', 17595784),
(165, 'szybki bluetooth', 17595784),
(166, 'wygląd', 17595784),
(167, 'czas pracy na baterii', 17642655),
(168, 'funkcjonalność', 17642655),
(169, 'głośnik', 17642655),
(170, 'łatwość obsługi', 17642655),
(171, 'wygląd', 17642655),
(172, 'funkcjonalność', 17480549),
(173, 'łatwość obsługi', 17480549),
(174, 'czas pracy na baterii', 17658916),
(175, 'funkcjonalność', 17658916),
(176, 'łatwość obsługi', 17658916),
(177, 'wygląd', 17658916),
(178, 'bloatware', 17480074),
(179, 'czas pracy na baterii', 17480074),
(180, 'funkcjonalność', 17480074),
(181, 'łatwość obsługi', 17480074),
(182, 'wygląd', 17480074),
(183, 'brak minijack', 17637637),
(184, 'czas pracy na baterii', 17637637),
(185, 'funkcjonalność', 17637637),
(186, 'głośnik', 17637637),
(187, 'grubość', 17637637),
(188, 'łatwość obsługi', 17637637),
(189, 'wygląd', 17637637),
(190, 'czas pracy na baterii', 17644681),
(191, 'długie wsparcie', 17644681),
(192, 'funkcjonalność', 17644681),
(193, 'głośnik', 17644681),
(194, 'łatwość obsługi', 17644681),
(195, 'wygląd', 17644681),
(196, 'czas pracy na baterii', 17519310),
(197, 'funkcjonalność', 17519310),
(198, 'łatwość obsługi', 17519310),
(199, 'wygląd', 17519310),
(200, 'czas pracy na baterii', 17591934),
(201, 'funkcjonalność', 17591934),
(202, 'łatwość obsługi', 17591934),
(203, 'wygląd', 17591934),
(204, 'czas pracy na baterii', 17574681),
(205, 'funkcjonalność', 17574681),
(206, 'łatwość obsługi', 17574681),
(207, 'wygląd', 17574681),
(208, 'czas pracy na baterii', 17466715),
(209, 'funkcjonalność', 17466715),
(210, 'łatwość obsługi', 17466715),
(211, 'wygląd', 17466715),
(212, 'czas pracy na baterii', 17647116),
(213, 'funkcjonalność', 17647116),
(214, 'głośnik', 17647116),
(215, 'łatwość obsługi', 17647116),
(216, 'czas pracy na baterii', 17600624),
(217, 'funkcjonalność', 17600624),
(218, 'łatwość obsługi', 17600624),
(219, 'wygląd', 17600624),
(220, 'czas pracy na baterii', 17565660),
(221, 'funkcjonalność', 17565660),
(222, 'głośnik', 17565660),
(223, 'łatwość obsługi', 17565660),
(224, 'wygląd', 17565660),
(225, 'czas pracy na baterii', 17573372),
(226, 'funkcjonalność', 17573372),
(227, 'łatwość obsługi', 17573372),
(228, 'wygląd', 17573372),
(229, 'czas pracy na baterii', 17528171),
(230, 'funkcjonalność', 17528171),
(231, 'łatwość obsługi', 17528171),
(232, 'wygląd', 17528171),
(233, 'czas pracy na baterii', 17408262),
(234, 'funkcjonalność', 17408262),
(235, 'łatwość obsługi', 17408262),
(236, 'wygląd', 17408262),
(237, 'czas pracy na baterii', 17626538),
(238, 'funkcjonalność', 17626538),
(239, 'łatwość obsługi', 17626538),
(240, 'wygląd', 17626538),
(241, 'bloatware', 17580057),
(242, 'długie wsparcie', 17580057),
(243, 'głośnik', 17580057),
(244, 'grubość', 17580057),
(245, 'łatwość obsługi', 17580057),
(246, 'szybki bluetooth', 17580057),
(247, 'wygląd', 17580057),
(248, 'funkcjonalność', 17456748),
(249, 'wygląd', 17456748),
(250, 'czas pracy na baterii', 17511171),
(251, 'funkcjonalność', 17511171),
(252, 'łatwość obsługi', 17511171),
(253, 'wygląd', 17511171),
(254, 'czas pracy na baterii', 17534553),
(255, 'funkcjonalność', 17534553),
(256, 'łatwość obsługi', 17534553),
(257, 'wygląd', 17534553),
(258, 'funkcjonalność', 17636521),
(259, 'głośnik', 17636521),
(260, 'łatwość obsługi', 17636521),
(261, 'bloatware', 17615502),
(262, 'czas pracy na baterii', 17615502),
(263, 'długie wsparcie', 17615502),
(264, 'funkcjonalność', 17615502),
(265, 'głośnik', 17615502),
(266, 'grubość', 17615502),
(267, 'łatwość obsługi', 17615502),
(268, 'szybki bluetooth', 17615502),
(269, 'wygląd', 17615502),
(270, 'bloatware', 17551851),
(271, 'czas pracy na baterii', 17551851),
(272, 'długie wsparcie', 17551851),
(273, 'funkcjonalność', 17551851),
(274, 'głośnik', 17551851),
(275, 'łatwość obsługi', 17551851),
(276, 'szybki bluetooth', 17551851),
(277, 'wygląd', 17551851),
(278, 'czas pracy na baterii', 17564073),
(279, 'funkcjonalność', 17564073),
(280, 'łatwość obsługi', 17564073),
(281, 'wygląd', 17564073),
(282, 'czas pracy na baterii', 17599503),
(283, 'długie wsparcie', 17599503),
(284, 'funkcjonalność', 17599503),
(285, 'głośnik', 17599503),
(286, 'łatwość obsługi', 17599503),
(287, 'szybki bluetooth', 17599503),
(288, 'wygląd', 17599503),
(289, 'czas pracy na baterii', 17654177),
(290, 'funkcjonalność', 17654177),
(291, 'łatwość obsługi', 17654177),
(292, 'wygląd', 17654177),
(293, 'czas pracy na baterii', 17428332),
(294, 'funkcjonalność', 17428332),
(295, 'łatwość obsługi', 17428332),
(296, 'wygląd', 17428332),
(297, 'czas pracy na baterii', 17392196),
(298, 'funkcjonalność', 17392196),
(299, 'łatwość obsługi', 17392196),
(300, 'wygląd', 17392196),
(301, 'czas pracy na baterii', 17514121),
(302, 'funkcjonalność', 17514121),
(303, 'łatwość obsługi', 17514121),
(304, 'wygląd', 17514121),
(305, 'czas pracy na baterii', 17495935),
(306, 'funkcjonalność', 17495935),
(307, 'łatwość obsługi', 17495935),
(308, 'wygląd', 17495935),
(309, 'funkcjonalność', 17608170),
(310, 'wygląd', 17608170),
(311, 'czas pracy na baterii', 17428334),
(312, 'funkcjonalność', 17428334),
(313, 'łatwość obsługi', 17428334),
(314, 'wygląd', 17428334),
(315, 'bloatware', 17506438),
(316, 'długie wsparcie', 17506438),
(317, 'funkcjonalność', 17506438),
(318, 'głośnik', 17506438),
(319, 'łatwość obsługi', 17506438),
(320, 'szybki bluetooth', 17506438),
(321, 'wygląd', 17506438),
(322, 'czas pracy na baterii', 17344127),
(323, 'funkcjonalność', 17344127),
(324, 'łatwość obsługi', 17344127),
(325, 'wygląd', 17344127),
(326, 'bloatware', 17600548),
(327, 'czas pracy na baterii', 17600548),
(328, 'długie wsparcie', 17600548),
(329, 'funkcjonalność', 17600548),
(330, 'głośnik', 17600548),
(331, 'łatwość obsługi', 17600548),
(332, 'szybki bluetooth', 17600548),
(333, 'wygląd', 17600548),
(334, 'czas pracy na baterii', 17573775),
(335, 'funkcjonalność', 17573775),
(336, 'łatwość obsługi', 17573775),
(337, 'wygląd', 17573775),
(338, 'czas pracy na baterii', 17437505),
(339, 'funkcjonalność', 17437505),
(340, 'łatwość obsługi', 17437505),
(341, 'wygląd', 17437505),
(342, 'czas pracy na baterii', 17591078),
(343, 'funkcjonalność', 17591078),
(344, 'głośnik', 17591078),
(345, 'łatwość obsługi', 17591078),
(346, 'szybki bluetooth', 17591078),
(347, 'wygląd', 17591078),
(348, 'czas pracy na baterii', 17479611),
(349, 'funkcjonalność', 17479611),
(350, 'łatwość obsługi', 17479611),
(351, 'wygląd', 17479611),
(352, 'czas pracy na baterii', 17616783),
(353, 'funkcjonalność', 17616783),
(354, 'głośnik', 17616783),
(355, 'grubość', 17616783),
(356, 'łatwość obsługi', 17616783),
(357, 'wygląd', 17616783),
(358, 'bloatware', 17603562),
(359, 'brak minijack', 17603562),
(360, 'czas pracy na baterii', 17603562),
(361, 'długie wsparcie', 17603562),
(362, 'funkcjonalność', 17603562),
(363, 'głośnik', 17603562),
(364, 'grubość', 17603562),
(365, 'łatwość obsługi', 17603562),
(366, 'printscreen', 17603562),
(367, 'szybki bluetooth', 17603562),
(368, 'wygląd', 17603562),
(369, 'bloatware', 17641124),
(370, 'brak minijack', 17641124),
(371, 'czas pracy na baterii', 17641124),
(372, 'długie wsparcie', 17641124),
(373, 'funkcjonalność', 17641124),
(374, 'głośnik', 17641124),
(375, 'grubość', 17641124),
(376, 'łatwość obsługi', 17641124),
(377, 'printscreen', 17641124),
(378, 'szybki bluetooth', 17641124),
(379, 'wygląd', 17641124),
(380, 'funkcjonalność', 17640294),
(381, 'bloatware', 17624299),
(382, 'brak minijack', 17624299),
(383, 'czas pracy na baterii', 17624299),
(384, 'długie wsparcie', 17624299),
(385, 'funkcjonalność', 17624299),
(386, 'głośnik', 17624299),
(387, 'grubość', 17624299),
(388, 'łatwość obsługi', 17624299),
(389, 'printscreen', 17624299),
(390, 'szybki bluetooth', 17624299),
(391, 'wygląd', 17624299),
(392, 'czas pracy na baterii', 17587473),
(393, 'funkcjonalność', 17587473),
(394, 'łatwość obsługi', 17587473),
(395, 'wygląd', 17587473),
(396, 'czas pracy na baterii', 17562309),
(397, 'funkcjonalność', 17562309),
(398, 'łatwość obsługi', 17562309),
(399, 'wygląd', 17562309),
(400, 'bloatware', 17547947),
(401, 'czas pracy na baterii', 17547947),
(402, 'długie wsparcie', 17547947),
(403, 'funkcjonalność', 17547947),
(404, 'głośnik', 17547947),
(405, 'łatwość obsługi', 17547947),
(406, 'szybki bluetooth', 17547947),
(407, 'wygląd', 17547947),
(408, 'czas pracy na baterii', 17542343),
(409, 'funkcjonalność', 17542343),
(410, 'łatwość obsługi', 17542343),
(411, 'wygląd', 17542343);

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
(1, 166, 84, 19, 4.78, 149845826);

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
  MODIFY `cons_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `opinions`
--
ALTER TABLE `opinions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pros`
--
ALTER TABLE `pros`
  MODIFY `pros_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=412;

--
-- AUTO_INCREMENT for table `stats`
--
ALTER TABLE `stats`
  MODIFY `stats_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
