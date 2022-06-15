--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: fk; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fk (
    galaxy_id integer,
    star_id integer,
    planet_id integer,
    name character varying NOT NULL,
    fk_id integer NOT NULL
);


ALTER TABLE public.fk OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter integer NOT NULL,
    description text,
    galaxy_type text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    distance_from_planet numeric,
    description text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    has_life boolean,
    is_spherical boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    distance_from_earth numeric,
    description text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: fk; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fk VALUES (1, 1, 1, 'name1', 1);
INSERT INTO public.fk VALUES (2, 2, 2, 'name2', 2);
INSERT INTO public.fk VALUES (3, 3, 3, 'name3', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100, 'This is the galaxy containing the sun and its solar system, and therefore earth.', 'SBrsbc');
INSERT INTO public.galaxy VALUES (2, 'Canis Major Dwarf', 20, NULL, 'dlrr');
INSERT INTO public.galaxy VALUES (3, 'Sagittarius Dwarf Elliptical', 10, 'SagDEG', 'dE');
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 25, 'Largest satellite galaxy of the Milky Way', 'lrr');
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic Cloud', 15, NULL, 'lrr');
INSERT INTO public.galaxy VALUES (6, 'Sextans Dwarf', 3, NULL, 'dSph');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 470, 345, NULL);
INSERT INTO public.moon VALUES (2, 'moon2', 470, 345, NULL);
INSERT INTO public.moon VALUES (3, 'moon3', 470, 345, NULL);
INSERT INTO public.moon VALUES (4, 'moon4', 470, 345, NULL);
INSERT INTO public.moon VALUES (5, 'moon5', 470, 345, NULL);
INSERT INTO public.moon VALUES (6, 'moon6', 470, 345, NULL);
INSERT INTO public.moon VALUES (7, 'moon7', 470, 345, NULL);
INSERT INTO public.moon VALUES (8, 'moon8', 470, 345, NULL);
INSERT INTO public.moon VALUES (9, 'moon9', 470, 345, NULL);
INSERT INTO public.moon VALUES (10, 'moon10', 470, 345, NULL);
INSERT INTO public.moon VALUES (11, 'moon11', 470, 345, NULL);
INSERT INTO public.moon VALUES (12, 'moon12', 470, 345, NULL);
INSERT INTO public.moon VALUES (13, 'moon13', 470, 345, NULL);
INSERT INTO public.moon VALUES (14, 'moon14', 470, 345, NULL);
INSERT INTO public.moon VALUES (15, 'moon15', 470, 345, NULL);
INSERT INTO public.moon VALUES (16, 'moon16', 470, 345, NULL);
INSERT INTO public.moon VALUES (17, 'moon17', 470, 345, NULL);
INSERT INTO public.moon VALUES (18, 'moon18', 470, 345, NULL);
INSERT INTO public.moon VALUES (19, 'moon19', 470, 345, NULL);
INSERT INTO public.moon VALUES (20, 'moon20', 470, 345, NULL);
INSERT INTO public.moon VALUES (21, 'moon21', 470, 345, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 23, true, true);
INSERT INTO public.planet VALUES (2, 'planet2', 23, true, true);
INSERT INTO public.planet VALUES (3, 'planet3', 23, true, true);
INSERT INTO public.planet VALUES (4, 'planet4', 23, true, true);
INSERT INTO public.planet VALUES (5, 'planet5', 23, true, true);
INSERT INTO public.planet VALUES (6, 'planet6', 23, true, true);
INSERT INTO public.planet VALUES (7, 'planet7', 23, true, true);
INSERT INTO public.planet VALUES (8, 'planet8', 23, true, true);
INSERT INTO public.planet VALUES (9, 'planet9', 23, true, true);
INSERT INTO public.planet VALUES (10, 'planet10', 23, true, true);
INSERT INTO public.planet VALUES (11, 'planet11', 23, true, true);
INSERT INTO public.planet VALUES (12, 'planet12', 23, true, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 10, 100.555, 'the biggest star ever.');
INSERT INTO public.star VALUES (2, 'star2', 10, 100.555, 'the biggest star ever.');
INSERT INTO public.star VALUES (3, 'star3', 10, 100.555, 'the biggest star ever.');
INSERT INTO public.star VALUES (4, 'star4', 10, 100.555, 'the biggest star ever.');
INSERT INTO public.star VALUES (5, 'star5', 10, 100.555, 'the biggest star ever.');
INSERT INTO public.star VALUES (6, 'star6', 10, 100.555, 'the biggest star ever.');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: fk fk_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fk
    ADD CONSTRAINT fk_name_key UNIQUE (name);


--
-- Name: fk fk_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fk
    ADD CONSTRAINT fk_pkey PRIMARY KEY (fk_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: fk fk_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fk
    ADD CONSTRAINT fk_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: fk fk_planet_d_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fk
    ADD CONSTRAINT fk_planet_d_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: fk fk_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fk
    ADD CONSTRAINT fk_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

