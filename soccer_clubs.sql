--
-- PostgreSQL database dump
--

-- Dumped from database version 10.0
-- Dumped by pg_dump version 10.0

-- Started on 2017-11-06 17:30:41

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12924)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2832 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 196 (class 1259 OID 16394)
-- Name: club; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE club (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    city character varying(255) NOT NULL,
    country character varying(255) NOT NULL,
    budget money NOT NULL,
    president character varying NOT NULL,
    id_league integer NOT NULL,
    year integer NOT NULL,
    id_stadium integer NOT NULL
);


ALTER TABLE club OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16430)
-- Name: clubs_trophies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE clubs_trophies (
    id integer NOT NULL,
    id_club integer NOT NULL,
    id_trophie integer NOT NULL
);


ALTER TABLE clubs_trophies OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 16402)
-- Name: league; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE league (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    country character varying(255) NOT NULL,
    president character varying(255) NOT NULL
);


ALTER TABLE league OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 16415)
-- Name: stadium; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE stadium (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    capacity integer NOT NULL,
    year integer NOT NULL
);


ALTER TABLE stadium OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16410)
-- Name: trophies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE trophies (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    year integer NOT NULL
);


ALTER TABLE trophies OWNER TO postgres;

--
-- TOC entry 2821 (class 0 OID 16394)
-- Dependencies: 196
-- Data for Name: club; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY club (id, name, city, country, budget, president, id_league, year, id_stadium) FROM stdin;
2	Мілан	Мілан	Італія	214 000 000,00 ?	Лі Йонхон	2	1899	10
1	Динамо	Київ	Україна	100 000 000,00 ?	Ігор Суркіс	1	1927	1
4	Манчестер Юнайтед	Манчестер	Англія	689 000 000,00 ?	Ед Вудворт	4	1878	2
3	Барселона	Барселона	Іспанія	620 000 000,00 ?	Хосел Бартоломеу	3	1899	5
5	Баварія	Мюнхен	Німеччина	533 000 000,00 ?	Улі Хьонсен	5	1900	3
10	Арсенал	Лондон	Англія	468 000 000,00 ?	Пауль Сноу	4	1886	9
9	Парі Сен Жермен	Париж	Франція	521 000 000,00 ?	Насір Аль-Хелефі	6	1970	8
6	Ліверпуль	Ліверпуль	Англія	391 000 000,00 ?	Том Вернер	4	1892	4
8	Реал	Мадрид	Іспанія	620 000 000,00 ?	Флорентіно Перес	3	1902	7
7	Олімпік Марсель	Марсель	Франція	179 800 000,00 ?	Жак-Анрі Ейро	6	1899	6
12	Chelcy	London	England	250 000 000,00 ?	Lui Marko	4	1950	6
\.


--
-- TOC entry 2825 (class 0 OID 16430)
-- Dependencies: 200
-- Data for Name: clubs_trophies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY clubs_trophies (id, id_club, id_trophie) FROM stdin;
25	8	3
26	8	8
27	9	1
28	10	5
21	6	3
22	7	6
23	8	5
24	8	6
29	10	1
30	10	3
2	2	5
1	1	2
4	2	5
3	1	6
6	2	7
5	2	1
8	3	1
7	2	8
10	3	5
9	3	3
12	4	6
11	4	5
14	4	7
13	4	1
16	5	1
15	5	5
18	5	3
17	5	6
20	6	6
19	6	5
31	10	6
\.


--
-- TOC entry 2822 (class 0 OID 16402)
-- Dependencies: 197
-- Data for Name: league; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY league (id, name, country, president) FROM stdin;
2	Серія А	Італія	Флорентіно Ляморса
1	Премєр ліга України	Україна	Ігор Суркіс
4	Премєр ліга	Англія	Джон Сміт
3	Лі Ліга	Іспанія	Енріко Дауро
6	Премєр ліга	Франція	Франсуа Пери
5	Бундес ліга	Німеччина	Нік Уорт
\.


--
-- TOC entry 2824 (class 0 OID 16415)
-- Dependencies: 199
-- Data for Name: stadium; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY stadium (id, name, capacity, year) FROM stdin;
2	Олд Траффорд	75643	1910
1	НСК Олімпійський	70005	1920
6	Велодром	67000	1937
8	Парк Де Пренс	48712	1897
7	Сантьяго Бернабеу	85454	1902
9	Емірейтс	60355	2006
3	Альянц Арена	66000	2005
10	Сан-Сіро	80018	1925
4	Енфілд	54074	1884
5	Камп Ноу	99354	1954
\.


--
-- TOC entry 2823 (class 0 OID 16410)
-- Dependencies: 198
-- Data for Name: trophies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY trophies (id, name, year) FROM stdin;
2	Кубок України	1992
1	Кубок володарів кубків УЕФА	1960
5	Кубок чемпіонів Ліги чемпіонів УЕФА	1955
3	Суперкубок УЕФА	1972
7	Суперкубок Європи	1960
6	Кубок УЕФА Ліги Європи УЕФА	1971
8	Міжконтинентальний кубок	1960
\.


--
-- TOC entry 2687 (class 2606 OID 16401)
-- Name: club club_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY club
    ADD CONSTRAINT club_pkey PRIMARY KEY (id);


--
-- TOC entry 2695 (class 2606 OID 16434)
-- Name: clubs_trophies clubs_trophies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY clubs_trophies
    ADD CONSTRAINT clubs_trophies_pkey PRIMARY KEY (id);


--
-- TOC entry 2689 (class 2606 OID 16409)
-- Name: league league_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY league
    ADD CONSTRAINT league_pkey PRIMARY KEY (id);


--
-- TOC entry 2693 (class 2606 OID 16419)
-- Name: stadium stadium_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY stadium
    ADD CONSTRAINT stadium_pkey PRIMARY KEY (id);


--
-- TOC entry 2691 (class 2606 OID 16414)
-- Name: trophies trophies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY trophies
    ADD CONSTRAINT trophies_pkey PRIMARY KEY (id);


--
-- TOC entry 2696 (class 2606 OID 16420)
-- Name: club id_league; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY club
    ADD CONSTRAINT id_league FOREIGN KEY (id_league) REFERENCES league(id);


--
-- TOC entry 2697 (class 2606 OID 16425)
-- Name: club id_stadium; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY club
    ADD CONSTRAINT id_stadium FOREIGN KEY (id_stadium) REFERENCES stadium(id);


--
-- TOC entry 2699 (class 2606 OID 16445)
-- Name: clubs_trophies name club; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY clubs_trophies
    ADD CONSTRAINT "name club" FOREIGN KEY (id_club) REFERENCES club(id);


--
-- TOC entry 2698 (class 2606 OID 16440)
-- Name: clubs_trophies trophies; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY clubs_trophies
    ADD CONSTRAINT trophies FOREIGN KEY (id_trophie) REFERENCES trophies(id);


-- Completed on 2017-11-06 17:30:43

--
-- PostgreSQL database dump complete
--

