PGDMP     
                    {            placementdb    15.1    15.1 s    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17150    placementdb    DATABASE     ~   CREATE DATABASE placementdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE placementdb;
                postgres    false            
            2615    17155    event_schema    SCHEMA        CREATE SCHEMA event_schema;
    DROP SCHEMA event_schema;
                postgres    false                        2615    17153 
   job_schema    SCHEMA        CREATE SCHEMA job_schema;
    DROP SCHEMA job_schema;
                postgres    false                        2615    17151    loader_schema    SCHEMA        CREATE SCHEMA loader_schema;
    DROP SCHEMA loader_schema;
                postgres    false                        2615    17156    placement_statistics_schema    SCHEMA     +   CREATE SCHEMA placement_statistics_schema;
 )   DROP SCHEMA placement_statistics_schema;
                postgres    false            	            2615    17154    role_function_schema    SCHEMA     $   CREATE SCHEMA role_function_schema;
 "   DROP SCHEMA role_function_schema;
                postgres    false                        2615    17157    room_allotment    SCHEMA        CREATE SCHEMA room_allotment;
    DROP SCHEMA room_allotment;
                postgres    false                        2615    17152    user_schema    SCHEMA        CREATE SCHEMA user_schema;
    DROP SCHEMA user_schema;
                postgres    false            �            1259    17165    aptitude_test    TABLE     �   CREATE TABLE event_schema.aptitude_test (
    event_id integer NOT NULL,
    subjects_to_be_prepared character varying(255),
    test_duration character varying(255),
    test_sections character varying(255)
);
 '   DROP TABLE event_schema.aptitude_test;
       event_schema         heap    postgres    false    10            �            1259    17173    event_details    TABLE     �  CREATE TABLE event_schema.event_details (
    event_id integer NOT NULL,
    approved character varying(255),
    company_id integer,
    created_by character varying(255),
    created_date timestamp without time zone,
    date timestamp without time zone,
    event_type character varying(255),
    modified_by character varying(255),
    modified_date timestamp without time zone,
    "time" timestamp without time zone,
    venue character varying(255)
);
 '   DROP TABLE event_schema.event_details;
       event_schema         heap    postgres    false    10            �            1259    17172    event_details_event_id_seq    SEQUENCE     �   CREATE SEQUENCE event_schema.event_details_event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE event_schema.event_details_event_id_seq;
       event_schema          postgres    false    224    10            �           0    0    event_details_event_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE event_schema.event_details_event_id_seq OWNED BY event_schema.event_details.event_id;
          event_schema          postgres    false    223            �            1259    17181 	   interview    TABLE     r   CREATE TABLE event_schema.interview (
    event_id integer NOT NULL,
    interview_type character varying(255)
);
 #   DROP TABLE event_schema.interview;
       event_schema         heap    postgres    false    10            �            1259    17186    pre_placement_talk_or_other    TABLE     �   CREATE TABLE event_schema.pre_placement_talk_or_other (
    event_id integer NOT NULL,
    agenda character varying(255),
    conducted_by character varying(255)
);
 5   DROP TABLE event_schema.pre_placement_talk_or_other;
       event_schema         heap    postgres    false    10            �            1259    17193    applicant_company    TABLE     �   CREATE TABLE job_schema.applicant_company (
    username character varying(255) NOT NULL,
    company_id integer NOT NULL,
    company_name character varying(255),
    year character varying(255)
);
 )   DROP TABLE job_schema.applicant_company;
    
   job_schema         heap    postgres    false    8            �            1259    17200    company_company_id_seq    SEQUENCE     �   CREATE SEQUENCE job_schema.company_company_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE job_schema.company_company_id_seq;
    
   job_schema          postgres    false    8            �            1259    17201    company    TABLE     �  CREATE TABLE job_schema.company (
    company_id integer DEFAULT nextval('job_schema.company_company_id_seq'::regclass) NOT NULL,
    company_address character varying(255),
    company_name character varying(255),
    created_by character varying(255),
    created_date timestamp without time zone,
    modified_by character varying(255),
    modified_date timestamp without time zone,
    year character varying(255)
);
    DROP TABLE job_schema.company;
    
   job_schema         heap    postgres    false    228    8            �            1259    17209    company_job    TABLE     l   CREATE TABLE job_schema.company_job (
    job_id character varying(255) NOT NULL,
    company_id integer
);
 #   DROP TABLE job_schema.company_job;
    
   job_schema         heap    postgres    false    8            �            1259    17214    criteria    TABLE     *  CREATE TABLE job_schema.criteria (
    criteria_id integer NOT NULL,
    cgpa character varying(255),
    eligible_branches character varying(255),
    hsc_or_dip_percentage character varying(255),
    last_date_to_apply date,
    no_of_dead_kts_allowed character varying(255),
    no_of_live_kts_allowed character varying(255),
    percentage character varying(255),
    placed_students_allowed character varying(255),
    ssc_percentage character varying(255),
    year_gap_allowed character varying(255),
    year_of_passing character varying(255)
);
     DROP TABLE job_schema.criteria;
    
   job_schema         heap    postgres    false    8            �            1259    17221    feedback    TABLE     w  CREATE TABLE job_schema.feedback (
    username character varying(255) NOT NULL,
    company_name character varying(255) NOT NULL,
    created_by character varying(255),
    created_date timestamp without time zone,
    feedback character varying(500),
    modified_by character varying(255),
    modified_date timestamp without time zone,
    year character varying(255)
);
     DROP TABLE job_schema.feedback;
    
   job_schema         heap    postgres    false    8            �            1259    17228    job    TABLE     5  CREATE TABLE job_schema.job (
    job_id character varying(255) NOT NULL,
    created_by character varying(255),
    created_date timestamp without time zone,
    ctc character varying(255),
    docs_required character varying(255),
    drive_date timestamp without time zone,
    event_id character varying(255),
    job_category character varying(255),
    job_description character varying(255),
    modified_by character varying(255),
    modified_date timestamp without time zone,
    skills_required character varying(255),
    year character varying(255)
);
    DROP TABLE job_schema.job;
    
   job_schema         heap    postgres    false    8            �            1259    17367    loader    TABLE     	  CREATE TABLE loader_schema.loader (
    roll_no text NOT NULL,
    name text,
    branch text,
    gender text,
    dob text,
    mobile text,
    email text,
    ssc_per text,
    hsc_or_dip text,
    hsc_or_dip_per text,
    s1_mark text,
    s1_max text,
    s1_per text,
    s1_res text,
    s1_kt text,
    s2_mark text,
    s2_max text,
    s2_per text,
    s2_res text,
    s2_kt text,
    s3_mark text,
    s3_max text,
    s3_per text,
    s3_res text,
    s3_kt text,
    s4_mark text,
    s4_max text,
    s4_per text,
    s4_res text,
    s4_kt text,
    s5_mark text,
    s5_max text,
    s5_per text,
    s5_res text,
    s5_kt text,
    s6_mark text,
    s6_max text,
    s6_per text,
    s6_res text,
    s6_kt text,
    s7_mark text,
    s7_max text,
    s7_per text,
    s7_res text,
    s7_kt text,
    s8_mark text,
    s8_max text,
    s8_per text,
    s8_res text,
    s8_kt text,
    deg_per text,
    deg_kt text,
    drops text,
    year text,
    role_id text,
    created_date text,
    created_by text
);
 !   DROP TABLE loader_schema.loader;
       loader_schema         heap    postgres    false    6            �            1259    17158    interested_in_higher_studies    TABLE     �   CREATE TABLE placement_statistics_schema.interested_in_higher_studies (
    year character varying(255) NOT NULL,
    comps character varying(255),
    elex character varying(255),
    it character varying(255),
    prod character varying(255)
);
 E   DROP TABLE placement_statistics_schema.interested_in_higher_studies;
       placement_statistics_schema         heap    postgres    false    11            �            1259    17235    internship_placed    TABLE     �   CREATE TABLE placement_statistics_schema.internship_placed (
    year character varying(255) NOT NULL,
    comps character varying(255),
    elex character varying(255),
    it character varying(255),
    prod character varying(255)
);
 :   DROP TABLE placement_statistics_schema.internship_placed;
       placement_statistics_schema         heap    postgres    false    11            �            1259    17242    placement_statistics    TABLE     �  CREATE TABLE placement_statistics_schema.placement_statistics (
    placment_stats_id integer NOT NULL,
    branch character varying(255),
    company_id integer,
    created_by character varying(255),
    created_date timestamp without time zone,
    modified_by character varying(255),
    modified_date timestamp without time zone,
    no_applied integer,
    no_dual_placed integer,
    no_joined integer,
    total_no_of_students integer,
    year character varying(255)
);
 =   DROP TABLE placement_statistics_schema.placement_statistics;
       placement_statistics_schema         heap    postgres    false    11            �            1259    17249    placement_stats    TABLE     �   CREATE TABLE placement_statistics_schema.placement_stats (
    stats_id integer NOT NULL,
    company_id integer,
    comps integer,
    elex integer,
    it integer,
    prod integer,
    year character varying(255)
);
 8   DROP TABLE placement_statistics_schema.placement_stats;
       placement_statistics_schema         heap    postgres    false    11            �            1259    17254    quick_stats    TABLE     �   CREATE TABLE placement_statistics_schema.quick_stats (
    username character varying(255) NOT NULL,
    company_id integer NOT NULL,
    company_name character varying(255) NOT NULL,
    year character varying(255)
);
 4   DROP TABLE placement_statistics_schema.quick_stats;
       placement_statistics_schema         heap    postgres    false    11            �            1259    17261    total_no_of_students    TABLE     �   CREATE TABLE placement_statistics_schema.total_no_of_students (
    year character varying(255) NOT NULL,
    comps integer,
    elex integer,
    it integer,
    prod integer
);
 =   DROP TABLE placement_statistics_schema.total_no_of_students;
       placement_statistics_schema         heap    postgres    false    11            �            1259    17266    total_placed    TABLE     �   CREATE TABLE placement_statistics_schema.total_placed (
    year character varying(255) NOT NULL,
    comps integer,
    elex integer,
    it integer,
    prod integer
);
 5   DROP TABLE placement_statistics_schema.total_placed;
       placement_statistics_schema         heap    postgres    false    11            �            1259    17363    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          postgres    false            �            1259    17271    ftpc_special_role    TABLE     �   CREATE TABLE role_function_schema.ftpc_special_role (
    username character varying(255) NOT NULL,
    special_role character varying(255) NOT NULL
);
 3   DROP TABLE role_function_schema.ftpc_special_role;
       role_function_schema         heap    postgres    false    9            �            1259    17279    function_master    TABLE     W  CREATE TABLE role_function_schema.function_master (
    function_id integer NOT NULL,
    created_by character varying(255),
    created_date timestamp without time zone,
    function_name character varying(255),
    function_url character varying(255),
    modified_by character varying(255),
    modified_date timestamp without time zone
);
 1   DROP TABLE role_function_schema.function_master;
       role_function_schema         heap    postgres    false    9            �            1259    17278    function_master_function_id_seq    SEQUENCE     �   CREATE SEQUENCE role_function_schema.function_master_function_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE role_function_schema.function_master_function_id_seq;
       role_function_schema          postgres    false    242    9            �           0    0    function_master_function_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE role_function_schema.function_master_function_id_seq OWNED BY role_function_schema.function_master.function_id;
          role_function_schema          postgres    false    241            �            1259    17287    role_function_map    TABLE     �   CREATE TABLE role_function_schema.role_function_map (
    role_id character varying(255) NOT NULL,
    function_id integer NOT NULL
);
 3   DROP TABLE role_function_schema.role_function_map;
       role_function_schema         heap    postgres    false    9            �            1259    17292    role_master    TABLE     1  CREATE TABLE role_function_schema.role_master (
    role_id character varying(255) NOT NULL,
    role_name character varying(255),
    created_by character varying(255),
    created_date timestamp without time zone,
    modified_by character varying(255),
    modified_date timestamp without time zone
);
 -   DROP TABLE role_function_schema.role_master;
       role_function_schema         heap    postgres    false    9            �            1259    17300 	   allotment    TABLE     ^  CREATE TABLE room_allotment.allotment (
    allotment_id integer NOT NULL,
    company_name character varying(255),
    drive_date timestamp without time zone,
    room_path character varying(255),
    job_description character varying(255),
    room_no character varying(255),
    round_no character varying(255),
    year character varying(255)
);
 %   DROP TABLE room_allotment.allotment;
       room_allotment         heap    postgres    false    12            �            1259    17299    allotment_allotment_id_seq    SEQUENCE     �   CREATE SEQUENCE room_allotment.allotment_allotment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE room_allotment.allotment_allotment_id_seq;
       room_allotment          postgres    false    12    246            �           0    0    allotment_allotment_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE room_allotment.allotment_allotment_id_seq OWNED BY room_allotment.allotment.allotment_id;
          room_allotment          postgres    false    245            �            1259    17308    personal_profile    TABLE     g  CREATE TABLE user_schema.personal_profile (
    email_id character varying(255),
    gender character varying(255),
    name character varying(255),
    username character varying(255) NOT NULL,
    category character varying(255),
    correspondence_address character varying(255),
    created_by character varying(255),
    created_date timestamp without time zone,
    dob character varying(255),
    family_income character varying(255),
    mobile_no character varying(255),
    modified_by character varying(255),
    modified_date timestamp without time zone,
    permanent_address character varying(255)
);
 )   DROP TABLE user_schema.personal_profile;
       user_schema         heap    postgres    false    7            �            1259    17315    professional_profile    TABLE     �  CREATE TABLE user_schema.professional_profile (
    branch character varying(255),
    username character varying(255) NOT NULL,
    achievements character varying(255),
    co_curricular_activities character varying(255),
    created_by character varying(255),
    created_date timestamp without time zone,
    extra_curricular_activities character varying(255),
    field_of_interest character varying(255),
    internships character varying(255),
    modified_by character varying(255),
    modified_date timestamp without time zone,
    projects character varying(255),
    status character varying(255),
    year character varying(255)
);
 -   DROP TABLE user_schema.professional_profile;
       user_schema         heap    postgres    false    7            �            1259    17322    professional_profile_job    TABLE     �   CREATE TABLE user_schema.professional_profile_job (
    username character varying(255) NOT NULL,
    job_id character varying(255)
);
 1   DROP TABLE user_schema.professional_profile_job;
       user_schema         heap    postgres    false    7            �            1259    17329    qualification    TABLE     �  CREATE TABLE user_schema.qualification (
    username character varying(255) NOT NULL,
    deg_kt character varying(255),
    deg_per character varying(255),
    drops character varying(255),
    hsc_or_dip character varying(255),
    hsc_or_dip_per character varying(255),
    s1_kt character varying(255),
    s1_mark character varying(255),
    s1_max character varying(255),
    s1_per character varying(255),
    s1_res character varying(255),
    s2_kt character varying(255),
    s2_mark character varying(255),
    s2_max character varying(255),
    s2_per character varying(255),
    s2_res character varying(255),
    s3_kt character varying(255),
    s3_mark character varying(255),
    s3_max character varying(255),
    s3_per character varying(255),
    s3_res character varying(255),
    s4_kt character varying(255),
    s4_mark character varying(255),
    s4_max character varying(255),
    s4_per character varying(255),
    s4_res character varying(255),
    s5_kt character varying(255),
    s5_mark character varying(255),
    s5_max character varying(255),
    s5_per character varying(255),
    s5_res character varying(255),
    s6_kt character varying(255),
    s6_mark character varying(255),
    s6_max character varying(255),
    s6_per character varying(255),
    s6_res character varying(255),
    s7_kt character varying(255),
    s7_mark character varying(255),
    s7_max character varying(255),
    s7_per character varying(255),
    s7_res character varying(255),
    s8_kt character varying(255),
    s8_mark character varying(255),
    s8_max character varying(255),
    s8_per character varying(255),
    s8_res character varying(255),
    ssc_per character varying(255),
    created_date text,
    created_by text
);
 &   DROP TABLE user_schema.qualification;
       user_schema         heap    postgres    false    7            �            1259    17336    userdetails    TABLE     �  CREATE TABLE user_schema.userdetails (
    username character varying(255) NOT NULL,
    created_by character varying(255),
    created_date character varying(255),
    role_id character varying(255),
    account_active character varying(255),
    current_state character varying(255),
    last_login timestamp without time zone,
    modified_by character varying(255),
    modified_date timestamp without time zone,
    notified boolean,
    user_password character varying(255)
);
 $   DROP TABLE user_schema.userdetails;
       user_schema         heap    postgres    false    7            �           2604    17176    event_details event_id    DEFAULT     �   ALTER TABLE ONLY event_schema.event_details ALTER COLUMN event_id SET DEFAULT nextval('event_schema.event_details_event_id_seq'::regclass);
 K   ALTER TABLE event_schema.event_details ALTER COLUMN event_id DROP DEFAULT;
       event_schema          postgres    false    223    224    224            �           2604    17282    function_master function_id    DEFAULT     �   ALTER TABLE ONLY role_function_schema.function_master ALTER COLUMN function_id SET DEFAULT nextval('role_function_schema.function_master_function_id_seq'::regclass);
 X   ALTER TABLE role_function_schema.function_master ALTER COLUMN function_id DROP DEFAULT;
       role_function_schema          postgres    false    242    241    242            �           2604    17303    allotment allotment_id    DEFAULT     �   ALTER TABLE ONLY room_allotment.allotment ALTER COLUMN allotment_id SET DEFAULT nextval('room_allotment.allotment_allotment_id_seq'::regclass);
 M   ALTER TABLE room_allotment.allotment ALTER COLUMN allotment_id DROP DEFAULT;
       room_allotment          postgres    false    245    246    246            �          0    17165    aptitude_test 
   TABLE DATA           n   COPY event_schema.aptitude_test (event_id, subjects_to_be_prepared, test_duration, test_sections) FROM stdin;
    event_schema          postgres    false    222   u�       �          0    17173    event_details 
   TABLE DATA           �   COPY event_schema.event_details (event_id, approved, company_id, created_by, created_date, date, event_type, modified_by, modified_date, "time", venue) FROM stdin;
    event_schema          postgres    false    224   ��       �          0    17181 	   interview 
   TABLE DATA           C   COPY event_schema.interview (event_id, interview_type) FROM stdin;
    event_schema          postgres    false    225   `�       �          0    17186    pre_placement_talk_or_other 
   TABLE DATA           [   COPY event_schema.pre_placement_talk_or_other (event_id, agenda, conducted_by) FROM stdin;
    event_schema          postgres    false    226   ��       �          0    17193    applicant_company 
   TABLE DATA           Y   COPY job_schema.applicant_company (username, company_id, company_name, year) FROM stdin;
 
   job_schema          postgres    false    227   ڱ       �          0    17201    company 
   TABLE DATA           �   COPY job_schema.company (company_id, company_address, company_name, created_by, created_date, modified_by, modified_date, year) FROM stdin;
 
   job_schema          postgres    false    229   .�       �          0    17209    company_job 
   TABLE DATA           =   COPY job_schema.company_job (job_id, company_id) FROM stdin;
 
   job_schema          postgres    false    230   ��       �          0    17214    criteria 
   TABLE DATA           �   COPY job_schema.criteria (criteria_id, cgpa, eligible_branches, hsc_or_dip_percentage, last_date_to_apply, no_of_dead_kts_allowed, no_of_live_kts_allowed, percentage, placed_students_allowed, ssc_percentage, year_gap_allowed, year_of_passing) FROM stdin;
 
   job_schema          postgres    false    231   �       �          0    17221    feedback 
   TABLE DATA           �   COPY job_schema.feedback (username, company_name, created_by, created_date, feedback, modified_by, modified_date, year) FROM stdin;
 
   job_schema          postgres    false    232   ��       �          0    17228    job 
   TABLE DATA           �   COPY job_schema.job (job_id, created_by, created_date, ctc, docs_required, drive_date, event_id, job_category, job_description, modified_by, modified_date, skills_required, year) FROM stdin;
 
   job_schema          postgres    false    233   �       �          0    17367    loader 
   TABLE DATA              COPY loader_schema.loader (roll_no, name, branch, gender, dob, mobile, email, ssc_per, hsc_or_dip, hsc_or_dip_per, s1_mark, s1_max, s1_per, s1_res, s1_kt, s2_mark, s2_max, s2_per, s2_res, s2_kt, s3_mark, s3_max, s3_per, s3_res, s3_kt, s4_mark, s4_max, s4_per, s4_res, s4_kt, s5_mark, s5_max, s5_per, s5_res, s5_kt, s6_mark, s6_max, s6_per, s6_res, s6_kt, s7_mark, s7_max, s7_per, s7_res, s7_kt, s8_mark, s8_max, s8_per, s8_res, s8_kt, deg_per, deg_kt, drops, year, role_id, created_date, created_by) FROM stdin;
    loader_schema          postgres    false    253   �       �          0    17158    interested_in_higher_studies 
   TABLE DATA           h   COPY placement_statistics_schema.interested_in_higher_studies (year, comps, elex, it, prod) FROM stdin;
    placement_statistics_schema          postgres    false    221   /�       �          0    17235    internship_placed 
   TABLE DATA           ]   COPY placement_statistics_schema.internship_placed (year, comps, elex, it, prod) FROM stdin;
    placement_statistics_schema          postgres    false    234   X�       �          0    17242    placement_statistics 
   TABLE DATA           �   COPY placement_statistics_schema.placement_statistics (placment_stats_id, branch, company_id, created_by, created_date, modified_by, modified_date, no_applied, no_dual_placed, no_joined, total_no_of_students, year) FROM stdin;
    placement_statistics_schema          postgres    false    235   ��       �          0    17249    placement_stats 
   TABLE DATA           q   COPY placement_statistics_schema.placement_stats (stats_id, company_id, comps, elex, it, prod, year) FROM stdin;
    placement_statistics_schema          postgres    false    236   ��       �          0    17254    quick_stats 
   TABLE DATA           d   COPY placement_statistics_schema.quick_stats (username, company_id, company_name, year) FROM stdin;
    placement_statistics_schema          postgres    false    237   �       �          0    17261    total_no_of_students 
   TABLE DATA           `   COPY placement_statistics_schema.total_no_of_students (year, comps, elex, it, prod) FROM stdin;
    placement_statistics_schema          postgres    false    238   N�       �          0    17266    total_placed 
   TABLE DATA           X   COPY placement_statistics_schema.total_placed (year, comps, elex, it, prod) FROM stdin;
    placement_statistics_schema          postgres    false    239   ��       �          0    17271    ftpc_special_role 
   TABLE DATA           Q   COPY role_function_schema.ftpc_special_role (username, special_role) FROM stdin;
    role_function_schema          postgres    false    240   ��       �          0    17279    function_master 
   TABLE DATA           �   COPY role_function_schema.function_master (function_id, created_by, created_date, function_name, function_url, modified_by, modified_date) FROM stdin;
    role_function_schema          postgres    false    242   �       �          0    17287    role_function_map 
   TABLE DATA           O   COPY role_function_schema.role_function_map (role_id, function_id) FROM stdin;
    role_function_schema          postgres    false    243   �       �          0    17292    role_master 
   TABLE DATA           }   COPY role_function_schema.role_master (role_id, role_name, created_by, created_date, modified_by, modified_date) FROM stdin;
    role_function_schema          postgres    false    244   c�       �          0    17300 	   allotment 
   TABLE DATA           �   COPY room_allotment.allotment (allotment_id, company_name, drive_date, room_path, job_description, room_no, round_no, year) FROM stdin;
    room_allotment          postgres    false    246   ��       �          0    17308    personal_profile 
   TABLE DATA           �   COPY user_schema.personal_profile (email_id, gender, name, username, category, correspondence_address, created_by, created_date, dob, family_income, mobile_no, modified_by, modified_date, permanent_address) FROM stdin;
    user_schema          postgres    false    247   W�       �          0    17315    professional_profile 
   TABLE DATA           �   COPY user_schema.professional_profile (branch, username, achievements, co_curricular_activities, created_by, created_date, extra_curricular_activities, field_of_interest, internships, modified_by, modified_date, projects, status, year) FROM stdin;
    user_schema          postgres    false    248   �      �          0    17322    professional_profile_job 
   TABLE DATA           I   COPY user_schema.professional_profile_job (username, job_id) FROM stdin;
    user_schema          postgres    false    249   �      �          0    17329    qualification 
   TABLE DATA           �  COPY user_schema.qualification (username, deg_kt, deg_per, drops, hsc_or_dip, hsc_or_dip_per, s1_kt, s1_mark, s1_max, s1_per, s1_res, s2_kt, s2_mark, s2_max, s2_per, s2_res, s3_kt, s3_mark, s3_max, s3_per, s3_res, s4_kt, s4_mark, s4_max, s4_per, s4_res, s5_kt, s5_mark, s5_max, s5_per, s5_res, s6_kt, s6_mark, s6_max, s6_per, s6_res, s7_kt, s7_mark, s7_max, s7_per, s7_res, s8_kt, s8_mark, s8_max, s8_per, s8_res, ssc_per, created_date, created_by) FROM stdin;
    user_schema          postgres    false    250   �      �          0    17336    userdetails 
   TABLE DATA           �   COPY user_schema.userdetails (username, created_by, created_date, role_id, account_active, current_state, last_login, modified_by, modified_date, notified, user_password) FROM stdin;
    user_schema          postgres    false    251   �C      �           0    0    event_details_event_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('event_schema.event_details_event_id_seq', 4, true);
          event_schema          postgres    false    223            �           0    0    company_company_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('job_schema.company_company_id_seq', 20, true);
       
   job_schema          postgres    false    228            �           0    0    hibernate_sequence    SEQUENCE SET     A   SELECT pg_catalog.setval('public.hibernate_sequence', 1, false);
          public          postgres    false    252            �           0    0    function_master_function_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('role_function_schema.function_master_function_id_seq', 33, true);
          role_function_schema          postgres    false    241            �           0    0    allotment_allotment_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('room_allotment.allotment_allotment_id_seq', 3, true);
          room_allotment          postgres    false    245            �           2606    17171     aptitude_test aptitude_test_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY event_schema.aptitude_test
    ADD CONSTRAINT aptitude_test_pkey PRIMARY KEY (event_id);
 P   ALTER TABLE ONLY event_schema.aptitude_test DROP CONSTRAINT aptitude_test_pkey;
       event_schema            postgres    false    222            �           2606    17180     event_details event_details_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY event_schema.event_details
    ADD CONSTRAINT event_details_pkey PRIMARY KEY (event_id);
 P   ALTER TABLE ONLY event_schema.event_details DROP CONSTRAINT event_details_pkey;
       event_schema            postgres    false    224            �           2606    17185    interview interview_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY event_schema.interview
    ADD CONSTRAINT interview_pkey PRIMARY KEY (event_id);
 H   ALTER TABLE ONLY event_schema.interview DROP CONSTRAINT interview_pkey;
       event_schema            postgres    false    225            �           2606    17192 <   pre_placement_talk_or_other pre_placement_talk_or_other_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY event_schema.pre_placement_talk_or_other
    ADD CONSTRAINT pre_placement_talk_or_other_pkey PRIMARY KEY (event_id);
 l   ALTER TABLE ONLY event_schema.pre_placement_talk_or_other DROP CONSTRAINT pre_placement_talk_or_other_pkey;
       event_schema            postgres    false    226            �           2606    17199 (   applicant_company applicant_company_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY job_schema.applicant_company
    ADD CONSTRAINT applicant_company_pkey PRIMARY KEY (username, company_id);
 V   ALTER TABLE ONLY job_schema.applicant_company DROP CONSTRAINT applicant_company_pkey;
    
   job_schema            postgres    false    227    227            �           2606    17213    company_job company_job_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY job_schema.company_job
    ADD CONSTRAINT company_job_pkey PRIMARY KEY (job_id);
 J   ALTER TABLE ONLY job_schema.company_job DROP CONSTRAINT company_job_pkey;
    
   job_schema            postgres    false    230            �           2606    17208    company company_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY job_schema.company
    ADD CONSTRAINT company_pkey PRIMARY KEY (company_id);
 B   ALTER TABLE ONLY job_schema.company DROP CONSTRAINT company_pkey;
    
   job_schema            postgres    false    229            �           2606    17220    criteria criteria_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY job_schema.criteria
    ADD CONSTRAINT criteria_pkey PRIMARY KEY (criteria_id);
 D   ALTER TABLE ONLY job_schema.criteria DROP CONSTRAINT criteria_pkey;
    
   job_schema            postgres    false    231            �           2606    17227    feedback feedback_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY job_schema.feedback
    ADD CONSTRAINT feedback_pkey PRIMARY KEY (username, company_name);
 D   ALTER TABLE ONLY job_schema.feedback DROP CONSTRAINT feedback_pkey;
    
   job_schema            postgres    false    232    232            �           2606    17234    job job_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY job_schema.job
    ADD CONSTRAINT job_pkey PRIMARY KEY (job_id);
 :   ALTER TABLE ONLY job_schema.job DROP CONSTRAINT job_pkey;
    
   job_schema            postgres    false    233                       2606    17373    loader loader_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY loader_schema.loader
    ADD CONSTRAINT loader_pkey PRIMARY KEY (roll_no);
 C   ALTER TABLE ONLY loader_schema.loader DROP CONSTRAINT loader_pkey;
       loader_schema            postgres    false    253            �           2606    17164 >   interested_in_higher_studies interested_in_higher_studies_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY placement_statistics_schema.interested_in_higher_studies
    ADD CONSTRAINT interested_in_higher_studies_pkey PRIMARY KEY (year);
 }   ALTER TABLE ONLY placement_statistics_schema.interested_in_higher_studies DROP CONSTRAINT interested_in_higher_studies_pkey;
       placement_statistics_schema            postgres    false    221            �           2606    17241 (   internship_placed internship_placed_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY placement_statistics_schema.internship_placed
    ADD CONSTRAINT internship_placed_pkey PRIMARY KEY (year);
 g   ALTER TABLE ONLY placement_statistics_schema.internship_placed DROP CONSTRAINT internship_placed_pkey;
       placement_statistics_schema            postgres    false    234            �           2606    17248 .   placement_statistics placement_statistics_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY placement_statistics_schema.placement_statistics
    ADD CONSTRAINT placement_statistics_pkey PRIMARY KEY (placment_stats_id);
 m   ALTER TABLE ONLY placement_statistics_schema.placement_statistics DROP CONSTRAINT placement_statistics_pkey;
       placement_statistics_schema            postgres    false    235            �           2606    17253 $   placement_stats placement_stats_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY placement_statistics_schema.placement_stats
    ADD CONSTRAINT placement_stats_pkey PRIMARY KEY (stats_id);
 c   ALTER TABLE ONLY placement_statistics_schema.placement_stats DROP CONSTRAINT placement_stats_pkey;
       placement_statistics_schema            postgres    false    236            �           2606    17260    quick_stats quick_stats_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY placement_statistics_schema.quick_stats
    ADD CONSTRAINT quick_stats_pkey PRIMARY KEY (username, company_id);
 [   ALTER TABLE ONLY placement_statistics_schema.quick_stats DROP CONSTRAINT quick_stats_pkey;
       placement_statistics_schema            postgres    false    237    237            �           2606    17265 .   total_no_of_students total_no_of_students_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY placement_statistics_schema.total_no_of_students
    ADD CONSTRAINT total_no_of_students_pkey PRIMARY KEY (year);
 m   ALTER TABLE ONLY placement_statistics_schema.total_no_of_students DROP CONSTRAINT total_no_of_students_pkey;
       placement_statistics_schema            postgres    false    238                       2606    17270    total_placed total_placed_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY placement_statistics_schema.total_placed
    ADD CONSTRAINT total_placed_pkey PRIMARY KEY (year);
 ]   ALTER TABLE ONLY placement_statistics_schema.total_placed DROP CONSTRAINT total_placed_pkey;
       placement_statistics_schema            postgres    false    239                       2606    17277 (   ftpc_special_role ftpc_special_role_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY role_function_schema.ftpc_special_role
    ADD CONSTRAINT ftpc_special_role_pkey PRIMARY KEY (username, special_role);
 `   ALTER TABLE ONLY role_function_schema.ftpc_special_role DROP CONSTRAINT ftpc_special_role_pkey;
       role_function_schema            postgres    false    240    240                       2606    17286 $   function_master function_master_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY role_function_schema.function_master
    ADD CONSTRAINT function_master_pkey PRIMARY KEY (function_id);
 \   ALTER TABLE ONLY role_function_schema.function_master DROP CONSTRAINT function_master_pkey;
       role_function_schema            postgres    false    242                       2606    17291 (   role_function_map role_function_map_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY role_function_schema.role_function_map
    ADD CONSTRAINT role_function_map_pkey PRIMARY KEY (role_id, function_id);
 `   ALTER TABLE ONLY role_function_schema.role_function_map DROP CONSTRAINT role_function_map_pkey;
       role_function_schema            postgres    false    243    243            	           2606    17298    role_master role_master_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY role_function_schema.role_master
    ADD CONSTRAINT role_master_pkey PRIMARY KEY (role_id);
 T   ALTER TABLE ONLY role_function_schema.role_master DROP CONSTRAINT role_master_pkey;
       role_function_schema            postgres    false    244                       2606    17307    allotment allotment_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY room_allotment.allotment
    ADD CONSTRAINT allotment_pkey PRIMARY KEY (allotment_id);
 J   ALTER TABLE ONLY room_allotment.allotment DROP CONSTRAINT allotment_pkey;
       room_allotment            postgres    false    246                       2606    17314 &   personal_profile personal_profile_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY user_schema.personal_profile
    ADD CONSTRAINT personal_profile_pkey PRIMARY KEY (username);
 U   ALTER TABLE ONLY user_schema.personal_profile DROP CONSTRAINT personal_profile_pkey;
       user_schema            postgres    false    247                       2606    17328 6   professional_profile_job professional_profile_job_pkey 
   CONSTRAINT        ALTER TABLE ONLY user_schema.professional_profile_job
    ADD CONSTRAINT professional_profile_job_pkey PRIMARY KEY (username);
 e   ALTER TABLE ONLY user_schema.professional_profile_job DROP CONSTRAINT professional_profile_job_pkey;
       user_schema            postgres    false    249                       2606    17321 .   professional_profile professional_profile_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY user_schema.professional_profile
    ADD CONSTRAINT professional_profile_pkey PRIMARY KEY (username);
 ]   ALTER TABLE ONLY user_schema.professional_profile DROP CONSTRAINT professional_profile_pkey;
       user_schema            postgres    false    248                       2606    17335     qualification qualification_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY user_schema.qualification
    ADD CONSTRAINT qualification_pkey PRIMARY KEY (username);
 O   ALTER TABLE ONLY user_schema.qualification DROP CONSTRAINT qualification_pkey;
       user_schema            postgres    false    250                       2606    17342    userdetails userdetails_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY user_schema.userdetails
    ADD CONSTRAINT userdetails_pkey PRIMARY KEY (username);
 K   ALTER TABLE ONLY user_schema.userdetails DROP CONSTRAINT userdetails_pkey;
       user_schema            postgres    false    251                       2606    17343 $   company fk_q79ooswnnmx4kafhpltwr6441    FK CONSTRAINT     �   ALTER TABLE ONLY job_schema.company
    ADD CONSTRAINT fk_q79ooswnnmx4kafhpltwr6441 FOREIGN KEY (company_id) REFERENCES placement_statistics_schema.placement_stats(stats_id);
 R   ALTER TABLE ONLY job_schema.company DROP CONSTRAINT fk_q79ooswnnmx4kafhpltwr6441;
    
   job_schema          postgres    false    3323    229    236                       2606    17358 *   qualification fk_83yy4vnt1v4mjxao1v3cdxomy    FK CONSTRAINT     �   ALTER TABLE ONLY user_schema.qualification
    ADD CONSTRAINT fk_83yy4vnt1v4mjxao1v3cdxomy FOREIGN KEY (username) REFERENCES user_schema.userdetails(username);
 Y   ALTER TABLE ONLY user_schema.qualification DROP CONSTRAINT fk_83yy4vnt1v4mjxao1v3cdxomy;
       user_schema          postgres    false    3349    250    251                       2606    17348 -   personal_profile fk_a4ygcj0lkgl0flb626qdgwq2o    FK CONSTRAINT     �   ALTER TABLE ONLY user_schema.personal_profile
    ADD CONSTRAINT fk_a4ygcj0lkgl0flb626qdgwq2o FOREIGN KEY (username) REFERENCES user_schema.userdetails(username);
 \   ALTER TABLE ONLY user_schema.personal_profile DROP CONSTRAINT fk_a4ygcj0lkgl0flb626qdgwq2o;
       user_schema          postgres    false    251    3349    247                       2606    17353 1   professional_profile fk_n1utx395c426dndple7q9j568    FK CONSTRAINT     �   ALTER TABLE ONLY user_schema.professional_profile
    ADD CONSTRAINT fk_n1utx395c426dndple7q9j568 FOREIGN KEY (username) REFERENCES user_schema.userdetails(username);
 `   ALTER TABLE ONLY user_schema.professional_profile DROP CONSTRAINT fk_n1utx395c426dndple7q9j568;
       user_schema          postgres    false    251    248    3349            �      x�3��M,�(�4T��/-�4����� B�      �   �   x�}�A
�0�ur�\��L�QO�M��V(!�b �����[E
��W�?<Ȍw�f��,	P��hP粖��¤>gB�k�0�e�a�}$�i���Ȅ|�I�vg�|oGv�!P��jW\��)�ԗI�C�q��Ln�#��������ӫgv=U�R�^���>�����~}�pJ�wOR�      �   #   x�3�IM���LN�Q��+I-*�L-����� ~X      �   7   x�3�tO-Q(�W���/WHL�/-QH��-H̫�t,J/-�O+QIM������ ~%=      �   D   x�3�pruv56000�4�t,J/-�O+�4202�2��ș�300ƫϘ�9� =573/"���� �NP      �   q  x��V�r�F=���O��J�����nc���
���K��`y�I����K�8�R�!UB������k8��e�����܍o�0*Ų6Z�%��k���N��#��B*\���f�k60��ү5��]*�=\z�%���i��^�z�ϾN틾/6�*�6���hpϿ���
b�GF]pCܬ�N�(Hyύ{�s����`��B`J���0ªv`Ҽ���+S�Av'���U7P/{n��XV����Ȥ����'�V]Jx���܈5�ի�Ų膍m~��ʯǦڵ�=�9E�)�~s�	^���RrEwp�e)+,�P��(����ЫRt�'i��$���c6r������`����i�V����?f���'�\aCY�!+�0�Ou��i��-1m��ZL,*oD)O\�s&	Kj��$q(Af�()��X�A�.r|��a��IwdJ��Q�G��%�B���,�N/�pg�P0�6������sIݐ��MS�[<�9KҶ�t��<t��c�J��6���\���%������O$_K��'�6e��IzS��ߴy;��W���ou��-��>;S�X�)HM�rKJ�������n/n��P4,�̽4'�J�}�E����0(�smHП�r�yK�~�F$����|%���Xt�R/q������=NG��8{���h�͜S��$�nd�K�r 	}���Z��֒zO���Gj�R!Y��*��3*AD�l���_�$׉�v�7��4�&�K#��ߺ�z)�h�Zh=�Q�hd�ZQZ^Lo�E9N�a~�N��i�X��p�F�:���`�����I?fs�)tE~�Tn�F�;,�4�.�J�
�m��C���\
�4d����v`htUF�9�����R�zo�MI���o�ur�曤��zQ�o�N��&��A.+�"���fS����u��+n1�w�茶���,t��N:�[[`گ���>:Uk���C�H��z�������>BQ���l��d��R|#k�����i,��\�U��U|��?�B�k/V��&��h�������>����v��.HY4�pI�Ϭ-xl�D�hO����1vݼw`I;;oL�:6X.i���#�3Z_݋�� K���      �   H   x���1��t0.5E]�l�q0R)f&�fe��99�\^�8�(V,�qb����ă7^|�Q#5�~����      �   �   x����� E��W��P( �1.N�]�"�����^:t�`�zrs�U��Ѱ������Ƅ!��q3��T�KM����L�F��Jwr��z�39Q廜�n`��3n����P�$�j�
#|?��˴�vq��1�Z�LT      �   ^   x�3�truv56050�t,J/-�O+�4D4202�50�52Q02�25�20�37���,Q(O,VH�M���KWH�(H-�L�KN��!�>�=... �[2      �   �   x����n�0���� @�1�x����ԇ�m6Z�1��������Ҭ�5�ˡ0y_���<
�� �+!c��S���lѺ�(s����"���5��(�T]8dM/�{o��	��-��3�>�6��'{�6.�5��S^��KT|J������ͮt�-ܧ��`=���F=��qe�F��9��&��LV��b"\B������tF&���}U�L~\�nƧso�*������/�口      �      x������ � �      �      x�3202�44�4B#�=... ��      �      x�3202�46�44�42�4����� #��      �      x������ � �      �   c   x�]ι1�xT�������������hD���G� 2<<#�dfX����p2\n;�2�����냥؁�ى�څ�ۍ�܃�݋�>��3}?����2      �   )   x�3�truv56050�4�t,J/-�O+�4202����� ��      �   -   x�3202ⴴ�45�0�\FFƜ���F�@�Hq��qqq ��B      �      x�3202�45�44�4�\1z\\\ '^'      �   S   x�KKL.�)�4�t��v����s�r�
�J�șp����89:{�Iq�8:������ɘr����;�������b���� @ �      �   �  x�}�͎�0���S�b�xe��R�if�������kc��TB�1��{�^~�k�u��~l*�@�I׀ BW�Zb!�<�)�<����#i��dg<�S����M:��C9���`m�~iNv£t(��BR
9#-/�jAR���0n&k?Xv��Tu?�W��4��1�2n�cq�T���jgQ#�Z�D���޴��{0�0�	�Z�w��M��@;�{4g0�C���\�n��=��4�8�Ԕ�Y��uU5�i���d�=��2�4���r����{�+�L��"�2LL� Jة�k�r�p�����b�mvms�v{7��x��r(���w�[�7W�N�D)����森���@R�ҳ�-b�M8$)�o�ݭAhOςC���I� 1_�}@�t|��5S)IǓ`(��2g>lz�I. C���g�sp.	���hc��A�Gz�����`J��s��"y�Y֜���q``�\�&�t����M�?�m��!~ۛ�I�8��`)�Z�Z1.j^�$���FH��Aw�JwfA�UyRX1�h&��$s�w�Ω}ѽu�ӓ;�f�k�$Hbj��,�S�_�]i{��`���`+��L8�T�,Ъ�rR�d��7��f5rN���z��E�w��[1ɱ��4ǣj���W��w��[q�D,����F�Ҹi>��k��y�u�\,� 2a,�      �   n   x�-��!�8�-ds�2�Ǳ�y����)VK��aMk�|�m�Zꀶ�������mpv��"yf~�1X-;1Aq�9B-�.nGq�x�5�fU��"��*g      �   C   x�3�tL�����#.Sΐ N���Ҝ�ʐ g	c���ҔԼt	#�QC�r�=... �J#@      �   �   x����
�0Dϛ��Tb/���<�z�Ki�h��n����0��+��SZÕ�T�.�)��JUY�T���C��f�{�L����<v��-��dɏ��-�BC�/9��x��'�B��ۡ���3Ż���Lĝ��EA      �      x��}[s븕�s�+�8��x �<��HmQW�ng��m�-Z7�n����H �3�;�ʤ�2�I���}��y��2�ϗ��_�vy�}x=��4L�?͞��5�lϟ�O��rW����g���ǭ ��������T�T�������N���{έ��/�㿥��3���i:����0���%�:�;a ���z�Z�/��� ���_ �/���_�0L�(������B�
��H�>D����?��!������|���
�,���:���(�瞳�h�G6���'μ�[���Π���+�?�+��+O����+����4���{���gǞ��:?�������t:�{8I����b��6AP}�?r�b�0���[^��i��|���u���K�u�i��o=����t`a	D��0����p:����	,��(}L'�$+��i>��M3���H���(��=��:ߟy�xJ���f7�*���7p���kg�@)%�w��ϫ탶R�:��t��6jhF��F�PD<�U�cY��OkE&A�8�G?�v�O�"~)�mk��]��-���MC5L�?�ܒ~7���>��ݑ����U�PZ/���k8�iN�~4\	 L�Q��O�E:��l�Ip�$��&	�༮��9ߟB���򽛍f騥?��������V����z.�U��8���ج��e��_ф��jg��FY�3k���G��}a�P�j��	)�����k|���d��f�'�,���3��s.�
�����r���vy�0��'�v�x2��:�Xuq�������e�O\%�>��	���@�A*�k �z�k�<��Z�S|m��,Y���O�Q�z¥�LF�ֻ۟ò��_��v ��u�)����`s$(�)߿�o)|���#���1_
�93� �q��ȏ��jo��擬�5&�lT;
�-WR�@�0���K~|����Z���c)�MLZ�7��eM CB��������3W	�9.AO��&ϐ�'M��H�[%"�ka9x�����Tl�'�9� �7p�Y��>Ͽ�G�)����PD�=l��e�_�}�$�g���g�� ڀ����f3�8`��(0߿���@��B0�Z��@��W/��!P�_<���-0ī��b�Z��� �;�vV0|�'XN� *�`.�O.�A���!U�e�+i���&�Q�(	��^�������j�+�ڝ�S.h󽆤o4b	����z~^�?W�Mmp����>w�[O|0�W��D@�[�uY|��N���F;{j��Ìj� )��?�8��.�{�/E�}��x�	:�FJ��ȈG2�al�+�v�ț��$]� �� �p>
�dl	犳8���?/s8��;X�}��&�Xrp��t�T~�>�/����@&B9p ��?�������^ͬ;n#$�>`�;M{Js��m%��4�bN�Q<,_�h��L�Tnp����%�K�󢝭�)�����W�bu�����>u��j0�1-i�v8�  �IVq�
�8�>�I"3�ef�6��.��`�/X(�y��}��O�2��iei{�"���ₓXp�X���ML�D��i���^��0qQĔ�8��)���)/Bϓnw�iV�����<0	��9۲�����'1��Y� �m��R�Esq���P}��$Tu�"P�9�P�������{�aV� j�b5�$f�s%���]Y��xU�,��\
�f�A剪�^�W�|�q9�CD��8�Z�zp+O�Ife���6�Q�0V"����2<<��a4�o���|+()��+�vF�q@�v��|��E��,��i���`ðn	Ѻ���W��>oV	G)B�K�+�:
J���
�v�oP�r�]㻧P̡�Zn�QLj�XI'��TK���x�S�nw'�|��߭U�%X��W	��������a�Z�t<Ա���S��p+2*��.����[�+4��7.��x�#�@�IV����-4�V>B��N���q��?̦�ɳ���iw>�%*A1��b&!��C؂��?Mp4�AL[�R�2|�Br^�#�����aW������&�l�Fr��G�SKHؐ�D#�� �蠵�5o��`kU�����n��^�-B*>V�FK<p:�P�'���tR%���2.L8�\��i�O�l���uW,���$���6����>���>���&0�'3�Z�Nw>���-��JD(��D~|]���y�972s��,-$���X��?!c�,~]�
S�b1����ݜ��&
�	0��u�Q��n�Q	kv�*#������jp?�"���-_��l����A���G8�uG�eN��/D%�S�y�"+8���k�:#ϛ�/��	����q?TD	ؘ��<��x5�w0%���/�����hIJ4�Q�j�3��
�F15���1����7~D���O$�⑅d�KZ��[����~���/�t��5Ά6��E�Φ؂�ϯ�y&Un�>@b�҆�e����q9�Pm|yX�i>����������G��E�����zu,6��)Rt;���c=+�(6W�[`E,�^cd��^�c_X0�꘾ۙ�w�9<��b܈'���Y��_��-Ok^L@�8�J��F`�HXd�+�`Mvg��8��p��}7bd?�p���O�h	r,����|���|�l���?�;��\� o4�����Y�r�0�q�qt.k����f�{i�"&,V�N��',dq�i�At���\��)���>�G%�v��V�c�;w������;x��g���l��ɱ����I��wN�{�y�$M$#L4�����U)E�ɏ6����-H[w/��GQ�����l(:A���Σ����5,2�����R���!���h�����w|�~/���k7��5YE�apȓU�����`[Ş�Nd:4W�;h��ٍ�A,#���,���_^�MQH]1��b�<
X5hg�����>�����E��'N��kY&<��v�c�H!�����Xw��8L��"�[��k�	$?u���d��A���i]O3�1+�tF���2p93%H��P��q�|�є�tP5K�%���d�k��S���?����Ql!+��֔z�` �����Y(SOA���"��U9�Kg��sP{�ÂB���8�y$�ٸ@o>�OJ}�9����!!>�BY6���q��Ǟ�0�/0=�Z�7^L(6g��eH'�;��]q:?� eG'G��gB1 `<ආv�~�:_N���qH5�{�q/�A_e^�2L�_���6uÂP){,�lO�e�S>�^ �\�a�3��$�p[І:�e�y9������s9a�s���y>i��y��%��2��9aV̺Y_ ~;|MogΣ;����+��fL����������Z�9o\�E6��(&�-�ޚ_B��&"X%�a��<�Kb��h(��j���CI��3���9^Ь�i5�8�)�O�ڞ�|SIAB*?�>��,@rΏgc���^�����l����Z:񈱤ޟED�&n����|5g�<[�����
��u�/��!^hZ�L*ptl�NƳY���($,=��B.�96x��;d8���� ���t���c�1
{��y�A�����T�>
��͆O`�:�����Ā������ϸ��� ��i�X?N�!`۱d��NXA����u�l���hP��3��W��!(	�d,#���[��$މU���\rj�D��
�L :���̃BgS���(��P�7P`������iTs��(�CL�о���un��'J��<v�Z�*�B��C�\83%��2�.ﰬ��&�j�g.��518�S~ے�)�]�����x����f�T�gY-bB���5<�C����#!
��_��H���::������[���+���H����t8������g    �yך�g��7e]�� J;�����x�K�g�\���&ȵ�Ϟ��R�<�x8��O��N`(��Eg�o���x<НP�9s�?ۮ�u��������ݮ�@�a��e����3$;���(4�=�d!�l�\^��m�t�c8�M#k�k�>% `��m��,������ۥ�q|��[:h�b�!Dթo���,b�k����
Qɲ/��� ���]&�5��81�C�\��b��z�e��"�1<\$e�X�E�8In��1<9!�vS���x�|J��\���$���Pj|��Dr���_�_M��.�-�:��Ϧ^�A0�
��M�|k_ #[�o"�;�|,%A���A1�ȣ\ڍ$C� 4���e��C_�V�R
%�\�����X{�7����1����L��a�_Qc�����a����awҏ��
��~6�c�͵���!$��X�_1��t�-WW���������x��,���3�8O���`rCEB8�j�O�d�M~�I�{�f<�#v:�j�aF᳁e�ø8�/K���"�I/k��}��i�c� "5;��EZ�(j��ۤ� �0a����@�ڐ]Dʾ�&��(6�fDRf;O�"5cC�(h�X����px�wX�|�K�뤍ǽ��]b<Qr`����e��$�����BV��^�mH�~�r�O�Ě�5H^����#�8���=7��X��@!5h�M,�=�h ����)���MO�.�/�� 8�W�4�a\?��yӃ�̓X��B$�Ո��Ѫa$"<S��+�����[���f�:�t��c6C�B(�h�|W���Ώ�k�����T'�5��B��E�R�_W�c�����!}�H�{�.����!\W�j* �b��h�/|�L-#�����r	�J����p'��W*�po�S�-�t5�Pf��m���I Ƀ���c�1R����.�0��f�p�<b��0�Yk~�1���g_J�|�%�ڝ�0	pHBJ�����n�8a�m�܎:�i�j��%_���k�:Ǣ8�rp��HB=��D�����s9�W_���'�MRCA
� ҏU���x.���CH��t#�Yf�h��#�)8v��I��
?{��1������ȹ1��Š����bs� ���!h*��(�$��@$V�}�ח��:G���'�[�(N��U8R�}�<[8H���B`���asٽ`��K��cG
��eԮ�bH�
Hm�X����| �qW0�2�M��J�(B�:*��T��J��ߩ�x��o�M�!���&ސ�[uo(�ͺ�7�toX�o�&����t�eڅ��v���iM�Z�����.����څ74�"��Ͻ	��c�: zNg��F�la�[N�J)��XƎ����t��������M6H	��]Ld_G2{d��c.�q_����$��z�Fi?Y (u�8����`^���o>�S[ȲQ��4Q- �t�s�x��ӆՓv�
	D��^j�)I�D<�����1���L@z�OH�n�Ƃo��Q�*F:b�_��[��X�R�s��W��!a��ه�p��z}��X���C(\�gSe���ʏ���|�R5Y��,�����3�Pq�0B��@A��┟/{]����l>2p�:���P(�8�CZi�p�$�Å9\����~�Fps2���X$�]_���XP2d<�K�G����?�X�=�����Q��Ha(�0�t�w�G9�ِee$�b>��ݸ<]�u~�c���"}�S�HӴ���F���E"I�/�*���»Q�l����Q�坦������M��A@o��S��|�AO�'�ބ�4�Q�&�%"Qxe��#����c4,o��.��j@�Խ��P�qlC9B�n���.�!� f1|����NՈBRD�o�#ew�K,�Ȑ���t���#�0?>�d�م�uq�w�����U+]!xϋt�B��i�9:�B�BT��@�DI�i�:���͡�n9�U��B1�(5��#i�6L�̊�p��`�ס���ӈ�p�fl��'��&�h<��L:��y&�)\E�/F}��hXz7"��'Z��)�M�F",&�D2�g�r����#��3�rb��E^�6�zBh_O�����{V��U֡�\�b���!��#��D	�ē�3�Y�yUHF�a�˿=�����R!�(r��3�=����܇&}�����`�I�Ѯa*�
%rY����b[������]�@� W�!<e���,�ZH��.����"a`n�<��n�+�Uş���|�\�h*(�c�"G���rt��A�'v�q���֫�8�CB��!M2��z�8� }��C��B�D�!�쒯�=�Y�_F*v��?%Q7�L��f�M`v�T�Q /#��l�����n���I
���@\> 
���4�l�B�T
�bQ�� $��b�ɍn��Z��R,R�v���gP��8��p������:CZ�[y�1���z+��X H�i �/�}"Z6��EHuG�jQJ8�l�餐5�/�y�i�C������t�ɜ�'{���L�[BZ"!mr���9��mYݼ�ߴH�Vy�;�נPbS�EF�������������so߻z q�i�M������B��\��gK�|E��P4
s(����8���{Fق	�b�mV�x��+�-2�i-L[�w��ș1��,��<b@�
¸��Y3y��v�3�I�^�c�����0۫H<�)(�և�x�����pR��"��i�~�8�[��*Y��l�3U����i<*�ۓ]��r�<B"��2��l�`owô���9��2����~�.�o���`�t�|#���F�Y�,�Ԯ0ʙ�HPx&`�����0(<�[����̶sJ��Ȋ���M���e��Ta�{V�l���V8���;�#a���5�"87��p�0�S���` �ms�ӡ���7��D������5)N��
+��6���R|��z��6�|��K�8���k$"����uĚ��l�bS��Ҕ&���2Sp8��d�ۜ)�H���?(Q��FU�rZo�T�������/�Qt�Q{�}�
G�4h��b����B��j_H��c����Q��<�A�e8��0�3ZġӨW�;L�����A����({uΧ�y?��z���o���٪����TQ���po�?^ஞ=
��P�`�7�Gzj����=���/"�9R���u�ڜ�M�����Iw>�Ĭ8� �{@�M�R���*r3p��݋C���1p|�x�@Rfk��p5���{���3@��~���Ip:Z	oh��(g�j$+&)G�te9R�*�m��^'IB&�7{&�t��~�ÓN�F��>6ie�4㌂Bڂ����ȣ�-Ӥ��y��z�T�"y�!��V��:G����aK����S@�l`b�B@	�U�%�Ze`�����sʨ]����c�ڷ�+'a¾(�/�l����͹�tQ�g�l��q����*J ӏb�������h� ۼW"k�Y�|2��/'ůln;�@,��1��-���YpUIcA���
#�;��eBG�f'��:��ɦ�v����
�;��9/�X�O�C�r���=Fy�i�JR����i���=ծ�����Y�3��y/I�^,�@��_�AQ���}
�u(�b�|b�S���Ӷ���2@<K�$ISy]H�5dj?)rke�ڜm�$9�S"�����O)U��5x2:��|���KJ�3HΙ��Ki��/�ƀ$�m�p ��m. ��
8ag�h��^���3=���N�_��3	y�bβ4}q�w��U�r��s���qRSo�S����g^�(�v8zVM�j%mm5I�-I��K���|���'&KGSt5�d'��fS����J�<t,]Ѫ�.?B�����%�9n5�F<=KI���BT��C䥮��k&���q�{[���2�$���T��	�����z5��:H��uą_I��oY��E	����a����$i�!d���V�MdwX�}[V�m8p    �����\���Q���Q&e�w3_�C��Q��
��E&��$�rfƫ�n�e��Qd��Ge�Lk�o	}3L_d���3^X��$yp�B���%�����ɸ��
D\�e����$I�� �	8��\����FNߙa��Ȣ��\��q>סR���}!�9��\�#�a�v���q-���I>I�k���H�(��0����w�y�.$L�N9x*y�ϓ�B~i�����Z��ƃ枳j8K������ M�{phe{���QԠ�U���'B�����YD�
�8��ɏ�JO<�v�����4+�`�V������Y��dє��{��1id�����q�ߠB�Y;v/7�����l涜$I��.0PV��9l׫-�r8��Io���^��3�"Ij-y��~�Ȕk
���_K�g0�_rϵ�Jl�z��X�>�,6X��{J��+�������� ��֢���<�&���~x� �ޒľ&[h�'s����mpe����F<�� J�c��|%(�JL�2#�������Xm�jN�Tj�ڱ��1�W#-����Q(��mr#!��(�l�yu�$I-	�pI�h���ato�A���=j�"���q��u��;����y��j�FJǂ@��!��(��殸�I��c�F��@(�0�'��ȑ1B���RyNF��b�\z�{$I"&�X0
�w����ht��[�#�v���Wl��2QIQ���α#���y��x��+!4&ղ�
�Z����R~��oU��n��Hr�ڀ����*�`g y�\}" -���B��d>�2IR���}����^Zɐj��ޝ�Sd����֞���&p{C����u���_b]��O�^:�W�)228�+n��������:3����Q�$������;�\���ǫ7��?�,�K���$F���DE%S���;\Q�{vW��*�-2[=�����&#;���cDO)�l>Ytښa�#w��-n�$f;v:b%� V8Pw,P(��l�(
�6L5�ÿ�E���t{(������F��)��>W���GYQ�9��hh#*�`h��񽈸��`�c5���G�MR�f�������H�]0WR�<�KIZ��B��s(�lQ���4&ރ��Ga��%UQ��u���s~ƾX@����(���,n3�;ܺ�5[�q,�G������z����J@~d�N�Yx��ܻ?�Ǣ�w��%�ӮB�'����?>�}�i�Ze��E�s�� N�b��v?�.�{��qy��If#dK'� �`N,]q#�=�e#��ꓚi����t(ɷ��$���)� Eԧ�I�`��(4��fqCA ǭN��&.
��#U-Ojh������)����������Z��w����`��#[���D��@zk󣎟9Φp.�В�	:8��y�@�P�H��n_vzL�ܬ�=
���A��8ˏC[�ܣ�t��nͲ���!_ꉩ�*-��1��Ij(�
S���M����9ZZ��'56j<���ګ�mQC����W�ؽ����R�a�"�򽛍�����ѩ�!�8X���Ŕ%|P ��lT#�7,���$��P��lp���P�|Ӆ(8��ٞ�= Oֆ��*Ș2�g��l]�0�S���%�T��i&[���,[���D�������7q�.�8�V��r�Rq�sd/M���|���F��N;}�����#wi�v8��7H8�˙�@0�|V�|b�vw�'�~�Y�P��~tQZ�8�*X(l�d/=��'��g�T�giU����\Ie6aA�}��L��J�MDi7� �n�gگ��$�6�a2j�@J8�}}I��:�M�=f��0
k�����r�'q��!��Z���Y8�7��H,t���)�S���{1 r�c�-A�'W�H��Ö���(��j�b����Ci����۵&�^{��W<�֠P�!�I�r:��,�L{�?xf24��Y����%���(D+��ly�v��>�F�-<��2�����qP���]��^�縇_[u�Eӆ���H���ɯ̬0ꄿ7�'Fi54]U��((�TF*�A�LpkZE��=�EU0�{�70�Aҩ�����;/wD������	ɒv�0T��18����������S�Q�A�c1�U�r6>�c��g�j%M��`��ڴk�oh(�;��q�Tp�o�ܵhɔ����gc�@�<�<���ca���~V�38���
%4��+$��;R���9���@WH(hlt�2��#?���[��K��y3ǡ��Q�-D����,sփ�(H����mohDiIǐF�j�,�qg�m���'G~��b[c��5z�����""����8�6�G�e%If<p�ږ�լ��Ὥ��l�l��o���8l��[���� 0<ݳ�^���2����E�K�
;o�L�����ڜɥ9�N�:s�7C�et��pկ�]a�4,�7��4s�N�PPl)�-Ge��F�ϫ�Κ;*#����֔��L�������
���l�[����%��/�1�1��Fe�Z�r��6.R�	��aP�p����w:@N���#ϫ�����r�B�Ԃ�������]6`̔���[6�-+�x|���|�k�M)E%�;ɞ����	i���%W�f�lrӵ+��ٯ~Zv�*��#l~CD�.�P�O����O�2b̳���WHLj� ��P� t'>pRCCIb#g��
��YDmw�	���LH�:���ca�v<�ac��!���H�o	oY0n{��S������ytr�՛g�$J�x|8�x[k�~Y*=	o�+#_�J�x�L�ĵ%6W��Cl���ξ�~6�9��bV�!u��z����{��_���l�|ƀ��$�.��j�B�}��$u6}�=/02�8=Q��V��^�a��G-��S�dH�FH��c;7�P �ؐ5�S�.����hp�Mڮ��t��㱋߻�����q��7�)�w�:r�F����RPd�qZ#��؞4�ga�p��(#�-g���V��P{,�i-���NXw/�D�"��al��i(:A������f�i4X�+}a�w��_X]�b�}�m�k�U:K�n��s@��;n%b�J��>�S����nW���4��oΤ����{n��$�� �,�.��;�4�8��@;˅�����L}�ߧ��(�!�A἗�[�H0q��
�غY�z�ܑ� ����+�Wa(K����ŀ 	������5�d����@Hz2#&2�P��B	�p<2A�`虄T5{W�Y�tBi���.H7�F���8�[��e�����o(�u�@\e��
�ދ��܋KywCO����
%ZC�={�����B�Y)�7�Z��e��@�-g���P5�$��-\�{��ô�H5M}��bB�!zQu�VZ~����t>~>ݛ����F�"4I���������r:�g�C��鸗� ��2�m���Q[�(��@� T�K���5��)_I���q�u��L�8���hCU�Yzę,Y��=�ը<���G�<���Ѽ��(z����}�A�|;|Mog�Ðl}�y��yV'6l��|qί�����5Yd�qO�9q�%�V)r��)���}���=���ܓ�2J�~V�~0�m;HϏ��ws��Yѳ,M��i��'smO\��	� �H�γ ��aFM�w��3����T�Ѐ�G<b,�7�Q���%�/ _]����SJ��{���Η(E�]��C����PƳY��Èb������.������W�T��(�8~��!F�l�b�ǙJCF�K�y���W�/m[0H�k,�8x�|ܘ��?>��ajƏ�O��t}����9W��i���T�>
��ɆO�]m��nd$��q�Ӝ��}�s8)&w `d�[֏�d6�����-�	��?��f6l%I��Ս�}J�)���{�e ��%����k�$��}-�# t�	�ÃBg�����(�!�P�7P`���
�Ө�j>�Q�����$틹z[�f:Nx"�
�c^�    �;�(Z�z�*�X��n�D��?�h)�&�I'2Ga��nzVWl����'���'��� �b�7D��	��p�X 6�L6��v�<�Ȭ��u�AS
Ql� ���n���=�3f�%Z�i����Ϧ�5��HڑH�L��kV;��{F���h_�e��^����j5����T� �qJ���İ��f�Unf4(����@w�-$N��Ň�u��%y߂�a���A	e��������	`f9?�t$�_n�tv���p P[ƚ.ȼ�6x�}J�(��۶;|�y��9ɷK����ѷt��yĉC�4R�qt����Y�8�`�9��nCT�l�����4�!"i�Iy��*����e������j˄O��qW�FY9�X�B�����ک�w���&<�݇n��F:L1+�I6��!��q�(�%�V�WS���q��������`P��h�B����}��f�l�GN�Dn��jL�qP-���vsͰ� �e+|iV�����W�Ն�T�BI�yÕU6��ѐU�!���웩 C�gGZ}�dk1i��.�c8��I?��ø���� �16g��B�椀�.b� �a�\]Q_�g�F+����BR಍�t��R0��d	�R��G�O�C����x��K��Y�Y�H����	�L�8�/K���SU�H�`�G�g�- ��4\B8��H�֚>�nŗ2mV�.9:X7���?A�"G�s��bsjF$e����RGA���BgM���������\z_wq<����1��GT阿�sܨ黋�F�Jn�{��-w�Ab�p$���}uF>��% ����#I��͒ۃ��}���0�o�Rl�v$���(�;��>��y�,
����$�b�h_1����V}����|���'tp�=Ȯ')<�P�T݆��R��:?r�/�FF��C�e$�C����b�FX
���5�zݚ����a$�Mו��
���&Z�R��%-�e�4�w�W.!)-µ�p���l��D��rO|\��b��K���V��`��g_B�E|D��^��B2��)��&tz�ҀquG�솃`X�V� �{t�4���-��l��Y��7��;KG��1�2�B��|N��sCA
�P�UEΡ\��b�/=\�A�wH�YfjXk���&g��>��
?{��1>�ۼ�ב�eZ���AU��,�9g�����4��s
�\��Q �E'�|}�V��>9�2o=O��hUK��-�Qc�Q>��x�\v/������#Ӛ}%��r���x�0H쪢�,W\�㏊FHc4P�nA��PB4��Q��8���z�5��:��:)8x�6I�P���S5X��-+zBW,��[��Z>e����,��2�"a�M�� �fi�~��>��&��MM�@��8��_�wH6��7�%cLdVْ���Y~+��?�fH�S�BF^K�|�f�B�@E|"�W@ov��5���R,�؇B� q0��۱l���=Ǫ���OD�k�+|��zĢ�)?^s����ͩ��"�g�K�(�Z�RXZ7Q��t��:Nq�ϗ�P}q�4��G�T[U_���������]�=^���p�2\����;^���o�Z=���_
��L��9� ��?�Q�=�TnYp����`A� E�iv*q�ըq��+�6F�s�`��Y�u�i��6�%G�V�ߴ #�9�H$Iؚ�g|Qx�7��lN��Q��x,��q����dt!Ŋ!�n�)��ŃLĽ��4�Qe!�m�\Y��x� ٙ�w,���eѻ�bkߠ�4�e�͵�cNXH�7�����E:�6�)�!4�� '���8�@Zc�K,Z�<=rϺ�V���3�>�d��C�tw���TY+��;����H`0
�C3(X%8���bQ��9�Y6�K@�R��*��${��z{�0�3+���`ܯ��Pиp,���i}\}�(ic�G}<�I�#8���΁�FHb������ 3�|bzՉ ��@��3�#��%���G3�NHS_`�����;��,�C��>�}=�/��w�o���]L����cS� !��!鲋$%�O��F�����:�L�=����rR�8v��g�{8�ox��M�8���R�_˦oH(�\��!-jHJR�\�����2�E�!<e�J,�Z]��.���������y�RV.q�ױ���������"M�)�:���b�G�]�r�:8a ��N;N���v�zU��pC�5<�F���U�C��0"퀂�̎!
_Ha��ݐ�T�V6BAó����edgHÚ��Q��cwC��fZ1�Ndf4�X�|E!��E���/��~�>��r��Y�BaC�E� I��lr�����v�������
��zAi�Oo?��N9�ő7��HI�O�A�O�C�D��(KJ�Tw@��EI��N
�E�d��5B���j�_����GO�����t�%$]p	i�+uu��l�����E
W��3�ֳޠs�(V6��Z�1x]_�����ʴ�qmzM7�SX,
}+nQ��8�X��$�h�PP�ȭp
��`�X쬚 צ3�� ����rג{W9��s��+��#�^Ew1<k�S�ܮ��r
}YW�Z�E:��*O�l`6^b�ں�h_b�;��a(
ϵ8�[��A)�<�l�Mަ>'�V�á���:u=,W�#$��׸�A�)�򣗵���9��2���6g�,�0�^�Lg�(����.��ς8�B9##	r��˛�i�|���Y7#b䌺���O"fEB�릌���2xZv�0�]�E���}4N�ԘE�|�����W'������p
�$r�mNqX�3���y���3����vM���4��J&��oz�Dqp|�c�}�?z7�p
�b�8ƵΖ�E'��?t�5���L�JS��S(5����p�>?�9S��8!rP���Tu���I��������.��Du�l�c���<ڦ���n�"��z�/�g�����(g�=�A�e�&�0�3ZġӨW�;L���^pu�AS5���({�ħa}=��z���o��h��V���U8�do�3��@ښ>��I���la#��T��/�Z��o����o���TM9���{�'d3]��f)_i=�ŵJۦE�B�Ӥ;�Z�#��X�=a�=�Zs�엉5p�͠781	ϗBW�>���==���Ho���*�2彁�D�7����Y��˛���"� 엹�k$�뭷�IG�N����?қNp�w�5�\I	�qFA	!mM���rZ�U��h�J�<�Y�z�TR�e�Cۭ��u���|��-�F�E	���-%XV!���ki�A������sʨ]�Bb
��aj�
Z���	c�_��U��oέ��r�Qe�����L%%DVQ�~�,/\���W4d�m�+����ڻ�o (~%a�
4Ĳ�)S�^�Ϙe,Ց4F$���T	�	&.�8�4;�j��d'�&w�e%%lV��e<p�;�T[�=00D!���4a��N�T�"� �.NC��H������tf��d<��$i�!.�a�`���'����~l�{��͎)Uc˄i[��w� �|I�X�9N���2���5�2^m�6I�Z1���j���z��SJ�$7����+_�d����L�s&��R��˶1 	�{2Hf���ʱ'��-�����>W��9-w�7XIZz�$䕊9�}����qt�W���(ϝg��IEL�eI9��֟y9������?i�����V$�Ɯ(),,;��s���5�OL����j~����~I����I�e��KW��ˏ�B�?<>o�}������g)i�Y��v����|��F{I�ݛ���ns�@���R	ܴms ~-~��^Y�J�[�������#K��-�W�(aݙ9�v����TBg�m����r����I4�?���/'GB���(L�t�f���$Q����X���{��B���� �W�y��� �e�e�Lk�o�t3L_d��¹/�]N[�<�P�f{	<��p<x2nc�~�i�l*I� j  i�Av��iΥ�+*�7r����D��D{��8��P)��:��_x����+9�;Rw��;�'I�����s��}ט��B¤딃��a�<I7����;}�?����x�\FSg��0��]�T����x��E��Y58^"ęJHڜ��(2�s������ǃn�v~�M��im"�Bs�KmN������|�0\���I��G-� �sw�ET�ڱ{�I8�L/�e3��$I�mT��fhA8l׫���r8��Io���^��3�"I�m���m�b�\5�l����.&��/E��U�𷱅G�3��?�V���B6�
p��h=�&GYR�ۺ�@�c˖j�7�m��k��&�x2GʪD��Wf3�7G0�A�Q*b��+A�H�!��0��r~�#�c�͛">8�R��i�f�]�FZ��kN�P'90�FQ��Q�� �ʒH}	�pI�h��Qto�A���U3��[���/ւ�F���x��+�Jq%��� P,)tEQb]�]qH�fOŐ)�N��P��(/���Q5@���RyNF��b�\z$���@,�����mu4B�-�ݑQ���1z�ƭ�[�
;v�%d�h����d������- $*J�F�;��)߿U�ۻm���k�I�][U��@�~��D@8���n�P��|�%�Dk��}����|Jɐj�u���)2A�bg�F<I!��t�7��P�_Wo���U��4�#���kǩ\�p�}0 �L����ՙ��Ga�$F{�g�#�H���7�������X/ͦ?��ʮ������;\Q�{��#d��<+�%�Ξ$1�4�Y��#zJa`�f�ɢ��K���MM�^����鈕���X�@ݱ@ݴF�=��Fh�0Ռ"�_�^�V��k(��4Ks��o���^D�S�7�m�7�ǣ�")�rM��m3��G�pT$�n�)�7z�$�T!�%��Mm(=c�r�qʆe૛Qx�zkF~1�u1�
ł�q �O��a
�E���jv?Y�׷f�&!���֚�X��'Q��5�F�Ae3�
��{��QT��$1�U� �c6�a����g��/6��f������=��9	��ؙ8N���W5+�i�����- y&��|�o�\���t�F�Mܗ�`ZM9R�HB[a�·���P�K��|����1T�������; ��S[��P>�I�B��|3�XV��,�C܁����mt�[ӥ�?:Fc1��ph��BU�c��r���M���qc��TBI�ky�9���74�q	z��X8���3��2|E�R��>W�%��GY���/��w�e��/���c�t��������/�?`�����ß����UM!�      �   �	  x����n�WF��S� �W�c)D��b���� �;rL$�>@<qG�ε믺C��Wg�˷GW����������b����d�����0W�:���svt�����d����x<}܆�x�����?����?l��P�״�_���������&���j�qt|z��?L�w�o�zwuz9�]�:_��^��^������竴�
�R�OUz���J���J_���X�OT:��]�Չj��V'��NT[���:Qm���ڠ����݋�����������k܍��+��������V�������F>4�ȇ����^��S�������3�KD��O����y����>��1�����E�����Ρ�ޜP�_�V,�d��������p.o5sw���U���[}M]��T�����k�n�5u����[}Mݭ���V_S�~K�߂���{�?Qn�%t��G�sWu5�y�T�QS�GMu5�y�T�QS�G��<TkTkTkTkTkTkTk�w��tz�t5lBo݁��*�q�j���読қv���Joفn�(dw�\vW�ew�\vW�ew�\vW�ew�B7,d�Z�ᆥl_Kپ��}-e�Z����}D��TJܻ��>R9b^rļ�yQ]���O�����:1i�d^ jh^ �h^ �h^ *Q\��9��5%/ ρ� <���ѬǼ�|ȩ5%�֔�ZSVj�Mĉ�;��Ggqm��ϼ�|Y�̋�����<Y|Y��.������}���y��E����M�f�����7-�%��-��
�lKlC�Iy��h�@^�����v@�q��؆F#�1P��!Ӽ���}b��^�6d��� yېi0(/`�Uz��mh4 ��"B�y��ȯp-���^�x(������y�T�+Xܬ�/eV����}u����/˟�%u�e�������/����*|X����'cW���+�	��J|Q����a��>�Ig>�w�e�3/{�e�gF��7��?�Om��'����n5�@�k�C6��� 7����1�=cB��м��rB�BNhfێ�i׾�Ŷ�o@�J�z�P�r�������4����p��|�F>�?#O�CE�l���R���K&#_�_Z0���҂�ȗ�LF�l��`2�e�]��K�/�/�/}�D�l������������K���K�#_�_ZP���҂��w��Q�^�NB�s���ݡQ�a任C�ռ������F��&���P�:	���P�:	���P�:	���P�:	���J�:����J�:����@W�Im[�~�dJ��V�t�R���:��;A�w�R���	J��z��z��:a��S��S��S��S��S��S�Ԗ륶\/��z�-�Km�^j��R[�-�t՚Ԇ�6t/��{��Km�^��;��[=ʓ�J�|V�䳒'��l�|���=N�j~��Cٽ��/����w�{Z_�?��u���\���E�`'uЊ���q�u�S4��j �xˊÞ����I<���ew�H���f���}�h �'�^ԡ��{Qk-�z��B��3)�ӡ8�[Nk���&9�.+�0�PVb���
�"]U悉tYq��Cq� ����#]UV��Ⱊ��aE�*�
�D:t*�O���;>-�WO�a�ꑮ�PX�z���� dŁ���x�T�H7�#�t�fL�CK��PO�f��(A����F]V�ƌ�C=���C���*m��8���N�,:6)�ͨl��]��d��C'2񨟖Nc
t3��gő'I�:�ϒ�:�r�It�|xI|�|Y>4����4���|h�#��T؄��/˟�	"_�?u�G�������A�X����^�h�0]��؅�8t�B��8t�B���CC�iǡ�����=:��{t�e����a���,�XN3fō�Ƴ6o?t��F:������ ��8�#OVؔ'�GU:	!�Ušc���`VT��,Z��U�!`���ǧ�8��X��:�v�e�MǊ|Y�4e*�e�Ӝ���]�:���a��̗G{��7|Y�:\�ˤ�/�G����Cmo���o������`wk��`�R'oN�Voζ��_�^��~=��h��g/��v�����~ƾ%�h�|Zӧ5<����/��_l}C�l���@��Ku�!���:iJxR���fn�C����8t�jP��0+�v��F�����a�SgKRꂍ������{���C`�H�w�}G�,��E��i���\V�9GM.5y�h�p���C����м�8jjr��ɥ�&�ڵ�hbcR�wGM�*5���ԫR�6��L�C�⨩W�wc����vm�]T������Ɠ�>߭�M�3_���M�;��K�&�\oQr�E�^[�/�_��(����z����J�瀭�;��|�0N���
N���
N���
��7�V{b����u:j�SL�=�}xn��T�lky�d{{�_G'Ӊ      �      x������ � �      �      x�͎͝4M�����ʈ���-h�l�Φ5�i`��S�{T��=�d}#H�y�k�2=<���رc�O����������g���s������?K�۴�����p�ݾr�Z����_�����������tk��Ͽ��?��yo?�����2�|�s�`��?�]�ɾ��X�,�������#�˱�ǿ��_����������?Ӱ���e,ǲ����?r9?ry�<�<��??�����~V��d?�d�����-�9�U���޳��~�e�e�K����\e~,j�ϱ�����|=z_��?m�|���ߎ��~���g��-,����~՟c?�c�G`�_�,�ujڲ׾��\�ڿt=�t�e�}��C2�;�?r[/����qۗ�,/k������י���.{�_r,�����m�sٷn{�|i����y���3���~��Q_�M����{X��Z6�����v���[_�v,;������,�����||�W{���X_�ڻ��S��X����y��^�bI�[?i�nߪ+��K�[?����9^����t�m��?+nG�ϲ�%�^һ���ϗ�F�e���ɷ#=��i�o�8${u.�Fa�p`�^��v>�ɴ|��˾�9v{)�K�ܵ�`�/O�`6����+��%��������<���ss���"�;������mg{����s�*`��w|���u�����g���^�sg\��>n����d��e�st��FzΧ���a;������o�-���Hd4~F���/�e���}+=X�ʸ��?y7_��^��_�z�����~�S_�q��չ�@h�3�/�$�oC�~�s��ٞ��O��ϑ-��ݒ ҍϹ��~�G�޼��wb�_.{�߱>�W	�	lQZ�D�SO�/y/�S6�8xA�kN՗�-���/�������ܺl��ǵOl�|y�s/�!�Aev��n�{?���W��Y�����v7i٫d�ˣ/����jQt�9���-�&��M`�~�s��$W�mXvx��O�,��jg{��h0����3a${�t�C��]�P���e�r�����G^�ɥ7�>%e<�1Z,��BL�To1"#�|�rL�K��2� �ђ4�����o ҄�n�a���ٞ��%iV�	U�陨��ϑ�4&L�#-�o���^�# ��!:<T����7Tj���9���� F8�n� ��m<V|�U,�<w�w��g��y�%D�+�$�$��Ԡ�f�˦S�`x�����^2m��޹O�<3��~B~y/�#��&T��q��]b���5�;룊�^��j���y�g#��S+��'K�?��'�P~c�Ϩ�	i',)k�߉6�;���jBv�|'��L�d��f�FK���'��F.��"yII�'�t���n�0&�q[�Ob�2�L9����\�@����d�H����6�����_N����(<,I����s_l���Prj�$�d�$�m"$��<Q��RM�ty^ɶ~^8�0/�k��:�J�/���҄ӹ�P*{fy�^pH�$+}����p%[v��)/\6>��������B��K����K�F��� %1�K���>Lt�6��^a����F
Q)���Fw��Pso` �YD�a��&�	VbH��4aI˅����0A��E� ��m�G�A,�T�T1	��9�x;}��;�_��M�R�p�
����m9�kX�s�+�KÃeSO"�; ����+٫�g�����+��n�މ��"b|�f�"����7�
�΁�
�>�v�a�'�|(��f3�2�u��w�:��Ȓ�4r;�	S�]���ia�ay������C��)E�7�x�'=��k�I�r�8�9&!�����uK"Y�y�N8��Tn]6p���l3U �M��߇R����W7WKgpH��|�4��5�$�X�SA��\�=}������8u|���ac���y�hΚ_o�&��x[rɆo�g�=W_��
����������.)g����m�mbψ2Ր�n��v��i�B��Z.yō���3:wX�|�R��,ݟMR�u�גt�<�2�3��;a���`��g[yg��n"���ɒá��K���(@bA����yj0�b�۷�m��-��X^p_����q�ÊoԜ�=F���a��U^;֋*p\�T�n��X�磲�KsL��,;����/P鋏�!)��6*L�w��og/��rL�A��2r,{��̓6��눼.�$K�[����X�C��"�}�?1��;JTIʶ�:�DK��f"�����%G�x�� 9c�� ��/o`��3�
ߨ�SO���4w�U�A� 8}����rk��o��,9=���ҐkHO+e��73���ݾ��%C���p�q�X��[K�}�d�%�#���ׁ�#ZZ�x]�n�Pj.�"�@1FQit��oG�"���ʩ��n�@9p[����If˿w7S�������k�p��d�),;NL$���N%��:T|a���c�����~β��6�%�|�8߰JƵ*��,�ł���V�=\'<���'�I�u����c�3�{e�`ؐ�:+����$��E���_����H��؄��xԬ�ؾ� v��	*�Nl�n#�ѩd����_�ж�m����p�9��o���8�F\��&MX�g\�M�S󴎐[��!�+�eK�����]B�VGx�=+�N�+��ݑ�r�.�x%�䛖�I�9@0r��A �{"L�wXh��Lm��j0b,�7dk �+	@9�@�)��Y�+���7��p�t�����n��N>g�k$dJX�S �9e�rZI
H;H{�S��'S�!Tk��ֲm�F5%Q%x�t���%0�ʞF%���f��f,��
�~�?�����ă΅yͿ�x��K�P>�\���|����N@hݓ����2+�W�Z�X*��[���6�fƙU�W"[��]gk5�!}�5�7��-�{uLd��T��<�?������*�iײ���z�g��8�_�?�{ef{�-l�j�	���+
��W�L�9�|�n�Y6�8��/2|�n�����HIdjl�^���Wv�?�ʸ�1g��Kv���р�x��Wֶ��j�0��Gw� d25���0�c��m��M��}V)�J2��BA%�$�D��Wcs?�\S���PǄ5�h7�1�n}7#ȣ�|d�!.�ne�H�X���k���Rf��)�*��JX�J��s�:M#��	�j�����ˆ-�ۿ۲�}]C���<|�Ǖ�
jז�C���:��<�hGu(�{��t�Z�Y/��������� �Q"3$��)��Ԋ�[ 꾑�Jx�0�Z4�|��]"5�V\=k
-�ub(��0�Hy}�S�%p�tv{/�3��X���צ傂���r%��ک�z�6׸pŲ���f�q`j
j� ��,h�4~��>�)�ljz2�CvC�T�q��v�}!�^f��>��������>`i��iVb�������ɲ^Fim���Gb�H���[-�լ�T/�p�� �A�?Mǅc��z%�\S������3A��?��Q�Ȋ��VTݣ�j
Zh'�[�p��'*5���>�6+8�>p��Y�z�L԰���ɚ˃�
be�~������d�?pO�q��F�qý'�)�­�g���,��/0��W�l��dU��/�5�Gu2����Bd����Bt:yF躹g}�Q�8w�R�O�����j�^�K�E$<kBFPpJJ����C��QIK�e'�	2@r�4�F��|n�TT�7䊫ϥ�_��NK	l��א������(6^k/_4k%�G� ���ެ�����xA��ef�o���R������Δ���c,����!*�G�9�����'Ɉ�>�ܯ�q��H�Lx �]S�/�F�NX��*�'M�;Y"H`�uu������6#�MΕ���*���x�.�dR�������k�9�M!�k#�QeR�U�����$@��q)�B�?� ��iCr���5�ԝ!��a' 9 �H�M��*U����%�4��\QE�H��i�i~��^�    �������s��שlg� .����12	��NU�7�}�mهj�pHxP�~*�ZĤ2`�^�O�Zǁ��9ΣCK�������Mޙ���������t���,��Da/�;1/@���y����T�q)<�a(A��m���� �8�[pW�9�#7�RH�ea��s�����k(���|�K�D^��vFog����q��tF��m\J���U�K��G��x+���#JL�0�,��A-p-G�y��]D��\Yxo�?/�TY�k��@�z^F1)��3��)}�2�+��j�(����/l;>p�:�NW�6F���wbV�VO9�?��<bg��a����+��������:E
���Y��6��tq���!͌Xg �����la4D���~��9�J �OH��-���j�iۤ���,> �H;nG��~�neS1=E$r=0��IƂ؎֖�P���)ˌ5�"��t��o��p=t� P�vD[ ����'��'�*~@7�\�"#J@+L|ҡ3�n�;2�׬�_�� nk|4=*��bs��r��V���į��Щ����Q��d�>���aY$>��A{�sۢs�j�	V��FI$��Ӣ�3u�)x,�)�ЅɉDd�X�{(��荮�e0����)�f;~`W<�J%L�����x|?:��/�̗1TH ���\|Ѧ�� �v��w�!�r�@Z��t�,�l&�4�$��)�W1*[���>�K��G�~���ND.��E"���l��r�p8*^ !!:�E��d��a��n���]�;�#���;�r�-�|��O;8�|E2���D�=Zz��;q)@po�3���W�6���+0VJ�.��L�̀�F�l�(���kˤ�s��;�j��1�k�+��Ę)��tzι:}Tx���\�E: ���|�̷c0ʐ1uCR��X/82�Dp��Q�^M�%��ۨ �g_�k�1��m�aƄb����ex��Ap=q�s�1�-�ͪ�c�U����03B!��m���Am��c�.q��ޯ�?o�Uc��!:$� ����'��)�F8;������ ��߫�N|7��V".�@���ηȝ�ˈI�=󝨦,3�4�����5$�-Vt��xV����(�lsc.!Yv`ߧ�lωd$��#8w��y9�*br ��� �U߫��t��8��.Fi 8�fY�/����=;׺d�H}��]�î"��b��x9{)�0�9&`����l��怦��<JA�"uS�%R���v��*s�{���}0|DWA��66M�sا��~)yK�R�S��ʉ����ƍ%n> w�A%�2u�F�q!��SP���*��R�4� xe҆h�6r�U�|��Y��%(Bd�Y�� z6��Ql���n�I��M8��|�匲 Zme.�x�[����R�<߿�Z��(,��9� pu9M?U�WK���҆v��Uy3�
$:\Z��v�/Nf+�Lj|kd-=��9*�5��7����(Q���$���v���%q$�0TY�U�dW@{3/�0_��� G�ڄ�<�3U�n�$��-4���ך?߁&��"�"7=�[��C�}�)s4���(�5=*{��a�>A�͸���4[mRS��DbiY�.S��iu$�Q�,�ⷘjY��,w�M�~ZM��!!`�@���e
�x��}�"�z@���n��r�5hJн LԂ����b3p�Ǘ)pk��ZB�а��#��#�ŪLA����)�2�.[�X����V�*=Y>�;��q���A�H~�tv�������$�@f=WY)c���!��e:f/9Y<�
��>#��6�g)�.��a��(��E��� �#�q���,����G��I=m�]!�.��{�|J�-�}�����2�B�i��{@h�ì�V��w�.�VX앩�4�.sp@[99�E60��	�QS�l;��=EҴI��UD�0ۈU��e�In���O�B	���*}٣��o��/��Y�kP6T�����ߢ��v�^E"��K,1=^�t{X�r��½`��a��OH"q?�c��UG��4p*��LkWT�Zv���hU֒�ءK�8E:OF��r�+�2~�[��')Q��m����H'p��Of�J �
Ο�F�j�����i�F��*��(�乸�&y�ľ|���o����m܅e@}��9#��	d��@���0��ZX{?�9�fk׀����'GQ�I2f�N�ܟ�ja"��UqƑj���ƫe���Hֆ�F^�j��]O��43�U��#L9n�'ߪf/N'�F�k;�8���e�����4�
[���	���eު�G��
TBQ{���]��GT�}V��xQLU���-q �s._3�l
�2� `����D�qy��C�Ls��m��X�"�-��a��{���U̘��֑hAc@i�D�]2=�������ʲ�����K�l�d���)� P.����H�S��j��Lu.(L�7�� �<g���`���f�[Ol&����'S�h���5��+P�?�R��{��h�(cx=X�����"�,/a:��J���u�5�YQ9�I�qKH�Y]�'J@���$.�'���ß��#E�$QjFh�c?&f(��=��J)-O�CE��<2J�cK��u�K��-|���k=im���� ����{�*2�eY���ѡ6��czP��+�X�A@{@��I�Qu[�u9C-�?����{$��H�SiA�XJ3��<�e�|�O�ac�v��c$�@���v|/��YBE�bz��af�m����e�8#���bC�M�t�.� �?�a���LM�7c�/O��x�;*AP�Oz`	&������/kh����RC�P�~�Ɗj��Ƿ��%�6n����QΥ�iY�f-���H��шWH3����{^�gnU�J�Q�I�
�y��x��^}��2A������؞4E.g+F�A�_��	���4w�gJ�%uk��㽝F&����Pt`�=W�ʳ/����UY��|3z�Ꝑ�
���]髜o���L��\��.:�-�.��@88 :9�k$��"�q%Sr.<8�m�(4!�,j�:> ���|.�\�VL�Ц�����}�~������Y
�s���#�Q�(=���S�_�9�h�9D��F.g���n۫�I��v|҉C��+�\��Ȁ����#�,�)�9���U<~.��]�,�H�q��dP��\�3TT����^#�t�Qa�����3~�{�%qF���Lp�RLj5�3�=?�Z>L�7�P���9�߻?
���O��ˍ#��1�Uw��cz�p9i�TϝX�6�T}�0�����K��6�M\&b�9�k���˅[yU���8 -i�_�����qƟ�7�`�,"v�=*)Ҹ=υ߻[���cU�ʫ1>��㭹c	�e�3:�J �s����_�Q8���[�1�q� �)�1w^َ��s+��R��F�ى$I5���xT�¤z�� �����3|�\�>Z��#�r�ˡ�I��[΅��W[9��D0���\�袮*�?o�[�|�$HM�㦄�tB팷��<��,��/���Z�7�z$^ūr�w� �X���Y�K���1kv8�޳��	� �E�t�]x.�0�c?'h48�^�TU�4X��xs@��H�1�(��#}���G�}Գ���KaAh2騄��Q�G��+�0�@T#�����)Oҳ���`U\��gP�K�Q��VYX���p���'rI���v.|�+j@>���	L?��Bp��\�؝��ײٚ��4��Y_E�J둈�dO�.���e�|�"���P���#q�ռC'L��FU혦�3nG%�H��Bf7ʚ03HB����p�Z�9[�īe�Y�q�5������֣�u�>*!8{B�N^a��Z�;���R6���J����"ĹU@��s4���w8t�t���˯��?�r��{z$D�BU���c]N@�YGW`I���'Ą'g����,�Qz��IŬz4$s�Ў��kH$��$X3Ȁt���+v�    �J9~��#aR��nD>o���J��\x+�O�	#\p[��~.(��n�9\��Ѓg�$=�E��CT�p'o��[w��LQ_�(��0��C���9ܿ�P�1�5QM&���A@�����qmn�KtR���*���\�,�Z�p �x�^ЫK1KE�v�]�3˿Pm�[��Rv��_΀�5��Si"P��6|�,}��,�D�8c�.~�R9n<L�4�+>�Y�5��r�:����ۇ�����5�J�~Zםױ:>��M�V��=g"QBp�DH�U`��.����_�*Er��*q��X�;H�
���֮�-�,�� sd~H��J�U#��0��w��ã/Z�nT� �t_u^�,|;����4� �>���@^�Ӝ��v��s����MwE��^����א��[�".�¼zI������̽+"������ �lMBy������k�����a2=�a�3�څ�쓘����q��tT$V麩��@uQ��E����uΩ�* ���3��4^X-2�k�,��w��լzJt�C��!��7�@'鱝+>���=v>��$���wH�@pW&b��� ��w��k+��[娴@�%ԸT�ELE!D]����aJ$$�v�ߪ���d/�ˇ�P�J��\x�Ї.bs�9qT��Q,Lj�Z������ގXAb*���S�?�o��}"���D��2g�	��e��=d@-Vd{��R������B�ix����3�����G.�6��X��<f���I�J�ћ����X�8>��7
�x�N��9�;~���Q�E�'B=�1��2�&�����3jz>��ɂ���F*�~D��Q���\�������.�TĢM0���u-8�&h���T
uV�}n�lU����w�z���XE�y�\�U��UX���`4O����q���FV���P?K������Ka�'ˠz��)/|b��2��F��ʅk�
��$�
}DT?���9�n�̥����G�p��D���I"1�Q�'c�y�ro�|�UW�A�'X�'�Q��v�\ϣ2�{<M�� ��QIv�}�9ua���u����bGf�U?��~���p�\��E��^�T~;�/Z�t;[�'d&�}8�jN�;�c��O�P�7�4gV`">4���'�t�a�L�F�n*/6�U�s�k�Ӄ@$ �� ��>�<5}�-�c�1Z�Ms�O�����{?��
�'��`~��u��`)��V5 �����o�*'��ή�K�-	�f�=~��S�ArN^=���eu!�������3(��!|N$���ҽ��MS L�䓡���".� ‷H�lǟ_CE�q��տ��vWO��ǯD즮�rf��rs�v���!��a��K�r9��ʩ0��՗2F�S�y2�?�����k��:�l7T�cz�F��)˗���U^$�gy`a�	EG:�No���s�-u;E3��DM�_ /�w��ߞ�oǐ�yLEN5�X���L�;��v��a�2�	&� �n�4�AF[��BJ���
�dJ����Q6�'����`ɈL��?ª��Pk���(�8�A��؟��x��IМ�%'���afI���JH$��B<�z[i��+�r���U�ߪ �ɊW�!��d�t���<�\�m����vx΢�J�K$�Lɹ��t� B9�,��I8]P�)�B"ᲖL�T�G�05������@<h%�#��V ���tv���B��hR3��@
k�rv��S�Vm��,缈d�H�LM��l݊W��W25�'1 ���8$v|��8D� Y�A�!���u��?�u� �E6]���ɿJeyz<�3��$L��!%`����a�M����S��3
�dp `2���[��3H�˩�\��H �(�Ď7��=�:3�B��}��������>�8	��>p��f��!=�S�վ�����#ߐ�� �W�4W1�"�6-G�� ��'�\>�L��G��UY�N�R��!��
;���[�g!O����FT��z�h�6>��"�aū��	�S�͔R�F���r�V���:'���8��R���駝c8*<�����}�J�J�*a�[��Gh����~�HU���ԭۑ��ra�U��ǣ�E�w��ڮ�1�;����`$<2���b���xsx	�+H]���Ւڇ�5�k-8��h���� ��q�♺�?��{iD|	~C�|XY�Ԣ������ #f�h5PV!o�`]Vu[�NV��	����P�C~�(%�����Vʔ|�,lj�Hx�0��s�p��V�O|�txL�QB4������ ��N�����| ���=9 	kאsn�p:Y�Zj�9DE¤x�r�� k9��qJ>A�� #YxW�8/�TY/�o���{Bk�oa ]���!�8�Z?��K2޶�s�bc����ͶNM�ĬJ�g�� �24Qm=��]�22;��^��Lݜ���r"!k�D��½�~��`�:J�i�%�c�3=��������Yg1�MH��-v��ՎӶI�U��*ࠧ��r�UC��'��� � A_�ԭ��犝,���R� T�8���NHD���\~�_ܳ\0N���#�t��D|��ٲ̳�!�Н~��T���@�\N�!0����`��'���5>���׀���q�e���Eڝ����4�S��?��ADۧS_x�d`���{�ڢsvs�.�j�%��F����[]�'ܣ��CF� ��Fm�C�xˀ�B�`F'Xq�\Y�?���p����e�Y����x|?DԎ/g����
�E\�\.�hk5h��;\˻�|S.\4Rӟ���̈́���B	��S��Lt��Ԥ'.�yH�R<�ë��w
}�]����{?��Q�@H�2�(������O���g�{S�GN�w�?�A��s>C����I �*�B�=�xK���U粖�'�
T��	k�n�*���Si3`�Q	�%
m�J�I/�޿w8�^o�@��w��D3����9���qn�jy| D��$]����|;0S7$����euF���27}�WPI�C�A^6`���'r��ηy4�]h �4�a� �����髜�{ͪ�c�U)�u03�� ��|;*CI��h����{G�*����9��!:$� ��� �(��1�U殯r�{u߉�㦡���O��"�"])�-2��2b�]�Nt�+3��$z���!Yn���|�Ӱ
��م�!47a�%$�������9E�HZ�)Π]��Ɂ@�?�VP|�O��1�b�p�ˇQF� N�Y�Eun�0'� �n�"xac��xH;.�p�����RPS.s�#=�����t�����p�H�T�"ȍ�!Qp��	Üam�D�.�*�q�����o1;��UN`���Q']�Tų�r"mD'kn�*I6�;ܠ�}���B&�� *݂,gi:ߔ ������U^u�G�U��g��N$d���l�-	��>E��ғl��H���щ?vj�����Zlɤ�����髜���QX|�s �dFl"ū��H�̪�/��ݪ|0�1.-�;�m��&�`��փI�oM���g�?G���z����W%Jr�����	��$�$��d�V�z I_�=̼����΂	j
��KҖZ��,/��?ޛ;�m-c
7zE,EnzƷ������צ��U��V�������{���|N��@`�#ͦ����>�XZ�F��T�|�G�*�У�Y�g�o1Բ�3Y�_������CB�"�$�����m+�Q��B= ���v	�vi9�	�=�X�`��=��`_��_������@K��*L�ǯ���)L`�igJ�q��!��Ҙ��@�JO���c8C�۸ps�� S����Q	����g�����RL�2�+�e:�����,�q�Ey��ˁ}�h��X�pf��0���l �ϸ BKK�_���#�6�6ڮ�N���=Y>5����Q�^ʑP!�4g�= ��a�k�s�;p�%.,��T	�E�ۗ98 �  ���l�"��h�獨)Y�_���*ڤG�*�X�m�*B�2s8G5�[��	> Z���tb�h����|�����U�(S���p~��W��7��8N����X�(�=��{qMnu�Ŏ'xB��A;.�:*���S��R��0�ղ3~�G����`�]T�)�y\��{_�(�{P�:�>I�2>n;���,�S|2�V�U~;g��������i�F��*��(��������ľ|���o��U�Hؙ�~ˀ���k�r9���|T��,ea�q��G;��l�ZGtQ��,Z�ş$c&�4��9:�&r?��W�q��x��jY��8��!�՜�Y]��f&5��)��|�j��tq�*``$e2��Coojt��8K��'�AO����k�ĭ�z�a�t=k��_�K����s��w�^��G�S�E�{�cw�9��E6g�{ 0G{{tQ"��<��!Y�9��6�E,\��i�0̑�=�`�*fL�N�H��1��D�ɿ�;��LO'�|�']��,K��ɿ���˶HfjZ�� ������9�a���T���{#K
�l��s�~N�0�˩��$�f��X�>��t@{e�؀��_�B�ɕZ<�[OOE�G����</�2��A�%˝�����kƳ�r��㖐,	��e�*k	}�����$�0sد��U̫B��	$'��� �D�/+��i��"AP%�t
�lc�@��o߿��ZKգ�4��_�:ę�Ѫ���2o�Cm$pe	���r'�W�U��k@��I�Qu[�u9C-�?����{$��H�SiA�XJ3��<�e�|��̳1H���1�����4�ا�*@�ӣ�.Û�x�A�g�%�f]	����h���vip��v�LMt�ު
0;�ŎJN X�	�V��_8K|YC[�N��b���s�F�P�H�=��G�/Q�q��Du��r.L��6k��@&��F�B�Y��7�s�u����3f�`ҩ�i��&;� �W_���D���$�p8�'�V�[1bj�>�ĵ��i��ϔ,K��|�i�{;�*L:�ѡ��`{.b�y��Ǳ/�%�V��fD[�c� �O����2.=���@Щs]�H� �"������~�Q�z�d<� ����NB�m������O��DU�ԡi�.z%ƥ/��F���X�^��-?ke����},�Y�¿0�7�: 6�߸ $�K߾F��Y�[S�H��Djm���?�ۿ��o�(p:j      �   �  x���;��F��_���ƭ�~Lh��E��	����ݳ������	�3��uuݪ��|�����˿��/�ǯ�/9r�2����w/�<���������?]����o�~�����C.�9_�庌i�����s�{@��r�r���Z�b���?}�ϗx�������|��$�z���y|�{|�o����?����ϱ�|��T�|�3�yL]s�Ʋݽ��{��G��~G�":��ŵbZ�����o�ױL۶~OD���S_�;�^��~4C�1�����C_@'�W+�^�Ug�����*<<����s����'{N��='\��D^�Z�'\��D�k�%b]�Xw"��hO�[�\~�~{>z�Eg0����۸=�9���g�z)���7��.��@�ꂡ�Ǫ`�
���C],�}�
Ī�* ��	�&|�
Ī��.���K����ҫ.����K�.���K����ҫ.����K�.���K��DZ���͊���76+��olVllV��Y��Y}F���|F�!#�|F�p��n�Hm~#����Vf�^d�۠�ͫn��6���ۼ�V]�t>�ΧO��|��*�Y�/%��g�W\"1K��%��Y"1K��%��Y"1K��%��Y"1K�Y%2���U"�J�Y%2���U"�J�Y%2���U"�J�Y%2��[�������-����7�5_�x����H[>�"���i��}�}�g_�g_����~v.N�'\��i�t�8���+\q寸�W^uՕW]Au�UWP]yաjT�UWP]y�TW^uխ^u+T�zխP��U�Bu�W�
ս��o�	�\2�_2���y��~'��n��n ���6�}��BZ8|Z8����ç�i��i�@Z8|Z8������
n��
n��
n��
n�K^��W��W��U��U+߼�I��U��U(y�/yJ^�K^��W��W��U��U���kK��uo���������E���/\#�_�F�?�p� ��&�{q�m��M@6�����E#����w�F�{�%T' ��Xwq�k�_�ĺ��R#���'�}�7c�f�p3n��bF��}��.f��3�}��>c�g��32jߋI�'��E�>!����4�g�32j!�F���zFF-T�p�Q������(���gG�h����L_5���/T����b��_2�_5�_5�_5�_5��_��_���E�C�eN�NNN��I�c�oR�؀��8v�:9�q&��>��mDC��>��mDը�>5J�F>���p�_����[�p�_�'��� ����o^t��I�h�5��f�lD;��^6و�D#��l
��Y#8�䓓����������I��ҝ	��*������E�m�_�'"m#�}V�sß�8w1����sß�8w1����sß�8w1����sß�8w1����s�f�p~�S�j�??�⃩Y5����.
مؿ7�''ؿ��[#��.�ڤč4�u P�����|��mvmvD��G������@�9|�9���w�w�{܁{�(>4����㼗w�����TS|h�W����p��4�)>4�ߤ�|�9J뫣�����c\3��N�wO@�y��o�ү��W�?��^���y�X��M�y��3��n�Ӽކ��}��|�`�h`R�Fz�|q8P_��������@qؔk�_�߼�D6�\�p��``�5� �)v�\�p/Z��Q��QRS�i��M���e�>����UWh
���@a��`���Լ�o���Oǹ!�3�{̒S�q�^f�����3k��4���Tl
� ����%_i�4�F#�}g	�fS�h��4T��)�F��\�fs��^u(!�# � ��c���F�{ձ�,��F�{խP����U�Bu�@#���V�N�o�W�
Չ��� ��[�:q��^uT'N�7ܫ'����F�{�mP�~�p�����U�Au���p����F��u߱���p�p;NT[���pNT[���3&�F��hS�M|#���
�	c�o�m��Rb�H#��h��򦙂i��i�`�)o[)�V��V
��򶕂m��m�`[)o[)�V��V
��򶕂m��m�`[)o[)�Vʟ�;�oE��?�Y�k�ֹq�@�Sn]��;�[��`�6�w:�$����1u+��:a�c���7q�����5����H�>�>3���n����7�'��Ə�p�:�]��o�W®��7Ҹ�a����U��{��|�8Ym��� ���W����U��1�5Ҹ0�5��^Ec:k�����t�p/+/ڂhˋ����3T���h�-/ڂhˋ� ���܂?����/�����k����/h��拚��ނ�����f��p
�������`�)��p�ƌ�k�W��f_#����U5���U�����H㾫Z誚q|� ��CWՌ�k�W��f_#��갛7���0��^?�)0�)�������S�b�g�G�0�)�������S�S��Oy
Ly
?�)0�)����`�������66?�<0�<�`��`������ûn��n��[0�[0���c��ۡ�ݫn��W1�U�Ux��@6��6��$�$`	o	�@B4&�UHxH�����������g�85e��6Ҹ?5U85e��6�g�85e��6�g�85e`6ܧ�8�d`6��Ǟ� �F�{��ؓ��p/�35�?���ۏ�x�#�AwO��Ǹ����+��{����t�_Hw��S<|1�A��~�k��q�q�#��g~ז�cZb���XO�}��̄F��>�cffB#�}�
V\s�f�
^��O����s6�4�֧�>�M#���y`7�l�Ic �9g�p���n��4Ҹ�^�n��4�O�� vsΦ�^6��n�_� ���u?&�0&�4�i܏	-�	5ͯF�{�`Їi~5ܫ�>L��^u�2j�_� ��è��j�q?j�0j�4��UG#�(4�Q�� �ܰU76�F��nت{#�� 7l�M��~2r�i��̃��i�4ܫ;}�i�Wv��	�p�:�ԅ78N�	�p�:�L��^u08�&H#�{�S��d� � �����4A�U�Cu�^�W�&H#�����2M�F�{���e� � ���;�4A�U�����6M�F�{�aw�A܁A��qq��ĝ~wbw�A܉A��M}	S_zS_�ԗ�ԗ0���o�V]��b~C��Zu	o���F�ޖ�����x#����m1�!�H��]2��_���r�c�2.|�7��k���������&�1�g�p/ae��7�KF�{� ��Q���y#���s~�yzzz�-�?B     