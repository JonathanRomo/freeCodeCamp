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
-- Name: astronomy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronomy (
    name character varying(10) NOT NULL,
    id integer,
    astronomy_id integer NOT NULL,
    type character varying(10) NOT NULL
);


ALTER TABLE public.astronomy OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    age_in_millions_of_years integer NOT NULL,
    has_life boolean,
    distance_from_earth numeric(6,2),
    description text,
    galaxy_id integer NOT NULL,
    type character varying(10),
    name character varying(10) NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    age_in_millions_of_years integer NOT NULL,
    has_life boolean,
    distance_from_earth numeric(6,2),
    description text,
    moon_id integer NOT NULL,
    type character varying(10),
    name character varying(10) NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    age_in_millions_of_years integer NOT NULL,
    has_life boolean,
    distance_from_earth numeric(6,2),
    description text,
    planet_id integer NOT NULL,
    type character varying(10),
    name character varying(10) NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    age_in_millions_of_years integer NOT NULL,
    has_life boolean,
    distance_from_earth numeric(6,2),
    description text,
    star_id integer NOT NULL,
    type character varying(10),
    name character varying(10) NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: astronomy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronomy VALUES ('Astro_01', 101, 1, 'Type_A');
INSERT INTO public.astronomy VALUES ('Astro_02', 102, 2, 'Type_B');
INSERT INTO public.astronomy VALUES ('Astro_03', 103, 3, 'Type_C');
INSERT INTO public.astronomy VALUES ('Astro_04', 104, 4, 'Type_D');
INSERT INTO public.astronomy VALUES ('Astro_05', 105, 5, 'Type_E');
INSERT INTO public.astronomy VALUES ('Astro_06', 106, 6, 'Type_F');
INSERT INTO public.astronomy VALUES ('Astro_07', 107, 7, 'Type_G');
INSERT INTO public.astronomy VALUES ('Astro_08', 108, 8, 'Type_H');
INSERT INTO public.astronomy VALUES ('Astro_09', 109, 9, 'Type_I');
INSERT INTO public.astronomy VALUES ('Astro_10', 110, 10, 'Type_J');
INSERT INTO public.astronomy VALUES ('Astro_11', 111, 11, 'Type_K');
INSERT INTO public.astronomy VALUES ('Astro_12', 112, 12, 'Type_L');
INSERT INTO public.astronomy VALUES ('Astro_13', 113, 13, 'Type_M');
INSERT INTO public.astronomy VALUES ('Astro_14', 114, 14, 'Type_N');
INSERT INTO public.astronomy VALUES ('Astro_15', 115, 15, 'Type_O');
INSERT INTO public.astronomy VALUES ('Astro_16', 116, 16, 'Type_P');
INSERT INTO public.astronomy VALUES ('Astro_17', 117, 17, 'Type_Q');
INSERT INTO public.astronomy VALUES ('Astro_18', 118, 18, 'Type_R');
INSERT INTO public.astronomy VALUES ('Astro_19', 119, 19, 'Type_S');
INSERT INTO public.astronomy VALUES ('Astro_20', 120, 20, 'Type_T');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1000, true, 100.50, 'Description 01', 1, 'Spiral', 'Galaxy_01');
INSERT INTO public.galaxy VALUES (1050, false, 200.75, 'Description 02', 2, 'Elliptic', 'Galaxy_02');
INSERT INTO public.galaxy VALUES (1100, false, 300.00, 'Description 03', 3, 'Irregular', 'Galaxy_03');
INSERT INTO public.galaxy VALUES (1150, true, 450.25, 'Description 04', 4, 'Spiral', 'Galaxy_04');
INSERT INTO public.galaxy VALUES (1200, false, 500.80, 'Description 05', 5, 'Lenticular', 'Galaxy_05');
INSERT INTO public.galaxy VALUES (1250, false, 620.10, 'Description 06', 6, 'Elliptic', 'Galaxy_06');
INSERT INTO public.galaxy VALUES (1300, true, 715.30, 'Description 07', 7, 'Spiral', 'Galaxy_07');
INSERT INTO public.galaxy VALUES (1350, false, 800.99, 'Description 08', 8, 'Irregular', 'Galaxy_08');
INSERT INTO public.galaxy VALUES (1400, false, 950.45, 'Description 09', 9, 'Lenticular', 'Galaxy_09');
INSERT INTO public.galaxy VALUES (1450, true, 1020.00, 'Description 10', 10, 'Spiral', 'Galaxy_10');
INSERT INTO public.galaxy VALUES (1500, false, 1100.60, 'Description 11', 11, 'Elliptic', 'Galaxy_11');
INSERT INTO public.galaxy VALUES (1550, false, 1250.22, 'Description 12', 12, 'Irregular', 'Galaxy_12');
INSERT INTO public.galaxy VALUES (1600, true, 1300.15, 'Description 13', 13, 'Spiral', 'Galaxy_13');
INSERT INTO public.galaxy VALUES (1650, false, 1420.85, 'Description 14', 14, 'Lenticular', 'Galaxy_14');
INSERT INTO public.galaxy VALUES (1700, false, 1500.40, 'Description 15', 15, 'Elliptic', 'Galaxy_15');
INSERT INTO public.galaxy VALUES (1750, true, 1680.90, 'Description 16', 16, 'Spiral', 'Galaxy_16');
INSERT INTO public.galaxy VALUES (1800, false, 1750.05, 'Description 17', 17, 'Irregular', 'Galaxy_17');
INSERT INTO public.galaxy VALUES (1850, false, 1890.70, 'Description 18', 18, 'Lenticular', 'Galaxy_18');
INSERT INTO public.galaxy VALUES (1900, true, 1999.99, 'Description 19', 19, 'Spiral', 'Galaxy_19');
INSERT INTO public.galaxy VALUES (1950, false, 2050.33, 'Description 20', 20, 'Elliptic', 'Galaxy_20');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (301, false, 0.15, 'Desc Moon 01', 1, 'Rocky', 'Moon_01', 1);
INSERT INTO public.moon VALUES (302, false, 0.25, 'Desc Moon 02', 2, 'Icy', 'Moon_02', 2);
INSERT INTO public.moon VALUES (303, false, 0.35, 'Desc Moon 03', 3, 'Volcanic', 'Moon_03', 3);
INSERT INTO public.moon VALUES (304, false, 0.45, 'Desc Moon 04', 4, 'Rocky', 'Moon_04', 4);
INSERT INTO public.moon VALUES (305, false, 0.55, 'Desc Moon 05', 5, 'Icy', 'Moon_05', 5);
INSERT INTO public.moon VALUES (306, false, 0.65, 'Desc Moon 06', 6, 'Volcanic', 'Moon_06', 6);
INSERT INTO public.moon VALUES (307, false, 0.75, 'Desc Moon 07', 7, 'Rocky', 'Moon_07', 7);
INSERT INTO public.moon VALUES (308, false, 0.85, 'Desc Moon 08', 8, 'Icy', 'Moon_08', 8);
INSERT INTO public.moon VALUES (309, false, 0.95, 'Desc Moon 09', 9, 'Volcanic', 'Moon_09', 9);
INSERT INTO public.moon VALUES (310, false, 1.05, 'Desc Moon 10', 10, 'Rocky', 'Moon_10', 10);
INSERT INTO public.moon VALUES (311, false, 1.15, 'Desc Moon 11', 11, 'Icy', 'Moon_11', 11);
INSERT INTO public.moon VALUES (312, false, 1.25, 'Desc Moon 12', 12, 'Volcanic', 'Moon_12', 12);
INSERT INTO public.moon VALUES (313, false, 1.35, 'Desc Moon 13', 13, 'Rocky', 'Moon_13', 13);
INSERT INTO public.moon VALUES (314, false, 1.45, 'Desc Moon 14', 14, 'Icy', 'Moon_14', 14);
INSERT INTO public.moon VALUES (315, false, 1.55, 'Desc Moon 15', 15, 'Volcanic', 'Moon_15', 15);
INSERT INTO public.moon VALUES (316, false, 1.65, 'Desc Moon 16', 16, 'Rocky', 'Moon_16', 16);
INSERT INTO public.moon VALUES (317, false, 1.75, 'Desc Moon 17', 17, 'Icy', 'Moon_17', 17);
INSERT INTO public.moon VALUES (318, false, 1.85, 'Desc Moon 18', 18, 'Volcanic', 'Moon_18', 18);
INSERT INTO public.moon VALUES (319, false, 1.95, 'Desc Moon 19', 19, 'Rocky', 'Moon_19', 19);
INSERT INTO public.moon VALUES (320, false, 2.05, 'Desc Moon 20', 20, 'Icy', 'Moon_20', 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (201, true, 1.50, 'Desc Planet 01', 1, 'Terrestria', 'Planet_01', 1);
INSERT INTO public.planet VALUES (202, false, 2.75, 'Desc Planet 02', 2, 'Gas Giant', 'Planet_02', 2);
INSERT INTO public.planet VALUES (203, false, 3.00, 'Desc Planet 03', 3, 'Ice Giant', 'Planet_03', 3);
INSERT INTO public.planet VALUES (204, true, 4.25, 'Desc Planet 04', 4, 'Terrestria', 'Planet_04', 4);
INSERT INTO public.planet VALUES (205, false, 5.80, 'Desc Planet 05', 5, 'Dwarf', 'Planet_05', 5);
INSERT INTO public.planet VALUES (206, false, 6.10, 'Desc Planet 06', 6, 'Gas Giant', 'Planet_06', 6);
INSERT INTO public.planet VALUES (207, true, 7.30, 'Desc Planet 07', 7, 'Terrestria', 'Planet_07', 7);
INSERT INTO public.planet VALUES (208, false, 8.99, 'Desc Planet 08', 8, 'Ice Giant', 'Planet_08', 8);
INSERT INTO public.planet VALUES (209, false, 9.45, 'Desc Planet 09', 9, 'Dwarf', 'Planet_09', 9);
INSERT INTO public.planet VALUES (210, true, 10.00, 'Desc Planet 10', 10, 'Terrestria', 'Planet_10', 10);
INSERT INTO public.planet VALUES (211, false, 11.60, 'Desc Planet 11', 11, 'Gas Giant', 'Planet_11', 11);
INSERT INTO public.planet VALUES (212, false, 12.22, 'Desc Planet 12', 12, 'Ice Giant', 'Planet_12', 12);
INSERT INTO public.planet VALUES (213, true, 13.15, 'Desc Planet 13', 13, 'Terrestria', 'Planet_13', 13);
INSERT INTO public.planet VALUES (214, false, 14.85, 'Desc Planet 14', 14, 'Dwarf', 'Planet_14', 14);
INSERT INTO public.planet VALUES (215, false, 15.40, 'Desc Planet 15', 15, 'Gas Giant', 'Planet_15', 15);
INSERT INTO public.planet VALUES (216, true, 16.90, 'Desc Planet 16', 16, 'Terrestria', 'Planet_16', 16);
INSERT INTO public.planet VALUES (217, false, 17.05, 'Desc Planet 17', 17, 'Ice Giant', 'Planet_17', 17);
INSERT INTO public.planet VALUES (218, false, 18.70, 'Desc Planet 18', 18, 'Dwarf', 'Planet_18', 18);
INSERT INTO public.planet VALUES (219, true, 19.99, 'Desc Planet 19', 19, 'Terrestria', 'Planet_19', 19);
INSERT INTO public.planet VALUES (220, false, 20.33, 'Desc Planet 20', 20, 'Gas Giant', 'Planet_20', 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (101, false, 10.50, 'Desc Star 01', 1, 'Yellow', 'Star_01', 1);
INSERT INTO public.star VALUES (102, false, 20.75, 'Desc Star 02', 2, 'Red Giant', 'Star_02', 2);
INSERT INTO public.star VALUES (103, false, 30.00, 'Desc Star 03', 3, 'White Dwar', 'Star_03', 3);
INSERT INTO public.star VALUES (104, false, 40.25, 'Desc Star 04', 4, 'Blue Dwarf', 'Star_04', 4);
INSERT INTO public.star VALUES (105, false, 50.80, 'Desc Star 05', 5, 'Neutron', 'Star_05', 5);
INSERT INTO public.star VALUES (106, false, 60.10, 'Desc Star 06', 6, 'Red Giant', 'Star_06', 6);
INSERT INTO public.star VALUES (107, false, 70.30, 'Desc Star 07', 7, 'Yellow', 'Star_07', 7);
INSERT INTO public.star VALUES (108, false, 80.99, 'Desc Star 08', 8, 'White Dwar', 'Star_08', 8);
INSERT INTO public.star VALUES (109, false, 90.45, 'Desc Star 09', 9, 'Blue Dwarf', 'Star_09', 9);
INSERT INTO public.star VALUES (110, false, 100.00, 'Desc Star 10', 10, 'Neutron', 'Star_10', 10);
INSERT INTO public.star VALUES (111, false, 110.60, 'Desc Star 11', 11, 'Yellow', 'Star_11', 11);
INSERT INTO public.star VALUES (112, false, 120.22, 'Desc Star 12', 12, 'Red Giant', 'Star_12', 12);
INSERT INTO public.star VALUES (113, false, 130.15, 'Desc Star 13', 13, 'White Dwar', 'Star_13', 13);
INSERT INTO public.star VALUES (114, false, 140.85, 'Desc Star 14', 14, 'Blue Dwarf', 'Star_14', 14);
INSERT INTO public.star VALUES (115, false, 150.40, 'Desc Star 15', 15, 'Neutron', 'Star_15', 15);
INSERT INTO public.star VALUES (116, false, 160.90, 'Desc Star 16', 16, 'Yellow', 'Star_16', 16);
INSERT INTO public.star VALUES (117, false, 170.05, 'Desc Star 17', 17, 'Red Giant', 'Star_17', 17);
INSERT INTO public.star VALUES (118, false, 180.70, 'Desc Star 18', 18, 'White Dwar', 'Star_18', 18);
INSERT INTO public.star VALUES (119, false, 190.99, 'Desc Star 19', 19, 'Blue Dwarf', 'Star_19', 19);
INSERT INTO public.star VALUES (120, false, 200.33, 'Desc Star 20', 20, 'Neutron', 'Star_20', 20);


--
-- Name: astronomy astronomy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomy
    ADD CONSTRAINT astronomy_name_key UNIQUE (name);


--
-- Name: astronomy astronomy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomy
    ADD CONSTRAINT astronomy_pkey PRIMARY KEY (astronomy_id);


--
-- Name: galaxy galaxy_age_in_millions_of_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_age_in_millions_of_years_key UNIQUE (age_in_millions_of_years);


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
-- Name: moon moon_age_in_millions_of_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_age_in_millions_of_years_key UNIQUE (age_in_millions_of_years);


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
-- Name: planet planet_age_in_millions_of_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_age_in_millions_of_years_key UNIQUE (age_in_millions_of_years);


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
-- Name: star star_age_in_millions_of_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_age_in_millions_of_years_key UNIQUE (age_in_millions_of_years);


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

