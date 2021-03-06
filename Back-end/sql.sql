PGDMP     -    2                y            product    10.16    10.16     ?
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            ?
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            ?
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            ?
           1262    16393    product    DATABASE     ?   CREATE DATABASE product WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Vietnamese_Vietnam.1258' LC_CTYPE = 'Vietnamese_Vietnam.1258';
    DROP DATABASE product;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            ?
           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            ?
           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            ?            1259    16404    product_info    TABLE     |   CREATE TABLE public.product_info (
    id bigint NOT NULL,
    product_name text,
    product_price bigint,
    img text
);
     DROP TABLE public.product_info;
       public         postgres    false    3            ?            1259    16402    product_info_id_seq    SEQUENCE     |   CREATE SEQUENCE public.product_info_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.product_info_id_seq;
       public       postgres    false    197    3            ?
           0    0    product_info_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.product_info_id_seq OWNED BY public.product_info.id;
            public       postgres    false    196            o
           2604    16407    product_info id    DEFAULT     r   ALTER TABLE ONLY public.product_info ALTER COLUMN id SET DEFAULT nextval('public.product_info_id_seq'::regclass);
 >   ALTER TABLE public.product_info ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196    197            ?
          0    16404    product_info 
   TABLE DATA               L   COPY public.product_info (id, product_name, product_price, img) FROM stdin;
    public       postgres    false    197   ?       ?
           0    0    product_info_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.product_info_id_seq', 12, true);
            public       postgres    false    196            q
           2606    16412    product_info product_info_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.product_info
    ADD CONSTRAINT product_info_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.product_info DROP CONSTRAINT product_info_pkey;
       public         postgres    false    197            ?
   9  x?u?͒? ???S???*?N*?d5??"U*????mRy?Ye;O?7	??3I%.??{><?`po`?C??;=)?(B??n??{K?D??R?!??????XWUå??ĽfeGy͊o??)?}?&aGP??Ҏ?I?P,4??yrBy8?V??6?|?͕?O??*ǬA??|0".?>9?%!@?B??v'Nrt??c??d$??q???w*?p1e?_??jq1?aC?{?c6:?߀?~*???ͫ?Lڧ?C?G1O??,????jV?Nx???Pt??q?????Uz1媶??[??ٖH??A/S?^d???;g?,8??
????Kg???fvj+????h??Vv??뚲??᪓???	GD?n??????S??????%:??'??yau?????Ո|???s^?׌????(?3;g?	?|)?8?????,?1D<ۋs&?"??pzn?;X????\??0??Eu_??Eʅ?G????^??^??Y%r??x?`???????y?i'E4?bM??](D>a^75??DI?z???RI???HT?,ӝ??Rz?~-6??o?x2>     