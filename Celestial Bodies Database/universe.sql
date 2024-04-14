--
-- PostgreSQL database dump
--
-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_description text,
    gage_imoy integer,
    galaxy_types character varying(30),
    distance_from_earth numeric,
    galaxy_is_spherical boolean,
    galaxy_has_life boolean
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
    moon_description text,
    mage_imoy integer,
    moon_types character varying(30),
    distance_from_earth numeric,
    planet_id integer NOT NULL,
    moon_is_spherical boolean,
    moon_has_life boolean
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
    planet_description text,
    page_imoy integer,
    planet_types character varying(30),
    distance_from_earth numeric,
    star_id integer NOT NULL,
    planet_is_spherical boolean,
    planet_has_life boolean
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
-- Name: solsys; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solsys (
    solsys_id integer NOT NULL,
    name character varying(30) NOT NULL,
    solsys_description character varying(255),
    ssage_imoy integer,
    solsys_types character varying(30),
    distance_from_earth integer,
    solsys_is_spherical boolean,
    solsys_has_life boolean
);


ALTER TABLE public.solsys OWNER TO freecodecamp;

--
-- Name: solsys_solsys_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.solsys_solsys_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solsys_solsys_id_seq OWNER TO freecodecamp;

--
-- Name: solsys_solsys_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.solsys_solsys_id_seq OWNED BY public.solsys.solsys_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_description text,
    sage_imoy integer,
    star_types character varying(30),
    distance_from_earth numeric,
    galaxy_id integer NOT NULL,
    star_is_spherical boolean
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
-- Name: solsys solsys_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solsys ALTER COLUMN solsys_id SET DEFAULT nextval('public.solsys_solsys_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxy A', 'Deskripsi Galaxy A', 1, 'Tipe A', 1, true, true);
INSERT INTO public.galaxy VALUES (2, 'Galaxy B', 'Deskripsi Galaxy B', 2, 'Tipe B', 2, true, false);
INSERT INTO public.galaxy VALUES (3, 'Galaxy C', 'Deskripsi Galaxy C', 3, 'Tipe C', 3, false, true);
INSERT INTO public.galaxy VALUES (4, 'Galaxy D', 'Deskripsi Galaxy D', 4, 'Tipe D', 4, false, false);
INSERT INTO public.galaxy VALUES (5, 'Galaxy E', 'Deskripsi Galaxy E', 5, 'Tipe E', 5, true, false);
INSERT INTO public.galaxy VALUES (6, 'Galaxy F', 'Deskripsi Galaxy F', 6, 'Tipe F', 6, false, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Bulan A', 'Deskripsi Bulan A', 1, 'Tipe A', 1, 1, true, true);
INSERT INTO public.moon VALUES (3, 'Bulan B', 'Deskripsi Bulan B', 2, 'Tipe B', 2, 2, true, false);
INSERT INTO public.moon VALUES (4, 'Bulan C', 'Deskripsi Bulan C', 3, 'Tipe C', 3, 3, false, true);
INSERT INTO public.moon VALUES (5, 'Bulan D', 'Deskripsi Bulan D', 4, 'Tipe D', 4, 4, false, false);
INSERT INTO public.moon VALUES (6, 'Bulan E', 'Deskripsi Bulan E', 5, 'Tipe E', 5, 5, true, true);
INSERT INTO public.moon VALUES (7, 'Bulan F', 'Deskripsi Bulan F', 6, 'Tipe F', 6, 6, false, false);
INSERT INTO public.moon VALUES (8, 'Bulan G', 'Deskripsi Bulan G', 1, 'Tipe A', 1, 1, true, true);
INSERT INTO public.moon VALUES (9, 'Bulan H', 'Deskripsi Bulan H', 2, 'Tipe B', 2, 2, true, true);
INSERT INTO public.moon VALUES (10, 'Bulan I', 'Deskripsi Bulan I', 2, 'Tipe C', 3, 3, true, true);
INSERT INTO public.moon VALUES (11, 'Bulan J', 'Deskripsi ', 1, 'Tipe D', 1, 1, true, true);
INSERT INTO public.moon VALUES (12, 'Bulan K', 'Deskripsi ', 2, 'Tipe E', 2, 2, true, true);
INSERT INTO public.moon VALUES (13, 'Bulan L', 'Deskripsi ', 3, 'Tipe F', 3, 3, true, true);
INSERT INTO public.moon VALUES (14, 'Bulan M', 'Deskripsi ', 1, 'Tipe D', 1, 1, true, true);
INSERT INTO public.moon VALUES (15, 'Bulan N', 'Deskripsi ', 2, 'Tipe E', 2, 2, true, true);
INSERT INTO public.moon VALUES (16, 'Bulan O', 'Deskripsi ', 3, 'Tipe F', 3, 3, true, true);
INSERT INTO public.moon VALUES (17, 'Bulan P', 'Deskripsi ', 1, 'Tipe D', 1, 1, true, true);
INSERT INTO public.moon VALUES (18, 'Bulan Q', 'Deskripsi ', 2, 'Tipe E', 2, 2, true, true);
INSERT INTO public.moon VALUES (19, 'Bulan R', 'Deskripsi ', 3, 'Tipe F', 3, 3, true, true);
INSERT INTO public.moon VALUES (20, 'Bulan S', 'Deskripsi ', 1, 'Tipe D', 1, 1, true, true);
INSERT INTO public.moon VALUES (21, 'Bulan T', 'Deskripsi ', 2, 'Tipe E', 2, 2, true, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planet A', 'Deskripsi Planet A', 1, 'Tipe A', 1, 1, true, true);
INSERT INTO public.planet VALUES (2, 'Planet B', 'Deskripsi Planet B', 2, 'Tipe B', 2, 2, true, false);
INSERT INTO public.planet VALUES (3, 'Planet C', 'Deskripsi Planet C', 3, 'Tipe C', 3, 3, false, true);
INSERT INTO public.planet VALUES (4, 'Planet D', 'Deskripsi Planet D', 4, 'Tipe D', 4, 4, false, false);
INSERT INTO public.planet VALUES (5, 'Planet E', 'Deskripsi Planet E', 5, 'Tipe E', 5, 5, true, true);
INSERT INTO public.planet VALUES (6, 'Planet F', 'Deskripsi Planet F', 6, 'Tipe F', 6, 6, true, false);
INSERT INTO public.planet VALUES (10, 'Planet G', 'Deskripsi Planet G', 1, 'Tipe A', 1, 1, true, true);
INSERT INTO public.planet VALUES (11, 'Planet H', 'Deskripsi Planet H', 2, 'Tipe B', 2, 2, true, false);
INSERT INTO public.planet VALUES (12, 'Planet I', 'Deskripsi Planet I', 3, 'Tipe C', 3, 3, false, true);
INSERT INTO public.planet VALUES (13, 'Planet J', 'Deskripsi Planet J', 4, 'Tipe D', 4, 4, false, false);
INSERT INTO public.planet VALUES (14, 'Planet K', 'Deskripsi Planet K', 5, 'Tipe E', 5, 5, true, false);
INSERT INTO public.planet VALUES (15, 'Planet L', 'Deskripsi Planet L', 6, 'Tipe F', 6, 6, false, false);


--
-- Data for Name: solsys; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solsys VALUES (1, 'Solsis A', 'Deskripsi Solsis A', 1, 'Tipe A', 1, true, true);
INSERT INTO public.solsys VALUES (2, 'Solsis B', 'Deskripsi Solsis B', 2, 'Tipe B', 2, true, false);
INSERT INTO public.solsys VALUES (3, 'Solsis C', 'Deskripsi Solsis C', 3, 'Tipe C', 3, false, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Bintang A', 'Deskripsi Bintang A', 1, 'Tipe A', 1, 1, true);
INSERT INTO public.star VALUES (2, 'Bintang B', 'Deskripsi Bintang B', 2, 'Tipe B', 2, 2, false);
INSERT INTO public.star VALUES (3, 'Bintang C', 'Deskripsi Bintang C', 3, 'Tipe C', 3, 3, true);
INSERT INTO public.star VALUES (4, 'Bintang D', 'Deskripsi Bintang D', 4, 'Tipe D', 4, 4, false);
INSERT INTO public.star VALUES (5, 'Bintang E', 'Deskripsi Bintang E', 5, 'Tipe E', 5, 5, true);
INSERT INTO public.star VALUES (6, 'Bintang F', 'Deskripsi Bintang F', 6, 'Tipe F', 6, 6, false);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: solsys_solsys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.solsys_solsys_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_name_key UNIQUE (name);


--
-- Name: solsys solsys_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solsys
    ADD CONSTRAINT solsys_pkey PRIMARY KEY (solsys_id);


--
-- Name: solsys solsys_solsys_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solsys
    ADD CONSTRAINT solsys_solsys_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_name_key UNIQUE (name);

--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);

--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);

--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);

--
-- PostgreSQL database dump complete
--
