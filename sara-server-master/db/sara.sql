--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2021-05-28 17:05:22

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

--
-- TOC entry 3311 (class 0 OID 39722)
-- Dependencies: 203
-- Data for Name: Domino_Images; Type: TABLE DATA; Schema: domino; Owner: postgres
--

COPY domino."Domino_Images" (id, activity, path, "createdAt", "updatedAt") FROM stdin;
46	1	/animals/conejo_bonito.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
47	1	/animals/conejo_dormido.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
48	1	/animals/conejo_feliz.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
49	1	/animals/conejo_feo.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
50	1	/animals/conejo_flaco.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
51	1	/animals/conejo_gordo.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
52	1	/animals/conejo_grande.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
53	1	/animals/conejo_limpio.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
54	1	/animals/conejo_pequeno.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
55	1	/animals/conejo_sucio.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
56	1	/animals/conejo_triste.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
57	1	/animals/conejo_comiendo.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
58	1	/animals/conejo_corriendo.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
59	1	/animals/conejo_saltando.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
60	1	/animals/conejo_tomando.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
1	1	/animals/burro_bonito.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
2	1	/animals/burro_dormido.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
3	1	/animals/burro_feliz.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
4	1	/animals/burro_feo.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
5	1	/animals/burro_flaco.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
6	1	/animals/burro_gordo.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
7	1	/animals/burro_grande.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
8	1	/animals/burro_limpio.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
9	1	/animals/burro_pequeno.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
10	1	/animals/burro_sucio.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
11	1	/animals/burro_triste.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
12	1	/animals/burro_comiendo.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
13	1	/animals/burro_corriendo.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
14	1	/animals/burro_saltando.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
15	1	/animals/burro_tomando.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
16	1	/animals/caballo_bonito.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
17	1	/animals/caballo_dormido.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
18	1	/animals/caballo_feliz.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
19	1	/animals/caballo_feo.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
20	1	/animals/caballo_flaco.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
21	1	/animals/caballo_gordo.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
22	1	/animals/caballo_grande.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
23	1	/animals/caballo_limpio.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
24	1	/animals/caballo_pequeno.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
25	1	/animals/caballo_sucio.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
26	1	/animals/caballo_triste.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
27	1	/animals/caballo_comiendo.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
28	1	/animals/caballo_corriendo.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
29	1	/animals/caballo_saltando.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
30	1	/animals/caballo_tomando.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
31	1	/animals/cerdo_bonito.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
32	1	/animals/cerdo_dormido.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
33	1	/animals/cerdo_feliz.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
34	1	/animals/cerdo_feo.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
35	1	/animals/cerdo_flaco.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
36	1	/animals/cerdo_gordo.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
37	1	/animals/cerdo_grande.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
38	1	/animals/cerdo_limpio.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
39	1	/animals/cerdo_pequeno.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
40	1	/animals/cerdo_sucio.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
41	1	/animals/cerdo_triste.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
42	1	/animals/cerdo_comiendo.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
43	1	/animals/cerdo_corriendo.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
44	1	/animals/cerdo_saltando.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
45	1	/animals/cerdo_tomando.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
62	1	/animals/gallina_dormida.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
63	1	/animals/gallina_feliz.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
64	1	/animals/gallina_fea.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
65	1	/animals/gallina_flaca.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
66	1	/animals/gallina_gorda.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
67	1	/animals/gallina_grande.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
68	1	/animals/gallina_limpia.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
69	1	/animals/gallina_pequena.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
70	1	/animals/gallina_sucia.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
71	1	/animals/gallina_triste.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
72	1	/animals/gallina_comiendo.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
73	1	/animals/gallina_corriendo.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
74	1	/animals/gallina_saltando.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
75	1	/animals/gallina_tomando.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
76	1	/animals/gato_bonito.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
77	1	/animals/gato_dormido.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
78	1	/animals/gato_feliz.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
79	1	/animals/gato_feo.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
80	1	/animals/gato_flaco.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
81	1	/animals/gato_gordo.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
82	1	/animals/gato_grande.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
83	1	/animals/gato_limpio.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
84	1	/animals/gato_pequeno.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
85	1	/animals/gato_sucio.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
86	1	/animals/gato_triste.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
87	1	/animals/gato_comiendo.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
88	1	/animals/gato_corriendo.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
89	1	/animals/gato_saltando.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
90	1	/animals/gato_tomando.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
91	1	/animals/mariposa_bonita.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
92	1	/animals/mariposa_dormida.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
93	1	/animals/mariposa_feliz.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
94	1	/animals/mariposa_fea.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
95	1	/animals/mariposa_flaca.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
96	1	/animals/mariposa_gorda.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
97	1	/animals/mariposa_grande.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
98	1	/animals/mariposa_limpia.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
99	1	/animals/mariposa_pequena.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
100	1	/animals/mariposa_sucia.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
101	1	/animals/mariposa_triste.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
102	1	/animals/mariposa_comiendo.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
103	1	/animals/mariposa_saltando.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
104	1	/animals/mariposa_tomando.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
105	1	/animals/mariposa_volando.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
106	1	/animals/oveja_bonita.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
107	1	/animals/oveja_dormida.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
108	1	/animals/oveja_feliz.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
109	1	/animals/oveja_fea.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
110	1	/animals/oveja_flaca.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
111	1	/animals/oveja_gorda.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
112	1	/animals/oveja_grande.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
113	1	/animals/oveja_limpia.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
114	1	/animals/oveja_pequena.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
115	1	/animals/oveja_sucia.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
116	1	/animals/oveja_triste.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
117	1	/animals/oveja_comiendo.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
118	1	/animals/oveja_corriendo.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
119	1	/animals/oveja_saltando.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
120	1	/animals/oveja_tomando.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
121	1	/animals/pajaro_bonito.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
122	1	/animals/pajaro_dormido.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
123	1	/animals/pajaro_feliz.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
124	1	/animals/pajaro_feo.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
125	1	/animals/pajaro_flaco.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
126	1	/animals/pajaro_gordo.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
127	1	/animals/pajaro_grande.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
128	1	/animals/pajaro_limpio.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
129	1	/animals/pajaro_pequeno.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
130	1	/animals/pajaro_sucio.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
131	1	/animals/pajaro_triste.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
132	1	/animals/pajaro_comiendo.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
133	1	/animals/pajaro_corriendo.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
134	1	/animals/pajaro_saltando.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
135	1	/animals/pajaro_tomando.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
136	1	/animals/pato_bonito.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
137	1	/animals/pato_dormido.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
138	1	/animals/pato_feliz.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
139	1	/animals/pato_feo.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
140	1	/animals/pato_flaco.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
141	1	/animals/pato_gordo.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
142	1	/animals/pato_grande.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
143	1	/animals/pato_limpio.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
144	1	/animals/pato_pequeno.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
145	1	/animals/pato_sucio.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
146	1	/animals/pato_triste.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
147	1	/animals/pato_comiendo.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
148	1	/animals/pato_corriendo.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
149	1	/animals/pato_nadando.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
150	1	/animals/pato_tomando.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
151	1	/animals/perro_bonito.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
152	1	/animals/perro_dormido.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
153	1	/animals/perro_feliz.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
154	1	/animals/perro_feo.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
155	1	/animals/perro_flaco.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
156	1	/animals/perro_gordo.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
157	1	/animals/perro_grande.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
158	1	/animals/perro_limpio.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
159	1	/animals/perro_pequeno.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
160	1	/animals/perro_sucio.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
161	1	/animals/perro_triste.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
162	1	/animals/perro_comiendo.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
163	1	/animals/perro_corriendo.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
164	1	/animals/perro_saltando.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
165	1	/animals/perro_tomando.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
166	1	/animals/pollo_bonito.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
167	1	/animals/pollo_dormido.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
168	1	/animals/pollo_feliz.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
169	1	/animals/pollo_feo.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
170	1	/animals/pollo_flaco.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
171	1	/animals/pollo_gordo.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
172	1	/animals/pollo_grande.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
173	1	/animals/pollo_limpio.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
174	1	/animals/pollo_pequeno.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
175	1	/animals/pollo_sucio.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
176	1	/animals/pollo_triste.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
177	1	/animals/pollo_comiendo.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
178	1	/animals/pollo_corriendo.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
179	1	/animals/pollo_saltando.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
180	1	/animals/pollo_tomando.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
181	1	/animals/raton_bonito.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
182	1	/animals/raton_dormido.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
183	1	/animals/raton_feliz.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
184	1	/animals/raton_feo.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
185	1	/animals/raton_flaco.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
186	1	/animals/raton_gordo.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
187	1	/animals/raton_grande.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
188	1	/animals/raton_limpio.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
189	1	/animals/raton_pequeno.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
190	1	/animals/raton_sucio.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
191	1	/animals/raton_triste.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
192	1	/animals/raton_comiendo.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
193	1	/animals/raton_corriendo.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
194	1	/animals/raton_saltando.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
195	1	/animals/raton_tomando.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
196	1	/animals/toro_bonito.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
197	1	/animals/toro_dormido.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
198	1	/animals/toro_feliz.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
199	1	/animals/toro_feo.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
200	1	/animals/toro_flaco.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
201	1	/animals/toro_gordo.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
202	1	/animals/toro_grande.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
203	1	/animals/toro_limpio.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
204	1	/animals/toro_pequeno.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
205	1	/animals/toro_sucio.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
206	1	/animals/toro_triste.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
207	1	/animals/toro_comiendo.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
208	1	/animals/toro_corriendo.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
209	1	/animals/toro_saltando.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
210	1	/animals/toro_tomando.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
211	1	/animals/tortuga_bonita.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
212	1	/animals/tortuga_dormida.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
213	1	/animals/tortuga_feliz.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
214	1	/animals/tortuga_fea.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
215	1	/animals/tortuga_flaca.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
216	1	/animals/tortuga_gorda.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
217	1	/animals/tortuga_grande.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
218	1	/animals/tortuga_limpia.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
219	1	/animals/tortuga_pequena.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
220	1	/animals/tortuga_sucia.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
221	1	/animals/tortuga_triste.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
222	1	/animals/tortuga_comiendo.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
223	1	/animals/tortuga_corriendo.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
224	1	/animals/tortuga_nadando.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
225	1	/animals/tortuga_saltando.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
226	1	/animals/tortuga_tomando.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
227	1	/animals/vaca_bonita.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
228	1	/animals/vaca_dormida.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
229	1	/animals/vaca_feliz.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
231	1	/animals/vaca_flaca.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
232	1	/animals/vaca_gorda.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
233	1	/animals/vaca_grande.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
234	1	/animals/vaca_limpia.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
235	1	/animals/vaca_pequena.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
236	1	/animals/vaca_sucia.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
237	1	/animals/vaca_triste.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
238	1	/animals/vaca_comiendo.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
239	1	/animals/vaca_corriendo.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
240	1	/animals/vaca_saltando.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
241	1	/animals/vaca_tomando.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
61	1	/animals/gallina_bonita.png	2020-04-18 00:00:00-05	2020-04-18 00:00:00-05
230	1	/animals/vaca_fea.png	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05
\.


--
-- TOC entry 3312 (class 0 OID 39730)
-- Dependencies: 204
-- Data for Name: Domino_Tags; Type: TABLE DATA; Schema: domino; Owner: postgres
--

COPY domino."Domino_Tags" (id, demand, vocabulary, "createdAt", "updatedAt", id_image) FROM stdin;
46	Yo tengo un caballo bonito. ¿Qué tienes tú?	Bonito	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	16
47	Yo tengo un caballo dormido. ¿Qué tienes tú?	Dormido	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	17
48	Yo tengo un caballo feliz. ¿Qué tienes tú?	Feliz	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	18
49	Yo tengo un caballo feo. ¿Qué tienes tú?	Feo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	19
50	Yo tengo un caballo flaco. ¿Qué tienes tú?	Flaco	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	20
51	Yo tengo un caballo gordo. ¿Qué tienes tú?	Gordo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	21
52	Yo tengo un caballo grande. ¿Qué tienes tú?	Grande	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	22
53	Yo tengo un caballo limpio. ¿Qué tienes tú?	Limpio	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	23
54	Yo tengo un caballo pequeño. ¿Qué tienes tú?	Pequeño	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	24
55	Yo tengo un caballo sucio. ¿Qué tienes tú?	Sucio	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	25
56	Yo tengo un caballo triste. ¿Qué tienes tú?	Triste	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	26
57	Yo tengo un caballo comiendo. ¿Qué tienes tú?	Comer	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	27
58	Yo tengo un caballo corriendo. ¿Qué tienes tú?	Correr	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	28
59	Yo tengo un caballo saltando. ¿Qué tienes tú?	Saltar	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	29
60	Yo tengo un caballo tomando. ¿Qué tienes tú?	Tomar	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	30
1	Yo tengo un burro. ¿Qué tienes tú?	Burro	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	1
2	Yo tengo un burro. ¿Qué tienes tú?	Burro	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	2
3	Yo tengo un burro. ¿Qué tienes tú?	Burro	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	3
4	Yo tengo un burro. ¿Qué tienes tú?	Burro	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	4
5	Yo tengo un burro. ¿Qué tienes tú?	Burro	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	5
6	Yo tengo un burro. ¿Qué tienes tú?	Burro	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	6
7	Yo tengo un burro. ¿Qué tienes tú?	Burro	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	7
8	Yo tengo un burro. ¿Qué tienes tú?	Burro	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	8
9	Yo tengo un burro. ¿Qué tienes tú?	Burro	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	9
10	Yo tengo un burro. ¿Qué tienes tú?	Burro	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	10
11	Yo tengo un burro. ¿Qué tienes tú?	Burro	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	11
12	Yo tengo un burro. ¿Qué tienes tú?	Burro	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	12
13	Yo tengo un burro. ¿Qué tienes tú?	Burro	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	13
14	Yo tengo un burro. ¿Qué tienes tú?	Burro	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	14
15	Yo tengo un burro. ¿Qué tienes tú?	Burro	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	15
16	Yo tengo un burro bonito. ¿Qué tienes tú?	Bonito	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	1
17	Yo tengo un burro dormido. ¿Qué tienes tú?	Dormido	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	2
18	Yo tengo un burro feliz. ¿Qué tienes tú?	Feliz	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	3
19	Yo tengo un burro feo. ¿Qué tienes tú?	Feo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	4
20	Yo tengo un burro flaco. ¿Qué tienes tú?	Flaco	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	5
21	Yo tengo un burro gordo. ¿Qué tienes tú?	Gordo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	6
22	Yo tengo un burro grande. ¿Qué tienes tú?	Grande	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	7
23	Yo tengo un burro limpio. ¿Qué tienes tú?	Limpio	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	8
24	Yo tengo un burro pequeño. ¿Qué tienes tú?	Pequeño	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	9
25	Yo tengo un burro sucio. ¿Qué tienes tú?	Sucio	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	10
26	Yo tengo un burro triste. ¿Qué tienes tú?	Triste	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	11
27	Yo tengo un burro comiendo. ¿Qué tienes tú?	Comer	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	12
28	Yo tengo un burro corriendo. ¿Qué tienes tú?	Correr	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	13
29	Yo tengo un burro saltando. ¿Qué tienes tú?	Saltar	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	14
30	Yo tengo un burro tomando. ¿Qué tienes tú?	Tomar	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	15
31	Yo tengo un caballo. ¿Qué tienes tú?	Caballo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	16
32	Yo tengo un caballo. ¿Qué tienes tú?	Caballo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	17
33	Yo tengo un caballo. ¿Qué tienes tú?	Caballo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	18
34	Yo tengo un caballo. ¿Qué tienes tú?	Caballo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	19
35	Yo tengo un caballo. ¿Qué tienes tú?	Caballo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	20
36	Yo tengo un caballo. ¿Qué tienes tú?	Caballo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	21
37	Yo tengo un caballo. ¿Qué tienes tú?	Caballo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	22
38	Yo tengo un caballo. ¿Qué tienes tú?	Caballo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	23
39	Yo tengo un caballo. ¿Qué tienes tú?	Caballo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	24
40	Yo tengo un caballo. ¿Qué tienes tú?	Caballo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	25
41	Yo tengo un caballo. ¿Qué tienes tú?	Caballo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	26
42	Yo tengo un caballo. ¿Qué tienes tú?	Caballo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	27
43	Yo tengo un caballo. ¿Qué tienes tú?	Caballo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	28
44	Yo tengo un caballo. ¿Qué tienes tú?	Caballo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	29
45	Yo tengo un caballo. ¿Qué tienes tú?	Caballo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	30
61	Yo tengo un cerdo. ¿Qué tienes tú?	Cerdo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	31
62	Yo tengo un cerdo. ¿Qué tienes tú?	Cerdo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	32
63	Yo tengo un cerdo. ¿Qué tienes tú?	Cerdo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	33
64	Yo tengo un cerdo. ¿Qué tienes tú?	Cerdo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	34
65	Yo tengo un cerdo. ¿Qué tienes tú?	Cerdo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	35
66	Yo tengo un cerdo. ¿Qué tienes tú?	Cerdo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	36
67	Yo tengo un cerdo. ¿Qué tienes tú?	Cerdo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	37
68	Yo tengo un cerdo. ¿Qué tienes tú?	Cerdo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	38
69	Yo tengo un cerdo. ¿Qué tienes tú?	Cerdo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	39
70	Yo tengo un cerdo. ¿Qué tienes tú?	Cerdo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	40
71	Yo tengo un cerdo. ¿Qué tienes tú?	Cerdo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	41
72	Yo tengo un cerdo. ¿Qué tienes tú?	Cerdo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	42
73	Yo tengo un cerdo. ¿Qué tienes tú?	Cerdo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	43
74	Yo tengo un cerdo. ¿Qué tienes tú?	Cerdo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	44
75	Yo tengo un cerdo. ¿Qué tienes tú?	Cerdo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	45
76	Yo tengo un cerdo bonito. ¿Qué tienes tú?	Bonito	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	31
77	Yo tengo un cerdo dormido. ¿Qué tienes tú?	Dormido	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	32
78	Yo tengo un cerdo feliz. ¿Qué tienes tú?	Feliz	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	33
79	Yo tengo un cerdo feo. ¿Qué tienes tú?	Feo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	34
80	Yo tengo un cerdo flaco. ¿Qué tienes tú?	Flaco	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	35
81	Yo tengo un cerdo gordo. ¿Qué tienes tú?	Gordo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	36
82	Yo tengo un cerdo grande. ¿Qué tienes tú?	Grande	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	37
83	Yo tengo un cerdo limpio. ¿Qué tienes tú?	Limpio	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	38
84	Yo tengo un cerdo pequeño. ¿Qué tienes tú?	Pequeño	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	39
85	Yo tengo un cerdo sucio. ¿Qué tienes tú?	Sucio	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	40
86	Yo tengo un cerdo triste. ¿Qué tienes tú?	Triste	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	41
87	Yo tengo un cerdo comiendo. ¿Qué tienes tú?	Comer	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	42
88	Yo tengo un cerdo corriendo. ¿Qué tienes tú?	Correr	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	43
89	Yo tengo un cerdo saltando. ¿Qué tienes tú?	Saltar	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	44
90	Yo tengo un cerdo tomando. ¿Qué tienes tú?	Tomar	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	45
91	Yo tengo un conejo. ¿Qué tienes tú?	Conejo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	46
92	Yo tengo un conejo. ¿Qué tienes tú?	Conejo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	47
93	Yo tengo un conejo. ¿Qué tienes tú?	Conejo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	48
94	Yo tengo un conejo. ¿Qué tienes tú?	Conejo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	49
95	Yo tengo un conejo. ¿Qué tienes tú?	Conejo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	50
96	Yo tengo un conejo. ¿Qué tienes tú?	Conejo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	51
97	Yo tengo un conejo. ¿Qué tienes tú?	Conejo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	52
98	Yo tengo un conejo. ¿Qué tienes tú?	Conejo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	53
99	Yo tengo un conejo. ¿Qué tienes tú?	Conejo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	54
100	Yo tengo un conejo. ¿Qué tienes tú?	Conejo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	55
101	Yo tengo un conejo. ¿Qué tienes tú?	Conejo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	56
102	Yo tengo un conejo. ¿Qué tienes tú?	Conejo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	57
103	Yo tengo un conejo. ¿Qué tienes tú?	Conejo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	58
104	Yo tengo un conejo. ¿Qué tienes tú?	Conejo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	59
105	Yo tengo un conejo. ¿Qué tienes tú?	Conejo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	60
106	Yo tengo un conejo bonito. ¿Qué tienes tú?	Bonito	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	46
107	Yo tengo un conejo dormido. ¿Qué tienes tú?	Dormido	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	47
108	Yo tengo un conejo feliz. ¿Qué tienes tú?	Feliz	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	48
109	Yo tengo un conejo feo. ¿Qué tienes tú?	Feo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	49
110	Yo tengo un conejo flaco. ¿Qué tienes tú?	Flaco	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	50
111	Yo tengo un conejo gordo. ¿Qué tienes tú?	Gordo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	51
112	Yo tengo un conejo grande. ¿Qué tienes tú?	Grande	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	52
113	Yo tengo un conejo limpio. ¿Qué tienes tú?	Limpio	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	53
114	Yo tengo un conejo pequeño. ¿Qué tienes tú?	Pequeño	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	54
115	Yo tengo un conejo sucio. ¿Qué tienes tú?	Sucio	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	55
116	Yo tengo un conejo triste. ¿Qué tienes tú?	Triste	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	56
117	Yo tengo un conejo comiendo. ¿Qué tienes tú?	Comer	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	57
118	Yo tengo un conejo corriendo. ¿Qué tienes tú?	Correr	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	58
119	Yo tengo un conejo saltando. ¿Qué tienes tú?	Saltar	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	59
120	Yo tengo un conejo tomando. ¿Qué tienes tú?	Tomar	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	60
121	Yo tengo una gallina. ¿Qué tienes tú?	Gallina	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	61
122	Yo tengo una gallina. ¿Qué tienes tú?	Gallina	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	62
123	Yo tengo una gallina. ¿Qué tienes tú?	Gallina	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	63
124	Yo tengo una gallina. ¿Qué tienes tú?	Gallina	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	64
125	Yo tengo una gallina. ¿Qué tienes tú?	Gallina	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	65
126	Yo tengo una gallina. ¿Qué tienes tú?	Gallina	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	66
127	Yo tengo una gallina. ¿Qué tienes tú?	Gallina	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	67
128	Yo tengo una gallina. ¿Qué tienes tú?	Gallina	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	68
129	Yo tengo una gallina. ¿Qué tienes tú?	Gallina	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	69
130	Yo tengo una gallina. ¿Qué tienes tú?	Gallina	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	70
131	Yo tengo una gallina. ¿Qué tienes tú?	Gallina	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	71
132	Yo tengo una gallina. ¿Qué tienes tú?	Gallina	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	72
133	Yo tengo una gallina. ¿Qué tienes tú?	Gallina	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	73
134	Yo tengo una gallina. ¿Qué tienes tú?	Gallina	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	74
135	Yo tengo una gallina. ¿Qué tienes tú?	Gallina	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	75
136	Yo tengo una gallina bonita. ¿Qué tienes tú?	Bonito	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	61
137	Yo tengo una gallina dormida. ¿Qué tienes tú?	Dormido	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	62
138	Yo tengo una gallina feliz. ¿Qué tienes tú?	Feliz	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	63
139	Yo tengo una gallina fea. ¿Qué tienes tú?	Feo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	64
140	Yo tengo una gallina flaca. ¿Qué tienes tú?	Flaco	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	65
141	Yo tengo una gallina gorda. ¿Qué tienes tú?	Gordo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	66
142	Yo tengo una gallina grande. ¿Qué tienes tú?	Grande	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	67
143	Yo tengo una gallina limpia. ¿Qué tienes tú?	Limpio	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	68
144	Yo tengo una gallina pequeña. ¿Qué tienes tú?	Pequeño	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	69
145	Yo tengo una gallina sucia. ¿Qué tienes tú?	Sucio	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	70
146	Yo tengo una gallina triste. ¿Qué tienes tú?	Triste	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	71
147	Yo tengo una gallina comiendo. ¿Qué tienes tú?	Comer	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	72
148	Yo tengo una gallina corriendo. ¿Qué tienes tú?	Correr	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	73
149	Yo tengo una gallina saltando. ¿Qué tienes tú?	Saltar	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	74
150	Yo tengo una gallina tomando. ¿Qué tienes tú?	Tomar	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	75
151	Yo tengo un gato. ¿Qué tienes tú?	Gato	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	76
152	Yo tengo un gato. ¿Qué tienes tú?	Gato	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	77
153	Yo tengo un gato. ¿Qué tienes tú?	Gato	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	78
154	Yo tengo un gato. ¿Qué tienes tú?	Gato	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	79
155	Yo tengo un gato. ¿Qué tienes tú?	Gato	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	80
156	Yo tengo un gato. ¿Qué tienes tú?	Gato	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	81
157	Yo tengo un gato. ¿Qué tienes tú?	Gato	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	82
158	Yo tengo un gato. ¿Qué tienes tú?	Gato	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	83
159	Yo tengo un gato. ¿Qué tienes tú?	Gato	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	84
160	Yo tengo un gato. ¿Qué tienes tú?	Gato	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	85
161	Yo tengo un gato. ¿Qué tienes tú?	Gato	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	86
162	Yo tengo un gato. ¿Qué tienes tú?	Gato	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	87
163	Yo tengo un gato. ¿Qué tienes tú?	Gato	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	88
164	Yo tengo un gato. ¿Qué tienes tú?	Gato	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	89
165	Yo tengo un gato. ¿Qué tienes tú?	Gato	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	90
166	Yo tengo un gato bonito. ¿Qué tienes tú?	Bonito	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	76
167	Yo tengo un gato dormido. ¿Qué tienes tú?	Dormido	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	77
168	Yo tengo un gato feliz. ¿Qué tienes tú?	Feliz	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	78
169	Yo tengo un gato feo. ¿Qué tienes tú?	Feo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	79
170	Yo tengo un gato flaco. ¿Qué tienes tú?	Flaco	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	80
171	Yo tengo un gato gordo. ¿Qué tienes tú?	Gordo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	81
172	Yo tengo un gato grande. ¿Qué tienes tú?	Grande	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	82
173	Yo tengo un gato limpio. ¿Qué tienes tú?	Limpio	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	83
174	Yo tengo un gato pequeño. ¿Qué tienes tú?	Pequeño	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	84
175	Yo tengo un gato sucio. ¿Qué tienes tú?	Sucio	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	85
176	Yo tengo un gato triste. ¿Qué tienes tú?	Triste	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	86
177	Yo tengo un gato comiendo. ¿Qué tienes tú?	Comer	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	87
178	Yo tengo un gato corriendo. ¿Qué tienes tú?	Correr	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	88
179	Yo tengo un gato saltando. ¿Qué tienes tú?	Saltar	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	89
180	Yo tengo un gato tomando. ¿Qué tienes tú?	Tomar	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	90
181	Yo tengo una mariposa. ¿Qué tienes tú?	Mariposa	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	91
182	Yo tengo una mariposa. ¿Qué tienes tú?	Mariposa	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	92
183	Yo tengo una mariposa. ¿Qué tienes tú?	Mariposa	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	93
184	Yo tengo una mariposa. ¿Qué tienes tú?	Mariposa	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	94
185	Yo tengo una mariposa. ¿Qué tienes tú?	Mariposa	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	95
186	Yo tengo una mariposa. ¿Qué tienes tú?	Mariposa	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	96
187	Yo tengo una mariposa. ¿Qué tienes tú?	Mariposa	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	97
188	Yo tengo una mariposa. ¿Qué tienes tú?	Mariposa	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	98
189	Yo tengo una mariposa. ¿Qué tienes tú?	Mariposa	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	99
190	Yo tengo una mariposa. ¿Qué tienes tú?	Mariposa	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	100
191	Yo tengo una mariposa. ¿Qué tienes tú?	Mariposa	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	101
192	Yo tengo una mariposa. ¿Qué tienes tú?	Mariposa	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	102
193	Yo tengo una mariposa. ¿Qué tienes tú?	Mariposa	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	103
194	Yo tengo una mariposa. ¿Qué tienes tú?	Mariposa	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	104
195	Yo tengo una mariposa. ¿Qué tienes tú?	Mariposa	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	105
196	Yo tengo una mariposa bonita. ¿Qué tienes tú?	Bonito	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	91
197	Yo tengo una mariposa dormida. ¿Qué tienes tú?	Dormido	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	92
198	Yo tengo una mariposa feliz. ¿Qué tienes tú?	Feliz	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	93
199	Yo tengo una mariposa fea. ¿Qué tienes tú?	Feo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	94
200	Yo tengo una mariposa flaca. ¿Qué tienes tú?	Flaco	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	95
201	Yo tengo una mariposa gorda. ¿Qué tienes tú?	Gordo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	96
202	Yo tengo una mariposa grande. ¿Qué tienes tú?	Grande	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	97
203	Yo tengo una mariposa limpia. ¿Qué tienes tú?	Limpio	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	98
204	Yo tengo una mariposa pequeña. ¿Qué tienes tú?	Pequeño	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	99
205	Yo tengo una mariposa sucia. ¿Qué tienes tú?	Sucio	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	100
206	Yo tengo una mariposa triste. ¿Qué tienes tú?	Triste	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	101
207	Yo tengo una mariposa comiendo. ¿Qué tienes tú?	Comer	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	102
208	Yo tengo una mariposa saltando. ¿Qué tienes tú?	Saltar	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	103
209	Yo tengo una mariposa tomando. ¿Qué tienes tú?	Tomar	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	104
210	Yo tengo una mariposa volando. ¿Qué tienes tú?	Volar	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	105
211	Yo tengo una oveja. ¿Qué tienes tú?	Oveja	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	106
212	Yo tengo una oveja. ¿Qué tienes tú?	Oveja	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	107
213	Yo tengo una oveja. ¿Qué tienes tú?	Oveja	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	108
214	Yo tengo una oveja. ¿Qué tienes tú?	Oveja	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	109
215	Yo tengo una oveja. ¿Qué tienes tú?	Oveja	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	110
216	Yo tengo una oveja. ¿Qué tienes tú?	Oveja	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	111
217	Yo tengo una oveja. ¿Qué tienes tú?	Oveja	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	112
218	Yo tengo una oveja. ¿Qué tienes tú?	Oveja	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	113
219	Yo tengo una oveja. ¿Qué tienes tú?	Oveja	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	114
220	Yo tengo una oveja. ¿Qué tienes tú?	Oveja	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	115
221	Yo tengo una oveja. ¿Qué tienes tú?	Oveja	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	116
222	Yo tengo una oveja. ¿Qué tienes tú?	Oveja	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	117
223	Yo tengo una oveja. ¿Qué tienes tú?	Oveja	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	118
224	Yo tengo una oveja. ¿Qué tienes tú?	Oveja	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	119
225	Yo tengo una oveja. ¿Qué tienes tú?	Oveja	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	120
226	Yo tengo una oveja bonita. ¿Qué tienes tú?	Bonito	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	106
227	Yo tengo una oveja dormida. ¿Qué tienes tú?	Dormido	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	107
228	Yo tengo una oveja feliz. ¿Qué tienes tú?	Feliz	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	108
229	Yo tengo una oveja fea. ¿Qué tienes tú?	Feo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	109
230	Yo tengo una oveja flaca. ¿Qué tienes tú?	Flaco	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	110
231	Yo tengo una oveja gorda. ¿Qué tienes tú?	Gordo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	111
232	Yo tengo una oveja grande. ¿Qué tienes tú?	Grande	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	112
233	Yo tengo una oveja limpia. ¿Qué tienes tú?	Limpio	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	113
234	Yo tengo una oveja pequeña. ¿Qué tienes tú?	Pequeño	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	114
235	Yo tengo una oveja sucia. ¿Qué tienes tú?	Sucio	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	115
236	Yo tengo una oveja triste. ¿Qué tienes tú?	Triste	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	116
237	Yo tengo una oveja comiendo. ¿Qué tienes tú?	Comer	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	117
238	Yo tengo una oveja corriendo. ¿Qué tienes tú?	Correr	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	118
239	Yo tengo una oveja saltando. ¿Qué tienes tú?	Saltar	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	119
240	Yo tengo una oveja tomando. ¿Qué tienes tú?	Tomar	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	120
241	Yo tengo un pájaro. ¿Qué tienes tú?	Pájaro	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	121
242	Yo tengo un pájaro. ¿Qué tienes tú?	Pájaro	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	122
243	Yo tengo un pájaro. ¿Qué tienes tú?	Pájaro	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	123
244	Yo tengo un pájaro. ¿Qué tienes tú?	Pájaro	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	124
245	Yo tengo un pájaro. ¿Qué tienes tú?	Pájaro	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	125
246	Yo tengo un pájaro. ¿Qué tienes tú?	Pájaro	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	126
247	Yo tengo un pájaro. ¿Qué tienes tú?	Pájaro	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	127
248	Yo tengo un pájaro. ¿Qué tienes tú?	Pájaro	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	128
249	Yo tengo un pájaro. ¿Qué tienes tú?	Pájaro	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	129
250	Yo tengo un pájaro. ¿Qué tienes tú?	Pájaro	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	130
251	Yo tengo un pájaro. ¿Qué tienes tú?	Pájaro	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	131
252	Yo tengo un pájaro. ¿Qué tienes tú?	Pájaro	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	132
253	Yo tengo un pájaro. ¿Qué tienes tú?	Pájaro	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	133
254	Yo tengo un pájaro. ¿Qué tienes tú?	Pájaro	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	134
255	Yo tengo un pájaro. ¿Qué tienes tú?	Pájaro	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	135
256	Yo tengo un pájaro bonito. ¿Qué tienes tú?	Bonito	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	121
257	Yo tengo un pájaro dormido. ¿Qué tienes tú?	Dormido	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	122
258	Yo tengo un pájaro feliz. ¿Qué tienes tú?	Feliz	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	123
259	Yo tengo un pájaro feo. ¿Qué tienes tú?	Feo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	124
260	Yo tengo un pájaro flaco. ¿Qué tienes tú?	Flaco	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	125
261	Yo tengo un pájaro gordo. ¿Qué tienes tú?	Gordo	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	126
262	Yo tengo un pájaro grande. ¿Qué tienes tú?	Grande	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	127
263	Yo tengo un pájaro limpio. ¿Qué tienes tú?	Limpio	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	128
264	Yo tengo un pájaro pequeño. ¿Qué tienes tú?	Pequeño	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	129
265	Yo tengo un pájaro sucio. ¿Qué tienes tú?	Sucio	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	130
266	Yo tengo un pájaro triste. ¿Qué tienes tú?	Triste	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	131
267	Yo tengo un pájaro comiendo. ¿Qué tienes tú?	Comer	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	132
268	Yo tengo un pájaro corriendo. ¿Qué tienes tú?	Correr	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	133
269	Yo tengo un pájaro saltando. ¿Qué tienes tú?	Saltar	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	134
270	Yo tengo un pájaro tomando. ¿Qué tienes tú?	Tomar	2020-04-19 00:00:00-05	2020-04-19 00:00:00-05	135
271	Yo tengo un pato. ¿Qué tienes tú?	Pato	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	136
272	Yo tengo un pato. ¿Qué tienes tú?	Pato	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	137
273	Yo tengo un pato. ¿Qué tienes tú?	Pato	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	138
274	Yo tengo un pato. ¿Qué tienes tú?	Pato	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	139
275	Yo tengo un pato. ¿Qué tienes tú?	Pato	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	140
276	Yo tengo un pato. ¿Qué tienes tú?	Pato	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	141
277	Yo tengo un pato. ¿Qué tienes tú?	Pato	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	142
278	Yo tengo un pato. ¿Qué tienes tú?	Pato	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	143
279	Yo tengo un pato. ¿Qué tienes tú?	Pato	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	144
280	Yo tengo un pato. ¿Qué tienes tú?	Pato	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	145
281	Yo tengo un pato. ¿Qué tienes tú?	Pato	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	146
282	Yo tengo un pato. ¿Qué tienes tú?	Pato	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	147
283	Yo tengo un pato. ¿Qué tienes tú?	Pato	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	148
284	Yo tengo un pato. ¿Qué tienes tú?	Pato	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	149
285	Yo tengo un pato. ¿Qué tienes tú?	Pato	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	150
286	Yo tengo un pato bonito. ¿Qué tienes tú?	Bonito	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	136
287	Yo tengo un pato dormido. ¿Qué tienes tú?	Dormido	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	137
288	Yo tengo un pato feliz. ¿Qué tienes tú?	Feliz	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	138
289	Yo tengo un pato feo. ¿Qué tienes tú?	Feo	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	139
290	Yo tengo un pato flaco. ¿Qué tienes tú?	Flaco	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	140
291	Yo tengo un pato gordo. ¿Qué tienes tú?	Gordo	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	141
292	Yo tengo un pato grande. ¿Qué tienes tú?	Grande	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	142
293	Yo tengo un pato limpio. ¿Qué tienes tú?	Limpio	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	143
294	Yo tengo un pato pequeño. ¿Qué tienes tú?	Pequeño	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	144
295	Yo tengo un pato sucio. ¿Qué tienes tú?	Sucio	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	145
296	Yo tengo un pato triste. ¿Qué tienes tú?	Triste	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	146
297	Yo tengo un pato comiendo. ¿Qué tienes tú?	Comer	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	147
298	Yo tengo un pato corriendo. ¿Qué tienes tú?	Correr	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	148
299	Yo tengo un pato nadando. ¿Qué tienes tú?	Nadar	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	149
300	Yo tengo un pato tomando. ¿Qué tienes tú?	Tomar	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	150
301	Yo tengo un perro. ¿Qué tienes tú?	Perro	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	151
302	Yo tengo un perro. ¿Qué tienes tú?	Perro	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	152
303	Yo tengo un perro. ¿Qué tienes tú?	Perro	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	153
304	Yo tengo un perro. ¿Qué tienes tú?	Perro	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	154
305	Yo tengo un perro. ¿Qué tienes tú?	Perro	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	155
306	Yo tengo un perro. ¿Qué tienes tú?	Perro	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	156
307	Yo tengo un perro. ¿Qué tienes tú?	Perro	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	157
308	Yo tengo un perro. ¿Qué tienes tú?	Perro	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	158
309	Yo tengo un perro. ¿Qué tienes tú?	Perro	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	159
310	Yo tengo un perro. ¿Qué tienes tú?	Perro	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	160
311	Yo tengo un perro. ¿Qué tienes tú?	Perro	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	161
312	Yo tengo un perro. ¿Qué tienes tú?	Perro	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	162
313	Yo tengo un perro. ¿Qué tienes tú?	Perro	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	163
314	Yo tengo un perro. ¿Qué tienes tú?	Perro	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	164
315	Yo tengo un perro. ¿Qué tienes tú?	Perro	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	165
316	Yo tengo un perro bonito. ¿Qué tienes tú?	Bonito	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	151
317	Yo tengo un perro dormido. ¿Qué tienes tú?	Dormido	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	152
318	Yo tengo un perro feliz. ¿Qué tienes tú?	Feliz	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	153
319	Yo tengo un perro feo. ¿Qué tienes tú?	Feo	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	154
320	Yo tengo un perro flaco. ¿Qué tienes tú?	Flaco	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	155
321	Yo tengo un perro gordo. ¿Qué tienes tú?	Gordo	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	156
322	Yo tengo un perro grande. ¿Qué tienes tú?	Grande	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	157
323	Yo tengo un perro limpio. ¿Qué tienes tú?	Limpio	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	158
324	Yo tengo un perro pequeño. ¿Qué tienes tú?	Pequeño	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	159
325	Yo tengo un perro sucio. ¿Qué tienes tú?	Sucio	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	160
326	Yo tengo un perro triste. ¿Qué tienes tú?	Triste	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	161
327	Yo tengo un perro comiendo. ¿Qué tienes tú?	Comer	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	162
328	Yo tengo un perro corriendo. ¿Qué tienes tú?	Correr	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	163
329	Yo tengo un perro saltando. ¿Qué tienes tú?	Saltar	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	164
330	Yo tengo un perro tomando. ¿Qué tienes tú?	Tomar	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	165
331	Yo tengo un pollo. ¿Qué tienes tú?	Pollo	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	166
332	Yo tengo un pollo. ¿Qué tienes tú?	Pollo	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	167
333	Yo tengo un pollo. ¿Qué tienes tú?	Pollo	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	168
334	Yo tengo un pollo. ¿Qué tienes tú?	Pollo	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	169
335	Yo tengo un pollo. ¿Qué tienes tú?	Pollo	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	170
336	Yo tengo un pollo. ¿Qué tienes tú?	Pollo	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	171
337	Yo tengo un pollo. ¿Qué tienes tú?	Pollo	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	172
338	Yo tengo un pollo. ¿Qué tienes tú?	Pollo	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	173
339	Yo tengo un pollo. ¿Qué tienes tú?	Pollo	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	174
340	Yo tengo un pollo. ¿Qué tienes tú?	Pollo	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	175
341	Yo tengo un pollo. ¿Qué tienes tú?	Pollo	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	176
342	Yo tengo un pollo. ¿Qué tienes tú?	Pollo	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	177
343	Yo tengo un pollo. ¿Qué tienes tú?	Pollo	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	178
344	Yo tengo un pollo. ¿Qué tienes tú?	Pollo	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	179
345	Yo tengo un pollo. ¿Qué tienes tú?	Pollo	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	180
346	Yo tengo un pollo bonito. ¿Qué tienes tú?	Bonito	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	166
347	Yo tengo un pollo dormido. ¿Qué tienes tú?	Dormido	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	167
348	Yo tengo un pollo feliz. ¿Qué tienes tú?	Feliz	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	168
349	Yo tengo un pollo feo. ¿Qué tienes tú?	Feo	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	169
350	Yo tengo un pollo flaco. ¿Qué tienes tú?	Flaco	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	170
351	Yo tengo un pollo gordo. ¿Qué tienes tú?	Gordo	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	171
352	Yo tengo un pollo grande. ¿Qué tienes tú?	Grande	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	172
353	Yo tengo un pollo limpio. ¿Qué tienes tú?	Limpio	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	173
354	Yo tengo un pollo pequeño. ¿Qué tienes tú?	Pequeño	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	174
355	Yo tengo un pollo sucio. ¿Qué tienes tú?	Sucio	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	175
356	Yo tengo un pollo triste. ¿Qué tienes tú?	Triste	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	176
357	Yo tengo un pollo comiendo. ¿Qué tienes tú?	Comer	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	177
358	Yo tengo un pollo corriendo. ¿Qué tienes tú?	Correr	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	178
359	Yo tengo un pollo saltando. ¿Qué tienes tú?	Saltar	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	179
360	Yo tengo un pollo tomando. ¿Qué tienes tú?	Tomar	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	180
361	Yo tengo un ratón. ¿Qué tienes tú?	Ratón	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	181
362	Yo tengo un ratón. ¿Qué tienes tú?	Ratón	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	182
363	Yo tengo un ratón. ¿Qué tienes tú?	Ratón	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	183
364	Yo tengo un ratón. ¿Qué tienes tú?	Ratón	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	184
365	Yo tengo un ratón. ¿Qué tienes tú?	Ratón	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	185
366	Yo tengo un ratón. ¿Qué tienes tú?	Ratón	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	186
367	Yo tengo un ratón. ¿Qué tienes tú?	Ratón	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	187
368	Yo tengo un ratón. ¿Qué tienes tú?	Ratón	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	188
369	Yo tengo un ratón. ¿Qué tienes tú?	Ratón	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	189
370	Yo tengo un ratón. ¿Qué tienes tú?	Ratón	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	190
371	Yo tengo un ratón. ¿Qué tienes tú?	Ratón	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	191
372	Yo tengo un ratón. ¿Qué tienes tú?	Ratón	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	192
373	Yo tengo un ratón. ¿Qué tienes tú?	Ratón	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	193
374	Yo tengo un ratón. ¿Qué tienes tú?	Ratón	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	194
375	Yo tengo un ratón. ¿Qué tienes tú?	Ratón	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	195
376	Yo tengo un ratón bonito. ¿Qué tienes tú?	Bonito	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	181
377	Yo tengo un ratón dormido. ¿Qué tienes tú?	Dormido	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	182
378	Yo tengo un ratón feliz. ¿Qué tienes tú?	Feliz	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	183
379	Yo tengo un ratón feo. ¿Qué tienes tú?	Feo	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	184
380	Yo tengo un ratón flaco. ¿Qué tienes tú?	Flaco	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	185
381	Yo tengo un ratón gordo. ¿Qué tienes tú?	Gordo	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	186
382	Yo tengo un ratón grande. ¿Qué tienes tú?	Grande	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	187
383	Yo tengo un ratón limpio. ¿Qué tienes tú?	Limpio	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	188
384	Yo tengo un ratón pequeño. ¿Qué tienes tú?	Pequeño	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	189
385	Yo tengo un ratón sucio. ¿Qué tienes tú?	Sucio	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	190
386	Yo tengo un ratón triste. ¿Qué tienes tú?	Triste	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	191
387	Yo tengo un ratón comiendo. ¿Qué tienes tú?	Comer	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	192
389	Yo tengo un ratón saltando. ¿Qué tienes tú?	Saltando	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	194
390	Yo tengo un ratón tomando. ¿Qué tienes tú?	Tomar	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	195
391	Yo tengo un toro. ¿Qué tienes tú?	Toro	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	196
392	Yo tengo un toro. ¿Qué tienes tú?	Toro	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	197
393	Yo tengo un toro. ¿Qué tienes tú?	Toro	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	198
394	Yo tengo un toro. ¿Qué tienes tú?	Toro	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	199
395	Yo tengo un toro. ¿Qué tienes tú?	Toro	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	200
396	Yo tengo un toro. ¿Qué tienes tú?	Toro	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	201
397	Yo tengo un toro. ¿Qué tienes tú?	Toro	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	202
398	Yo tengo un toro. ¿Qué tienes tú?	Toro	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	203
399	Yo tengo un toro. ¿Qué tienes tú?	Toro	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	204
400	Yo tengo un toro. ¿Qué tienes tú?	Toro	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	205
401	Yo tengo un toro. ¿Qué tienes tú?	Toro	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	206
402	Yo tengo un toro. ¿Qué tienes tú?	Toro	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	207
403	Yo tengo un toro. ¿Qué tienes tú?	Toro	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	208
404	Yo tengo un toro. ¿Qué tienes tú?	Toro	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	209
405	Yo tengo un toro. ¿Qué tienes tú?	Toro	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	210
406	Yo tengo un toro bonito. ¿Qué tienes tú?	Bonito	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	196
407	Yo tengo un toro dormido. ¿Qué tienes tú?	Dormido	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	197
408	Yo tengo un toro feliz. ¿Qué tienes tú?	Feliz	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	198
409	Yo tengo un toro feo. ¿Qué tienes tú?	Feo	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	199
410	Yo tengo un toro flaco. ¿Qué tienes tú?	Flaco	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	200
411	Yo tengo un toro gordo. ¿Qué tienes tú?	Gordo	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	201
412	Yo tengo un toro grande. ¿Qué tienes tú?	Grande	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	202
413	Yo tengo un toro limpio. ¿Qué tienes tú?	Limpio	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	203
414	Yo tengo un toro pequeño. ¿Qué tienes tú?	Pequeño	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	204
415	Yo tengo un toro sucio. ¿Qué tienes tú?	Sucio	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	205
416	Yo tengo un toro triste. ¿Qué tienes tú?	Triste	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	206
417	Yo tengo un toro comiendo. ¿Qué tienes tú?	Comer	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	207
418	Yo tengo un toro corriendo. ¿Qué tienes tú?	Correr	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	208
419	Yo tengo un toro saltando. ¿Qué tienes tú?	Saltar	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	209
420	Yo tengo un toro tomando. ¿Qué tienes tú?	Tomar	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	210
421	Yo tengo una tortuga. ¿Qué tienes tú?	Tortuga	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	211
422	Yo tengo una tortuga. ¿Qué tienes tú?	Tortuga	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	212
423	Yo tengo una tortuga. ¿Qué tienes tú?	Tortuga	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	213
424	Yo tengo una tortuga. ¿Qué tienes tú?	Tortuga	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	214
425	Yo tengo una tortuga. ¿Qué tienes tú?	Tortuga	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	215
426	Yo tengo una tortuga. ¿Qué tienes tú?	Tortuga	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	216
427	Yo tengo una tortuga. ¿Qué tienes tú?	Tortuga	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	217
428	Yo tengo una tortuga. ¿Qué tienes tú?	Tortuga	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	218
429	Yo tengo una tortuga. ¿Qué tienes tú?	Tortuga	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	219
430	Yo tengo una tortuga. ¿Qué tienes tú?	Tortuga	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	220
431	Yo tengo una tortuga. ¿Qué tienes tú?	Tortuga	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	221
432	Yo tengo una tortuga. ¿Qué tienes tú?	Tortuga	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	222
433	Yo tengo una tortuga. ¿Qué tienes tú?	Tortuga	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	223
434	Yo tengo una tortuga. ¿Qué tienes tú?	Tortuga	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	224
435	Yo tengo una tortuga. ¿Qué tienes tú?	Tortuga	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	225
436	Yo tengo una tortuga. ¿Qué tienes tú?	Tortuga	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	226
437	Yo tengo una tortuga bonita. ¿Qué tienes tú?	Bonito	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	211
438	Yo tengo una tortuga dormida. ¿Qué tienes tú?	Dormido	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	212
439	Yo tengo una tortuga feliz. ¿Qué tienes tú?	Feliz	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	213
440	Yo tengo una tortuga fea. ¿Qué tienes tú?	Feo	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	214
441	Yo tengo una tortuga flaca. ¿Qué tienes tú?	Flaco	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	215
442	Yo tengo una tortuga gorda. ¿Qué tienes tú?	Gordo	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	216
443	Yo tengo una tortuga grande. ¿Qué tienes tú?	Grande	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	217
444	Yo tengo una tortuga limpia. ¿Qué tienes tú?	Limpio	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	218
445	Yo tengo una tortuga pequeña. ¿Qué tienes tú?	Pequeño	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	219
446	Yo tengo una tortuga sucia. ¿Qué tienes tú?	Sucio	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	220
447	Yo tengo una tortuga triste. ¿Qué tienes tú?	Triste	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	221
448	Yo tengo una tortuga comiendo. ¿Qué tienes tú?	Comer	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	222
449	Yo tengo una tortuga corriendo. ¿Qué tienes tú?	Correr	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	223
450	Yo tengo una tortuga nadando. ¿Qué tienes tú?	Nadar	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	224
451	Yo tengo una tortuga saltando. ¿Qué tienes tú?	Saltar	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	225
452	Yo tengo una tortuga tomando. ¿Qué tienes tú?	Tomar	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	226
453	Yo tengo una vaca. ¿Qué tienes tú?	Vaca	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	227
454	Yo tengo una vaca. ¿Qué tienes tú?	Vaca	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	228
455	Yo tengo una vaca. ¿Qué tienes tú?	Vaca	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	229
456	Yo tengo una vaca. ¿Qué tienes tú?	Vaca	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	230
457	Yo tengo una vaca. ¿Qué tienes tú?	Vaca	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	231
458	Yo tengo una vaca. ¿Qué tienes tú?	Vaca	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	232
459	Yo tengo una vaca. ¿Qué tienes tú?	Vaca	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	233
460	Yo tengo una vaca. ¿Qué tienes tú?	Vaca	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	234
461	Yo tengo una vaca. ¿Qué tienes tú?	Vaca	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	235
462	Yo tengo una vaca. ¿Qué tienes tú?	Vaca	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	236
463	Yo tengo una vaca. ¿Qué tienes tú?	Vaca	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	237
464	Yo tengo una vaca. ¿Qué tienes tú?	Vaca	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	238
465	Yo tengo una vaca. ¿Qué tienes tú?	Vaca	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	239
466	Yo tengo una vaca. ¿Qué tienes tú?	Vaca	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	240
467	Yo tengo una vaca. ¿Qué tienes tú?	Vaca	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	241
468	Yo tengo una vaca bonita. ¿Qué tienes tú?	Bonito	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	227
469	Yo tengo una vaca dormida. ¿Qué tienes tú?	Dormido	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	228
470	Yo tengo una vaca feliz. ¿Qué tienes tú?	Feliz	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	229
471	Yo tengo una vaca fea. ¿Qué tienes tú?	Feo	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	230
472	Yo tengo una vaca flaca. ¿Qué tienes tú?	Flaco	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	231
473	Yo tengo una vaca gorda. ¿Qué tienes tú?	Gordo	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	232
474	Yo tengo una vaca grande. ¿Qué tienes tú?	Grande	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	233
475	Yo tengo una vaca limpia. ¿Qué tienes tú?	Limpio	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	234
476	Yo tengo una vaca pequeña. ¿Qué tienes tú?	Pequeño	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	235
477	Yo tengo una vaca sucia. ¿Qué tienes tú?	Sucio	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	236
478	Yo tengo una vaca triste. ¿Qué tienes tú?	Triste	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	237
479	Yo tengo una vaca comiendo. ¿Qué tienes tú?	Comer	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	238
480	Yo tengo una vaca corriendo. ¿Qué tienes tú?	Correr	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	239
481	Yo tengo una vaca saltando. ¿Qué tienes tú?	Saltar	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	240
482	Yo tengo una vaca tomando. ¿Qué tienes tú?	Tomar	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	241
388	Yo tengo un ratón corriendo. ¿Qué tienes tú?	Correr	2020-04-20 00:00:00-05	2020-04-20 00:00:00-05	193
\.


--
-- TOC entry 3313 (class 0 OID 39743)
-- Dependencies: 205
-- Data for Name: Domino_Answers; Type: TABLE DATA; Schema: domino; Owner: postgres
--

COPY domino."Domino_Answers" (id, order_phrase, kind, word, "createdAt", "updatedAt", id_tag) FROM stdin;
3	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	1
7	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	2
11	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	3
15	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	4
19	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	5
23	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	6
27	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	7
31	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	8
35	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	9
39	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	10
43	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	11
47	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	12
51	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	13
55	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	14
59	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	15
63	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	16
68	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	17
73	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	18
78	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	19
83	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	20
88	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	21
93	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	22
75	5	Adjetivo	feliz	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	18
98	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	23
103	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	24
95	5	Adjetivo	grande	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	22
4	4	Sustantivo	burro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	1
8	4	Sustantivo	burro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	2
115	5	Adjetivo	triste	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	26
12	4	Sustantivo	burro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	3
16	4	Sustantivo	burro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	4
20	4	Sustantivo	burro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	5
24	4	Sustantivo	burro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	6
28	4	Sustantivo	burro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	7
32	4	Sustantivo	burro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	8
2	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	1
6	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	2
10	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	3
14	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	4
18	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	5
22	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	6
26	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	7
30	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	8
34	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	9
38	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	10
42	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	11
46	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	12
50	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	13
54	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	14
58	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	15
62	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	16
67	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	17
72	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	18
77	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	19
82	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	20
87	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	21
92	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	22
36	4	Sustantivo	burro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	9
40	4	Sustantivo	burro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	10
44	4	Sustantivo	burro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	11
48	4	Sustantivo	burro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	12
52	4	Sustantivo	burro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	13
56	4	Sustantivo	burro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	14
60	4	Sustantivo	burro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	15
64	4	Sustantivo	burro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	16
69	4	Sustantivo	burro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	17
74	4	Sustantivo	burro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	18
79	4	Sustantivo	burro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	19
84	4	Sustantivo	burro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	20
89	4	Sustantivo	burro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	21
65	5	Adjetivo	bonito	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	16
70	5	Adjetivo	dormido	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	17
80	5	Adjetivo	feo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	19
85	5	Adjetivo	flaco	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	20
90	5	Adjetivo	gordo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	21
100	5	Adjetivo	limpio	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	23
105	5	Adjetivo	pequeño	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	24
110	5	Adjetivo	sucio	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	25
108	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	25
113	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	26
118	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	27
123	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	28
128	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	29
133	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	30
138	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	31
142	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	32
146	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	33
150	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	34
154	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	35
158	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	36
162	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	37
166	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	38
170	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	39
174	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	40
178	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	41
182	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	42
186	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	43
190	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	44
194	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	45
198	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	46
120	5	Verbo	comiendo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	27
125	5	Verbo	corriendo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	28
203	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	47
130	5	Verbo	saltando	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	29
135	5	Verbo	tomando	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	30
208	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	48
124	4	Sustantivo	burro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	28
210	5	Adjetivo	feliz	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	48
230	5	Adjetivo	grande	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	52
129	4	Sustantivo	burro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	29
134	4	Sustantivo	burro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	30
139	4	Sustantivo	caballo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	31
143	4	Sustantivo	caballo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	32
147	4	Sustantivo	caballo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	33
151	4	Sustantivo	caballo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	34
122	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	28
127	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	29
132	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	30
137	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	31
141	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	32
145	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	33
149	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	34
153	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	35
157	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	36
161	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	37
165	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	38
169	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	39
173	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	40
177	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	41
181	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	42
185	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	43
189	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	44
193	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	45
197	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	46
202	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	47
207	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	48
212	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	49
217	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	50
155	4	Sustantivo	caballo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	35
159	4	Sustantivo	caballo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	36
163	4	Sustantivo	caballo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	37
167	4	Sustantivo	caballo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	38
171	4	Sustantivo	caballo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	39
175	4	Sustantivo	caballo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	40
179	4	Sustantivo	caballo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	41
183	4	Sustantivo	caballo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	42
187	4	Sustantivo	caballo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	43
191	4	Sustantivo	caballo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	44
195	4	Sustantivo	caballo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	45
199	4	Sustantivo	caballo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	46
204	4	Sustantivo	caballo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	47
209	4	Sustantivo	caballo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	48
200	5	Adjetivo	bonito	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	46
205	5	Adjetivo	dormido	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	47
215	5	Adjetivo	feo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	49
220	5	Adjetivo	flaco	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	50
225	5	Adjetivo	gordo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	51
235	5	Adjetivo	limpio	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	53
213	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	49
218	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	50
223	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	51
228	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	52
233	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	53
238	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	54
243	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	55
248	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	56
253	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	57
258	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	58
263	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	59
268	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	60
273	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	61
277	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	62
281	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	63
285	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	64
289	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	65
293	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	66
297	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	67
255	5	Verbo	comiendo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	57
301	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	68
260	5	Verbo	corriendo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	58
305	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	69
265	5	Verbo	saltando	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	59
309	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	70
270	5	Verbo	tomando	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	60
250	5	Adjetivo	triste	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	56
313	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	71
345	5	Adjetivo	feliz	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	78
317	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	72
244	4	Sustantivo	caballo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	55
249	4	Sustantivo	caballo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	56
254	4	Sustantivo	caballo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	57
259	4	Sustantivo	caballo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	58
264	4	Sustantivo	caballo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	59
269	4	Sustantivo	caballo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	60
274	4	Sustantivo	cerdo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	61
242	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	55
247	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	56
252	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	57
257	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	58
262	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	59
267	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	60
272	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	61
276	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	62
280	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	63
284	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	64
288	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	65
292	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	66
296	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	67
300	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	68
304	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	69
308	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	70
312	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	71
316	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	72
320	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	73
324	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	74
328	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	75
332	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	76
337	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	77
278	4	Sustantivo	cerdo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	62
282	4	Sustantivo	cerdo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	63
286	4	Sustantivo	cerdo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	64
290	4	Sustantivo	cerdo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	65
294	4	Sustantivo	cerdo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	66
298	4	Sustantivo	cerdo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	67
302	4	Sustantivo	cerdo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	68
306	4	Sustantivo	cerdo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	69
310	4	Sustantivo	cerdo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	70
314	4	Sustantivo	cerdo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	71
318	4	Sustantivo	cerdo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	72
322	4	Sustantivo	cerdo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	73
326	4	Sustantivo	cerdo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	74
330	4	Sustantivo	cerdo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	75
240	5	Adjetivo	pequeño	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	54
245	5	Adjetivo	sucio	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	55
335	5	Adjetivo	bonito	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	76
340	5	Adjetivo	dormido	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	77
350	5	Adjetivo	feo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	79
355	5	Adjetivo	flaco	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	80
321	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	73
325	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	74
329	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	75
333	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	76
338	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	77
343	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	78
348	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	79
353	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	80
358	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	81
363	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	82
368	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	83
373	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	84
378	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	85
383	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	86
388	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	87
393	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	88
390	5	Verbo	comiendo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	87
398	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	89
395	5	Verbo	corriendo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	88
403	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	90
400	5	Verbo	saltando	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	89
408	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	91
405	5	Verbo	tomando	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	90
412	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	92
365	5	Adjetivo	grande	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	82
385	5	Adjetivo	triste	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	86
416	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	93
420	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	94
424	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	95
428	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	96
359	4	Sustantivo	cerdo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	81
364	4	Sustantivo	cerdo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	82
369	4	Sustantivo	cerdo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	83
374	4	Sustantivo	cerdo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	84
379	4	Sustantivo	cerdo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	85
384	4	Sustantivo	cerdo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	86
389	4	Sustantivo	cerdo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	87
362	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	82
367	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	83
372	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	84
377	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	85
382	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	86
387	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	87
392	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	88
397	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	89
402	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	90
407	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	91
411	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	92
415	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	93
419	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	94
423	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	95
427	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	96
431	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	97
435	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	98
439	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	99
443	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	100
447	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	101
451	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	102
455	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	103
459	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	104
394	4	Sustantivo	cerdo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	88
399	4	Sustantivo	cerdo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	89
404	4	Sustantivo	cerdo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	90
409	4	Sustantivo	conejo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	91
413	4	Sustantivo	conejo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	92
417	4	Sustantivo	conejo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	93
421	4	Sustantivo	conejo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	94
425	4	Sustantivo	conejo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	95
429	4	Sustantivo	conejo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	96
433	4	Sustantivo	conejo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	97
437	4	Sustantivo	conejo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	98
441	4	Sustantivo	conejo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	99
445	4	Sustantivo	conejo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	100
360	5	Adjetivo	gordo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	81
370	5	Adjetivo	limpio	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	83
375	5	Adjetivo	pequeño	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	84
380	5	Adjetivo	sucio	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	85
470	5	Adjetivo	bonito	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	106
475	5	Adjetivo	dormido	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	107
432	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	97
436	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	98
440	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	99
444	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	100
448	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	101
452	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	102
456	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	103
460	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	104
464	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	105
468	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	106
473	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	107
478	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	108
525	5	Verbo	comiendo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	117
483	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	109
530	5	Verbo	corriendo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	118
488	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	110
535	5	Verbo	saltando	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	119
493	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	111
540	5	Verbo	tomando	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	120
498	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	112
480	5	Adjetivo	feliz	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	108
503	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	113
500	5	Adjetivo	grande	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	112
508	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	114
520	5	Adjetivo	triste	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	116
513	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	115
518	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	116
523	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	117
528	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	118
533	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	119
479	4	Sustantivo	conejo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	108
484	4	Sustantivo	conejo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	109
489	4	Sustantivo	conejo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	110
494	4	Sustantivo	conejo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	111
499	4	Sustantivo	conejo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	112
504	4	Sustantivo	conejo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	113
509	4	Sustantivo	conejo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	114
482	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	109
487	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	110
492	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	111
497	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	112
502	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	113
507	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	114
512	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	115
517	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	116
522	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	117
527	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	118
532	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	119
537	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	120
542	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	121
546	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	122
550	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	123
554	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	124
558	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	125
562	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	126
566	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	127
570	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	128
574	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	129
578	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	130
514	4	Sustantivo	conejo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	115
519	4	Sustantivo	conejo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	116
524	4	Sustantivo	conejo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	117
529	4	Sustantivo	conejo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	118
534	4	Sustantivo	conejo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	119
539	4	Sustantivo	conejo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	120
544	4	Sustantivo	gallina	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	121
548	4	Sustantivo	gallina	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	122
552	4	Sustantivo	gallina	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	123
556	4	Sustantivo	gallina	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	124
560	4	Sustantivo	gallina	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	125
564	4	Sustantivo	gallina	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	126
568	4	Sustantivo	gallina	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	127
572	4	Sustantivo	gallina	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	128
485	5	Adjetivo	feo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	109
490	5	Adjetivo	flaco	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	110
495	5	Adjetivo	gordo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	111
505	5	Adjetivo	limpio	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	113
510	5	Adjetivo	pequeño	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	114
515	5	Adjetivo	sucio	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	115
538	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	120
543	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	121
547	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	122
551	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	123
555	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	124
559	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	125
563	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	126
567	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	127
571	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	128
660	5	Verbo	comiendo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	147
575	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	129
665	5	Verbo	corriendo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	148
579	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	130
670	5	Verbo	saltando	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	149
583	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	131
675	5	Verbo	tomando	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	150
587	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	132
605	5	Adjetivo	bonita	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	136
591	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	133
610	5	Adjetivo	dormida	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	137
595	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	134
620	5	Adjetivo	fea	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	139
599	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	135
625	5	Adjetivo	flaca	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	140
603	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	136
630	5	Adjetivo	gorda	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	141
608	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	137
640	5	Adjetivo	limpia	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	143
613	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	138
645	5	Adjetivo	pequeña	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	144
618	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	139
650	5	Adjetivo	sucia	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	145
623	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	140
615	5	Adjetivo	feliz	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	138
628	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	141
635	5	Adjetivo	grande	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	142
655	5	Adjetivo	triste	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	146
633	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	142
600	4	Sustantivo	gallina	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	135
604	4	Sustantivo	gallina	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	136
609	4	Sustantivo	gallina	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	137
614	4	Sustantivo	gallina	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	138
619	4	Sustantivo	gallina	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	139
624	4	Sustantivo	gallina	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	140
629	4	Sustantivo	gallina	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	141
598	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	135
602	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	136
607	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	137
612	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	138
617	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	139
622	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	140
627	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	141
632	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	142
637	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	143
642	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	144
647	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	145
652	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	146
657	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	147
662	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	148
667	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	149
672	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	150
677	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	151
681	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	152
685	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	153
689	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	154
693	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	155
697	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	156
634	4	Sustantivo	gallina	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	142
639	4	Sustantivo	gallina	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	143
644	4	Sustantivo	gallina	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	144
649	4	Sustantivo	gallina	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	145
654	4	Sustantivo	gallina	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	146
659	4	Sustantivo	gallina	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	147
664	4	Sustantivo	gallina	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	148
669	4	Sustantivo	gallina	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	149
674	4	Sustantivo	gallina	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	150
679	4	Sustantivo	gato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	151
683	4	Sustantivo	gato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	152
687	4	Sustantivo	gato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	153
691	4	Sustantivo	gato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	154
695	4	Sustantivo	gato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	155
638	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	143
643	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	144
648	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	145
653	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	146
658	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	147
663	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	148
795	5	Verbo	comiendo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	177
668	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	149
800	5	Verbo	corriendo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	178
673	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	150
805	5	Verbo	saltando	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	179
678	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	151
810	5	Verbo	tomando	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	180
682	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	152
750	5	Adjetivo	feliz	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	168
686	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	153
770	5	Adjetivo	grande	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	172
690	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	154
790	5	Adjetivo	triste	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	176
694	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	155
698	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	156
702	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	157
706	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	158
710	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	159
714	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	160
718	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	161
722	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	162
726	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	163
730	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	164
734	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	165
719	4	Sustantivo	gato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	161
723	4	Sustantivo	gato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	162
727	4	Sustantivo	gato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	163
731	4	Sustantivo	gato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	164
735	4	Sustantivo	gato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	165
739	4	Sustantivo	gato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	166
744	4	Sustantivo	gato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	167
749	4	Sustantivo	gato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	168
717	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	161
721	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	162
725	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	163
729	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	164
733	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	165
737	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	166
742	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	167
747	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	168
752	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	169
757	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	170
762	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	171
767	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	172
772	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	173
777	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	174
782	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	175
787	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	176
792	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	177
797	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	178
802	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	179
807	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	180
812	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	181
816	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	182
754	4	Sustantivo	gato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	169
759	4	Sustantivo	gato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	170
764	4	Sustantivo	gato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	171
769	4	Sustantivo	gato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	172
774	4	Sustantivo	gato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	173
779	4	Sustantivo	gato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	174
784	4	Sustantivo	gato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	175
789	4	Sustantivo	gato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	176
794	4	Sustantivo	gato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	177
799	4	Sustantivo	gato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	178
804	4	Sustantivo	gato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	179
809	4	Sustantivo	gato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	180
814	4	Sustantivo	mariposa	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	181
818	4	Sustantivo	mariposa	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	182
740	5	Adjetivo	bonito	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	166
745	5	Adjetivo	dormido	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	167
755	5	Adjetivo	feo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	169
760	5	Adjetivo	flaco	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	170
765	5	Adjetivo	gordo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	171
775	5	Adjetivo	limpio	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	173
780	5	Adjetivo	pequeño	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	174
785	5	Adjetivo	sucio	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	175
738	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	166
743	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	167
748	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	168
930	5	Verbo	comiendo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	207
753	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	169
935	5	Verbo	saltando	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	208
758	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	170
940	5	Verbo	tomando	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	209
763	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	171
945	5	Verbo	volando	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	210
768	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	172
875	5	Adjetivo	bonita	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	196
773	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	173
880	5	Adjetivo	dormida	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	197
778	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	174
890	5	Adjetivo	fea	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	199
783	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	175
895	5	Adjetivo	flaca	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	200
788	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	176
900	5	Adjetivo	gorda	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	201
793	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	177
910	5	Adjetivo	limpia	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	203
798	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	178
915	5	Adjetivo	pequeña	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	204
803	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	179
920	5	Adjetivo	sucia	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	205
808	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	180
885	5	Adjetivo	feliz	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	198
813	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	181
905	5	Adjetivo	grande	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	202
817	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	182
925	5	Adjetivo	triste	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	206
821	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	183
825	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	184
829	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	185
833	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	186
837	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	187
841	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	188
834	4	Sustantivo	mariposa	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	186
838	4	Sustantivo	mariposa	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	187
842	4	Sustantivo	mariposa	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	188
846	4	Sustantivo	mariposa	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	189
850	4	Sustantivo	mariposa	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	190
854	4	Sustantivo	mariposa	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	191
836	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	187
840	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	188
844	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	189
848	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	190
852	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	191
856	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	192
860	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	193
864	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	194
868	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	195
872	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	196
877	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	197
882	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	198
887	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	199
892	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	200
897	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	201
902	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	202
907	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	203
912	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	204
917	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	205
922	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	206
927	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	207
858	4	Sustantivo	mariposa	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	192
862	4	Sustantivo	mariposa	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	193
866	4	Sustantivo	mariposa	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	194
870	4	Sustantivo	mariposa	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	195
874	4	Sustantivo	mariposa	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	196
879	4	Sustantivo	mariposa	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	197
884	4	Sustantivo	mariposa	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	198
889	4	Sustantivo	mariposa	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	199
894	4	Sustantivo	mariposa	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	200
899	4	Sustantivo	mariposa	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	201
904	4	Sustantivo	mariposa	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	202
909	4	Sustantivo	mariposa	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	203
914	4	Sustantivo	mariposa	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	204
845	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	189
1065	5	Verbo	comiendo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	237
849	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	190
1010	5	Adjetivo	bonita	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	226
853	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	191
1015	5	Adjetivo	dormida	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	227
857	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	192
1025	5	Adjetivo	fea	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	229
861	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	193
1030	5	Adjetivo	flaca	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	230
865	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	194
1035	5	Adjetivo	gorda	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	231
869	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	195
1045	5	Adjetivo	limpia	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	233
873	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	196
1050	5	Adjetivo	pequeña	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	234
878	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	197
1055	5	Adjetivo	sucia	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	235
883	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	198
1020	5	Adjetivo	feliz	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	228
888	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	199
1040	5	Adjetivo	grande	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	232
893	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	200
1060	5	Adjetivo	triste	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	236
898	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	201
903	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	202
908	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	203
913	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	204
918	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	205
923	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	206
928	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	207
933	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	208
938	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	209
943	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	210
948	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	211
952	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	212
953	4	Sustantivo	oveja	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	212
957	4	Sustantivo	oveja	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	213
961	4	Sustantivo	oveja	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	214
965	4	Sustantivo	oveja	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	215
969	4	Sustantivo	oveja	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	216
973	4	Sustantivo	oveja	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	217
977	4	Sustantivo	oveja	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	218
951	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	212
955	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	213
959	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	214
963	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	215
967	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	216
971	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	217
975	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	218
979	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	219
983	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	220
987	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	221
991	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	222
995	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	223
999	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	224
1003	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	225
1007	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	226
1012	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	227
1017	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	228
1022	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	229
1027	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	230
1032	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	231
1037	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	232
1042	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	233
981	4	Sustantivo	oveja	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	219
985	4	Sustantivo	oveja	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	220
989	4	Sustantivo	oveja	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	221
993	4	Sustantivo	oveja	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	222
997	4	Sustantivo	oveja	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	223
1001	4	Sustantivo	oveja	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	224
1005	4	Sustantivo	oveja	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	225
1009	4	Sustantivo	oveja	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	226
1014	4	Sustantivo	oveja	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	227
1019	4	Sustantivo	oveja	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	228
1024	4	Sustantivo	oveja	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	229
1029	4	Sustantivo	oveja	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	230
1034	4	Sustantivo	oveja	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	231
1039	4	Sustantivo	oveja	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	232
956	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	213
1070	5	Verbo	corriendo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	238
960	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	214
1075	5	Verbo	saltando	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	239
964	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	215
1080	5	Verbo	tomando	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	240
968	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	216
1155	5	Adjetivo	feliz	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	258
972	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	217
1175	5	Adjetivo	grande	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	262
976	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	218
980	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	219
984	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	220
988	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	221
992	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	222
996	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	223
1000	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	224
1004	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	225
1008	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	226
1013	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	227
1018	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	228
1023	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	229
1028	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	230
1033	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	231
1038	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	232
1043	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	233
1048	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	234
1053	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	235
1058	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	236
1074	4	Sustantivo	oveja	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	239
1079	4	Sustantivo	oveja	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	240
1084	4	Sustantivo	pájaro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	241
1088	4	Sustantivo	pájaro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	242
1092	4	Sustantivo	pájaro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	243
1096	4	Sustantivo	pájaro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	244
1100	4	Sustantivo	pájaro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	245
1072	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	239
1077	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	240
1082	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	241
1086	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	242
1090	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	243
1094	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	244
1098	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	245
1102	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	246
1106	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	247
1110	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	248
1114	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	249
1118	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	250
1122	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	251
1126	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	252
1130	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	253
1134	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	254
1138	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	255
1142	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	256
1147	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	257
1152	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	258
1157	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	259
1162	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	260
1167	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	261
1104	4	Sustantivo	pájaro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	246
1108	4	Sustantivo	pájaro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	247
1112	4	Sustantivo	pájaro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	248
1116	4	Sustantivo	pájaro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	249
1120	4	Sustantivo	pájaro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	250
1124	4	Sustantivo	pájaro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	251
1128	4	Sustantivo	pájaro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	252
1132	4	Sustantivo	pájaro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	253
1136	4	Sustantivo	pájaro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	254
1140	4	Sustantivo	pájaro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	255
1144	4	Sustantivo	pájaro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	256
1149	4	Sustantivo	pájaro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	257
1154	4	Sustantivo	pájaro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	258
1159	4	Sustantivo	pájaro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	259
1145	5	Adjetivo	bonito	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	256
1150	5	Adjetivo	dormido	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	257
1160	5	Adjetivo	feo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	259
1165	5	Adjetivo	flaco	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	260
1170	5	Adjetivo	gordo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	261
1180	5	Adjetivo	limpio	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	263
1185	5	Adjetivo	pequeño	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	264
1063	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	237
1200	5	Verbo	comiendo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	267
1068	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	238
1205	5	Verbo	corriendo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	268
1073	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	239
1210	5	Verbo	saltando	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	269
1078	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	240
1215	5	Verbo	tomando	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	270
1083	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	241
1195	5	Adjetivo	triste	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	266
1087	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	242
1290	5	Adjetivo	feliz	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	288
1091	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	243
1095	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	244
1099	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	245
1103	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	246
1107	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	247
1111	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	248
1115	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	249
1119	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	250
1123	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	251
1127	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	252
1131	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	253
1135	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	254
1139	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	255
1143	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	256
1148	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	257
1153	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	258
1158	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	259
1163	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	260
1189	4	Sustantivo	pájaro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	265
1194	4	Sustantivo	pájaro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	266
1199	4	Sustantivo	pájaro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	267
1204	4	Sustantivo	pájaro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	268
1209	4	Sustantivo	pájaro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	269
1214	4	Sustantivo	pájaro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	270
1219	4	Sustantivo	pato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	271
1192	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	266
1197	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	267
1202	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	268
1207	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	269
1212	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	270
1217	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	271
1221	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	272
1225	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	273
1229	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	274
1233	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	275
1237	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	276
1241	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	277
1245	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	278
1249	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	279
1253	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	280
1257	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	281
1261	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	282
1265	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	283
1269	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	284
1273	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	285
1277	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	286
1282	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	287
1287	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	288
1223	4	Sustantivo	pato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	272
1227	4	Sustantivo	pato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	273
1231	4	Sustantivo	pato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	274
1235	4	Sustantivo	pato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	275
1239	4	Sustantivo	pato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	276
1243	4	Sustantivo	pato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	277
1247	4	Sustantivo	pato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	278
1251	4	Sustantivo	pato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	279
1255	4	Sustantivo	pato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	280
1259	4	Sustantivo	pato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	281
1263	4	Sustantivo	pato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	282
1267	4	Sustantivo	pato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	283
1271	4	Sustantivo	pato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	284
1275	4	Sustantivo	pato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	285
1279	4	Sustantivo	pato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	286
1190	5	Adjetivo	sucio	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	265
1280	5	Adjetivo	bonito	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	286
1285	5	Adjetivo	dormido	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	287
1295	5	Adjetivo	feo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	289
1300	5	Adjetivo	flaco	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	290
1305	5	Adjetivo	gordo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	291
1335	5	Verbo	comiendo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	297
1168	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	261
1340	5	Verbo	corriendo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	298
1173	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	262
1345	5	Verbo	nadando	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	299
1178	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	263
1350	5	Verbo	tomando	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	300
1183	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	264
1310	5	Adjetivo	grande	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	292
1188	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	265
1330	5	Adjetivo	triste	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	296
1193	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	266
1425	5	Adjetivo	feliz	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	318
1198	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	267
1203	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	268
1208	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	269
1213	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	270
1218	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	271
1222	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	272
1226	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	273
1230	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	274
1234	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	275
1238	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	276
1242	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	277
1246	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	278
1250	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	279
1254	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	280
1258	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	281
1262	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	282
1266	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	283
1309	4	Sustantivo	pato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	292
1314	4	Sustantivo	pato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	293
1319	4	Sustantivo	pato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	294
1324	4	Sustantivo	pato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	295
1329	4	Sustantivo	pato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	296
1334	4	Sustantivo	pato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	297
1339	4	Sustantivo	pato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	298
1312	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	293
1317	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	294
1322	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	295
1327	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	296
1332	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	297
1337	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	298
1342	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	299
1347	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	300
1352	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	301
1356	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	302
1360	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	303
1364	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	304
1368	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	305
1372	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	306
1376	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	307
1380	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	308
1384	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	309
1388	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	310
1392	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	311
1396	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	312
1400	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	313
1404	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	314
1408	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	315
1344	4	Sustantivo	pato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	299
1349	4	Sustantivo	pato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	300
1354	4	Sustantivo	perro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	301
1358	4	Sustantivo	perro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	302
1362	4	Sustantivo	perro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	303
1366	4	Sustantivo	perro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	304
1370	4	Sustantivo	perro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	305
1374	4	Sustantivo	perro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	306
1378	4	Sustantivo	perro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	307
1382	4	Sustantivo	perro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	308
1386	4	Sustantivo	perro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	309
1390	4	Sustantivo	perro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	310
1394	4	Sustantivo	perro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	311
1398	4	Sustantivo	perro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	312
1402	4	Sustantivo	perro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	313
1315	5	Adjetivo	limpio	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	293
1320	5	Adjetivo	pequeño	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	294
1325	5	Adjetivo	sucio	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	295
1415	5	Adjetivo	bonito	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	316
1420	5	Adjetivo	dormido	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	317
1470	5	Verbo	comiendo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	327
1270	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	284
1475	5	Verbo	corriendo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	328
1274	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	285
1480	5	Verbo	saltando	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	329
1278	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	286
1485	5	Verbo	tomando	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	330
1283	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	287
1445	5	Adjetivo	grande	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	322
1288	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	288
1465	5	Adjetivo	triste	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	326
1293	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	289
1298	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	290
1303	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	291
1308	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	292
1313	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	293
1318	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	294
1323	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	295
1328	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	296
1333	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	297
1338	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	298
1343	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	299
1348	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	300
1353	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	301
1357	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	302
1361	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	303
1365	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	304
1369	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	305
1373	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	306
1377	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	307
1429	4	Sustantivo	perro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	319
1434	4	Sustantivo	perro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	320
1439	4	Sustantivo	perro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	321
1444	4	Sustantivo	perro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	322
1449	4	Sustantivo	perro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	323
1454	4	Sustantivo	perro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	324
1459	4	Sustantivo	perro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	325
1427	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	319
1432	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	320
1437	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	321
1442	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	322
1447	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	323
1452	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	324
1457	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	325
1462	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	326
1467	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	327
1472	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	328
1477	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	329
1482	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	330
1487	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	331
1491	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	332
1495	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	333
1499	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	334
1503	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	335
1507	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	336
1511	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	337
1515	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	338
1519	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	339
1523	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	340
1464	4	Sustantivo	perro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	326
1469	4	Sustantivo	perro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	327
1474	4	Sustantivo	perro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	328
1479	4	Sustantivo	perro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	329
1484	4	Sustantivo	perro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	330
1489	4	Sustantivo	pollo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	331
1493	4	Sustantivo	pollo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	332
1497	4	Sustantivo	pollo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	333
1501	4	Sustantivo	pollo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	334
1505	4	Sustantivo	pollo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	335
1509	4	Sustantivo	pollo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	336
1513	4	Sustantivo	pollo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	337
1517	4	Sustantivo	pollo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	338
1521	4	Sustantivo	pollo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	339
1430	5	Adjetivo	feo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	319
1435	5	Adjetivo	flaco	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	320
1440	5	Adjetivo	gordo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	321
1450	5	Adjetivo	limpio	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	323
1455	5	Adjetivo	pequeño	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	324
1460	5	Adjetivo	sucio	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	325
1381	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	308
1605	5	Verbo	comiendo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	357
1385	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	309
1610	5	Verbo	corriendo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	358
1389	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	310
1615	5	Verbo	saltando	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	359
1393	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	311
1620	5	Verbo	tomando	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	360
1397	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	312
1560	5	Adjetivo	feliz	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	348
1401	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	313
1580	5	Adjetivo	grande	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	352
1405	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	314
1600	5	Adjetivo	triste	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	356
1409	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	315
1413	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	316
1418	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	317
1423	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	318
1428	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	319
1433	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	320
1438	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	321
1443	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	322
1448	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	323
1453	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	324
1458	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	325
1463	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	326
1468	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	327
1473	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	328
1478	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	329
1483	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	330
1549	4	Sustantivo	pollo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	346
1554	4	Sustantivo	pollo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	347
1559	4	Sustantivo	pollo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	348
1564	4	Sustantivo	pollo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	349
1569	4	Sustantivo	pollo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	350
1574	4	Sustantivo	pollo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	351
1579	4	Sustantivo	pollo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	352
1547	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	346
1552	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	347
1557	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	348
1562	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	349
1567	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	350
1572	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	351
1577	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	352
1582	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	353
1587	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	354
1592	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	355
1597	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	356
1602	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	357
1607	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	358
1612	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	359
1617	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	360
1622	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	361
1626	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	362
1630	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	363
1634	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	364
1638	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	365
1642	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	366
1646	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	367
1584	4	Sustantivo	pollo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	353
1589	4	Sustantivo	pollo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	354
1594	4	Sustantivo	pollo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	355
1599	4	Sustantivo	pollo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	356
1604	4	Sustantivo	pollo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	357
1609	4	Sustantivo	pollo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	358
1614	4	Sustantivo	pollo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	359
1619	4	Sustantivo	pollo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	360
1624	4	Sustantivo	ratón	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	361
1628	4	Sustantivo	ratón	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	362
1632	4	Sustantivo	ratón	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	363
1636	4	Sustantivo	ratón	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	364
1640	4	Sustantivo	ratón	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	365
1550	5	Adjetivo	bonito	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	346
1555	5	Adjetivo	dormido	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	347
1565	5	Adjetivo	feo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	349
1570	5	Adjetivo	flaco	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	350
1575	5	Adjetivo	gordo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	351
1585	5	Adjetivo	limpio	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	353
1590	5	Adjetivo	pequeño	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	354
1595	5	Adjetivo	sucio	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	355
1488	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	331
1740	5	Verbo	comiendo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	387
1492	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	332
1750	5	Verbo	saltando	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	389
1496	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	333
1755	5	Verbo	tomando	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	390
1500	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	334
1695	5	Adjetivo	feliz	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	378
1504	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	335
1715	5	Adjetivo	grande	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	382
1508	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	336
1735	5	Adjetivo	triste	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	386
1512	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	337
1516	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	338
1520	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	339
1524	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	340
1528	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	341
1532	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	342
1536	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	343
1540	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	344
1544	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	345
1548	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	346
1553	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	347
1558	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	348
1563	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	349
1568	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	350
1573	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	351
1578	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	352
1583	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	353
1668	4	Sustantivo	ratón	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	372
1745	5	Verbo	corriendo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	388
1672	4	Sustantivo	ratón	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	373
1676	4	Sustantivo	ratón	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	374
1680	4	Sustantivo	ratón	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	375
1684	4	Sustantivo	ratón	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	376
1689	4	Sustantivo	ratón	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	377
1694	4	Sustantivo	ratón	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	378
1666	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	372
1670	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	373
1674	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	374
1678	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	375
1682	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	376
1687	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	377
1692	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	378
1697	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	379
1702	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	380
1707	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	381
1712	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	382
1717	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	383
1722	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	384
1727	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	385
1732	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	386
1737	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	387
1742	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	388
1747	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	389
1752	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	390
1757	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	391
1761	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	392
1765	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	393
1699	4	Sustantivo	ratón	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	379
1704	4	Sustantivo	ratón	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	380
1709	4	Sustantivo	ratón	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	381
1714	4	Sustantivo	ratón	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	382
1719	4	Sustantivo	ratón	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	383
1724	4	Sustantivo	ratón	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	384
1729	4	Sustantivo	ratón	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	385
1734	4	Sustantivo	ratón	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	386
1739	4	Sustantivo	ratón	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	387
1744	4	Sustantivo	ratón	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	388
1749	4	Sustantivo	ratón	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	389
1754	4	Sustantivo	ratón	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	390
1759	4	Sustantivo	toro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	391
1685	5	Adjetivo	bonito	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	376
1690	5	Adjetivo	dormido	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	377
1700	5	Adjetivo	feo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	379
1705	5	Adjetivo	flaco	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	380
1710	5	Adjetivo	gordo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	381
1720	5	Adjetivo	limpio	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	383
1725	5	Adjetivo	pequeño	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	384
1730	5	Adjetivo	sucio	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	385
1588	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	354
1875	5	Verbo	comiendo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	417
1593	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	355
1880	5	Verbo	corriendo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	418
1598	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	356
1885	5	Verbo	saltando	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	419
1603	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	357
1890	5	Verbo	tomando	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	420
1608	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	358
1830	5	Adjetivo	feliz	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	408
1613	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	359
1850	5	Adjetivo	grande	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	412
1618	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	360
1870	5	Adjetivo	triste	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	416
1623	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	361
1627	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	362
1631	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	363
1635	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	364
1639	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	365
1643	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	366
1647	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	367
1651	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	368
1655	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	369
1659	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	370
1663	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	371
1667	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	372
1671	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	373
1675	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	374
1679	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	375
1683	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	376
1787	4	Sustantivo	toro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	398
1791	4	Sustantivo	toro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	399
1795	4	Sustantivo	toro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	400
1799	4	Sustantivo	toro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	401
1803	4	Sustantivo	toro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	402
1807	4	Sustantivo	toro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	403
1811	4	Sustantivo	toro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	404
1785	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	398
1789	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	399
1793	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	400
1797	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	401
1801	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	402
1805	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	403
1809	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	404
1813	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	405
1817	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	406
1822	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	407
1827	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	408
1832	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	409
1837	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	410
1842	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	411
1847	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	412
1852	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	413
1857	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	414
1862	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	415
1867	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	416
1872	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	417
1877	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	418
1882	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	419
1815	4	Sustantivo	toro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	405
1819	4	Sustantivo	toro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	406
1824	4	Sustantivo	toro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	407
1829	4	Sustantivo	toro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	408
1834	4	Sustantivo	toro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	409
1839	4	Sustantivo	toro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	410
1844	4	Sustantivo	toro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	411
1849	4	Sustantivo	toro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	412
1854	4	Sustantivo	toro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	413
1859	4	Sustantivo	toro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	414
1864	4	Sustantivo	toro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	415
1869	4	Sustantivo	toro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	416
1874	4	Sustantivo	toro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	417
1879	4	Sustantivo	toro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	418
1884	4	Sustantivo	toro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	419
1820	5	Adjetivo	bonito	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	406
1825	5	Adjetivo	dormido	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	407
1835	5	Adjetivo	feo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	409
1840	5	Adjetivo	flaco	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	410
1845	5	Adjetivo	gordo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	411
1855	5	Adjetivo	limpio	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	413
1860	5	Adjetivo	pequeño	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	414
1865	5	Adjetivo	sucio	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	415
1688	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	377
2014	5	Verbo	comiendo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	448
1693	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	378
2019	5	Verbo	corriendo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	449
1698	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	379
1959	5	Adjetivo	bonita	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	437
1703	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	380
1964	5	Adjetivo	dormida	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	438
1708	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	381
1974	5	Adjetivo	fea	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	440
1713	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	382
1979	5	Adjetivo	flaca	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	441
1718	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	383
1984	5	Adjetivo	gorda	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	442
1723	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	384
1994	5	Adjetivo	limpia	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	444
1728	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	385
1999	5	Adjetivo	pequeña	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	445
1733	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	386
2004	5	Adjetivo	sucia	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	446
1738	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	387
1969	5	Adjetivo	feliz	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	439
1743	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	388
1989	5	Adjetivo	grande	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	443
1748	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	389
2009	5	Adjetivo	triste	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	447
1753	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	390
1758	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	391
1762	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	392
1766	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	393
1770	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	394
1774	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	395
1778	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	396
1782	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	397
1786	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	398
1790	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	399
1794	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	400
1906	4	Sustantivo	tortuga	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	424
1910	4	Sustantivo	tortuga	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	425
1914	4	Sustantivo	tortuga	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	426
1918	4	Sustantivo	tortuga	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	427
1922	4	Sustantivo	tortuga	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	428
1926	4	Sustantivo	tortuga	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	429
1930	4	Sustantivo	tortuga	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	430
1904	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	424
1908	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	425
1912	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	426
1916	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	427
1920	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	428
1924	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	429
1928	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	430
1932	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	431
1936	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	432
1940	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	433
1944	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	434
1948	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	435
1952	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	436
1956	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	437
1961	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	438
1966	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	439
1971	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	440
1976	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	441
1981	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	442
1986	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	443
1991	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	444
1996	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	445
2001	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	446
1934	4	Sustantivo	tortuga	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	431
1938	4	Sustantivo	tortuga	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	432
1942	4	Sustantivo	tortuga	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	433
1946	4	Sustantivo	tortuga	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	434
1950	4	Sustantivo	tortuga	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	435
1954	4	Sustantivo	tortuga	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	436
1958	4	Sustantivo	tortuga	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	437
1963	4	Sustantivo	tortuga	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	438
1968	4	Sustantivo	tortuga	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	439
1973	4	Sustantivo	tortuga	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	440
1978	4	Sustantivo	tortuga	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	441
1983	4	Sustantivo	tortuga	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	442
1988	4	Sustantivo	tortuga	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	443
2024	5	Verbo	nadando	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	450
1798	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	401
2029	5	Verbo	saltando	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	451
1802	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	402
2034	5	Verbo	tomando	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	452
1806	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	403
2099	5	Adjetivo	bonita	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	468
1810	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	404
2104	5	Adjetivo	dormida	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	469
1814	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	405
2114	5	Adjetivo	fea	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	471
1818	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	406
2119	5	Adjetivo	flaca	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	472
1823	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	407
2124	5	Adjetivo	gorda	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	473
1828	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	408
2134	5	Adjetivo	limpia	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	475
1833	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	409
2139	5	Adjetivo	pequeña	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	476
1838	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	410
2109	5	Adjetivo	feliz	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	470
1843	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	411
2129	5	Adjetivo	grande	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	474
1848	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	412
1853	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	413
1858	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	414
1863	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	415
1868	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	416
1873	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	417
1878	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	418
1883	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	419
1888	3	Artículo	un	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	420
1893	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	421
1897	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	422
1901	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	423
2023	4	Sustantivo	tortuga	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	450
2028	4	Sustantivo	tortuga	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	451
2033	4	Sustantivo	tortuga	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	452
2038	4	Sustantivo	vaca	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	453
2042	4	Sustantivo	vaca	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	454
2046	4	Sustantivo	vaca	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	455
2050	4	Sustantivo	vaca	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	456
2026	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	451
2031	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	452
2036	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	453
2040	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	454
2044	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	455
2048	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	456
2052	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	457
2056	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	458
2060	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	459
2064	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	460
2068	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	461
2072	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	462
2076	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	463
2080	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	464
2084	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	465
2088	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	466
2092	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	467
2096	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	468
2101	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	469
2106	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	470
2111	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	471
2116	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	472
2121	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	473
2054	4	Sustantivo	vaca	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	457
2058	4	Sustantivo	vaca	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	458
2062	4	Sustantivo	vaca	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	459
2066	4	Sustantivo	vaca	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	460
2070	4	Sustantivo	vaca	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	461
2074	4	Sustantivo	vaca	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	462
2078	4	Sustantivo	vaca	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	463
2082	4	Sustantivo	vaca	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	464
2086	4	Sustantivo	vaca	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	465
2090	4	Sustantivo	vaca	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	466
2094	4	Sustantivo	vaca	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	467
2098	4	Sustantivo	vaca	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	468
2103	4	Sustantivo	vaca	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	469
2108	4	Sustantivo	vaca	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	470
2113	4	Sustantivo	vaca	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	471
2118	4	Sustantivo	vaca	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	472
2154	5	Verbo	comiendo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	479
1905	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	424
2159	5	Verbo	corriendo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	480
1909	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	425
2164	5	Verbo	saltando	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	481
1913	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	426
2169	5	Verbo	tomando	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	482
1917	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	427
1921	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	428
2144	5	Adjetivo	sucia	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	477
2143	4	Sustantivo	vaca	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	477
2148	4	Sustantivo	vaca	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	478
2149	5	Adjetivo	triste	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	478
1	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	1
5	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	2
9	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	3
13	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	4
17	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	5
21	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	6
25	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	7
29	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	8
33	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	9
37	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	10
41	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	11
45	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	12
49	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	13
53	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	14
57	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	15
61	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	16
66	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	17
71	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	18
76	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	19
81	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	20
86	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	21
91	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	22
96	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	23
101	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	24
106	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	25
111	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	26
116	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	27
121	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	28
126	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	29
131	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	30
136	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	31
140	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	32
144	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	33
148	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	34
152	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	35
156	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	36
160	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	37
164	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	38
168	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	39
172	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	40
176	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	41
180	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	42
184	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	43
188	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	44
192	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	45
196	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	46
201	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	47
206	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	48
211	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	49
216	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	50
221	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	51
226	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	52
231	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	53
236	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	54
241	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	55
246	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	56
251	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	57
256	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	58
261	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	59
266	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	60
271	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	61
275	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	62
279	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	63
283	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	64
287	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	65
291	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	66
295	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	67
299	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	68
303	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	69
307	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	70
311	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	71
315	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	72
319	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	73
323	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	74
327	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	75
331	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	76
336	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	77
341	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	78
346	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	79
351	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	80
356	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	81
2141	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	477
2146	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	478
2151	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	479
2156	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	480
2153	4	Sustantivo	vaca	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	479
2158	4	Sustantivo	vaca	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	480
2163	4	Sustantivo	vaca	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	481
361	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	82
366	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	83
371	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	84
376	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	85
381	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	86
386	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	87
391	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	88
396	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	89
401	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	90
406	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	91
410	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	92
414	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	93
418	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	94
422	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	95
426	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	96
430	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	97
434	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	98
438	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	99
442	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	100
446	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	101
450	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	102
454	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	103
458	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	104
462	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	105
466	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	106
471	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	107
476	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	108
481	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	109
486	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	110
491	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	111
496	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	112
501	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	113
506	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	114
511	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	115
516	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	116
521	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	117
526	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	118
531	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	119
536	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	120
541	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	121
545	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	122
549	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	123
553	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	124
557	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	125
561	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	126
565	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	127
569	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	128
573	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	129
577	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	130
581	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	131
585	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	132
589	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	133
593	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	134
597	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	135
601	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	136
606	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	137
611	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	138
616	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	139
621	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	140
626	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	141
631	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	142
636	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	143
641	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	144
646	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	145
651	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	146
656	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	147
661	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	148
666	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	149
671	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	150
676	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	151
680	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	152
684	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	153
688	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	154
692	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	155
696	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	156
700	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	157
704	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	158
708	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	159
712	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	160
716	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	161
720	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	162
724	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	163
728	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	164
732	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	165
736	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	166
741	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	167
746	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	168
751	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	169
756	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	170
761	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	171
766	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	172
771	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	173
776	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	174
781	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	175
786	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	176
791	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	177
796	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	178
801	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	179
806	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	180
811	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	181
815	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	182
819	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	183
823	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	184
827	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	185
831	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	186
950	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	212
835	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	187
839	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	188
843	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	189
847	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	190
851	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	191
855	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	192
859	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	193
863	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	194
867	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	195
871	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	196
876	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	197
881	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	198
886	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	199
891	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	200
896	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	201
901	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	202
906	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	203
911	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	204
916	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	205
921	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	206
926	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	207
931	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	208
936	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	209
941	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	210
946	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	211
954	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	213
958	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	214
962	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	215
966	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	216
970	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	217
974	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	218
978	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	219
982	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	220
986	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	221
990	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	222
994	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	223
998	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	224
1002	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	225
1006	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	226
1011	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	227
1016	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	228
1021	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	229
1026	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	230
1031	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	231
1036	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	232
1041	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	233
1046	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	234
1051	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	235
1056	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	236
1061	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	237
1066	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	238
1071	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	239
1076	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	240
1081	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	241
1085	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	242
1089	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	243
1093	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	244
1097	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	245
1101	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	246
1105	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	247
1109	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	248
1113	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	249
1117	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	250
1121	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	251
1125	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	252
1129	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	253
1133	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	254
1137	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	255
1141	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	256
1146	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	257
1151	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	258
1156	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	259
1161	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	260
1166	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	261
1171	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	262
1176	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	263
1181	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	264
1186	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	265
1191	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	266
1196	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	267
1201	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	268
1206	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	269
1211	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	270
1216	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	271
1220	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	272
1224	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	273
1228	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	274
1232	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	275
1236	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	276
1240	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	277
1244	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	278
1248	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	279
1252	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	280
1256	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	281
1260	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	282
1264	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	283
1268	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	284
1272	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	285
1276	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	286
1281	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	287
1286	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	288
1291	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	289
1296	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	290
1301	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	291
1306	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	292
1311	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	293
1316	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	294
1321	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	295
1326	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	296
1331	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	297
1336	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	298
1341	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	299
1346	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	300
1351	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	301
1355	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	302
1359	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	303
1363	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	304
1367	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	305
1371	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	306
1375	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	307
1379	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	308
1383	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	309
1387	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	310
1391	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	311
1395	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	312
1399	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	313
1403	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	314
1407	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	315
1411	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	316
1416	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	317
1421	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	318
1426	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	319
1431	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	320
1436	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	321
1441	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	322
1446	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	323
1451	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	324
1456	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	325
1461	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	326
1466	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	327
1471	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	328
1476	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	329
1481	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	330
1486	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	331
1490	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	332
1494	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	333
1498	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	334
1502	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	335
1506	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	336
1510	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	337
1514	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	338
1518	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	339
1522	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	340
1526	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	341
1530	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	342
1534	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	343
1538	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	344
1542	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	345
1546	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	346
1551	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	347
1556	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	348
1561	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	349
1566	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	350
1571	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	351
1576	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	352
1581	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	353
1586	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	354
1591	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	355
1596	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	356
1601	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	357
1606	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	358
1611	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	359
1616	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	360
1621	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	361
1625	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	362
1629	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	363
1633	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	364
1637	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	365
1641	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	366
1645	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	367
1649	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	368
1653	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	369
1657	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	370
1661	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	371
1665	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	372
1669	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	373
1673	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	374
1677	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	375
1681	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	376
1686	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	377
1691	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	378
1696	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	379
1701	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	380
1706	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	381
1711	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	382
1716	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	383
1721	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	384
1726	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	385
1731	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	386
1736	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	387
1741	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	388
1746	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	389
1751	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	390
1756	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	391
1760	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	392
1764	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	393
1768	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	394
1772	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	395
1776	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	396
1780	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	397
1784	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	398
1788	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	399
1792	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	400
1796	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	401
1800	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	402
1804	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	403
1808	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	404
1812	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	405
1816	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	406
1821	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	407
1826	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	408
1831	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	409
1836	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	410
1841	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	411
1846	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	412
1851	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	413
1856	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	414
1861	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	415
1866	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	416
1871	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	417
1876	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	418
1881	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	419
1886	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	420
1891	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	421
1895	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	422
1899	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	423
1903	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	424
1907	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	425
1911	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	426
1915	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	427
1919	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	428
1923	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	429
1927	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	430
1931	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	431
1935	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	432
1939	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	433
1943	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	434
1947	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	435
1951	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	436
1955	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	437
1960	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	438
1965	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	439
1970	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	440
1975	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	441
1980	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	442
1985	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	443
1990	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	444
1995	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	445
2000	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	446
2005	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	447
2010	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	448
2015	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	449
2020	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	450
2025	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	451
2030	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	452
2035	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	453
2039	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	454
2043	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	455
2047	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	456
2051	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	457
2055	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	458
2059	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	459
2063	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	460
2067	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	461
2071	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	462
2075	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	463
2079	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	464
2083	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	465
2087	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	466
2091	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	467
2095	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	468
2100	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	469
2105	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	470
2110	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	471
2115	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	472
2120	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	473
2125	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	474
2130	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	475
2135	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	476
2140	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	477
2145	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	478
2150	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	479
2155	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	480
2160	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	481
2165	1	Pronombre	Yo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	482
97	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	23
102	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	24
107	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	25
112	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	26
117	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	27
222	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	51
227	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	52
232	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	53
237	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	54
342	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	78
347	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	79
352	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	80
357	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	81
463	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	105
467	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	106
472	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	107
477	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	108
582	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	131
586	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	132
590	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	133
594	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	134
701	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	157
705	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	158
709	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	159
713	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	160
820	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	183
824	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	184
828	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	185
832	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	186
932	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	208
937	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	209
942	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	210
947	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	211
1047	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	234
1052	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	235
1057	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	236
1062	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	237
1067	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	238
1172	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	262
1177	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	263
1182	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	264
1187	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	265
1292	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	289
1297	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	290
1302	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	291
1307	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	292
1412	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	316
1417	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	317
1422	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	318
1527	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	341
1531	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	342
1535	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	343
1539	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	344
1543	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	345
1650	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	368
1654	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	369
1658	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	370
1662	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	371
1769	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	394
1773	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	395
1777	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	396
1781	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	397
1887	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	420
1892	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	421
1896	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	422
1900	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	423
2006	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	447
2011	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	448
2016	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	449
2021	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	450
2126	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	474
2131	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	475
2136	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	476
2161	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	481
2166	2	Verbo	tengo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	482
1925	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	429
1929	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	430
1933	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	431
1937	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	432
1941	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	433
1945	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	434
1949	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	435
1953	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	436
1957	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	437
1962	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	438
1967	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	439
1972	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	440
1977	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	441
1982	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	442
1987	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	443
1992	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	444
1997	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	445
2002	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	446
2007	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	447
2012	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	448
2017	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	449
2022	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	450
2027	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	451
2032	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	452
2037	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	453
2041	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	454
2045	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	455
2049	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	456
2053	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	457
2057	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	458
2061	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	459
2065	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	460
2069	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	461
2073	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	462
2077	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	463
2081	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	464
2085	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	465
2089	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	466
2093	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	467
2097	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	468
2102	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	469
2107	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	470
2112	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	471
2117	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	472
2122	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	473
2127	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	474
2132	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	475
2137	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	476
2142	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	477
2147	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	478
2152	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	479
2157	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	480
2162	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	481
2167	3	Artículo	una	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	482
94	4	Sustantivo	burro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	22
99	4	Sustantivo	burro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	23
104	4	Sustantivo	burro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	24
109	4	Sustantivo	burro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	25
114	4	Sustantivo	burro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	26
119	4	Sustantivo	burro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	27
239	4	Sustantivo	caballo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	54
214	4	Sustantivo	caballo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	49
219	4	Sustantivo	caballo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	50
224	4	Sustantivo	caballo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	51
229	4	Sustantivo	caballo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	52
234	4	Sustantivo	caballo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	53
334	4	Sustantivo	cerdo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	76
339	4	Sustantivo	cerdo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	77
344	4	Sustantivo	cerdo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	78
349	4	Sustantivo	cerdo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	79
354	4	Sustantivo	cerdo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	80
449	4	Sustantivo	conejo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	101
453	4	Sustantivo	conejo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	102
457	4	Sustantivo	conejo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	103
461	4	Sustantivo	conejo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	104
465	4	Sustantivo	conejo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	105
469	4	Sustantivo	conejo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	106
474	4	Sustantivo	conejo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	107
576	4	Sustantivo	gallina	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	129
580	4	Sustantivo	gallina	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	130
584	4	Sustantivo	gallina	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	131
588	4	Sustantivo	gallina	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	132
592	4	Sustantivo	gallina	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	133
596	4	Sustantivo	gallina	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	134
699	4	Sustantivo	gato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	156
703	4	Sustantivo	gato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	157
707	4	Sustantivo	gato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	158
711	4	Sustantivo	gato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	159
715	4	Sustantivo	gato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	160
822	4	Sustantivo	mariposa	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	183
826	4	Sustantivo	mariposa	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	184
830	4	Sustantivo	mariposa	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	185
919	4	Sustantivo	mariposa	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	205
924	4	Sustantivo	mariposa	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	206
929	4	Sustantivo	mariposa	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	207
934	4	Sustantivo	mariposa	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	208
939	4	Sustantivo	mariposa	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	209
944	4	Sustantivo	mariposa	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	210
949	4	Sustantivo	oveja	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	211
1044	4	Sustantivo	oveja	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	233
1049	4	Sustantivo	oveja	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	234
1054	4	Sustantivo	oveja	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	235
1059	4	Sustantivo	oveja	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	236
1064	4	Sustantivo	oveja	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	237
1069	4	Sustantivo	oveja	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	238
1164	4	Sustantivo	pájaro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	260
1169	4	Sustantivo	pájaro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	261
1174	4	Sustantivo	pájaro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	262
1179	4	Sustantivo	pájaro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	263
1184	4	Sustantivo	pájaro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	264
1284	4	Sustantivo	pato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	287
1289	4	Sustantivo	pato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	288
1294	4	Sustantivo	pato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	289
1299	4	Sustantivo	pato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	290
1304	4	Sustantivo	pato	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	291
1406	4	Sustantivo	perro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	314
1410	4	Sustantivo	perro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	315
1414	4	Sustantivo	perro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	316
1419	4	Sustantivo	perro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	317
1424	4	Sustantivo	perro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	318
1525	4	Sustantivo	pollo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	340
1529	4	Sustantivo	pollo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	341
1533	4	Sustantivo	pollo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	342
1537	4	Sustantivo	pollo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	343
1541	4	Sustantivo	pollo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	344
1545	4	Sustantivo	pollo	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	345
1644	4	Sustantivo	ratón	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	366
1648	4	Sustantivo	ratón	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	367
1652	4	Sustantivo	ratón	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	368
1656	4	Sustantivo	ratón	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	369
1660	4	Sustantivo	ratón	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	370
1664	4	Sustantivo	ratón	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	371
1763	4	Sustantivo	toro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	392
1767	4	Sustantivo	toro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	393
1771	4	Sustantivo	toro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	394
1775	4	Sustantivo	toro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	395
1779	4	Sustantivo	toro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	396
1783	4	Sustantivo	toro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	397
1889	4	Sustantivo	toro	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	420
1894	4	Sustantivo	tortuga	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	421
1898	4	Sustantivo	tortuga	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	422
1902	4	Sustantivo	tortuga	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	423
1993	4	Sustantivo	tortuga	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	444
1998	4	Sustantivo	tortuga	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	445
2003	4	Sustantivo	tortuga	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	446
2008	4	Sustantivo	tortuga	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	447
2013	4	Sustantivo	tortuga	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	448
2018	4	Sustantivo	tortuga	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	449
2123	4	Sustantivo	vaca	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	473
2128	4	Sustantivo	vaca	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	474
2133	4	Sustantivo	vaca	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	475
2138	4	Sustantivo	vaca	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	476
2168	4	Sustantivo	vaca	2020-04-21 00:00:00-05	2020-04-21 00:00:00-05	482
\.


--
-- TOC entry 3314 (class 0 OID 39756)
-- Dependencies: 206
-- Data for Name: Domino_Components; Type: TABLE DATA; Schema: domino; Owner: postgres
--

COPY domino."Domino_Components" (id, name, file_type, from_path, to_path, "createdAt", "updatedAt") FROM stdin;
1	bonus.mp3	audio	/assets/audios	/audios	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
2	match.mp3	audio	/assets/audios	/audios	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
3	missmatch.mp3	audio	/assets/audios	/audios	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
4	avatar_a_default_thumbnail.png	image	/assets/images	/images	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
6	checked.png	image	/assets/images	/images	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
7	end_background.png	image	/assets/images	/images	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
8	pause.png	image	/assets/images	/images	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
9	play.png	image	/assets/images	/images	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
10	repeat.png	image	/assets/images	/images	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
11	sound_disabled.png	image	/assets/images	/images	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
12	sound_enabled.png	image	/assets/images	/images	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
13	star.png	image	/assets/images	/images	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
14	unchecked.png	image	/assets/images	/images	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
15	validation_background.png	image	/assets/images	/images	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
16	game.js	script	/assets/scripts	/scripts	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
17	CardFactory.js	script	/assets/scripts/factories	/scripts/factories	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
18	ApiRequest.js	script	/assets/scripts/main	/scripts/main	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
19	AudioPlayer.js	script	/assets/scripts/main	/scripts/main	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
20	GameData.js	script	/assets/scripts/main	/scripts/main	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
21	GameObject.js	script	/assets/scripts/main	/scripts/main	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
22	GameObjectAvatar.js	script	/assets/scripts/main	/scripts/main	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
23	GameObjectButton.js	script	/assets/scripts/main	/scripts/main	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
24	GameObjectCard.js	script	/assets/scripts/main	/scripts/main	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
25	GameObjectCheck.js	script	/assets/scripts/main	/scripts/main	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
26	GameObjectDeck.js	script	/assets/scripts/main	/scripts/main	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
27	GameObjectModal.js	script	/assets/scripts/main	/scripts/main	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
28	GameObjectOptions.js	script	/assets/scripts/main	/scripts/main	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
29	GameObjectPlayer.js	script	/assets/scripts/main	/scripts/main	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
30	GameObjectScore.js	script	/assets/scripts/main	/scripts/main	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
31	Speaker.js	script	/assets/scripts/main	/scripts/main	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
32	Sprite.js	script	/assets/scripts/main	/scripts/main	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
33	DominoCardFactoryStrategy.js	script	/assets/scripts/strategies	/scripts/strategies	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
34	DominoCardStrategy.js	script	/assets/scripts/strategies	/scripts/strategies	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
35	EndGameModalStrategy.js	script	/assets/scripts/strategies	/scripts/strategies	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
36	StartGameModalStrategy.js	script	/assets/scripts/strategies	/scripts/strategies	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
37	TwoDimensionMovementStrategy.js	script	/assets/scripts/strategies	/scripts/strategies	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
38	ValidationModalStrategy.js	script	/assets/scripts/strategies	/scripts/strategies	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
39	GameScene.js	script	/assets/scripts/templates	/scripts/templates	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
40	GameSceneDomino.js	script	/assets/scripts/templates	/scripts/templates	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
41	constants.js	script	/assets/scripts/utils	/scripts/utils	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
42	utilities.js	script	/assets/scripts/utils	/scripts/utils	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
43	variability.js	script	/assets/scripts/utils	/scripts/utils	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
44	arrow_flip.png	image	/assets/images	/images	2020-10-15 00:00:00-05	2020-10-15 00:00:00-05
45	domino_back.png	image	/assets/images	/images	2020-10-15 00:00:00-05	2020-10-15 00:00:00-05
46	message_disabled.png	image	/assets/images	/images	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
47	message_enabled.png	image	/assets/images	/images	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
5	am1_cafe_negro_azul.png	image	/assets/images	/images	2020-10-13 00:00:00-05	2020-10-13 00:00:00-05
\.


--
-- TOC entry 3325 (class 0 OID 39874)
-- Dependencies: 217
-- Data for Name: Activities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Activities" (id, name, description, logo_path, "createdAt", "updatedAt") FROM stdin;
1	Dominó Domésticos	El Dominó Domésticos	/images/activities/domino_domesticos.png	2020-03-30 00:00:00-05	2020-03-30 00:00:00-05
2	Bañando al bebé	Bañando al bebé	/images/activities/banando_bebe.png	2020-04-02 00:00:00-05	2020-04-02 00:00:00-05
3	Camino al colegio	Camino al colegio	/images/activities/camino_colegio.png	2020-04-02 00:00:00-05	2020-04-02 00:00:00-05
4	Cumpliendo años	Cumpliendo años	/images/activities/cumpliendo_anos.png	2020-04-02 00:00:00-05	2020-04-02 00:00:00-05
5	Paseando al perrito	Paseando al perrito	/images/activities/paseando_perrito.png	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05
6	El ratón Pérez	El ratón Pérez	/images/activities/raton_perez.png	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05
7	Elevando cometa	Elevando cometa	/images/activities/elevando_cometa.png	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05
8	Paseo a la playa	Paseo a la playa	/images/activities/paseo_playa.png	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05
9	En la piscina con mamá	En la piscina con mamá	/images/activities/piscina_mama.png	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05
10	Un día de natación	Un día de natación	/images/activities/dia_natacion.png	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05
11	Ordenando el cuarto	Ordenando el cuarto	/images/activities/ordenando_cuarto.png	2021-01-18 00:00:00-05	2021-01-18 00:00:00-05
\.


--
-- TOC entry 3326 (class 0 OID 39882)
-- Dependencies: 218
-- Data for Name: Mechanics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Mechanics" (id, name, pdf_path, semantic_description, tutorial_path, "createdAt", "updatedAt") FROM stdin;
1	Dominó	/pdfs/domino.pdf	1	/videos/tutorial_domino.mp4	2020-03-30 00:00:00-05	2020-03-30 00:00:00-05
2	Ordenando	/pdfs/ordenando.pdf	1	/videos/tutorial_ordenando.mp4	2020-04-02 00:00:00-05	2020-04-02 00:00:00-05
3	Secuencia	/pdfs/secuencia.pdf	2	/videos/tutorial_secuencia.mp4	2020-04-02 00:00:00-05	2020-04-02 00:00:00-05
\.


--
-- TOC entry 3328 (class 0 OID 39899)
-- Dependencies: 220
-- Data for Name: Semantic_Categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Semantic_Categories" (id, name, "createdAt", "updatedAt") FROM stdin;
1	Animales	2020-03-28 00:00:00-05	2020-03-28 00:00:00-05
2	Prendas de vestir	2021-01-18 00:00:00-05	2021-01-18 00:00:00-05
\.


--
-- TOC entry 3329 (class 0 OID 39907)
-- Dependencies: 221
-- Data for Name: Semantic_Subcategories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Semantic_Subcategories" (id, name, "createdAt", "updatedAt", id_category) FROM stdin;
1	Domésticos	2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1
2	Día a día	2021-01-18 00:00:00-05	2021-01-18 00:00:00-05	2
\.


--
-- TOC entry 3327 (class 0 OID 39891)
-- Dependencies: 219
-- Data for Name: Syntactic_Structures; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Syntactic_Structures" (id, name, "order", "createdAt", "updatedAt") FROM stdin;
1	Sustantivo	1	2020-03-28 00:00:00-05	2020-03-28 00:00:00-05
2	Adjetivo	2	2020-03-28 00:00:00-05	2020-03-28 00:00:00-05
3	Verbo	3	2020-03-28 00:00:00-05	2020-03-28 00:00:00-05
\.


--
-- TOC entry 3330 (class 0 OID 39920)
-- Dependencies: 222
-- Data for Name: Activities_Mechanics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Activities_Mechanics" (id, "createdAt", "updatedAt", id_activity, id_mechanic, id_structure, id_subcategory) FROM stdin;
1	2020-03-30 00:00:00-05	2020-03-30 00:00:00-05	1	1	1	1
2	2020-03-30 00:00:00-05	2020-03-30 00:00:00-05	1	1	2	1
3	2020-03-30 00:00:00-05	2020-03-30 00:00:00-05	1	1	3	1
4	2021-01-18 00:00:00-05	2021-01-18 00:00:00-05	11	2	1	2
5	2021-01-18 00:00:00-05	2021-01-18 00:00:00-05	11	2	2	2
6	2021-01-18 00:00:00-05	2021-01-18 00:00:00-05	11	2	3	2
\.


--
-- TOC entry 3331 (class 0 OID 39945)
-- Dependencies: 223
-- Data for Name: Avatars; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Avatars" (id, gender, "createdAt", "updatedAt") FROM stdin;
1	F	2020-07-06 00:00:00-05	2020-07-06 00:00:00-05
2	F	2021-05-27 00:00:00-05	2021-05-27 00:00:00-05
3	F	2021-05-27 00:00:00-05	2021-05-27 00:00:00-05
4	F	2021-05-27 00:00:00-05	2021-05-27 00:00:00-05
5	F	2021-05-27 00:00:00-05	2021-05-27 00:00:00-05
6	F	2021-05-27 00:00:00-05	2021-05-27 00:00:00-05
7	F	2021-05-27 00:00:00-05	2021-05-27 00:00:00-05
8	M	2021-05-27 00:00:00-05	2021-05-27 00:00:00-05
9	M	2021-05-27 00:00:00-05	2021-05-27 00:00:00-05
10	M	2021-05-27 00:00:00-05	2021-05-27 00:00:00-05
11	M	2021-05-27 00:00:00-05	2021-05-27 00:00:00-05
12	M	2021-05-27 00:00:00-05	2021-05-27 00:00:00-05
\.


--
-- TOC entry 3332 (class 0 OID 39953)
-- Dependencies: 224
-- Data for Name: Avatar_Variations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Avatar_Variations" (id, eye, hair, torso, img_path, is_default, thumbnail_path, "createdAt", "updatedAt", id_avatar) FROM stdin;
1	{"colors":"Café"}	{"colors":"Negro"}	{"colors":"Azul"}	/images/avatar/am1/cafe_negro_azul.png	t		2020-07-06 00:00:00-05	2020-07-06 00:00:00-05	1
2	{"colors":"Café"}	{"colors":"Negro"}	{"colors":"Morado"}	/images/avatar/am1/cafe_negro_morado.png	f		2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	1
3	{"colors":"Café"}	{"colors":"Negro"}	{"colors":"Verde"}	/images/avatar/am1/cafe_negro_verde.png	f		2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	1
4	{"colors":"Café"}	{"colors":"Café"}	{"colors":"Azul"}	/images/avatar/am1/cafe_cafe_azul.png	f		2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	1
5	{"colors":"Café"}	{"colors":"Café"}	{"colors":"Morado"}	/images/avatar/am1/cafe_cafe_morado.png	f		2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	1
6	{"colors":"Café"}	{"colors":"Café"}	{"colors":"Verde"}	/images/avatar/am1/cafe_cafe_verde.png	f		2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	1
7	{"colors":"Café"}	{"colors":"Rubio"}	{"colors":"Azul"}	/images/avatar/am1/cafe_rubio_azul.png	f		2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	1
8	{"colors":"Café"}	{"colors":"Rubio"}	{"colors":"Morado"}	/images/avatar/am1/cafe_rubio_morado.png	f		2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	1
9	{"colors":"Café"}	{"colors":"Rubio"}	{"colors":"Verde"}	/images/avatar/am1/cafe_rubio_verde.png	f		2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	1
10	{"colors":"Azul"}	{"colors":"Negro"}	{"colors":"Azul"}	/images/avatar/am1/azul_negro_azul.png	f		2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	1
11	{"colors":"Azul"}	{"colors":"Negro"}	{"colors":"Morado"}	/images/avatar/am1/azul_negro_morado.png	f		2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	1
12	{"colors":"Azul"}	{"colors":"Negro"}	{"colors":"Verde"}	/images/avatar/am1/azul_negro_verde.png	f		2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	1
13	{"colors":"Azul"}	{"colors":"Café"}	{"colors":"Azul"}	/images/avatar/am1/azul_cafe_azul.png	f		2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	1
14	{"colors":"Azul"}	{"colors":"Café"}	{"colors":"Morado"}	/images/avatar/am1/azul_cafe_morado.png	f		2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	1
15	{"colors":"Azul"}	{"colors":"Café"}	{"colors":"Verde"}	/images/avatar/am1/azul_cafe_verde.png	f		2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	1
16	{"colors":"Azul"}	{"colors":"Rubio"}	{"colors":"Azul"}	/images/avatar/am1/azul_rubio_azul.png	f		2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	1
17	{"colors":"Azul"}	{"colors":"Rubio"}	{"colors":"Morado"}	/images/avatar/am1/azul_rubio_morado.png	f		2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	1
18	{"colors":"Azul"}	{"colors":"Rubio"}	{"colors":"Verde"}	/images/avatar/am1/azul_rubio_verde.png	f		2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	1
19	{"colors":"Café"}	{"colors":"Negro"}	{"colors":"Azul"}	/images/avatar/am2/cafe_negro_azul.png	t		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	2
20	{"colors":"Café"}	{"colors":"Negro"}	{"colors":"Morado"}	/images/avatar/am2/cafe_negro_morado.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	2
21	{"colors":"Café"}	{"colors":"Negro"}	{"colors":"Verde"}	/images/avatar/am2/cafe_negro_verde.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	2
22	{"colors":"Café"}	{"colors":"Café"}	{"colors":"Azul"}	/images/avatar/am2/cafe_cafe_azul.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	2
23	{"colors":"Café"}	{"colors":"Café"}	{"colors":"Morado"}	/images/avatar/am2/cafe_cafe_morado.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	2
24	{"colors":"Café"}	{"colors":"Café"}	{"colors":"Verde"}	/images/avatar/am2/cafe_cafe_verde.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	2
25	{"colors":"Café"}	{"colors":"Rubio"}	{"colors":"Azul"}	/images/avatar/am2/cafe_rubio_azul.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	2
26	{"colors":"Café"}	{"colors":"Rubio"}	{"colors":"Morado"}	/images/avatar/am2/cafe_rubio_morado.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	2
27	{"colors":"Café"}	{"colors":"Rubio"}	{"colors":"Verde"}	/images/avatar/am2/cafe_rubio_verde.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	2
28	{"colors":"Azul"}	{"colors":"Negro"}	{"colors":"Azul"}	/images/avatar/am2/azul_negro_azul.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	2
29	{"colors":"Azul"}	{"colors":"Negro"}	{"colors":"Morado"}	/images/avatar/am2/azul_negro_morado.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	2
30	{"colors":"Azul"}	{"colors":"Negro"}	{"colors":"Verde"}	/images/avatar/am2/azul_negro_verde.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	2
31	{"colors":"Azul"}	{"colors":"Café"}	{"colors":"Azul"}	/images/avatar/am2/azul_cafe_azul.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	2
32	{"colors":"Azul"}	{"colors":"Café"}	{"colors":"Morado"}	/images/avatar/am2/azul_cafe_morado.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	2
33	{"colors":"Azul"}	{"colors":"Café"}	{"colors":"Verde"}	/images/avatar/am2/azul_cafe_verde.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	2
34	{"colors":"Azul"}	{"colors":"Rubio"}	{"colors":"Azul"}	/images/avatar/am2/azul_rubio_azul.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	2
35	{"colors":"Azul"}	{"colors":"Rubio"}	{"colors":"Morado"}	/images/avatar/am2/azul_rubio_morado.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	2
36	{"colors":"Azul"}	{"colors":"Rubio"}	{"colors":"Verde"}	/images/avatar/am2/azul_rubio_verde.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	2
37	{"colors":"Café"}	{"colors":"Negro"}	{"colors":"Azul"}	/images/avatar/am3/cafe_negro_azul.png	t		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	3
38	{"colors":"Café"}	{"colors":"Negro"}	{"colors":"Morado"}	/images/avatar/am3/cafe_negro_morado.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	3
39	{"colors":"Café"}	{"colors":"Negro"}	{"colors":"Verde"}	/images/avatar/am3/cafe_negro_verde.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	3
40	{"colors":"Café"}	{"colors":"Café"}	{"colors":"Azul"}	/images/avatar/am3/cafe_cafe_azul.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	3
41	{"colors":"Café"}	{"colors":"Café"}	{"colors":"Morado"}	/images/avatar/am3/cafe_cafe_morado.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	3
42	{"colors":"Café"}	{"colors":"Café"}	{"colors":"Verde"}	/images/avatar/am3/cafe_cafe_verde.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	3
43	{"colors":"Café"}	{"colors":"Rubio"}	{"colors":"Azul"}	/images/avatar/am3/cafe_rubio_azul.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	3
44	{"colors":"Café"}	{"colors":"Rubio"}	{"colors":"Morado"}	/images/avatar/am3/cafe_rubio_morado.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	3
45	{"colors":"Café"}	{"colors":"Rubio"}	{"colors":"Verde"}	/images/avatar/am3/cafe_rubio_verde.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	3
46	{"colors":"Azul"}	{"colors":"Negro"}	{"colors":"Azul"}	/images/avatar/am3/azul_negro_azul.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	3
47	{"colors":"Azul"}	{"colors":"Negro"}	{"colors":"Morado"}	/images/avatar/am3/azul_negro_morado.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	3
48	{"colors":"Azul"}	{"colors":"Negro"}	{"colors":"Verde"}	/images/avatar/am3/azul_negro_verde.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	3
49	{"colors":"Azul"}	{"colors":"Café"}	{"colors":"Azul"}	/images/avatar/am3/azul_cafe_azul.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	3
50	{"colors":"Azul"}	{"colors":"Café"}	{"colors":"Morado"}	/images/avatar/am3/azul_cafe_morado.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	3
51	{"colors":"Azul"}	{"colors":"Café"}	{"colors":"Verde"}	/images/avatar/am3/azul_cafe_verde.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	3
52	{"colors":"Azul"}	{"colors":"Rubio"}	{"colors":"Azul"}	/images/avatar/am3/azul_rubio_azul.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	3
53	{"colors":"Azul"}	{"colors":"Rubio"}	{"colors":"Morado"}	/images/avatar/am3/azul_rubio_morado.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	3
54	{"colors":"Azul"}	{"colors":"Rubio"}	{"colors":"Verde"}	/images/avatar/am3/azul_rubio_verde.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	3
55	{"colors":"Café"}	{"colors":"Negro"}	{"colors":"Azul"}	/images/avatar/am4/cafe_negro_azul.png	t		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	4
56	{"colors":"Café"}	{"colors":"Negro"}	{"colors":"Morado"}	/images/avatar/am4/cafe_negro_morado.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	4
57	{"colors":"Café"}	{"colors":"Negro"}	{"colors":"Verde"}	/images/avatar/am4/cafe_negro_verde.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	4
58	{"colors":"Café"}	{"colors":"Café"}	{"colors":"Azul"}	/images/avatar/am4/cafe_cafe_azul.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	4
59	{"colors":"Café"}	{"colors":"Café"}	{"colors":"Morado"}	/images/avatar/am4/cafe_cafe_morado.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	4
60	{"colors":"Café"}	{"colors":"Café"}	{"colors":"Verde"}	/images/avatar/am4/cafe_cafe_verde.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	4
61	{"colors":"Café"}	{"colors":"Rubio"}	{"colors":"Azul"}	/images/avatar/am4/cafe_rubio_azul.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	4
62	{"colors":"Café"}	{"colors":"Rubio"}	{"colors":"Morado"}	/images/avatar/am4/cafe_rubio_morado.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	4
63	{"colors":"Café"}	{"colors":"Rubio"}	{"colors":"Verde"}	/images/avatar/am4/cafe_rubio_verde.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	4
64	{"colors":"Azul"}	{"colors":"Negro"}	{"colors":"Azul"}	/images/avatar/am4/azul_negro_azul.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	4
65	{"colors":"Azul"}	{"colors":"Negro"}	{"colors":"Morado"}	/images/avatar/am4/azul_negro_morado.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	4
66	{"colors":"Azul"}	{"colors":"Negro"}	{"colors":"Verde"}	/images/avatar/am4/azul_negro_verde.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	4
67	{"colors":"Azul"}	{"colors":"Café"}	{"colors":"Azul"}	/images/avatar/am4/azul_cafe_azul.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	4
68	{"colors":"Azul"}	{"colors":"Café"}	{"colors":"Morado"}	/images/avatar/am4/azul_cafe_morado.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	4
69	{"colors":"Azul"}	{"colors":"Café"}	{"colors":"Verde"}	/images/avatar/am4/azul_cafe_verde.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	4
70	{"colors":"Azul"}	{"colors":"Rubio"}	{"colors":"Azul"}	/images/avatar/am4/azul_rubio_azul.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	4
71	{"colors":"Azul"}	{"colors":"Rubio"}	{"colors":"Morado"}	/images/avatar/am4/azul_rubio_morado.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	4
72	{"colors":"Azul"}	{"colors":"Rubio"}	{"colors":"Verde"}	/images/avatar/am4/azul_rubio_verde.png	f		2021-05-27 00:00:00-05	2021-05-27 00:00:00-05	4
73	{"colors":"Café"}	{"colors":"Negro"}	{"colors":"Azul"}	/images/avatar/am5/cafe_negro_azul.png	t		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	5
74	{"colors":"Café"}	{"colors":"Negro"}	{"colors":"Morado"}	/images/avatar/am5/cafe_negro_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	5
75	{"colors":"Café"}	{"colors":"Negro"}	{"colors":"Verde"}	/images/avatar/am5/cafe_negro_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	5
76	{"colors":"Café"}	{"colors":"Café"}	{"colors":"Azul"}	/images/avatar/am5/cafe_cafe_azul.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	5
77	{"colors":"Café"}	{"colors":"Café"}	{"colors":"Morado"}	/images/avatar/am5/cafe_cafe_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	5
78	{"colors":"Café"}	{"colors":"Café"}	{"colors":"Verde"}	/images/avatar/am5/cafe_cafe_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	5
79	{"colors":"Café"}	{"colors":"Rubio"}	{"colors":"Azul"}	/images/avatar/am5/cafe_rubio_azul.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	5
80	{"colors":"Café"}	{"colors":"Rubio"}	{"colors":"Morado"}	/images/avatar/am5/cafe_rubio_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	5
81	{"colors":"Café"}	{"colors":"Rubio"}	{"colors":"Verde"}	/images/avatar/am5/cafe_rubio_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	5
82	{"colors":"Azul"}	{"colors":"Negro"}	{"colors":"Azul"}	/images/avatar/am5/azul_negro_azul.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	5
83	{"colors":"Azul"}	{"colors":"Negro"}	{"colors":"Morado"}	/images/avatar/am5/azul_negro_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	5
84	{"colors":"Azul"}	{"colors":"Negro"}	{"colors":"Verde"}	/images/avatar/am5/azul_negro_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	5
85	{"colors":"Azul"}	{"colors":"Café"}	{"colors":"Azul"}	/images/avatar/am5/azul_cafe_azul.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	5
86	{"colors":"Azul"}	{"colors":"Café"}	{"colors":"Morado"}	/images/avatar/am5/azul_cafe_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	5
87	{"colors":"Azul"}	{"colors":"Café"}	{"colors":"Verde"}	/images/avatar/am5/azul_cafe_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	5
88	{"colors":"Azul"}	{"colors":"Rubio"}	{"colors":"Azul"}	/images/avatar/am5/azul_rubio_azul.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	5
89	{"colors":"Azul"}	{"colors":"Rubio"}	{"colors":"Morado"}	/images/avatar/am5/azul_rubio_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	5
90	{"colors":"Azul"}	{"colors":"Rubio"}	{"colors":"Verde"}	/images/avatar/am5/azul_rubio_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	5
91	{"colors":"Café"}	{"colors":"Negro"}	{"colors":"Azul"}	/images/avatar/am6/cafe_negro_azul.png	t		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	6
92	{"colors":"Café"}	{"colors":"Negro"}	{"colors":"Morado"}	/images/avatar/am6/cafe_negro_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	6
93	{"colors":"Café"}	{"colors":"Negro"}	{"colors":"Verde"}	/images/avatar/am6/cafe_negro_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	6
94	{"colors":"Café"}	{"colors":"Café"}	{"colors":"Azul"}	/images/avatar/am6/cafe_cafe_azul.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	6
95	{"colors":"Café"}	{"colors":"Café"}	{"colors":"Morado"}	/images/avatar/am6/cafe_cafe_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	6
96	{"colors":"Café"}	{"colors":"Café"}	{"colors":"Verde"}	/images/avatar/am6/cafe_cafe_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	6
97	{"colors":"Café"}	{"colors":"Rubio"}	{"colors":"Azul"}	/images/avatar/am6/cafe_rubio_azul.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	6
98	{"colors":"Café"}	{"colors":"Rubio"}	{"colors":"Morado"}	/images/avatar/am6/cafe_rubio_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	6
99	{"colors":"Café"}	{"colors":"Rubio"}	{"colors":"Verde"}	/images/avatar/am6/cafe_rubio_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	6
100	{"colors":"Azul"}	{"colors":"Negro"}	{"colors":"Azul"}	/images/avatar/am6/azul_negro_azul.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	6
101	{"colors":"Azul"}	{"colors":"Negro"}	{"colors":"Morado"}	/images/avatar/am6/azul_negro_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	6
102	{"colors":"Azul"}	{"colors":"Negro"}	{"colors":"Verde"}	/images/avatar/am6/azul_negro_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	6
103	{"colors":"Azul"}	{"colors":"Café"}	{"colors":"Azul"}	/images/avatar/am6/azul_cafe_azul.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	6
104	{"colors":"Azul"}	{"colors":"Café"}	{"colors":"Morado"}	/images/avatar/am6/azul_cafe_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	6
105	{"colors":"Azul"}	{"colors":"Café"}	{"colors":"Verde"}	/images/avatar/am6/azul_cafe_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	6
106	{"colors":"Azul"}	{"colors":"Rubio"}	{"colors":"Azul"}	/images/avatar/am6/azul_rubio_azul.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	6
107	{"colors":"Azul"}	{"colors":"Rubio"}	{"colors":"Morado"}	/images/avatar/am6/azul_rubio_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	6
108	{"colors":"Azul"}	{"colors":"Rubio"}	{"colors":"Verde"}	/images/avatar/am6/azul_rubio_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	6
109	{"colors":"Café"}	{"colors":"Negro"}	{"colors":"Azul"}	/images/avatar/am7/cafe_negro_azul.png	t		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	7
110	{"colors":"Café"}	{"colors":"Negro"}	{"colors":"Morado"}	/images/avatar/am7/cafe_negro_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	7
111	{"colors":"Café"}	{"colors":"Negro"}	{"colors":"Verde"}	/images/avatar/am7/cafe_negro_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	7
112	{"colors":"Café"}	{"colors":"Café"}	{"colors":"Azul"}	/images/avatar/am7/cafe_cafe_azul.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	7
113	{"colors":"Café"}	{"colors":"Café"}	{"colors":"Morado"}	/images/avatar/am7/cafe_cafe_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	7
114	{"colors":"Café"}	{"colors":"Café"}	{"colors":"Verde"}	/images/avatar/am7/cafe_cafe_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	7
115	{"colors":"Café"}	{"colors":"Rubio"}	{"colors":"Azul"}	/images/avatar/am7/cafe_rubio_azul.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	7
116	{"colors":"Café"}	{"colors":"Rubio"}	{"colors":"Morado"}	/images/avatar/am7/cafe_rubio_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	7
117	{"colors":"Café"}	{"colors":"Rubio"}	{"colors":"Verde"}	/images/avatar/am7/cafe_rubio_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	7
118	{"colors":"Azul"}	{"colors":"Negro"}	{"colors":"Azul"}	/images/avatar/am7/azul_negro_azul.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	7
119	{"colors":"Azul"}	{"colors":"Negro"}	{"colors":"Morado"}	/images/avatar/am7/azul_negro_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	7
120	{"colors":"Azul"}	{"colors":"Negro"}	{"colors":"Verde"}	/images/avatar/am7/azul_negro_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	7
121	{"colors":"Azul"}	{"colors":"Café"}	{"colors":"Azul"}	/images/avatar/am7/azul_cafe_azul.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	7
122	{"colors":"Azul"}	{"colors":"Café"}	{"colors":"Morado"}	/images/avatar/am7/azul_cafe_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	7
123	{"colors":"Azul"}	{"colors":"Café"}	{"colors":"Verde"}	/images/avatar/am7/azul_cafe_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	7
124	{"colors":"Azul"}	{"colors":"Rubio"}	{"colors":"Azul"}	/images/avatar/am7/azul_rubio_azul.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	7
125	{"colors":"Azul"}	{"colors":"Rubio"}	{"colors":"Morado"}	/images/avatar/am7/azul_rubio_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	7
126	{"colors":"Azul"}	{"colors":"Rubio"}	{"colors":"Verde"}	/images/avatar/am7/azul_rubio_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	7
127	{"colors":"Café"}	{"colors":"Negro"}	{"colors":"Azul"}	/images/avatar/ah1/cafe_negro_azul.png	t		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	8
128	{"colors":"Café"}	{"colors":"Negro"}	{"colors":"Morado"}	/images/avatar/ah1/cafe_negro_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	8
129	{"colors":"Café"}	{"colors":"Negro"}	{"colors":"Verde"}	/images/avatar/ah1/cafe_negro_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	8
130	{"colors":"Café"}	{"colors":"Café"}	{"colors":"Azul"}	/images/avatar/ah1/cafe_cafe_azul.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	8
131	{"colors":"Café"}	{"colors":"Café"}	{"colors":"Morado"}	/images/avatar/ah1/cafe_cafe_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	8
132	{"colors":"Café"}	{"colors":"Café"}	{"colors":"Verde"}	/images/avatar/ah1/cafe_cafe_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	8
133	{"colors":"Café"}	{"colors":"Rubio"}	{"colors":"Azul"}	/images/avatar/ah1/cafe_rubio_azul.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	8
134	{"colors":"Café"}	{"colors":"Rubio"}	{"colors":"Morado"}	/images/avatar/ah1/cafe_rubio_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	8
135	{"colors":"Café"}	{"colors":"Rubio"}	{"colors":"Verde"}	/images/avatar/ah1/cafe_rubio_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	8
136	{"colors":"Azul"}	{"colors":"Negro"}	{"colors":"Azul"}	/images/avatar/ah1/azul_negro_azul.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	8
137	{"colors":"Azul"}	{"colors":"Negro"}	{"colors":"Morado"}	/images/avatar/ah1/azul_negro_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	8
138	{"colors":"Azul"}	{"colors":"Negro"}	{"colors":"Verde"}	/images/avatar/ah1/azul_negro_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	8
139	{"colors":"Azul"}	{"colors":"Café"}	{"colors":"Azul"}	/images/avatar/ah1/azul_cafe_azul.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	8
140	{"colors":"Azul"}	{"colors":"Café"}	{"colors":"Morado"}	/images/avatar/ah1/azul_cafe_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	8
141	{"colors":"Azul"}	{"colors":"Café"}	{"colors":"Verde"}	/images/avatar/ah1/azul_cafe_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	8
142	{"colors":"Azul"}	{"colors":"Rubio"}	{"colors":"Azul"}	/images/avatar/ah1/azul_rubio_azul.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	8
143	{"colors":"Azul"}	{"colors":"Rubio"}	{"colors":"Morado"}	/images/avatar/ah1/azul_rubio_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	8
144	{"colors":"Azul"}	{"colors":"Rubio"}	{"colors":"Verde"}	/images/avatar/ah1/azul_rubio_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	8
145	{"colors":"Café"}	{"colors":"Negro"}	{"colors":"Azul"}	/images/avatar/ah2/cafe_negro_azul.png	t		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	9
146	{"colors":"Café"}	{"colors":"Negro"}	{"colors":"Morado"}	/images/avatar/ah2/cafe_negro_moradopng	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	9
147	{"colors":"Café"}	{"colors":"Negro"}	{"colors":"Verde"}	/images/avatar/ah2/cafe_negro_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	9
148	{"colors":"Café"}	{"colors":"Café"}	{"colors":"Azul"}	/images/avatar/ah2/cafe_cafe_azul.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	9
149	{"colors":"Café"}	{"colors":"Café"}	{"colors":"Morado"}	/images/avatar/ah2/cafe_cafe_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	9
150	{"colors":"Café"}	{"colors":"Café"}	{"colors":"Verde"}	/images/avatar/ah2/cafe_cafe_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	9
151	{"colors":"Café"}	{"colors":"Rubio"}	{"colors":"Azul"}	/images/avatar/ah2/cafe_rubio_azul.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	9
152	{"colors":"Café"}	{"colors":"Rubio"}	{"colors":"Morado"}	/images/avatar/ah2/cafe_rubio_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	9
153	{"colors":"Café"}	{"colors":"Rubio"}	{"colors":"Verde"}	/images/avatar/ah2/cafe_rubio_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	9
154	{"colors":"Azul"}	{"colors":"Negro"}	{"colors":"Azul"}	/images/avatar/ah2/azul_negro_azul.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	9
155	{"colors":"Azul"}	{"colors":"Negro"}	{"colors":"Morado"}	/images/avatar/ah2/azul_negro_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	9
156	{"colors":"Azul"}	{"colors":"Negro"}	{"colors":"Verde"}	/images/avatar/ah2/azul_negro_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	9
157	{"colors":"Azul"}	{"colors":"Café"}	{"colors":"Azul"}	/images/avatar/ah2/azul_cafe_azul.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	9
158	{"colors":"Azul"}	{"colors":"Café"}	{"colors":"Morado"}	/images/avatar/ah2/azul_cafe_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	9
159	{"colors":"Azul"}	{"colors":"Café"}	{"colors":"Verde"}	/images/avatar/ah2/azul_cafe_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	9
160	{"colors":"Azul"}	{"colors":"Rubio"}	{"colors":"Azul"}	/images/avatar/ah2/azul_rubio_azul.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	9
161	{"colors":"Azul"}	{"colors":"Rubio"}	{"colors":"Morado"}	/images/avatar/ah2/azul_rubio_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	9
162	{"colors":"Azul"}	{"colors":"Rubio"}	{"colors":"Verde"}	/images/avatar/ah2/azul_rubio_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	9
163	{"colors":"Café"}	{"colors":"Negro"}	{"colors":"Azul"}	/images/avatar/ah3/cafe_negro_azul.png	t		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	10
164	{"colors":"Café"}	{"colors":"Negro"}	{"colors":"Morado"}	/images/avatar/ah3/cafe_negro_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	10
165	{"colors":"Café"}	{"colors":"Negro"}	{"colors":"Verde"}	/images/avatar/ah3/cafe_negro_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	10
166	{"colors":"Café"}	{"colors":"Café"}	{"colors":"Azul"}	/images/avatar/ah3/cafe_cafe_azul.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	10
167	{"colors":"Café"}	{"colors":"Café"}	{"colors":"Morado"}	/images/avatar/ah3/cafe_cafe_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	10
168	{"colors":"Café"}	{"colors":"Café"}	{"colors":"Verde"}	/images/avatar/ah3/cafe_cafe_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	10
169	{"colors":"Café"}	{"colors":"Rubio"}	{"colors":"Azul"}	/images/avatar/ah3/cafe_rubio_azul.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	10
170	{"colors":"Café"}	{"colors":"Rubio"}	{"colors":"Morado"}	/images/avatar/ah3/cafe_rubio_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	10
171	{"colors":"Café"}	{"colors":"Rubio"}	{"colors":"Verde"}	/images/avatar/ah3/cafe_rubio_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	10
172	{"colors":"Azul"}	{"colors":"Negro"}	{"colors":"Azul"}	/images/avatar/ah3/azul_negro_azul.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	10
173	{"colors":"Azul"}	{"colors":"Negro"}	{"colors":"Morado"}	/images/avatar/ah3/azul_negro_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	10
174	{"colors":"Azul"}	{"colors":"Negro"}	{"colors":"Verde"}	/images/avatar/ah3/azul_negro_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	10
175	{"colors":"Azul"}	{"colors":"Café"}	{"colors":"Azul"}	/images/avatar/ah3/azul_cafe_azul.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	10
176	{"colors":"Azul"}	{"colors":"Café"}	{"colors":"Morado"}	/images/avatar/ah3/azul_cafe_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	10
177	{"colors":"Azul"}	{"colors":"Café"}	{"colors":"Verde"}	/images/avatar/ah3/azul_cafe_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	10
178	{"colors":"Azul"}	{"colors":"Rubio"}	{"colors":"Azul"}	/images/avatar/ah3/azul_rubio_azul.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	10
179	{"colors":"Azul"}	{"colors":"Rubio"}	{"colors":"Morado"}	/images/avatar/ah3/azul_rubio_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	10
180	{"colors":"Azul"}	{"colors":"Rubio"}	{"colors":"Verde"}	/images/avatar/ah3/azul_rubio_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	10
181	{"colors":"Café"}	{"colors":"Negro"}	{"colors":"Azul"}	/images/avatar/ah4/cafe_negro_azul.png	t		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	11
182	{"colors":"Café"}	{"colors":"Negro"}	{"colors":"Morado"}	/images/avatar/ah4/cafe_negro_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	11
183	{"colors":"Café"}	{"colors":"Negro"}	{"colors":"Verde"}	/images/avatar/ah4/cafe_negro_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	11
184	{"colors":"Café"}	{"colors":"Café"}	{"colors":"Azul"}	/images/avatar/ah4/cafe_cafe_azul.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	11
185	{"colors":"Café"}	{"colors":"Café"}	{"colors":"Morado"}	/images/avatar/ah4/cafe_cafe_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	11
186	{"colors":"Café"}	{"colors":"Café"}	{"colors":"Verde"}	/images/avatar/ah4/cafe_cafe_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	11
187	{"colors":"Café"}	{"colors":"Rubio"}	{"colors":"Azul"}	/images/avatar/ah4/cafe_rubio_azul.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	11
188	{"colors":"Café"}	{"colors":"Rubio"}	{"colors":"Morado"}	/images/avatar/ah4/cafe_rubio_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	11
189	{"colors":"Café"}	{"colors":"Rubio"}	{"colors":"Verde"}	/images/avatar/ah4/cafe_rubio_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	11
190	{"colors":"Azul"}	{"colors":"Negro"}	{"colors":"Azul"}	/images/avatar/ah4/azul_negro_azul.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	11
191	{"colors":"Azul"}	{"colors":"Negro"}	{"colors":"Morado"}	/images/avatar/ah4/azul_negro_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	11
192	{"colors":"Azul"}	{"colors":"Negro"}	{"colors":"Verde"}	/images/avatar/ah4/azul_negro_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	11
193	{"colors":"Azul"}	{"colors":"Café"}	{"colors":"Azul"}	/images/avatar/ah4/azul_cafe_azul.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	11
194	{"colors":"Azul"}	{"colors":"Café"}	{"colors":"Morado"}	/images/avatar/ah4/azul_cafe_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	11
195	{"colors":"Azul"}	{"colors":"Café"}	{"colors":"Verde"}	/images/avatar/ah4/azul_cafe_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	11
196	{"colors":"Azul"}	{"colors":"Rubio"}	{"colors":"Azul"}	/images/avatar/ah4/azul_rubio_azul.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	11
197	{"colors":"Azul"}	{"colors":"Rubio"}	{"colors":"Morado"}	/images/avatar/ah4/azul_rubio_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	11
198	{"colors":"Azul"}	{"colors":"Rubio"}	{"colors":"Verde"}	/images/avatar/ah4/azul_rubio_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	11
199	{"colors":"Café"}	{"colors":"Negro"}	{"colors":"Azul"}	/images/avatar/ah5/cafe_negro_azul.png	t		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	12
200	{"colors":"Café"}	{"colors":"Negro"}	{"colors":"Morado"}	/images/avatar/ah5/cafe_negro_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	12
201	{"colors":"Café"}	{"colors":"Negro"}	{"colors":"Verde"}	/images/avatar/ah5/cafe_negro_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	12
202	{"colors":"Café"}	{"colors":"Café"}	{"colors":"Azul"}	/images/avatar/ah5/cafe_cafe_azul.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	12
203	{"colors":"Café"}	{"colors":"Café"}	{"colors":"Morado"}	/images/avatar/ah5/cafe_cafe_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	12
204	{"colors":"Café"}	{"colors":"Café"}	{"colors":"Verde"}	/images/avatar/ah5/cafe_cafe_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	12
205	{"colors":"Café"}	{"colors":"Rubio"}	{"colors":"Azul"}	/images/avatar/ah5/cafe_rubio_azul.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	12
206	{"colors":"Café"}	{"colors":"Rubio"}	{"colors":"Morado"}	/images/avatar/ah5/cafe_rubio_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	12
207	{"colors":"Café"}	{"colors":"Rubio"}	{"colors":"Verde"}	/images/avatar/ah5/cafe_rubio_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	12
208	{"colors":"Azul"}	{"colors":"Negro"}	{"colors":"Azul"}	/images/avatar/ah5/azul_negro_azul.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	12
209	{"colors":"Azul"}	{"colors":"Negro"}	{"colors":"Morado"}	/images/avatar/ah5/azul_negro_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	12
210	{"colors":"Azul"}	{"colors":"Negro"}	{"colors":"Verde"}	/images/avatar/ah5/azul_negro_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	12
211	{"colors":"Azul"}	{"colors":"Café"}	{"colors":"Azul"}	/images/avatar/ah5/azul_cafe_azul.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	12
212	{"colors":"Azul"}	{"colors":"Café"}	{"colors":"Morado"}	/images/avatar/ah5/azul_cafe_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	12
213	{"colors":"Azul"}	{"colors":"Café"}	{"colors":"Verde"}	/images/avatar/ah5/azul_cafe_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	12
214	{"colors":"Azul"}	{"colors":"Rubio"}	{"colors":"Azul"}	/images/avatar/ah5/azul_rubio_azul.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	12
215	{"colors":"Azul"}	{"colors":"Rubio"}	{"colors":"Morado"}	/images/avatar/ah5/azul_rubio_morado.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	12
216	{"colors":"Azul"}	{"colors":"Rubio"}	{"colors":"Verde"}	/images/avatar/ah5/azul_rubio_verde.png	f		2021-05-28 00:00:00-05	2021-05-28 00:00:00-05	12
\.


--
-- TOC entry 3333 (class 0 OID 39967)
-- Dependencies: 225
-- Data for Name: Roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Roles" (id, name, "createdAt", "updatedAt") FROM stdin;
1	paciente	2020-03-13 00:00:00-05	2020-03-13 00:00:00-05
2	terapeuta	2020-03-13 00:00:00-05	2020-03-13 00:00:00-05
\.


--
-- TOC entry 3334 (class 0 OID 39975)
-- Dependencies: 226
-- Data for Name: Users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Users" (id, active, birthday_date, color, email, gender, is_admin, last_name, name, password, profile_img, score, thumbnail_alias, username, "createdAt", "updatedAt", id_avatar_variation, id_role) FROM stdin;
1144181235	t	1992-10-09 20:00:00-04	#29B6F6	ejisselgb@gmail.com	F	f	Gutierrez	Erika	$2a$12$/rd6244Yp5cEqwN56Wn1VeeiiyDPEdnSMQJTEP2c.PbLnw9Rrcyg2	\N	0	EG	ejisselgb	2020-03-17 15:18:55.461-05	2020-03-17 15:18:55.461-05	\N	1
1144034673	t	1990-05-03 19:00:00-05	#A569BD	martinsg.9054@gmail.com	M	f	Sierra	Martín	$2a$12$/xSnk3sdBDdSFr0.Br1GL.KRRfvyfYy5m5QFUb2JUK8TNVJdbp0hq	\N	0	MS	mvsierra	2020-07-11 16:50:05.183-05	2020-07-11 17:03:16.666-05	\N	1
1145035688	t	1990-05-03 19:00:00-05	#F06292	valmanza@gmail.com	F	t	Almanza	Valeria	$2a$12$LgcwGuzdQf4ONxB2YkS5c..BmrSbIWLFTeGxB4oGflq6RJTUep4Si	\N	0	VA	valmanza	2020-03-13 19:06:44.466-05	2021-05-28 14:09:58.199-05	1	2
\.


--
-- TOC entry 3335 (class 0 OID 39999)
-- Dependencies: 227
-- Data for Name: Activities_Users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Activities_Users" (id, build_path, date_from, date_to, "createdAt", "updatedAt", id_activity, id_mechanic, id_structure, id_user) FROM stdin;
\.


--
-- TOC entry 3337 (class 0 OID 40029)
-- Dependencies: 229
-- Data for Name: Activities_Sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Activities_Sessions" (id, audio, comment, date_start, date_end, "createdAt", "updatedAt", id_activity_user) FROM stdin;
\.


--
-- TOC entry 3338 (class 0 OID 40043)
-- Dependencies: 230
-- Data for Name: Situations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Situations" (id, name, "createdAt", "updatedAt") FROM stdin;
1	El bebé	2020-04-02 00:00:00-05	2020-04-02 00:00:00-05
2	El colegio	2020-04-02 00:00:00-05	2020-04-02 00:00:00-05
3	El cumpleaños	2020-04-02 00:00:00-05	2020-04-02 00:00:00-05
4	El perrito	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05
5	El ratón	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05
6	La cometa	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05
7	La playa	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05
8	La piscina	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05
9	La piscina 2	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05
\.


--
-- TOC entry 3339 (class 0 OID 40051)
-- Dependencies: 231
-- Data for Name: Activities_Situations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Activities_Situations" (id, "createdAt", "updatedAt", id_activity, id_mechanic, id_situation) FROM stdin;
1	2020-04-02 00:00:00-05	2020-04-02 00:00:00-05	2	3	1
2	2020-04-02 00:00:00-05	2020-04-02 00:00:00-05	3	3	2
3	2020-04-02 00:00:00-05	2020-04-02 00:00:00-05	4	3	3
4	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	5	3	4
5	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	6	3	5
6	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	7	3	6
7	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	8	3	7
8	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	9	3	8
9	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	10	3	9
\.


--
-- TOC entry 3340 (class 0 OID 40071)
-- Dependencies: 232
-- Data for Name: Collections; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Collections" (id, name, "createdAt", "updatedAt") FROM stdin;
1	Automóviles	2020-03-23 00:00:00-05	2020-03-23 00:00:00-05
\.


--
-- TOC entry 3341 (class 0 OID 40079)
-- Dependencies: 233
-- Data for Name: Collectables; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Collectables" (id, name, price, "createdAt", "updatedAt", id_collection) FROM stdin;
1	Pequeño Clásico	500	2020-03-23 00:00:00-05	2020-03-23 00:00:00-05	1
2	Porsche Ochentero	800	2020-03-25 00:00:00-05	2020-03-25 00:00:00-05	1
4	Willys	940	2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	1
5	Carrito Eléctríco	750	2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	1
6	Nascar Negro	610	2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	1
7	Ferrari F1	980	2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	1
3	Lamborghini Último  Modelo	1100	2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	1
\.


--
-- TOC entry 3343 (class 0 OID 40095)
-- Dependencies: 235
-- Data for Name: Levels; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Levels" (id, date_start, date_end, level, score, "createdAt", "updatedAt", id_session) FROM stdin;
\.


--
-- TOC entry 3345 (class 0 OID 40110)
-- Dependencies: 237
-- Data for Name: Matches_Feeds; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Matches_Feeds" (id, is_good, variable, "createdAt", "updatedAt", id_level) FROM stdin;
\.


--
-- TOC entry 3347 (class 0 OID 40126)
-- Dependencies: 239
-- Data for Name: Phrases_Feeds; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Phrases_Feeds" (id, id_phrase, checked, kind, order_phrase, word, "createdAt", "updatedAt", id_level) FROM stdin;
\.


--
-- TOC entry 3349 (class 0 OID 40142)
-- Dependencies: 241
-- Data for Name: Secuences_Feeds; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Secuences_Feeds" (id, hits, how, mistakes, question, tale, "createdAt", "updatedAt", id_level) FROM stdin;
\.


--
-- TOC entry 3350 (class 0 OID 40156)
-- Dependencies: 242
-- Data for Name: Skins; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Skins" (id, is_default, img_path, name, price, summary, "createdAt", "updatedAt", id_collectable) FROM stdin;
1	t	/images/collections/cars/pequeno_clasico.png	Pequeño Clásico	0	El Pequeño Clásico	2020-03-23 00:00:00-05	2020-03-23 00:00:00-05	1
2	f	/images/collections/cars/pequeno_clasico_v2.png	Pequeño Clásico V2	300	El Pequeño Clásico V2	2020-03-24 00:00:00-05	2020-03-24 00:00:00-05	1
4	f	/images/collections/cars/pequeno_clasico_v4.png	Pequeño Clásico V4	750	El Pequeño Clásico V3	2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	1
5	t	/images/collections/cars/porsche_ochentero.png	Porsche Ochentero	0	El Porsche Ochentero	2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	2
6	f	/images/collections/cars/porsche_ochentero_v2.png	Porsche Ochentero V2	450	El Porsche Ochentero V2	2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	2
7	f	/images/collections/cars/porsche_ochentero_v3.png	Porsche Ochentero V3	670	El Porsche Ochentero V3	2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	2
8	f	/images/collections/cars/porsche_ochentero_v4.png	Porsche Ochentero V4	1000	El Porsche Ochentero V4	2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	2
9	t	/images/collections/cars/lamborghini_ultimo_modelo.png	Lamborghini Último Modelo	0	El Lamborghini Último Modelo	2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	3
10	f	/images/collections/cars/lamborghini_ultimo_modelo_v2.png	Lamborghini Último Modelo V2	400	El Lamborghini Último Modelo V2	2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	3
11	f	/images/collections/cars/lamborghini_ultimo_modelo_v3.png	Lamborghini Último Modelo V3	900	El Lamborghini Último Modelo V3	2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	3
12	f	/images/collections/cars/lamborghini_ultimo_modelo_v4.png	Lamborghini Último Modelo V4	1280	El Lamborghini Último Modelo V4	2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	3
13	t	/images/collections/cars/willys.png	Willys	0	El Willys	2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	4
14	f	/images/collections/cars/willys_v2.png	Willys V2	450	El Willys V2	2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	4
15	f	/images/collections/cars/willys_v3.png	Willys V3	840	El Willys V3	2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	4
16	f	/images/collections/cars/willys_v4.png	Willys V4	1500	El Willys V4	2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	4
17	t	/images/collections/cars/carrito_electrico.png	Carrito Eléctrico	0	El Carrito Eléctrico	2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	5
18	f	/images/collections/cars/carrito_electrico_v2.png	Carrito Eléctrico V2	200	El Carrito Eléctrico V2	2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	5
19	f	/images/collections/cars/carrito_electrico_v3.png	Carrito Eléctrico V3	400	El Carrito Eléctrico V3	2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	5
20	f	/images/collections/cars/carrito_electrico_v4.png	Carrito Eléctrico V4	710	El Carrito Eléctrico V4	2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	5
21	t	/images/collections/cars/nascar_negro.png	Nascar Negro	0	El Nascar Negro	2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	6
22	f	/images/collections/cars/nascar_negro_v2.png	Nascar Negro V2	410	El Nascar Negro V2	2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	6
23	f	/images/collections/cars/nascar_negro_v3.png	Nascar Negro V3	810	El Nascar Negro V3	2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	6
24	f	/images/collections/cars/nascar_negro_v4.png	Nascar Negro V4	1210	El Nascar Negro V4	2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	6
25	t	/images/collections/cars/ferrari_f1.png	Ferrari F1	0	El Ferrari F1	2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	7
26	f	/images/collections/cars/ferrari_f1_v2.png	Ferrari F1 V2	400	El Ferrari F1 V2	2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	7
27	f	/images/collections/cars/ferrari_f1_v3.png	Ferrari F1 V3	900	El Ferrari F1 V3	2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	7
28	f	/images/collections/cars/ferrari_f1_v4.png	Ferrari F1 V4	1280	El Ferrari F1 V4	2021-04-15 00:00:00-05	2021-04-15 00:00:00-05	7
3	f	/images/collections/cars/pequeno_clasico_v3.png	Pequeño Clásico V3	500	El Pequeño Clásico V3	2020-03-25 00:00:00-05	2020-03-25 00:00:00-05	1
\.


--
-- TOC entry 3351 (class 0 OID 40171)
-- Dependencies: 243
-- Data for Name: Vocabularies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Vocabularies" (id, name, "createdAt", "updatedAt", id_structure) FROM stdin;
1	Burro	2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1
2	Caballo	2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1
3	Cerdo	2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1
4	Conejo	2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1
5	Gallina	2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1
6	Gato	2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1
7	Mariposa	2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1
8	Oveja	2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1
9	Pájaro	2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1
10	Pato	2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1
11	Perro	2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1
12	Pollo	2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1
13	Toro	2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1
14	Tortuga	2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1
15	Vaca	2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1
16	Bonito	2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	2
17	Dormido	2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	2
18	Feliz	2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	2
19	Feo	2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	2
20	Flaco	2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	2
21	Gordo	2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	2
22	Grande	2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	2
23	Limpio	2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	2
24	Pequeño	2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	2
25	Sucio	2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	2
26	Triste	2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	2
27	Comer	2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	3
28	Correr	2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	3
29	Nadar	2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	3
30	Saltar	2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	3
31	Tomar	2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	3
32	Volar	2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	3
33	Camisa	2021-01-18 00:00:00-05	2021-01-18 00:00:00-05	1
34	Pantalón	2021-01-18 00:00:00-05	2021-01-18 00:00:00-05	1
35	Zapatos	2021-01-18 00:00:00-05	2021-01-18 00:00:00-05	1
36	Arrugado	2021-01-18 00:00:00-05	2021-01-18 00:00:00-05	2
37	Doblar	2021-01-18 00:00:00-05	2021-01-18 00:00:00-05	3
38	Guardar	2021-01-18 00:00:00-05	2021-01-18 00:00:00-05	3
39	Lavar	2021-01-18 00:00:00-05	2021-01-18 00:00:00-05	3
40	Limpiar	2021-01-18 00:00:00-05	2021-01-18 00:00:00-05	3
41	Planchar	2021-01-18 00:00:00-05	2021-01-18 00:00:00-05	3
\.


--
-- TOC entry 3352 (class 0 OID 40184)
-- Dependencies: 244
-- Data for Name: Subcategories_Vocabularies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Subcategories_Vocabularies" ("createdAt", "updatedAt", id_subcategory, id_vocabulary) FROM stdin;
2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1	1
2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1	2
2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1	3
2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1	4
2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1	5
2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1	6
2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1	7
2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1	8
2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1	9
2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1	10
2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1	11
2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1	12
2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1	13
2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1	14
2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1	15
2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1	16
2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1	17
2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1	18
2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1	19
2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1	20
2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1	21
2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1	22
2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1	23
2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1	24
2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1	25
2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1	26
2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1	27
2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1	28
2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1	29
2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1	30
2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1	31
2020-03-28 00:00:00-05	2020-03-28 00:00:00-05	1	32
2021-01-18 00:00:00-05	2021-01-18 00:00:00-05	2	33
2021-01-18 00:00:00-05	2021-01-18 00:00:00-05	2	34
2021-01-18 00:00:00-05	2021-01-18 00:00:00-05	2	35
2021-01-18 00:00:00-05	2021-01-18 00:00:00-05	2	36
2021-01-18 00:00:00-05	2021-01-18 00:00:00-05	2	23
2021-01-18 00:00:00-05	2021-01-18 00:00:00-05	2	25
2021-01-18 00:00:00-05	2021-01-18 00:00:00-05	2	37
2021-01-18 00:00:00-05	2021-01-18 00:00:00-05	2	38
2021-01-18 00:00:00-05	2021-01-18 00:00:00-05	2	39
2021-01-18 00:00:00-05	2021-01-18 00:00:00-05	2	40
2021-01-18 00:00:00-05	2021-01-18 00:00:00-05	2	41
\.


--
-- TOC entry 3354 (class 0 OID 40217)
-- Dependencies: 246
-- Data for Name: Therapists_Patients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Therapists_Patients" ("createdAt", "updatedAt", id_therapist, id_patient) FROM stdin;
2020-07-11 17:02:31.005-05	2020-07-11 17:02:31.005-05	1145035688	1144034673
\.


--
-- TOC entry 3353 (class 0 OID 40199)
-- Dependencies: 245
-- Data for Name: Users_Skins; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Users_Skins" ("createdAt", "updatedAt", id_skin, id_user) FROM stdin;
\.


--
-- TOC entry 3315 (class 0 OID 39764)
-- Dependencies: 207
-- Data for Name: Secuence_Pictograms; Type: TABLE DATA; Schema: secuence; Owner: postgres
--

COPY secuence."Secuence_Pictograms" (id, path, "createdAt", "updatedAt") FROM stdin;
1	/pictograms/almohada.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
2	/pictograms/banera.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
3	/pictograms/billetera.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
4	/pictograms/bus.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
5	/pictograms/cama.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
6	/pictograms/carretera.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
7	/pictograms/casa.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
8	/pictograms/coche.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
9	/pictograms/cometa.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
10	/pictograms/comida.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
11	/pictograms/desayuno.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
12	/pictograms/ducha.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
13	/pictograms/escalera.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
14	/pictograms/escalera_trampolin.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
15	/pictograms/feliz.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
16	/pictograms/flotador.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
17	/pictograms/gotas_sangre.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
18	/pictograms/helado.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
19	/pictograms/jabon.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
20	/pictograms/juguetes_pinata.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
21	/pictograms/lodo.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
22	/pictograms/luna.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
23	/pictograms/maletin.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
24	/pictograms/monedero.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
25	/pictograms/monio.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
26	/pictograms/nino_estudiando.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
27	/pictograms/nino_soplando.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
28	/pictograms/panal_sucio.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
29	/pictograms/parque.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
30	/pictograms/peineta.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
31	/pictograms/pijama.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
32	/pictograms/playa.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
33	/pictograms/puerta_abierta.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
34	/pictograms/puerta_cerrada.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
35	/pictograms/regalo.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
36	/pictograms/regalo_abierto.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
37	/pictograms/ropa.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
38	/pictograms/ropa_silla.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
39	/pictograms/sombrero_bombero.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
40	/pictograms/sonrisa.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
41	/pictograms/toalla_mojada.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
42	/pictograms/toalla_seca.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
43	/pictograms/triste.png	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
44	/pictograms/jabon_barra.png	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05
\.


--
-- TOC entry 3316 (class 0 OID 39772)
-- Dependencies: 208
-- Data for Name: Secuence_Images; Type: TABLE DATA; Schema: secuence; Owner: postgres
--

COPY secuence."Secuence_Images" (id, activity, path, tag, "createdAt", "updatedAt", id_pictogram) FROM stdin;
1	2	\N	0	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05	28
6	2	\N	5	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05	8
2	2	/secuences/s_bebe_1.png	1	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05	2
3	2	/secuences/s_bebe_2.png	2	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05	19
4	2	/secuences/s_bebe_3.png	3	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05	41
5	2	/secuences/s_bebe_4.png	4	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05	37
15	4	\N	0	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	3
16	4	/secuences/s_cumple_1.png	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	35
17	4	/secuences/s_cumple_2.png	2	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	20
18	4	/secuences/s_cumple_3.png	3	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	27
19	4	/secuences/s_cumple_4.png	4	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	34
20	4	\N	5	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	36
21	5	\N	0	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	33
22	5	/secuences/s_perrito_1.png	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	29
23	5	/secuences/s_perrito_2.png	2	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	21
24	5	/secuences/s_perrito_3.png	3	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	19
25	5	/secuences/s_perrito_4.png	4	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	25
26	5	\N	5	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	34
27	6	\N	0	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	40
28	6	/secuences/s_ratonp_1.png	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	17
29	6	/secuences/s_ratonp_2.png	2	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	1
30	6	/secuences/s_ratonp_3.png	3	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	22
31	6	/secuences/s_ratonp_4.png	4	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	24
32	6	\N	5	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	18
39	8	\N	0	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	7
40	8	/secuences/s_playa_1.png	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	23
41	8	/secuences/s_playa_2.png	2	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	6
42	8	/secuences/s_playa_3.png	3	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	32
43	8	\N	4	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	10
44	9	\N	0	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	7
45	9	/secuences/s_dia_piscina_1.png	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	24
46	9	/secuences/s_dia_piscina_2.png	2	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	38
47	9	/secuences/s_dia_piscina_3.png	3	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	16
48	9	/secuences/s_dia_piscina_4.png	4	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	41
49	9	/secuences/s_dia_piscina_5.png	5	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	10
50	9	\N	6	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	5
51	10	\N	0	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	12
52	10	/secuences/s_piscina_1.png	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	42
53	10	/secuences/s_piscina_2.png	2	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	14
54	10	/secuences/s_piscina_3.png	3	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	16
55	10	/secuences/s_piscina_4.png	4	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	41
56	10	\N	5	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	37
33	7	\N	0	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	7
34	7	/secuences/s_cometa_1.png	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	9
35	7	/secuences/s_cometa_2.png	2	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	43
36	7	/secuences/s_cometa_3.png	3	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	13
37	7	/secuences/s_cometa_4.png	4	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	39
38	7	\N	5	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	15
7	3	\N	0	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	31
8	3	/secuences/s_casa_1.png	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	22
9	3	/secuences/s_casa_2.png	2	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	5
10	3	/secuences/s_casa_3.png	3	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	44
11	3	/secuences/s_casa_4.png	4	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	30
12	3	/secuences/s_casa_5.png	5	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	11
13	3	/secuences/s_casa_6.png	6	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	4
14	3	\N	7	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	26
\.


--
-- TOC entry 3317 (class 0 OID 39785)
-- Dependencies: 209
-- Data for Name: Secuence_Demands; Type: TABLE DATA; Schema: secuence; Owner: postgres
--

COPY secuence."Secuence_Demands" (id, demand, "time", "createdAt", "updatedAt", id_image) FROM stdin;
1	¿Qué hace la mamá?	1	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05	2
4	¿En qué lugar baña la mamá al niño?	1	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05	3
5	¿Por qué la mamá seca al niño?	1	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05	4
6	¿Por qué la mamá viste al niño?	1	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05	5
2	¿Cómo se siente el niño cuando lo van a bañar?	1	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05	2
3	¿Por qué el niño se tapa los ojos con las manos?	1	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05	3
7	¿Qué hace Felipe?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	8
8	¿Cuándo duerme Felipe?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	8
9	¿Qué hace el papá de Felipe?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	9
10	¿Qué hace Felipe?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	10
11	¿Dónde está Felipe?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	10
12	¿Cuándo se baña Felipe?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	10
13	¿Qué hace Felipe?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	11
14	¿En qué parte de la casa están Felipe y su papá?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	12
15	¿Qué hacen Felipe y su papá?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	12
16	¿Para dónde va Felipe?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	13
17	¿Qué lleva Felipe en su maletín?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	13
18	¿Quiénes son ellos?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	16
19	¿Qué le da la niña al niño?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	16
20	¿Qué hacen los niños?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	17
21	¿Por qué el niño se sube a la silla?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	17
22	¿Qué hace José?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	18
23	¿Cuántos años está cumpliendo José?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	18
24	¿Por qué se van los amigos de José?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	19
25	¿Qué hace el perro?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	22
26	¿Dónde está el perro?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	22
27	¿Cómo está el perro?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	23
28	¿Por qué el perro está sucio?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	23
29	¿Qué hace ella?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	24
30	¿Por qué ella baña al perro?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	24
31	¿Cómo está el perro?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	25
32	¿Cómo está la niña?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	28
33	¿Por qué tiene el diente en la mano?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	28
34	¿Qué prenda de vestir usa la niña?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	29
35	¿Para qué la niña esconde el diente?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	29
36	¿Qué hace la niña?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	30
37	¿Qué hace el ratón?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	30
38	¿Cómo está la niña?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	31
39	¿En qué lugar está el niño?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	34
40	¿Qué tiene en la mano el niño?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	34
41	¿Qué hace el niño?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	34
42	¿Cómo está el niño?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	35
43	¿Quién es él?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	36
44	¿Por qué se sube el bombero al árbol?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	36
45	¿Cómo está el niño ahora?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	37
46	¿Qué hace el bombero?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	37
47	¿Quiénes son ellos?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	40
48	¿Qué tiene la niña en las manos?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	40
49	¿Qué hace la mamá?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	40
50	¿Para dónde van ellos?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	41
51	¿Quiénes están sentados en el asiento delantero del carro?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	41
52	¿Quiénes están sentados en el asiento trasero del carro?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	41
53	¿Dónde están ellos?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	42
54	¿Qué hace la niña?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	42
55	¿En qué lugar están ellos?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	45
56	¿Qué lleva el niño en la mano?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	45
57	¿Qué está comprando la mamá?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	45
58	¿Qué quiere hacer el niño en la piscina?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	46
59	¿Por qué la mamá agarra al niño de la mano?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	46
60	¿Qué hace la mamá?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	47
61	¿Por qué el niño tiene frío?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	48
62	¿Qué hacen los niños?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	49
64	¿A dónde va el niño?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	52
65	¿Qué prendas de vestir tiene el niño?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	52
66	¿Dónde está el niño?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	53
67	¿Qué hace el niño?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	53
68	¿Qué hace el niño?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	54
69	¿Cómo está el niño?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	54
70	¿Qué hace el niño?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	55
71	¿Por qué se seca el niño?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	55
63	¿Qué toman las personas que están en la mesa?	1	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	49
\.


--
-- TOC entry 3318 (class 0 OID 39798)
-- Dependencies: 210
-- Data for Name: Secuence_Answers; Type: TABLE DATA; Schema: secuence; Owner: postgres
--

COPY secuence."Secuence_Answers" (id, kind, tag, word, "createdAt", "updatedAt", id_demand) FROM stdin;
1	artículo	1	La	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	1
2	sustantivo	2	mamá	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	1
3	verbo	3	está	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	1
4	verbo	4	bañando	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	1
5	preposición	5	al	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	1
6	sustantivo	6	niño	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	1
7	artículo	1	El	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	2
8	sustantivo	2	niño	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	2
9	verbo	3	está	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	2
10	adjetivo	4	feliz	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	2
11	artículo	1	El	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	3
12	sustantivo	2	niño	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	3
13	prenominal	3	se	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	3
14	verbo	4	tapa	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	3
15	artículo	5	los	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	3
16	sustantivo	6	ojos	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	3
17	conector	7	porque	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	3
18	preposición	8	le	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	3
19	verbo	9	cae	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	3
20	sustantivo	10	agua	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	3
21	artículo	1	La	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	4
22	sustantivo	2	mamá	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	4
23	verbo	3	baña	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	4
25	sustantivo	5	niño	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	4
26	preposición	6	en	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	4
27	articulo	7	el	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	4
28	sustantivo	8	baño	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	4
29	artículo	1	La	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	5
30	sustantivo	2	mamá	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	5
31	verbo	3	seca	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	5
33	sustantivo	5	niño	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	5
34	conector	6	porque	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	5
35	verbo	7	está	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	5
37	artículo	1	La	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	6
38	sustantivo	2	mamá	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	6
39	verbo	3	seca	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	6
41	sustantivo	5	niño	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	6
42	conector	6	porque	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	6
43	verbo	7	tiene	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	6
36	complemento	8	mojado	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	5
44	complemento	8	frío	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	6
45	sustantivo	1	Felipe	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	7
46	verbo	2	está	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	7
47	gerundio	3	durmiendo	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	7
48	sustantivo	1	Felipe	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	8
49	verbo	2	duerme	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	8
50	preposición	3	en	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	8
51	artículo	4	la	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	8
24	preposición	4	al	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	4
32	preposición	4	al	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	5
40	preposición	4	al	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	6
52	complemento	5	noche	2020-12-02 00:00:00-05	2020-12-02 00:00:00-05	8
53	artículo	1	El	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	9
54	sustantivo	2	papá	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	9
55	verbo	3	levanta	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	9
58	sustantivo	1	Felipe	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	10
59	pronominal	2	se	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	10
60	verbo	3	está	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	10
61	gerundio	4	bañando	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	10
56	preposición	4	a	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	9
57	sustantivo	5	Felipe	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	9
62	sustantivo	1	Felipe	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	11
63	verbo	2	está	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	11
64	preposición	3	en	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	11
65	artículo	4	el	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	11
67	sustantivo	1	Felipe	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	12
68	pronominal	2	se	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	12
69	verbo	3	baña	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	12
70	preposición	4	de	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	12
71	complemento	5	día	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	12
72	sustantivo	1	Felipe	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	13
73	pronominal	2	se	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	13
74	verbo	3	está	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	13
75	peinando	4	peinando	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	13
76	sustantivo	1	Felipe	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	14
77	conjunción	2	y	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	14
78	pronombre	3	su	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	14
79	sustantivo	4	papá	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	14
80	verbo	5	están	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	14
81	preposición	6	en	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	14
82	artículo	7	el	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	14
84	sustantivo	1	Felipe	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	15
85	conjunción	2	y	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	15
86	pronombre	3	su	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	15
87	sustantivo	4	papá	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	15
88	verbo	5	están	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	15
89	gerundio	6	comiendo	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	15
66	adverbio	5	baño	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	11
83	adverbio	8	comedor	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	14
90	sustantivo	1	Felipe	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	16
91	verbo	2	va	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	16
92	preposición	3	para	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	16
93	artículo	4	el	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	16
94	adverbio	5	colegio	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	16
95	sustantivo	1	Felipe	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	17
96	verbo	2	lleva	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	17
97	pronominal	3	sus	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	17
98	complemento	4	útiles	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	17
99	complemento	5	escolares	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	17
100	pronombre	1	Ellos	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	18
101	pronominal	2	son	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	18
102	sustantivo	3	María	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	18
103	conjunción	4	y	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	18
104	sustantivo	5	José	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	18
105	artículo	1	La	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	19
106	sustantivo	2	niña	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	19
107	pronombre	3	le	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	19
108	verbo	4	da	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	19
109	pronombre	5	un	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	19
110	sustantivo	6	regalo	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	19
111	artículo	1	Los	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	20
112	sustantivo	2	niños	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	20
113	verbo	3	rompen	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	20
114	artículo	4	la	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	20
115	sustantivo	5	piñata	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	20
116	artículo	1	El	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	21
117	sustantivo	2	niño	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	21
118	pronominal	3	se	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	21
119	verbo	4	sube	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	21
120	preposición	5	a	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	21
121	artículo	6	la	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	21
122	sustantivo	7	mesa	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	21
123	pronombre	8	porque	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	21
124	verbo	9	es	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	21
125	adjetivo	10	pequeño	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	21
126	sustantivo	1	José	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	22
127	verbo	2	sopla	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	22
128	artículo	3	las	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	22
129	sustantivo	4	velas	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	22
130	sustantivo	1	José	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	23
131	verbo	2	está	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	23
132	gerundio	3	cumpliendo	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	23
133	complemento	4	5 años	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	23
134	pronombre	1	Sus	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	24
135	sustantivo	2	amigos	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	24
136	pronominal	3	se	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	24
137	verbo	4	van	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	24
138	preposición	5	para	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	24
139	pronombre	6	sus	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	24
140	adverbio	7	casas	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	24
141	artículo	1	El	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	25
142	sustantivo	2	perro	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	25
143	verbo	3	está	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	25
144	gerundio	4	corriendo	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	25
145	artículo	1	El	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	26
146	sustantivo	2	perro	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	26
147	verbo	3	está	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	26
148	preposición	4	en	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	26
149	artículo	5	el	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	26
150	adverbio	6	parque	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	26
151	artículo	1	El	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	27
152	sustantivo	2	perro	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	27
153	verbo	3	está	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	27
154	adjetivo	4	sucio	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	27
155	artículo	1	El	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	28
156	sustantivo	2	perro	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	28
157	verbo	3	está	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	28
158	adjetivo	4	sucio	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	28
159	conector	5	porque	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	28
160	pronominal	6	se	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	28
161	verbo	7	cayó	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	28
162	preposición	8	en	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	28
163	artículo	9	el	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	28
164	complemento	10	barro	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	28
165	sustantivo	1	Ella	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	29
166	verbo	2	limpia	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	29
167	preposición	3	al	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	29
168	sustantivo	4	perro	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	29
169	artículo	1	Ella	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	30
170	verbo	2	baña	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	30
171	preposición	3	al	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	30
172	sustantivo	4	perro	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	30
173	conector	5	porque	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	30
174	verbo	6	está	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	30
175	adjetivo	7	sucio	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	30
176	artículo	1	El	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	31
177	sustantivo	2	perro	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	31
178	verbo	3	está	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	31
179	adjetivo	4	limpio	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	31
180	artículo	1	La	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	32
181	sustantivo	2	niña	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	32
182	verbo	3	está	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	32
183	adjetivo	4	sorprendida	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	32
184	conector	1	Porque	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	33
185	prenominal	2	se	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	33
186	prenominal	3	le	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	33
187	verbo	4	cayó	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	33
188	artículo	1	La	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	34
189	sustantivo	2	niña	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	34
190	verbo	3	usa	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	34
191	artículo	4	una	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	34
192	sustantivo	5	pijama	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	34
193	preposición	1	Para	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	35
194	preposición	2	que	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	35
195	artículo	3	el	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	35
196	sustantivo	4	Ratón	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	35
197	sustantivo	5	Pérez	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	35
198	pronombre	6	lo	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	35
199	verbo	7	encuentre	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	35
200	artículo	1	La	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	36
201	sustantivo	2	niña	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	36
202	verbo	3	está	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	36
203	gerundio	4	durmiendo	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	36
204	artículo	1	El	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	37
205	sustantivo	2	Ratón	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	37
206	verbo	3	encuentra	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	37
207	artículo	4	el	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	37
208	sustantivo	5	diente	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	37
209	adverbio	6	debajo	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	37
210	preposición	7	de	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	37
211	artículo	8	la	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	37
212	sustantivo	9	almohada	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	37
213	artículo	1	La	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	38
214	sustantivo	2	niña	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	38
215	verbo	3	está	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	38
216	complemento	4	feliz	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	38
217	artículo	1	El	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	39
218	sustantivo	2	niño	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	39
219	verbo	3	está	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	39
220	preposición	4	en	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	39
221	artículo	5	el	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	39
222	adverbio	6	parque	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	39
223	artículo	1	El	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	40
224	sustantivo	2	niño	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	40
225	verbo	3	tiene	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	40
226	artículo	4	una	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	40
227	sustantivo	5	cometa	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	40
228	artículo	1	El	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	41
229	sustantivo	2	niño	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	41
230	verbo	3	eleva	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	41
231	artículo	4	la	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	41
232	sustantivo	5	cometa	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	41
233	artículo	1	El	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	42
234	sustantivo	2	niño	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	42
235	verbo	3	está	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	42
236	adjetivo	4	triste	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	42
238	verbo	2	es	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	43
239	artículo	3	un	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	43
240	sustantivo	4	bombero	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	43
237	pronombre	1	Él	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	43
241	conector	1	Porque	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	44
242	artículo	2	la	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	44
243	sustantivo	3	cometa	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	44
244	verbo	4	está	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	44
245	preposición	5	en	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	44
246	artículo	6	el	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	44
247	sustantivo	7	arbol	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	44
248	artículo	1	El	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	45
249	sustantivo	2	niño	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	45
250	verbo	3	está	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	45
251	adjetivo	4	feliz	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	45
252	artículo	1	El	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	46
253	sustantivo	2	bombero	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	46
254	pronombre	3	le	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	46
255	verbo	4	da	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	46
256	artículo	5	la	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	46
257	sustantivo	6	cometa	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	46
258	preposición	7	al	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	46
259	sustantivo	8	niño	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	46
260	artículo	1	El	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	47
261	sustantivo	2	papá	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	47
262	conjunción	3	y	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	47
263	artículo	4	la	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	47
264	sustantivo	5	mamá	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	47
265	artículo	1	La	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	48
266	sustantivo	2	niña	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	48
267	verbo	3	tiene	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	48
268	artículo	4	un	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	48
269	sustantivo	5	flotador	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	48
270	artículo	1	La	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	49
271	sustantivo	2	mamá	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	49
272	verbo	3	guarda	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	49
273	artículo	4	el	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	49
274	sustantivo	5	sombrero	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	49
275	pronombre	1	Ellos	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	50
276	verbo	2	van	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	50
277	preposición	3	para	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	50
278	artículo	4	la	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	50
279	sustantivo	5	playa	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	50
280	artículo	1	El	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	51
281	sustantivo	2	papá	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	51
282	conjunción	3	y	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	51
283	artículo	4	la	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	51
284	sustantivo	5	mamá	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	51
285	artículo	1	El	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	52
286	sustantivo	2	niño	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	52
287	conjunción	3	y	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	52
288	artículo	4	la	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	52
289	sustantivo	5	niña	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	52
290	pronombre	1	Ellos	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	53
291	verbo	2	están	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	53
292	preposición	3	en	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	53
293	artículo	4	la	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	53
294	adverbio	5	playa	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	53
295	artículo	1	La	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	54
296	sustantivo	2	niña	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	54
297	pronominal	3	se	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	54
298	verbo	4	mete	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	54
299	preposición	5	en	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	54
300	artículo	6	el	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	54
301	adverbio	7	agua	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	54
302	pronombre	1	Ellos	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	55
303	verbo	2	están	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	55
304	preposición	3	en	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	55
305	artículo	4	la	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	55
306	adverbio	5	piscina	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	55
307	artículo	1	El	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	56
308	sustantivo	2	niño	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	56
309	verbo	3	lleva	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	56
310	artículo	4	una	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	56
311	sustantivo	5	toalla	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	56
312	artículo	1	La	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	57
313	sustantivo	2	mamá	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	57
314	verbo	3	está	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	57
315	gerundio	4	comprando	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	57
316	artículo	5	los	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	57
317	complemento	6	boletos	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	57
318	artículo	1	El	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	58
319	sustantivo	2	niño	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	58
320	verbo	3	quiere	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	58
321	complemento	4	nadar	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	58
322	preposición	1	Para	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	59
323	preposición	2	que	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	59
324	negación	3	no	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	59
325	pronominal	4	se	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	59
326	complemento	5	caiga	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	59
327	artículo	1	La	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	60
328	sustantivo	2	mamá	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	60
329	pronombre	3	le	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	60
330	verbo	4	enseña	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	60
331	preposición	5	al	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	60
332	sustantivo	6	niño	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	60
333	preposición	7	a	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	60
334	complemento	8	nadar	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	60
335	artículo	1	El	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	61
336	sustantivo	2	niño	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	61
337	verbo	3	tiene	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	61
338	adjetivo	4	frío	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	61
339	conector	5	porque	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	61
340	verbo	6	está	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	61
341	adjetivo	7	mojado	2020-12-03 00:00:00-05	2020-12-03 00:00:00-05	61
342	artículo	1	Los	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	62
343	sustantivo	2	niños	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	62
344	verbo	3	están	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	62
345	gerundio	4	comiendo	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	62
346	artículo	1	Las	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	63
347	sustantivo	2	personas	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	63
348	verbo	3	toman	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	63
349	complemento	4	jugo	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	63
350	artículo	1	El	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	64
351	sustantivo	2	niño	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	64
352	verbo	3	va	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	64
353	preposición	4	a	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	64
354	artículo	5	la	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	64
355	adverbio	6	piscina	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	64
356	artículo	1	El	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	65
357	sustantivo	2	niño	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	65
358	verbo	3	tiene	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	65
359	artículo	4	una	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	65
360	sustantivo	5	pantaloneta	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	65
361	artículo	1	El	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	66
362	sustantivo	2	niño	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	66
363	verbo	3	está	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	66
364	preposición	4	en	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	66
365	artículo	5	el	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	66
366	adverbio	6	trampolín	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	66
367	artículo	1	El	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	67
368	sustantivo	2	niño	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	67
369	verbo	3	salta	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	67
370	preposición	4	a	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	67
371	artículo	5	la	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	67
372	adverbio	6	piscina	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	67
373	artículo	1	El	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	68
374	sustantivo	2	niño	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	68
375	verbo	3	nada	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	68
376	artículo	1	El	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	69
377	sustantivo	2	niño	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	69
378	verbo	3	está	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	69
379	adjetivo	4	feliz	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	69
380	artículo	1	El	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	70
381	sustantivo	2	niño	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	70
382	pronominal	3	se	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	70
383	verbo	4	seca	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	70
384	preposición	5	con	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	70
385	artículo	6	la	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	70
386	sustantivo	7	toalla	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	70
387	artículo	1	El	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	71
388	sustantivo	2	niño	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	71
389	pronominal	3	se	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	71
390	verbo	4	seca	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	71
391	conector	5	porque	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	71
392	verbo	6	está	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	71
393	adjetivo	7	mojado	2020-12-04 00:00:00-05	2020-12-04 00:00:00-05	71
\.


--
-- TOC entry 3319 (class 0 OID 39811)
-- Dependencies: 211
-- Data for Name: Secuence_Components; Type: TABLE DATA; Schema: secuence; Owner: postgres
--

COPY secuence."Secuence_Components" (id, name, file_type, from_path, to_path, "createdAt", "updatedAt") FROM stdin;
1	bonus.mp3	audio	/assets/audios	/audios	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
2	match.mp3	audio	/assets/audios	/audios	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
5	checked.png	image	/assets/images	/images	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
6	end_background.png	image	/assets/images	/images	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
7	good.png	image	/assets/images	/images	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
8	message_disabled.png	image	/assets/images	/images	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
9	message_enabled.png	image	/assets/images	/images	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
10	pause.png	image	/assets/images	/images	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
11	repeat.png	image	/assets/images	/images	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
12	secuencia_background_1.png	image	/assets/images	/images	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
13	secuencia_background_2.png	image	/assets/images	/images	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
14	secuencia_background_3.png	image	/assets/images	/images	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
15	secuencia_background_4.png	image	/assets/images	/images	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
16	sound_disabled.png	image	/assets/images	/images	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
17	sound_enabled.png	image	/assets/images	/images	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
18	star.png	image	/assets/images	/images	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
19	think.png	image	/assets/images	/images	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
20	unchecked.png	image	/assets/images	/images	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
21	validation_background.png	image	/assets/images	/images	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
22	play.png	image	/assets/images	/images	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
23	game.js	script	/assets/scripts	/scripts	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
24	CardFactory.js	script	/assets/scripts/factories	/scripts/factories	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
25	ApiRequest.js	script	/assets/scripts/main	/scripts/main	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
26	AudioPlayer.js	script	/assets/scripts/main	/scripts/main	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
27	GameData.js	script	/assets/scripts/main	/scripts/main	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
28	GameObject.js	script	/assets/scripts/main	/scripts/main	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
29	GameObjectAvatar.js	script	/assets/scripts/main	/scripts/main	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
30	GameObjectButton.js	script	/assets/scripts/main	/scripts/main	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
31	GameObjectCard.js	script	/assets/scripts/main	/scripts/main	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
32	GameObjectCheck.js	script	/assets/scripts/main	/scripts/main	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
33	GameObjectDeck.js	script	/assets/scripts/main	/scripts/main	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
34	GameObjectModal.js	script	/assets/scripts/main	/scripts/main	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
35	GameObjectOptions.js	script	/assets/scripts/main	/scripts/main	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
36	GameObjectPlayer.js	script	/assets/scripts/main	/scripts/main	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
37	GameObjectScore.js	script	/assets/scripts/main	/scripts/main	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
38	LevelManager.js	script	/assets/scripts/main	/scripts/main	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
39	Speaker.js	script	/assets/scripts/main	/scripts/main	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
40	Sprite.js	script	/assets/scripts/main	/scripts/main	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
41	DragMovementStrategy.js	script	/assets/scripts/strategies	/scripts/strategies	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
42	EndGameModalStrategy.js	script	/assets/scripts/strategies	/scripts/strategies	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
43	ImageModalStrategy.js	script	/assets/scripts/strategies	/scripts/strategies	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
44	SimpleCardFactoryStrategy.js	script	/assets/scripts/strategies	/scripts/strategies	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
45	SimpleCardStrategy.js	script	/assets/scripts/strategies	/scripts/strategies	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
46	StartGameModalStrategy.js	script	/assets/scripts/strategies	/scripts/strategies	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
47	TextCardFactoryStrategy.js	script	/assets/scripts/strategies	/scripts/strategies	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
48	TextCardStrategy.js	script	/assets/scripts/strategies	/scripts/strategies	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
49	TwoDimensionMovementStrategy.js	script	/assets/scripts/strategies	/scripts/strategies	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
50	ValidationModalStrategy.js	script	/assets/scripts/strategies	/scripts/strategies	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
51	GameScene.js	script	/assets/scripts/templates	/scripts/templates	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
52	GameSceneSecuencia.js	script	/assets/scripts/templates	/scripts/templates	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
53	Level.js	script	/assets/scripts/templates	/scripts/templates	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
54	LevelSecuenciaOne.js	script	/assets/scripts/templates	/scripts/templates	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
55	LevelSecuenciaTwo.js	script	/assets/scripts/templates	/scripts/templates	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
56	LevelSecuenciaThree.js	script	/assets/scripts/templates	/scripts/templates	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
57	LevelSecuenciaFour.js	script	/assets/scripts/templates	/scripts/templates	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
58	LevelSecuenciaFive.js	script	/assets/scripts/templates	/scripts/templates	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
59	LevelSecuenciaSix.js	script	/assets/scripts/templates	/scripts/templates	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
60	LevelSecuenciaSeven.js	script	/assets/scripts/templates	/scripts/templates	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
61	constants.js	script	/assets/scripts/utils	/scripts/utils	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
62	utilities.js	script	/assets/scripts/utils	/scripts/utils	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
63	variability.js	script	/assets/scripts/utils	/scripts/utils	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
3	missmatch.mp3	audio	/assets/audios	/audios	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
64	minisecuence_background.png	image	/assets/images	/images	2021-03-23 00:00:00-05	2021-03-23 00:00:00-05
65	MiniSecuenceModalStrategy.js	script	/assets/scripts/strategies	/scripts/strategies	2021-03-23 00:00:00-05	2021-03-23 00:00:00-05
4	am1_cafe_negro_azul.png	image	/assets/images	/images	2020-11-30 00:00:00-05	2020-11-30 00:00:00-05
\.


--
-- TOC entry 3320 (class 0 OID 39819)
-- Dependencies: 212
-- Data for Name: Sorting_Demands; Type: TABLE DATA; Schema: sorting; Owner: postgres
--

COPY sorting."Sorting_Demands" (id, demand, gender, is_initial, question, "createdAt", "updatedAt") FROM stdin;
1	Dobla la camisa limpia y amarilla.	\N	t	¿Qué hiciste?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
2	Haz que Felipe doble la camisa limpia y amarilla.	M	f	¿Qué hizo Felipe?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
3	Haz que Sofía doble la camisa limpia y amarilla.	F	f	¿Qué hizo Sofía?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
4	Dobla la camisa limpia y azul.	\N	t	¿Qué hiciste?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
5	Haz que Felipe doble la camisa limpia y azul.	M	f	¿Qué hizo Felipe?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
6	Haz que Sofía doble la camisa limpia y azul.	F	f	¿Qué hizo Sofía?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
10	Dobla la camisa limpia y roja.	\N	t	¿Qué hiciste?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
11	Haz que Felipe doble la camisa limpia y roja.	M	f	¿Qué hizo Felipe?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
12	Haz que Sofía doble la camisa limpia y roja.	F	f	¿Qué hizo Sofía?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
13	Dobla la camisa limpia y verde.	\N	t	¿Qué hiciste?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
14	Haz que Felipe doble la camisa limpia y verde.	M	f	¿Qué hizo Felipe?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
15	Haz que Sofía doble la camisa limpia y verde.	F	f	¿Qué hizo Sofía?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
16	Dobla el pantalón limpio y azul.	\N	t	¿Qué hiciste?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
17	Haz que Felipe doble el pantalón limpio y azul.	M	f	¿Qué hizo Felipe?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
18	Haz que Sofía doble el pantalón limpio y azul.	F	f	¿Qué hizo Sofía?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
19	Dobla el pantalón limpio y naranja.	\N	t	¿Qué hiciste?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
20	Haz que Felipe doble el pantalón limpio y naranja.	M	f	¿Qué hizo Felipe?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
21	Haz que Sofía doble el pantalón limpio y naranja.	F	f	¿Qué hizo Sofía?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
22	Dobla el pantalón limpio y verde.	\N	t	¿Qué hiciste?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
23	Haz que Felipe doble el pantalón limpio y verde.	M	f	¿Qué hizo Felipe?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
24	Haz que Sofía doble el pantalón limpio y verde.	F	f	¿Qué hizo Sofía?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
25	Guarda la camisa limpia y amarilla.	\N	t	¿Qué hiciste?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
26	Haz que Felipe guarde la camisa limpia y amarilla.	M	f	¿Qué hizo Felipe?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
27	Haz que Sofía guarde la camisa limpia y amarilla.	F	f	¿Qué hizo Sofía?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
28	Guarda la camisa limpia y azul.	\N	t	¿Qué hiciste?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
29	Haz que Felipe guarde la camisa limpia y azul.	M	f	¿Qué hizo Felipe?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
30	Haz que Sofía guarde la camisa limpia y azul.	F	f	¿Qué hizo Sofía?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
34	Guarda la camisa limpia y roja.	\N	t	¿Qué hiciste?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
35	Haz que Felipe guarde la camisa limpia y roja.	M	f	¿Qué hizo Felipe?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
36	Haz que Sofía guarde la camisa limpia y roja.	F	f	¿Qué hizo Sofía?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
37	Guarda la camisa limpia y verde.	\N	t	¿Qué hiciste?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
38	Haz que Felipe guarde la camisa limpia y verde.	M	f	¿Qué hizo Felipe?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
39	Haz que Sofía guarde la camisa limpia y verde.	F	f	¿Qué hizo Sofía?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
40	Guarda el pantalón limpio y azul.	\N	t	¿Qué hiciste?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
41	Haz que Felipe guarde el pantalón limpio y azul.	M	f	¿Qué hizo Felipe?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
42	Haz que Sofía guarde el pantalón limpio y azul.	F	f	¿Qué hizo Sofía?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
43	Guarda el pantalón limpio y naranja.	\N	t	¿Qué hiciste?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
44	Haz que Felipe guarde el pantalón limpio y naranja.	M	f	¿Qué hizo Felipe?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
45	haz que Sofía guarde el pantalón limpio y naranja.	F	f	¿Qué hizo Sofía?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
46	Guarda el pantalón limpio y verde.	\N	t	¿Qué hiciste?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
47	Haz que Felipe guarde el pantalón limpio y verde.	M	f	¿Qué hizo Felipe?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
48	Haz que Sofía guarde el pantalón limpio y verde.	F	f	¿Qué hizo Sofía?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
49	Guarda los zapatos limpios y azules.	\N	t	¿Qué hiciste?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
50	Haz que Felipe guarde los zapatos limpios y azules	M	f	¿Qué hizo Felipe?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
51	Haz que Sofía guarde los zapatos limpios y azules.	F	f	¿Qué hizo Sofía?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
52	Guarda los zapatos limpios y blancos.	\N	t	¿Qué hiciste?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
53	Haz que Felipe guarde los zapatos limpios y blancos.	M	f	¿Qué hizo Felipe?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
54	Haz que Sofía guarde los zapatos limpios y blancos.	F	f	¿Qué hizo Sofía?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
55	Guarda los zapatos limpios y cafés.	\N	t	¿Qué hiciste?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
56	Haz que Felipe guarde los zapatos limpios y cafés.	M	f	¿Qué hizo Felipe?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
57	Haz que Sofía guarde los zapatos limpios y cafés.	F	f	¿Qué hizo Sofía?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
7	Dobla la camisa limpia y de rayas.	\N	t	¿Qué hiciste?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
8	Haz que Felipe doble la camisa limpia y de rayas.	M	f	¿Qué hizo Felipe?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
9	Haz que Sofía doble la camisa limpia y de rayas.	F	f	¿Qué hizo Sofía?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
31	Guarda la camisa limpia y de rayas.	\N	t	¿Qué hiciste?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
32	Haz que Felipe guarde la camisa limpia y de rayas.	M	f	¿Qué hizo Felipe?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
33	Haz que Sofía guarde la camisa limpia y de rayas.	F	f	¿Qué hizo Sofía?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
58	Lava la camisa sucia y amarilla.	\N	t	¿Qué hiciste?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
59	Haz que Felipe lave la camisa sucia y amarilla.	M	f	¿Qué hizo Felipe?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
60	Haz que Sofía lave la camisa sucia y amarilla.	F	f	¿Qué hizo Sofía?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
61	Lava la camisa sucia y azul.	\N	t	¿Qué hiciste?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
62	Haz que Felipe lave la camisa sucia y azul.	M	f	¿Qué hizo Felipe?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
63	Haz que Sofía lave la camisa sucia y azul.	F	f	¿Qué hizo Sofía?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
64	Lava la camisa sucia y de rayas.	\N	t	¿Qué hiciste?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
65	Haz que Felipe lave la camisa sucia y de rayas.	M	f	¿Qué hizo Felipe?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
66	Haz que Sofía lave la camisa sucia y de rayas.	F	f	¿Qué hizo Sofía?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
67	Lava la camisa sucia y roja.	\N	t	¿Qué hiciste?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
68	Haz que Felipe lave la camisa sucia y roja.	M	f	¿Qué hizo Felipe?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
69	Haz que Sofía lave la camisa sucia y roja.	F	f	¿Qué hizo Sofía?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
70	Lava la camisa sucia y verde.	\N	t	¿Qué hiciste?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
71	Haz que Felipe lave la camisa sucia y verde.	M	f	¿Qué hizo Felipe?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
72	Haz que Sofía lave la camisa sucia y verde.	F	f	¿Qué hizo Sofía?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
73	Lava el pantalón sucio y azul.	\N	t	¿Qué hiciste?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
74	Haz que Felipe lave el pantalón sucio y azul.	M	f	¿Qué hizo Felipe?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
75	Haz que Sofía lave el pantalón sucio y azul.	F	f	¿Qué hizo Sofía?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
76	Lava el pantalón sucio y naranja.	\N	t	¿Qué hiciste?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
77	Haz que Felipe lave el pantalón sucio y naranja.	M	f	¿Qué hizo Felipe?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
78	Haz que Sofía lave el pantalón sucio y naranja.	F	f	¿Qué hizo Sofía?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
79	Lava el pantalón sucio y verde.	\N	t	¿Qué hiciste?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
80	Haz que Felipe lave el pantalón sucio y verde.	M	f	¿Qué hizo Felipe?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
81	Haz que Sofía lave el pantalón sucio y verde.	F	f	¿Qué hizo Sofía?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
82	Limpia los zapatos sucios y azules.	\N	t	¿Qué hiciste?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
83	Haz que Felipe limpie los zapatos sucios y azules.	M	f	¿Qué hizo Felipe?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
84	Haz que Sofía limpie los zapatos sucios y azules.	F	f	¿Qué hizo Sofía?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
85	Limpia los zapatos sucios y blancos.	\N	t	¿Qué hiciste?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
86	Haz que Felipe limpie los zapatos sucios y blancos.	M	f	¿Qué hizo Felipe?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
87	Haz que Sofía limpie los zapatos sucios y blancos.	F	f	¿Qué hizo Sofía?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
88	Limpia los zapatos sucios y cafés.	\N	t	¿Qué hiciste?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
89	Haz que Felipe limpie los zapatos sucios y cafés.	M	f	¿Qué hizo Felipe?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
90	Haz que Sofía limpie los zapatos sucios y cafés.	F	f	¿Qué hizo Sofía?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
91	Plancha la camisa arrugada y amarilla.	\N	t	¿Qué hiciste?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
92	Haz que Felipe planche la camisa arrugada y amarilla.	M	f	¿Qué hizo Felipe?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
93	Haz que Sofía planche la camisa arrugada y amarilla.	F	f	¿Qué hizo Sofía?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
94	Plancha la camisa arrugada y azul.	\N	t	¿Qué hiciste?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
95	Haz que Felipe planche la camisa arrugada y azul.	M	f	¿Qué hizo Felipe?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
96	Haz que Sofía planche la camisa arrugada y azul.	F	f	¿Qué hizo Sofía?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
97	Plancha la camisa arrugada y de rayas.	\N	t	¿Qué hiciste?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
98	Haz que Felipe planche la camisa arrugada y de rayas.	M	f	¿Qué hizo Felipe?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
99	Haz que Sofía planche la camisa arrugada y de rayas.	F	f	¿Qué hizo Sofía?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
100	Plancha la camisa arrugada y roja.	\N	t	¿Qué hiciste?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
101	Haz que Felipe plance la camisa arrugada y roja.	M	f	¿Qué hizo Felipe?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
102	Haz que Sofía planche la camisa arrugada y roja.	F	f	¿Qué hizo Sofía?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
103	Plancha la camisa arrugada y verde.	\N	t	¿Qué hiciste?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
104	Haz que Felipe planche la camisa arrugada y verde.	M	f	¿Qué hizo Felipe?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
105	Haz que Sofía planche la camisa arrugada y verde.	F	f	¿Qué hizo Sofía?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
106	Plancha el pantalón arrugado y azul.	\N	t	¿Qué hiciste?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
107	Haz que Felipe planche el pantalón arrugado y azul.	M	f	¿Qué hizo Felipe?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
108	Haz que Sofía planche el pantalón arrugado y azul.	F	f	¿Qué hizo Sofía?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
109	Plancha el pantalón arrugado y naranja.	\N	t	¿Qué hiciste?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
110	Haz que Felipe planche el pantalón arrugado y naranja.	M	f	¿Qué hizo Felipe?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
111	Haz que Sofía planche el pantalón arrugado y naranja.	F	f	¿Qué hizo Sofía?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
112	Plancha el pantalón arrugado y verde.	\N	t	¿Qué hiciste?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
113	Haz que Felipe planche el pantalón arrugado y verde.	M	f	¿Qué hizo Felipe?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
114	Haz que Sofía planche el pantalón arrugado y verde.	F	f	¿Qué hizo Sofía?	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
\.


--
-- TOC entry 3321 (class 0 OID 39827)
-- Dependencies: 213
-- Data for Name: Sorting_Answers; Type: TABLE DATA; Schema: sorting; Owner: postgres
--

COPY sorting."Sorting_Answers" (id, kind, order_phrase, word, "createdAt", "updatedAt", id_demand) FROM stdin;
1	Pronombre	1	Yo	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	1
2	Verbo	2	doblé	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	1
3	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	1
4	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	1
5	Adjetivo	5	limpia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	1
6	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	1
7	Adjetivo	7	amarilla	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	1
8	Pronombre	1	Él	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	2
9	Verbo	2	dobló	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	2
10	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	2
11	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	2
12	Adjetivo	5	limpia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	2
13	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	2
14	Adjetivo	7	amarilla	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	2
15	Pronombre	1	Ella	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	3
16	Verbo	2	dobló	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	3
17	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	3
18	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	3
19	Adjetivo	5	limpia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	3
20	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	3
21	Adjetivo	7	amariila	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	3
22	Pronombre	1	Yo	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	4
23	Verbo	2	doblé	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	4
24	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	4
25	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	4
26	Adjetivo	5	limpia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	4
27	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	4
28	Adjetivo	7	azul	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	4
29	Pronombre	1	Él	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	5
30	Verbo	2	dobló	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	5
31	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	5
32	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	5
33	Adjetivo	5	limpia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	5
34	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	5
35	Adjetivo	7	azul	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	5
36	Pronombre	1	Ella	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	6
37	Verbo	2	dobló	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	6
38	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	6
39	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	6
40	Adjetivo	5	limpia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	6
41	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	6
42	Adjetivo	7	azul	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	6
43	Pronombre	1	Yo	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	7
44	Verbo	2	doblé	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	7
45	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	7
46	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	7
47	Adjetivo	5	limpia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	7
48	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	7
49	Preposición	7	de	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	7
50	Adjetivo	8	rayas	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	7
51	Pronombre	1	Él	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	8
52	Verbo	2	dobló	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	8
53	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	8
54	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	8
55	Adjetivo	5	limpia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	8
56	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	8
57	Preposición	7	de	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	8
58	Adjetivo	8	rayas	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	8
59	Pronombre	1	Ella	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	9
60	Verbo	2	dobló	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	9
61	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	9
62	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	9
63	Adjetivo	5	limpia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	9
64	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	9
65	Preposición	7	de	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	9
66	Adjetivo	8	rayas	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	9
67	Pronombre	1	Yo	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	10
68	Verbo	2	doblé	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	10
69	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	10
70	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	10
71	Adjetivo	5	limpia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	10
72	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	10
73	Adjetivo	7	roja	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	10
74	Pronombre	1	Él	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	11
75	Verbo	2	dobló	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	11
76	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	11
77	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	11
78	Adjetivo	5	limpia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	11
79	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	11
80	Adjetivo	7	roja	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	11
81	Pronombre	1	Ella	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	12
82	Verbo	2	dobló	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	12
83	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	12
84	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	12
85	Adjetivo	5	limpia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	12
86	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	12
87	Adjetivo	7	roja	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	12
88	Pronombre	1	Yo	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	13
89	Verbo	2	doblé	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	13
90	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	13
91	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	13
92	Adjetivo	5	limpia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	13
93	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	13
94	Adjetivo	7	verde	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	13
95	Pronombre	1	Él	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	14
96	Verbo	2	dobló	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	14
97	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	14
98	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	14
99	Adjetivo	5	limpia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	14
100	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	14
101	Adjetivo	7	verde	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	14
102	Pronombre	1	Ella	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	15
103	Verbo	2	dobló	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	15
104	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	15
105	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	15
106	Adjetivo	5	limpia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	15
107	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	15
108	Adjetivo	7	verde	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	15
109	Pronombre	1	Yo	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	16
110	Verbo	2	doblé	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	16
111	Artículo	3	el	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	16
112	Sustantivo	4	pantalón	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	16
113	Adjetivo	5	limpio	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	16
114	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	16
115	Adjetivo	7	azul	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	16
116	Pronombre	1	Él	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	17
117	Verbo	2	dobló	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	17
118	Artículo	3	el	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	17
119	Sustantivo	4	pantalón	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	17
120	Adjetivo	5	limpio	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	17
121	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	17
122	Adjetivo	7	azul	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	17
123	Pronombre	1	Ella	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	18
124	Verbo	2	dobló	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	18
125	Artículo	3	el	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	18
126	Sustantivo	4	pantalón	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	18
127	Adjetivo	5	limpio	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	18
128	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	18
129	Adjetivo	7	azul	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	18
130	Pronombre	1	Yo	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	19
131	Verbo	2	doblé	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	19
132	Artículo	3	el	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	19
133	Sustantivo	4	pantalón	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	19
134	Adjetivo	5	limpio	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	19
135	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	19
136	Adjetivo	7	naranja	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	19
137	Pronombre	1	Él	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	20
138	Verbo	2	dobló	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	20
139	Artículo	3	el	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	20
140	Sustantivo	4	pantalón	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	20
141	Adjetivo	5	limpio	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	20
142	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	20
143	Adjetivo	7	naranja	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	20
144	Pronombre	1	Ella	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	21
145	Verbo	2	dobló	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	21
146	Artículo	3	el	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	21
147	Sustantivo	4	pantalón	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	21
148	Adjetivo	5	limpio	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	21
149	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	21
150	Adjetivo	7	naranja	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	21
151	Pronombre	1	Yo	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	22
152	Verbo	2	doblé	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	22
153	Artículo	3	el	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	22
154	Sustantivo	4	pantalón	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	22
155	Adjetivo	5	limpio	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	22
156	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	22
157	Adjetivo	7	verde	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	22
158	Pronombre	1	Él	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	23
159	Verbo	2	dobló	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	23
160	Artículo	3	el	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	23
161	Sustantivo	4	pantalón	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	23
162	Adjetivo	5	limpio	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	23
163	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	23
164	Adjetivo	7	verde	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	23
165	Pronombre	1	Ella	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	24
166	Verbo	2	dobló	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	24
167	Artículo	3	el	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	24
168	Sustantivo	4	pantalón	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	24
169	Adjetivo	5	limpio	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	24
170	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	24
171	Adjetivo	7	verde	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	24
172	Pronombre	1	Yo	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	25
173	Verbo	2	guardé	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	25
174	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	25
175	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	25
176	Adjetivo	5	limpia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	25
177	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	25
178	Adjetivo	7	amarilla	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	25
179	Pronombre	1	Él	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	26
180	Verbo	2	guardó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	26
181	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	26
182	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	26
183	Adjetivo	5	limpia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	26
184	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	26
185	Adjetivo	7	amarilla	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	26
186	Pronombre	1	Ella	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	27
187	Verbo	2	guardó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	27
188	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	27
189	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	27
190	Adjetivo	5	limpia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	27
191	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	27
193	Pronombre	1	Yo	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	28
194	Verbo	2	guardé	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	28
195	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	28
196	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	28
197	Adjetivo	5	limpia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	28
198	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	28
192	Adjetivo	7	amarilla	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	27
199	Adjetivo	7	azul	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	28
200	Pronombre	1	Él	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	29
201	Verbo	2	guardó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	29
202	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	29
203	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	29
204	Adjetivo	5	limpia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	29
205	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	29
206	Adjetivo	7	azul	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	29
207	Pronombre	1	Ella	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	30
208	Verbo	2	guardó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	30
209	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	30
210	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	30
211	Adjetivo	5	limpia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	30
212	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	30
213	Adjetivo	7	azul	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	30
214	Pronombre	1	Yo	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	31
215	Verbo	2	guardé	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	31
216	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	31
217	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	31
218	Adjetivo	5	limpia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	31
219	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	31
220	Preposición	7	de	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	31
221	Adjetivo	8	rayas	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	31
222	Pronombre	1	Él	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	32
223	Verbo	2	guardó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	32
224	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	32
225	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	32
226	Adjetivo	5	limpia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	32
227	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	32
228	Preposición	7	de	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	32
229	Adjetivo	8	rayas	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	32
230	Pronombre	1	Ella	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	33
231	Verbo	2	guardó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	33
232	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	33
233	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	33
234	Adjetivo	5	limpia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	33
235	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	33
236	Preposición	7	de	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	33
237	Adjetivo	8	rayas	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	33
238	Pronombre	1	Yo	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	34
239	Verbo	2	guardé	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	34
240	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	34
241	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	34
242	Adjetivo	5	limpia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	34
243	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	34
244	Adjetivo	7	roja	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	34
245	Pronombre	1	Él	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	35
246	Verbo	2	guardó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	35
247	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	35
248	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	35
249	Adjetivo	5	limpia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	35
250	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	35
251	Adjetivo	7	roja	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	35
252	Pronombre	1	Ella	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	36
253	Verbo	2	guardó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	36
254	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	36
255	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	36
256	Adjetivo	5	limpia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	36
257	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	36
258	Adjetivo	7	roja	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	36
259	Pronombre	1	Yo	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	37
260	Verbo	2	guardé	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	37
264	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	37
265	Adjetivo	7	verde	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	37
266	Pronombre	1	Él	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	38
267	Verbo	2	guardó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	38
268	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	38
269	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	38
270	Adjetivo	5	limpia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	38
271	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	38
272	Adjetivo	7	verde	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	38
273	Pronombre	1	Ella	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	39
274	Verbo	2	guardó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	39
275	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	39
276	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	39
277	Adjetivo	5	limpia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	39
278	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	39
279	Adjetivo	7	verde	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	39
280	Pronombre	1	Yo	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	40
281	Verbo	2	guardé	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	40
282	Artículo	3	el	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	40
283	Sustantivo	4	pantalón	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	40
284	Adjetivo	5	limpio	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	40
285	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	40
286	Adjetivo	7	azul	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	40
287	Pronombre	1	Él	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	41
288	Verbo	2	guardó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	41
289	Artículo	3	el	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	41
290	Sustantivo	4	pantalón	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	41
291	Adejtivo	5	limpio	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	41
292	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	41
293	Adjetivo	7	azul	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	41
294	Pronombre	1	Ella	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	42
295	Verbo	2	guardó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	42
296	Artículo	3	el	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	42
297	Sustantivo	4	pantalón	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	42
298	Adjetivo	5	limpio	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	42
299	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	42
300	Adjetivo	7	azul	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	42
301	Pronombre	1	Yo	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	43
302	Verbo	2	guardé	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	43
303	Artículo	3	el	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	43
304	Sustantivo	4	pantalón	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	43
305	Adjetivo	5	limpio	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	43
306	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	43
307	Adjetivo	7	naranja	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	43
308	Pronombre	1	Él	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	44
309	Verbo	2	guardó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	44
310	Artículo	3	el	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	44
312	Adjetivo	5	limpio	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	44
313	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	44
314	Adjetivo	7	naranja	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	44
311	Sustantivo	4	pantalón	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	44
315	Pronombre	1	Ella	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	45
316	Verbo	2	guardó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	45
317	Artículo	3	el	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	45
318	Sustantivo	4	pantalón	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	45
319	Adjetivo	5	limpio	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	45
320	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	45
321	Adjetivo	7	naranja	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	45
322	Pronombre	1	Yo	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	46
323	Verbo	2	guardé	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	46
324	Artículo	3	el	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	46
325	Sustantivo	4	pantalón	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	46
326	Adjetivo	5	limpio	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	46
327	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	46
328	Adjetivo	7	verde	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	46
329	Pronombre	1	Él	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	47
330	Verbo	2	guardó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	47
331	Artículo	3	el	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	47
332	Sustantivo	4	pantalón	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	47
333	Adjetivo	5	limpio	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	47
334	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	47
335	Adjetivo	7	verde	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	47
336	Pronombre	1	Ella	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	48
337	Verbo	2	guardó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	48
338	Artículo	3	el	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	48
339	Sustantivo	4	pantalón	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	48
340	Adjetivo	5	limpio	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	48
341	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	48
342	Adjetivo	7	verde	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	48
343	Pronombre	1	Yo	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	49
345	Artículo	3	los	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	49
346	Sustantivo	4	zapatos	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	49
347	Adjetivo	5	limpios	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	49
348	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	49
349	Adjetivo	7	azules	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	49
350	Pronombre	1	Él	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	50
351	Verbo	2	guardó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	50
352	Artículo	3	los	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	50
353	Sustantivo	4	zapatos	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	50
354	Adjetivo	5	limpios	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	50
355	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	50
356	Adjetivo	7	azules	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	50
357	Pronombre	1	Ella	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	51
358	Verbo	2	guardó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	51
359	Artículo	3	los	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	51
360	Sustantivo	4	zapatos	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	51
361	Adjetivo	5	limpios	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	51
362	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	51
363	Adjetivo	7	azules	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	51
364	Pronombre	1	Yo	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	52
365	Verbo	2	guardé	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	52
366	Artículo	3	los	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	52
367	Sustantivo	4	zapatos	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	52
368	Adjetivo	5	limpios	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	52
369	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	52
370	Adjetivo	7	blancos	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	52
371	Pronombre	1	Él	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	53
372	Verbo	2	guardó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	53
373	Artículo	3	los	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	53
374	Sustantivo	4	zapatos	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	53
375	Adjetivo	5	limpios	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	53
376	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	53
377	Adjetivo	7	blancos	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	53
378	Pronombre	1	Ella	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	54
379	Verbo	2	guardó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	54
380	Artículo	3	los	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	54
381	Sustantivo	4	zapatos	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	54
382	Adjetivo	5	limpios	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	54
383	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	54
385	Pronombre	1	Yo	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	55
386	Verbo	2	guardé	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	55
387	Artículo	3	los	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	55
388	Sustantivos	4	zapatos	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	55
389	Adjetivo	5	limpios	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	55
390	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	55
391	Adjetivo	7	cafés	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	55
392	Pronombre	1	Él	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	56
393	Verbo	2	guardó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	56
394	Artículo	3	los	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	56
395	Sustantivo	4	zapatos	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	56
396	Adjetivo	5	limpios	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	56
397	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	56
398	Adjetivo	7	cafés	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	56
399	Pronombre	1	Ella	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	57
400	Verbo	2	guardó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	57
401	Artículo	3	los	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	57
402	Sustantivo	4	zapatos	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	57
403	Adjetivo	5	limpios	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	57
404	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	57
405	Adjetivo	7	cafés	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	57
406	Pronombre	1	Yo	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	58
407	Verbo	2	lavé	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	58
408	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	58
409	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	58
410	Adjetivo	5	sucia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	58
411	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	58
412	Adjetivo	7	amarilla	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	58
413	Pronombre	1	Él	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	59
415	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	59
416	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	59
417	Adjetivo	5	sucia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	59
418	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	59
419	Adjetivo	7	amarilla	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	59
420	Pronombre	1	Ella	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	60
422	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	60
423	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	60
424	Adjetivo	5	sucia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	60
425	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	60
426	Adjetivo	7	amarilla	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	60
414	Verbo	2	lavó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	59
421	Verbo	2	lavó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	60
427	Pronombre	1	Yo	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	61
428	Verbo	2	lavé	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	61
429	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	61
430	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	61
431	Adjetivo	5	sucia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	61
432	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	61
433	Adjetivo	7	azul	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	61
434	Pronombre	1	Él	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	62
435	Verbo	2	lavó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	62
436	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	62
437	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	62
438	Adjetivo	5	sucia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	62
439	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	62
440	Adjetivo	7	azul	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	62
441	Pronombre	1	Ella	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	63
442	Verbo	2	lavó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	63
443	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	63
444	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	63
445	Adjetivo	5	sucia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	63
446	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	63
447	Adjetivo	7	azul	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	63
448	Pronombre	1	Yo	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	64
449	Verbo	2	lavé	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	64
450	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	64
451	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	64
452	Adjetivo	5	sucia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	64
453	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	64
454	Preposición	7	de	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	64
455	Adjetivo	8	rayas	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	64
456	Pronombre	1	Él	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	65
457	Verbo	2	lavó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	65
458	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	65
459	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	65
460	Adjetivo	5	sucia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	65
461	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	65
462	Preposición	7	de	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	65
463	Adjetivo	8	rayas	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	65
464	Pronombre	1	Ella	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	66
465	Verbo	2	lavó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	66
466	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	66
467	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	66
468	Adjetivo	5	sucia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	66
469	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	66
470	Preposición	7	de	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	66
471	Adjetivo	8	rayas	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	66
472	Pronombre	1	Yo	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	67
473	Verbo	2	lavé	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	67
474	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	67
475	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	67
476	Adjetivo	5	sucia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	67
477	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	67
478	Adjetivo	7	roja	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	67
479	Pronombre	1	Él	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	68
480	Verbo	2	lavó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	68
481	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	68
482	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	68
483	Adjetivo	5	sucia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	68
484	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	68
485	Adjetivo	7	roja	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	68
486	Pronombre	1	Ella	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	69
487	Verbo	2	lavó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	69
488	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	69
489	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	69
490	Adjetivo	5	sucia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	69
491	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	69
492	Adjetivo	7	roja	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	69
493	Pronombre	1	Yo	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	70
494	Verbo	2	lavé	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	70
495	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	70
496	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	70
497	Adjetivo	5	sucia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	70
498	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	70
499	Adjetivo	7	verde	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	70
500	Pronombre	1	Él	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	71
501	Verbo	2	lavó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	71
502	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	71
503	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	71
504	Adjetivo	5	sucia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	71
505	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	71
506	Adjetivo	7	verde	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	71
507	Pronombre	1	Ella	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	72
508	Verbo	2	lavó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	72
509	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	72
510	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	72
511	Adjetivo	5	sucia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	72
512	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	72
513	Adjetivo	7	verde	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	72
514	Pronombre	1	Yo	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	73
515	Verbo	2	lavé	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	73
516	Artículo	3	el	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	73
517	Sustantivo	4	pantalón	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	73
518	Adjetivo	5	sucio	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	73
519	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	73
520	Adjetivo	7	azul	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	73
521	Pronombre	1	Él	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	74
522	Verbo	2	lavó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	74
523	Artículo	3	el	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	74
524	Sustantivo	4	pantalón	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	74
525	Adjetivo	5	sucio	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	74
526	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	74
527	Adjetivo	7	azul	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	74
528	Pronombre	1	Ella	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	75
529	Verbo	2	lavó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	75
530	Artículo	3	el	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	75
531	Sustantivo	4	pantalón	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	75
532	Adjetivo	5	sucio	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	75
533	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	75
534	Adjetivo	7	azul	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	75
535	Pronombre	1	Yo	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	76
536	Verbo	2	lavé	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	76
537	Artículo	3	el	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	76
538	Sustantivo	4	pantalón	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	76
539	Adjetivo	5	sucio	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	76
540	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	76
541	Adjetivo	7	naranja	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	76
542	Pronombre	1	Él	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	77
543	Verbo	2	lavó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	77
544	Artículo	3	el	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	77
545	Sustantivo	4	pantalón	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	77
546	Adjetivo	5	sucio	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	77
547	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	77
548	Adjetivo	7	naranja	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	77
549	Pronombre	1	Ella	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	78
550	Verbo	2	lavó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	78
551	Artículo	3	el	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	78
552	Sustantivo	4	pantalón	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	78
553	Adjetivo	5	sucio	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	78
554	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	78
555	Adjetivo	7	naranja	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	78
556	Pronombre	1	Yo	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	79
557	Verbo	2	lavé	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	79
558	Artículo	3	el	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	79
559	Sustantivo	4	pantalón	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	79
560	Adjetivo	5	sucio	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	79
561	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	79
562	Adjetivo	7	verde	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	79
563	Pronombre	1	Él	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	80
564	Verbo	2	lavó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	80
565	Artículo	3	el	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	80
566	Sustantivo	4	pantalón	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	80
567	Adjetivo	5	sucio	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	80
568	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	80
569	Adjetivo	7	verde	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	80
570	Pronombre	1	Ella	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	81
571	Verbo	2	lavó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	81
572	Artículo	3	el	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	81
573	Sustantivo	4	pantalón	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	81
574	Adjetivo	5	sucio	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	81
575	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	81
576	Adjetivo	7	verde	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	81
577	Pronombre	1	Yo	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	82
578	Verbo	2	limpié	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	82
579	Artículo	3	los	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	82
580	Sustantivo	4	zapatos	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	82
581	Adjetivo	5	sucios	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	82
582	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	82
583	Adjetivo	7	azules	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	82
584	Pronombre	1	Él	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	83
585	Verbo	2	limpió	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	83
586	Artículo	3	los	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	83
587	Sustantivo	4	zapatos	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	83
588	Adjetivo	5	sucios	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	83
589	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	83
590	Adjetivo	7	azules	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	83
591	Pronombre	1	Ella	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	84
592	Verbo	2	limpió	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	84
593	Artículo	3	los	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	84
594	Sustantivo	4	zapatos	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	84
595	Adjetivo	5	sucios	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	84
596	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	84
597	Adjetivo	7	azules	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	84
598	Pronombre	1	Yo	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	85
600	Artículo	3	los	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	85
601	Sustantivo	4	zapatos	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	85
602	Adjetivo	5	sucios	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	85
603	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	85
604	Adjetivo	7	blancos	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	85
599	Verbo	2	limpié	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	85
605	Pronombre	1	Él	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	86
606	Verbo	2	limpió	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	86
607	Artículo	3	los	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	86
608	Sustantivo	4	zapatos	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	86
609	Adjetivo	5	sucios	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	86
610	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	86
611	Adjetivo	7	blancos	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	86
612	Pronombre	1	Ella	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	87
613	Verbo	2	limpió	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	87
614	Artículo	3	los	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	87
615	Sustantivo	4	zapatos	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	87
616	Adjetivo	5	sucios	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	87
617	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	87
618	Adjetivo	7	blancos	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	87
619	Pronombre	1	Yo	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	88
620	Verbo	2	limpié	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	88
621	Artículo	3	los	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	88
622	Sustantivo	4	zapatos	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	88
623	Adjetivo	5	sucios	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	88
624	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	88
625	Adjetivo	7	cafes	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	88
626	Pronombre	1	Él	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	89
627	Verbo	2	limpió	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	89
628	Artículo	3	los	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	89
629	Sustantivo	4	zapatos	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	89
630	Adjetivo	5	sucios	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	89
631	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	89
632	Adjetivo	7	cafés	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	89
633	Pronombre	1	Ella	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	90
634	Verbo	2	limpió	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	90
635	Artículo	3	los	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	90
636	Sustantivo	4	zapatos	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	90
637	Adjetivo	5	sucios	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	90
638	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	90
639	Adjetivo	7	cafés	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	90
640	Pronombre	1	Yo	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	91
641	Verbo	2	planché	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	91
642	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	91
643	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	91
644	Adjetivo	5	arrugada	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	91
645	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	91
646	Adjetivo	7	amarilla	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	91
647	Pronombre	1	Él	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	92
648	Verbo	2	planchó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	92
649	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	92
650	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	92
651	Adjetivo	5	arrugada	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	92
652	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	92
653	Adjetivo	7	amarilla	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	92
654	Pronombre	1	Ella	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	93
655	Verbo	2	planchó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	93
656	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	93
657	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	93
658	Adjetivo	5	arrugada	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	93
659	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	93
660	Adjetivo	7	amarilla	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	93
661	Pronombre	1	Yo	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	94
662	Verbo	2	planché	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	94
663	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	94
664	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	94
665	Adjetivo	5	arrugada	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	94
666	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	94
667	Adjetivo	7	azul	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	94
668	Pronombre	1	Él	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	95
669	Verbo	2	planchó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	95
670	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	95
671	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	95
672	Adjetivo	5	arrugada	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	95
673	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	95
674	Adjetivo	7	azul	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	95
675	Pronombre	1	Ella	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	96
676	Verbo	2	planchó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	96
677	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	96
678	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	96
679	Adjetivo	5	arrugada	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	96
680	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	96
681	Adjetivo	7	azul	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	96
682	Pronombre	1	Yo	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	97
683	Verbo	2	planché	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	97
684	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	97
685	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	97
686	Adjetivo	5	arrugada	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	97
687	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	97
688	Preposición	7	de	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	97
689	Adjetivo	8	rayas	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	97
690	Pronombre	1	Él	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	98
691	Verbo	2	planchó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	98
692	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	98
693	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	98
694	Adjetivo	5	arrugada	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	98
695	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	98
696	Preposición	7	de	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	98
697	Adjetivo	8	rayas	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	98
698	Pronombre	1	Ella	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	99
699	Verbo	2	planchó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	99
700	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	99
701	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	99
702	Adjetivo	5	arrugada	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	99
703	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	99
704	Preposición	7	de	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	99
705	Adjetivo	8	rayas	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	99
706	Pronombre	1	Yo	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	100
707	Verbo	2	planché	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	100
708	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	100
709	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	100
710	Adjetivo	5	arrugada	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	100
711	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	100
712	Adjetivo	7	roja	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	100
713	Pronombre	1	Él	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	101
714	Verbo	2	planchó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	101
715	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	101
716	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	101
717	Adjetivo	5	arrugada	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	101
718	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	101
719	Adjetivo	7	roja	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	101
720	Pronombre	1	Ella	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	102
721	Verbo	2	planchó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	102
722	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	102
723	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	102
724	Adjetivo	5	arrugada	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	102
725	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	102
726	Adjetivo	7	roja	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	102
727	Pronombre	1	Yo	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	103
728	Verbo	2	planché	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	103
729	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	103
730	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	103
731	Adjetivo	5	arrugada	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	103
732	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	103
733	Adjetivo	7	verde	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	103
734	Pronombre	1	Él	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	104
735	Verbo	2	planchó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	104
736	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	104
737	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	104
738	Adjetivo	5	arrugada	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	104
739	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	104
740	Adjetivo	7	verde	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	104
741	Pronombre	1	Ella	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	105
742	Verbo	2	planchó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	105
743	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	105
744	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	105
745	Adjetivo	5	arrugada	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	105
746	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	105
747	Adjetivo	7	verde	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	105
748	Pronombre	1	Yo	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	106
749	Verbo	2	planché	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	106
750	Artículo	3	el	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	106
751	Sustantivo	4	pantalón	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	106
752	Adjetivo	5	arrugado	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	106
753	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	106
754	Adjetivo	7	azul	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	106
755	Pronombre	1	Él	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	107
756	Verbo	2	planchó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	107
757	Artículo	3	el	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	107
758	Sustantivo	4	pantalón	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	107
759	Adjetivo	5	arrugado	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	107
760	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	107
761	Adjetivo	7	azul	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	107
762	Pronombre	1	Ella	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	108
763	Verbo	2	planchó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	108
764	Artículo	3	el	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	108
765	Sustantivo	4	pantalón	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	108
766	Adjetivo	5	arrugado	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	108
767	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	108
768	Adjetivo	7	azul	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	108
769	Pronombre	1	Yo	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	109
770	Verbo	2	planché	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	109
771	Artículo	3	el	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	109
772	Sustantivo	4	pantalón	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	109
773	Adjetivo	5	arrugado	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	109
774	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	109
775	Adjetivo	7	naranja	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	109
776	Pronombre	1	Él	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	110
777	Verbo	2	planchó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	110
778	Artículo	3	el	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	110
779	Sustantivo	4	pantalón	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	110
780	Adjetivo	5	arrugado	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	110
781	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	110
782	Adjetivo	7	naranja	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	110
783	Pronombre	1	Ella	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	111
784	Verbo	2	planchó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	111
785	Artículo	3	el	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	111
786	Sustantivo	4	pantalón	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	111
787	Adjetivo	5	arrugado	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	111
788	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	111
789	Adjetivo	7	naranja	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	111
790	Pronombre	1	Yo	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	112
791	Verbo	2	planché	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	112
792	Artículo	3	el	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	112
793	Sustantivo	4	pantalón	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	112
794	Adjetivo	5	arrugado	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	112
795	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	112
796	Adjetivo	7	verde	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	112
797	Pronombre	1	Él	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	113
798	Verbo	2	planchó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	113
799	Artículo	3	el	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	113
800	Sustantivo	4	pantalón	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	113
801	Adjetivo	5	arrugado	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	113
802	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	113
803	Adjetivo	7	verde	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	113
804	Pronombre	1	Ella	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	114
805	Verbo	2	planchó	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	114
806	Artículo	3	el	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	114
807	Sustantivo	4	pantalón	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	114
808	Adjetivo	5	arrugado	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	114
809	Conjunción	6	y	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	114
810	Adjetivo	7	verde	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	114
261	Artículo	3	la	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	37
262	Sustantivo	4	camisa	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	37
263	Adjetivo	5	limpia	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	37
344	Verbo	2	guardé	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	49
384	Adjetivo	7	blancos	2021-01-17 00:00:00-05	2021-01-17 00:00:00-05	54
\.


--
-- TOC entry 3322 (class 0 OID 39840)
-- Dependencies: 214
-- Data for Name: Sorting_Components; Type: TABLE DATA; Schema: sorting; Owner: postgres
--

COPY sorting."Sorting_Components" (id, name, file_type, from_path, to_path, "createdAt", "updatedAt") FROM stdin;
1	bonus.mp3	audio	/assets/audios	/audios	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
2	match.mp3	audio	/assets/audios	/audios	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
3	missmatch.mp3	audio	/assets/audios	/audios	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
4	action_cambiar_disabled.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
5	action_cambiar_enabled.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
6	action_doblar_disabled.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
7	action_doblar_enabled.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
8	action_guardar_disabled.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
9	action_guardar_enabled.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
10	action_lavar_disabled.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
11	action_lavar_enabled.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
12	action_limpiar_disabled.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
13	action_limpiar_enabled.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
14	action_planchar_disabled.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
15	action_planchar_enabled.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
16	action_poner_disabled.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
17	action_poner_enabled.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
18	action_quitar_disabled.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
19	action_quitar_enabled.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
20	action_sacar_disabled.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
21	action_sacar_enabled.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
23	boy_face.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
24	boy.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
25	checked.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
26	end_background.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
27	girl_face.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
28	girl.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
29	hand.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
30	message_disabled.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
31	message_enabled.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
32	mom.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
33	ordenando_cuarto_background_1.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
34	ordenando_cuarto_background_2.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
35	ordenando_cuarto_background_3.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
36	pause.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
37	play.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
38	repeat.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
39	scared_boy.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
40	sound_disabled.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
41	sound_enabled.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
42	star.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
43	unchecked.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
44	validation_background.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
45	CardFactory.js	script	/assets/scripts/factories	/scripts/factories	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
46	ApiRequest.js	script	/assets/scripts/main	/scripts/main	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
47	AudioPlayer.js	script	/assets/scripts/main	/scripts/main	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
48	GameData.js	script	/assets/scripts/main	/scripts/main	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
49	GameObject.js	script	/assets/scripts/main	/scripts/main	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
50	GameObjectAvatar.js	script	/assets/scripts/main	/scripts/main	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
51	GameObjectButton.js	script	/assets/scripts/main	/scripts/main	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
52	GameObjectCard.js	script	/assets/scripts/main	/scripts/main	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
53	GameObjectCharacter.js	script	/assets/scripts/main	/scripts/main	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
54	GameObjectCheck.js	script	/assets/scripts/main	/scripts/main	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
55	GameObjectDeck.js	script	/assets/scripts/main	/scripts/main	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
56	GameObjectModal.js	script	/assets/scripts/main	/scripts/main	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
57	GameObjectOptions.js	script	/assets/scripts/main	/scripts/main	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
58	GameObjectPlayer.js	script	/assets/scripts/main	/scripts/main	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
59	GameObjectScore.js	script	/assets/scripts/main	/scripts/main	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
60	Speaker.js	script	/assets/scripts/main	/scripts/main	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
61	Sprite.js	script	/assets/scripts/main	/scripts/main	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
62	EndGameModalStrategy.js	script	/assets/scripts/strategies	/scripts/strategies	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
63	SimpleCardFactoryStrategy.js	script	/assets/scripts/strategies	/scripts/strategies	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
64	SimpleCardStrategy.js	script	/assets/scripts/strategies	/scripts/strategies	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
65	StartGameModalStrategy.js	script	/assets/scripts/strategies	/scripts/strategies	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
66	TwoDimensionMovementStrategy.js	script	/assets/scripts/strategies	/scripts/strategies	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
67	ValidationModalStrategy.js	script	/assets/scripts/strategies	/scripts/strategies	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
68	GameScene.js	script	/assets/scripts/templates	/scripts/templates	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
69	GameSceneOrdenando.js	script	/assets/scripts/templates	/scripts/templates	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
70	GameSceneOrdenandoCuarto.js	script	/assets/scripts/templates	/scripts/templates	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
71	constants.js	script	/assets/scripts/utils	/scripts/utils	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
72	utilities.js	script	/assets/scripts/utils	/scripts/utils	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
73	variability.js	script	/assets/scripts/utils	/scripts/utils	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
74	game.js	script	/assets/scripts	/scripts	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
75	think.png	image	/assets/images	/images	2021-01-29 00:00:00-05	2021-01-29 00:00:00-05
76	ImageModalStrategy.js	script	/assets/scripts/strategies	/scripts/strategies	2021-01-29 00:00:00-05	2021-01-29 00:00:00-05
77	boy_face_2.png	image	/assets/images	/images	2021-02-01 00:00:00-05	2021-02-01 00:00:00-05
22	am1_cafe_negro_azul.png	image	/assets/images	/images	2021-01-14 00:00:00-05	2021-01-14 00:00:00-05
\.


--
-- TOC entry 3323 (class 0 OID 39848)
-- Dependencies: 215
-- Data for Name: Sorting_Images; Type: TABLE DATA; Schema: sorting; Owner: postgres
--

COPY sorting."Sorting_Images" (id, action, activity, cloth_animation, final_path, next_action, path, tag, "createdAt", "updatedAt") FROM stdin;
1	Doblar	11	/clothes/camisa_amarilla_doblar.gif	\N	Guardar	/clothes/camisa_amarilla.png	Camisa Amarilla Limpia	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
2	Doblar	11	/clothes/camisa_azul_doblar.gif	\N	Guardar	/clothes/camisa_azul.png	Camisa Azul Limpia	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
3	Doblar	11	/clothes/camisa_rayas_doblar.gif	\N	Guardar	/clothes/camisa_rayas.png	Camisa Rayas Limpia	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
4	Doblar	11	/clothes/camisa_roja_doblar.gif	\N	Guardar	/clothes/camisa_roja.png	Camisa Roja Limpia	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
5	Doblar	11	/clothes/camisa_verde_doblar.gif	\N	Guardar	/clothes/camisa_verde.png	Camisa Verde Limpia	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
6	Doblar	11	/clothes/pantalon_azul_doblar.gif	\N	Guardar	/clothes/pantalon_azul.png	Pantalón Azul Limpio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
7	Doblar	11	/clothes/pantalon_naranja_doblar.gif	\N	Guardar	/clothes/pantalon_naranja.png	Pantalón Naranja Limpio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
8	Doblar	11	/clothes/pantalon_verde_doblar.gif	\N	Guardar	/clothes/pantalon_verde.png	Pantalón Verde Limpio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
9	Guardar	11	\N	\N	\N	/clothes/camisa_amarilla.png	Camisa Amarilla Limpia	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
10	Guardar	11	\N	\N	\N	/clothes/camisa_azul.png	Camisa Azul Limpia	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
11	Guardar	11	\N	\N	\N	/clothes/camisa_rayas.png	Camisa Rayas Limpia	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
12	Guardar	11	\N	\N	\N	/clothes/camisa_roja.png	Camisa Roja Limpia	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
13	Guardar	11	\N	\N	\N	/clothes/camisa_verde.png	Camisa Verde Limpia	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
14	Guardar	11	\N	\N	\N	/clothes/pantalon_azul.png	Pantalón Azul Limpio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
15	Guardar	11	\N	\N	\N	/clothes/pantalon_naranja.png	Pantalón Naranja Limpio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
16	Guardar	11	\N	\N	\N	/clothes/pantalon_verde.png	Pantalón Verde Limpio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
17	Guardar	11	\N	\N	\N	/clothes/zapatos_azules.png	Zapatos Azules Limpios	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
18	Guardar	11	\N	\N	\N	/clothes/zapatos_blancos.png	Zapatos Blancos Limpios	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
19	Guardar	11	\N	\N	\N	/clothes/zapatos_cafes.png	Zapatos Cafés Limpios	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
20	Lavar	11	\N	/clothes/camisa_amarilla_colgar.png	Colgar	/clothes/camisa_amarilla_sucia.png	Camisa Amarilla Sucia	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
21	Lavar	11	\N	/clothes/camisa_azul_colgar.png	Colgar	/clothes/camisa_azul_sucia.png	Camisa Azul Sucia	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
22	Lavar	11	\N	/clothes/camisa_rayas_colgar.png	Colgar	/clothes/camisa_rayas_sucia.png	Camisa Rayas Sucia	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
23	Lavar	11	\N	/clothes/camisa_roja_colgar.png	Colgar	/clothes/camisa_roja_sucia.png	Camisa Roja Sucia	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
24	Lavar	11	\N	/clothes/camisa_verde_colgar.png	Colgar	/clothes/camisa_verde_sucia.png	Camisa Verde Sucia	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
25	Lavar	11	\N	/clothes/pantalon_azul_colgar.png	Colgar	/clothes/pantalon_azul_sucio.png	Pantalón Azul Sucio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
26	Lavar	11	\N	/clothes/pantalon_naranja_colgar.png	Colgar	/clothes/pantalon_naranja_sucio.png	Pantalón Naranja Sucio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
27	Lavar	11	\N	/clothes/pantalon_verde_colgar.png	Colgar	/clothes/pantalon_verde_sucio.png	Pantalón Verde Sucio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
28	Limpiar	11	/clothes/zapatos_azules_limpiar.gif	\N	Guardar	/clothes/zapatos_azules_sucios.png	Zapatos Azules Sucios	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
29	Limpiar	11	/clothes/zapatos_blancos_limpiar.gif	\N	Guardar	/clothes/zapatos_blancos_sucios.png	Zapatos Blancos Sucios	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
30	Limpiar	11	/clothes/zapatos_cafes_limpiar.gif	\N	Guardar	/clothes/zapatos_cafes_sucios.png	Zapatos Cafés Sucios	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
31	Planchar	11	/clothes/camisa_amarilla_planchar.gif	\N	Guardar	/clothes/camisa_amarilla_arrugada.png	Camisa Amarilla Arrugada	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
32	Planchar	11	/clothes/camisa_azul_planchar.gif	\N	Guardar	/clothes/camisa_azul_arrugada.png	Camisa Azul Arrugada	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
33	Planchar	11	/clothes/camisa_rayas_planchar.gif	\N	Guardar	/clothes/camisa_rayas_arrugada.png	Camisa Rayas Arrugada	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
34	Planchar	11	/clothes/camisa_roja_planchar.gif	\N	Guardar	/clothes/camisa_roja_arrugada.png	Camisa Roja Arrugada	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
35	Planchar	11	/clothes/camisa_verde_planchar.gif	\N	Guardar	/clothes/camisa_verde_arrugada.png	Camisa Verde Arrugada	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
36	Planchar	11	/clothes/pantalon_azul_planchar.gif	\N	Guardar	/clothes/pantalon_azul_arrugado.png	Pantalón Azul Arrugado	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
37	Planchar	11	/clothes/pantalon_naranja_planchar.gif	\N	Guardar	/clothes/pantalon_naranja_arrugado.png	Pantalón Naranja Arrugado	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
38	Planchar	11	/clothes/pantalon_verde_planchar.gif	\N	Guardar	/clothes/pantalon_verde_arrugado.png	Pantalón Verde Arrugado	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05
\.


--
-- TOC entry 3324 (class 0 OID 39856)
-- Dependencies: 216
-- Data for Name: Sorting_Images_Demands; Type: TABLE DATA; Schema: sorting; Owner: postgres
--

COPY sorting."Sorting_Images_Demands" (id, vocabulary, "createdAt", "updatedAt", id_demand, id_image) FROM stdin;
1	Camisa	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	1	1
2	Camisa	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	2	1
3	Camisa	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	3	1
4	Limpio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	1	1
5	Limpio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	2	1
6	Limpio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	3	1
7	Doblar	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	1	1
8	Doblar	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	2	1
9	Doblar	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	3	1
10	Camisa	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	4	2
11	Camisa	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	5	2
12	Camisa	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	6	2
13	Limpio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	4	2
14	Limpio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	5	2
15	Limpio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	6	2
16	Doblar	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	4	2
17	Doblar	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	5	2
18	Doblar	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	6	2
19	Camisa	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	7	3
20	Camisa	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	8	3
21	Camisa	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	9	3
22	Limpio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	7	3
23	Limpio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	8	3
24	Limpio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	9	3
25	Doblar	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	7	3
26	Doblar	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	8	3
27	Doblar	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	9	3
28	Camisa	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	10	4
29	Camisa	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	11	4
30	Camisa	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	12	4
31	Limpio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	10	4
32	Limpio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	11	4
33	Limpio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	12	4
34	Doblar	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	10	4
35	Doblar	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	11	4
36	Doblar	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	12	4
37	Camisa	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	13	5
38	Camisa	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	14	5
39	Camisa	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	15	5
40	Limpio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	13	5
41	Limpio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	14	5
42	Limpio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	15	5
43	Doblar	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	13	5
44	Doblar	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	14	5
45	Doblar	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	15	5
46	Pantalón	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	16	6
47	Pantalón	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	17	6
48	Pantalón	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	18	6
49	Limpio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	16	6
50	Limpio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	17	6
51	Limpio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	18	6
52	Doblar	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	16	6
53	Doblar	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	17	6
54	Doblar	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	18	6
55	Pantalón	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	19	7
56	Pantalón	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	20	7
57	Pantalón	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	21	7
58	Limpio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	19	7
59	Limpio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	20	7
60	Limpio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	21	7
61	Doblar	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	19	7
62	Doblar	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	20	7
63	Doblar	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	21	7
64	Pantalón	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	22	8
65	Pantalón	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	23	8
66	Pantalón	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	24	8
67	Limpio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	22	8
68	Limpio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	23	8
69	Limpio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	24	8
70	Doblar	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	22	8
71	Doblar	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	23	8
72	Doblar	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	24	8
73	Camisa	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	25	9
74	Camisa	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	26	9
75	Camisa	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	27	9
76	Limpio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	25	9
77	Limpio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	26	9
78	Limpio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	27	9
79	Guardar	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	25	9
80	Guardar	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	26	9
81	Guardar	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	27	9
82	Camisa	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	28	10
83	Camisa	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	29	10
84	Camisa	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	30	10
85	Limpio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	28	10
86	Limpio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	29	10
87	Limpio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	30	10
88	Guardar	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	28	10
89	Guardar	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	29	10
90	Guardar	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	30	10
91	Camisa	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	31	11
92	Camisa	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	32	11
93	Camisa	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	33	11
94	Limpio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	31	11
95	Limpio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	32	11
96	Limpio	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	33	11
97	Guardar	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	31	11
98	Guardar	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	32	11
99	Guardar	2021-01-15 00:00:00-05	2021-01-15 00:00:00-05	33	11
100	Camisa	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	34	12
101	Camisa	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	35	12
102	Camisa	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	36	12
103	Limpio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	34	12
104	Limpio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	35	12
105	Limpio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	36	12
106	Guardar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	34	12
107	Guardar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	35	12
108	Guardar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	36	12
109	Camisa	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	37	13
110	Camisa	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	38	13
111	Camisa	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	39	13
112	Limpio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	37	13
113	Limpio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	38	13
114	Limpio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	39	13
115	Guardar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	37	13
116	Guardar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	38	13
117	Guardar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	39	13
118	Pantalón	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	40	14
119	Pantalón	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	41	14
120	Pantalón	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	42	14
121	Limpio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	40	14
122	Limpio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	41	14
123	Limpio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	42	14
124	Guardar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	40	14
125	Guardar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	41	14
126	Guardar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	42	14
127	Pantalón	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	43	15
128	Pantalón	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	44	15
129	Pantalón	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	45	15
130	Limpio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	43	15
131	Limpio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	44	15
132	Limpio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	45	15
133	Guardar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	43	15
134	Guardar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	44	15
135	Guardar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	45	15
136	Pantalón	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	46	16
137	Pantalón	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	47	16
138	Pantalón	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	48	16
139	Limpio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	46	16
140	Limpio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	47	16
141	Limpio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	48	16
142	Guardar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	46	16
143	Guardar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	47	16
144	Guardar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	48	16
145	Zapatos	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	49	17
146	Zapatos	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	50	17
147	Zapatos	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	51	17
148	Limpio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	49	17
149	Limpio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	50	17
150	Limpio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	51	17
151	Guardar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	49	17
152	Guardar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	50	17
153	Guardar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	51	17
154	Zapatos	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	52	18
155	Zapatos	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	53	18
156	Zapatos	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	54	18
157	Limpio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	52	18
158	Limpio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	53	18
159	Limpio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	54	18
160	Guardar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	52	18
161	Guardar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	53	18
162	Guardar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	54	18
163	Zapatos	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	55	19
164	Zapatos	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	56	19
165	Zapatos	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	57	19
166	Limpio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	55	19
167	Limpio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	56	19
168	Limpio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	57	19
169	Guardar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	55	19
170	Guardar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	56	19
171	Guardar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	57	19
172	Camisa	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	58	20
173	Camisa	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	59	20
174	Camisa	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	60	20
175	Sucio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	58	20
176	Sucio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	59	20
177	Sucio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	60	20
178	Lavar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	58	20
179	Lavar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	59	20
180	Lavar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	60	20
181	Camisa	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	61	21
182	Camisa	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	62	21
183	Camisa	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	63	21
184	Sucio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	61	21
185	Sucio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	62	21
186	Sucio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	63	21
187	Lavar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	61	21
188	Lavar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	62	21
189	Lavar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	63	21
190	Camisa	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	64	22
191	Camisa	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	65	22
192	Camisa	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	66	22
193	Sucio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	64	22
194	Sucio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	65	22
195	Sucio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	66	22
196	Lavar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	64	22
197	Lavar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	65	22
198	Lavar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	66	22
199	Camisa	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	67	23
200	Camisa	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	68	23
201	Camisa	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	69	23
202	Sucio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	67	23
203	Sucio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	68	23
204	Sucio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	69	23
205	Lavar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	67	23
206	Lavar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	68	23
207	Lavar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	69	23
208	Camisa	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	70	24
209	Camisa	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	71	24
210	Camisa	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	72	24
211	Sucio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	70	24
212	Sucio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	71	24
213	Sucio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	72	24
214	Lavar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	70	24
215	Lavar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	71	24
216	Lavar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	72	24
217	Pantalón	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	73	25
218	Pantalón	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	74	25
219	Pantalón	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	75	25
220	Sucio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	73	25
221	Sucio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	74	25
222	Sucio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	75	25
223	Lavar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	73	25
224	Lavar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	74	25
225	Lavar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	75	25
226	Pantalón	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	76	26
227	Pantalón	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	77	26
228	Pantalón	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	78	26
229	Sucio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	76	26
230	Sucio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	77	26
231	Sucio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	78	26
232	Lavar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	76	26
233	Lavar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	77	26
234	Lavar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	78	26
235	Pantalón	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	79	27
236	Pantalón	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	80	27
237	Pantalón	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	81	27
238	Sucio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	79	27
239	Sucio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	80	27
240	Sucio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	81	27
241	Lavar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	79	27
242	Lavar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	80	27
243	Lavar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	81	27
244	Zapatos	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	82	28
245	Zapatos	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	83	28
246	Zapatos	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	84	28
247	Sucio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	82	28
248	Sucio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	83	28
249	Sucio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	84	28
250	Limpiar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	82	28
251	Limpiar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	83	28
252	Limpiar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	84	28
253	Zapatos	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	85	29
254	Zapatos	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	86	29
255	Zapatos	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	87	29
256	Sucio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	85	29
257	Sucio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	86	29
258	Sucio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	87	29
259	Limpiar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	85	29
260	Limpiar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	86	29
261	Limpiar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	87	29
262	Zapatos	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	88	30
263	Zapatos	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	89	30
264	Zapatos	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	90	30
265	Sucio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	88	30
266	Sucio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	89	30
267	Sucio	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	90	30
268	Limpiar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	88	30
269	Limpiar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	89	30
270	Limpiar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	90	30
271	Camisa	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	91	31
272	Camisa	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	92	31
273	Camisa	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	93	31
274	Arrugado	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	91	31
275	Arrugado	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	92	31
276	Arrugado	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	93	31
277	Planchar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	91	31
278	Planchar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	92	31
279	Planchar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	93	31
280	Camisa	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	94	32
281	Camisa	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	95	32
282	Camisa	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	96	32
283	Arrugado	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	94	32
284	Arrugado	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	95	32
285	Arrugado	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	96	32
286	Planchar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	94	32
287	Planchar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	95	32
288	Planchar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	96	32
289	Camisa	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	97	33
290	Camisa	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	98	33
291	Camisa	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	99	33
292	Arrugado	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	97	33
293	Arrugado	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	98	33
294	Arrugado	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	99	33
295	Planchar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	97	33
296	Planchar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	98	33
297	Planchar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	99	33
298	Camisa	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	100	34
299	Camisa	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	101	34
300	Camisa	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	102	34
301	Arrugado	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	100	34
302	Arrugado	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	101	34
303	Arrugado	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	102	34
304	Planchar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	100	34
305	Planchar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	101	34
306	Planchar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	102	34
307	Camisa	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	103	35
308	Camisa	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	104	35
309	Camisa	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	105	35
310	Arrugado	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	103	35
311	Arrugado	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	104	35
312	Arrugado	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	105	35
313	Planchar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	103	35
314	Planchar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	104	35
315	Planchar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	105	35
316	Pantalón	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	106	36
317	Pantalón	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	107	36
318	Pantalón	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	108	36
319	Arrugado	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	106	36
320	Arrugado	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	107	36
321	Arrugado	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	108	36
322	Planchar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	106	36
323	Planchar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	107	36
324	Planchar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	108	36
325	Pantalón	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	109	37
326	Pantalón	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	110	37
327	Pantalón	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	111	37
328	Arrugado	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	109	37
329	Arrugado	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	110	37
330	Arrugado	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	111	37
331	Planchar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	109	37
332	Planchar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	110	37
333	Planchar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	111	37
334	Pantalón	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	112	38
335	Pantalón	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	113	38
336	Pantalón	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	114	38
337	Arrugado	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	112	38
338	Arrugado	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	113	38
339	Arrugado	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	114	38
340	Planchar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	112	38
341	Planchar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	113	38
342	Planchar	2021-01-16 00:00:00-05	2021-01-16 00:00:00-05	114	38
\.


--
-- TOC entry 3360 (class 0 OID 0)
-- Dependencies: 228
-- Name: Activities_Sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Activities_Sessions_id_seq"', 1, false);


--
-- TOC entry 3361 (class 0 OID 0)
-- Dependencies: 234
-- Name: Levels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Levels_id_seq"', 1, false);


--
-- TOC entry 3362 (class 0 OID 0)
-- Dependencies: 236
-- Name: Matches_Feeds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Matches_Feeds_id_seq"', 1, false);


--
-- TOC entry 3363 (class 0 OID 0)
-- Dependencies: 238
-- Name: Phrases_Feeds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Phrases_Feeds_id_seq"', 1, false);


--
-- TOC entry 3364 (class 0 OID 0)
-- Dependencies: 240
-- Name: Secuences_Feeds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Secuences_Feeds_id_seq"', 1, false);


-- Completed on 2021-05-28 17:05:23

--
-- PostgreSQL database dump complete
--

