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
-- Name: description; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.description (
    description_id integer NOT NULL,
    description text,
    galaxy_id integer NOT NULL,
    name character varying(30)
);


ALTER TABLE public.description OWNER TO freecodecamp;

--
-- Name: description_description_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.description_description_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.description_description_id_seq OWNER TO freecodecamp;

--
-- Name: description_description_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.description_description_id_seq OWNED BY public.description.description_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50),
    age_in_millions_years numeric(16,8),
    distnace_from_earth numeric(8,6),
    activo integer,
    act2 integer DEFAULT 1 NOT NULL,
    act1 integer DEFAULT 1 NOT NULL
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
    name character varying(50),
    planet_id integer NOT NULL,
    has_life integer NOT NULL,
    moon_sizekm numeric(16,2),
    activo boolean,
    act2 integer DEFAULT 1 NOT NULL,
    act1 integer DEFAULT 1 NOT NULL
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
    name character varying(50),
    has_life integer NOT NULL,
    planet_sizekm numeric(16,2),
    star_id integer NOT NULL,
    description text,
    activo boolean,
    act2 integer DEFAULT 1 NOT NULL,
    act1 integer DEFAULT 1 NOT NULL
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
    name character varying(50),
    star_type integer NOT NULL,
    star_sizekm numeric(20,1),
    galaxy_id integer NOT NULL,
    activo boolean,
    act2 integer DEFAULT 1 NOT NULL,
    act1 integer DEFAULT 1 NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_start_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_start_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_start_id_seq OWNER TO freecodecamp;

--
-- Name: star_start_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_start_id_seq OWNED BY public.star.star_id;


--
-- Name: description description_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description ALTER COLUMN description_id SET DEFAULT nextval('public.description_description_id_seq'::regclass);


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

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_start_id_seq'::regclass);


--
-- Data for Name: description; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.description VALUES (1, 'ejemplo desc', 1, NULL);
INSERT INTO public.description VALUES (4, 'ejemplo desc', 2, NULL);
INSERT INTO public.description VALUES (5, 'ejemplo desc', 3, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 100000.00000000, 0.223000, NULL, 1, 1);
INSERT INTO public.galaxy VALUES (2, 'Orion', 100000.00000000, 0.223000, NULL, 1, 1);
INSERT INTO public.galaxy VALUES (3, 'Milky way', 100000.00000000, 0.223000, NULL, 1, 1);
INSERT INTO public.galaxy VALUES (4, 'SAFIRO', 100000.00000000, 0.223000, NULL, 1, 1);
INSERT INTO public.galaxy VALUES (5, 'ALOCANDRIA', 100000.00000000, 0.223000, NULL, 1, 1);
INSERT INTO public.galaxy VALUES (6, 'ALOCANDRIA2', 100000.00000000, 0.223000, NULL, 1, 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'luna', 2, 0, 23.00, NULL, 1, 1);
INSERT INTO public.moon VALUES (3, 'Ganimedes', 3, 0, 23.00, NULL, 1, 1);
INSERT INTO public.moon VALUES (4, 'karpego', 4, 0, 23.00, NULL, 1, 1);
INSERT INTO public.moon VALUES (7, 'Ganimedes', 3, 0, 23.00, NULL, 1, 1);
INSERT INTO public.moon VALUES (8, 'Ganimedes', 3, 0, 23.00, NULL, 1, 1);
INSERT INTO public.moon VALUES (9, 'Ganimedes', 3, 0, 23.00, NULL, 1, 1);
INSERT INTO public.moon VALUES (10, 'Ganimedes', 3, 0, 23.00, NULL, 1, 1);
INSERT INTO public.moon VALUES (11, 'Ganimedes', 3, 0, 23.00, NULL, 1, 1);
INSERT INTO public.moon VALUES (12, 'Ganimedes', 3, 0, 23.00, NULL, 1, 1);
INSERT INTO public.moon VALUES (13, 'Ganimedes', 3, 0, 23.00, NULL, 1, 1);
INSERT INTO public.moon VALUES (14, 'Ganimedes', 3, 0, 23.00, NULL, 1, 1);
INSERT INTO public.moon VALUES (15, 'Ganimedes', 3, 0, 23.00, NULL, 1, 1);
INSERT INTO public.moon VALUES (16, 'Ganimedes', 3, 0, 23.00, NULL, 1, 1);
INSERT INTO public.moon VALUES (17, 'Ganimedes', 3, 0, 23.00, NULL, 1, 1);
INSERT INTO public.moon VALUES (18, 'Ganimedes', 3, 0, 23.00, NULL, 1, 1);
INSERT INTO public.moon VALUES (19, 'Ganimedes', 3, 0, 23.00, NULL, 1, 1);
INSERT INTO public.moon VALUES (20, 'Ganimedes', 3, 0, 23.00, NULL, 1, 1);
INSERT INTO public.moon VALUES (21, 'Ganimedes', 3, 0, 23.00, NULL, 1, 1);
INSERT INTO public.moon VALUES (22, 'Ganimedes', 3, 0, 23.00, NULL, 1, 1);
INSERT INTO public.moon VALUES (23, 'Ganimedes', 3, 0, 23.00, NULL, 1, 1);
INSERT INTO public.moon VALUES (24, 'Ganimedes', 3, 0, 23.00, NULL, 1, 1);
INSERT INTO public.moon VALUES (25, 'Ganimedes', 3, 0, 23.00, NULL, 1, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Tierra', 1, 20.00, 1, NULL, NULL, 1, 1);
INSERT INTO public.planet VALUES (3, 'Marte', 1, 20.00, 1, NULL, NULL, 1, 1);
INSERT INTO public.planet VALUES (4, 'Jupither', 1, 20.00, 1, NULL, NULL, 1, 1);
INSERT INTO public.planet VALUES (5, 'Jupither1', 1, 20.00, 1, NULL, NULL, 1, 1);
INSERT INTO public.planet VALUES (6, 'Jupither1', 1, 20.00, 1, NULL, NULL, 1, 1);
INSERT INTO public.planet VALUES (7, 'Jupither1', 1, 20.00, 1, NULL, NULL, 1, 1);
INSERT INTO public.planet VALUES (8, 'Jupither1', 1, 20.00, 1, NULL, NULL, 1, 1);
INSERT INTO public.planet VALUES (9, 'Jupither1', 1, 20.00, 1, NULL, NULL, 1, 1);
INSERT INTO public.planet VALUES (10, 'Jupither1', 1, 20.00, 1, NULL, NULL, 1, 1);
INSERT INTO public.planet VALUES (11, 'Jupither1', 1, 20.00, 1, NULL, NULL, 1, 1);
INSERT INTO public.planet VALUES (12, 'Jupither1', 1, 20.00, 1, NULL, NULL, 1, 1);
INSERT INTO public.planet VALUES (13, 'Jupither1', 1, 20.00, 1, NULL, NULL, 1, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 1, 1222.0, 1, NULL, 1, 1);
INSERT INTO public.star VALUES (2, 'Migonthes', 1, 1222.0, 1, NULL, 1, 1);
INSERT INTO public.star VALUES (3, 'Alpheres', 1, 1222.0, 1, NULL, 1, 1);
INSERT INTO public.star VALUES (4, 'pancracios', 1, 1222.0, 1, NULL, 1, 1);
INSERT INTO public.star VALUES (5, 'PROMETEO', 1, 1222.0, 1, NULL, 1, 1);
INSERT INTO public.star VALUES (6, 'PROMETEO2', 1, 1222.0, 1, NULL, 1, 1);


--
-- Name: description_description_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.description_description_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_start_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_start_id_seq', 6, true);


--
-- Name: description description_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_id PRIMARY KEY (description_id);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id PRIMARY KEY (galaxy_id);


--
-- Name: galaxy glunico; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT glunico UNIQUE (galaxy_id);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id PRIMARY KEY (moon_id);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id PRIMARY KEY (planet_id);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id PRIMARY KEY (star_id);


--
-- Name: description undescription; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT undescription UNIQUE (description_id);


--
-- Name: moon unmoon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unmoon UNIQUE (moon_id);


--
-- Name: planet unplanet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unplanet UNIQUE (planet_id);


--
-- Name: star unstar; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unstar UNIQUE (star_id);


--
-- Name: moon fkmoonplanet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fkmoonplanet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fkplanetstarid; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fkplanetstarid FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fkstarid; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fkstarid FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

