--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)

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

DROP DATABASE periodic_table;
--
-- Name: periodic_table; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE periodic_table WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE periodic_table OWNER TO postgres;

\connect periodic_table

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
-- Name: elements; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.elements (
    atomic_number integer NOT NULL,
    symbol character varying(2) NOT NULL,
    name character varying(40) NOT NULL
);


ALTER TABLE public.elements OWNER TO freecodecamp;

--
-- Name: properties; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.properties (
    atomic_number integer NOT NULL,
    atomic_mass numeric NOT NULL,
    melting_point_celsius numeric NOT NULL,
    boiling_point_celsius numeric NOT NULL,
    type_id integer NOT NULL
);


ALTER TABLE public.properties OWNER TO freecodecamp;

--
-- Name: types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.types (
    type_id integer NOT NULL,
    type character varying(20) NOT NULL
);


ALTER TABLE public.types OWNER TO freecodecamp;

--
-- Name: types_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.types_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.types_type_id_seq OWNER TO freecodecamp;

--
-- Name: types_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.types_type_id_seq OWNED BY public.types.type_id;


--
-- Name: types type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.types ALTER COLUMN type_id SET DEFAULT nextval('public.types_type_id_seq'::regclass);


--
-- Data for Name: elements; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.elements VALUES (1, 'H', 'Hydrogen');
INSERT INTO public.elements VALUES (2, 'He', 'Helium');
INSERT INTO public.elements VALUES (3, 'Li', 'Lithium');
INSERT INTO public.elements VALUES (4, 'Be', 'Beryllium');
INSERT INTO public.elements VALUES (5, 'B', 'Boron');
INSERT INTO public.elements VALUES (6, 'C', 'Carbon');
INSERT INTO public.elements VALUES (7, 'N', 'Nitrogen');
INSERT INTO public.elements VALUES (8, 'O', 'Oxygen');
INSERT INTO public.elements VALUES (9, 'F', 'Fluorine');
INSERT INTO public.elements VALUES (10, 'Ne', 'Neon');
INSERT INTO public.elements VALUES (143, 'Ra', 'Raghad');
INSERT INTO public.elements VALUES (11, 'Na', 'Sodium');
INSERT INTO public.elements VALUES (12, 'Mg', 'Magnesium');
INSERT INTO public.elements VALUES (13, 'Al', 'Aluminum');
INSERT INTO public.elements VALUES (14, 'Si', 'Silicon');
INSERT INTO public.elements VALUES (15, 'P', 'Phosphorus');
INSERT INTO public.elements VALUES (16, 'S', 'Sulfur');
INSERT INTO public.elements VALUES (17, 'Cl', 'Chlorine');
INSERT INTO public.elements VALUES (18, 'Ar', 'Argon');
INSERT INTO public.elements VALUES (19, 'K', 'Potassium');
INSERT INTO public.elements VALUES (20, 'Ca', 'Calcium');
INSERT INTO public.elements VALUES (21, 'Sc', 'Scandium');
INSERT INTO public.elements VALUES (22, 'Ti', 'Titanium');
INSERT INTO public.elements VALUES (23, 'V', 'Vanadium');
INSERT INTO public.elements VALUES (24, 'Cr', 'Chromium');
INSERT INTO public.elements VALUES (25, 'Mn', 'Manganese');
INSERT INTO public.elements VALUES (26, 'Fe', 'Iron');
INSERT INTO public.elements VALUES (27, 'Co', 'Cobalt');
INSERT INTO public.elements VALUES (28, 'Ni', 'Nickel');
INSERT INTO public.elements VALUES (29, 'Cu', 'Copper');
INSERT INTO public.elements VALUES (30, 'Zn', 'Zinc');
INSERT INTO public.elements VALUES (31, 'Ga', 'Gallium');
INSERT INTO public.elements VALUES (32, 'Ge', 'Germanium');
INSERT INTO public.elements VALUES (33, 'As', 'Arsenic');
INSERT INTO public.elements VALUES (34, 'Se', 'Selenium');
INSERT INTO public.elements VALUES (35, 'Br', 'Bromine');
INSERT INTO public.elements VALUES (36, 'Kr', 'Krypton');
INSERT INTO public.elements VALUES (37, 'Rb', 'Rubidium');
INSERT INTO public.elements VALUES (38, 'Sr', 'Strontium');
INSERT INTO public.elements VALUES (39, 'Y', 'Yttrium');
INSERT INTO public.elements VALUES (40, 'Zr', 'Zirconium');
INSERT INTO public.elements VALUES (41, 'Nb', 'Niobium');
INSERT INTO public.elements VALUES (42, 'Mo', 'Molybdenum');
INSERT INTO public.elements VALUES (43, 'Tc', 'Technetium');
INSERT INTO public.elements VALUES (44, 'Ru', 'Ruthenium');
INSERT INTO public.elements VALUES (45, 'Rh', 'Rhodium');
INSERT INTO public.elements VALUES (46, 'Pd', 'Palladium');
INSERT INTO public.elements VALUES (47, 'Ag', 'Silver');
INSERT INTO public.elements VALUES (48, 'Cd', 'Cadmium');
INSERT INTO public.elements VALUES (49, 'In', 'Indium');
INSERT INTO public.elements VALUES (50, 'Sn', 'Tin');
INSERT INTO public.elements VALUES (51, 'Sb', 'Antimony');
INSERT INTO public.elements VALUES (52, 'Te', 'Tellurium');
INSERT INTO public.elements VALUES (53, 'I', 'Iodine');
INSERT INTO public.elements VALUES (54, 'Xe', 'Xenon');
INSERT INTO public.elements VALUES (55, 'Cs', 'Cesium');
INSERT INTO public.elements VALUES (56, 'Ba', 'Barium');
INSERT INTO public.elements VALUES (57, 'La', 'Lanthanum');
INSERT INTO public.elements VALUES (58, 'Ce', 'Cerium');
INSERT INTO public.elements VALUES (59, 'Pr', 'Praseodymium');
INSERT INTO public.elements VALUES (60, 'Nd', 'Neodymium');
INSERT INTO public.elements VALUES (61, 'Pm', 'Promethium');
INSERT INTO public.elements VALUES (62, 'Sm', 'Samarium');
INSERT INTO public.elements VALUES (63, 'Eu', 'Europium');
INSERT INTO public.elements VALUES (64, 'Gd', 'Gadolinium');
INSERT INTO public.elements VALUES (65, 'Tb', 'Terbium');
INSERT INTO public.elements VALUES (66, 'Dy', 'Dysprosium');
INSERT INTO public.elements VALUES (67, 'Ho', 'Holmium');
INSERT INTO public.elements VALUES (68, 'Er', 'Erbium');
INSERT INTO public.elements VALUES (69, 'Tm', 'Thulium');
INSERT INTO public.elements VALUES (70, 'Yb', 'Ytterbium');
INSERT INTO public.elements VALUES (71, 'Lu', 'Lutetium');
INSERT INTO public.elements VALUES (72, 'Hf', 'Hafnium');
INSERT INTO public.elements VALUES (73, 'Ta', 'Tantalum');
INSERT INTO public.elements VALUES (74, 'W', 'Tungsten');
INSERT INTO public.elements VALUES (75, 'Re', 'Rhenium');
INSERT INTO public.elements VALUES (76, 'Os', 'Osmium');
INSERT INTO public.elements VALUES (77, 'Ir', 'Iridium');
INSERT INTO public.elements VALUES (78, 'Pt', 'Platinum');
INSERT INTO public.elements VALUES (79, 'Au', 'Gold');
INSERT INTO public.elements VALUES (80, 'Hg', 'Mercury');
INSERT INTO public.elements VALUES (81, 'Tl', 'Thallium');
INSERT INTO public.elements VALUES (82, 'Pb', 'Lead');
INSERT INTO public.elements VALUES (83, 'Bi', 'Bismuth');
INSERT INTO public.elements VALUES (84, 'Po', 'Polonium');
INSERT INTO public.elements VALUES (85, 'At', 'Astatine');
INSERT INTO public.elements VALUES (86, 'Rn', 'Radon');
INSERT INTO public.elements VALUES (87, 'Fr', 'Francium');
INSERT INTO public.elements VALUES (88, 'Ra', 'Radium');
INSERT INTO public.elements VALUES (89, 'Ac', 'Actinium');
INSERT INTO public.elements VALUES (90, 'Th', 'Thorium');
INSERT INTO public.elements VALUES (91, 'Pa', 'Protactinium');
INSERT INTO public.elements VALUES (92, 'U', 'Uranium');
INSERT INTO public.elements VALUES (93, 'Np', 'Neptunium');
INSERT INTO public.elements VALUES (94, 'Pu', 'Plutonium');
INSERT INTO public.elements VALUES (95, 'Am', 'Americium');
INSERT INTO public.elements VALUES (96, 'Cm', 'Curium');
INSERT INTO public.elements VALUES (97, 'Bk', 'Berkelium');
INSERT INTO public.elements VALUES (98, 'Cf', 'Californium');
INSERT INTO public.elements VALUES (99, 'Es', 'Einsteinium');
INSERT INTO public.elements VALUES (100, 'Fm', 'Fermium');
INSERT INTO public.elements VALUES (101, 'Md', 'Mendelevium');
INSERT INTO public.elements VALUES (102, 'No', 'Nobelium');
INSERT INTO public.elements VALUES (103, 'Lr', 'Lawrencium');
INSERT INTO public.elements VALUES (104, 'Rf', 'Rutherfordium');
INSERT INTO public.elements VALUES (105, 'Db', 'Dubnium');
INSERT INTO public.elements VALUES (106, 'Sg', 'Seaborgium');
INSERT INTO public.elements VALUES (107, 'Bh', 'Bohrium');
INSERT INTO public.elements VALUES (108, 'Hs', 'Hassium');
INSERT INTO public.elements VALUES (109, 'Mt', 'Meitnerium');
INSERT INTO public.elements VALUES (110, 'Ds', 'Darmstadtium');
INSERT INTO public.elements VALUES (111, 'Rg', 'Roentgenium');
INSERT INTO public.elements VALUES (112, 'Cn', 'Copernicium');
INSERT INTO public.elements VALUES (113, 'Nh', 'Nihonium');
INSERT INTO public.elements VALUES (114, 'Fl', 'Flerovium');
INSERT INTO public.elements VALUES (115, 'Mc', 'Moscovium');
INSERT INTO public.elements VALUES (116, 'Lv', 'Livermorium');
INSERT INTO public.elements VALUES (117, 'Ts', 'Tennessine');
INSERT INTO public.elements VALUES (118, 'Og', 'Oganesson');


--
-- Data for Name: properties; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.properties VALUES (5, 10.81, 2075, 4000, 2);
INSERT INTO public.properties VALUES (3, 6.94, 180.54, 1342, 3);
INSERT INTO public.properties VALUES (4, 9.0122, 1287, 2470, 3);
INSERT INTO public.properties VALUES (1, 1.008, -259.1, -252.9, 1);
INSERT INTO public.properties VALUES (2, 4.0026, -272.2, -269, 1);
INSERT INTO public.properties VALUES (6, 12.011, 3550, 4027, 1);
INSERT INTO public.properties VALUES (7, 14.007, -210.1, -195.8, 1);
INSERT INTO public.properties VALUES (8, 15.999, -218, -183, 1);
INSERT INTO public.properties VALUES (9, 18.998, -220, -188.1, 1);
INSERT INTO public.properties VALUES (10, 20.18, -248.6, -246.1, 1);
INSERT INTO public.properties VALUES (11, 22.99, 97.72, 882.9, 3);
INSERT INTO public.properties VALUES (12, 24.305, 650, 1413, 3);
INSERT INTO public.properties VALUES (13, 26.981, 660.37, 2519, 3);
INSERT INTO public.properties VALUES (14, 28.085, 1414, 3265, 2);
INSERT INTO public.properties VALUES (15, 30.974, 44.15, 280, 1);
INSERT INTO public.properties VALUES (16, 32.06, 115.21, 444.67, 1);
INSERT INTO public.properties VALUES (17, 35.45, -100.98, -34.04, 1);
INSERT INTO public.properties VALUES (18, 39.948, -189.36, -185.85, 2);
INSERT INTO public.properties VALUES (19, 39.098, 63.65, 774, 3);
INSERT INTO public.properties VALUES (20, 40.078, 839, 1484, 3);
INSERT INTO public.properties VALUES (21, 44.956, 1814, 3106, 3);
INSERT INTO public.properties VALUES (22, 47.867, 1668, 3287, 3);
INSERT INTO public.properties VALUES (23, 50.942, 2180, 4071, 3);
INSERT INTO public.properties VALUES (24, 51.996, 2180, 2672, 3);
INSERT INTO public.properties VALUES (25, 54.938, 1890, 4742, 3);
INSERT INTO public.properties VALUES (26, 55.845, 1538, 2861, 3);
INSERT INTO public.properties VALUES (27, 58.933, 1495, 2927, 3);
INSERT INTO public.properties VALUES (28, 58.693, 1453, 3236, 3);
INSERT INTO public.properties VALUES (29, 63.546, 1084, 2562, 3);
INSERT INTO public.properties VALUES (30, 65.38, 419.53, 907, 3);
INSERT INTO public.properties VALUES (31, 69.723, 29.78, 2403, 3);
INSERT INTO public.properties VALUES (32, 72.63, 938.25, 2830, 2);
INSERT INTO public.properties VALUES (33, 74.922, 817, 614, 2);
INSERT INTO public.properties VALUES (34, 78.971, 221, 685, 1);
INSERT INTO public.properties VALUES (35, 79.904, -34.04, -101.5, 1);
INSERT INTO public.properties VALUES (36, 83.798, -111.76, -108, 2);
INSERT INTO public.properties VALUES (37, 85.468, 38.89, 688, 3);
INSERT INTO public.properties VALUES (38, 87.62, 769, 1384, 3);
INSERT INTO public.properties VALUES (39, 88.906, 920, 1469, 3);
INSERT INTO public.properties VALUES (40, 91.224, 1852, 4377, 3);
INSERT INTO public.properties VALUES (41, 92.906, 2468, 4920, 3);
INSERT INTO public.properties VALUES (42, 95.95, 2800, 5610, 3);
INSERT INTO public.properties VALUES (43, 98, -232, 4880, 3);
INSERT INTO public.properties VALUES (44, 101.07, 2360, 4150, 3);
INSERT INTO public.properties VALUES (45, 102.91, 1960, 3990, 3);
INSERT INTO public.properties VALUES (46, 106.42, 2310, 3970, 3);
INSERT INTO public.properties VALUES (47, 107.87, 961.78, 2510, 3);
INSERT INTO public.properties VALUES (48, 112.41, 321, 767, 3);
INSERT INTO public.properties VALUES (49, 114.82, 156.6, 2072, 3);
INSERT INTO public.properties VALUES (50, 118.71, 231.93, 2602, 3);
INSERT INTO public.properties VALUES (51, 121.76, 630.63, 1587, 3);
INSERT INTO public.properties VALUES (52, 127.6, 217, 685, 2);
INSERT INTO public.properties VALUES (53, 126.9, 113.7, 184, 1);
INSERT INTO public.properties VALUES (54, 131.29, -189.36, -185.85, 2);
INSERT INTO public.properties VALUES (55, 132.91, 28.44, 678.4, 3);
INSERT INTO public.properties VALUES (56, 137.33, 727, 1870, 3);
INSERT INTO public.properties VALUES (57, 138.91, 920, 3457, 3);
INSERT INTO public.properties VALUES (58, 140.12, 1413, 3257, 3);
INSERT INTO public.properties VALUES (59, 140.91, 1204, 3793, 3);
INSERT INTO public.properties VALUES (60, 144.24, 1297, 3347, 3);
INSERT INTO public.properties VALUES (61, 145, -76, 3100, 3);
INSERT INTO public.properties VALUES (62, 150.36, 1072, 1790, 3);
INSERT INTO public.properties VALUES (63, 151.96, 822, 1597, 3);
INSERT INTO public.properties VALUES (64, 157.25, 1311, 3230, 3);
INSERT INTO public.properties VALUES (65, 158.93, 1361, 3041, 3);
INSERT INTO public.properties VALUES (66, 162.5, 1412, 2562, 3);
INSERT INTO public.properties VALUES (67, 164.93, 1474, 2700, 3);
INSERT INTO public.properties VALUES (68, 167.26, 1497, 2868, 3);
INSERT INTO public.properties VALUES (69, 168.93, 1545, 1947, 3);
INSERT INTO public.properties VALUES (70, 173.04, 1629, 1312, 3);
INSERT INTO public.properties VALUES (71, 174.97, 1663, 3313, 3);
INSERT INTO public.properties VALUES (72, 178.49, 2233, 4603, 3);
INSERT INTO public.properties VALUES (73, 180.95, 3017, 5458, 3);
INSERT INTO public.properties VALUES (74, 183.84, 3426, 5555, 3);
INSERT INTO public.properties VALUES (75, 186.21, 3459, 5860, 3);
INSERT INTO public.properties VALUES (76, 190.23, 3306, 5285, 3);
INSERT INTO public.properties VALUES (77, 192.22, 2719, 4701, 3);
INSERT INTO public.properties VALUES (78, 195.08, 2041, 4098, 3);
INSERT INTO public.properties VALUES (79, 196.97, 1337.33, 3129, 3);
INSERT INTO public.properties VALUES (80, 200.59, -38.83, 356.73, 3);
INSERT INTO public.properties VALUES (81, 204.38, 303.15, 1457, 3);
INSERT INTO public.properties VALUES (82, 207.2, 327.46, 1740, 3);
INSERT INTO public.properties VALUES (83, 208.98, 271.5, 1564, 3);
INSERT INTO public.properties VALUES (84, 208.98, 254, 961, 3);
INSERT INTO public.properties VALUES (85, 209.99, 302, 337, 2);
INSERT INTO public.properties VALUES (86, 222, -71, -62, 2);
INSERT INTO public.properties VALUES (87, 223, 27, 1413, 3);
INSERT INTO public.properties VALUES (88, 226.03, 700, 1413, 3);
INSERT INTO public.properties VALUES (89, 227, 1050, 3200, 3);
INSERT INTO public.properties VALUES (90, 232.04, 1750, 5060, 3);
INSERT INTO public.properties VALUES (91, 231.04, 1568, 4030, 3);
INSERT INTO public.properties VALUES (92, 238.03, 1132, 4131, 3);
INSERT INTO public.properties VALUES (93, 237, 640, 3900, 3);
INSERT INTO public.properties VALUES (94, 244, 641, 3230, 3);
INSERT INTO public.properties VALUES (95, 243, 994, 2617, 3);
INSERT INTO public.properties VALUES (96, 247, 1340, 3110, 3);
INSERT INTO public.properties VALUES (97, 247, 1051, 3567, 3);
INSERT INTO public.properties VALUES (98, 251, 900, 3500, 3);
INSERT INTO public.properties VALUES (99, 252, 860, 3300, 3);
INSERT INTO public.properties VALUES (100, 257, 1050, 4600, 3);
INSERT INTO public.properties VALUES (101, 258, 1100, 4600, 3);
INSERT INTO public.properties VALUES (102, 259, 1100, 4600, 3);
INSERT INTO public.properties VALUES (103, 262, 1100, 4600, 3);
INSERT INTO public.properties VALUES (104, 267, 1100, 4600, 3);
INSERT INTO public.properties VALUES (105, 270, 1100, 4600, 3);
INSERT INTO public.properties VALUES (106, 271, 1100, 4600, 3);
INSERT INTO public.properties VALUES (107, 270, 1100, 4600, 3);
INSERT INTO public.properties VALUES (108, 270, 1100, 4600, 3);
INSERT INTO public.properties VALUES (109, 276, 1100, 4600, 3);
INSERT INTO public.properties VALUES (110, 281, 1100, 4600, 3);
INSERT INTO public.properties VALUES (111, 280, 1100, 4600, 3);
INSERT INTO public.properties VALUES (112, 285, 1100, 4600, 3);
INSERT INTO public.properties VALUES (113, 284, 1100, 4600, 3);
INSERT INTO public.properties VALUES (114, 289, 1100, 4600, 3);
INSERT INTO public.properties VALUES (115, 288, 1100, 4600, 3);
INSERT INTO public.properties VALUES (116, 293, 1100, 4600, 3);
INSERT INTO public.properties VALUES (117, 294, 1100, 4600, 3);
INSERT INTO public.properties VALUES (118, 294, 1100, 4600, 3);
INSERT INTO public.properties VALUES (143, 13.10, 811, 2004, 3);


--
-- Data for Name: types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.types VALUES (1, 'nonmetal');
INSERT INTO public.types VALUES (2, 'metalloid');
INSERT INTO public.types VALUES (3, 'metal');


--
-- Name: types_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.types_type_id_seq', 3, true);


--
-- Name: elements elements_atomic_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.elements
    ADD CONSTRAINT elements_atomic_number_key UNIQUE (atomic_number);


--
-- Name: elements elements_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.elements
    ADD CONSTRAINT elements_pkey PRIMARY KEY (atomic_number);


--
-- Name: properties properties_atomic_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_key UNIQUE (atomic_number);


--
-- Name: properties properties_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_pkey PRIMARY KEY (atomic_number);


--
-- Name: types types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_pkey PRIMARY KEY (type_id);


--
-- Name: elements unique_symbol_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.elements
    ADD CONSTRAINT unique_symbol_name UNIQUE (symbol, name);


--
-- Name: properties fk_atomic_number; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT fk_atomic_number FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- PostgreSQL database dump complete
--

