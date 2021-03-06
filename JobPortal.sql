PGDMP         .                y         	   JobPortal    13.2    13.2 ?    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    17926 	   JobPortal    DATABASE     o   CREATE DATABASE "JobPortal" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE "JobPortal";
                postgres    false            ?            1259    18206    JobFinder_candidatesapplied    TABLE     T  CREATE TABLE public."JobFinder_candidatesapplied" (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    address character varying(150) NOT NULL,
    "mobileNo" character varying(50) NOT NULL,
    email character varying(50) NOT NULL,
    "DOB" date NOT NULL,
    resume_file character varying(100),
    job_id integer
);
 1   DROP TABLE public."JobFinder_candidatesapplied";
       public         heap    postgres    false            ?            1259    18204 "   JobFinder_candidatesapplied_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."JobFinder_candidatesapplied_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."JobFinder_candidatesapplied_id_seq";
       public          postgres    false    236            ?           0    0 "   JobFinder_candidatesapplied_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."JobFinder_candidatesapplied_id_seq" OWNED BY public."JobFinder_candidatesapplied".id;
          public          postgres    false    235            ?            1259    18161    JobFinder_contact    TABLE     ?   CREATE TABLE public."JobFinder_contact" (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(50) NOT NULL,
    message character varying(2000) NOT NULL
);
 '   DROP TABLE public."JobFinder_contact";
       public         heap    postgres    false            ?            1259    18159    JobFinder_contact_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."JobFinder_contact_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."JobFinder_contact_id_seq";
       public          postgres    false    228            ?           0    0    JobFinder_contact_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."JobFinder_contact_id_seq" OWNED BY public."JobFinder_contact".id;
          public          postgres    false    227            ?            1259    18193    JobFinder_jobpost    TABLE     ?  CREATE TABLE public."JobFinder_jobpost" (
    id integer NOT NULL,
    job_title character varying(50) NOT NULL,
    job_location character varying(50) NOT NULL,
    "jobType" character varying(50),
    job_tags character varying(100) NOT NULL,
    job_description character varying(1000) NOT NULL,
    application character varying(100) NOT NULL,
    salary_per_month integer NOT NULL,
    working_days integer NOT NULL,
    apply_link character varying(100) NOT NULL,
    deadline date NOT NULL,
    job_category character varying(50) NOT NULL,
    company_name character varying(50) NOT NULL,
    company_website character varying(100) NOT NULL,
    company_address character varying(100) NOT NULL,
    company_contact character varying(20) NOT NULL,
    company_email character varying(30) NOT NULL,
    facebook_link character varying(100) NOT NULL,
    company_logo character varying(100),
    created_at timestamp with time zone,
    created_by_id integer
);
 '   DROP TABLE public."JobFinder_jobpost";
       public         heap    postgres    false            ?            1259    18191    JobFinder_jobpost_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."JobFinder_jobpost_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."JobFinder_jobpost_id_seq";
       public          postgres    false    234            ?           0    0    JobFinder_jobpost_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."JobFinder_jobpost_id_seq" OWNED BY public."JobFinder_jobpost".id;
          public          postgres    false    233            ?            1259    18172    JobFinder_resume    TABLE     ?  CREATE TABLE public."JobFinder_resume" (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    address character varying(150) NOT NULL,
    "mobileNo" character varying(50) NOT NULL,
    email character varying(50) NOT NULL,
    title character varying(50) NOT NULL,
    skills character varying(200) NOT NULL,
    objectives character varying(1000) NOT NULL,
    pic character varying(100),
    resume_file character varying(100)
);
 &   DROP TABLE public."JobFinder_resume";
       public         heap    postgres    false            ?            1259    18170    JobFinder_resume_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."JobFinder_resume_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."JobFinder_resume_id_seq";
       public          postgres    false    230            ?           0    0    JobFinder_resume_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."JobFinder_resume_id_seq" OWNED BY public."JobFinder_resume".id;
          public          postgres    false    229            ?            1259    18183    JobFinder_userprofile    TABLE     ?  CREATE TABLE public."JobFinder_userprofile" (
    id integer NOT NULL,
    first_name character varying(20),
    last_name character varying(20),
    mobile_no character varying(20),
    address character varying(255) NOT NULL,
    gender character varying(10),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    pic character varying(100),
    user_id integer
);
 +   DROP TABLE public."JobFinder_userprofile";
       public         heap    postgres    false            ?            1259    18181    JobFinder_userprofile_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."JobFinder_userprofile_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."JobFinder_userprofile_id_seq";
       public          postgres    false    232            ?           0    0    JobFinder_userprofile_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."JobFinder_userprofile_id_seq" OWNED BY public."JobFinder_userprofile".id;
          public          postgres    false    231            ?            1259    18054    account_emailaddress    TABLE     ?   CREATE TABLE public.account_emailaddress (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id integer NOT NULL
);
 (   DROP TABLE public.account_emailaddress;
       public         heap    postgres    false            ?            1259    18052    account_emailaddress_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.account_emailaddress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.account_emailaddress_id_seq;
       public          postgres    false    217            ?           0    0    account_emailaddress_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.account_emailaddress_id_seq OWNED BY public.account_emailaddress.id;
          public          postgres    false    216            ?            1259    18064    account_emailconfirmation    TABLE     ?   CREATE TABLE public.account_emailconfirmation (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id integer NOT NULL
);
 -   DROP TABLE public.account_emailconfirmation;
       public         heap    postgres    false            ?            1259    18062     account_emailconfirmation_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.account_emailconfirmation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.account_emailconfirmation_id_seq;
       public          postgres    false    219            ?           0    0     account_emailconfirmation_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNED BY public.account_emailconfirmation.id;
          public          postgres    false    218            ?            1259    18091    accounts_userregistration    TABLE     ?   CREATE TABLE public.accounts_userregistration (
    id integer NOT NULL,
    register character varying(20) NOT NULL,
    user_id integer NOT NULL
);
 -   DROP TABLE public.accounts_userregistration;
       public         heap    postgres    false            ?            1259    18089     accounts_userregistration_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.accounts_userregistration_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.accounts_userregistration_id_seq;
       public          postgres    false    221            ?           0    0     accounts_userregistration_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.accounts_userregistration_id_seq OWNED BY public.accounts_userregistration.id;
          public          postgres    false    220            ?            1259    17958 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            ?            1259    17956    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    207            ?           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    206            ?            1259    17968    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            ?            1259    17966    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    209            ?           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    208            ?            1259    17950    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            ?            1259    17948    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    205            ?           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    204            ?            1259    17976 	   auth_user    TABLE     ?  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            ?            1259    17986    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            ?            1259    17984    auth_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    213            ?           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    212            ?            1259    17974    auth_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    211            ?           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    210            ?            1259    17994    auth_user_user_permissions    TABLE     ?   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            ?            1259    17992 !   auth_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    215            ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    214            ?            1259    18106    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            ?            1259    18104    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    223            ?           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    222            ?            1259    17940    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            ?            1259    17938    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    203            ?           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    202            ?            1259    17929    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            ?            1259    17927    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    201            ?           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    200            ?            1259    18137    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            ?            1259    18149    django_site    TABLE     ?   CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.django_site;
       public         heap    postgres    false            ?            1259    18147    django_site_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.django_site_id_seq;
       public          postgres    false    226            ?           0    0    django_site_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;
          public          postgres    false    225            ?           2604    18209    JobFinder_candidatesapplied id    DEFAULT     ?   ALTER TABLE ONLY public."JobFinder_candidatesapplied" ALTER COLUMN id SET DEFAULT nextval('public."JobFinder_candidatesapplied_id_seq"'::regclass);
 O   ALTER TABLE public."JobFinder_candidatesapplied" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236            ?           2604    18164    JobFinder_contact id    DEFAULT     ?   ALTER TABLE ONLY public."JobFinder_contact" ALTER COLUMN id SET DEFAULT nextval('public."JobFinder_contact_id_seq"'::regclass);
 E   ALTER TABLE public."JobFinder_contact" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            ?           2604    18196    JobFinder_jobpost id    DEFAULT     ?   ALTER TABLE ONLY public."JobFinder_jobpost" ALTER COLUMN id SET DEFAULT nextval('public."JobFinder_jobpost_id_seq"'::regclass);
 E   ALTER TABLE public."JobFinder_jobpost" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    234    234            ?           2604    18175    JobFinder_resume id    DEFAULT     ~   ALTER TABLE ONLY public."JobFinder_resume" ALTER COLUMN id SET DEFAULT nextval('public."JobFinder_resume_id_seq"'::regclass);
 D   ALTER TABLE public."JobFinder_resume" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229    230            ?           2604    18186    JobFinder_userprofile id    DEFAULT     ?   ALTER TABLE ONLY public."JobFinder_userprofile" ALTER COLUMN id SET DEFAULT nextval('public."JobFinder_userprofile_id_seq"'::regclass);
 I   ALTER TABLE public."JobFinder_userprofile" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232            ?           2604    18057    account_emailaddress id    DEFAULT     ?   ALTER TABLE ONLY public.account_emailaddress ALTER COLUMN id SET DEFAULT nextval('public.account_emailaddress_id_seq'::regclass);
 F   ALTER TABLE public.account_emailaddress ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            ?           2604    18067    account_emailconfirmation id    DEFAULT     ?   ALTER TABLE ONLY public.account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.account_emailconfirmation_id_seq'::regclass);
 K   ALTER TABLE public.account_emailconfirmation ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            ?           2604    18094    accounts_userregistration id    DEFAULT     ?   ALTER TABLE ONLY public.accounts_userregistration ALTER COLUMN id SET DEFAULT nextval('public.accounts_userregistration_id_seq'::regclass);
 K   ALTER TABLE public.accounts_userregistration ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            ?           2604    17961    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            ?           2604    17971    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            ?           2604    17953    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            ?           2604    17979    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            ?           2604    17989    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            ?           2604    17997    auth_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            ?           2604    18109    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            ?           2604    17943    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            ?           2604    17932    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            ?           2604    18152    django_site id    DEFAULT     p   ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);
 =   ALTER TABLE public.django_site ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            ?          0    18206    JobFinder_candidatesapplied 
   TABLE DATA           y   COPY public."JobFinder_candidatesapplied" (id, name, address, "mobileNo", email, "DOB", resume_file, job_id) FROM stdin;
    public          postgres    false    236   ??       ?          0    18161    JobFinder_contact 
   TABLE DATA           G   COPY public."JobFinder_contact" (id, name, email, message) FROM stdin;
    public          postgres    false    228   u?       ?          0    18193    JobFinder_jobpost 
   TABLE DATA           I  COPY public."JobFinder_jobpost" (id, job_title, job_location, "jobType", job_tags, job_description, application, salary_per_month, working_days, apply_link, deadline, job_category, company_name, company_website, company_address, company_contact, company_email, facebook_link, company_logo, created_at, created_by_id) FROM stdin;
    public          postgres    false    234   ??       ?          0    18172    JobFinder_resume 
   TABLE DATA              COPY public."JobFinder_resume" (id, name, address, "mobileNo", email, title, skills, objectives, pic, resume_file) FROM stdin;
    public          postgres    false    230   >?       ?          0    18183    JobFinder_userprofile 
   TABLE DATA           ?   COPY public."JobFinder_userprofile" (id, first_name, last_name, mobile_no, address, gender, created_at, updated_at, pic, user_id) FROM stdin;
    public          postgres    false    232   r?       ?          0    18054    account_emailaddress 
   TABLE DATA           W   COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
    public          postgres    false    217   E?       ?          0    18064    account_emailconfirmation 
   TABLE DATA           ]   COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
    public          postgres    false    219   b?       ?          0    18091    accounts_userregistration 
   TABLE DATA           J   COPY public.accounts_userregistration (id, register, user_id) FROM stdin;
    public          postgres    false    221   ?       ?          0    17958 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    207   ??       ?          0    17968    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    209   ??       ?          0    17950    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    205   ??       ?          0    17976 	   auth_user 
   TABLE DATA           ?   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    211   s       ?          0    17986    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    213   ?      ?          0    17994    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    215          ?          0    18106    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    223         ?          0    17940    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    203   :      ?          0    17929    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    201   
      ?          0    18137    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    224   X      ?          0    18149    django_site 
   TABLE DATA           7   COPY public.django_site (id, domain, name) FROM stdin;
    public          postgres    false    226   w      ?           0    0 "   JobFinder_candidatesapplied_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."JobFinder_candidatesapplied_id_seq"', 2, true);
          public          postgres    false    235            ?           0    0    JobFinder_contact_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."JobFinder_contact_id_seq"', 1, false);
          public          postgres    false    227            ?           0    0    JobFinder_jobpost_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."JobFinder_jobpost_id_seq"', 5, true);
          public          postgres    false    233            ?           0    0    JobFinder_resume_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."JobFinder_resume_id_seq"', 2, true);
          public          postgres    false    229            ?           0    0    JobFinder_userprofile_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."JobFinder_userprofile_id_seq"', 2, true);
          public          postgres    false    231            ?           0    0    account_emailaddress_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 1, false);
          public          postgres    false    216            ?           0    0     account_emailconfirmation_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);
          public          postgres    false    218            ?           0    0     accounts_userregistration_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.accounts_userregistration_id_seq', 2, true);
          public          postgres    false    220            ?           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    206            ?           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    208            ?           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 60, true);
          public          postgres    false    204            ?           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    212            ?           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);
          public          postgres    false    210            ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    214            ?           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    222            ?           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 15, true);
          public          postgres    false    202            ?           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 26, true);
          public          postgres    false    200            ?           0    0    django_site_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);
          public          postgres    false    225            ?           2606    18211 <   JobFinder_candidatesapplied JobFinder_candidatesapplied_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public."JobFinder_candidatesapplied"
    ADD CONSTRAINT "JobFinder_candidatesapplied_pkey" PRIMARY KEY (id);
 j   ALTER TABLE ONLY public."JobFinder_candidatesapplied" DROP CONSTRAINT "JobFinder_candidatesapplied_pkey";
       public            postgres    false    236            ?           2606    18169 (   JobFinder_contact JobFinder_contact_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."JobFinder_contact"
    ADD CONSTRAINT "JobFinder_contact_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."JobFinder_contact" DROP CONSTRAINT "JobFinder_contact_pkey";
       public            postgres    false    228            ?           2606    18201 (   JobFinder_jobpost JobFinder_jobpost_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."JobFinder_jobpost"
    ADD CONSTRAINT "JobFinder_jobpost_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."JobFinder_jobpost" DROP CONSTRAINT "JobFinder_jobpost_pkey";
       public            postgres    false    234            ?           2606    18180 &   JobFinder_resume JobFinder_resume_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."JobFinder_resume"
    ADD CONSTRAINT "JobFinder_resume_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."JobFinder_resume" DROP CONSTRAINT "JobFinder_resume_pkey";
       public            postgres    false    230            ?           2606    18188 0   JobFinder_userprofile JobFinder_userprofile_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public."JobFinder_userprofile"
    ADD CONSTRAINT "JobFinder_userprofile_pkey" PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public."JobFinder_userprofile" DROP CONSTRAINT "JobFinder_userprofile_pkey";
       public            postgres    false    232            ?           2606    18190 7   JobFinder_userprofile JobFinder_userprofile_user_id_key 
   CONSTRAINT     y   ALTER TABLE ONLY public."JobFinder_userprofile"
    ADD CONSTRAINT "JobFinder_userprofile_user_id_key" UNIQUE (user_id);
 e   ALTER TABLE ONLY public."JobFinder_userprofile" DROP CONSTRAINT "JobFinder_userprofile_user_id_key";
       public            postgres    false    232            ?           2606    18087 3   account_emailaddress account_emailaddress_email_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_email_key UNIQUE (email);
 ]   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_email_key;
       public            postgres    false    217            ?           2606    18059 .   account_emailaddress account_emailaddress_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_pkey;
       public            postgres    false    217            ?           2606    18071 ;   account_emailconfirmation account_emailconfirmation_key_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);
 e   ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_key_key;
       public            postgres    false    219            ?           2606    18069 8   account_emailconfirmation account_emailconfirmation_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_pkey;
       public            postgres    false    219            ?           2606    18096 8   accounts_userregistration accounts_userregistration_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.accounts_userregistration
    ADD CONSTRAINT accounts_userregistration_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.accounts_userregistration DROP CONSTRAINT accounts_userregistration_pkey;
       public            postgres    false    221            ?           2606    18098 ?   accounts_userregistration accounts_userregistration_user_id_key 
   CONSTRAINT     }   ALTER TABLE ONLY public.accounts_userregistration
    ADD CONSTRAINT accounts_userregistration_user_id_key UNIQUE (user_id);
 i   ALTER TABLE ONLY public.accounts_userregistration DROP CONSTRAINT accounts_userregistration_user_id_key;
       public            postgres    false    221            ?           2606    18135    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    207            ?           2606    18010 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    209    209            ?           2606    17973 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    209            ?           2606    17963    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    207            ?           2606    18001 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    205    205            ?           2606    17955 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    205            ?           2606    17991 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    213            ?           2606    18025 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    213    213            ?           2606    17981    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    211            ?           2606    17999 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    215            ?           2606    18039 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    215    215            ?           2606    18129     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    211            ?           2606    18115 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    223            ?           2606    17947 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    203    203            ?           2606    17945 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    203            ?           2606    17937 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    201            ?           2606    18144 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    224            ?           2606    18156 ,   django_site django_site_domain_a2e37b91_uniq 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);
 V   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_domain_a2e37b91_uniq;
       public            postgres    false    226            ?           2606    18154    django_site django_site_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_pkey;
       public            postgres    false    226            ?           1259    18227 +   JobFinder_candidatesapplied_job_id_a5e86dc2    INDEX     y   CREATE INDEX "JobFinder_candidatesapplied_job_id_a5e86dc2" ON public."JobFinder_candidatesapplied" USING btree (job_id);
 A   DROP INDEX public."JobFinder_candidatesapplied_job_id_a5e86dc2";
       public            postgres    false    236            ?           1259    18233 (   JobFinder_jobpost_created_by_id_50911fca    INDEX     s   CREATE INDEX "JobFinder_jobpost_created_by_id_50911fca" ON public."JobFinder_jobpost" USING btree (created_by_id);
 >   DROP INDEX public."JobFinder_jobpost_created_by_id_50911fca";
       public            postgres    false    234            ?           1259    18088 (   account_emailaddress_email_03be32b2_like    INDEX     ~   CREATE INDEX account_emailaddress_email_03be32b2_like ON public.account_emailaddress USING btree (email varchar_pattern_ops);
 <   DROP INDEX public.account_emailaddress_email_03be32b2_like;
       public            postgres    false    217            ?           1259    18078 %   account_emailaddress_user_id_2c513194    INDEX     i   CREATE INDEX account_emailaddress_user_id_2c513194 ON public.account_emailaddress USING btree (user_id);
 9   DROP INDEX public.account_emailaddress_user_id_2c513194;
       public            postgres    false    217            ?           1259    18085 3   account_emailconfirmation_email_address_id_5b7f8c58    INDEX     ?   CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON public.account_emailconfirmation USING btree (email_address_id);
 G   DROP INDEX public.account_emailconfirmation_email_address_id_5b7f8c58;
       public            postgres    false    219            ?           1259    18084 +   account_emailconfirmation_key_f43612bd_like    INDEX     ?   CREATE INDEX account_emailconfirmation_key_f43612bd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);
 ?   DROP INDEX public.account_emailconfirmation_key_f43612bd_like;
       public            postgres    false    219            ?           1259    18136    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    207            ?           1259    18021 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    209            ?           1259    18022 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    209            ?           1259    18007 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    205            ?           1259    18037 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    213            ?           1259    18036 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    213            ?           1259    18051 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ?   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    215            ?           1259    18050 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    215            ?           1259    18130     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    211            ?           1259    18126 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    223            ?           1259    18127 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    223            ?           1259    18146 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    224            ?           1259    18145 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    224            ?           1259    18157     django_site_domain_a2e37b91_like    INDEX     n   CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);
 4   DROP INDEX public.django_site_domain_a2e37b91_like;
       public            postgres    false    226                       2606    18222 M   JobFinder_candidatesapplied JobFinder_candidates_job_id_a5e86dc2_fk_JobFinder    FK CONSTRAINT     ?   ALTER TABLE ONLY public."JobFinder_candidatesapplied"
    ADD CONSTRAINT "JobFinder_candidates_job_id_a5e86dc2_fk_JobFinder" FOREIGN KEY (job_id) REFERENCES public."JobFinder_jobpost"(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public."JobFinder_candidatesapplied" DROP CONSTRAINT "JobFinder_candidates_job_id_a5e86dc2_fk_JobFinder";
       public          postgres    false    3060    234    236                       2606    18228 J   JobFinder_jobpost JobFinder_jobpost_created_by_id_50911fca_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."JobFinder_jobpost"
    ADD CONSTRAINT "JobFinder_jobpost_created_by_id_50911fca_fk_auth_user_id" FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public."JobFinder_jobpost" DROP CONSTRAINT "JobFinder_jobpost_created_by_id_50911fca_fk_auth_user_id";
       public          postgres    false    234    3005    211                       2606    18212 L   JobFinder_userprofile JobFinder_userprofile_user_id_3ae78e0c_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."JobFinder_userprofile"
    ADD CONSTRAINT "JobFinder_userprofile_user_id_3ae78e0c_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public."JobFinder_userprofile" DROP CONSTRAINT "JobFinder_userprofile_user_id_3ae78e0c_fk_auth_user_id";
       public          postgres    false    3005    211    232            ?           2606    18072 J   account_emailaddress account_emailaddress_user_id_2c513194_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_user_id_2c513194_fk_auth_user_id;
       public          postgres    false    217    211    3005                        2606    18079 U   account_emailconfirmation account_emailconfirm_email_address_id_5b7f8c58_fk_account_e    FK CONSTRAINT     ?   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e;
       public          postgres    false    3025    219    217                       2606    18099 T   accounts_userregistration accounts_userregistration_user_id_20e3bcf6_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.accounts_userregistration
    ADD CONSTRAINT accounts_userregistration_user_id_20e3bcf6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.accounts_userregistration DROP CONSTRAINT accounts_userregistration_user_id_20e3bcf6_fk_auth_user_id;
       public          postgres    false    3005    221    211            ?           2606    18016 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    2992    205    209            ?           2606    18011 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    209    2997    207            ?           2606    18002 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    2987    205    203            ?           2606    18031 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    213    207    2997            ?           2606    18026 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    211    3005    213            ?           2606    18045 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    215    2992    205            ?           2606    18040 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    215    211    3005                       2606    18116 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    203    223    2987                       2606    18121 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    223    3005    211            ?   ?   x?mͱ?0????)x !?`Z6H\?Qq4inl?ZHM?^????L'?O?5??&i??8??8t??&??r?K.???p9;?P??!??hU?4/SF??_?i9v?K˅?+?M?J?C?I??᪟}?v?+8?????iX?-?e??7kZ;?      ?      x?????? ? ?      ?   ?  x??Tے?8}_???2?O??N.?!?nRSE	[?
??H2??ےff'??T????ӧ??6%+f<??>K.(??p?X?ޫ??+VX}|??
?.?,kVpS??]]o?h8y??\????57??FlE-??fy?o???%؊C?
2_Ph???v?`?!?1.???5g?C??N\?Đ??CB??rܣ??-??J???Z]n??h?y?,@???F[&??;??;cU?5?x??܊)??#??b?/?1c:?????rX] G??8???????3c?Ss?w??R?y??A?
?w	&ע??s~??L???????,???tH%??%Y??Bj??B?5??Ah%.-??V 9?`խ|B?!˽T???????X???E??*?u???e'r?r?'?Vm????k???Nh^o?r}c?C9̂????C
ۚ7`T}?R??!?????c?+?wc??5y;?F????Z?@#O?WR??C)???R?sG??E?Q????E?G?m%?~???c??8??9v???e??{~y߂y\??u??,ڠ$G3e?!9?A?GB?0??p>????u??/-??m?r:5?صA??`[L??z?ԮOh&$\$i??4?2R??V?????}?;???R{Wa:???zr??i?S?2???s(τi]??2?A%q???o>??d?v?g??Y?X\??JXtG????fq???1?ev>??H???xr?t?.+&|S????x?"??l?,D?I?8?3?HÈ????S???'??(s|R?ͷ?WW????BQ4Z?tIST(N(u
?QL?????.?=r?5?0??6.?%?e???ݳ???4?ҏ̝?l1??tA????l??C"Ԇ??YD??"??d?F?E??g4??i4?q???~??????E?g?,??	F?ѿ?{N?      ?   $  x?M??n?0D??+??`?1܂UI?TUi?K%?ƛ?&ؖ?H???Tj"??2?;?(?[ԇ?V?iu??Ҏ=??1??ͪ???<??Vv?TZ?ŧ?j??8??͍>?E+?$Td?`-"/߽>??|?I}???#?ޚ!B?`?'<Z??,?7?!<?uO?$???n??<???ѣ_????4/yA???y6?`ge)ʒ??|?mL?????7???k???ws厝?)??>????l??H"zc?Y???	iB???G??o?ɧ?*r?????n??T??T/??5?+??y]z?      ?   ?   x??ν
?@?z?)ҫq?n?/???X???$??&&D,|{? X? L10S|????G?!??T??ua??%?*?$J? O?e?
?
R9i?f?????ž??é?S??kGX*ox?UN+?mI
???).???;		?O???l??X8?v8?CX?)4M??{?ξH%f?
9G?F?O???ok??ߖxh_f)v??	p?T?      ?      x?????? ? ?      ?      x?????? ? ?      ?   #   x?3?L?-?ɯL-?4?2?,NM?2??b???? ???      ?      x?????? ? ?      ?      x?????? ? ?      ?   w  x?m?ͮ?0???S?Մ??Y????RE??i*0???78Nlv???rLlǨ??Xt}_ӳ???|*????_?R??<~w??
*?? ??`7	??5???'?=@P???vy?uuӨJ?F?rsDw??r?E????EA?G?ݓ??2?gU?A??????}?????"?v)?J?nW??{???????M???]<> ?<< -???ptؼ??Ӹ?[+??٪`h?hs?F2	??}e<??|y!?vk??Ն[m?0?t)????0Q턡???Z'\%?*}u?U?`??R?7?F# ??F Z ?2n??a??׾:7?_?w?n`bҕ(?GOR!j;W?I?`????Z?U??_??[^ݶ??;??㺪?ydB???6ǌ2-OKj?<?LI	Juٟ?W1O???`ٓ??}?+?^??L(???h;?5k(???Q'??x??2??+]?F"MEJ?Q?(R???;??.ztc??n?k????l?Lx8h7t-:?\'?Q,??\??Q?:?\f?Qxs?{??????K?\?y?????|?"?f,p???H??
u?w?:ߖ?????A?CH7?s?=PI ?.?+	X??xz?L??}}=ݺ-?/M????nDϝ?X"R*??T?RҖ???0%'d??h????b      ?   `  x?u??N?PF??.?qf??robb? j??j??@?-?R?ފ??DW?%??r??R?fє^?4 ?5B ??$i???X??? 6w???????b+??V<?&nB???L?????#?Di
I=Ƅ8?L?(??6^*??Ӥf?.?ݾ?i@??P2???1"kנ???w??7??:??Z~????????U5?73?`?r?o?ht?L????8r????$rI\̤?n? -?hG???l?{???gH%	????}????-.}İ??2?{????7?Yy	??o??????o7?[ߊ??]?A?7?!?I?tD$2???8???]?G??5
?? ????????ΐ2      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?   ?   x?U?Mn1??p???O.?Eϐ?ɔjl,??}=Er7?|?=(e)??¥?@??@e??.Z???ŴW<?Mw6<C?҆??+???8???|?;??1?U? ?Q{i??d??l???<ob?ڦ????/)?~?Z??0?a?3c8L,RI?h,?ZW???8????i??q??&?0;?#??/???H?D?Jn?      ?   >  x???Mr?0????O?R???0?9?T?dPM"R??G?m?TH??????????}??~?N?Bh׻ə?@??L?3TO{???????;,?<?n)X	?IAS?~??m?`U%h?{j????|????XM-+??Jj~Uo???XP?\S??\?-Q,i?D?$?[???????VG??6M???%A?P$Fuc?#괩'?{?Қ??_??cT?,F?ȃ?/?ⵛ?????tv%8???%iԦ?lЃ???S??GdI?$/?¢?<???FLw???m??=&=rC~??qH	?3?.~?h?8%?]?mn?r?%I3?-~?]X???d?:d_ ??ʻi]c&Ƽ 6tg?????K??Ă?V???$W4oȅ??x?J???U]Q@.?c???&?^?3F-??-?z??t???? e???Ѐ?S????XȨ?9:?b???炗?
?????M????!#ya??4׾?^Ͻ{???c??'
Y??~???᧺???T?k???n9$??a?ѱ:?C?????	"???,1???3?n!pO??]????????????؇      ?     x??Kr?0  е???!?w??0?ә?h@????????*q??
???
l????ŵ5!???[Un?]???!XH????W??>???\?y(?c?&W<9???/?:?????~????V?a??s?????_??Ԅ]?]??L?Q/?P?CY.??Naڤײ????????i??l???j????6???3<]??X???yb5?d????1?5e?????J찧!R§??dI??????TK6? ???J??3?_?`"      ?      x?3?L?H?-?I?K??Efs??qqq ?<	?     