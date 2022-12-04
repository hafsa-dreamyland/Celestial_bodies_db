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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(200) NOT NULL,
    description text,
    light_years_from_earth integer,
    magnitude numeric(4,2)
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
    name character varying(100) NOT NULL,
    planet character varying(100),
    radius numeric(6,2),
    planet_id integer
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
    name character varying(100) NOT NULL,
    has_moon boolean,
    number_of_moons integer,
    has_atmosphere boolean,
    star_id integer
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
-- Name: space_station; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_station (
    space_station_id integer NOT NULL,
    name character varying(100) NOT NULL,
    is_active_and_operative boolean
);


ALTER TABLE public.space_station OWNER TO freecodecamp;

--
-- Name: space_station_space_station_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_station_space_station_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_station_space_station_id_seq OWNER TO freecodecamp;

--
-- Name: space_station_space_station_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_station_space_station_id_seq OWNED BY public.space_station.space_station_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    distance_light_years integer,
    constellation character varying(100),
    galaxy_id integer
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
-- Name: space_station space_station_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_station ALTER COLUMN space_station_id SET DEFAULT nextval('public.space_station_space_station_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'It is among the brightest of the Messier objects', 2500000, 3.44);
INSERT INTO public.galaxy VALUES (2, 'Black Eye', 'It is a relatively isolated spiral galaxy', 25000000, 9.36);
INSERT INTO public.galaxy VALUES (3, 'Cartwheel', 'It is a lenticular ring galaxy in the constellation Sculptor.', 500000000, 15.20);
INSERT INTO public.galaxy VALUES (4, 'Fireworks', 'A face-on intermediate spiral galaxy with a small bright nucleus', 22000000, 9.60);
INSERT INTO public.galaxy VALUES (5, 'Milky Way', 'A barred spiral galaxy', 27000, -20.90);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 'A peculiar galaxy in the constellation borders of Virgo and Corvus', 28000000, -21.80);
INSERT INTO public.galaxy VALUES (7, 'Whirpool', 'An interacting grand-design with a Seyefert 2 active galactic nucleus', 31000000, 8.40);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earth', 1079.60, NULL);
INSERT INTO public.moon VALUES (2, 'Europa', 'Jupiter', 969.84, NULL);
INSERT INTO public.moon VALUES (3, 'Io', 'Jupiter', 1131.90, NULL);
INSERT INTO public.moon VALUES (4, 'Titan', 'Saturn', 1599.90, NULL);
INSERT INTO public.moon VALUES (5, 'Ganymede', 'Jupiter', 1636.80, NULL);
INSERT INTO public.moon VALUES (6, 'Callisto', 'Jupiter', 1497.70, NULL);
INSERT INTO public.moon VALUES (7, 'Amalthea', 'Jupiter', 51.88, NULL);
INSERT INTO public.moon VALUES (8, 'Adrastea', 'Jupiter', 5.10, NULL);
INSERT INTO public.moon VALUES (9, 'Himalia', 'Jupiter', 52.82, NULL);
INSERT INTO public.moon VALUES (10, 'Ananke', 'Jupiter', 8.70, NULL);
INSERT INTO public.moon VALUES (11, 'Elara', 'Jupiter', 26.72, NULL);
INSERT INTO public.moon VALUES (12, 'Carme', 'Jupiter', 14.29, NULL);
INSERT INTO public.moon VALUES (13, 'Carpo', 'Jupiter', 0.93, NULL);
INSERT INTO public.moon VALUES (14, 'Herse', 'Jupiter', 0.62, NULL);
INSERT INTO public.moon VALUES (15, 'Thebe', 'Jupiter', 30.63, NULL);
INSERT INTO public.moon VALUES (16, 'Aitne', 'Jupiter', 1.50, NULL);
INSERT INTO public.moon VALUES (17, 'Kalyke', 'Jupiter', 1.62, NULL);
INSERT INTO public.moon VALUES (18, 'Arche', 'Jupiter', 0.93, NULL);
INSERT INTO public.moon VALUES (19, 'Dione', 'Saturn', 348.84, NULL);
INSERT INTO public.moon VALUES (20, 'Sponde', 'Jupiter', 1.24, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Pluto', true, 5, true, NULL);
INSERT INTO public.planet VALUES (3, 'Charon', false, 0, false, NULL);
INSERT INTO public.planet VALUES (4, 'Earth', true, 1, true, NULL);
INSERT INTO public.planet VALUES (5, 'Mars', true, 2, true, NULL);
INSERT INTO public.planet VALUES (6, 'Jupiter', true, 79, true, NULL);
INSERT INTO public.planet VALUES (7, 'Saturn', true, 82, true, NULL);
INSERT INTO public.planet VALUES (8, 'Uranus', true, 27, true, NULL);
INSERT INTO public.planet VALUES (9, 'Neptune', true, 14, true, NULL);
INSERT INTO public.planet VALUES (11, 'Venus', false, 0, true, NULL);
INSERT INTO public.planet VALUES (1, 'Ceres', false, 0, true, NULL);
INSERT INTO public.planet VALUES (10, 'Mercury', false, 0, true, NULL);
INSERT INTO public.planet VALUES (12, '2003 UB313', false, 0, false, NULL);


--
-- Data for Name: space_station; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_station VALUES (1, 'International Space Station', true);
INSERT INTO public.space_station VALUES (2, 'Tiangong Space Station', true);
INSERT INTO public.space_station VALUES (3, 'Skylab Space Station', false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'V766 Centauri Aa', 8300, 'Centaurus', NULL);
INSERT INTO public.star VALUES (2, 'AH Scorpii', 1060, 'Scorpius', NULL);
INSERT INTO public.star VALUES (3, 'W Cephei', 163082, 'Cepheus', NULL);
INSERT INTO public.star VALUES (4, 'Alcyone', 444, 'Taurus', NULL);
INSERT INTO public.star VALUES (5, 'Atlas', 444, 'Taurus', NULL);
INSERT INTO public.star VALUES (6, 'Electra', 444, 'Taurus', NULL);
INSERT INTO public.star VALUES (7, 'Maia', 444, 'Taurus', NULL);
INSERT INTO public.star VALUES (8, 'Merope', 444, 'Taurus', NULL);
INSERT INTO public.star VALUES (9, 'Taygeta', 444, 'Taurus', NULL);
INSERT INTO public.star VALUES (10, 'Pleione', 444, 'Taurus', NULL);
INSERT INTO public.star VALUES (11, 'Celaeno', 444, 'Taurus', NULL);
INSERT INTO public.star VALUES (12, 'Asterope', 444, 'Taurus', NULL);
INSERT INTO public.star VALUES (13, 'Sterope', 444, 'Taurus', NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 11, true);


--
-- Name: space_station_space_station_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_station_space_station_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 13, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: space_station space_station_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_station
    ADD CONSTRAINT space_station_pkey PRIMARY KEY (space_station_id);


--
-- Name: space_station space_station_space_station_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_station
    ADD CONSTRAINT space_station_space_station_id_key UNIQUE (space_station_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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
