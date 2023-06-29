PGDMP     /                    {            PythonProject    15.3    15.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24576    PythonProject    DATABASE     �   CREATE DATABASE "PythonProject" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE "PythonProject";
                postgres    false                       0    0    DATABASE "PythonProject"    COMMENT     h   COMMENT ON DATABASE "PythonProject" IS 'Se guardarán aquí todas las tablas del proyecto de python. ';
                   postgres    false    3347            �            1259    24622    especializacion    TABLE     �   CREATE TABLE public.especializacion (
    ids integer NOT NULL,
    nombreesp character varying(20) NOT NULL,
    idmentoria integer NOT NULL
);
 #   DROP TABLE public.especializacion;
       public         heap    postgres    false            �            1259    24621    especializacion_ids_seq    SEQUENCE     �   CREATE SEQUENCE public.especializacion_ids_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.especializacion_ids_seq;
       public          postgres    false    217                       0    0    especializacion_ids_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.especializacion_ids_seq OWNED BY public.especializacion.ids;
          public          postgres    false    216            �            1259    24634    mentores    TABLE     �   CREATE TABLE public.mentores (
    ids integer NOT NULL,
    nombre text NOT NULL,
    apellido text NOT NULL,
    idespe integer NOT NULL,
    domicilio text NOT NULL,
    diasdisponibles text NOT NULL,
    preciohora integer NOT NULL
);
    DROP TABLE public.mentores;
       public         heap    postgres    false            �            1259    24633    mentores_ids_seq    SEQUENCE     �   CREATE SEQUENCE public.mentores_ids_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.mentores_ids_seq;
       public          postgres    false    219                       0    0    mentores_ids_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.mentores_ids_seq OWNED BY public.mentores.ids;
          public          postgres    false    218            �            1259    24597 	   mentorias    TABLE     g   CREATE TABLE public.mentorias (
    ids integer NOT NULL,
    nombre character varying(30) NOT NULL
);
    DROP TABLE public.mentorias;
       public         heap    postgres    false            �            1259    24596    mentoría_ids_seq    SEQUENCE     �   CREATE SEQUENCE public."mentoría_ids_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."mentoría_ids_seq";
       public          postgres    false    215                       0    0    mentoría_ids_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."mentoría_ids_seq" OWNED BY public.mentorias.ids;
          public          postgres    false    214            p           2604    24625    especializacion ids    DEFAULT     z   ALTER TABLE ONLY public.especializacion ALTER COLUMN ids SET DEFAULT nextval('public.especializacion_ids_seq'::regclass);
 B   ALTER TABLE public.especializacion ALTER COLUMN ids DROP DEFAULT;
       public          postgres    false    217    216    217            q           2604    24637    mentores ids    DEFAULT     l   ALTER TABLE ONLY public.mentores ALTER COLUMN ids SET DEFAULT nextval('public.mentores_ids_seq'::regclass);
 ;   ALTER TABLE public.mentores ALTER COLUMN ids DROP DEFAULT;
       public          postgres    false    218    219    219            o           2604    24600    mentorias ids    DEFAULT     p   ALTER TABLE ONLY public.mentorias ALTER COLUMN ids SET DEFAULT nextval('public."mentoría_ids_seq"'::regclass);
 <   ALTER TABLE public.mentorias ALTER COLUMN ids DROP DEFAULT;
       public          postgres    false    215    214    215                      0    24622    especializacion 
   TABLE DATA           E   COPY public.especializacion (ids, nombreesp, idmentoria) FROM stdin;
    public          postgres    false    217   i                 0    24634    mentores 
   TABLE DATA           i   COPY public.mentores (ids, nombre, apellido, idespe, domicilio, diasdisponibles, preciohora) FROM stdin;
    public          postgres    false    219   @       	          0    24597 	   mentorias 
   TABLE DATA           0   COPY public.mentorias (ids, nombre) FROM stdin;
    public          postgres    false    215   )                   0    0    especializacion_ids_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.especializacion_ids_seq', 21, true);
          public          postgres    false    216                       0    0    mentores_ids_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.mentores_ids_seq', 7, true);
          public          postgres    false    218                       0    0    mentoría_ids_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."mentoría_ids_seq"', 5, true);
          public          postgres    false    214            u           2606    24627 $   especializacion especializacion_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.especializacion
    ADD CONSTRAINT especializacion_pkey PRIMARY KEY (ids);
 N   ALTER TABLE ONLY public.especializacion DROP CONSTRAINT especializacion_pkey;
       public            postgres    false    217            w           2606    24639    mentores mentores_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.mentores
    ADD CONSTRAINT mentores_pkey PRIMARY KEY (ids);
 @   ALTER TABLE ONLY public.mentores DROP CONSTRAINT mentores_pkey;
       public            postgres    false    219            s           2606    24602    mentorias mentoría_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.mentorias
    ADD CONSTRAINT "mentoría_pkey" PRIMARY KEY (ids);
 D   ALTER TABLE ONLY public.mentorias DROP CONSTRAINT "mentoría_pkey";
       public            postgres    false    215            x           2606    24628    especializacion idMentoria    FK CONSTRAINT     �   ALTER TABLE ONLY public.especializacion
    ADD CONSTRAINT "idMentoria" FOREIGN KEY (idmentoria) REFERENCES public.mentorias(ids);
 F   ALTER TABLE ONLY public.especializacion DROP CONSTRAINT "idMentoria";
       public          postgres    false    217    3187    215            y           2606    24640    mentores idespe    FK CONSTRAINT     x   ALTER TABLE ONLY public.mentores
    ADD CONSTRAINT idespe FOREIGN KEY (idespe) REFERENCES public.especializacion(ids);
 9   ALTER TABLE ONLY public.mentores DROP CONSTRAINT idespe;
       public          postgres    false    217    219    3189               �   x�=�[N1E�oV�
P3���Od�Ti�L%���3�w�ϵd{�[l�J�n@���҈G���	�w�1�ƌ�n�pF -17�H��z�8qh�o�
J}�t�	�j���y� ���TJuw#�����&�R�N�����H�׍n�D�S_�&��Q����N������PJF��~��<I�i���9��,W�         �   x��P�N1����T(i9h���CŏD%&�3%(g'a���	�"�ٟ�?9�Fܿр#�1W���ū,=� 3%c��enkM�aC���'�*~�����-��%X�5O��	+v�Ә�o��d�#N��:��q���1���]C�ǔ3զ�w�e�l��ضm��Z�$�-��JM�ݿJ�7b�E�f�2�әs� �pS      	   E   x�3��--�LN�2��O�L��/�2�L�O��K�2��HL���LILQ(
%�p�r�����r��qqq g�     