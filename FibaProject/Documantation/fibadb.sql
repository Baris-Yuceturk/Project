toc.dat                                                                                             0000600 0004000 0002000 00000022710 14333206736 0014450 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       &    *        
    
    z            fibadb    15.0    15.0 "               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                    1262    40974    fibadb    DATABASE     z   CREATE DATABASE fibadb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE fibadb;
                postgres    false         ?            1259    41040    cart    TABLE     ?   CREATE TABLE public.cart (
    cart_id bigint NOT NULL,
    customer_name character varying(255),
    status boolean NOT NULL,
    total_amount double precision NOT NULL
);
    DROP TABLE public.cart;
       public         heap    postgres    false         ?            1259    41039    cart_cart_id_seq    SEQUENCE     y   CREATE SEQUENCE public.cart_cart_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.cart_cart_id_seq;
       public          postgres    false    219                    0    0    cart_cart_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.cart_cart_id_seq OWNED BY public.cart.cart_id;
          public          postgres    false    218         ?            1259    41047    cart_product    TABLE        CREATE TABLE public.cart_product (
    cart_product_id bigint NOT NULL,
    line_amount double precision NOT NULL,
    product_id character varying(255),
    sales_price double precision NOT NULL,
    sales_quantity integer NOT NULL,
    cart_id bigint
);
     DROP TABLE public.cart_product;
       public         heap    postgres    false         ?            1259    41046     cart_product_cart_product_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.cart_product_cart_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.cart_product_cart_product_id_seq;
       public          postgres    false    221                    0    0     cart_product_cart_product_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.cart_product_cart_product_id_seq OWNED BY public.cart_product.cart_product_id;
          public          postgres    false    220         ?            1259    41028    category    TABLE     l   CREATE TABLE public.category (
    category_id bigint NOT NULL,
    category_name character varying(255)
);
    DROP TABLE public.category;
       public         heap    postgres    false         ?            1259    41027    category_category_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.category_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.category_category_id_seq;
       public          postgres    false    217                     0    0    category_category_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.category_category_id_seq OWNED BY public.category.category_id;
          public          postgres    false    216         ?            1259    41009    product    TABLE     ?   CREATE TABLE public.product (
    product_id bigint NOT NULL,
    product_name character varying(255),
    sales_price double precision NOT NULL,
    category_id bigint
);
    DROP TABLE public.product;
       public         heap    postgres    false         ?            1259    41008    product_product_id_seq    SEQUENCE        CREATE SEQUENCE public.product_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.product_product_id_seq;
       public          postgres    false    215         !           0    0    product_product_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.product_product_id_seq OWNED BY public.product.product_id;
          public          postgres    false    214         v           2604    41043    cart cart_id    DEFAULT     l   ALTER TABLE ONLY public.cart ALTER COLUMN cart_id SET DEFAULT nextval('public.cart_cart_id_seq'::regclass);
 ;   ALTER TABLE public.cart ALTER COLUMN cart_id DROP DEFAULT;
       public          postgres    false    218    219    219         w           2604    41050    cart_product cart_product_id    DEFAULT     ?   ALTER TABLE ONLY public.cart_product ALTER COLUMN cart_product_id SET DEFAULT nextval('public.cart_product_cart_product_id_seq'::regclass);
 K   ALTER TABLE public.cart_product ALTER COLUMN cart_product_id DROP DEFAULT;
       public          postgres    false    220    221    221         u           2604    41031    category category_id    DEFAULT     |   ALTER TABLE ONLY public.category ALTER COLUMN category_id SET DEFAULT nextval('public.category_category_id_seq'::regclass);
 C   ALTER TABLE public.category ALTER COLUMN category_id DROP DEFAULT;
       public          postgres    false    217    216    217         t           2604    41012    product product_id    DEFAULT     x   ALTER TABLE ONLY public.product ALTER COLUMN product_id SET DEFAULT nextval('public.product_product_id_seq'::regclass);
 A   ALTER TABLE public.product ALTER COLUMN product_id DROP DEFAULT;
       public          postgres    false    214    215    215                   0    41040    cart 
   TABLE DATA           L   COPY public.cart (cart_id, customer_name, status, total_amount) FROM stdin;
    public          postgres    false    219       3349.dat           0    41047    cart_product 
   TABLE DATA           v   COPY public.cart_product (cart_product_id, line_amount, product_id, sales_price, sales_quantity, cart_id) FROM stdin;
    public          postgres    false    221       3351.dat           0    41028    category 
   TABLE DATA           >   COPY public.category (category_id, category_name) FROM stdin;
    public          postgres    false    217       3347.dat           0    41009    product 
   TABLE DATA           U   COPY public.product (product_id, product_name, sales_price, category_id) FROM stdin;
    public          postgres    false    215       3345.dat "           0    0    cart_cart_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.cart_cart_id_seq', 11, true);
          public          postgres    false    218         #           0    0     cart_product_cart_product_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.cart_product_cart_product_id_seq', 1, true);
          public          postgres    false    220         $           0    0    category_category_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.category_category_id_seq', 1, false);
          public          postgres    false    216         %           0    0    product_product_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.product_product_id_seq', 1, false);
          public          postgres    false    214         }           2606    41045    cart cart_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_pkey PRIMARY KEY (cart_id);
 8   ALTER TABLE ONLY public.cart DROP CONSTRAINT cart_pkey;
       public            postgres    false    219                    2606    41052    cart_product cart_product_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.cart_product
    ADD CONSTRAINT cart_product_pkey PRIMARY KEY (cart_product_id);
 H   ALTER TABLE ONLY public.cart_product DROP CONSTRAINT cart_product_pkey;
       public            postgres    false    221         {           2606    41033    category category_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (category_id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    217         y           2606    41014    product product_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (product_id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    215         ?           2606    41034 #   product fk1mtsbur82frn64de7balymq9s    FK CONSTRAINT     ?   ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk1mtsbur82frn64de7balymq9s FOREIGN KEY (category_id) REFERENCES public.category(category_id);
 M   ALTER TABLE ONLY public.product DROP CONSTRAINT fk1mtsbur82frn64de7balymq9s;
       public          postgres    false    217    215    3195         ?           2606    41053 (   cart_product fklv5x4iresnv4xspvomrwd8ej9    FK CONSTRAINT     ?   ALTER TABLE ONLY public.cart_product
    ADD CONSTRAINT fklv5x4iresnv4xspvomrwd8ej9 FOREIGN KEY (cart_id) REFERENCES public.cart(cart_id);
 R   ALTER TABLE ONLY public.cart_product DROP CONSTRAINT fklv5x4iresnv4xspvomrwd8ej9;
       public          postgres    false    221    219    3197                                                                3349.dat                                                                                            0000600 0004000 0002000 00000000230 14333206736 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	\N	f	0
3	\N	f	5
1	Kişi 1	t	5
4	Kişi 4	f	12
5	Kişi 1	f	0
6	Kişi 1	f	0
7	Kişi 1	f	0
8	Kişi 1	f	0
9	Kişi 1	f	0
10	Kişi 1	f	0
11	Kişi 1	f	0
\.


                                                                                                                                                                                                                                                                                                                                                                        3351.dat                                                                                            0000600 0004000 0002000 00000000054 14333206736 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	1	5	1	1
5	1	2	5	1	1
12	11	3	12	1	4
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    3347.dat                                                                                            0000600 0004000 0002000 00000000040 14333206736 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        4	Kategori1
7941	Kategori2
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                3345.dat                                                                                            0000600 0004000 0002000 00000000073 14333206736 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Product1 	3	7941
2	Product2	11	7941
3	Product3	12	4
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                     restore.sql                                                                                         0000600 0004000 0002000 00000020044 14333206736 0015373 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0
-- Dumped by pg_dump version 15.0

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

DROP DATABASE fibadb;
--
-- Name: fibadb; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE fibadb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Turkish_Turkey.1254';


ALTER DATABASE fibadb OWNER TO postgres;

\connect fibadb

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
-- Name: cart; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cart (
    cart_id bigint NOT NULL,
    customer_name character varying(255),
    status boolean NOT NULL,
    total_amount double precision NOT NULL
);


ALTER TABLE public.cart OWNER TO postgres;

--
-- Name: cart_cart_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cart_cart_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cart_cart_id_seq OWNER TO postgres;

--
-- Name: cart_cart_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cart_cart_id_seq OWNED BY public.cart.cart_id;


--
-- Name: cart_product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cart_product (
    cart_product_id bigint NOT NULL,
    line_amount double precision NOT NULL,
    product_id character varying(255),
    sales_price double precision NOT NULL,
    sales_quantity integer NOT NULL,
    cart_id bigint
);


ALTER TABLE public.cart_product OWNER TO postgres;

--
-- Name: cart_product_cart_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cart_product_cart_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cart_product_cart_product_id_seq OWNER TO postgres;

--
-- Name: cart_product_cart_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cart_product_cart_product_id_seq OWNED BY public.cart_product.cart_product_id;


--
-- Name: category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.category (
    category_id bigint NOT NULL,
    category_name character varying(255)
);


ALTER TABLE public.category OWNER TO postgres;

--
-- Name: category_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.category_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.category_category_id_seq OWNER TO postgres;

--
-- Name: category_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.category_category_id_seq OWNED BY public.category.category_id;


--
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    product_id bigint NOT NULL,
    product_name character varying(255),
    sales_price double precision NOT NULL,
    category_id bigint
);


ALTER TABLE public.product OWNER TO postgres;

--
-- Name: product_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_product_id_seq OWNER TO postgres;

--
-- Name: product_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_product_id_seq OWNED BY public.product.product_id;


--
-- Name: cart cart_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart ALTER COLUMN cart_id SET DEFAULT nextval('public.cart_cart_id_seq'::regclass);


--
-- Name: cart_product cart_product_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_product ALTER COLUMN cart_product_id SET DEFAULT nextval('public.cart_product_cart_product_id_seq'::regclass);


--
-- Name: category category_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category ALTER COLUMN category_id SET DEFAULT nextval('public.category_category_id_seq'::regclass);


--
-- Name: product product_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product ALTER COLUMN product_id SET DEFAULT nextval('public.product_product_id_seq'::regclass);


--
-- Data for Name: cart; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cart (cart_id, customer_name, status, total_amount) FROM stdin;
\.
COPY public.cart (cart_id, customer_name, status, total_amount) FROM '$$PATH$$/3349.dat';

--
-- Data for Name: cart_product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cart_product (cart_product_id, line_amount, product_id, sales_price, sales_quantity, cart_id) FROM stdin;
\.
COPY public.cart_product (cart_product_id, line_amount, product_id, sales_price, sales_quantity, cart_id) FROM '$$PATH$$/3351.dat';

--
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.category (category_id, category_name) FROM stdin;
\.
COPY public.category (category_id, category_name) FROM '$$PATH$$/3347.dat';

--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product (product_id, product_name, sales_price, category_id) FROM stdin;
\.
COPY public.product (product_id, product_name, sales_price, category_id) FROM '$$PATH$$/3345.dat';

--
-- Name: cart_cart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cart_cart_id_seq', 11, true);


--
-- Name: cart_product_cart_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cart_product_cart_product_id_seq', 1, true);


--
-- Name: category_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.category_category_id_seq', 1, false);


--
-- Name: product_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_product_id_seq', 1, false);


--
-- Name: cart cart_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_pkey PRIMARY KEY (cart_id);


--
-- Name: cart_product cart_product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_product
    ADD CONSTRAINT cart_product_pkey PRIMARY KEY (cart_product_id);


--
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (category_id);


--
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (product_id);


--
-- Name: product fk1mtsbur82frn64de7balymq9s; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk1mtsbur82frn64de7balymq9s FOREIGN KEY (category_id) REFERENCES public.category(category_id);


--
-- Name: cart_product fklv5x4iresnv4xspvomrwd8ej9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_product
    ADD CONSTRAINT fklv5x4iresnv4xspvomrwd8ej9 FOREIGN KEY (cart_id) REFERENCES public.cart(cart_id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            