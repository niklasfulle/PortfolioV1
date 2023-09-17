PGDMP         9                {        	   portfolio    15.3    15.3 (    G           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            H           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            I           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            J           1262    20980 	   portfolio    DATABASE     k   CREATE DATABASE portfolio WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE portfolio;
                postgres    false            �            1259    21385    AboutMe    TABLE     �   CREATE TABLE public."AboutMe" (
    id text NOT NULL,
    text text,
    "order" integer DEFAULT 0 NOT NULL,
    visible boolean DEFAULT false NOT NULL
);
    DROP TABLE public."AboutMe";
       public         heap    postgres    false            �            1259    21363    Account    TABLE     F  CREATE TABLE public."Account" (
    id text NOT NULL,
    "userId" text NOT NULL,
    type text NOT NULL,
    provider text NOT NULL,
    "providerAccountId" text NOT NULL,
    refresh_token text,
    access_token text,
    expires_at integer,
    token_type text,
    scope text,
    id_token text,
    session_state text
);
    DROP TABLE public."Account";
       public         heap    postgres    false            �            1259    21409 
   Experience    TABLE     �   CREATE TABLE public."Experience" (
    id text NOT NULL,
    title text NOT NULL,
    location text NOT NULL,
    description text NOT NULL,
    icon text NOT NULL,
    date text NOT NULL,
    visible boolean DEFAULT false NOT NULL
);
     DROP TABLE public."Experience";
       public         heap    postgres    false            �            1259    21392    Projects    TABLE       CREATE TABLE public."Projects" (
    id text NOT NULL,
    title text NOT NULL,
    description text NOT NULL,
    image text NOT NULL,
    url text NOT NULL,
    visible boolean DEFAULT false NOT NULL,
    "order" integer DEFAULT 0 NOT NULL,
    tags text NOT NULL
);
    DROP TABLE public."Projects";
       public         heap    postgres    false            �            1259    21370    Session    TABLE     �   CREATE TABLE public."Session" (
    id text NOT NULL,
    "sessionToken" text NOT NULL,
    "userId" text NOT NULL,
    "userRole" text,
    expires timestamp(3) without time zone NOT NULL
);
    DROP TABLE public."Session";
       public         heap    postgres    false            �            1259    21401    Skills    TABLE     �   CREATE TABLE public."Skills" (
    id text NOT NULL,
    name text NOT NULL,
    image text,
    visible boolean DEFAULT false NOT NULL,
    type text
);
    DROP TABLE public."Skills";
       public         heap    postgres    false            �            1259    21377    User    TABLE     �   CREATE TABLE public."User" (
    id text NOT NULL,
    name text NOT NULL,
    email text,
    "emailVerified" boolean,
    password text,
    role text DEFAULT 'user'::text NOT NULL,
    image text
);
    DROP TABLE public."User";
       public         heap    postgres    false            �            1259    21352    _prisma_migrations    TABLE     �  CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);
 &   DROP TABLE public._prisma_migrations;
       public         heap    postgres    false            A          0    21385    AboutMe 
   TABLE DATA           ?   COPY public."AboutMe" (id, text, "order", visible) FROM stdin;
    public          postgres    false    218   �-       >          0    21363    Account 
   TABLE DATA           �   COPY public."Account" (id, "userId", type, provider, "providerAccountId", refresh_token, access_token, expires_at, token_type, scope, id_token, session_state) FROM stdin;
    public          postgres    false    215   �/       D          0    21409 
   Experience 
   TABLE DATA           ]   COPY public."Experience" (id, title, location, description, icon, date, visible) FROM stdin;
    public          postgres    false    221   90       B          0    21392    Projects 
   TABLE DATA           `   COPY public."Projects" (id, title, description, image, url, visible, "order", tags) FROM stdin;
    public          postgres    false    219   �1       ?          0    21370    Session 
   TABLE DATA           V   COPY public."Session" (id, "sessionToken", "userId", "userRole", expires) FROM stdin;
    public          postgres    false    216   $3       C          0    21401    Skills 
   TABLE DATA           B   COPY public."Skills" (id, name, image, visible, type) FROM stdin;
    public          postgres    false    220   �3       @          0    21377    User 
   TABLE DATA           Y   COPY public."User" (id, name, email, "emailVerified", password, role, image) FROM stdin;
    public          postgres    false    217   �4       =          0    21352    _prisma_migrations 
   TABLE DATA           �   COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
    public          postgres    false    214   �5       �           2606    21391    AboutMe AboutMe_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."AboutMe"
    ADD CONSTRAINT "AboutMe_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."AboutMe" DROP CONSTRAINT "AboutMe_pkey";
       public            postgres    false    218            �           2606    21369    Account Account_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Account"
    ADD CONSTRAINT "Account_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Account" DROP CONSTRAINT "Account_pkey";
       public            postgres    false    215            �           2606    21416    Experience Experience_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Experience"
    ADD CONSTRAINT "Experience_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."Experience" DROP CONSTRAINT "Experience_pkey";
       public            postgres    false    221            �           2606    21400    Projects Projects_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Projects"
    ADD CONSTRAINT "Projects_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Projects" DROP CONSTRAINT "Projects_pkey";
       public            postgres    false    219            �           2606    21376    Session Session_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Session"
    ADD CONSTRAINT "Session_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Session" DROP CONSTRAINT "Session_pkey";
       public            postgres    false    216            �           2606    21408    Skills Skills_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Skills"
    ADD CONSTRAINT "Skills_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Skills" DROP CONSTRAINT "Skills_pkey";
       public            postgres    false    220            �           2606    21384    User User_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_pkey";
       public            postgres    false    217            �           2606    21360 *   _prisma_migrations _prisma_migrations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public._prisma_migrations DROP CONSTRAINT _prisma_migrations_pkey;
       public            postgres    false    214            �           1259    21430    AboutMe_id_key    INDEX     K   CREATE UNIQUE INDEX "AboutMe_id_key" ON public."AboutMe" USING btree (id);
 $   DROP INDEX public."AboutMe_id_key";
       public            postgres    false    218            �           1259    21422    Account_id_key    INDEX     K   CREATE UNIQUE INDEX "Account_id_key" ON public."Account" USING btree (id);
 $   DROP INDEX public."Account_id_key";
       public            postgres    false    215            �           1259    21424 &   Account_provider_providerAccountId_key    INDEX     ~   CREATE UNIQUE INDEX "Account_provider_providerAccountId_key" ON public."Account" USING btree (provider, "providerAccountId");
 <   DROP INDEX public."Account_provider_providerAccountId_key";
       public            postgres    false    215    215            �           1259    21423    Account_userId_idx    INDEX     N   CREATE INDEX "Account_userId_idx" ON public."Account" USING btree ("userId");
 (   DROP INDEX public."Account_userId_idx";
       public            postgres    false    215            �           1259    21433    Experience_id_key    INDEX     Q   CREATE UNIQUE INDEX "Experience_id_key" ON public."Experience" USING btree (id);
 '   DROP INDEX public."Experience_id_key";
       public            postgres    false    221            �           1259    21431    Projects_id_key    INDEX     M   CREATE UNIQUE INDEX "Projects_id_key" ON public."Projects" USING btree (id);
 %   DROP INDEX public."Projects_id_key";
       public            postgres    false    219            �           1259    21425    Session_id_key    INDEX     K   CREATE UNIQUE INDEX "Session_id_key" ON public."Session" USING btree (id);
 $   DROP INDEX public."Session_id_key";
       public            postgres    false    216            �           1259    21426    Session_sessionToken_key    INDEX     a   CREATE UNIQUE INDEX "Session_sessionToken_key" ON public."Session" USING btree ("sessionToken");
 .   DROP INDEX public."Session_sessionToken_key";
       public            postgres    false    216            �           1259    21427    Session_userId_idx    INDEX     N   CREATE INDEX "Session_userId_idx" ON public."Session" USING btree ("userId");
 (   DROP INDEX public."Session_userId_idx";
       public            postgres    false    216            �           1259    21432    Skills_id_key    INDEX     I   CREATE UNIQUE INDEX "Skills_id_key" ON public."Skills" USING btree (id);
 #   DROP INDEX public."Skills_id_key";
       public            postgres    false    220            �           1259    21429    User_email_key    INDEX     K   CREATE UNIQUE INDEX "User_email_key" ON public."User" USING btree (email);
 $   DROP INDEX public."User_email_key";
       public            postgres    false    217            �           1259    21428    User_id_key    INDEX     E   CREATE UNIQUE INDEX "User_id_key" ON public."User" USING btree (id);
 !   DROP INDEX public."User_id_key";
       public            postgres    false    217            A   �  x�]R;o�0�}��S��yl=���)��@�.�L�J$ѐh����d_Pt� ��� ��N(B��Pl�a�2 BK}$��\���)�����ƶԂ0�SL�_aĔ,�8�Y�z��Z�)DvN��p��f1�G�Ђ#�A�����K��j�k&ǣ� ��8_/�+t8s�B�����|�^�&���s���%vs��4�����L��#r�K�t6�s���S,o��dO�ͩc���Ae��Z%T�������ߒ^��r�>_9�����"���j�[g1n�����D;JA}�6y�(_pM��߳@UT@�!���R����f��n�< ��DU��-�kT�lvy>�_V1�ɂjsź����P�$~��	��C`�ǛGp,�c��k��umz��y,(fȯ�gK{@���nU�e�JF[/͸�U�s�����<GE6	�u���������B��x)���ʶ���4�Ǫz�㩪���]��l:&&      >   P   x�K��M��϶�1000�˲�..�0�L1-�L��de@2���Y����%��E�)�y%��9�x���a"�=... �*&X      D   a  x�u�MO�@���_17/��51�`����,��,lw����-b�xk�y:󼛋G+� =ְ%��z�R�S)�K���o,�n�#�w��C=(�f� �uX+� �<�i��Gc��	rX�j��fb~O+23ًb��
�����gZ�X-MM�RG��h��n�P���:P�	#��L�;Fy��v�w�5o�<�&h�-eu�Ĭ}�wڏ�0�bZ��{-J�&�H]?Qp�L
������1�Ft\xa��+�� rՊ_V��8�V:���e�Sx�o��/z\WV�n��Ge�^�r��ȴ4�����L�6Zx�!'=Y��
]&J9�7�-:4�K~fI�� ����      B   j  x�]��n�0E��W��|A(Т	�G�M6�Dۚ�E��g2_�mf��>�ν�rw,�������p`�Q ,����xQ��i�L�@�X��s�,�%�б���R�YH
xL��=A��1z�B��)��)c�Tw���!hr�ݥSw�	�֏��Ͷ��z���_1���B�Cb���8�������2JXI�&V�{˭q�?s�A'��R8�X[a�~G��P�1�l2�JS_CaQ{ �Z�>&����ɜ�7�_��^��|�q��0T���&�x�苻��@-`Ϋ�_s���sh���� ��e9[�L�5��~7�ka�-�#�0Q�����)���z�>Y��/����g�/�I��TU�T�ɬ      ?   s   x��A�  �3������[�P�Q���~��w6�5���d���[���}�Y$&��( ;pe�o�B*�uY_E��cˡ\�ĒQq�[S-�A0�0f`; v$��Nk��
 �      C     x�e�MO�@��˯��ذ|�+U�)�
&����ڮ�˅*���f���̼;˰J�5�Z4�熅 �u�q�?y�*Y��;HN���.�*��FGQ]�0�W�.>��Z���Αp��2ӕ�H�J��0�G�S�Y�D׎o�"� ��]��"�bS5���#'�S�@��f�����|l�l
:k�[IbZf/��+A��S�p�x!T�o�h#|�#��Y�1�*=��<,h��u�L����������rq�Q�6L&�l��a|kF�
      @   �   x�Ȼ�0@�<�s$XL�/	1�1q)P�P
��(>��3|�ID��uI���,�R儖EC��KA��N	�P���Z>Y�S� �V��c��o���8Ǩn����u|7�J^�Xްz\�`p��9B4��D9@����h���\ŪcmRK`pRW�2&�KܩM����XӴ �=�      =   �  x���K�1��)�d�+�>DN0@ J���2�df@@/��^�e�hc�j�[�m;-����/ڻò�����iK)*<��T�n�)H�!);E�m�%�.���|C���oD*������������|�a�G�#��bj�NMzpKJl��Q�v�D�mX$#u�<}�l��Y�Q�=i�R� c�Y���o�OU�@�� ��9)}�gU�X��}6���L���%Z���i,<����:7a$��2�o(��t� m�X���U�/r�~~P�����v����d����i��%MJ�y���;��w	�V~ �qss� n_�?3�E��|c-Ƥf�1�«fo{�ڧ�����q�AeW�$�c�{�a�)��;�� `.�a��U���:��U��	}F���c�I���|ӌg̏�6TW3ҘZ5��47"j�ѕkEu����(suL�SR��Ҵ����f���Ȳ�Yo����*";�?�/=[�$�]��_}A�     