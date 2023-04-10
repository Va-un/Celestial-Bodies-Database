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
-- Name: comets; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comets (
    comets_id integer NOT NULL,
    name character varying(40),
    orbit_period integer NOT NULL,
    discovery_methord text
);


ALTER TABLE public.comets OWNER TO freecodecamp;

--
-- Name: comets_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comets_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comets_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comets_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comets_comet_id_seq OWNED BY public.comets.comets_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    spherical numeric,
    distance_from_earth_ml integer,
    galaxy_type integer
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
    name character varying(50) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    shape numeric,
    distance_from_earth integer,
    moon_type integer,
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
    name character varying(50) NOT NULL,
    description text,
    substain_life boolean NOT NULL,
    shape numeric,
    distance_from_earth integer,
    star_type integer,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    is_active boolean NOT NULL,
    spherical numeric,
    distance_from_earth integer,
    star_type integer,
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
-- Name: comets comets_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets ALTER COLUMN comets_id SET DEFAULT nextval('public.comets_comet_id_seq'::regclass);


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
-- Data for Name: comets; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comets VALUES (1, 'proxima centauri', 35, 'radial velocity');
INSERT INTO public.comets VALUES (2, 'hale-Bopp', 7, 'transit');
INSERT INTO public.comets VALUES (3, 'noewise', 7, 'telescope');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'M87', 'A_giant_ellptical_galaxy_in_the_Virgo_cluster', false, 1, 54, 1);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 'Our_home_galaxy', true, 1, 0, 2);
INSERT INTO public.galaxy VALUES (3, 'NGC 5128', 'Has_an_active_galactic_core', false, 0, 12, 1);
INSERT INTO public.galaxy VALUES (4, 'Andromeda Galaxy', 'Closest_major_galaxy', false, 0, 3, 2);
INSERT INTO public.galaxy VALUES (5, 'Large_Magellanic_cloud', 'Satalite_Galaxy', false, 0, 0, 3);
INSERT INTO public.galaxy VALUES (6, 'NGC 1316', 'Galaxy_of_Fornax_cluster', false, 0, 60, 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 'only_moon _of_earth', false, 1, 38440, 1, 3);
INSERT INTO public.moon VALUES (2, 'Europa', 'coverd in ice', true, 1, 671000000, 2, 4);
INSERT INTO public.moon VALUES (3, 'ganymede', 'largest moon in solar system', true, 1, 1070000000, 2, 4);
INSERT INTO public.moon VALUES (4, 'callisto', '3rd largest moon', false, 1, 1883000000, 2, 4);
INSERT INTO public.moon VALUES (5, 'io', 'volcanically active', false, 2, 421700000, 2, 4);
INSERT INTO public.moon VALUES (6, 'Amalthea', 'small moon', false, 2, 181000000, 3, 4);
INSERT INTO public.moon VALUES (7, 'himalia', 'small moon', false, 2, 11460000, 4, 4);
INSERT INTO public.moon VALUES (8, 'Elara', 'small moon', false, 2, 11741000, 5, 4);
INSERT INTO public.moon VALUES (9, 'Metis', 'innermost moons', false, 2, 128000, 6, 4);
INSERT INTO public.moon VALUES (10, 'Thebe', 'small moon', false, 2, 221900, 7, 4);
INSERT INTO public.moon VALUES (11, 'mimas', 'small moon with huge crater', false, 1, 185520, 1, NULL);
INSERT INTO public.moon VALUES (12, 'enceladus', 'oceans and active geysers', true, 1, 238020, 1, NULL);
INSERT INTO public.moon VALUES (13, 'tethys', 'large vally system', false, 1, 294619, 1, NULL);
INSERT INTO public.moon VALUES (14, 'dione', 'bright ice cliffs', true, 1, 377396, 1, NULL);
INSERT INTO public.moon VALUES (15, 'rhea', 'heavily craterd', false, 1, 527108, 1, NULL);
INSERT INTO public.moon VALUES (16, 'titan', 'thick atmosphere', false, 1, 1275000, 1, NULL);
INSERT INTO public.moon VALUES (17, 'hyperion', 'Chaotic rotation', false, 2, 1481009, 8, 1);
INSERT INTO public.moon VALUES (18, 'lapetus', 'strange two toned appearance', false, 1, 3561300, 1, NULL);
INSERT INTO public.moon VALUES (19, 'phoebe', 'retrograde orbit', false, 2, 12952000, 8, NULL);
INSERT INTO public.moon VALUES (20, 'janus', 'co orbital orbit', false, 2, 1514222, 9, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'M87-IV', 'gas_giant_planet_orbiting_the_star', false, 1, 54, 1, 1);
INSERT INTO public.planet VALUES (2, 'M87-VI', 'a rocky planet in the orbit around the star', false, 1, 54, 2, 1);
INSERT INTO public.planet VALUES (3, 'earth', 'planet_of_life', true, 1, 0, 2, 2);
INSERT INTO public.planet VALUES (4, 'jupiter', 'gas_giant', false, 1, 0, 2, 2);
INSERT INTO public.planet VALUES (5, 'Porxima_Centuria', 'Exoplanet', true, 1, 0, 2, 2);
INSERT INTO public.planet VALUES (6, 'Centaurus A-b', 'an exoplanet', false, 1, 12, 2, 3);
INSERT INTO public.planet VALUES (7, 'Centaurus A-c', 'an exoplanet', false, 1, 12, 1, 3);
INSERT INTO public.planet VALUES (8, 'M31-II', 'a_gas_giant', false, 1, 3, 1, 4);
INSERT INTO public.planet VALUES (9, 'M31-III', 'rocky planet', false, 1, 3, 2, 4);
INSERT INTO public.planet VALUES (10, 'LMCC-01', 'thin atmosphere', false, 2, 0, 2, 5);
INSERT INTO public.planet VALUES (11, 'LMCC-02', 'has multiple moons', false, 3, 0, 1, 5);
INSERT INTO public.planet VALUES (12, 'MGC 1316-b', 'gas_giant_with_faint_ring', false, 3, 60, 1, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'M87-UCD1', 'super_massive_black_hole', false, 1, 53, 1, 1);
INSERT INTO public.star VALUES (2, 'sol(sun)', 'Center_of_milky_way', true, 1, 0, 2, 2);
INSERT INTO public.star VALUES (3, 'Centaurus_A', 'Nearby_galaxy_containing_a_supermassive_black_holr_and_active_galactic_nucleous', true, 0, 12, 3, 3);
INSERT INTO public.star VALUES (4, 'M31 RV', 'Red_variable_star', false, 0, 3, 4, 4);
INSERT INTO public.star VALUES (5, 'SN 1987A', 'super_nova_that occured_in_the_lmc in 1987', false, 0, 2, 5, 5);
INSERT INTO public.star VALUES (6, 'R136a1', 'Massive and luminous star', true, 0, 2, 6, 5);


--
-- Name: comets_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comets_comet_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: comets comets_discovery_methord_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets
    ADD CONSTRAINT comets_discovery_methord_key UNIQUE (discovery_methord);


--
-- Name: comets comets_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets
    ADD CONSTRAINT comets_name_key UNIQUE (name);


--
-- Name: comets comets_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets
    ADD CONSTRAINT comets_pkey PRIMARY KEY (comets_id);


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

