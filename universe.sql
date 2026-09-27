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
-- Name: dust; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dust (
    dust_id integer NOT NULL,
    name character varying(40) NOT NULL,
    material character varying(40)
);


ALTER TABLE public.dust OWNER TO freecodecamp;

--
-- Name: dust_dust_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dust_dust_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dust_dust_id_seq OWNER TO freecodecamp;

--
-- Name: dust_dust_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dust_dust_id_seq OWNED BY public.dust.dust_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    galaxy_type character varying(20),
    visible_naked_eye boolean
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
    name character varying(40) NOT NULL,
    planet_id integer,
    description text,
    diameter numeric
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
    name character varying(40) NOT NULL,
    has_life boolean,
    moon_count integer,
    star_id integer,
    description text
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
    name character varying(40) NOT NULL,
    radial_velocity numeric,
    galaxy_id integer,
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
-- Name: dust dust_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dust ALTER COLUMN dust_id SET DEFAULT nextval('public.dust_dust_id_seq'::regclass);


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
-- Data for Name: dust; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dust VALUES (1, 'uno', 'iron');
INSERT INTO public.dust VALUES (2, 'due', 'silver');
INSERT INTO public.dust VALUES (3, 'tre', 'mercury');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The galaxy humans live one', 13600, 'Spiral', true);
INSERT INTO public.galaxy VALUES (2, 'Triangulum', 'Third largest in the Local Group', 15000, 'Spiral', true);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 'Closest galaxy to the Milky way', 10000, 'Spiral', true);
INSERT INTO public.galaxy VALUES (4, 'Cartwheel', 'Shape of a spoked wheel', 200, 'Lenticular Ring', false);
INSERT INTO public.galaxy VALUES (6, 'Condor', 'Largest known spiral galaxy', 5000, 'Spiral', false);
INSERT INTO public.galaxy VALUES (5, 'Eye of God', 'Located in the Eridanus constellation', 1000, 'Spiral', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'alpha beta', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'gamma delta', 2, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'epsilon zeta', 3, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'eta theta', 4, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'iota kappa', 5, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'lambda mu', 6, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'nu xi', 7, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'omicron pi', 8, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'rho sigma', 9, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'tau upsilon', 10, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'phi chi', 11, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'psi omega', 12, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'omega chi', 11, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'psi phi', 10, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'upsilon sigma', 9, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'tau rho', 8, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'pi xi', 7, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'mu kappa', 6, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'lambda iota', 5, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'kappa theta', 4, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Alpha', NULL, NULL, 6, NULL);
INSERT INTO public.planet VALUES (2, 'Beta', NULL, NULL, 5, NULL);
INSERT INTO public.planet VALUES (3, 'Gamma', NULL, NULL, 4, NULL);
INSERT INTO public.planet VALUES (4, 'Delta', NULL, NULL, 3, NULL);
INSERT INTO public.planet VALUES (5, 'Epsilon', NULL, NULL, 2, NULL);
INSERT INTO public.planet VALUES (6, 'Zeta', NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (7, 'Eta', NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (8, 'Theta', NULL, NULL, 2, NULL);
INSERT INTO public.planet VALUES (9, 'Iota', NULL, NULL, 3, NULL);
INSERT INTO public.planet VALUES (10, 'Kappa', NULL, NULL, 4, NULL);
INSERT INTO public.planet VALUES (11, 'Lambda', NULL, NULL, 5, NULL);
INSERT INTO public.planet VALUES (12, 'Mu', NULL, NULL, 6, NULL);
INSERT INTO public.planet VALUES (13, 'Nu', NULL, NULL, 6, NULL);
INSERT INTO public.planet VALUES (14, 'Xi', NULL, NULL, 5, NULL);
INSERT INTO public.planet VALUES (15, 'Omicron', NULL, NULL, 4, NULL);
INSERT INTO public.planet VALUES (16, 'Pi', NULL, NULL, 3, NULL);
INSERT INTO public.planet VALUES (17, 'Rho', NULL, NULL, 2, NULL);
INSERT INTO public.planet VALUES (18, 'Sigma', NULL, NULL, 1, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', NULL, 1, NULL);
INSERT INTO public.star VALUES (2, 'Alpheratz', NULL, 3, NULL);
INSERT INTO public.star VALUES (3, 'Beta Trianguli', NULL, 2, NULL);
INSERT INTO public.star VALUES (4, 'Notebook', NULL, 4, NULL);
INSERT INTO public.star VALUES (5, 'Cable', NULL, 6, NULL);
INSERT INTO public.star VALUES (6, 'Paper', NULL, 5, NULL);


--
-- Name: dust_dust_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dust_dust_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 18, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: dust dust_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dust
    ADD CONSTRAINT dust_name_key UNIQUE (name);


--
-- Name: dust dust_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dust
    ADD CONSTRAINT dust_pkey PRIMARY KEY (dust_id);


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

