PGDMP         )                z            PROJETIN    14.2    14.2     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16949    PROJETIN    DATABASE     j   CREATE DATABASE "PROJETIN" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "PROJETIN";
                postgres    false                        2615    16950    projetin    SCHEMA        CREATE SCHEMA projetin;
    DROP SCHEMA projetin;
                postgres    false            ?            1259    16952 	   tbproduto    TABLE     ?   CREATE TABLE projetin.tbproduto (
    prodcodigo integer NOT NULL,
    prodnome character varying(50) NOT NULL,
    prodpreco integer NOT NULL,
    proddescricao character varying(255) NOT NULL
);
    DROP TABLE projetin.tbproduto;
       projetin         heap    postgres    false    3            ?            1259    16951    tbproduto_prodcodigo_seq    SEQUENCE     ?   CREATE SEQUENCE projetin.tbproduto_prodcodigo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE projetin.tbproduto_prodcodigo_seq;
       projetin          postgres    false    3    210            ?           0    0    tbproduto_prodcodigo_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE projetin.tbproduto_prodcodigo_seq OWNED BY projetin.tbproduto.prodcodigo;
          projetin          postgres    false    209            ?            1259    16963 	   tbusuario    TABLE     r   CREATE TABLE projetin.tbusuario (
    userlogin integer NOT NULL,
    usersenha character varying(15) NOT NULL
);
    DROP TABLE projetin.tbusuario;
       projetin         heap    postgres    false    3            ?            1259    16962    tbusuario_userlogin_seq    SEQUENCE     ?   CREATE SEQUENCE projetin.tbusuario_userlogin_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE projetin.tbusuario_userlogin_seq;
       projetin          postgres    false    212    3            ?           0    0    tbusuario_userlogin_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE projetin.tbusuario_userlogin_seq OWNED BY projetin.tbusuario.userlogin;
          projetin          postgres    false    211            a           2604    16955    tbproduto prodcodigo    DEFAULT     ?   ALTER TABLE ONLY projetin.tbproduto ALTER COLUMN prodcodigo SET DEFAULT nextval('projetin.tbproduto_prodcodigo_seq'::regclass);
 E   ALTER TABLE projetin.tbproduto ALTER COLUMN prodcodigo DROP DEFAULT;
       projetin          postgres    false    209    210    210            b           2604    16966    tbusuario userlogin    DEFAULT     ~   ALTER TABLE ONLY projetin.tbusuario ALTER COLUMN userlogin SET DEFAULT nextval('projetin.tbusuario_userlogin_seq'::regclass);
 D   ALTER TABLE projetin.tbusuario ALTER COLUMN userlogin DROP DEFAULT;
       projetin          postgres    false    211    212    212            ?          0    16952 	   tbproduto 
   TABLE DATA           U   COPY projetin.tbproduto (prodcodigo, prodnome, prodpreco, proddescricao) FROM stdin;
    projetin          postgres    false    210          ?          0    16963 	   tbusuario 
   TABLE DATA           ;   COPY projetin.tbusuario (userlogin, usersenha) FROM stdin;
    projetin          postgres    false    212   ?       ?           0    0    tbproduto_prodcodigo_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('projetin.tbproduto_prodcodigo_seq', 103, true);
          projetin          postgres    false    209            ?           0    0    tbusuario_userlogin_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('projetin.tbusuario_userlogin_seq', 1, false);
          projetin          postgres    false    211            f           2606    16968    tbusuario pk_tbusuario 
   CONSTRAINT     ]   ALTER TABLE ONLY projetin.tbusuario
    ADD CONSTRAINT pk_tbusuario PRIMARY KEY (userlogin);
 B   ALTER TABLE ONLY projetin.tbusuario DROP CONSTRAINT pk_tbusuario;
       projetin            postgres    false    212            d           2606    16957    tbproduto projetin_tbproduto 
   CONSTRAINT     d   ALTER TABLE ONLY projetin.tbproduto
    ADD CONSTRAINT projetin_tbproduto PRIMARY KEY (prodcodigo);
 H   ALTER TABLE ONLY projetin.tbproduto DROP CONSTRAINT projetin_tbproduto;
       projetin            postgres    false    210            ?   ?   x?-?A??0????S?1?*]??P??d????3???ZE?0G?kx1+??????SN?؉B(J??V?(3a??܌????K??tF?2?"???k!S[?J}?M?kS???2y?F?y????6??D??x?????p?}?|0<?:?>?8Z?h??z??`?????÷?~?7?\?.??5a?? 	?:      ?   )   x?326?v?".c#cΔ????D ??(?\1z\\\ ?[	j     