--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE ONLY public.games DROP CONSTRAINT games_user_id_fkey;
ALTER TABLE ONLY public.users DROP CONSTRAINT users_username_key;
ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
ALTER TABLE ONLY public.games DROP CONSTRAINT games_pkey;
ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
ALTER TABLE public.games ALTER COLUMN game_id DROP DEFAULT;
DROP SEQUENCE public.users_user_id_seq;
DROP TABLE public.users;
DROP SEQUENCE public.games_game_id_seq;
DROP TABLE public.games;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer,
    number_of_guesses integer NOT NULL,
    secret_number integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 472, 471);
INSERT INTO public.games VALUES (2, 1, 47, 46);
INSERT INTO public.games VALUES (3, 2, 133, 132);
INSERT INTO public.games VALUES (4, 2, 723, 722);
INSERT INTO public.games VALUES (5, 1, 484, 481);
INSERT INTO public.games VALUES (6, 1, 936, 934);
INSERT INTO public.games VALUES (7, 1, 882, 881);
INSERT INTO public.games VALUES (8, 3, 551, 550);
INSERT INTO public.games VALUES (9, 3, 846, 845);
INSERT INTO public.games VALUES (10, 4, 172, 171);
INSERT INTO public.games VALUES (11, 4, 191, 190);
INSERT INTO public.games VALUES (12, 3, 228, 225);
INSERT INTO public.games VALUES (13, 3, 49, 47);
INSERT INTO public.games VALUES (14, 3, 292, 291);
INSERT INTO public.games VALUES (15, 5, 554, 553);
INSERT INTO public.games VALUES (16, 5, 294, 293);
INSERT INTO public.games VALUES (17, 6, 285, 284);
INSERT INTO public.games VALUES (18, 6, 255, 254);
INSERT INTO public.games VALUES (19, 5, 173, 170);
INSERT INTO public.games VALUES (20, 5, 916, 914);
INSERT INTO public.games VALUES (21, 5, 533, 532);
INSERT INTO public.games VALUES (22, 7, 627, 626);
INSERT INTO public.games VALUES (23, 7, 227, 226);
INSERT INTO public.games VALUES (24, 8, 548, 547);
INSERT INTO public.games VALUES (25, 8, 615, 614);
INSERT INTO public.games VALUES (26, 7, 632, 629);
INSERT INTO public.games VALUES (27, 7, 738, 736);
INSERT INTO public.games VALUES (28, 7, 969, 968);
INSERT INTO public.games VALUES (29, 9, 47, 46);
INSERT INTO public.games VALUES (30, 9, 615, 614);
INSERT INTO public.games VALUES (31, 10, 933, 932);
INSERT INTO public.games VALUES (32, 10, 780, 779);
INSERT INTO public.games VALUES (33, 9, 749, 746);
INSERT INTO public.games VALUES (34, 9, 129, 127);
INSERT INTO public.games VALUES (35, 9, 741, 740);
INSERT INTO public.games VALUES (36, 11, 732, 731);
INSERT INTO public.games VALUES (37, 11, 917, 916);
INSERT INTO public.games VALUES (38, 12, 879, 878);
INSERT INTO public.games VALUES (39, 12, 269, 268);
INSERT INTO public.games VALUES (40, 11, 646, 643);
INSERT INTO public.games VALUES (41, 11, 326, 324);
INSERT INTO public.games VALUES (42, 11, 399, 398);
INSERT INTO public.games VALUES (43, 13, 461, 461);
INSERT INTO public.games VALUES (44, 13, 152, 152);
INSERT INTO public.games VALUES (45, 14, 661, 661);
INSERT INTO public.games VALUES (46, 14, 592, 592);
INSERT INTO public.games VALUES (47, 13, 966, 964);
INSERT INTO public.games VALUES (48, 13, 24, 23);
INSERT INTO public.games VALUES (49, 13, 382, 382);
INSERT INTO public.games VALUES (50, 15, 485, 484);
INSERT INTO public.games VALUES (51, 15, 181, 180);
INSERT INTO public.games VALUES (52, 16, 652, 651);
INSERT INTO public.games VALUES (53, 16, 906, 905);
INSERT INTO public.games VALUES (54, 15, 151, 148);
INSERT INTO public.games VALUES (55, 15, 628, 626);
INSERT INTO public.games VALUES (56, 15, 720, 719);
INSERT INTO public.games VALUES (57, 17, 252, 251);
INSERT INTO public.games VALUES (58, 17, 703, 702);
INSERT INTO public.games VALUES (59, 18, 906, 905);
INSERT INTO public.games VALUES (60, 18, 688, 687);
INSERT INTO public.games VALUES (61, 17, 548, 545);
INSERT INTO public.games VALUES (62, 17, 636, 634);
INSERT INTO public.games VALUES (63, 17, 932, 931);
INSERT INTO public.games VALUES (64, 19, 889, 888);
INSERT INTO public.games VALUES (65, 19, 119, 118);
INSERT INTO public.games VALUES (66, 20, 518, 517);
INSERT INTO public.games VALUES (67, 20, 9, 8);
INSERT INTO public.games VALUES (68, 19, 47, 44);
INSERT INTO public.games VALUES (69, 19, 13, 11);
INSERT INTO public.games VALUES (70, 19, 23, 22);
INSERT INTO public.games VALUES (71, 21, 926, 925);
INSERT INTO public.games VALUES (72, 21, 384, 383);
INSERT INTO public.games VALUES (73, 22, 686, 685);
INSERT INTO public.games VALUES (74, 22, 110, 109);
INSERT INTO public.games VALUES (75, 21, 673, 670);
INSERT INTO public.games VALUES (76, 21, 152, 150);
INSERT INTO public.games VALUES (77, 21, 741, 740);
INSERT INTO public.games VALUES (78, 23, 11, 309);
INSERT INTO public.games VALUES (79, 25, 334, 333);
INSERT INTO public.games VALUES (80, 25, 4, 3);
INSERT INTO public.games VALUES (81, 26, 880, 879);
INSERT INTO public.games VALUES (82, 26, 566, 565);
INSERT INTO public.games VALUES (83, 25, 589, 586);
INSERT INTO public.games VALUES (84, 25, 481, 479);
INSERT INTO public.games VALUES (85, 25, 475, 474);
INSERT INTO public.games VALUES (86, 27, 903, 902);
INSERT INTO public.games VALUES (87, 27, 420, 419);
INSERT INTO public.games VALUES (88, 28, 230, 229);
INSERT INTO public.games VALUES (89, 28, 627, 626);
INSERT INTO public.games VALUES (90, 27, 311, 308);
INSERT INTO public.games VALUES (91, 27, 409, 407);
INSERT INTO public.games VALUES (92, 27, 364, 363);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1793374557514');
INSERT INTO public.users VALUES (2, 'user_1793374557513');
INSERT INTO public.users VALUES (3, 'user_1793374582626');
INSERT INTO public.users VALUES (4, 'user_1793374582625');
INSERT INTO public.users VALUES (5, 'user_1793374610936');
INSERT INTO public.users VALUES (6, 'user_1793374610935');
INSERT INTO public.users VALUES (7, 'user_1793374702729');
INSERT INTO public.users VALUES (8, 'user_1793374702728');
INSERT INTO public.users VALUES (9, 'user_1793374726741');
INSERT INTO public.users VALUES (10, 'user_1793374726740');
INSERT INTO public.users VALUES (11, 'user_1793374858474');
INSERT INTO public.users VALUES (12, 'user_1793374858473');
INSERT INTO public.users VALUES (13, 'user_1793374996562');
INSERT INTO public.users VALUES (14, 'user_1793374996561');
INSERT INTO public.users VALUES (15, 'user_1793375131026');
INSERT INTO public.users VALUES (16, 'user_1793375131025');
INSERT INTO public.users VALUES (17, 'user_1793375163441');
INSERT INTO public.users VALUES (18, 'user_1793375163440');
INSERT INTO public.users VALUES (19, 'user_1793375258875');
INSERT INTO public.users VALUES (20, 'user_1793375258874');
INSERT INTO public.users VALUES (21, 'user_1793375352505');
INSERT INTO public.users VALUES (22, 'user_1793375352504');
INSERT INTO public.users VALUES (23, 'A');
INSERT INTO public.users VALUES (24, 'a');
INSERT INTO public.users VALUES (25, 'user_1793375477748');
INSERT INTO public.users VALUES (26, 'user_1793375477747');
INSERT INTO public.users VALUES (27, 'user_1793375484291');
INSERT INTO public.users VALUES (28, 'user_1793375484290');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 92, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 28, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

