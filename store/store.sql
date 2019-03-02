-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 30 2019 г., 02:00
-- Версия сервера: 5.6.41
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `store`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'PHP'),
(2, 'C/C++'),
(3, 'JAVA'),
(4, 'JavaScript'),
(5, 'C#'),
(6, 'Python'),
(7, 'SQL'),
(8, 'Other');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `wishes` text NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date` date NOT NULL,
  `session_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `body` text NOT NULL,
  `price` float NOT NULL,
  `image` varchar(255) NOT NULL,
  `id_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `title`, `author`, `description`, `body`, `price`, `image`, `id_cat`) VALUES
(1, 'Совершенный код', 'С.Макконнел', 'Page: 350;\r\nLang: ru;\r\nYear: 2017;', 'Если ваш код работает, это ещё не значит, что его можно\r\n  назвать хорошим. Эта книга по программированию расскажет вам не только о том, как писать хороший\r\n  код, но и как превратить  плохой код в хороший. С её помощью вы сможете понять, почему\r\n  такие мелочи,   как правильное название переменных, — вовсе   даже не мелочи, а важные пункты\r\n    на пути к осознанию того,   как писать «Совершенный код', 34, '1.jpg', 3),
(2, 'Чистый код', 'Б.Мартин', 'Page: 400;\r\nLang: ru;\r\nYear: 2016;', 'Если ваш код работает, это ещё не значит, что его можно\r\n  назвать хорошим. Эта книга по программированию расскажет вам не только о том, как писать хороший\r\n  код, но и как превратить  плохой код в хороший. С её помощью вы сможете понять, почему\r\n  такие мелочи,   как правильное название переменных, — вовсе   даже не мелочи, а важные пункты\r\n    на пути к осознанию того,   как писать «чистый код', 56, '2.jpg', 3),
(3, 'Язык программирования С', 'Брайан Кернига, Деннис Ритчи', 'Page: 350;\r\nLang: ru;\r\nYear: 2018;', 'Книга по программированию от   авторов\r\n  языка C. В своё время она стала своеобразным классическим учебником   по\r\n  языку С и до сих пор является классикой для всех изучающих   и/или   использующих\r\n  как С, так и С++. На текущий момент книга переиздана уже в   третий раз с\r\n  учётом всех поправок и изменений в терминологии за   прошедшее время.', 57, '3.jpg', 2),
(4, 'Java Эффективное программирование', 'Джошуа Блох', 'Page: 340;\r\nLang: ru;\r\nYear: 2018;', 'Здесь есть 57   ценных правил,\r\n  которые помогут понять, как именно нужно работать с   языком Java, чтобы получить\r\n  надежный, эффективный и понятный всем   программный код. Каждое из приведенных\r\n  правил представлено в форме   короткого эссе, в которое включены описание проблемы,\r\n   код (пример),    а также случаи из личного опыта автора.', 35, '4.jpg', 3),
(5, 'Изучаем Java', 'Кэтти Сьерра, Берт Бейтс', 'Page: 350;\r\nLang: ru;\r\nYear: 2017;', 'Эта книга подойдёт для тех, кому   наскучили обыкновенные\r\n  абзацы с текстом. Данная книга предоставляет   информацию читателю в визуальном формате.\r\n   Во время её прочтения вам   будет казаться, что её для вас написал ваш друг,\r\n   а не какой-то учёный,   который использует кучу непонятных слов. В книге\r\n   приведена вся нужная   теория, которая также подкрепляется практическими\r\n    примерами и тестами.', 35, '5.jpg', 3),
(6, 'Язык программирования C++. Базовый курс', 'Стенли Б. Липпман, Жози Лажойе, Барбара Э. Му', 'Page: 400;\r\nLang: ru;\r\nYear: 2016;', 'Это   популярное\r\n   введение в стандарт C++ было полностью обновлено, реорганизовано   и переписано,\r\n   чтобы помочь программистам быстрее изучить язык и использовать    его более\r\n   современным, эффективным способом. Со времён последнего издания     подход\r\n   авторов к обучению языку развивался вместе с языком. Теперь книга\r\n    предоставляет читателям средства для написания полезных программ     без\r\n    предварительной обработки каждой детали языка.', 34, '6.jpg', 2),
(7, 'Алгоритмы: построение и анализ', 'Томас Х. Кормен, Чарльз И. Лейзерсон', 'Page: 350;\r\nLang: ru;\r\nYear: 2018;', 'Эта книга является   вводным\r\n  курсом по современным компьютерным алгоритмам. В ней описано    множество действительно\r\n   работающих алгоритмов на доступном уровне для    основной массы интересующихся\r\n   читателей. Авторы постарались сделать    пояснения к каждому, даже   довольно сложному,\r\n    алгоритму максимально    доступными для читателя.', 45, '7.jpg', 8),
(8, 'Программист-прагматик', 'Дэвид Томас, Эндрю Хант', 'Page: 340;\r\nLang: ru;\r\nYear: 2018;', 'Путь от подмастерья к мастеру»\r\n  Сегодня очень многие книги по программированию не пытаются донести\r\n  основы становления не просто «кодером», а программистом более высокого\r\n   уровня. Они рассказывают про синтаксис или технологии,  в то время как\r\n      с помощью этой книги вы сможете понять, что на  самом деле основная сила\r\n          любой хорошей команды — это наличие  способных программистов, которые\r\n               действительно знают своё дело.', 34, '8.jpg', 3),
(9, 'Философия Java', 'Брюс Эккель', 'Page: 350;\r\nLang: ru;\r\nYear: 2017;', 'Отличное руководство по программированию\r\n  на Java, между прочим, считающееся одним из лучших. С этой книги, по мнению\r\n   многочисленного сообщества, и следует начинать изучение Java. Книга одинаково\r\n   полезна новичкам, так и тем, кто уже пишет код на Java. К книге обращаются\r\n   за уточнениями во время написания кода. Автор отвечает на вопросы о Java: как,\r\n    что и почему (почему Java создан именно    таким, почему Java работает так, а\r\n      не иначе и т.д.). По этой книге желающие     даже готовятся к экзамену SCJP\r\n      (Sun Certified Java Programmer),     Java-экзамен начального уровня.\r\n       Программисты утверждают, что читать книгу     лучше в оригинале. Разберетесь\r\n       с Java, а заодно и прокачаете English skills.', 54, '9.jpg', 3),
(10, 'Java 8 Руководство для начинающих', ' Шилдт Герберт', 'Page: 400;\r\nLang: ru;\r\nYear: 2016;', 'Книга всемирно известного\r\n  автора позволит студентам приступить к созданию проектов на Java. В самом начале\r\n   книги автор уделяет внимание основам программирования и правилам создания,\r\n   компилирования и выполнения программ на Java. Подробно рассматривает и объясняет\r\n    составляющие элементы ядра Java.  В книге также рассматриваются очень сложные\r\n    темы: многопоточное программирование,   библиотека Swing, обобщенные типы.', 36, '10.jpg', 3),
(11, 'Язык программирования Java', 'В.Монах', 'Page: 350;\r\nLang: ru;\r\nYear: 2018;', 'Как думаете насколько полезна книга\r\n   о Java, автором которой является один из разработчиков этого языка программирования?\r\n    Книга может быть учебников и справочником по Java, в зависимости от того как\r\n     ее читать. В работе собраны упражнения для практики, которые позволят быстро\r\n      понять специфику программирования. Текст книги написан понятным языком,\r\n       поэтому обучение программированию на Java легко можно начинать с этой книги.', 56, '11.jpg', 3),
(12, 'Программирование на Java', 'Патрик Нимейер, Дэниэл Леук', 'Page: 340;\r\nLang: ru;\r\nYear: 2018;', 'Исчерпывающее руководство по Java\r\n   в подробностях для студентов, начинающих программистов и финских хакеров.\r\n   Одно только содержание в этой книге занимает несколько страниц. Для новичка книга\r\n   будет помощником в изучение Java, а программисту со стажем она поможет разобраться\r\n    в тонкостях программирования на Java.', 46, '12.jpg', 3),
(13, 'Java 8 in Action', 'Raoul-Gabriel Urma, Mario Fusco, Alan Mycroft', 'Page: 350;\r\nLang: ru;\r\nYear: 2017;', 'Учебник по программированию на Java 8.\r\n  Это одна из книг, которые я читаю, ещё начиная с 2016. Я читал её весь 2017\r\n  год при изучении возможностей JDK 8. Если вы её ещё не читали или только\r\n  собираетесь заняться JDK 8, самое время взять её в руки.', 34, '13.jpg', 3),
(14, 'C++ Annotations', 'Frank B. Brokken', 'Page: 400;\r\nLang: ru;\r\nYear: 2016;', 'Книга содержит огромное\r\n  количество материала по C++ и явно стремится осветить все основные аспекты\r\n  языка. В ней вы найдете информацию как про базовые элементы C++, так и про\r\n  использование библиотеки STL. Автор постоянно обновляет книгу, благодаря\r\n  чему в ней представлена актуальная версия языка. Множество примеров, как\r\n  кода, так и работы программы, позволят более эффективно освоить пройденный\r\n   материал.', 35, '14.jpg', 2),
(15, 'Изучаем C++ через программирование игр', 'Майкл Доусон', 'Page: 350;\r\nLang: ru;\r\nYear: 2018;', 'Пусть эта книга\r\n   и освещает только самые базовые элементы языка, ее несомненный плюс в том,\r\n    что она предлагает закреплять полученные знания путем создания небольших\r\n    игр. В каждой главе дан определенный игровой проект, на примере которого\r\n    поясняется, как можно использовать «фишки» языка. Книга подойдет и тем,\r\n    кто до нее не был знаком с программированием.', 45, '15.jpg', 2),
(16, 'Объектно-ориентированное программирование в С++', 'А. Н. Васильев', 'Page: 340;\r\nLang: ru;\r\nYear: 2018;', 'Книга\r\n  Роберта Лафоре из серии «Классика Computer Science». В ней очень грамотно\r\n  и полно представлено понятие объектно-ориентированного программирования в\r\n   C++. Кроме теории, книга предлагает читателю сделать около 100 различных\r\n    упражнений, которые отточат навык владения основами ООП. Отлично подходит\r\n     для начинающих программистов.', 64, '16.jpg', 2),
(17, 'Философия C++', 'Брюс Эккель', 'Page: 350;\r\nLang: ru;\r\nYear: 2017;', 'Одна из лучших книг по C++, которая должна быть в\r\n  библиотеке каждого студента, изучающего программирование. Книга формирует у читателя\r\n   глубокое понимание этого языка программирования и учит думать на C++. Книга\r\n  предназначена для всех, кто занимается разработкой программного обеспечения.\r\n  (в двух томах) ', 35, '17.jpg', 2),
(18, 'Изучаем SQL', 'Лини Бейли', 'Page: 400;\r\nLang: ru;\r\nYear: 2016;\r\n', 'Эта книга — прекрасный выбор для тех,\r\n  кто стоит в начале тернистого пути изучения SQL. Она не только позволит\r\n   приобрести необходимую базу начальных  знаний, но и расскажет о\r\n    наиболее популярных тонкостях и мощных средствах   языка, которыми\r\n    пользуются опытные программисты. Многие пособия, посвященные базам\r\n     данных, реляционной теории и языку SQL,  переполнены скучным\r\n     изложением теоретических основ. Эта книга является  приятным\r\n     исключением благодаря своему легкому, живому стилю. Автор  мастерски\r\n     преподносит читателю информацию об SQL-выражениях и блоках,   типах\r\n      условий, join-ах, подзапросах и многом другом. Для закрепления\r\n      полученных знаний на практике, автор создает учебную базу  MySQL\r\n       и приводит множество практических примеров запросов, охватывающих\r\n        весь изложенный теоретический материал. ', 46, '18.jpg', 7),
(19, 'SQL. Библия пользователя', 'А. Кригель, Борис Трухнов', 'Page: 350;\r\nLang: ru;\r\nYear: 2018;', 'Книга уникальна тем, что в каждой главе\r\n  приводится сравнение реализаций   тех или иных запросов на диалектах трех ведущих\r\n   СУБД. Благодаря этому    она представляет собой исчерпывающий и практичный\r\n   справочник по языку    SQL для разработчиков от новичков до гуру, своего рода\r\n    настольное    пособие.  В издании охватываются темы от самых основ до\r\n     транзакций и блокировок,  функций и средств защиты баз данных.  В конце\r\n      представлено несколько дополнительных тем: интеграция SQL в XML,\r\n       бизнес-аналитика OLAP и многое другое.', 34, '19.jpg', 7),
(20, 'SQL. Сборник рецептов', 'Энтони Молинаро', 'Page: 340;\r\nLang: ru;\r\nYear: 2018;', 'Данное издание предназначено для тех,\r\n   кто уже имеет некоторые знания  SQL и хочет усовершенствовать свои навыки\r\n    в этой области. Также оно  будет весьма полезно и экспертам в сфере баз\r\n     данных, так как автор  предлагает примеры решения задач в разных СУБД:\r\n      DB2, Oracle, PostgreSQL,   MySQL и SQL Server.  Книга поможет\r\n       научиться использовать SQL для решения более широкого  круга задач:\r\n        от операций внутри БД до извлечения данных и передачи их  по сети\r\n         в приложения.  Вы узнаете, как применять оконные функции и специальные\r\n          операторы, а   также расширенные методы работы с хранилищами данных:\r\n           создание   гистограмм, резюмирование данных в блоки, выполнение агрегации\r\n              скользящего диапазона значений, формирование текущих сумм и подсумм.', 57, '20.jpg', 7),
(21, 'Работа с PostgreSQL', 'А. Ю. Васильев', 'Page: 350;\r\nLang: ru;\r\nYear: 2017;', 'Справочное пособие по настройке и\r\n  масштабированию PostgreSQL. В книге  исследуются вопросы по настройке\r\n  производительности PostgreSQL,  репликации и кластеризации. Изобилие\r\n  реальных примеров позволит как  начинающим, так и опытным разработчикам\r\n  быстро разобраться с особенностями  масштабирования PostgreSQL для своих\r\n   приложений. ', 68, '21.jpg', 7),
(22, 'Рефакторинг SQL-приложений', 'Фаро С., Лерми П.', 'Page: 400;\r\nLang: ru;\r\nYear: 2016;', 'Когда поднимается вопрос\r\n  рефакторинга кода, специалист может быть уверен, что либо возникла\r\n  серьезная проблема, либо предполагается, что она проявится в ближайшее\r\n  время. Как правило,  при этом известно, что следует улучшить в плане\r\n   функциональности, но прежде необходимо понять  природу проблемы.\r\n    В книге делается попытка дать реалистичный и честный обзор методов\r\n    усовершенствования приложений SQL и определить рациональную концепцию\r\n     для тактических маневров.  Часто рефакторинг напоминает безумный\r\n     поиск быстрых побед и эффектных усовершенствований,  которые можно\r\n      вписать в бюджет и сохранить голову на плечах.', 34, '22.jpg', 7),
(23, 'Самоучитель PHP 7', 'Максим Кузнецов, Игорь Симдянов', 'Page: 350;\r\nLang: ru;\r\nYear: 2018;', 'Эта отечественная книга вышла совсем недавно,\r\n   и содержит самую актуальную информацию по PHP и технологиям, используемым совместно\r\n   с ним в разработке: PostgreSQL, Redis и NoSQL базы данных. Также в книге даётся\r\n    описание популярных шаблонов проектирования, автозагрузки, composer’a и всех\r\n    современных функций последней версии.', 57, '23.png', 1),
(24, 'PHP 7 в подлиннике', 'Игорь Симдянов, Дмитрий Котеров ', 'Page: 340;\r\nLang: ru;\r\nYear: 2018;', 'А эта книга переживает уже не первое издание\r\n   и по факту является самой популярной у отечественных читателей. В последнем издании\r\n    вы узнаёте всё о PHP, включая стандарты PSR, способы настройки веб-сервера nginx,\r\n     composer’a и php-fpm. Также книга содержит объёмный материал по объектно-ориентированному\r\n      программированию на PHP. Новичкам к прочтению обязательно.', 46, '24.jpg', 1),
(25, 'Изучаем PHP 7 ', 'Давид Скляр', 'Page: 350;\r\nLang: ru;\r\nYear: 2017;', 'Книгу зарубежного автора нельзя назвать детальным\r\n  обзором на язык PHP. Она скорее содержит богатый набор скриптов, необходимых почти в\r\n   каждой разработке веб-приложений: отправка сообщений по электронной почте, управление\r\n   пакетами, работа с куками, сессиями и обработка форм.', 45, '25.jpg', 1),
(26, 'PHP 7 Zend Certification Study Guide', 'Andrew Beak', 'Page: 400;\r\nLang: ru;\r\nYear: 2016;', 'Создатели языка PHP всегда\r\n  благосклонны к своим адептам и придумали для вас сертификацию, подтверждающую ваши\r\n  знания по языку. В этой же книге вы найдёте самые сложные темы языка, внимательное\r\n   изучение которых поможет вам подтвердить ваш статус программиста на PHP.', 34, '26.jpg', 1),
(27, 'Pro PHP Refactoring', 'Francesco Trucchia, Jacopo Romei', 'Page: 350;\r\nLang: ru;\r\nYear: 2018;', 'Многие организации часто вынуждены отказываться\r\n   от старого программного обеспечения, потому что просто не могут его поддерживать,\r\n   если приложение плохо спроектировано. Данное руководство познакомит вас с основами\r\n   тестирования и рефакторинга кода.', 35, '27.jpg', 1),
(28, 'Learning PHP Design Patterns', 'Уильям Б Сандерс', 'Page: 340;\r\nLang: ru;\r\nYear: 2018;', 'Шаблоны проектирования – это лучшие\r\n   решения, придуманные когда-то группой программистов с целью увеличить эффективность и\r\n    гибкость кода. Из этой книги вы узнаете о самых популярных из них, применяемых в\r\n     программировании на PHP.', 56, '28.jpg', 1),
(29, 'C# полное руководство', 'Герберт Шилдт', 'Page: 350;\r\nLang: ru;\r\nYear: 2017;', 'Известный американский программист и писатель,\r\n   который написал несколько  учебников  для начинающих разработчиков, стремящихся выучить\r\n    популярные  и похожие языки программирования C, C++ и Java.  В этой книге автор\r\n     рассмотрел все основные средства языка программирования  C#, историю его создания\r\n      и отличительные свойства от других языков.  Им подробно описаны типы данных,\r\n      операторы,  классы, методы, делегаты,  события, обобщения и другие основы C#.\r\n       Главным в C# является ООП,  эффективный подход к программированию и лучшие\r\n       идеи структурного  программирования. ', 57, '29.jpg', 5),
(30, 'Microsoft Visual C# Подробное руководство', 'Джон Шарп', 'Page: 400;\r\nLang: ru;\r\nYear: 2016;', 'Одно из самых новых изданий,\r\n   которое дает полное представление о языке  программирования C#.  В книге описан\r\n   основной синтаксис языка программирования C#. Читатель  сможет приобрести навыки в\r\n    ряде важных областей во время прочтения книги.  Автор делает упор в тексте на\r\n     разработку и создание адаптативных и  масштабируемых приложений. В книге приведено\r\n      множество примеров и  упражнений, подробно разобраны задания. Практика в центре\r\n      внимания  всей книги – создание новых типов в C#, способы управления ресурсами,\r\n        создание приложений.', 34, '30.jpg', 5),
(31, 'Программирование на C# для начинающих', 'Васильев А. Н.', 'Page: 350;\r\nLang: ru;\r\nYear: 2018;', 'Краткое новейшее руководство, которое\r\n   появилась всего несколько месяцев  назад. В книге собрано все, что пригодится C# разработчику\r\n    для обучения  и начала работы.  Изучение C# открывает новые возможности разработчикам.\r\n    Шаг за шагом,  глава за главой автор проводит начинающего разработчика через  ключевые\r\n     концепции, которые необходимы для овладения основами языка программирования  C# и уделяет\r\n      внимание всем аспектам и принципам разработки на C#.  Автор пишет достаточно просто и\r\n      понятно, поэтому новичкам, изучающим  C#, будет легко следовать новым знаниям и\r\n      рекомендациям. Книга доступна  пока только в английском варианте.', 34, '31.jpg', 5),
(32, 'Освой самостоятельно SQL', 'Бен Форт', 'Page: 350; Lang: ru; Year: 2018;', 'Данная книга поможет вам в кратчайшие\r\n  сроки освоить SQL - самый популярный язык  баз данных. Начиная с простых запросов\r\n   на выборку данных, автор  урок за уроком рассматривает все более сложные темы,\r\n   такие, как использование  операций объединения, подзапросы, хранимые процедуры,\r\n   индексы,  триггеры и ограничения. На изучение материала каждого урока вам\r\n   потребуется  не более 10 минут. Благодаря этой книге вы быстро научитесь\r\n    самостоятельно составлять запросы к базам данных на языке SQL без чьей-либо\r\n     помощи. Примеры, приведённые в книге, будут работать во  всех наиболее\r\n      популярных СУБД - IBM DB2, Microsoft Access, Microsoft SQL  Server, MySQL,\r\n       Oracle, PostgreSQL и Sybase Adaptive Server.', 45, '32.jpg', 7),
(33, 'Fundamentals for Microsoft SQL Server', 'Itzik Ben-Gan', 'Page: 340;\r\nLang: ru;\r\nYear: 2018;', 'Независимо от того, являетесь ли вы\r\n  системным администратором, разработчиком баз данных или    ИТ-консультантом, с помощью этого\r\n  подробного руководства вы сможете быстро углубить свои знания    программы Microsoft SQL\r\n  Server 2005.', 43, '33.jpg', 7),
(34, 'Язык запросов SQL', 'Ф. Андон, В. Резниченко', 'Page: 350;\r\nLang: ru;\r\nYear: 2017;', 'Книга ориентирована, прежде всего, на начинающего\r\n   пользователя, желающего всерьез  заняться базами данных. Основу материала составляет\r\n   изучение примеров готовых  баз данных. Подробно рассматриваются приемы конструирования\r\n    запросов: от самых  простых до сложных', 34, '34.jpg', 7),
(35, 'Программирование баз данных SQL', 'Билл Карвин', 'Page: 400;\r\nLang: ru;\r\nYear: 2016;', 'В мире существует огромное число книг\r\n   и интернет-публикаций по языку SQL. Но как отличить  хорошие примеры от плохих? \"\r\n   Программирование баз данных SQL\" - продукт многолетней  практической работы. Каждая\r\n    тема здесь раскрывается подробно, а внимание к деталям  превосходит ожидания. Хотя\r\n    книга предназначена не для новичков, любой опытный  SQL-программист найдет в ней\r\n     что-нибудь новое. ', 43, '35.jpg', 7),
(36, 'Python Crash Course', 'Eric Matthes', 'Page: 350;\r\nLang: ru;\r\nYear: 2018;', 'Книга начинается с пошагового руководства по основным\r\n  элементам Python и  структурам данных. Подробно разобраны все темы: от переменных до\r\n  тестирования кода.  Во второй половине книги читатель будет работать над тремя крупными\r\n   проектами,  создавая полезные и забавные приложения.  Первый проект – игра об\r\n   инопланетном вторжении, разработанная с использованием  пакета pygame. Вы спроектируете\r\n    корабль, создадите инопланетный флот и научитесь  сражаться с космическими захватчиками.\r\n      Во втором проекте вы научитесь работать с matplotlilb: загружать данные в  различных\r\n     форматах, визуализировать результаты в виде графиков и диаграмм,  взаимодействовать\r\n     с веб-API и извлекать информацию с GitHub и HackerNews. ', 64, '36.jpg', 6),
(37, 'Head-First Python', 'Paul Barry', 'Page: 340;\r\nLang: ru;\r\nYear: 2018;', 'Уникальный подход серии Head First – небольшие\r\n   самодостаточные разделы, богатые  понятными иллюстрациями, примерами и дополнительными\r\n    фактами – делает эту книгу  необычайно приятной и легкой для чтения.  Изучая\r\n    книгу, вы будете по кусочкам создавать динамический веб-сайт на Python и  CGI,\r\n    а затем и Android-приложение. Вы научитесь обрабатывать пользовательский  ввод,\r\n     разворачивать и масштабировать ваш проект.  Хотя эта книга не столь всеобъемлюща,\r\n      как некоторые другие, она охватывает  широкий спектр задач и объясняет их\r\n       доступным языком. Если вы только начинаете  погружаться в мир программирования\r\n        и еще не привыкли к сухому языку большинства  руководств, серия Head First\r\n         – для вас.', 64, '37.jpg', 6),
(38, 'Real Python Course', 'Free Online Book', 'Page: 350;\r\nLang: ru;\r\nYear: 2017;', 'Книга состоит из объяснений, примеров кода и\r\n  упражнений, позволяющих немедленно   применить и закрепить полученные знания.\r\n   Руководство ориентировано на практический подход. Оно глубоко и понятно описывает\r\n    основы языка, но также рассматривает более сложные и продвинутые функции Python.\r\n     Вы научитесь обрабатывать PDF-файлы, использовать SQL, парсить веб-страницы,\r\n      проводить сложные вычисления с помощью numpy и matplotlib, создавать графические  интерфейсы.', 46, '38.png', 6),
(39, 'Изучаем Python', 'М. Лутц', 'Page: 400;\r\nLang: ru;\r\nYear: 2016;', '(2 тома)По моему мнению, данную\r\nкнигу должен прочитать каждый программист на Python,    который хочет связать свою жизнь с\r\nэтим языком.    Она дает обширное понимание языка    Она объясняет плюсы и минусы языка\r\n   Она показывает эволюцию языка.', 56, '39.jpg', 6),
(40, 'Простой Python', 'Дилл Любанович', 'Page: 350;\r\nLang: ru;\r\nYear: 2018;', 'Прочитав эту книгу и скачав PyCharm без it-бекграунда,\r\n   я смог написать  свои первые программы (небольшое десктоп-приложение, парсер сайтов и\r\n     ребус).  Форсье Дж., Биссекс П., Чан У., Django – веб-разработка приложений на Python.\r\n       Я считаю эту книгу полностью бесполезной, так как она не справляется со  своей\r\n     главной задачей – научить писать веб-приложения на Django.', 56, '40.jpg', 6),
(41, 'Разработка геоприложений на языке Python.', 'Э. Вестра', 'Page: 340;\r\nLang: ru;\r\nYear: 2018;', 'Эту книгу должен прочитать\r\n  каждый разработчик, который хочет написать   адекватное ГИС приложение на Python.\r\n  Эту книгу можно условно разделить на два раздела:   Что такое ГИС системы – очень ясно\r\n  и адекватно   Почему писать Гис приложение на Python – это больно', 56, '41.jpg', 6),
(42, 'Изучаем C#', 'Э. Стиллмен, Д. Грин', 'Page: 350;\r\nLang: ru;\r\nYear: 2017;\r\n', 'Автор делает упор на то, что, используя C# и Visual Studio,\r\n   разработчики  могут быстро создавать приложения, разрабатывать красивый пользовательский\r\n     интерфейс, создавать базы данных и взаимодействовать с ними.  Читателя учат\r\n   фокусироваться на решении реальных проблем. Авторы приучают  начинающих программистов\r\n   к основам разработки – сперва понять, кто  будет  пользоваться продуктом и какие у\r\n    аудитории ожидания. Будущий разработчик  все время должен думать о потребностях\r\n    конечных пользователей продукта  и создавать качественный продукт.', 75, '42.jpg', 5),
(43, 'Говорить на JavaScript', 'Dr. Axel Rauschmayer', 'Page: 400;\r\nLang: ru;\r\nYear: 2016;', 'Книга для тех, кто хочет научиться писать код на JS.\r\n   Автор позволяет себе допущение, что читатель, взявшийся за данную книгу, является программистом,\r\n    который уже знает хотя бы один объектно-ориентированный или другой язык программирования, такой\r\n     как PHP, Ruby, Python, C++, Java и так далее.', 58, '43.jpg', 4),
(44, 'Человеческий JavaScript', 'H. Joreteg', 'Page: 350;\r\nLang: ru;\r\nYear: 2018;', 'Посылка этой книги в том, что в рамках этого языка\r\n  существует набор функционала, инструментов, подходов и шаблонов, заточенных и оптимизированных\r\n  под человека. Эта книга подойдет читателям, желающим узнать больше о JS с точки зрения разработки\r\n   веб-приложений.', 35, '44.png', 4),
(45, 'Элегантный JavaScript', 'Марин Хауэрбеке', 'Page: 400;\r\nLang: ru;\r\nYear: 2016;', 'Эта книга представляет собой введение в\r\n  программирование на JS. Книга также охватывает основные парадигмы программирования,\r\n   например, ООП. В последней части книги рассказывается о Node.js.', 36, '45.jpg', 4),
(46, 'Программируем JavaScript-приложения', 'Eric Elliot', 'Page: 350;\r\nLang: ru;\r\nYear: 2018;', 'Издание, которое научит вас техникам,\r\n   приемам и лучшим практикам создания современных веб-приложений с использованием JS и связанных\r\n    веб-технологий вроде JSON и NoSQL.', 63, '46.jpg', 4),
(47, 'Создание приложений на простом JavaScript', 'Gerd Wagner', 'Page: 340;\r\nLang: ru;\r\nYear: 2018;', 'Эта книга рассчитана на опытных JS-разработчиков, желающих прокачать свой\r\n уровень владения языком в контексте разработки полнофункционального веб-приложения.', 34, '47.png', 4),
(48, 'JavaScript просветление', 'C. Lindley', 'Page: 350;\r\nLang: ru;\r\nYear: 2017;', 'Книга глубоко проникает в возможности\r\n   и тонкости углубленного JS. Чтобы показать читателю, насколько она технически\r\n    подробна: отдельная глава полностью посвящена значению null, другая — целиком\r\n    undefined. Если вы хотите разобраться в самой подноготной языка, эта книга\r\n    специально для вас.', 63, '48.jpg', 4),
(49, 'Вы не знаете JS (серия)', 'K. Simpson', 'Page: 400;\r\nLang: ru;\r\nYear: 2016;', 'Это серия книг, погружающих читателя\r\n в фундаментальные механизмы языка. Первое издание на данный момент полностью сформировано.', 36, '49.jpg', 4);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
