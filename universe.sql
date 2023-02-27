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
    name character varying,
    description text,
    age_in_billions_of_years numeric(8,2) DEFAULT 0 NOT NULL,
    galaxy_type text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: has_life; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.has_life (
    name character varying(25) NOT NULL,
    has_life_id integer NOT NULL,
    third_column integer
);


ALTER TABLE public.has_life OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying,
    planet_id integer NOT NULL,
    distance_from_earth_in_km integer DEFAULT 0 NOT NULL,
    description text,
    visited_by_humans boolean DEFAULT false
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying,
    star_id integer NOT NULL,
    distance_from_earth_in_km integer DEFAULT 0 NOT NULL,
    description text,
    visited_by_humans boolean DEFAULT false
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying,
    galaxy_id integer NOT NULL,
    distance_from_earth_in_light_years integer DEFAULT 0,
    description text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'The Milky WAY', 'The galaxy Where we live', 13.61, 'Spiral');
INSERT INTO public.galaxy VALUES (3, 'Messier 87', 'Also known as Virgo A. It is a supergiant elliptical galaxy with several trillion stars in constellation', 13.24, 'Elliptical');
INSERT INTO public.galaxy VALUES (2, 'Black Eye Galaxy', 'Discovered in 1779', 13.28, 'Spiral');
INSERT INTO public.galaxy VALUES (4, 'Whielpool Galaxy', 'One of the brightest galaxies in our night sky, visable with simple binoculars', 0.40, 'Spiral');
INSERT INTO public.galaxy VALUES (5, 'Pinwheel Galaxy', 'is located in the constellation Ursa Major.', 0.02, 'face-on spiral');
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', 'equivalent to 800 billion suns. Locataed in sothern edge of the rich Virgo clusters', 13.25, 'Unknown');


--
-- Data for Name: has_life; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.has_life VALUES ('Earth', 1, NULL);
INSERT INTO public.has_life VALUES ('jupiter', 2, NULL);
INSERT INTO public.has_life VALUES ('mwercury', 3, NULL);
INSERT INTO public.has_life VALUES ('Olle', 8, 22);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The moon', 1, 384, NULL, false);
INSERT INTO public.moon VALUES (2, 'Europa', 5, 628300000, 'orbits around the planet jupiter', false);
INSERT INTO public.moon VALUES (3, 'Phobos', 2, 77790000, 'part of one of the bigger and many moons of Mars', false);
INSERT INTO public.moon VALUES (4, 'fourth-moon', 5, 3231, 'unknown', true);
INSERT INTO public.moon VALUES (5, 'fifth-moon', 5, 2231, 'unknown', true);
INSERT INTO public.moon VALUES (6, 'sixth-moon', 8, 4213, 'unknown', false);
INSERT INTO public.moon VALUES (7, 'seventh-moon', 5, 2231, 'unknown', true);
INSERT INTO public.moon VALUES (8, 'eigth-moon', 1, 42223, 'unknown', false);
INSERT INTO public.moon VALUES (9, 'nineth-moon', 3, 11111, 'unknown', false);
INSERT INTO public.moon VALUES (10, 'tenth-moon', 5, 2231, 'unknown', true);
INSERT INTO public.moon VALUES (11, 'eleventh-moon', 1, 423323, 'unknown', false);
INSERT INTO public.moon VALUES (12, '12th-moon', 3, 1176111, 'unknown', false);
INSERT INTO public.moon VALUES (13, 'thirteenth-moon', 2, 2234231, 'unknown', true);
INSERT INTO public.moon VALUES (14, 'fourteenth-moon', 9, 423323, 'unknown', false);
INSERT INTO public.moon VALUES (15, '15th-moon', 3, 1176111, 'unknown', false);
INSERT INTO public.moon VALUES (16, 'sixteenth-moon', 5, 2231, 'unknown', true);
INSERT INTO public.moon VALUES (17, 'seventeenth-moon', 1, 423323, 'unknown', false);
INSERT INTO public.moon VALUES (18, '18th-moon', 3, 1176111, 'unknown', false);
INSERT INTO public.moon VALUES (19, 'nineteenth-moon', 2, 223111, 'unknown', true);
INSERT INTO public.moon VALUES (20, '20th-moon', 1, 423323, 'unknown', false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 2, 0, 'Our planet', false);
INSERT INTO public.planet VALUES (2, 'Mars', 2, 107000, 'the fourth planet from the sun and the second-smallest planet in our solar system', false);
INSERT INTO public.planet VALUES (3, 'Venus', 2, 460200000, 'second planet in our solar system, almost as big as planet earth', false);
INSERT INTO public.planet VALUES (4, 'Mercury', 2, 77000000, 'smallest planet in our solar system', false);
INSERT INTO public.planet VALUES (5, 'Jupiter', 3, 77800000, 'by far the biggest planet in our solar system', false);
INSERT INTO public.planet VALUES (6, 'Saturn', 4, 74600000, 'discovered by Galileo Galilei in 1610', false);
INSERT INTO public.planet VALUES (7, 'Uranus', 2, 77400000, 'about the same size as Neptune', false);
INSERT INTO public.planet VALUES (8, 'eighth-planet', 2, 24213214, 'unknown', false);
INSERT INTO public.planet VALUES (9, 'nineth-planet', 2, 2423214, 'unknown', false);
INSERT INTO public.planet VALUES (10, 'tenth-planet', 2, 24232, 'unknown', false);
INSERT INTO public.planet VALUES (11, 'eleventh-planet', 2, 32111, 'unknown', false);
INSERT INTO public.planet VALUES (12, 'twelth-planet', 2, 111111, 'unknown', false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Bernards Star', 1, 6, 'a red dwarf of the dim spectrum type M4, its to faint to see without a telescope. considered older than the sun.');
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 1, 4, 'Small, low mass, its latin means "nearest star", it was descovered in 1915.');
INSERT INTO public.star VALUES (3, 'Sirius', 1, 9, 'The brightest star in the night sky, its name is derived fromm greek meaning "glowing".');
INSERT INTO public.star VALUES (4, 'Antares', 1, 6, 'Brightest star in the constellation of Scorpius.');
INSERT INTO public.star VALUES (5, 'Canopus', 1, 309, 'brightest star in the southern constellation of Carina and the second brightest in the night sky');
INSERT INTO public.star VALUES (6, 'Vega', 1, 25, 'Vega is the brightest star in the northern constellation of Lyra.');


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
-- Name: has_life has_life_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.has_life
    ADD CONSTRAINT has_life_pkey PRIMARY KEY (has_life_id);


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
-- Name: has_life name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.has_life
    ADD CONSTRAINT name UNIQUE (name);


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

