--
-- PostgreSQL database dump
--

\restrict Dr214xLSgBkA5oOvcskeh5f1t9BcNacytWVRgf6Qxu1tUm8K88daCdELuWVWh3X

-- Dumped from database version 17.7 (Ubuntu 17.7-0ubuntu0.25.04.1)
-- Dumped by pg_dump version 17.7 (Ubuntu 17.7-0ubuntu0.25.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Address; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Address" (
    id integer NOT NULL,
    unit_number character varying(255),
    address_line1 character varying(255) NOT NULL,
    address_line2 character varying(255),
    city character varying(255) NOT NULL,
    region character varying(255) NOT NULL,
    postal_code character varying(10) NOT NULL,
    "countryId" integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."Address" OWNER TO postgres;

--
-- Name: Address_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Address_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Address_id_seq" OWNER TO postgres;

--
-- Name: Address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Address_id_seq" OWNED BY public."Address".id;


--
-- Name: Category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Category" (
    id integer NOT NULL,
    "languageId" integer NOT NULL,
    name character varying(255) NOT NULL,
    "imagePath" character varying(255),
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."Category" OWNER TO postgres;

--
-- Name: Category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Category_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Category_id_seq" OWNER TO postgres;

--
-- Name: Category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Category_id_seq" OWNED BY public."Category".id;


--
-- Name: Country; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Country" (
    id integer NOT NULL,
    country_name character varying(255) NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."Country" OWNER TO postgres;

--
-- Name: Country_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Country_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Country_id_seq" OWNER TO postgres;

--
-- Name: Country_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Country_id_seq" OWNED BY public."Country".id;


--
-- Name: DealOfTheDay; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DealOfTheDay" (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    content character varying(255) NOT NULL,
    "discountPercent" integer,
    "originalPrice" double precision,
    "discountedPrice" double precision,
    "startDate" timestamp(3) without time zone NOT NULL,
    "endDate" timestamp(3) without time zone NOT NULL,
    rating double precision DEFAULT 0,
    "ratingCount" integer DEFAULT 0,
    "isActive" boolean DEFAULT true NOT NULL,
    "imagePath" character varying(255),
    "productLink" character varying(255),
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."DealOfTheDay" OWNER TO postgres;

--
-- Name: DealOfTheDay_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."DealOfTheDay_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."DealOfTheDay_id_seq" OWNER TO postgres;

--
-- Name: DealOfTheDay_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."DealOfTheDay_id_seq" OWNED BY public."DealOfTheDay".id;


--
-- Name: Language; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Language" (
    id integer NOT NULL,
    code character varying(10) NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."Language" OWNER TO postgres;

--
-- Name: Language_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Language_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Language_id_seq" OWNER TO postgres;

--
-- Name: Language_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Language_id_seq" OWNED BY public."Language".id;


--
-- Name: Line_Group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Line_Group" (
    id integer NOT NULL,
    "groupId" text NOT NULL,
    "groupName" text,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."Line_Group" OWNER TO postgres;

--
-- Name: Line_Group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Line_Group_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Line_Group_id_seq" OWNER TO postgres;

--
-- Name: Line_Group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Line_Group_id_seq" OWNED BY public."Line_Group".id;


--
-- Name: Line_Role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Line_Role" (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."Line_Role" OWNER TO postgres;

--
-- Name: Line_Role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Line_Role_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Line_Role_id_seq" OWNER TO postgres;

--
-- Name: Line_Role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Line_Role_id_seq" OWNED BY public."Line_Role".id;


--
-- Name: Order_Line; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Order_Line" (
    id integer NOT NULL,
    "orderId" integer NOT NULL,
    "productId" integer NOT NULL,
    "sizeId" integer,
    "colorId" integer,
    quantity integer NOT NULL,
    price double precision NOT NULL,
    total_price double precision NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."Order_Line" OWNER TO postgres;

--
-- Name: Order_Line_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Order_Line_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Order_Line_id_seq" OWNER TO postgres;

--
-- Name: Order_Line_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Order_Line_id_seq" OWNED BY public."Order_Line".id;


--
-- Name: Order_Status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Order_Status" (
    id integer NOT NULL,
    status character varying(255) NOT NULL,
    description text,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."Order_Status" OWNER TO postgres;

--
-- Name: Order_Status_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Order_Status_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Order_Status_id_seq" OWNER TO postgres;

--
-- Name: Order_Status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Order_Status_id_seq" OWNED BY public."Order_Status".id;


--
-- Name: Organize; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Organize" (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public."Organize" OWNER TO postgres;

--
-- Name: Organize_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Organize_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Organize_id_seq" OWNER TO postgres;

--
-- Name: Organize_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Organize_id_seq" OWNED BY public."Organize".id;


--
-- Name: PackageType; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."PackageType" (
    id integer NOT NULL,
    name character varying(20) NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."PackageType" OWNER TO postgres;

--
-- Name: PackageType_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."PackageType_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."PackageType_id_seq" OWNER TO postgres;

--
-- Name: PackageType_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."PackageType_id_seq" OWNED BY public."PackageType".id;


--
-- Name: Packgage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Packgage" (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."Packgage" OWNER TO postgres;

--
-- Name: Packgage_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Packgage_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Packgage_id_seq" OWNER TO postgres;

--
-- Name: Packgage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Packgage_id_seq" OWNED BY public."Packgage".id;


--
-- Name: Payment_Status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Payment_Status" (
    id integer NOT NULL,
    status character varying(50) NOT NULL,
    description text,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."Payment_Status" OWNER TO postgres;

--
-- Name: Payment_Status_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Payment_Status_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Payment_Status_id_seq" OWNER TO postgres;

--
-- Name: Payment_Status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Payment_Status_id_seq" OWNED BY public."Payment_Status".id;


--
-- Name: Payment_Type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Payment_Type" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."Payment_Type" OWNER TO postgres;

--
-- Name: Payment_Type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Payment_Type_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Payment_Type_id_seq" OWNER TO postgres;

--
-- Name: Payment_Type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Payment_Type_id_seq" OWNED BY public."Payment_Type".id;


--
-- Name: Product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Product" (
    id integer NOT NULL,
    "organizeId" integer NOT NULL,
    "imageCoverPath" text,
    "productId" character varying(255) NOT NULL,
    "basePrice" double precision NOT NULL,
    "salePrice" double precision NOT NULL,
    size character varying(50),
    "sizeUnitId" integer,
    "inPackAmount" integer,
    stock integer,
    "availabilityId" integer NOT NULL,
    description text,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    "inPackAmountTypeId" integer
);


ALTER TABLE public."Product" OWNER TO postgres;

--
-- Name: ProductPackgage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ProductPackgage" (
    "productId" integer NOT NULL,
    "packgageId" integer NOT NULL,
    price double precision,
    "salePrice" double precision,
    "inPackAmount" integer
);


ALTER TABLE public."ProductPackgage" OWNER TO postgres;

--
-- Name: Product_Availability; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Product_Availability" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."Product_Availability" OWNER TO postgres;

--
-- Name: Product_Availability_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Product_Availability_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Product_Availability_id_seq" OWNER TO postgres;

--
-- Name: Product_Availability_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Product_Availability_id_seq" OWNED BY public."Product_Availability".id;


--
-- Name: Product_Category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Product_Category" (
    id integer NOT NULL,
    "productId" integer NOT NULL,
    "categoryId" integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public."Product_Category" OWNER TO postgres;

--
-- Name: Product_Category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Product_Category_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Product_Category_id_seq" OWNER TO postgres;

--
-- Name: Product_Category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Product_Category_id_seq" OWNED BY public."Product_Category".id;


--
-- Name: Product_Name; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Product_Name" (
    id integer NOT NULL,
    "productId" integer NOT NULL,
    "languageId" integer NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."Product_Name" OWNER TO postgres;

--
-- Name: Product_Name_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Product_Name_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Product_Name_id_seq" OWNER TO postgres;

--
-- Name: Product_Name_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Product_Name_id_seq" OWNED BY public."Product_Name".id;


--
-- Name: Product_Tag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Product_Tag" (
    id integer NOT NULL,
    "productId" integer NOT NULL,
    "tagId" integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."Product_Tag" OWNER TO postgres;

--
-- Name: Product_Tag_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Product_Tag_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Product_Tag_id_seq" OWNER TO postgres;

--
-- Name: Product_Tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Product_Tag_id_seq" OWNED BY public."Product_Tag".id;


--
-- Name: Product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Product_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Product_id_seq" OWNER TO postgres;

--
-- Name: Product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Product_id_seq" OWNED BY public."Product".id;


--
-- Name: Products_Color; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Products_Color" (
    id integer NOT NULL,
    "detailId" integer NOT NULL,
    "colorDetailId" integer NOT NULL,
    price double precision,
    "salePrice" double precision,
    qty_in_stock integer,
    "SKU" character varying(255),
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    "availabilityId" integer
);


ALTER TABLE public."Products_Color" OWNER TO postgres;

--
-- Name: Products_Color_Detail; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Products_Color_Detail" (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    code character varying(25) NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."Products_Color_Detail" OWNER TO postgres;

--
-- Name: Products_Color_Detail_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Products_Color_Detail_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Products_Color_Detail_id_seq" OWNER TO postgres;

--
-- Name: Products_Color_Detail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Products_Color_Detail_id_seq" OWNED BY public."Products_Color_Detail".id;


--
-- Name: Products_Color_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Products_Color_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Products_Color_id_seq" OWNER TO postgres;

--
-- Name: Products_Color_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Products_Color_id_seq" OWNED BY public."Products_Color".id;


--
-- Name: Products_Detail; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Products_Detail" (
    id integer NOT NULL,
    "productId" integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."Products_Detail" OWNER TO postgres;

--
-- Name: Products_Detail_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Products_Detail_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Products_Detail_id_seq" OWNER TO postgres;

--
-- Name: Products_Detail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Products_Detail_id_seq" OWNED BY public."Products_Detail".id;


--
-- Name: Products_Image; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Products_Image" (
    id integer NOT NULL,
    "detailId" integer NOT NULL,
    "colorId" integer,
    path text NOT NULL,
    "altText" character varying(255),
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public."Products_Image" OWNER TO postgres;

--
-- Name: Products_Image_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Products_Image_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Products_Image_id_seq" OWNER TO postgres;

--
-- Name: Products_Image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Products_Image_id_seq" OWNED BY public."Products_Image".id;


--
-- Name: Products_Size; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Products_Size" (
    id integer NOT NULL,
    "detailId" integer NOT NULL,
    "sizeId" integer,
    price double precision,
    "salePrice" double precision,
    bust double precision,
    hip double precision,
    length double precision,
    "unitId" integer,
    qty_in_stock integer,
    "SKU" character varying(255),
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    "availabilityId" integer,
    shoulder double precision,
    sleeve_length double precision
);


ALTER TABLE public."Products_Size" OWNER TO postgres;

--
-- Name: Products_Size_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Products_Size_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Products_Size_id_seq" OWNER TO postgres;

--
-- Name: Products_Size_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Products_Size_id_seq" OWNED BY public."Products_Size".id;


--
-- Name: Promotion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Promotion" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    "discountRate" double precision NOT NULL,
    "startDate" timestamp(3) without time zone NOT NULL,
    "endDate" timestamp(3) without time zone NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."Promotion" OWNER TO postgres;

--
-- Name: Promotion_Category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Promotion_Category" (
    id integer NOT NULL,
    "categoryId" integer NOT NULL,
    "promotionId" integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."Promotion_Category" OWNER TO postgres;

--
-- Name: Promotion_Category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Promotion_Category_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Promotion_Category_id_seq" OWNER TO postgres;

--
-- Name: Promotion_Category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Promotion_Category_id_seq" OWNED BY public."Promotion_Category".id;


--
-- Name: Promotion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Promotion_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Promotion_id_seq" OWNER TO postgres;

--
-- Name: Promotion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Promotion_id_seq" OWNED BY public."Promotion".id;


--
-- Name: PublicRelationMessage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."PublicRelationMessage" (
    id integer NOT NULL,
    content1 character varying(100) NOT NULL,
    content2 character varying(100) NOT NULL,
    content3 character varying(100) NOT NULL,
    "displayOrder" integer DEFAULT 0 NOT NULL,
    "startDate" timestamp(3) without time zone NOT NULL,
    "endDate" timestamp(3) without time zone NOT NULL,
    "isActive" boolean DEFAULT true NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."PublicRelationMessage" OWNER TO postgres;

--
-- Name: PublicRelationMessage_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."PublicRelationMessage_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."PublicRelationMessage_id_seq" OWNER TO postgres;

--
-- Name: PublicRelationMessage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."PublicRelationMessage_id_seq" OWNED BY public."PublicRelationMessage".id;


--
-- Name: Role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Role" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."Role" OWNER TO postgres;

--
-- Name: Role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Role_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Role_id_seq" OWNER TO postgres;

--
-- Name: Role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Role_id_seq" OWNED BY public."Role".id;


--
-- Name: Shipping_Method; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Shipping_Method" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    price double precision NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."Shipping_Method" OWNER TO postgres;

--
-- Name: Shipping_Method_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Shipping_Method_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Shipping_Method_id_seq" OWNER TO postgres;

--
-- Name: Shipping_Method_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Shipping_Method_id_seq" OWNED BY public."Shipping_Method".id;


--
-- Name: Shop_Order; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Shop_Order" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "paymentMethodId" integer NOT NULL,
    "shippingAddressId" integer NOT NULL,
    "shippingMethodId" integer NOT NULL,
    "orderStatusId" integer NOT NULL,
    "paymentStatusId" integer NOT NULL,
    order_total double precision NOT NULL,
    order_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."Shop_Order" OWNER TO postgres;

--
-- Name: Shop_Order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Shop_Order_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Shop_Order_id_seq" OWNER TO postgres;

--
-- Name: Shop_Order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Shop_Order_id_seq" OWNED BY public."Shop_Order".id;


--
-- Name: Shopping_Cart; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Shopping_Cart" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."Shopping_Cart" OWNER TO postgres;

--
-- Name: Shopping_Cart_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Shopping_Cart_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Shopping_Cart_id_seq" OWNER TO postgres;

--
-- Name: Shopping_Cart_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Shopping_Cart_id_seq" OWNED BY public."Shopping_Cart".id;


--
-- Name: Shopping_Product_cart; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Shopping_Product_cart" (
    id integer NOT NULL,
    "cartId" integer NOT NULL,
    "productId" integer NOT NULL,
    "colorId" integer,
    "sizeId" integer,
    quantity integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    "packgageId" integer
);


ALTER TABLE public."Shopping_Product_cart" OWNER TO postgres;

--
-- Name: Shopping_Product_cart_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Shopping_Product_cart_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Shopping_Product_cart_id_seq" OWNER TO postgres;

--
-- Name: Shopping_Product_cart_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Shopping_Product_cart_id_seq" OWNED BY public."Shopping_Product_cart".id;


--
-- Name: Size; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Size" (
    id integer NOT NULL,
    value character varying(10) NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."Size" OWNER TO postgres;

--
-- Name: Size_Unit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Size_Unit" (
    id integer NOT NULL,
    unit character varying(10) NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."Size_Unit" OWNER TO postgres;

--
-- Name: Size_Unit_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Size_Unit_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Size_Unit_id_seq" OWNER TO postgres;

--
-- Name: Size_Unit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Size_Unit_id_seq" OWNED BY public."Size_Unit".id;


--
-- Name: Size_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Size_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Size_id_seq" OWNER TO postgres;

--
-- Name: Size_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Size_id_seq" OWNED BY public."Size".id;


--
-- Name: Tag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Tag" (
    id integer NOT NULL,
    "languageId" integer NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."Tag" OWNER TO postgres;

--
-- Name: Tag_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Tag_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Tag_id_seq" OWNER TO postgres;

--
-- Name: Tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Tag_id_seq" OWNED BY public."Tag".id;


--
-- Name: Task_Status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Task_Status" (
    id integer NOT NULL,
    status text NOT NULL
);


ALTER TABLE public."Task_Status" OWNER TO postgres;

--
-- Name: Task_Status_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Task_Status_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Task_Status_id_seq" OWNER TO postgres;

--
-- Name: Task_Status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Task_Status_id_seq" OWNED BY public."Task_Status".id;


--
-- Name: User; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."User" (
    id integer NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    email character varying(255),
    active boolean DEFAULT true NOT NULL,
    "lineId" text,
    "lineDisplayName" text,
    "linePictureUrl" text,
    email_verified timestamp(3) without time zone,
    password_hash character varying(255),
    image_path text,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."User" OWNER TO postgres;

--
-- Name: User_Acconts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."User_Acconts" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    provider character varying(255) NOT NULL,
    provider_account_id character varying(255) NOT NULL,
    refresh_token text,
    access_token text NOT NULL,
    expires_at timestamp(3) without time zone,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."User_Acconts" OWNER TO postgres;

--
-- Name: User_Acconts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."User_Acconts_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."User_Acconts_id_seq" OWNER TO postgres;

--
-- Name: User_Acconts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."User_Acconts_id_seq" OWNED BY public."User_Acconts".id;


--
-- Name: User_Address; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."User_Address" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "addressId" integer NOT NULL,
    is_default boolean DEFAULT false NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."User_Address" OWNER TO postgres;

--
-- Name: User_Address_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."User_Address_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."User_Address_id_seq" OWNER TO postgres;

--
-- Name: User_Address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."User_Address_id_seq" OWNED BY public."User_Address".id;


--
-- Name: User_Line_Group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."User_Line_Group" (
    id integer NOT NULL,
    "groupId" integer NOT NULL,
    "userId" integer NOT NULL,
    "lineRoleId" integer,
    "joinedAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public."User_Line_Group" OWNER TO postgres;

--
-- Name: User_Line_Group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."User_Line_Group_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."User_Line_Group_id_seq" OWNER TO postgres;

--
-- Name: User_Line_Group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."User_Line_Group_id_seq" OWNED BY public."User_Line_Group".id;


--
-- Name: User_Line_Task; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."User_Line_Task" (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description text,
    "groupId" integer NOT NULL,
    "userId" integer,
    "statusId" integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."User_Line_Task" OWNER TO postgres;

--
-- Name: User_Line_Task_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."User_Line_Task_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."User_Line_Task_id_seq" OWNER TO postgres;

--
-- Name: User_Line_Task_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."User_Line_Task_id_seq" OWNED BY public."User_Line_Task".id;


--
-- Name: User_Payment_Method; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."User_Payment_Method" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "paymentTypeId" integer NOT NULL,
    provider character varying(255),
    "accountNumber" character varying(100),
    "accountName" character varying(255),
    "bankName" character varying(255),
    "qrCodeImageUrl" text,
    expiry_date timestamp(3) without time zone,
    is_default boolean DEFAULT false NOT NULL,
    "tokenizedData" text,
    is_verified boolean DEFAULT false NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."User_Payment_Method" OWNER TO postgres;

--
-- Name: User_Payment_Method_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."User_Payment_Method_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."User_Payment_Method_id_seq" OWNER TO postgres;

--
-- Name: User_Payment_Method_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."User_Payment_Method_id_seq" OWNED BY public."User_Payment_Method".id;


--
-- Name: User_Product_Favorites; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."User_Product_Favorites" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "productId" integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."User_Product_Favorites" OWNER TO postgres;

--
-- Name: User_Product_Favorites_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."User_Product_Favorites_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."User_Product_Favorites_id_seq" OWNER TO postgres;

--
-- Name: User_Product_Favorites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."User_Product_Favorites_id_seq" OWNED BY public."User_Product_Favorites".id;


--
-- Name: User_Product_Reviews; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."User_Product_Reviews" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "orderLineId" integer,
    rating integer DEFAULT 0 NOT NULL,
    comment character varying(500),
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."User_Product_Reviews" OWNER TO postgres;

--
-- Name: User_Product_Reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."User_Product_Reviews_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."User_Product_Reviews_id_seq" OWNER TO postgres;

--
-- Name: User_Product_Reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."User_Product_Reviews_id_seq" OWNED BY public."User_Product_Reviews".id;


--
-- Name: User_Roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."User_Roles" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "roleId" integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public."User_Roles" OWNER TO postgres;

--
-- Name: User_Roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."User_Roles_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."User_Roles_id_seq" OWNER TO postgres;

--
-- Name: User_Roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."User_Roles_id_seq" OWNED BY public."User_Roles".id;


--
-- Name: User_Sessions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."User_Sessions" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    expires_at timestamp(3) without time zone,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public."User_Sessions" OWNER TO postgres;

--
-- Name: User_Sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."User_Sessions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."User_Sessions_id_seq" OWNER TO postgres;

--
-- Name: User_Sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."User_Sessions_id_seq" OWNED BY public."User_Sessions".id;


--
-- Name: User_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."User_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."User_id_seq" OWNER TO postgres;

--
-- Name: User_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."User_id_seq" OWNED BY public."User".id;


--
-- Name: Verification_Tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Verification_Tokens" (
    id integer NOT NULL,
    identifier character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    expires_at timestamp(3) without time zone,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."Verification_Tokens" OWNER TO postgres;

--
-- Name: Verification_Tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Verification_Tokens_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Verification_Tokens_id_seq" OWNER TO postgres;

--
-- Name: Verification_Tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Verification_Tokens_id_seq" OWNED BY public."Verification_Tokens".id;


--
-- Name: Address id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Address" ALTER COLUMN id SET DEFAULT nextval('public."Address_id_seq"'::regclass);


--
-- Name: Category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Category" ALTER COLUMN id SET DEFAULT nextval('public."Category_id_seq"'::regclass);


--
-- Name: Country id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Country" ALTER COLUMN id SET DEFAULT nextval('public."Country_id_seq"'::regclass);


--
-- Name: DealOfTheDay id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DealOfTheDay" ALTER COLUMN id SET DEFAULT nextval('public."DealOfTheDay_id_seq"'::regclass);


--
-- Name: Language id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Language" ALTER COLUMN id SET DEFAULT nextval('public."Language_id_seq"'::regclass);


--
-- Name: Line_Group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Line_Group" ALTER COLUMN id SET DEFAULT nextval('public."Line_Group_id_seq"'::regclass);


--
-- Name: Line_Role id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Line_Role" ALTER COLUMN id SET DEFAULT nextval('public."Line_Role_id_seq"'::regclass);


--
-- Name: Order_Line id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order_Line" ALTER COLUMN id SET DEFAULT nextval('public."Order_Line_id_seq"'::regclass);


--
-- Name: Order_Status id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order_Status" ALTER COLUMN id SET DEFAULT nextval('public."Order_Status_id_seq"'::regclass);


--
-- Name: Organize id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Organize" ALTER COLUMN id SET DEFAULT nextval('public."Organize_id_seq"'::regclass);


--
-- Name: PackageType id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PackageType" ALTER COLUMN id SET DEFAULT nextval('public."PackageType_id_seq"'::regclass);


--
-- Name: Packgage id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Packgage" ALTER COLUMN id SET DEFAULT nextval('public."Packgage_id_seq"'::regclass);


--
-- Name: Payment_Status id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Payment_Status" ALTER COLUMN id SET DEFAULT nextval('public."Payment_Status_id_seq"'::regclass);


--
-- Name: Payment_Type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Payment_Type" ALTER COLUMN id SET DEFAULT nextval('public."Payment_Type_id_seq"'::regclass);


--
-- Name: Product id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product" ALTER COLUMN id SET DEFAULT nextval('public."Product_id_seq"'::regclass);


--
-- Name: Product_Availability id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product_Availability" ALTER COLUMN id SET DEFAULT nextval('public."Product_Availability_id_seq"'::regclass);


--
-- Name: Product_Category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product_Category" ALTER COLUMN id SET DEFAULT nextval('public."Product_Category_id_seq"'::regclass);


--
-- Name: Product_Name id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product_Name" ALTER COLUMN id SET DEFAULT nextval('public."Product_Name_id_seq"'::regclass);


--
-- Name: Product_Tag id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product_Tag" ALTER COLUMN id SET DEFAULT nextval('public."Product_Tag_id_seq"'::regclass);


--
-- Name: Products_Color id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Products_Color" ALTER COLUMN id SET DEFAULT nextval('public."Products_Color_id_seq"'::regclass);


--
-- Name: Products_Color_Detail id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Products_Color_Detail" ALTER COLUMN id SET DEFAULT nextval('public."Products_Color_Detail_id_seq"'::regclass);


--
-- Name: Products_Detail id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Products_Detail" ALTER COLUMN id SET DEFAULT nextval('public."Products_Detail_id_seq"'::regclass);


--
-- Name: Products_Image id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Products_Image" ALTER COLUMN id SET DEFAULT nextval('public."Products_Image_id_seq"'::regclass);


--
-- Name: Products_Size id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Products_Size" ALTER COLUMN id SET DEFAULT nextval('public."Products_Size_id_seq"'::regclass);


--
-- Name: Promotion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Promotion" ALTER COLUMN id SET DEFAULT nextval('public."Promotion_id_seq"'::regclass);


--
-- Name: Promotion_Category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Promotion_Category" ALTER COLUMN id SET DEFAULT nextval('public."Promotion_Category_id_seq"'::regclass);


--
-- Name: PublicRelationMessage id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PublicRelationMessage" ALTER COLUMN id SET DEFAULT nextval('public."PublicRelationMessage_id_seq"'::regclass);


--
-- Name: Role id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Role" ALTER COLUMN id SET DEFAULT nextval('public."Role_id_seq"'::regclass);


--
-- Name: Shipping_Method id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Shipping_Method" ALTER COLUMN id SET DEFAULT nextval('public."Shipping_Method_id_seq"'::regclass);


--
-- Name: Shop_Order id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Shop_Order" ALTER COLUMN id SET DEFAULT nextval('public."Shop_Order_id_seq"'::regclass);


--
-- Name: Shopping_Cart id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Shopping_Cart" ALTER COLUMN id SET DEFAULT nextval('public."Shopping_Cart_id_seq"'::regclass);


--
-- Name: Shopping_Product_cart id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Shopping_Product_cart" ALTER COLUMN id SET DEFAULT nextval('public."Shopping_Product_cart_id_seq"'::regclass);


--
-- Name: Size id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Size" ALTER COLUMN id SET DEFAULT nextval('public."Size_id_seq"'::regclass);


--
-- Name: Size_Unit id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Size_Unit" ALTER COLUMN id SET DEFAULT nextval('public."Size_Unit_id_seq"'::regclass);


--
-- Name: Tag id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tag" ALTER COLUMN id SET DEFAULT nextval('public."Tag_id_seq"'::regclass);


--
-- Name: Task_Status id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Task_Status" ALTER COLUMN id SET DEFAULT nextval('public."Task_Status_id_seq"'::regclass);


--
-- Name: User id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User" ALTER COLUMN id SET DEFAULT nextval('public."User_id_seq"'::regclass);


--
-- Name: User_Acconts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User_Acconts" ALTER COLUMN id SET DEFAULT nextval('public."User_Acconts_id_seq"'::regclass);


--
-- Name: User_Address id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User_Address" ALTER COLUMN id SET DEFAULT nextval('public."User_Address_id_seq"'::regclass);


--
-- Name: User_Line_Group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User_Line_Group" ALTER COLUMN id SET DEFAULT nextval('public."User_Line_Group_id_seq"'::regclass);


--
-- Name: User_Line_Task id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User_Line_Task" ALTER COLUMN id SET DEFAULT nextval('public."User_Line_Task_id_seq"'::regclass);


--
-- Name: User_Payment_Method id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User_Payment_Method" ALTER COLUMN id SET DEFAULT nextval('public."User_Payment_Method_id_seq"'::regclass);


--
-- Name: User_Product_Favorites id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User_Product_Favorites" ALTER COLUMN id SET DEFAULT nextval('public."User_Product_Favorites_id_seq"'::regclass);


--
-- Name: User_Product_Reviews id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User_Product_Reviews" ALTER COLUMN id SET DEFAULT nextval('public."User_Product_Reviews_id_seq"'::regclass);


--
-- Name: User_Roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User_Roles" ALTER COLUMN id SET DEFAULT nextval('public."User_Roles_id_seq"'::regclass);


--
-- Name: User_Sessions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User_Sessions" ALTER COLUMN id SET DEFAULT nextval('public."User_Sessions_id_seq"'::regclass);


--
-- Name: Verification_Tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Verification_Tokens" ALTER COLUMN id SET DEFAULT nextval('public."Verification_Tokens_id_seq"'::regclass);


--
-- Data for Name: Address; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Address" (id, unit_number, address_line1, address_line2, city, region, postal_code, "countryId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: Category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Category" (id, "languageId", name, "imagePath", "createdAt", "updatedAt") FROM stdin;
1	2	Cotton Puff	\N	2025-03-17 02:49:31.045	2025-03-17 02:47:47.411
2	2	Linen	\N	2025-03-17 02:49:31.045	2025-03-17 02:47:47.571
3	2	Summer	\N	2025-03-17 02:49:31.045	2025-03-17 02:47:47.723
4	2	Swimsuits	\N	2025-03-17 02:49:31.045	2025-03-17 02:47:48.091
5	2	For Men	\N	2025-03-17 02:49:31.045	2025-03-17 02:47:48.668
6	2	Layon	\N	2025-03-17 02:49:31.045	2025-03-17 02:49:10.914
7	2	Crochet Cover	\N	2025-03-17 02:49:31.045	2025-03-17 02:55:25.922
8	2	Over Coat	\N	2025-03-17 03:02:26.711	2025-03-17 03:02:14.118
9	1	กระเป๋ากันน้ำ	\N	2025-05-19 06:54:39.22	2025-05-19 06:53:54.825
10	1	กระดานโต้คลื่น	\N	2025-05-19 06:58:41.423	2025-05-19 06:58:37.224
11	1	สน็อกเกิ้ลดำน้ำ	\N	2025-05-19 07:05:21.544	2025-05-19 07:05:16.894
12	1	รองเท้าเดินหาด	\N	2025-05-19 08:04:02.032	2025-05-19 08:03:53.057
13	2	TSK-SERIES	\N	2025-05-19 08:11:17.457	2025-05-19 08:11:11.302
14	2	DRY-SERIES	\N	2025-05-19 08:17:24.717	2025-05-19 08:17:10.813
15	2	DRY-SPORT	\N	2025-05-19 08:18:56.944	2025-05-19 08:18:42.798
16	1	แว่นตาว่ายน้ำ	\N	2025-05-19 08:24:05.499	2025-05-19 08:28:15.377
17	2	Toys	\N	2025-05-21 07:41:14.796	2025-05-21 07:41:07.475
18	1	จักสาน	\N	2025-05-23 08:20:24.68	2025-05-23 08:19:57.631
\.


--
-- Data for Name: Country; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Country" (id, country_name, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: DealOfTheDay; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."DealOfTheDay" (id, title, content, "discountPercent", "originalPrice", "discountedPrice", "startDate", "endDate", rating, "ratingCount", "isActive", "imagePath", "productLink", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: Language; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Language" (id, code, "createdAt", "updatedAt") FROM stdin;
1	th	2025-02-13 06:51:05.75	2025-02-13 06:50:59.045
2	en	2025-02-13 06:51:05.75	2025-02-13 06:51:02.341
\.


--
-- Data for Name: Line_Group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Line_Group" (id, "groupId", "groupName", "createdAt", "updatedAt") FROM stdin;
1	123456	hello	2025-03-12 05:29:47.546	2025-03-12 05:29:31.185
2	654321	world	2025-03-12 05:30:36.377	2025-03-12 05:30:29.593
\.


--
-- Data for Name: Line_Role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Line_Role" (id, name, description, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: Order_Line; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Order_Line" (id, "orderId", "productId", "sizeId", "colorId", quantity, price, total_price, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: Order_Status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Order_Status" (id, status, description, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: Organize; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Organize" (id, name) FROM stdin;
1	Dry Super
2	Fashion
\.


--
-- Data for Name: PackageType; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."PackageType" (id, name, "createdAt", "updatedAt") FROM stdin;
1	Pcs	2025-03-12 05:33:18.514	2025-03-12 05:33:11.978
2	Set	2025-03-12 05:33:23.865	2025-03-12 05:33:20.433
3	Pack	2025-05-19 09:21:00.382	2025-05-19 09:20:55.295
\.


--
-- Data for Name: Packgage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Packgage" (id, name, "createdAt", "updatedAt") FROM stdin;
1	ถุง	2025-02-13 06:35:57.837	2025-02-13 06:35:34.377
2	กล่อง	2025-02-13 06:35:57.837	2025-02-13 06:35:52.52
4	ลัง	2025-02-16 02:36:10.038	2025-02-16 02:36:02.396
5	แพค	2025-02-17 02:15:25.963	2025-02-17 02:15:12.636
6	ถุงตาข่าย	2025-02-18 16:03:26.478	2025-02-18 16:03:14.383
3	ถุงซิป	2025-02-15 09:32:03.935	2025-03-12 06:52:43.612
\.


--
-- Data for Name: Payment_Status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Payment_Status" (id, status, description, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: Payment_Type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Payment_Type" (id, name, description, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: Product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Product" (id, "organizeId", "imageCoverPath", "productId", "basePrice", "salePrice", size, "sizeUnitId", "inPackAmount", stock, "availabilityId", description, "createdAt", "updatedAt", "inPackAmountTypeId") FROM stdin;
671	2	/var/uploads/40-1741148563375.png	6606	100	0	\N	\N	1	\N	1	\N	2025-02-20 03:05:22.488	2025-03-12 06:14:47.254	1
691	1	/var/uploads/1545-1742532781727.png	SY-A2250	70	190	70	1	1	\N	1	\N	2025-05-10 06:54:21.554	2025-05-10 06:49:36.371	1
692	1	/var/uploads/188266_0-1745395904317.jpg	SY-5041	85	0	\N	1	1	\N	1	\N	2025-05-10 06:54:21.554	2025-05-10 06:49:36.543	1
696	1	/var/uploads/188270_0-1745396299201.jpg	SY-A2240	160	0	180*85	1	1	\N	1	\N	2025-05-10 06:54:21.554	2025-05-10 06:49:37.551	1
590	2	/var/uploads/30-1747466440415.png	CN-611	195	0	\N	\N	1	\N	1	\N	2025-02-20 02:05:48.304	2025-05-17 07:20:40.543	1
693	1	/var/uploads/6045-1747475484034.png	SY-6045	75	0	\N	1	1	\N	1	\N	2025-05-10 06:54:21.554	2025-05-17 09:51:24.128	1
694	1	/var/uploads/2241-1747475656585.png	SY-A2241	155	0	180*85	1	1	\N	1	\N	2025-05-10 06:54:21.554	2025-05-17 09:54:16.715	1
695	1	/var/uploads/2224-1747475779532.png	SY-A2224	80	0	90	1	1	\N	1	\N	2025-05-10 06:54:21.554	2025-05-17 09:56:19.661	1
248	1	C:/uploads/17-1740150103139.jpg	BB-17	480	190	17	2	8	\N	1	\N	2025-02-17 02:15:01.338	2025-07-05 04:20:37.37	3
697	1	/var/uploads/188269_0-1745396924906.jpg	SY-A2225	95	0	\N	1	1	\N	1	\N	2025-05-10 06:54:21.554	2025-05-19 06:04:48.077	1
704	2	/var/uploads/9-1747710812541.png	ETC-1604	200	650	\N	2	1	\N	1	\N	2025-05-20 03:10:11.643	2025-05-20 03:13:32.631	1
672	1	/var/uploads/235-1747733515444.png	Tiger	55	350	\N	\N	1	\N	1	\N	2025-02-20 23:59:54.057	2025-05-20 09:31:55.536	1
711	1	/var/uploads/5-1748329878002.png	SY-A2237	74	0	\N	\N	1	\N	1	\N	2025-05-27 07:02:45.467	2025-05-27 07:11:18.126	1
249	1	C:/uploads/26-1740150135906.jpg	BB-26	900	350	26	2	6	\N	1	\N	2025-02-17 02:15:01.338	2025-07-05 04:20:37.37	3
3	1	C:/uploads/SY-A1171-1739431026843.png	SY-A1171	65	120	28	2	1	\N	1	\N	2025-02-13 06:50:32.09	2025-07-08 02:40:29.655	1
662	2	/var/uploads/2P-1748406545519.png	2P	190	0	\N	\N	2	\N	1	\N	2025-05-28 04:29:05.649	2025-05-28 04:33:02.184	2
716	1	/var/uploads/SY-A2138-1750650929130.png	SY-A2138	95	199	80*90	1	1	\N	1	\N	2025-06-23 03:53:18.611	2025-06-23 03:55:29.379	1
118	1	C:/uploads/0731-1740083545285.jpg	SY-A0731	150	490	120	1	1	\N	1	\N	2025-02-15 08:49:35.45	2025-07-05 04:13:08.645	1
117	1	C:/uploads/0875-1740083510458.jpg	SY-A0875	160	390	168*107	1	1	\N	1	\N	2025-02-15 08:49:35.45	2025-07-05 04:13:08.645	1
110	1	C:/uploads/0555-1740083251876.jpg	SY-A0555	225	490	120	1	1	\N	1	\N	2025-02-15 08:22:42.325	2025-07-05 04:13:08.645	1
109	1	C:/uploads/0716-1740083212492.jpg	SY-A0716	125	290	90	1	1	\N	1	\N	2025-02-15 08:22:42.325	2025-07-05 04:13:08.645	1
108	1	C:/uploads/0766-1740083136929.jpg	SY-A0766	240	490	120	1	1	\N	1	\N	2025-02-15 08:19:38.983	2025-07-05 04:13:08.645	1
107	1	C:/uploads/0765-1740083096634.jpg	SY-A0765	120	290	90	1	1	\N	1	\N	2025-02-15 08:19:38.983	2025-07-05 04:13:08.645	1
102	1	C:/uploads/0909-1740081584536.jpg	SY-A0909	200	490	120	1	1	\N	1	\N	2025-02-15 08:17:12.287	2025-07-05 04:13:08.645	1
101	1	C:/uploads/0908-1740081571787.jpg	SY-A0908	125	290	90	1	1	\N	1	\N	2025-02-15 08:17:12.287	2025-07-05 04:13:08.645	1
86	1	C:/uploads/71921-1740080046479.jpg	SY-A0721	65	0	90	1	1	\N	1	\N	2025-02-15 07:56:23.537	2025-07-05 04:13:08.645	1
85	1	C:/uploads/71921-1740080041497.jpg	SY-A0720	55	0	70	1	1	\N	1	\N	2025-02-15 07:56:23.537	2025-07-05 04:13:08.645	1
84	1	C:/uploads/71921-1740080037160.jpg	SY-A0719	45	0	60	1	1	\N	1	\N	2025-02-15 07:56:23.537	2025-07-05 04:13:08.645	1
83	1	C:/uploads/SY-A0801-A0802-A0803-A0805-1739938079323.png	SY-A0805	68	0	90	1	1	\N	1	\N	2025-02-15 07:54:53.99	2025-07-05 04:13:08.645	1
82	1	C:/uploads/SY-A0801-A0802-A0803-A0805-1739938076928.png	SY-A0803	60	0	80	1	1	\N	1	\N	2025-02-15 07:54:53.99	2025-07-05 04:13:08.645	1
81	1	C:/uploads/SY-A0801-A0802-A0803-A0805-1739938074524.png	SY-A0802	45	0	70	1	1	\N	1	\N	2025-02-15 07:54:53.99	2025-07-05 04:13:08.645	1
80	1	C:/uploads/SY-A0801-A0802-A0803-A0805-1739938069905.png	SY-A0801	40	0	60	1	1	\N	1	\N	2025-02-15 07:54:53.99	2025-07-05 04:13:08.645	1
79	1	C:/uploads/SY-A0735-A0736-1739937877597.png	SY-A0736	75	0	90	1	1	\N	1	\N	2025-02-15 07:45:53.208	2025-07-05 04:13:08.645	1
78	1	C:/uploads/SY-A0735-A0736-1739937867398.png	SY-A0735	65	0	80	1	1	\N	1	\N	2025-02-15 07:45:53.208	2025-07-05 04:13:08.645	1
76	1	C:/uploads/SY-A2010-1739937801364.png	SY-A2010	40	0	\N	1	1	\N	1	\N	2025-02-15 07:45:53.208	2025-07-05 04:13:08.645	1
75	1	C:/uploads/SY-A2021-A2022-1739937721934.png	SY-A2022	50	0	70	1	1	\N	1	\N	2025-02-15 07:45:53.208	2025-07-05 04:13:08.645	1
74	1	C:/uploads/SY-A2021-A2022-1739937702306.png	SY-A2021	40	0	60	1	1	\N	1	\N	2025-02-15 07:45:53.208	2025-07-05 04:13:08.645	1
205	1	C:/uploads/SY-A2083-A2085-1740128385812.png	SY-A2083	372	0	\N	1	6	\N	1	\N	2025-02-16 02:54:43.218	2025-07-08 02:47:42.222	3
305	1	C:/uploads/42-1740322645371.jpg	1455	1260	0	34*64	2	6	\N	1	\N	2025-02-18 08:17:24.243	2025-07-08 02:52:16.602	3
352	1	C:/uploads/2029-1739928576994.png	SY-A2040	120	290	75*70	1	1	\N	1	\N	2025-02-19 01:07:36.998	2025-07-08 02:53:10.639	1
350	1	C:/uploads/2040-1739928566630.png	SY-A2024	120	290	75*70	1	1	\N	1	\N	2025-02-19 01:07:36.998	2025-07-08 02:53:10.639	1
349	1	C:/uploads/2024-1739928588918.png	SY-A2023	120	290	75*70	1	1	\N	1	\N	2025-02-19 01:07:36.998	2025-07-08 02:53:10.639	1
699	1	/var/uploads/145185458-1745474914844.png	5233	1260	0	34*64	2	6	\N	1	\N	2025-05-10 06:54:21.554	2025-07-08 02:59:09.786	3
700	1	/var/uploads/245185458-1745474960870.png	5257	1260	0	34*64	2	6	\N	1	\N	2025-05-10 06:54:21.554	2025-07-08 02:59:09.786	3
669	2	/var/uploads/9004-1752288506820.png	A-9004	215	0	\N	\N	1	\N	1	\N	2025-02-20 03:05:22.488	2025-07-12 02:48:27.059	1
605	2	/var/uploads/631-1752289895697.png	E-631	235	0	\N	\N	1	\N	1	Hip 38-42"/Length 10"	2025-02-20 02:15:57.747	2025-07-12 03:11:35.858	1
185	1	C:/uploads/1-1740147068943.jpg	SY-B2060	360	790	120	1	1	\N	1	\N	2025-02-16 02:33:30.812	2025-07-16 03:17:43.929	1
254	1	C:/uploads/41-1740150683543.jpg	BBR-41	1260	590	41	2	6	\N	1	\N	2025-02-17 02:20:18.02	2025-07-05 04:20:37.37	3
586	2	/var/uploads/2-1747468573826.png	624-2	490	0	\N	\N	1	\N	1	\N	2025-02-20 02:05:48.304	2025-05-17 07:56:13.986	1
705	2	/var/uploads/12-1747711263574.png	ETC-1608	190	620	\N	2	1	\N	1	\N	2025-05-20 03:17:28.049	2025-05-20 03:21:03.667	1
281	1	/var/uploads/a-1747905571619.png	BT-A	85	0	75*150	1	1	\N	1	\N	2025-02-18 07:44:46.722	2025-05-22 09:19:31.649	1
282	1	/var/uploads/c-1747905635104.png	BT-C	85	0	75*150	1	1	\N	1	\N	2025-02-18 07:44:46.722	2025-05-22 09:20:35.222	1
283	1	/var/uploads/d-1747905745279.png	BT-D	85	0	75*150	1	1	\N	1	\N	2025-02-18 07:44:46.722	2025-05-22 09:22:25.398	1
286	1	/var/uploads/g-1747905899524.png	BT-G	85	0	75*150	1	1	\N	1	\N	2025-02-18 07:44:46.722	2025-05-22 09:24:59.629	1
287	1	/var/uploads/h-1747905946657.png	BT-H	85	0	75*150	1	1	\N	1	\N	2025-02-18 07:44:46.722	2025-05-22 09:25:46.779	1
289	1	/var/uploads/j-1747906073696.png	BT-J	85	0	75*150	1	1	\N	1	\N	2025-02-18 07:44:46.722	2025-05-22 09:27:53.811	1
290	1	/var/uploads/k-1747906120526.png	BT-K	85	0	75*150	1	1	\N	1	\N	2025-02-18 07:44:46.722	2025-05-22 09:28:40.648	1
285	1	/var/uploads/f-1747906969507.png	BT-F	85	0	75*150	1	1	\N	1	\N	2025-02-18 07:44:46.722	2025-05-22 09:42:49.602	1
666	2	/var/uploads/2P2-1748403295419-1754299546972.png	2P-22	110	0	\N	\N	2	\N	1	22 ลาย	2025-05-28 07:02:45.467	2025-08-04 09:25:47.135	2
717	1	/var/uploads/84562-1751076701289.png	BeaT-0501468-69	55	0	\N	\N	1	\N	1	\N	2025-06-28 02:01:32.593	2025-06-28 02:11:41.456	1
156	1	/var/uploads/1-1746599524528.png	 SY-A0903	120	290	115*70	1	1	\N	1	\N	2025-02-15 09:30:52.774	2025-07-05 04:13:08.645	1
73	1	C:/uploads/SY-A2026-A2027-1739937619065.png	 SY-A2027	55	0	70	1	1	\N	1	\N	2025-02-15 07:43:32.732	2025-07-05 04:13:08.645	1
72	1	C:/uploads/SY-A2026-A2027-1739937607687.png	 SY-A2026	45	0	60	1	1	\N	1	\N	2025-02-15 07:43:32.732	2025-07-05 04:13:08.645	1
71	1	/var/uploads/658-1741549450226.png	SY-A0920	55	0	70	1	1	\N	1	\N	2025-02-15 07:43:32.732	2025-07-05 04:13:08.645	1
70	1	/var/uploads/658-1741549446929.png	SY-A0919	45	0	60	1	1	\N	1	\N	2025-02-15 07:43:32.732	2025-07-05 04:13:08.645	1
63	1	C:/uploads/SY-A2031-A2032-A2033-A2037-1739935802254.png	SY-A2037	70	0	90	1	1	\N	1	\N	2025-02-15 07:35:55.666	2025-07-05 04:13:08.645	1
62	1	C:/uploads/SY-A2031-A2032-A2033-A2037-1739935775878.png	SY-A2033	60	0	80	1	1	\N	1	\N	2025-02-15 07:35:55.666	2025-07-05 04:13:08.645	1
363	1	C:/uploads/2-1740214479470.png	SF-A	370	790	\N	\N	1	\N	1	\N	2025-02-19 06:14:55.659	2025-03-12 06:13:19.792	1
362	1	C:/uploads/1-1740214227787.png	SF-K	340	690	\N	\N	1	\N	1	\N	2025-02-19 06:14:55.659	2025-03-12 06:13:19.792	1
61	1	C:/uploads/SY-A2031-A2032-A2033-A2037-1739935758874.png	SY-A2032	50	0	70	1	1	\N	1	\N	2025-02-15 07:35:55.666	2025-07-05 04:13:08.645	1
60	1	C:/uploads/SY-A2031-A2032-A2033-A2037-1739935722923.png	SY-A2031	40	0	60	1	1	\N	1	\N	2025-02-15 07:35:55.666	2025-07-05 04:13:08.645	1
59	1	C:/uploads/SY-A2014-A2015-A2016-1739935585475.png	SY-A2016	80	0	90	1	1	\N	1	\N	2025-02-15 07:35:55.666	2025-07-05 04:13:08.645	1
58	1	C:/uploads/SY-A2014-A2015-A2016-1739935567780.png	SY-A2015	60	0	70	1	1	\N	1	\N	2025-02-15 07:35:55.666	2025-07-05 04:13:08.645	1
57	1	C:/uploads/SY-A2014-A2015-A2016-1739935536943.png	SY-A2014	50	0	60	1	1	\N	1	\N	2025-02-15 07:35:55.666	2025-07-05 04:13:08.645	1
25	1	C:/uploads/SY-A2038-7-1739901356166.png	SY-A2038-7	80	0	70	1	1	\N	1	\N	2025-02-15 07:03:14.764	2025-07-05 04:13:08.645	1
296	1	C:/uploads/1-1740323943799.jpg	BT-TH01	120	0	103*170	1	1	\N	1	\N	2025-02-18 07:47:17.282	2025-03-12 06:13:19.792	1
231	1	C:/uploads/SY-A1008-1739938735981.png	SY-A1008	240	0	60	1	6	\N	1	\N	2025-02-16 09:27:12.609	2025-07-08 02:48:55.11	3
232	1	C:/uploads/SY-A1008-1739938738196.png	SY-A1009	270	0	70	1	6	\N	2	\N	2025-02-16 09:27:12.609	2025-07-08 02:48:55.11	3
233	1	C:/uploads/SY-A1008-1739938740356.png	SY-A1010	330	0	80	1	6	\N	1	\N	2025-02-16 09:27:12.609	2025-07-08 02:48:55.11	3
234	1	C:/uploads/SY-A1013-1739938822429.png	SY-A1011	240	0	60	1	6	\N	1	\N	2025-02-16 09:27:12.609	2025-07-08 02:48:55.11	3
235	1	C:/uploads/SY-A1013-1739938825492.png	SY-A1012	270	0	70	1	6	\N	2	\N	2025-02-16 09:27:12.609	2025-07-08 02:48:55.11	3
236	1	C:/uploads/SY-A1013-1739938827768.png	SY-A1013	330	0	80	1	6	\N	1	\N	2025-02-16 09:27:12.609	2025-07-08 02:48:55.11	3
355	1	C:/uploads/56-1740154535680.jpg	IC-02	25	90	\N	\N	1	\N	1	\N	2025-02-19 05:36:38.139	2025-07-08 02:53:10.639	1
356	1	C:/uploads/9c-1740154633016.jpg	CW-02	20	190	\N	\N	1	\N	1	\N	2025-02-19 05:36:38.139	2025-07-08 02:56:52.976	1
389	2	/var/uploads/31467-1752290433436.png	AB-31467	240	0	\N	\N	1	\N	1	Bust 46" / Length 44"	2025-02-19 19:00:41.08	2025-07-12 03:20:33.577	1
103	1	C:/uploads/0715-1740081773650.jpg	SY-A0715	120	290	90	1	1	\N	1	\N	2025-02-15 08:17:12.287	2025-07-21 06:57:06.267	1
470	2	/var/uploads/104-1752652767197.png	CN-104	75	0	\N	\N	1	\N	1	Free Size	2025-02-19 23:40:32.988	2025-07-16 07:59:27.42	1
1	1	C:/uploads/SY-A0660-1739430947999.png	SY-A0660 	55	120	27	2	1	\N	1	\N	2025-02-13 06:41:05.439	2025-07-08 02:40:29.655	1
327	1	C:/uploads/3-1740148811143.jpg	1368-3	32	90	\N	\N	1	\N	1	\N	2025-02-18 09:30:20.911	2025-07-08 02:52:29.762	1
622	2	/var/uploads/643-1752289190423.png	ETC-643	180	0	\N	\N	1	\N	1	\N	2025-02-20 02:33:27.75	2025-07-12 02:59:50.612	1
386	2	/var/uploads/72135-1752292250389.png	A-72135	280	0	\N	\N	1	\N	1	Bust 52" / Length 50"	2025-02-19 19:00:41.08	2025-07-12 03:50:50.704	1
701	2	/var/uploads/cover-cn-645-1747472486839.png	CN-645	220	0	\N	\N	1	\N	1	\N	2025-05-17 08:13:07.849	2025-05-17 09:01:26.962	1
297	1	C:/uploads/2-1740323950907.jpg	BT-KB02	120	0	103*170	1	1	\N	1	\N	2025-02-18 07:47:17.282	2025-03-12 06:13:19.792	1
298	1	C:/uploads/3-1740323958918.jpg	BT-PG03	120	0	103*170	1	1	\N	1	\N	2025-02-18 07:47:17.282	2025-03-12 06:13:19.792	1
300	1	C:/uploads/5-1740324059772.jpg	BT-SM05	120	0	103*170	1	1	\N	1	\N	2025-02-18 07:47:17.282	2025-03-12 06:13:19.792	1
301	1	C:/uploads/6-1740323993575.jpg	BT-PN06	120	0	103*170	1	1	\N	1	\N	2025-02-18 07:47:17.282	2025-03-12 06:13:19.792	1
454	2	/var/uploads/3201-1752652943151.png	A-3201	240	0	\N	\N	1	\N	1	Bust 50" / Length 33"	2025-02-19 23:27:59.593	2025-07-16 08:02:23.477	1
621	2	/var/uploads/cn001-1752654570978.png	CN-001	160	0	\N	\N	1	\N	1	\N	2025-02-20 02:33:27.75	2025-07-16 08:29:31.191	1
380	1	C:/uploads/1-1740215604004.png	DRY-001	55	290	\N	\N	1	\N	1	\N	2025-02-19 09:41:41.001	2025-05-20 07:13:10.218	1
292	1	/var/uploads/n-1747906183842.png	BT-N	85	0	75*150	1	1	\N	1	\N	2025-02-18 07:44:46.722	2025-05-22 09:29:43.964	1
738	1	/var/uploads/3-1762737833886.png	DS00455	150	490	\N	\N	1	\N	1	\N	2025-11-10 01:16:38.8	2025-11-10 01:23:54.065	1
739	1	/var/uploads/4-1762737842291.png	DS00460	170	490	\N	\N	1	\N	1	\N	2025-11-10 01:16:38.8	2025-11-10 01:24:02.464	1
360	1	C:/uploads/21-1740200124920.png	BB-B	30	90	\N	\N	6	\N	1	\N	2025-02-19 06:07:41.107	2025-08-26 04:54:24.958	3
272	1	/var/uploads/2L-1755759170448.png	2L	60	0	2	3	1	\N	1	\N	2025-02-18 07:00:58.989	2025-10-10 07:33:20.836	1
378	1	C:/uploads/9-1740269441501.png	BS-9	50	290	\N	\N	1	\N	1	\N	2025-02-19 06:40:01.113	2025-03-12 06:13:19.792	1
377	1	C:/uploads/8-1740269431438.png	BS-8	50	290	\N	\N	1	\N	1	\N	2025-02-19 06:40:01.113	2025-03-12 06:13:19.792	1
374	1	C:/uploads/5-1740269405280.png	BS-5	50	290	\N	\N	1	\N	1	\N	2025-02-19 06:40:01.113	2025-03-12 06:13:19.792	1
293	1	/var/uploads/o-1747906212033.png	BT-O	85	0	75*150	1	1	\N	1	\N	2025-02-18 07:44:46.722	2025-05-22 09:30:12.125	1
567	2	C:/uploads/10-1740643450826.jpg	A-02432	230	0	\N	\N	1	\N	1	Waist 30"/Length 14"	2025-02-20 01:54:12.002	2025-03-12 06:14:47.254	1
566	2	C:/uploads/30-1740643210908.jpg	K-06	230	0	\N	\N	1	\N	1	Waist 25-30"	2025-02-20 01:38:10.386	2025-03-12 06:14:47.254	1
565	2	C:/uploads/40-1740643295608.jpg	K-05	200	0	\N	\N	1	\N	1	Waist 25-30"	2025-02-20 01:38:10.386	2025-03-12 06:14:47.254	1
563	2	/var/uploads/10-1741146113849.png	E-24302	155	0	\N	\N	1	\N	1	Waist 28-38"/Hip 44"/Length 16"	2025-02-20 01:38:10.386	2025-03-12 06:14:47.254	1
561	2	C:/uploads/30-1740643015268.png	E-23710	160	0	\N	\N	1	\N	1	Waist 28-38"/Hip 44"/Length 18"	2025-02-20 01:29:12.692	2025-03-12 06:14:47.254	1
558	2	C:/uploads/20-1740642595311.png	CN-23665	195	0	\N	\N	1	\N	1	Waist 28"/Length 12"	2025-02-20 01:29:12.692	2025-03-12 06:14:47.254	1
568	2	C:/uploads/10-1740643388096.jpg	CN-8041	320	0	\N	\N	2	\N	1	Bust 28-32" / Waist 26-30"	2025-02-20 01:54:12.002	2025-03-12 06:14:47.254	2
573	2	/var/uploads/20-1741146287110.png	E-22317	350	0	\N	\N	1	\N	1	Free Size	2025-02-20 01:54:12.002	2025-03-12 06:14:47.254	1
574	2	C:/uploads/30-1740644033366.png	E-23827	320	0	\N	\N	1	\N	1	Free Size	2025-02-20 01:54:12.002	2025-03-12 06:14:47.254	1
576	2	/var/uploads/20-1741146338656.png	CN-623	750	0	\N	\N	2	\N	1	Set 2 Pcs	2025-02-20 01:54:12.002	2025-03-12 06:14:47.254	2
585	2	/var/uploads/30-1741146972184.png	K-2237	295	0	\N	\N	2	\N	1	Set 2 Pcs	2025-02-20 02:05:48.304	2025-03-12 06:14:47.254	2
595	2	/var/uploads/20-1741147351985.png	K-616	340	0	\N	\N	1	\N	1	Bust 28-40"	2025-02-20 02:05:48.304	2025-03-12 06:14:47.254	1
594	2	/var/uploads/10-1741147269083.png	CN-610	290	0	\N	\N	1	\N	1	Bust 32-34", Waist 26-32", Hip 36-40", Length 52"	2025-02-20 02:05:48.304	2025-03-12 06:14:47.254	1
598	2	/var/uploads/30-1741147591673.png	CN-621	350	0	\N	\N	1	\N	1	\N	2025-02-20 02:15:57.747	2025-03-12 06:14:47.254	1
611	2	/var/uploads/30-1741147706325.png	ETC-632	330	0	\N	\N	1	\N	1	Free Size	2025-02-20 02:15:57.747	2025-03-12 06:14:47.254	1
294	1	/var/uploads/p-1747906269240.png	BT-P	85	0	75*150	1	1	\N	1	\N	2025-02-18 07:44:46.722	2025-05-22 09:31:09.359	1
615	2	/var/uploads/10-1741147886515.png	ETC-626	290	0	\N	\N	1	\N	1	\N	2025-02-20 02:33:27.75	2025-03-12 06:14:47.254	1
443	2	C:/uploads/20-1740641175587.jpg	CN-991	200	0	\N	\N	1	\N	2	Bust 44" / Length 35"	2025-02-19 23:27:59.593	2025-03-12 06:13:19.792	1
462	2	C:/uploads/40-1740641962039.jpg	K-03	240	0	\N	\N	1	\N	1	Bust 28-32"	2025-02-19 23:40:32.988	2025-03-12 06:13:19.792	1
460	2	C:/uploads/10-1740641931423.jpg	K-01	230	0	\N	\N	1	\N	1	Bust 28-32"	2025-02-19 23:40:32.988	2025-03-12 06:13:19.792	1
469	2	/var/uploads/10-1741341274113.png	ETC-103	105	0	\N	\N	1	\N	1	Free Size	2025-02-19 23:40:32.988	2025-03-12 06:13:19.792	1
569	2	\N	K-081	250	0	\N	\N	2	\N	2	\N	2025-02-20 01:54:12.002	2025-03-12 06:14:47.254	2
718	1	/var/uploads/SY-A2245-1751509871370.png	SY-A2245	155	490	150*102	1	1	\N	1	\N	2025-07-03 02:24:30.135	2025-07-03 02:31:11.501	1
96	1	/var/uploads/SY-A1066-1742535965079.png	SY-A1066	35	120	\N	1	1	\N	1	\N	2025-02-15 08:11:11.133	2025-07-05 04:13:08.645	1
24	1	C:/uploads/SY-A2038-5-1739901342318.png	SY-A2038-5	80	0	70	1	1	\N	1	\N	2025-02-15 07:03:14.764	2025-07-05 04:13:08.645	1
23	1	C:/uploads/SY-A2038-3-1739901329960.png	SY-A2038-3	80	0	70	1	1	\N	1	\N	2025-02-15 07:03:14.764	2025-07-05 04:13:08.645	1
22	1	C:/uploads/SY-A2038-2-1739901289524.png	SY-A2038-2	80	0	70	1	1	\N	1	\N	2025-02-15 07:03:14.764	2025-07-05 04:13:08.645	1
21	1	C:/uploads/SY-A2038-1-1739901271001.png	SY-A2038-1	80	0	70	1	1	\N	1	\N	2025-02-15 07:03:14.764	2025-07-05 04:13:08.645	1
6	1	C:/uploads/SY-A2190-1739431097548.png	SY-A2190	430	690	150*80	1	1	\N	1	\N	2025-02-13 06:50:32.09	2025-07-05 04:13:08.645	1
581	2	/var/uploads/604-1752306441705.png	TSS-604	370	0	\N	\N	2	\N	1	Set 2 Pcs	2025-02-20 02:05:48.304	2025-07-12 07:47:21.93	2
562	2	/var/uploads/21059-1752306930827.png	CN-21059	165	0	\N	\N	1	\N	1	Bust 38" / Length 48"	2025-02-20 01:29:12.692	2025-07-12 07:55:31.001	1
559	2	/var/uploads/cn103-1752654835892.png	CN-103	165	0	\N	\N	1	\N	1	Hip 38-42"/Length 18"	2025-02-20 01:29:12.692	2025-07-16 08:33:56.131	1
580	2	/var/uploads/4046-1741583448329.png	TSL-602	600	0	\N	\N	2	\N	1	Set 2 Pcs	2025-02-20 02:05:48.304	2025-03-12 06:14:47.254	2
582	2	/var/uploads/40850-1741587546995.png	TSE-603	460	0	\N	\N	2	\N	1	Set 2 Pcs	2025-02-20 02:05:48.304	2025-03-12 06:14:47.254	2
625	2	/var/uploads/619-1752289492238.png	CN-619	210	0	\N	\N	1	\N	1	Free Size	2025-02-20 02:36:21.179	2025-07-12 03:04:52.447	1
602	2	/var/uploads/10-1741340700785.png	E-630	380	0	\N	\N	1	\N	1	\N	2025-02-20 02:15:57.747	2025-03-12 06:14:47.254	1
673	1	/var/uploads/456-1747808264562.png	Digital	55	350	\N	\N	1	\N	1	\N	2025-02-20 23:59:54.057	2025-05-21 06:17:44.627	1
624	2	\N	CS-9975	100	0	\N	\N	3	\N	2	\N	2025-02-20 02:36:21.179	2025-03-12 06:14:47.254	2
675	1	/var/uploads/0-1747904844550.png	Classic	55	350	\N	\N	1	\N	1	\N	2025-02-20 23:59:54.057	2025-05-22 09:07:24.641	1
660	2	C:/uploads/30-1740644191526.png	SSP-1	55	0	\N	\N	1	\N	1	\N	2025-02-20 03:05:22.488	2025-03-12 06:14:47.254	1
659	2	/var/uploads/20-1741244774198.png	SP-1	110	0	\N	\N	1	\N	1	\N	2025-02-20 03:05:22.488	2025-03-12 06:14:47.254	1
329	1	C:/uploads/5-1740148876715.jpg	1368-5	32	90	\N	\N	1	\N	1	\N	2025-02-18 09:30:20.911	2025-07-08 02:52:29.762	1
670	2	/var/uploads/30-1741148350099.png	ETC-5505	110	0	\N	\N	1	\N	1	\N	2025-02-20 03:05:22.488	2025-03-12 06:14:47.254	1
284	1	/var/uploads/e-1747905798472.png	BT-E	85	0	75*150	1	1	\N	1	\N	2025-02-18 07:44:46.722	2025-05-22 09:23:18.597	1
578	2	/var/uploads/40-1747465611148.png	CN-6001	480	0	\N	\N	3	\N	1	Set 3 Pcs	2025-02-20 01:54:12.002	2025-05-17 07:12:45.649	2
288	1	/var/uploads/i-1747906040303.png	BT-I	85	0	75*150	1	1	\N	1	\N	2025-02-18 07:44:46.722	2025-05-22 09:27:20.423	1
620	2	/var/uploads/30-1747467458205.png	ETC-6201	295	0	\N	\N	1	\N	1	Free Size	2025-02-20 02:33:27.75	2025-07-25 06:38:18.4	1
257	1	C:/uploads/M-1740149257627.jpg	BM	125	0	\N	\N	1	\N	1	\N	2025-02-18 03:17:26.406	2025-08-01 07:44:14.332	1
382	1	C:/uploads/3-1740215626226.png	DRY-003	55	290	\N	\N	1	\N	1	\N	2025-02-19 09:41:41.001	2025-05-20 07:14:31.117	1
383	1	C:/uploads/4-1740215637520.png	DRY-004	55	290	\N	\N	1	\N	1	\N	2025-02-19 09:41:41.001	2025-05-20 07:14:31.117	1
384	1	C:/uploads/5-1740215647821.png	DRY-005	55	290	\N	\N	1	\N	1	\N	2025-02-19 09:41:41.001	2025-05-20 07:14:31.117	1
674	1	C:/uploads/97-1740268396271.jpg	Belt	55	350	\N	\N	1	\N	1	\N	2025-02-20 23:59:54.057	2025-03-12 06:14:47.254	1
385	1	C:/uploads/6-1740215655674.png	DRY-006	55	290	\N	\N	1	\N	1	\N	2025-02-19 09:41:41.001	2025-05-20 07:14:31.117	1
320	1	C:/uploads/66-1740156557080.jpg	SY-A0869	155	0	120	1	1	\N	1	\N	2025-02-18 09:14:37.827	2025-03-12 06:13:19.792	1
4	1	C:/uploads/SY-A0723-1739431058127.png	SY-A0723	65	120	26	2	1	\N	1	\N	2025-02-13 06:50:32.09	2025-07-08 02:40:29.655	1
341	1	C:/uploads/H4-1740208894580.png	H-04	85	150	\N	\N	1	\N	1	\N	2025-02-18 16:22:41.865	2025-03-12 06:13:19.792	1
348	1	C:/uploads/su3-1740210595064.png	SU-03	99	250	23	2	1	\N	1	\N	2025-02-18 16:46:49.809	2025-03-12 06:13:19.792	1
547	2	\N	CN-516	100	0	\N	\N	1	\N	2	Free Size	2025-02-20 01:29:12.692	2025-03-12 06:13:19.792	1
570	2	C:/uploads/30-1740643534832.png	E-24015	290	0	\N	\N	1	\N	1	Free Size	2025-02-20 01:54:12.002	2025-03-12 06:14:47.254	1
291	1	/var/uploads/l-1747906150455.png	BT-L	85	0	75*150	1	1	\N	1	\N	2025-02-18 07:44:46.722	2025-05-22 09:29:10.574	1
7	1	C:/uploads/SY-A0350-1739431115582.png	SY-A0350	65	120	30	2	1	\N	1	\N	2025-02-13 06:50:32.09	2025-07-08 02:40:29.655	1
344	1	/var/uploads/0-1748850172700.png	H-07	45	150	\N	\N	1	\N	1	\N	2025-02-18 16:22:41.865	2025-06-02 07:42:52.876	1
575	2	\N	CN-622	750	0	\N	\N	2	\N	2	Set 2 Pcs	2025-02-20 01:54:12.002	2025-03-12 06:14:47.254	2
577	2	\N	CN-6002	350	0	\N	\N	2	\N	2	Set 2 Pcs	2025-02-20 01:54:12.002	2025-03-12 06:14:47.254	2
579	2	\N	TDD-601	450	0	\N	\N	2	\N	2	Set 2 Pcs	2025-02-20 02:05:48.304	2025-03-12 06:14:47.254	2
332	1	/var/uploads/7845-1748854131804.png	FF	390	0	\N	\N	1	\N	1	\N	2025-02-18 09:45:53.87	2025-06-02 08:48:51.837	1
260	1	C:/uploads/SY-ABC-1740125678727.png	SY-B5023	55	160	L	\N	1	\N	1	\N	2025-02-18 03:29:16.896	2025-07-05 04:13:08.645	1
259	1	C:/uploads/SY-ABC-1740125671404.png	SY-B5022	65	170	XL	\N	1	\N	1	\N	2025-02-18 03:29:16.896	2025-07-05 04:13:08.645	1
247	1	C:/uploads/1q2312-1740129495683.png	SY-63-F	95	190	\N	\N	1	\N	1	\N	2025-02-17 02:10:37.212	2025-07-05 04:13:08.645	1
246	1	C:/uploads/123124-1740129452336.png	SY-5039	85	190	\N	\N	1	\N	1	\N	2025-02-17 02:10:37.212	2025-07-05 04:13:08.645	1
241	1	C:/uploads/2125-1739932215275.png	SY-A2125	110	290	75*75	1	1	\N	1	ฟ้า	2025-02-17 01:55:05.309	2025-07-05 04:13:08.645	1
353	1	C:/uploads/2-1740153715030.jpg	IC-01	10	70	\N	\N	1	\N	1	\N	2025-02-19 05:36:38.139	2025-07-08 02:53:10.639	1
354	1	C:/uploads/8c-1740154250307.jpg	CW-01	15	90	\N	\N	1	\N	1	\N	2025-02-19 05:36:38.139	2025-07-08 02:53:10.639	1
361	1	C:/uploads/45-1740205114447.png	FR-01	69	150	10.50	2	1	\N	1	\N	2025-02-19 06:12:02.613	2025-07-08 02:57:38.24	1
610	2	/var/uploads/635-1752289684405.png	E-635	200	0	\N	\N	1	\N	1	Waist 25-34"/Hip 48"/Length 16"	2025-02-20 02:15:57.747	2025-07-12 03:08:04.594	1
564	2	/var/uploads/806-1752306866107.png	CN-806	185	0	\N	\N	1	\N	1	Bust 38-42" / Length 18"	2025-02-20 01:38:10.386	2025-07-12 07:54:26.299	1
571	2	/var/uploads/22069-1752307032629.png	CN-22069	230	0	\N	\N	1	\N	1	Upper: Bust 34", Length 12"Lower: Waist 26", Hip 32", Length 14"	2025-02-20 01:54:12.002	2025-07-12 07:57:12.806	1
560	2	/var/uploads/23730-1752307137712.png	CN-23730	180	0	\N	\N	1	\N	1	Waist 30"/Length 12"	2025-02-20 01:29:12.692	2025-07-12 07:58:57.908	1
572	2	/var/uploads/21253-1752308177555.png	CN-21253	295	0	\N	\N	1	\N	1	Free Size	2025-02-20 01:54:12.002	2025-07-12 08:16:17.741	1
258	1	/var/uploads/1-1752640377430.png	BL	155	0	\N	\N	1	\N	1	\N	2025-02-18 03:17:26.406	2025-08-01 07:44:23.579	1
584	2	\N	CN-607	425	0	\N	\N	2	\N	2	Set 2 Pcs	2025-02-20 02:05:48.304	2025-03-12 06:14:47.254	2
583	2	\N	CN-608	620	0	\N	\N	3	\N	2	Set 3 Pcs	2025-02-20 02:05:48.304	2025-03-12 06:14:47.254	2
2	1	C:/uploads/SY-A0768-1739431043629.png	SY-A0768	65	120	27	2	1	\N	1	\N	2025-02-13 06:44:07.192	2025-07-08 02:40:29.655	1
589	2	/var/uploads/20-1741147190332.png	CN-613	450	0	\N	\N	1	\N	1	\N	2025-02-20 02:05:48.304	2025-03-12 06:14:47.254	1
588	2	\N	CN-614	400	0	\N	\N	1	\N	2	\N	2025-02-20 02:05:48.304	2025-03-12 06:14:47.254	1
47	1	/var/uploads/565-1741547722451.png	SY-A2110	75	290	\N	\N	1	\N	1	\N	2025-02-15 07:24:27.853	2025-07-08 02:41:16.184	1
593	2	/var/uploads/20-1741583938666.png	CN-22788	310	0	\N	\N	1	\N	1	\N	2025-02-20 02:05:48.304	2025-03-12 06:14:47.254	1
614	2	/var/uploads/a001-1752654304543.png	A-001	295	0	\N	\N	1	\N	1	Free Size	2025-02-20 02:33:27.75	2025-07-16 08:25:21.046	1
601	2	/var/uploads/30-1741582391886.png	ETC-629	280	0	\N	\N	1	\N	1	\N	2025-02-20 02:15:57.747	2025-03-12 06:14:47.254	1
599	2	/var/uploads/20-1741582306685.png	ETC-627	270	0	\N	\N	1	\N	1	\N	2025-02-20 02:15:57.747	2025-03-12 06:14:47.254	1
661	2	/var/uploads/8681-1752289133697.png	8681	105	0	\N	\N	1	\N	1	\N	2025-02-20 03:05:22.488	2025-07-12 02:58:53.855	1
606	2	/var/uploads/20-1741583746944.png	CN-618	290	0	\N	\N	1	\N	1	\N	2025-02-20 02:15:57.747	2025-03-12 06:14:47.254	1
613	2	/var/uploads/10-1741147791903.png	ETC-634	290	0	\N	\N	1	\N	1	Free Size	2025-02-20 02:33:27.75	2025-03-12 06:14:47.254	1
612	2	/var/uploads/40-1741241287522.png	E-636	270	0	\N	\N	1	\N	1	Free Size	2025-02-20 02:15:57.747	2025-03-12 06:14:47.254	1
623	2	/var/uploads/10-1741148093094.png	CN-522	280	0	\N	\N	1	\N	1	\N	2025-02-20 02:36:21.179	2025-03-12 06:14:47.254	1
654	2	\N	TDS	180	0	\N	\N	1	\N	2	\N	2025-02-20 03:05:22.488	2025-03-12 06:14:47.254	1
604	2	/var/uploads/633-1752290103193.png	 E-633	430	0	\N	\N	1	\N	1	Free Size	2025-02-20 02:15:57.747	2025-07-12 03:15:03.334	1
665	2	\N	2P-BB	110	0	\N	\N	2	\N	2	10 สี	2025-02-20 03:05:22.488	2025-03-12 06:14:47.254	2
663	2	\N	2P-AA	110	0	\N	\N	2	\N	2	8 สี	2025-02-20 03:05:22.488	2025-03-12 06:14:47.254	2
592	2	/var/uploads/625-1752290470840.png	ETC-625	290	0	\N	\N	1	\N	1	\N	2025-02-20 02:05:48.304	2025-07-12 03:21:11.066	1
476	2	/var/uploads/30-1741341072812.png	CN-114	105	0	\N	\N	1	\N	1	Free Size	2025-02-19 23:40:32.988	2025-03-12 06:13:19.792	1
474	2	/var/uploads/20-1741341136299.png	CN-110	95	0	\N	\N	1	\N	1	Free Size	2025-02-19 23:40:32.988	2025-03-12 06:13:19.792	1
471	2	/var/uploads/40-1741341203897.png	CN-105	75	0	\N	\N	1	\N	1	Free Size	2025-02-19 23:40:32.988	2025-03-12 06:13:19.792	1
256	1	/var/uploads/3-1760577155353.png	8016-UV	100	290	\N	\N	1	\N	1	\N	2025-02-18 03:06:21.442	2025-10-16 01:12:35.534	1
277	1	/var/uploads/20L-1755759239704.png	20L	140	0	20	3	1	\N	1	\N	2025-02-18 07:00:58.989	2025-10-10 07:33:20.836	1
255	1	/var/uploads/2-1760577141959.png	8016	80	290	\N	\N	1	\N	1	\N	2025-02-18 03:06:21.442	2025-10-16 01:12:22.141	1
466	2	/var/uploads/20-1741426796021.png	CN-100	75	0	\N	\N	1	\N	1	Free Size	2025-02-19 23:40:32.988	2025-03-12 06:13:19.792	1
479	2	/var/uploads/30-1741341008428.png	Q-205	100	0	\N	\N	1	\N	1	Free Size	2025-02-19 23:40:32.988	2025-03-12 06:13:19.792	1
492	2	/var/uploads/30-1741340583466.png	H-5245	95	0	\N	\N	1	\N	1	Free Size	2025-02-20 01:15:15.865	2025-03-12 06:13:19.792	1
591	2	/var/uploads/40-1741340176756.png	CN-612	240	0	\N	\N	1	\N	1	\N	2025-02-20 02:05:48.304	2025-03-12 06:14:47.254	1
600	2	/var/uploads/40-1741340243789.png	ETC-628	270	0	\N	\N	1	\N	1	\N	2025-02-20 02:15:57.747	2025-03-12 06:14:47.254	1
619	2	/var/uploads/20-1741339933263.png	ETC-641	285	0	\N	\N	1	\N	1	Free Size	2025-02-20 02:33:27.75	2025-03-12 06:14:47.254	1
618	2	/var/uploads/10-1741339869447.png	ETC-642	365	0	\N	\N	1	\N	1	Free Size	2025-02-20 02:33:27.75	2025-03-12 06:14:47.254	1
617	2	/var/uploads/30-1741340095431.png	ETC-639	280	0	\N	\N	1	\N	1	Free Size	2025-02-20 02:33:27.75	2025-03-12 06:14:47.254	1
616	2	/var/uploads/20-1741340015346.png	ETC-638	295	0	\N	\N	1	\N	1	Free Size	2025-02-20 02:33:27.75	2025-03-12 06:14:47.254	1
690	1	/var/uploads/5-1741574075324.png	DRY-SP005	130	410	\N	\N	1	\N	1	\N	2025-03-10 02:00:48.443	2025-03-12 06:14:47.254	1
689	1	/var/uploads/4-1741574026808.png	DRY-SP004	130	410	\N	\N	1	\N	1	\N	2025-03-10 02:00:48.443	2025-03-12 06:14:47.254	1
688	1	/var/uploads/3-1741574000815.png	DRY-SP003	130	410	\N	\N	1	\N	1	\N	2025-03-10 02:00:48.443	2025-03-12 06:14:47.254	1
687	1	/var/uploads/2-1741573979239.png	DRY-SP002	130	410	\N	\N	1	\N	1	\N	2025-03-10 02:00:48.443	2025-03-12 06:14:47.254	1
686	1	/var/uploads/1-1741573952426.png	DRY-SP001	130	410	\N	\N	1	\N	1	\N	2025-03-10 02:00:48.443	2025-03-12 06:14:47.254	1
683	1	/var/uploads/3-1741573779659.png	TSK-13	50	290	\N	\N	1	\N	1	\N	2025-03-10 01:52:45.464	2025-03-12 06:14:47.254	1
682	1	/var/uploads/2-1741573758800.png	TSK-12	50	290	\N	\N	1	\N	1	\N	2025-03-10 01:52:45.464	2025-03-12 06:14:47.254	1
684	1	/var/uploads/4-1741573806416.png	TSK-14	50	290	\N	\N	1	\N	1	\N	2025-03-10 01:52:45.464	2025-03-12 06:14:47.254	1
681	1	/var/uploads/1-1741573133004.png	TSK-11	50	290	\N	\N	1	\N	1	\N	2025-03-10 01:52:45.464	2025-03-12 06:14:47.254	1
603	2	/var/uploads/1-1752304642944.png	CN-646	290	0	\N	\N	1	\N	1	Bust 28-34", Waist Free", Hip 24-32", Length 28-30"	2025-02-20 02:15:57.747	2025-07-12 07:17:23.111	1
597	2	/var/uploads/40-1747466302887.png	CN-617	360	0	\N	\N	1	\N	1	\N	2025-02-20 02:05:48.304	2025-05-17 07:18:22.97	1
607	2	/var/uploads/30-1747466737301.png	 CN-615	250	0	\N	\N	1	\N	1	Bust 25-30" / Waist 25-28"	2025-02-20 02:15:57.747	2025-05-17 07:27:32.781	1
608	2	/var/uploads/40-1747466955463.png	A-003	380	0	\N	\N	1	\N	1	Free Size	2025-02-20 02:15:57.747	2025-05-17 07:29:15.596	1
587	2	/var/uploads/1-1747468558693.png	624-1	150	0	\N	\N	1	\N	1	\N	2025-02-20 02:05:48.304	2025-05-17 07:55:58.798	1
685	1	/var/uploads/12-1747731125654.png	SPORT	120	390	\N	\N	1	\N	1	\N	2025-03-10 01:57:04.967	2025-05-20 08:52:05.75	1
664	2	/var/uploads/14-1748415601321.png	2P-CC	110	0	\N	\N	2	\N	1	14 สี	2025-05-28 07:00:01.508	2025-05-28 07:09:21.473	2
609	2	/var/uploads/3-1748592370476.png	 A-002	295	0	\N	\N	2	\N	1	Free Size	2025-05-30 08:06:10.6	2025-05-30 08:07:54.284	2
680	1	/var/uploads/0-1748850907760.png	H-07A	40	0	\N	\N	1	\N	1	\N	2025-03-07 08:25:00.742	2025-06-02 07:55:07.946	1
679	1	/var/uploads/0-1748851084144.png	H-05A	40	0	\N	\N	1	\N	1	\N	2025-03-07 08:25:00.742	2025-06-02 07:58:04.358	1
678	1	/var/uploads/1-1748851355290.png	H-03A	40	0	\N	\N	1	\N	1	\N	2025-03-07 08:25:00.742	2025-06-02 08:02:35.561	1
677	1	/var/uploads/0-1748851801099.png	H-01A	40	0	\N	\N	1	\N	1	\N	2025-03-07 08:25:00.742	2025-06-02 08:10:01.726	1
338	1	/var/uploads/1-1748851826459.png	H-01	45	150	\N	\N	1	\N	1	\N	2025-02-18 16:22:41.865	2025-06-02 08:10:26.618	1
596	2	/var/uploads/1-1745475849197.jpg	ETC-620	220	0	\N	\N	1	\N	1	\N	2025-02-20 02:05:48.304	2025-06-18 03:10:32.671	1
9	2	/var/uploads/9001-1752653437513.png	TS-9001	240	0	\N	\N	1	\N	1	\N	2025-02-13 07:44:37.414	2025-07-16 08:10:37.776	1
10	2	/var/uploads/9002-1752653518945.png	TS-9002	260	0	\N	\N	1	\N	1	\N	2025-02-13 07:44:37.414	2025-07-16 08:11:59.119	1
8	2	/var/uploads/a01-1752654491970.png	A-01	195	0	\N	\N	1	\N	1	\N	2025-02-13 07:44:37.414	2025-07-16 08:28:19.479	1
44	1	/var/uploads/2069-1747473480506.png	SY-A2069	75	290	\N	\N	1	\N	1	\N	2025-02-15 07:24:27.853	2025-07-08 02:41:16.184	1
46	1	C:/uploads/SY-A2071-1739934177406.png	SY-A2071	75	290	\N	\N	1	\N	1	\N	2025-02-15 07:24:27.853	2025-07-08 02:41:16.184	1
48	1	C:/uploads/SY-A2065-1739934271053.png	SY-A2064	120	190	\N	\N	1	\N	1	\N	2025-02-15 07:24:27.853	2025-07-08 02:41:16.184	1
49	1	C:/uploads/SY-A2064-1739934325815.png	SY-A2065	120	190	\N	\N	1	\N	1	\N	2025-02-15 07:24:27.853	2025-07-08 02:41:16.184	1
50	1	C:/uploads/SY-A2080-1739934402491.png	SY-A2080	70	190	70	1	1	\N	1	\N	2025-02-15 07:24:27.853	2025-07-08 02:41:16.184	1
708	1	/var/uploads/3-1747813087111.png	819-4	47	190	67	1	1	\N	1	\N	2025-05-21 07:28:24.906	2025-05-21 07:38:07.36	1
709	1	/var/uploads/4-1747813126294.png	2104-2105	55	190	60	1	2	\N	1	\N	2025-05-21 07:28:24.906	2025-05-21 07:38:46.452	1
51	1	C:/uploads/SY-A2079-1739934859860.png	SY-A2079	60	150	70	1	1	\N	1	\N	2025-02-15 07:27:38.064	2025-07-08 02:41:16.184	1
52	1	C:/uploads/SY-A1168-1739934914890.png	SY-A1168	60	150	85	1	1	\N	1	\N	2025-02-15 07:27:38.064	2025-07-08 02:41:16.184	1
53	1	C:/uploads/0779-1739935150711.png	SY-A0779	20	90	60	1	1	\N	1	\N	2025-02-15 07:27:38.064	2025-07-08 02:41:16.184	1
54	1	C:/uploads/0807-1739936012599.png	SY-A0807	50	120	70	1	1	\N	1	\N	2025-02-15 07:27:38.064	2025-07-08 02:41:16.184	1
87	1	C:/uploads/0921-5-1739938550116.png	SY-A0921	52	100	60	1	1	\N	1	\N	2025-02-15 07:57:57.266	2025-07-08 02:45:16.356	1
88	1	C:/uploads/0921-5-1739938553266.png	SY-A0922	60	120	70	1	1	\N	1	\N	2025-02-15 07:57:57.266	2025-07-08 02:45:16.356	1
89	1	C:/uploads/0921-5-1739938556259.png	SY-A0923	68	140	80	1	1	\N	1	\N	2025-02-15 07:57:57.266	2025-07-08 02:45:16.356	1
90	1	C:/uploads/0921-5-1739938562325.png	SY-A0925	78	150	90	1	1	\N	1	\N	2025-02-15 07:57:57.266	2025-07-08 02:45:16.356	1
91	1	C:/uploads/SY-A1138-1739940764869.png	SY-A1138	110	290	100	1	1	\N	1	\N	2025-02-15 08:01:20.637	2025-07-08 02:45:16.356	1
69	1	C:/uploads/DN-1739936789218.png	SY-A0861	130	290	120	1	1	\N	1	\N	2025-02-15 07:43:32.732	2025-07-14 04:24:41.041	1
68	1	C:/uploads/DN-1739936785226.png	SY-A0948	62	190	90	1	1	\N	1	\N	2025-02-15 07:43:32.732	2025-07-14 04:25:17.861	1
67	1	C:/uploads/DN-1739936755309.png	SY-A0859	38	120	60	1	1	\N	1	\N	2025-02-15 07:43:32.732	2025-07-14 04:25:44.463	1
66	1	C:/uploads/TM-1739936268380.png	SY-A2081	130	290	120	1	1	\N	1	\N	2025-02-15 07:43:32.732	2025-07-14 04:27:19.68	1
64	1	C:/uploads/TM-1739936207470.png	SY-A2028	38	120	\N	1	1	\N	1	\N	2025-02-15 07:43:32.732	2025-07-14 04:27:48.066	1
130	1	C:/uploads/SY-A2029-A2030-1740117936395.png	SY-A2030	90	0	90	1	1	\N	1	\N	2025-02-15 09:11:21.519	2025-03-12 06:09:12.118	1
11	1	C:/uploads/SY-A0381-1739900688033.png	SY-A0381	65	120	30	2	1	\N	1	\N	2025-02-15 06:55:14.798	2025-07-08 02:40:29.655	1
12	1	C:/uploads/SY-A0738-1739900745155.png	SY-A0738	60	120	70	1	1	\N	1	\N	2025-02-15 06:55:14.798	2025-07-08 02:40:29.655	1
13	1	C:/uploads/SY-A0952-1739900823439.png	SY-A0952	65	120	70	1	1	\N	1	\N	2025-02-15 06:55:14.798	2025-07-08 02:40:29.655	1
14	1	C:/uploads/SY-A0775-1739900853008.png	SY-A0775	65	120	73	1	1	\N	1	\N	2025-02-15 06:55:14.798	2025-07-08 02:40:29.655	1
15	1	C:/uploads/SY-A2018-1739900873526.png	 SY-A2018	60	120	70	1	1	\N	1	\N	2025-02-15 06:55:14.798	2025-07-08 02:40:29.655	1
17	1	C:/uploads/SY-A1197-1739900923616.png	SY-A1197	65	120	73	1	1	\N	1	\N	2025-02-15 07:01:03.361	2025-07-08 02:40:29.655	1
18	1	C:/uploads/SY-A0901-1739901039326.png	SY-A0901	75	150	73	1	1	\N	1	\N	2025-02-15 07:01:03.361	2025-07-08 02:40:29.655	1
19	1	C:/uploads/SY-A2002-A2003-1740734353537.png	SY-A2002	75	0	60	1	1	\N	1	\N	2025-02-15 07:01:03.361	2025-07-08 02:40:29.655	1
20	1	C:/uploads/SY-A2002-A2003-1740734360303.png	SY-A2003	85	0	70	1	1	\N	1	\N	2025-02-15 07:01:03.361	2025-07-08 02:40:29.655	1
26	1	C:/uploads/SY-A0916-1739901409167.png	SY-A0916	80	160	28*23	2	1	\N	1	\N	2025-02-15 07:05:34.139	2025-07-08 02:40:29.655	1
27	1	C:/uploads/SY-A1061-1739901437056.png	SY-A1061	80	160	30	2	1	\N	1	\N	2025-02-15 07:05:34.139	2025-07-08 02:40:29.655	1
28	1	C:/uploads/SY-A1000-002-1739901796443.png	SY-A1000-002	125	290	75*70	1	1	\N	1	\N	2025-02-15 07:08:05.252	2025-07-08 02:40:29.655	1
29	1	C:/uploads/SY-A0873-1739901832029.png	SY-A0873	70	150	70	1	1	\N	1	\N	2025-02-15 07:12:34.958	2025-07-08 02:40:29.655	1
30	1	C:/uploads/SY-A0771-1739901870582.png	SY-A0771	110	150	95*75	1	1	\N	1	\N	2025-02-15 07:12:34.958	2025-07-08 02:40:29.655	1
31	1	C:/uploads/SY-A0758-1739901947746.png	SY-A0758	110	250	95*75	1	1	\N	1	\N	2025-02-15 07:12:34.958	2025-07-08 02:40:29.655	1
32	1	C:/uploads/SY-A0778-1739901981689.png	SY-A0778	110	250	95*75	1	1	\N	1	\N	2025-02-15 07:12:34.958	2025-07-08 02:40:29.655	1
141	1	C:/uploads/SY-A2049-60-70-80-90-1740119216434.png	SY-A2049	270	99	\N	1	6	\N	1	\N	2025-02-15 09:21:56.503	2025-07-08 02:45:42.777	3
145	1	C:/uploads/SY- A2050-1740119312533.png	SY-A2050	270	0	\N	1	6	\N	1	\N	2025-02-15 09:24:10.824	2025-07-08 02:45:42.777	3
189	1	C:/uploads/SY-A2119-1740128765018.png	SY-A2119	60	120	26	2	1	\N	1	\N	2025-02-16 02:47:38.254	2025-07-08 02:46:34.037	1
187	1	/var/uploads/2-1749099197174.png	9503	15	55	\N	\N	1	\N	1	\N	2025-02-16 02:35:28.862	2025-07-08 02:46:34.037	1
163	1	C:/uploads/qwer22-1740124451891.png	GG-2025	35	120	\N	\N	1	\N	1	\N	2025-02-15 09:40:07.547	2025-07-08 02:46:34.037	1
164	1	C:/uploads/qwe2-1740124458211.png	PVC	30	120	\N	\N	1	\N	1	\N	2025-02-15 09:40:07.547	2025-07-08 02:46:34.037	1
195	1	C:/uploads/SY-A2072-1740128507642.png	SY-A2072	240	0	\N	1	6	\N	1	\N	2025-02-16 02:50:22.827	2025-07-08 02:47:42.222	3
712	1	/var/uploads/2-1748829823911.png	LJK-S	205	450	S	\N	1	\N	1	\N	2025-06-02 01:58:57.945	2025-06-02 02:03:43.94	1
198	1	C:/uploads/SY-A2066-1740128577189.png	SY-A2066	252	0	\N	1	6	\N	1	\N	2025-02-16 02:51:38.212	2025-07-08 02:47:42.222	3
165	1	C:/uploads/SY-5600-1740122668325.png	SY-5600	60	150	\N	\N	1	\N	1	\N	2025-02-15 09:40:07.547	2025-07-08 02:46:34.037	1
166	1	C:/uploads/SY-3110-1740122690158.png	3110	50	150	\N	\N	1	\N	1	\N	2025-02-15 09:40:07.547	2025-07-08 02:46:34.037	1
175	1	/var/uploads/0-1747887841971.png	A9502	10	45	\N	\N	1	\N	1	\N	2025-02-16 02:20:56.071	2025-07-08 02:46:34.037	1
176	1	C:/uploads/SY-A1079-1740124677865.png	A1079	55	190	35	1	1	\N	1	\N	2025-02-16 02:27:28.529	2025-07-08 02:46:34.037	1
177	1	C:/uploads/SY-A1106-1740124743799.png	SY-A1106	25	90	\N	\N	1	\N	1	\N	2025-02-16 02:27:28.529	2025-07-08 02:46:34.037	1
178	1	C:/uploads/SY-A0898-A0899-A0900-1740124787399.png	SY-A0898	65	0	XL	\N	1	\N	1	\N	2025-02-16 02:27:28.529	2025-07-08 02:46:34.037	1
179	1	C:/uploads/SY-A0898-A0899-A0900-1740124790565.png	SY-A0899	60	0	L	\N	1	\N	1	\N	2025-02-16 02:27:28.529	2025-07-08 02:46:34.037	1
180	1	C:/uploads/SY-A0898-A0899-A0900-1740124793800.png	SY-A0900	50	0	M	\N	1	\N	1	\N	2025-02-16 02:27:28.529	2025-07-08 02:46:34.037	1
207	1	C:/uploads/SY-A2083-A2085-1740128453994.png	 SY-A2085	510	0	90	1	6	\N	1	\N	2025-02-16 02:55:26.131	2025-07-08 02:47:42.222	3
208	1	C:/uploads/SY-A2149-1740128025835.png	SY-A2149	222	0	\N	1	6	\N	1	\N	2025-02-16 02:57:01.637	2025-07-08 02:47:42.222	3
210	1	C:/uploads/SY-A2158-1740128102060.png	SY-A2158	318	0	\N	1	6	\N	1	\N	2025-02-16 02:58:35.39	2025-07-08 02:47:42.222	3
33	1	C:/uploads/SY-A0850-1739902158335.png	SY-A0850	130	250	95*75	1	1	\N	1	\N	2025-02-15 07:17:51.319	2025-07-08 02:40:29.655	1
34	1	C:/uploads/BIGGER-1739902181315.png	Bigger	130	250	95*75	1	1	\N	1	\N	2025-02-15 07:17:51.319	2025-07-08 02:40:29.655	1
264	1	C:/uploads/3-1740211327638.png	H8014-12	100	250	\N	\N	1	\N	1	\N	2025-02-18 04:52:45.998	2025-03-12 06:09:12.118	1
265	1	C:/uploads/4-1740211336765.png	TH-196	125	290	\N	\N	1	\N	1	\N	2025-02-18 04:52:45.998	2025-03-12 06:09:12.118	1
299	1	C:/uploads/4-1740323969065.jpg	BT-PT04	120	0	103*170	1	1	\N	1	\N	2025-02-18 07:47:17.282	2025-03-12 06:13:19.792	1
319	1	C:/uploads/66-1740156552105.jpg	SY-A0868	95	0	90	1	1	\N	1	\N	2025-02-18 09:14:37.827	2025-03-12 06:13:19.792	1
318	1	C:/uploads/66-1740156548594.jpg	SY-A0867	65	0	70	1	1	\N	1	\N	2025-02-18 09:14:37.827	2025-03-12 06:13:19.792	1
317	1	C:/uploads/6-1740321705589.jpg	BB-06	80	0	60*60	1	1	\N	1	\N	2025-02-18 08:52:02.079	2025-03-12 06:13:19.792	1
316	1	C:/uploads/5-1740321696661.jpg	BB-05	80	0	60*60	1	1	\N	1	\N	2025-02-18 08:52:02.079	2025-03-12 06:13:19.792	1
315	1	C:/uploads/4-1740321687789.jpg	BB-04	80	0	60*60	1	1	\N	1	\N	2025-02-18 08:52:02.079	2025-03-12 06:13:19.792	1
314	1	C:/uploads/3-1740321673976.jpg	BB-03	80	0	60*60	1	1	\N	1	\N	2025-02-18 08:52:02.079	2025-03-12 06:13:19.792	1
313	1	C:/uploads/2-1740321664283.jpg	BB-02	80	0	60*60	1	1	\N	1	\N	2025-02-18 08:52:02.079	2025-03-12 06:13:19.792	1
312	1	C:/uploads/1-1740321652971.jpg	BB-01	80	0	60*60	1	1	\N	1	\N	2025-02-18 08:52:02.079	2025-03-12 06:13:19.792	1
35	1	C:/uploads/SY-A0840-1739902233479.png	SY-A0840	130	250	95*75	1	1	\N	1	\N	2025-02-15 07:17:51.319	2025-07-08 02:40:29.655	1
343	1	C:/uploads/h6-1740209566131.png	H-06	85	150	\N	\N	1	\N	1	\N	2025-02-18 16:22:41.865	2025-03-12 06:13:19.792	1
339	1	C:/uploads/h2-1740207829044.png	H-02	85	150	\N	\N	1	\N	1	\N	2025-02-18 16:22:41.865	2025-03-12 06:13:19.792	1
347	1	C:/uploads/su2-1740210588616.png	SU-02	45	150	25	2	1	\N	1	\N	2025-02-18 16:46:49.809	2025-03-12 06:13:19.792	1
295	1	/var/uploads/q-1747906300135.png	BT-Q	85	0	75*150	1	1	\N	1	\N	2025-02-18 07:44:46.722	2025-05-22 09:31:40.258	1
250	1	C:/uploads/33-1740150171202.jpg	BB-33	1020	490	33	2	6	\N	1	\N	2025-02-17 02:15:01.338	2025-07-05 04:20:37.37	3
242	1	C:/uploads/qw-1740736686075.png	SY-A1006	40	90	60	1	1	\N	1	\N	2025-02-17 01:57:30.29	2025-07-08 02:49:05.974	1
245	1	C:/uploads/qw-1740736660933.png	SY-A1007	45	100	70	1	1	\N	1	\N	2025-02-17 01:57:30.29	2025-07-08 02:49:05.974	1
358	1	/var/uploads/1-1748663830532.png	FF-A	190	690	\N	\N	1	\N	1	\N	2025-05-31 02:51:01.409	2025-05-31 03:57:10.629	1
342	1	/var/uploads/0-1748850344911.png	H-05	45	150	\N	\N	1	\N	1	\N	2025-02-18 16:22:41.865	2025-06-02 07:45:45.082	1
336	1	/var/uploads/1-1748845921346.png	FF-03	460	890	XS	\N	1	\N	1	\N	2025-06-02 06:32:01.407	2025-06-02 07:16:28.473	1
357	1	/var/uploads/18-1748854566190.png	FF-K	190	690	XS	\N	1	\N	1	\N	2025-02-19 06:02:01.434	2025-06-02 08:56:08.003	1
340	1	/var/uploads/0-1748850622202.png	H-03	45	150	\N	\N	1	\N	1	\N	2025-02-18 16:22:41.865	2025-06-02 07:50:22.441	1
36	1	C:/uploads/2054-1739933837506.png	SY-A2053	65	190	70	1	1	\N	1	\N	2025-02-15 07:17:51.319	2025-07-08 02:40:29.655	1
37	1	C:/uploads/2053-1739933887399.png	SY-A2054	65	190	70	1	1	\N	1	\N	2025-02-15 07:17:51.319	2025-07-08 02:40:29.655	1
251	1	C:/uploads/41-1740150199462.jpg	BB-41	1260	690	41	2	6	\N	1	\N	2025-02-17 02:15:01.338	2025-07-05 04:20:37.37	3
252	1	C:/uploads/26-1740150626808.jpg	BBR-26	900	350	26	2	6	\N	1	\N	2025-02-17 02:20:18.02	2025-07-05 04:20:37.37	3
253	1	C:/uploads/33-1740150656158.jpg	BBR-33	1020	490	33	2	6	\N	1	\N	2025-02-17 02:20:18.02	2025-07-05 04:20:37.37	3
262	1	C:/uploads/77-1740204435262.png	M-8023S03	120	290	SMALL	\N	1	\N	1	\N	2025-02-18 04:45:45.865	2025-07-08 02:49:52.174	1
263	1	C:/uploads/76-1740204441650.png	M-8023S13	130	290	SMALL	\N	1	\N	1	\N	2025-02-18 04:45:45.865	2025-07-08 02:49:52.174	1
266	1	C:/uploads/5-1740212422605.png	00594	135	290	SMALL	\N	1	\N	1	\N	2025-02-18 06:34:32.413	2025-07-08 02:50:01.927	1
267	1	C:/uploads/6-1740212554369.png	00594-TT	135	290	SMALL	\N	1	\N	1	\N	2025-02-18 06:34:32.413	2025-07-08 02:50:01.927	1
268	1	C:/uploads/7-1740212604082.png	00250	140	290	Standard	\N	1	\N	1	\N	2025-02-18 06:34:32.413	2025-07-08 02:50:01.927	1
269	1	C:/uploads/8-1740213192059.png	00250-TT	140	290	Standard	\N	1	\N	1	\N	2025-02-18 06:44:37.175	2025-07-08 02:50:01.927	1
270	1	C:/uploads/9-1740214940540.png	DS00595	150	390	BIG	\N	1	\N	1	\N	2025-02-18 06:48:46.181	2025-07-08 02:50:01.927	1
303	1	C:/uploads/44-1740322657520.jpg	3286	1260	0	34*64	2	6	\N	1	\N	2025-02-18 08:17:24.243	2025-07-08 02:52:16.602	3
304	1	C:/uploads/43-1740322651138.jpg	1462	1260	0	34*64	2	6	\N	1	\N	2025-02-18 08:17:24.243	2025-07-08 02:52:16.602	3
306	1	C:/uploads/11-1740322040519.jpg	1424	1260	0	34*64	2	6	\N	1	\N	2025-02-18 08:17:24.243	2025-07-08 02:52:16.602	3
307	1	C:/uploads/22-1740322078108.jpg	5062	1260	0	34*64	2	6	\N	1	\N	2025-02-18 08:17:24.243	2025-07-08 02:52:16.602	3
308	1	C:/uploads/33-1740322118095.jpg	1493	1260	0	34*64	2	6	\N	1	\N	2025-02-18 08:17:24.243	2025-07-08 02:52:16.602	3
325	1	C:/uploads/1-1740148736306.jpg	1368-1	32	90	\N	\N	1	\N	1	\N	2025-02-18 09:30:20.911	2025-07-08 02:52:29.762	1
326	1	C:/uploads/2-1740148771204.jpg	1368-2	32	90	\N	\N	1	\N	1	\N	2025-02-18 09:30:20.911	2025-07-08 02:52:29.762	1
328	1	C:/uploads/4-1740148843003.jpg	1368-4	32	90	\N	\N	1	\N	1	\N	2025-02-18 09:30:20.911	2025-07-08 02:52:29.762	1
330	1	C:/uploads/SY-WIND-1740129078186.png	AS	85	190	\N	\N	1	\N	1	\N	2025-02-18 09:45:53.87	2025-07-08 02:52:29.762	1
345	1	C:/uploads/ft-1740210571867.png	FT	30	99	15*30	2	1	\N	1	\N	2025-02-18 16:46:49.809	2025-07-08 02:53:10.639	1
351	1	C:/uploads/2030-1739928595303.png	SY-A2039	120	290	75*70	1	1	\N	1	\N	2025-02-19 01:07:36.998	2025-07-08 02:53:10.639	1
346	1	C:/uploads/su1-1740210579570.png	SU-01	40	130	20	2	1	\N	1	\N	2025-02-18 16:46:49.809	2025-03-12 06:13:19.792	1
38	1	C:/uploads/2055-1739933952608.png	SY-A2055	65	190	70	1	1	\N	1	\N	2025-02-15 07:17:51.319	2025-07-08 02:40:29.655	1
39	1	C:/uploads/SY-A1150-1739902330127.png	SY-A1150	65	190	70	1	1	\N	1	\N	2025-02-15 07:18:59.167	2025-07-08 02:40:29.655	1
40	1	C:/uploads/SY-A2057-1739902367233.png	SY-A2057	65	190	70	1	1	\N	1	\N	2025-02-15 07:18:59.167	2025-07-08 02:40:29.655	1
41	1	C:/uploads/SY-E0117-1739902400590.png	SY-E0117	65	190	73	1	1	\N	1	\N	2025-02-15 07:20:28.429	2025-07-08 02:40:29.655	1
388	2	/var/uploads/32771-1752291080366.png	A-32771	240	0	\N	\N	1	\N	1	Bust 34" / Length 50"	2025-02-19 19:00:41.08	2025-07-12 03:31:20.548	1
379	1	C:/uploads/10-1740269448755.png	BS-10	50	290	\N	\N	1	\N	1	\N	2025-02-19 06:40:01.113	2025-03-12 06:13:19.792	1
376	1	C:/uploads/7-1740269421269.png	BS-7	50	290	\N	\N	1	\N	1	\N	2025-02-19 06:40:01.113	2025-03-12 06:13:19.792	1
375	1	C:/uploads/6-1740269413198.png	BS-6	50	290	\N	\N	1	\N	1	\N	2025-02-19 06:40:01.113	2025-03-12 06:13:19.792	1
373	1	C:/uploads/4-1740269397397.png	BS-4	50	290	\N	\N	1	\N	1	\N	2025-02-19 06:40:01.113	2025-03-12 06:13:19.792	1
372	1	C:/uploads/3-1740269383979.png	BS-3	50	290	\N	\N	1	\N	1	\N	2025-02-19 06:40:01.113	2025-03-12 06:13:19.792	1
371	1	C:/uploads/2-1740269374653.png	BS-2	50	290	\N	\N	1	\N	1	\N	2025-02-19 06:40:01.113	2025-03-12 06:13:19.792	1
370	1	C:/uploads/1-1740269366623.png	BS-1	50	290	\N	\N	1	\N	1	\N	2025-02-19 06:40:01.113	2025-03-12 06:13:19.792	1
394	2	/var/uploads/44802-1752292136756.png	A-44802	530	0	\N	\N	1	\N	1	Bust 40" / Length 46"	2025-02-19 19:09:44.541	2025-07-12 03:48:58.204	1
403	2	/var/uploads/22399-1752292499344.png	CN-22399	220	0	\N	\N	1	\N	1	Bust 34-40" / Length 44"	2025-02-19 19:15:51.388	2025-07-12 03:54:59.601	1
367	1	C:/uploads/4-1740269876130.png	TSK-07	50	290	\N	\N	1	\N	1	\N	2025-02-19 06:22:17.116	2025-03-12 06:13:19.792	1
366	1	C:/uploads/3-1740269869174.png	TSK-06	50	290	\N	\N	1	\N	1	\N	2025-02-19 06:22:17.116	2025-03-12 06:13:19.792	1
365	1	C:/uploads/2-1740269861681.png	TSK-04	50	290	\N	\N	1	\N	1	\N	2025-02-19 06:22:17.116	2025-03-12 06:13:19.792	1
364	1	C:/uploads/1-1740269852234.png	TSK-01	50	290	\N	\N	1	\N	1	\N	2025-02-19 06:22:17.116	2025-03-12 06:13:19.792	1
391	2	C:/uploads/20-1740626387737.png	 CN-988	210	0	\N	\N	1	\N	1	Free Size	2025-02-19 19:00:41.08	2025-03-12 06:13:19.792	1
400	2	/var/uploads/936-1752652911599.png	C-936	250	0	\N	\N	1	\N	1	Free Size	2025-02-19 19:09:44.541	2025-07-16 08:01:51.736	1
390	2	C:/uploads/10-1740626293223.png	ZX-1072	190	0	\N	\N	1	\N	1	Bust 54" / Length 46"	2025-02-19 19:00:41.08	2025-03-12 06:13:19.792	1
387	2	C:/uploads/20-1740626042961.jpg	A-31389	240	0	\N	\N	1	\N	1	Bust 54" / Length 46"	2025-02-19 19:00:41.08	2025-03-12 06:13:19.792	1
392	2	C:/uploads/30-1740626454720.png	A-9955	1050	0	\N	\N	1	\N	1	\N	2025-02-19 19:00:41.08	2025-03-12 06:13:19.792	1
395	2	C:/uploads/20-1740628376631.png	D-375	305	0	\N	\N	1	\N	1	Waist 38" / Length 54"	2025-02-19 19:09:44.541	2025-03-12 06:13:19.792	1
393	2	C:/uploads/40-1740628219638.png	CN-1200	280	0	\N	\N	1	\N	1	Bust 38" / Length 50"	2025-02-19 19:00:41.08	2025-03-12 06:13:19.792	1
396	2	C:/uploads/30-1740628432469.png	E-24316	235	0	\N	\N	1	\N	1	\N	2025-02-19 19:09:44.541	2025-03-12 06:13:19.792	1
401	2	C:/uploads/40-1740628898944.png	E-24001	235	0	\N	\N	1	\N	1	Bust 34-44" / Length 52"	2025-02-19 19:09:44.541	2025-03-12 06:13:19.792	1
399	2	C:/uploads/20-1740628762232.png	E-24002	215	0	\N	\N	1	\N	1	Free Size	2025-02-19 19:09:44.541	2025-03-12 06:13:19.792	1
398	2	C:/uploads/10-1740628677796.png	E-23829	260	0	\N	\N	1	\N	1	Free Size	2025-02-19 19:09:44.541	2025-03-12 06:13:19.792	1
397	2	C:/uploads/40-1740628543099.png	A-1088	230	0	\N	\N	1	\N	1	Bust 50" / Length 50"	2025-02-19 19:09:44.541	2025-03-12 06:13:19.792	1
411	2	C:/uploads/20-1740639701686.png	E-23841	235	0	\N	\N	1	\N	1	Bust 34-40"/Waist 46"/Hip 44"/Length 50"	2025-02-19 19:22:29.922	2025-03-12 06:13:19.792	1
408	2	/var/uploads/30-1741141169723.png	E-23801	200	0	\N	\N	1	\N	1	Free Size	2025-02-19 19:15:51.388	2025-03-12 06:13:19.792	1
407	2	C:/uploads/20-1740637919186.png	E-23716	220	0	\N	\N	1	\N	1	Free Size	2025-02-19 19:15:51.388	2025-03-12 06:13:19.792	1
406	2	C:/uploads/10-1740637853163.png	E-23675	235	0	\N	\N	1	\N	1	Free Size	2025-02-19 19:15:51.388	2025-03-12 06:13:19.792	1
404	2	C:/uploads/30-1740637664916.png	E-23125	335	0	\N	\N	1	\N	1	Bust 34-42" / Length 50"	2025-02-19 19:15:51.388	2025-03-12 06:13:19.792	1
402	2	C:/uploads/10-1740637487951.png	D-02	210	0	\N	\N	1	\N	1	Chest 28-42" / Length 46"	2025-02-19 19:15:51.388	2025-03-12 06:13:19.792	1
409	2	C:/uploads/40-1740638513824.png	E-23731	205	0	\N	\N	1	\N	1	Bust 34-42" / Length 50"	2025-02-19 19:15:51.388	2025-03-12 06:13:19.792	1
413	2	C:/uploads/40-1740639828914.png	E-23844	230	0	\N	\N	1	\N	1	Bust 34-38" / Length 52"	2025-02-19 19:22:29.922	2025-03-12 06:13:19.792	1
412	2	C:/uploads/30-1740639760656.png	E-24009	205	0	\N	\N	1	\N	1	Bust 44" / Length 44"	2025-02-19 19:22:29.922	2025-03-12 06:13:19.792	1
415	2	C:/uploads/20-1740640246027.png	E-24013	215	0	\N	\N	1	\N	1	Bust 34-42" / Length 48"	2025-02-19 19:23:49.804	2025-03-12 06:13:19.792	1
416	2	/var/uploads/10-1741141805986.png	E-23072	215	0	\N	\N	1	\N	1	Bust 34-38" / Length 33"	2025-02-19 19:38:48.905	2025-03-12 06:13:19.792	1
414	2	C:/uploads/10-1740640128364.png	E-24306	275	0	\N	\N	1	\N	1	Free Size	2025-02-19 19:23:49.804	2025-03-12 06:13:19.792	1
381	1	C:/uploads/2-1740215616465.png	DRY-002	55	290	\N	\N	1	\N	1	\N	2025-02-19 09:41:41.001	2025-05-20 07:14:31.117	1
405	2	/var/uploads/22342-1752292775116.png	CN-22342	230	0	\N	\N	1	\N	1	Bust 38" / Length 48"	2025-02-19 19:15:51.388	2025-07-12 03:59:35.335	1
431	2	/var/uploads/31628-1752294710469.png	A-31628	230	0	\N	\N	1	\N	1	Bust 48" / Length 33"	2025-02-19 23:19:39.968	2025-07-12 04:31:50.681	1
369	1	C:/uploads/6-1740269915416.png	TSK-08	50	290	\N	\N	1	\N	1	\N	2025-02-19 06:22:17.116	2025-05-28 01:20:13.716	1
368	1	C:/uploads/5-1740269906521.png	TSK-15	50	290	\N	\N	1	\N	1	\N	2025-02-19 06:22:17.116	2025-05-28 01:20:20.453	1
426	2	/var/uploads/82994-1752294964327.png	A-82994	270	0	\N	\N	1	\N	1	Bust 54" / Length 36"	2025-02-19 19:42:03.584	2025-07-12 04:36:04.533	1
430	2	/var/uploads/3228-1752303288794.png	 A-3228	360	0	\N	\N	1	\N	1	Bust 40" / Length 30"	2025-02-19 23:19:39.968	2025-07-12 06:54:48.994	1
429	2	/var/uploads/22018-1752305008126.png	CN-22018	185	0	\N	\N	1	\N	1	Bust 32-40" / Length 26"	2025-02-19 19:42:03.584	2025-07-12 07:23:28.356	1
428	2	/var/uploads/23329-1752653673367.png	CN-23329	210	0	\N	\N	1	\N	1	Bust 32-40" / Length 28"	2025-02-19 19:42:03.584	2025-07-16 08:14:33.539	1
410	2	/var/uploads/23837-1752653953080.png	E-23837	250	0	\N	\N	1	\N	1	\N	2025-02-19 19:22:29.922	2025-07-16 08:19:13.461	1
447	2	/var/uploads/3250-1752653026942.png	A-3250	250	0	\N	\N	1	\N	1	Bust 48" / Length 37"	2025-02-19 23:27:59.593	2025-07-16 08:03:47.129	1
424	2	C:/uploads/10-1740640801836.png	E-24327	215	0	\N	\N	1	\N	1	Bust 40"/Waist 34"/Length 32"	2025-02-19 19:38:48.905	2025-03-12 06:13:19.792	1
423	2	/var/uploads/40-1741243763679.png	E-24011	200	0	\N	\N	1	\N	1	Free Size	2025-02-19 19:38:48.905	2025-03-12 06:13:19.792	1
421	2	/var/uploads/20-1741141916228.png	E-24305	200	0	\N	\N	1	\N	1	Free Size	2025-02-19 19:38:48.905	2025-03-12 06:13:19.792	1
420	2	/var/uploads/10-1741141902220.png	E-23817	280	0	\N	\N	1	\N	1	Bust 34-38" / Length 35"	2025-02-19 19:38:48.905	2025-03-12 06:13:19.792	1
418	2	/var/uploads/30-1741243262930.png	E-23735	185	0	\N	\N	1	\N	1	Free Size	2025-02-19 19:38:48.905	2025-03-12 06:13:19.792	1
417	2	/var/uploads/40-1741141693539.png	E-23251	260	0	\N	\N	1	\N	1	Bust 34-38" / Length 32"	2025-02-19 19:38:48.905	2025-03-12 06:13:19.792	1
436	2	C:/uploads/10-1740640864125.jpg	A-73023	370	0	\N	\N	1	\N	1	Bust 46" / Length 40"	2025-02-19 23:19:39.968	2025-03-12 06:13:19.792	1
434	2	/var/uploads/10-1741244417815.png	A-81888	250	0	\N	\N	1	\N	1	Bust 50" / Length 44"	2025-02-19 23:19:39.968	2025-03-12 06:13:19.792	1
432	2	/var/uploads/30-1741244277657.png	A-32756	290	0	\N	\N	1	\N	1	Bust 50" / Length 44"	2025-02-19 23:19:39.968	2025-03-12 06:13:19.792	1
449	2	C:/uploads/40-1740641633315.png	A-9250	240	0	\N	\N	1	\N	1	\N	2025-02-19 23:27:59.593	2025-03-12 06:13:19.792	1
445	2	/var/uploads/40-1741242966196.png	A-62744	290	0	\N	\N	1	\N	1	\N	2025-02-19 23:27:59.593	2025-03-12 06:13:19.792	1
444	2	C:/uploads/30-1740641219030.png	A-72000	240	0	\N	\N	1	\N	1	Bust 48" / Length 38"	2025-02-19 23:27:59.593	2025-03-12 06:13:19.792	1
442	2	/var/uploads/10-1741243016400.png	K-04	230	0	\N	\N	1	\N	1	Bust 28-42"	2025-02-19 23:27:59.593	2025-03-12 06:13:19.792	1
441	2	C:/uploads/40-1740641058192.jpg	A-2288	350	0	\N	\N	1	\N	1	Bust 44" / Length 37"	2025-02-19 23:19:39.968	2025-03-12 06:13:19.792	1
440	2	/var/uploads/30-1741242717648.png	A-41669	240	0	\N	\N	1	\N	1	Bust 44" / Length 39"	2025-02-19 23:19:39.968	2025-03-12 06:13:19.792	1
439	2	/var/uploads/20-1741242659803.png	A-82100	240	0	\N	\N	1	\N	1	Bust 38" / Length 48"	2025-02-19 23:19:39.968	2025-03-12 06:13:19.792	1
465	2	/var/uploads/10-1741424750008.png	CN-031	95	0	\N	\N	1	\N	1	Free Size	2025-02-19 23:40:32.988	2025-03-12 06:13:19.792	1
464	2	/var/uploads/10-1741244703937.png	K981	260	0	\N	\N	1	\N	1	Chest 28-40"/Waist 30"/Length 35"	2025-02-19 23:40:32.988	2025-03-12 06:13:19.792	1
463	2	/var/uploads/30-1741142302773.png	K-980	245	0	\N	\N	1	\N	1	Chest 28-40"/Waist 30"/Length 30"	2025-02-19 23:40:32.988	2025-03-12 06:13:19.792	1
461	2	/var/uploads/20-1741242085145.png	K-02	240	0	\N	\N	1	\N	1	Bust 28-32"	2025-02-19 23:40:32.988	2025-03-12 06:13:19.792	1
459	2	/var/uploads/40-1741242138897.png	CN-206	180	0	\N	\N	1	\N	1	Chest 28-40"/Waist 30"/Length 33"	2025-02-19 23:40:32.988	2025-03-12 06:13:19.792	1
458	2	/var/uploads/30-1741242181688.png	CN-4746-3	180	0	\N	\N	1	\N	1	Chest 28-40"/Waist 30"/Length 33"	2025-02-19 23:40:32.988	2025-03-12 06:13:19.792	1
457	2	/var/uploads/20-1741242223346.png	CN-107	180	0	\N	\N	1	\N	1	Chest 28-40"/Waist 30"/Length 33"	2025-02-19 23:40:32.988	2025-03-12 06:13:19.792	1
456	2	/var/uploads/10-1741242267885.png	CN-106	180	0	\N	\N	1	\N	1	Chest 28-40"/Waist 30"/Length 33"	2025-02-19 23:40:32.988	2025-03-12 06:13:19.792	1
455	2	C:/uploads/20-1740641848465.jpg	A-7200	240	0	\N	\N	1	\N	1	Bust 44" / Length 37"	2025-02-19 23:27:59.593	2025-03-12 06:13:19.792	1
453	2	C:/uploads/40-1740641748317.jpg	A-5208-1	330	0	\N	\N	1	\N	1	Bust 44" / Length 37"	2025-02-19 23:27:59.593	2025-03-12 06:13:19.792	1
452	2	/var/uploads/30-1741243133579.png	A-8211	240	0	\N	\N	1	\N	1	Bust 44" / Length 37"	2025-02-19 23:27:59.593	2025-03-12 06:13:19.792	1
450	2	C:/uploads/10-1740641687240.jpg	A-7222	290	0	\N	\N	1	\N	1	Bust 48" / Length 38"	2025-02-19 23:27:59.593	2025-03-12 06:13:19.792	1
475	2	/var/uploads/40-1741242368807.png	CN-113	75	0	\N	\N	1	\N	1	Free Size	2025-02-19 23:40:32.988	2025-03-12 06:13:19.792	1
419	2	/var/uploads/23709-1752294396165.png	E-23709	220	0	\N	\N	1	\N	1	Free Size	2025-02-19 19:38:48.905	2025-07-12 04:26:36.377	1
468	2	/var/uploads/30-1741424822709.png	CN-102	75	0	\N	\N	1	\N	1	Free Size	2025-02-19 23:40:32.988	2025-03-12 06:13:19.792	1
467	2	/var/uploads/40-1741424661158.png	CN-101	75	0	\N	\N	1	\N	1	Free Size	2025-02-19 23:40:32.988	2025-03-12 06:13:19.792	1
481	2	/var/uploads/10-1741142361663.png	CN-552	100	0	\N	\N	1	\N	1	Free Size	2025-02-20 01:15:15.865	2025-03-12 06:13:19.792	1
422	2	/var/uploads/24016-1752294566197.png	E-24016	215	0	\N	\N	1	\N	1	Free Size	2025-02-19 19:38:48.905	2025-07-12 04:29:26.412	1
484	2	/var/uploads/40-1741142410217.png	CM-317	95	0	\N	\N	1	\N	1	Free Size	2025-02-20 01:15:15.865	2025-03-12 06:13:19.792	1
480	2	/var/uploads/40-1747463800771.png	CN-202	100	0	\N	\N	1	\N	1	Free Size	2025-02-19 23:40:32.988	2025-05-17 06:37:44.064	1
472	2	/var/uploads/108-1752301993102.png	CN-108	95	0	\N	\N	1	\N	1	Free Size	2025-02-19 23:40:32.988	2025-07-12 06:33:13.23	1
482	2	/var/uploads/20-1747463994399.png	CN-333	100	0	\N	\N	1	\N	1	Free Size	2025-02-20 01:15:15.865	2025-05-17 06:39:54.574	1
483	2	/var/uploads/30-1747464154524.png	CN-556	100	0	\N	\N	1	\N	1	Free Size	2025-02-20 01:15:15.865	2025-05-17 06:43:21.981	1
478	2	/var/uploads/116-1752303204323.png	CN-116	75	0	\N	\N	1	\N	1	Free Size	2025-02-19 23:40:32.988	2025-07-12 06:53:24.484	1
437	2	/var/uploads/33664-1752305177236.png	A-33664	380	0	\N	\N	1	\N	1	Bust 46" / Length 40"	2025-02-19 23:19:39.968	2025-07-12 07:26:17.405	1
438	2	/var/uploads/53456-1752305262619.png	A-53456	380	0	\N	\N	1	\N	1	Bust 28-40"	2025-02-19 23:19:39.968	2025-07-12 07:27:42.727	1
448	2	/var/uploads/2204-1752308089049.png	A-2204	270	0	\N	\N	1	\N	1	\N	2025-02-19 23:27:59.593	2025-07-12 08:14:49.206	1
451	2	/var/uploads/5208-1752653151364.png	A-5208	330	0	\N	\N	1	\N	1	Bust 44" / Length 37"	2025-02-19 23:27:59.593	2025-07-16 08:05:51.669	1
446	2	/var/uploads/7199-1752653269974.png	A-7199	240	0	\N	\N	1	\N	1	Bust 48" / Length 39"	2025-02-19 23:27:59.593	2025-07-16 08:07:50.211	1
433	2	/var/uploads/9022-1752653578312.png	CN-9022	170	0	\N	\N	1	\N	1	Bust 42" / Length 28"	2025-02-19 23:19:39.968	2025-07-16 08:12:58.536	1
435	2	/var/uploads/62501-1752654049138.png	A-62501	250	0	\N	\N	1	\N	1	Bust 58" / Length 40"	2025-02-19 23:19:39.968	2025-07-16 08:20:49.465	1
427	2	/var/uploads/72541-1752654113583.png	A-72541	270	0	\N	\N	1	\N	1	Bust 44" / Length 34"	2025-02-19 19:42:03.584	2025-07-16 08:21:53.931	1
486	2	/var/uploads/20-1741340326650.png	CN-901	160	0	\N	\N	1	\N	1	Free Size	2025-02-20 01:15:15.865	2025-03-12 06:13:19.792	1
485	2	\N	CN-696	100	0	\N	\N	1	\N	2	Free Size	2025-02-20 01:15:15.865	2025-03-12 06:13:19.792	1
489	2	/var/uploads/10-1741242536781.png	CN-4746	95	0	\N	\N	1	\N	1	Free Size	2025-02-20 01:15:15.865	2025-03-12 06:13:19.792	1
490	2	/var/uploads/20-1741142475594.png	CN-4746-1	95	0	\N	\N	1	\N	1	Free Size	2025-02-20 01:15:15.865	2025-03-12 06:13:19.792	1
491	2	/var/uploads/40-1741142515341.png	 CN-4746-2	75	0	\N	\N	1	\N	1	Free Size	2025-02-20 01:15:15.865	2025-03-12 06:13:19.792	1
493	2	/var/uploads/10-1741142578060.png	H-5570	95	0	\N	\N	1	\N	1	Free Size	2025-02-20 01:15:15.865	2025-03-12 06:13:19.792	1
509	2	C:/uploads/20-1740642425717.jpg	CN-510	100	0	\N	\N	1	\N	1	Free Size	2025-02-20 01:17:05.954	2025-03-12 06:13:19.792	1
508	2	/var/uploads/10-1741145087993.png	CN-509	100	0	\N	\N	1	\N	1	Free Size	2025-02-20 01:17:05.954	2025-03-12 06:13:19.792	1
506	2	/var/uploads/40-1741144768510.png	CN-507	100	0	\N	\N	1	\N	1	Free Size	2025-02-20 01:15:15.865	2025-03-12 06:13:19.792	1
505	2	C:/uploads/20-1740642196164.jpg	CN-506	100	0	\N	\N	1	\N	1	Free Size	2025-02-20 01:15:15.865	2025-03-12 06:13:19.792	1
503	2	/var/uploads/30-1741142662048.png	CN-504	100	0	\N	\N	1	\N	1	Free Size	2025-02-20 01:15:15.865	2025-03-12 06:13:19.792	1
504	2	/var/uploads/10-1741143066212.png	CN-505	100	0	\N	\N	1	\N	1	Free Size	2025-02-20 01:15:15.865	2025-03-12 06:13:19.792	1
501	2	C:/uploads/20-1740642222563.jpg	CN-502	100	0	\N	\N	1	\N	1	Free Size	2025-02-20 01:15:15.865	2025-03-12 06:13:19.792	1
500	2	/var/uploads/10-1741241443772.png	CN-501	100	0	\N	\N	1	\N	1	Free Size	2025-02-20 01:15:15.865	2025-03-12 06:13:19.792	1
550	2	\N	CN-1013	150	0	\N	\N	1	\N	2	Waist 25-30"/Length 15"	2025-02-20 01:29:12.692	2025-03-12 06:13:19.792	1
548	2	/var/uploads/10-1741145478634.png	CN-517	100	0	\N	\N	1	\N	1	Bust 28-36"	2025-02-20 01:29:12.692	2025-03-12 06:13:19.792	1
545	2	/var/uploads/20-1741145167918.jpg	CN-514	100	0	\N	\N	1	\N	1	Free Size	2025-02-20 01:29:12.692	2025-03-12 06:13:19.792	1
510	2	\N	CN-511	100	0	\N	\N	1	\N	2	Free Size	2025-02-20 01:17:05.954	2025-03-12 06:13:19.792	1
544	2	/var/uploads/10-1741145153849.png	CN-513	100	0	\N	\N	1	\N	1	Free Size	2025-02-20 01:29:12.692	2025-03-12 06:13:19.792	1
511	2	\N	CN-512	100	0	\N	\N	1	\N	2	Free Size	2025-02-20 01:17:05.954	2025-03-12 06:13:19.792	1
557	2	/var/uploads/10-1741145855620.png	K-22	150	0	\N	\N	1	\N	1	Waist 30"/Length 15"	2025-02-20 01:29:12.692	2025-03-12 06:13:19.792	1
555	2	/var/uploads/30-1741241803716.png	CN-0047	150	0	\N	\N	1	\N	1	Waist 25-30"	2025-02-20 01:29:12.692	2025-03-12 06:13:19.792	1
554	2	/var/uploads/20-1741241735144.png	CN-8014	150	0	\N	\N	1	\N	1	Waist 25-30"	2025-02-20 01:29:12.692	2025-03-12 06:13:19.792	1
552	2	/var/uploads/40-1741145716452.png	CN-1015	150	0	\N	\N	1	\N	1	Waist 25-30"	2025-02-20 01:29:12.692	2025-03-12 06:13:19.792	1
551	2	/var/uploads/30-1741145645727.png	CN-1018	150	0	\N	\N	1	\N	1	Waist 25-30"	2025-02-20 01:29:12.692	2025-03-12 06:13:19.792	1
553	2	/var/uploads/10-1741241679154.png	CN-8013	150	0	\N	\N	1	\N	1	Waist 25-30"	2025-02-20 01:29:12.692	2025-03-12 06:13:19.792	1
473	2	/var/uploads/10-1747463054788.png	CN-109	95	0	\N	\N	1	\N	1	Free Size	2025-02-19 23:40:32.988	2025-05-17 06:26:00.889	1
497	2	/var/uploads/20-1747465046624.png	S-002	75	0	\N	\N	1	\N	2	Free Size	2025-02-20 01:15:15.865	2025-05-17 07:01:33.009	1
487	2	/var/uploads/30-1747464618927.png	4677-1	75	0	\N	\N	1	\N	1	Free Size	2025-02-20 01:15:15.865	2025-05-17 06:51:18.102	1
495	2	/var/uploads/31-1747464821023.png	S-001	75	0	\N	\N	1	\N	1	Free Size	2025-02-20 01:15:15.865	2025-05-17 06:53:41.148	1
499	2	/var/uploads/30-1747465333033.png	S-004	75	0	\N	\N	1	\N	1	Free Size	2025-02-20 01:15:15.865	2025-05-17 07:02:13.132	1
496	2	/var/uploads/40-1747464900747.png	 Q-42	95	0	\N	\N	1	\N	1	Free Size	2025-02-20 01:15:15.865	2025-05-17 06:55:00.873	1
713	1	/var/uploads/10-1748830284126.png	LJK-M	210	490	M	\N	1	\N	1	\N	2025-06-02 02:08:48.993	2025-06-02 02:11:24.22	1
488	2	/var/uploads/4677-1752303553350.png	CN-4677	75	0	\N	\N	1	\N	1	Free Size	2025-02-20 01:15:15.865	2025-07-12 06:59:13.532	1
240	1	C:/uploads/2123-1739932181881.png	SY-A2124	110	290	75*75	1	1	\N	1	ส้ม	2025-02-17 01:55:05.309	2025-07-05 04:13:08.645	1
239	1	C:/uploads/2124-1739932106649.png	SY-A2123	110	290	75*75	1	1	\N	1	แดง	2025-02-17 01:55:05.309	2025-07-05 04:13:08.645	1
706	1	/var/uploads/1-1747812943728.png	698-5	40	190	69	1	1	\N	1	\N	2025-05-21 07:28:24.906	2025-05-21 07:35:43.877	1
707	1	/var/uploads/2-1747813042884.png	841	45	190	51	1	2	\N	1	\N	2025-05-21 07:28:24.906	2025-05-21 07:37:23.042	1
546	2	/var/uploads/4657873212-1748588241727.png	CN-515	100	0	\N	\N	1	\N	1	Free Size	2025-02-20 01:29:12.692	2025-05-30 06:57:21.855	1
498	2	/var/uploads/20-1748665456771.png	S-003	75	0	\N	\N	1	\N	1	Free Size	2025-02-20 01:15:15.865	2025-05-31 04:24:16.792	1
226	1	C:/uploads/SY-A2180-1740126808668.png	SY-A2180	130	290	90	1	1	\N	1	\N	2025-02-16 03:06:54.209	2025-07-05 04:13:08.645	1
225	1	C:/uploads/SY-A2177-1740126750200.png	SY-A2177	70	109	70	1	1	\N	1	\N	2025-02-16 03:06:54.209	2025-07-05 04:13:08.645	1
224	1	C:/uploads/SY-A2179-1740126546356.png	SY-A2179	100	190	100	1	1	\N	1	\N	2025-02-16 03:06:54.209	2025-07-05 04:13:08.645	1
222	1	C:/uploads/SY-A2095-1740126424794.png	SY-A2095	235	390	160*84	1	1	\N	1	\N	2025-02-16 03:06:54.209	2025-07-05 04:13:08.645	1
221	1	C:/uploads/SY-A2094-A2094G-1740126349811.png	SY-A2094	235	390	160*84	1	1	\N	1	\N	2025-02-16 03:06:54.209	2025-07-05 04:13:08.645	1
219	1	C:/uploads/SY-A2133-Purple-Yellow-1740127445994.png	SY-A2133	70	0	\N	1	1	\N	1	\N	2025-02-16 03:03:23.715	2025-07-05 04:13:08.645	1
223	1	C:/uploads/SY-A5029-1740126499654.png	SY-A5029	195	299	120*65	1	1	\N	1	\N	2025-02-16 03:06:54.209	2025-07-05 04:13:08.645	1
494	2	/var/uploads/5601-1752304889202.png	H-5601	80	0	\N	\N	1	\N	1	Free Size	2025-02-20 01:15:15.865	2025-07-12 07:21:29.446	1
556	2	/var/uploads/423-1752306249432.png	CN-423	150	0	\N	\N	1	\N	1	Waist 25-30"	2025-02-20 01:29:12.692	2025-07-12 07:44:09.59	1
502	2	/var/uploads/503-1752307659568.png	CN-503	100	0	\N	\N	1	\N	1	Free Size	2025-02-20 01:15:15.865	2025-07-12 08:07:39.758	1
507	2	/var/uploads/508-1752307892556.png	CN-508	100	0	\N	\N	1	\N	1	Free Size	2025-02-20 01:15:15.865	2025-07-12 08:11:32.689	1
549	2	/var/uploads/1011-1752307980335.png	CN-1011	150	0	\N	\N	1	\N	1	Waist 25-30"	2025-02-20 01:29:12.692	2025-07-12 08:13:00.497	1
42	1	C:/uploads/SY-A0501-1739934798753.png	SY-A0501	65	190	73	1	1	\N	1	\N	2025-02-15 07:20:28.429	2025-07-08 02:40:29.655	1
43	1	C:/uploads/SY-A2041-1739902544722.png	SY-A2041	75	190	70	1	1	\N	1	\N	2025-02-15 07:20:28.429	2025-07-08 02:40:29.655	1
302	1	C:/uploads/41-1740322634552.jpg	1417	1260	0	34*64	2	6	\N	1	\N	2025-02-18 08:17:24.243	2025-07-08 02:52:16.602	3
309	1	C:/uploads/1-1740322326089.jpg	1479	1260	0	34*64	2	6	\N	1	\N	2025-02-18 08:34:44.087	2025-07-08 02:52:16.602	3
310	1	C:/uploads/2-1740322339059.jpg	1448	1260	0	34*64	2	6	\N	1	\N	2025-02-18 08:34:44.087	2025-07-08 02:52:16.602	3
311	1	C:/uploads/3-1740322355042.jpg	1431	1260	0	34*64	2	6	\N	1	\N	2025-02-18 08:34:44.087	2025-07-08 02:52:16.602	3
425	2	/var/uploads/1089-1752294198479.png	CN-1089	230	0	\N	\N	1	\N	1	Free Size	2025-02-19 19:38:48.905	2025-07-12 04:23:18.72	1
140	1	C:/uploads/SY-B2029-1740119096713.png	SY-B2029	190	490	58	2	1	\N	1	\N	2025-02-15 09:21:56.503	2025-07-05 04:13:08.645	1
139	1	C:/uploads/SY-A2120-1740119025165.png	SY-A2120	230	490	110	1	1	\N	1	\N	2025-02-15 09:21:56.503	2025-07-05 04:13:08.645	1
138	1	C:/uploads/SY-A0780-A0781-1740118753443.png	SY-A0781	220	0	120	1	1	\N	1	\N	2025-02-15 09:16:33.6	2025-07-05 04:13:08.645	1
137	1	C:/uploads/SY-A0780-A0781-1740118740584.png	SY-A0780	170	0	90	1	1	\N	1	\N	2025-02-15 09:16:33.6	2025-07-05 04:13:08.645	1
136	1	C:/uploads/SY-A0690-Pink-1740118212429.png	SY-A0692	190	490	120	1	1	\N	1	\N	2025-02-15 09:16:33.6	2025-07-05 04:13:08.645	1
45	1	C:/uploads/Untitled-1-1740794072352.png	SY-A2070	75	290	\N	\N	1	\N	1	\N	2025-02-15 07:24:27.853	2025-07-08 02:41:16.184	1
202	1	C:/uploads/SY-A2067-1740128200474.png	SY-A2067	252	0	\N	1	6	\N	1	\N	2025-02-16 02:54:43.218	2025-07-08 02:47:42.222	3
702	1	/var/uploads/2038-6-1747474946504.png	2038-6	480	290	\N	\N	6	\N	1	\N	2025-05-17 09:23:16.133	2025-07-08 02:59:09.786	3
720	1	/var/uploads/7-1752554121625.png	ETC-0145	660	1440	\N	\N	12	\N	1	\N	2025-07-15 04:23:58.846	2025-07-15 07:06:22.321	3
722	1	/var/uploads/9-1752554136093.png	ETC-0147	660	1440	\N	\N	12	\N	1	\N	2025-07-15 04:23:58.846	2025-07-15 07:06:22.321	3
724	1	/var/uploads/11-1752554151663.png	ETC-0149	720	1440	\N	\N	12	\N	1	\N	2025-07-15 04:23:58.846	2025-07-15 07:06:22.321	3
721	1	/var/uploads/8-1752554129551.png	ETC-0146	720	1440	\N	\N	12	\N	1	\N	2025-07-15 04:23:58.846	2025-07-15 07:06:22.321	3
723	1	/var/uploads/10-1752554144280.png	ETC-0148	420	1440	\N	\N	12	\N	1	\N	2025-07-15 04:23:58.846	2025-07-15 07:06:22.321	3
323	1	C:/uploads/3-1740155114667.jpg	1366-3	38	89	18	2	1	\N	1	\N	2025-02-18 09:18:52.244	2025-07-05 04:13:08.645	1
261	1	C:/uploads/SY-ABC-1740125680413.png	SY-B5025	50	150	M	\N	1	\N	1	\N	2025-02-18 03:29:16.896	2025-07-05 04:13:08.645	1
477	2	/var/uploads/10-1747463470241.png	CN-115	130	0	\N	\N	1	\N	1	Free Size	2025-02-19 23:40:32.988	2025-05-17 06:34:50.134	1
703	2	/var/uploads/1-1747710298781.png	ETC-1603	240	790	\N	2	1	\N	1	\N	2025-05-20 02:57:10.811	2025-05-20 03:04:58.855	1
710	2	/var/uploads/plps-1748234004002.png	PLPS	90	0	\N	\N	2	\N	1	\N	2025-05-26 04:30:07.208	2025-05-26 04:33:24.132	2
715	2	/var/uploads/9-1750401303318.png	ETC-647	220	690	\N	\N	1	\N	1	\N	2025-06-20 06:22:37.176	2025-06-20 06:35:03.413	1
100	1	C:/uploads/2118-1740081083681.jpg	SY-A2118	85	159	120*60	1	1	\N	1	\N	2025-02-15 08:11:11.133	2025-07-08 02:45:16.356	1
359	1	C:/uploads/22-1740200067634.png	BB-A	60	150	\N	\N	1	\N	1	\N	2025-02-19 06:07:41.107	2025-07-05 04:13:08.645	1
337	1	C:/uploads/1-1740323496884.jpg	PS	140	390	\N	\N	1	\N	1	\N	2025-02-18 16:12:44.85	2025-07-05 04:13:08.645	1
324	1	C:/uploads/4-1740155122361.jpg	1366-4	38	89	18	2	1	\N	1	\N	2025-02-18 09:18:52.244	2025-07-05 04:13:08.645	1
322	1	C:/uploads/2-1740155107602.jpg	1366-2	38	89	18	2	1	\N	1	\N	2025-02-18 09:18:52.244	2025-07-05 04:13:08.645	1
321	1	C:/uploads/1-1740155100657.jpg	1366-1	38	89	18	2	1	\N	1	\N	2025-02-18 09:18:52.244	2025-07-05 04:13:08.645	1
218	1	C:/uploads/SY-A2107-1-1740127361020.png	SY-A2107-1	130	290	90	1	1	\N	1	\N	2025-02-16 03:03:23.715	2025-07-05 04:13:08.645	1
217	1	C:/uploads/SY-A2099-1740127329296.png	SY-A2099	75	190	70	1	1	\N	1	\N	2025-02-16 03:03:23.715	2025-07-05 04:13:08.645	1
216	1	C:/uploads/SY-A2100-1740127291727.png	SY-A2100	75	190	70	1	1	\N	1	\N	2025-02-16 03:03:23.715	2025-07-05 04:13:08.645	1
215	1	C:/uploads/SY-B2062-1740127049420.png	SY-B2062	80	250	90	1	1	\N	1	\N	2025-02-16 03:03:23.715	2025-07-05 04:13:08.645	1
214	1	C:/uploads/SY-A2128-1740126987377.png	SY-A2128	90	290	100	1	1	\N	1	\N	2025-02-16 03:03:23.715	2025-07-05 04:13:08.645	1
194	1	C:/uploads/4-1740147666794.jpg	SY-A2207	130	390	90	1	1	\N	1	\N	2025-02-16 02:47:38.254	2025-07-05 04:13:08.645	1
193	1	C:/uploads/SY-A2117-1740126175667.png	SY-A2117	75	290	70	1	1	\N	1	\N	2025-02-16 02:47:38.254	2025-07-05 04:13:08.645	1
192	1	C:/uploads/SY-A2096-1740128823534.png	SY-A2096	100	290	70	1	1	\N	1	\N	2025-02-16 02:47:38.254	2025-07-05 04:13:08.645	1
191	1	C:/uploads/SY-A2088-1740126097494.png	SY-A2088	65	169	70	1	1	\N	1	\N	2025-02-16 02:47:38.254	2025-07-05 04:13:08.645	1
190	1	C:/uploads/SY-A2126-1740128716386.png	SY-A2126	60	120	27	2	1	\N	1	\N	2025-02-16 02:47:38.254	2025-07-05 04:13:08.645	1
188	1	C:/uploads/3-1740147186518.jpg	00658	450	890	Standard	\N	1	\N	1	\N	2025-02-16 02:41:46.111	2025-07-05 04:13:08.645	1
184	1	C:/uploads/SY-A0680-1740125206805.png	SY-A0680	350	790	150*100	1	1	\N	1	\N	2025-02-16 02:28:46.968	2025-07-05 04:13:08.645	1
183	1	C:/uploads/SY-A0759-1740125170200.png	SY-A0759	110	290	95*75	1	1	\N	1	\N	2025-02-16 02:28:46.968	2025-07-05 04:13:08.645	1
182	1	C:/uploads/SY-A2183-1740124949687.png	A2183	110	290	118*58	1	1	\N	1	\N	2025-02-16 02:27:28.529	2025-07-05 04:13:08.645	1
181	1	C:/uploads/SY-A0776-1740124852635.png	SY-A0776	25	90	\N	\N	1	\N	1	\N	2025-02-16 02:27:28.529	2025-07-05 04:13:08.645	1
173	1	C:/uploads/SY-6018-1740122911527.png	6018	90	290	\N	\N	1	\N	1	\N	2025-02-16 02:20:56.071	2025-07-05 04:13:08.645	1
162	1	C:/uploads/SY-A0760-1740122514875.png	SY-A0760	430	890	200*140	1	1	\N	1	\N	2025-02-15 09:33:44.396	2025-07-05 04:13:08.645	1
161	1	C:/uploads/SY-A0878-1740122467921.png	SY-A0878	410	890	142*79	1	1	\N	1	\N	2025-02-15 09:33:44.396	2025-07-05 04:13:08.645	1
160	1	C:/uploads/SY-A0547-1740122424210.png	 SY-A0547	370	790	180*80	1	1	\N	1	\N	2025-02-15 09:30:52.774	2025-07-05 04:13:08.645	1
159	1	C:/uploads/SY-A0546-1740122316517.png	 SY-A0546	370	790	193*86	1	1	\N	1	\N	2025-02-15 09:30:52.774	2025-07-05 04:13:08.645	1
157	1	C:/uploads/SY-A0371-1740122190226.png	 SY-A0371-SMALL	270	690	118*65	1	1	\N	1	\N	2025-02-15 09:30:52.774	2025-07-05 04:13:08.645	1
158	1	C:/uploads/SY-A0761-1740122239700.png	 SY-A0761	430	890	150*80	1	1	\N	1	\N	2025-02-15 09:30:52.774	2025-07-05 04:13:08.645	1
155	1	C:/uploads/SY-A0764-1740121981646.png	 SY-A0764	320	790	193*119	1	1	\N	1	\N	2025-02-15 09:30:52.774	2025-07-05 04:13:08.645	1
154	1	C:/uploads/SY-A2191-1740121314637.png	SY-A2191	300	690	127	1	1	\N	1	\N	2025-02-15 09:28:08.333	2025-07-05 04:13:08.645	1
152	1	C:/uploads/SY-A0872-1740120279114.png	SY-A0872	250	490	188*71	1	1	\N	1	\N	2025-02-15 09:28:08.333	2025-07-05 04:13:08.645	1
151	1	C:/uploads/SY-A0732-1740120206952.png	SY-A0732	200	490	160*84	1	1	\N	1	\N	2025-02-15 09:28:08.333	2025-07-05 04:13:08.645	1
150	1	C:/uploads/SY-B2010-1740119487976.png	SY-B2010	190	490	183*69	1	1	\N	1	\N	2025-02-15 09:28:08.333	2025-07-05 04:13:08.645	1
149	1	C:/uploads/SY-B5026-1740119440782.png	SY-B5026	100	290	183*69	1	1	\N	1	\N	2025-02-15 09:28:08.333	2025-07-05 04:13:08.645	1
135	1	C:/uploads/SY-A0690-White-1740118314835.png	SY-A0690	190	490	120	1	1	\N	1	\N	2025-02-15 09:16:33.6	2025-07-05 04:13:08.645	1
134	1	C:/uploads/SY-A0782-1740118580104.png	SY-A0783	190	490	120	1	1	\N	1	\N	2025-02-15 09:14:38.886	2025-07-05 04:13:08.645	1
131	1	C:/uploads/SY-A2052-1740118907720.png	SY-A2052	280	590	117	1	1	\N	1	\N	2025-02-15 09:11:21.519	2025-07-05 04:13:08.645	1
129	1	C:/uploads/SY-A2048-1740118854342.png	SY-A2048	135	290	90	1	1	\N	1	\N	2025-02-15 09:11:21.519	2025-07-05 04:13:08.645	1
105	1	C:/uploads/0782-1740082347626.jpg	SY-A0782	110	290	90	1	1	\N	1	\N	2025-02-15 08:19:38.983	2025-07-08 02:45:16.356	1
106	1	C:/uploads/2046-1740082590297.jpg	SY-A2046	80	190	70	1	1	\N	1	\N	2025-02-15 08:19:38.983	2025-07-08 02:45:16.356	1
119	1	C:/uploads/0957-1740084333598.jpg	SY-A0957	80	190	70	1	1	\N	1	\N	2025-02-15 08:49:35.45	2025-07-08 02:45:16.356	1
120	1	C:/uploads/2000-1740084378824.jpg	SY-A2000	80	190	70	1	1	\N	1	\N	2025-02-15 08:49:35.45	2025-07-08 02:45:16.356	1
121	1	C:/uploads/SY-A2001-1740117512098.png	SY-A2001	85	190	70	1	1	\N	1	\N	2025-02-15 08:49:35.45	2025-07-08 02:45:16.356	1
122	1	C:/uploads/SY-A0799-A0817-A0892-1740117616830.png	SY-A0799	80	190	70	1	1	\N	1	\N	2025-02-15 08:49:35.45	2025-07-08 02:45:16.356	1
104	1	C:/uploads/0382-1740081781465.jpg	SY-A0382	190	490	120	1	1	\N	1	\N	2025-02-15 08:17:12.287	2025-07-21 06:56:03.046	1
5	1	C:/uploads/SY-A2208-1739431075895.png	SY-A2208 	60	190	26	2	1	\N	1	\N	2025-02-13 06:50:32.09	2025-07-05 04:13:08.645	1
125	1	C:/uploads/SY-A0839-A0863-A0893-1740117787925.png	SY-A0839	85	190	70	1	1	\N	1	\N	2025-02-15 09:02:14.256	2025-07-08 02:45:16.356	1
128	1	C:/uploads/SY-A2029-A2030-1740117932563.png	SY-A2029	55	0	70	1	1	\N	1	\N	2025-02-15 09:11:21.519	2025-07-08 02:45:16.356	1
132	1	C:/uploads/SY-A0795-A0862-1740118021312.png	SY-A0795	85	190	70	1	1	\N	1	\N	2025-02-15 09:13:38.046	2025-07-08 02:45:16.356	1
124	1	/var/uploads/13-1756780552641.png	SY-A0892	155	490	120	1	1	\N	1	\N	2025-02-15 08:49:35.45	2025-09-02 02:35:52.795	1
123	1	/var/uploads/SY-A0817-1755760485874.png	SY-A0817	120	390	90	1	1	\N	1	\N	2025-02-15 08:49:35.45	2025-08-21 07:14:46.06	1
127	1	/var/uploads/15-1756780570734.png	SY-A0893	155	490	120	1	1	\N	1	\N	2025-02-15 09:02:14.256	2025-09-02 02:36:10.895	1
732	1	/var/uploads/3-1756783453454.png	SY-A2202	60	199	70	1	1	\N	1	\N	2025-09-02 03:08:42.844	2025-09-02 03:24:13.769	1
153	1	/var/uploads/new-pro-5-1760941403310.png	SY-A0347	300	690	127	1	1	\N	1	\N	2025-02-15 09:28:08.333	2025-10-20 06:23:23.465	1
171	1	/var/uploads/1-1760577103112.png	5031	100	290	\N	\N	1	\N	1	\N	2025-02-16 02:20:56.071	2025-10-16 01:11:43.25	1
174	1	/var/uploads/4-1760577226640.png	8025	145	490	\N	\N	1	\N	1	\N	2025-02-16 02:20:56.071	2025-10-16 01:13:46.957	1
719	2	/var/uploads/9003-1752288411613.png	TS-9003	280	990	\N	1	1	\N	1	\N	2025-07-12 02:42:11.248	2025-07-12 02:46:51.827	1
133	1	/var/uploads/5-1755759917478.png	SY-A0862	120	390	90	1	1	\N	1	\N	2025-02-15 09:13:38.046	2025-08-21 07:09:01.513	1
725	1	/var/uploads/etc-0150-1755758798464.png	ETC-0150	780	3120	\N	\N	12	\N	1	\N	2025-08-21 06:15:16.94	2025-08-21 06:46:38.562	3
733	1	/var/uploads/5-1756783394027.png	SY-A2269	75	239	70	1	1	\N	1	\N	2025-09-02 03:08:42.844	2025-09-02 03:23:15.192	1
274	1	/var/uploads/5L-1755759198645.png	5L	100	0	5	3	1	\N	1	\N	2025-02-18 07:00:58.989	2025-10-10 07:33:20.836	1
275	1	/var/uploads/10L-1755759213809.png	10L	115	0	10	3	1	\N	1	\N	2025-02-18 07:00:58.989	2025-10-10 07:33:20.836	1
276	1	/var/uploads/15L-1755759228014.png	15L	130	0	15	3	1	\N	1	\N	2025-02-18 07:00:58.989	2025-10-10 07:33:20.836	1
278	1	/var/uploads/10-1-1755767308561.png	25L	295	0	25	3	1	\N	1	\N	2025-02-18 07:00:58.989	2025-10-10 07:33:20.836	1
279	1	/var/uploads/13-1760081996283.png	30L	265	0	30	3	1	\N	1	\N	2025-02-18 07:00:58.989	2025-10-10 07:39:56.426	1
280	1	/var/uploads/14-1760082013497.png	40L	290	0	40	3	1	\N	1	\N	2025-02-18 07:00:58.989	2025-10-10 07:40:13.653	1
742	1	/var/uploads/SY-A2299-1763786490102.png	SY-A2299-120	125	299	120	1	\N	\N	1	\N	2025-11-22 04:23:21.924	2025-11-22 04:41:54.791	1
741	1	/var/uploads/SY-A2299-100-1763786525261.png	SY-A2299-100	95	239	100	1	\N	\N	1	\N	2025-11-22 04:23:21.924	2025-11-22 04:42:05.431	1
271	1	/var/uploads/1-5L-1755759157570.png	1.5L	70	0	1.5	3	1	\N	1	\N	2025-02-18 07:00:58.989	2025-10-10 07:33:20.836	1
273	1	/var/uploads/3L-1755759178616.png	3L	85	0	3	3	1	\N	1	\N	2025-02-18 07:00:58.989	2025-10-10 07:33:20.836	1
676	1	C:/uploads/71921-1740544484119.jpg	SY-A0722	75	0	90	1	1	\N	2	\N	2025-02-26 04:23:49.314	2025-10-16 03:42:59.406	1
740	1	/var/uploads/SY-A2299-1763786490102.png	SY-A2299-90	60	159	90	1	\N	\N	1	\N	2025-11-22 04:23:21.924	2025-11-22 04:41:30.248	1
743	1	/var/uploads/SY-A2232-1766021411397.png	SY-A2232	70	199	70	1	1	\N	1	\N	2025-12-18 01:18:09.717	2025-12-18 01:30:11.408	1
734	1	/var/uploads/new-pro-6-common-1760941788423.png	SY-0288	390	0	170*190	1	1	\N	1	\N	2025-10-20 06:25:36.737	2025-10-20 06:29:48.608	1
744	1	/var/uploads/BeaT-0500973-1766973023989.png	BeaT-0500977	420	2280	\N	\N	12	\N	1	\N	2025-12-29 01:44:29.722	2025-12-29 01:50:24.107	3
126	1	/var/uploads/6-1755760159558.png	SY-A0863	120	390	90	1	1	\N	1	\N	2025-02-15 09:02:14.256	2025-08-21 07:09:19.959	1
735	1	/var/uploads/11-1761971981583.png	ETC-4529	90	299	21	1	1	\N	1	\N	2025-11-01 04:30:42.94	2025-11-01 04:39:41.679	1
736	1	/var/uploads/12-1761971993776.png	ETC-4543	90	299	23	1	1	\N	1	\N	2025-11-01 04:30:42.94	2025-11-01 04:39:53.922	1
737	1	/var/uploads/10-1761972000690.png	ETC-4567	15	59	21	1	1	\N	1	\N	2025-11-01 04:30:42.94	2025-11-01 04:40:00.855	1
727	1	/var/uploads/silicone-1755761132651.png	BeaT-0500237	30	190	\N	\N	1	\N	1	\N	2025-08-21 07:21:53.839	2025-08-21 07:25:32.82	1
714	2	/var/uploads/1-1762335080127.png	ETC-648	285	990	\N	\N	1	\N	1	\N	2025-06-20 06:22:37.176	2025-11-05 09:31:20.282	1
728	1	/var/uploads/11-1756783242282.png	SY-A2086-1	60	199	90	1	1	\N	1	\N	2025-09-02 02:44:05.692	2025-09-02 03:20:44.353	1
729	1	/var/uploads/7-1756783281863.png	SY-A2284	125	390	90	1	1	\N	1	\N	2025-09-02 02:51:55.938	2025-09-02 03:21:22.437	1
730	1	/var/uploads/8-1756783335150.png	SY-A2285	210	490	120	1	1	\N	1	\N	2025-09-02 02:51:55.938	2025-09-02 03:22:15.422	1
731	1	/var/uploads/1-1756783509138.png	SY-A2062	80	259	90	1	1	\N	1	\N	2025-09-02 02:58:38.348	2025-09-02 03:25:09.335	1
\.


--
-- Data for Name: ProductPackgage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ProductPackgage" ("productId", "packgageId", price, "salePrice", "inPackAmount") FROM stdin;
163	5	420	1440	12
164	5	360	1440	12
165	5	900	1800	12
166	5	600	1800	12
7	5	390	720	6
11	5	390	720	6
12	5	360	720	6
13	5	390	720	6
14	5	390	720	6
4	5	390	1140	6
3	5	390	1140	6
2	5	390	1140	6
1	5	330	720	6
17	5	390	720	6
18	5	450	900	6
27	5	480	960	6
26	5	480	960	6
19	5	450	450	6
20	5	510	510	6
349	5	720	1740	6
350	5	720	1740	6
351	5	720	1740	6
28	5	750	1740	6
29	5	420	900	6
30	5	660	900	6
31	5	660	1500	6
32	5	660	1500	6
15	5	360	720	6
189	5	360	720	6
190	5	360	720	6
191	5	390	1014	6
192	5	600	1740	6
193	5	450	1740	6
194	5	780	2340	6
34	5	780	1500	6
33	5	780	1500	6
35	5	780	1500	6
40	5	390	1140	6
39	5	390	1140	6
36	5	390	1140	6
37	5	390	1140	6
38	5	390	1140	6
41	5	390	1140	6
42	5	390	1140	6
43	5	450	1140	6
44	5	480	1740	6
45	5	480	1740	6
46	5	480	1740	6
47	5	480	1740	6
48	5	720	1140	6
49	5	720	1140	6
51	5	360	900	6
52	5	360	900	6
53	5	120	540	12
54	5	300	720	6
100	5	510	954	6
105	5	660	1740	6
106	5	480	1140	6
119	5	480	1140	6
120	5	480	1140	6
121	5	510	1140	6
122	5	480	1140	6
123	5	780	1740	6
124	5	930	2940	6
87	5	312	600	6
88	5	360	720	6
89	5	408	840	6
90	5	468	900	6
231	5	240	\N	6
232	5	270	\N	6
233	5	330	\N	6
234	5	240	\N	6
235	5	270	\N	6
236	5	330	\N	6
242	5	240	540	6
245	5	270	600	6
91	5	660	1740	6
125	5	510	1140	6
126	5	780	1740	6
127	5	930	2940	6
128	5	330	\N	6
130	5	540	\N	6
132	5	510	1140	6
133	5	780	1740	6
695	5	480	1140	6
176	5	660	2280	12
177	5	300	1080	12
178	5	600	\N	12
179	5	720	\N	12
180	5	720	\N	12
181	5	300	1080	12
325	5	384	1080	12
326	5	384	1080	12
327	5	384	1080	12
328	5	384	1080	12
329	5	384	1080	12
175	5	120	540	12
353	5	120	840	12
355	5	300	1080	12
354	5	180	1080	12
356	5	240	2280	12
266	4	3240	6960	24
267	4	3240	6960	24
268	4	3360	6960	24
269	4	3360	6960	24
187	5	180	660	12
270	4	3600	9360	24
263	4	3120	6960	24
262	4	5760	13920	48
361	5	828	1800	12
677	5	480	\N	12
678	5	480	\N	12
679	5	480	\N	12
680	5	480	\N	12
338	5	540	\N	12
340	5	540	\N	12
344	5	540	\N	12
342	5	540	\N	12
341	5	1020	\N	12
343	5	1020	\N	12
339	5	1020	\N	12
352	5	720	1740	6
\.


--
-- Data for Name: Product_Availability; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Product_Availability" (id, name, "createdAt", "updatedAt") FROM stdin;
1	In Stock	2025-02-13 06:33:51.151	2025-02-13 06:33:30.474
2	Sold Out	2025-02-13 06:33:51.151	2025-02-13 06:33:38.185
\.


--
-- Data for Name: Product_Category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Product_Category" (id, "productId", "categoryId", "createdAt", "updatedAt") FROM stdin;
1	386	7	2025-03-17 03:11:11.845	2025-03-17 03:11:11.845
2	387	7	2025-03-17 03:11:11.845	2025-03-17 03:11:11.845
3	388	7	2025-03-17 03:11:11.845	2025-03-17 03:11:11.845
4	389	7	2025-03-17 03:11:11.845	2025-03-17 03:11:11.845
5	390	7	2025-03-17 03:11:11.845	2025-03-17 03:11:11.845
6	391	7	2025-03-17 03:11:11.845	2025-03-17 03:11:11.845
7	392	7	2025-03-17 03:11:11.845	2025-03-17 03:11:11.845
8	393	7	2025-03-17 03:11:11.845	2025-03-17 03:11:11.845
9	394	7	2025-03-17 03:11:11.845	2025-03-17 03:11:11.845
10	395	7	2025-03-17 03:11:11.845	2025-03-17 03:11:11.845
11	396	7	2025-03-17 03:11:11.845	2025-03-17 03:11:11.845
12	397	7	2025-03-17 03:11:11.845	2025-03-17 03:11:11.845
13	416	7	2025-03-17 03:13:16.856	2025-03-17 03:13:16.856
14	606	1	2025-03-17 03:22:47.462	2025-03-17 03:22:47.462
15	576	2	2025-03-17 03:22:47.462	2025-03-17 03:22:47.462
16	661	3	2025-03-17 03:22:47.462	2025-03-17 03:22:47.462
17	10	5	2025-03-17 03:22:47.462	2025-03-17 03:22:47.462
18	615	6	2025-03-17 03:22:47.462	2025-03-17 03:22:47.462
19	623	8	2025-03-17 03:22:47.462	2025-03-17 03:22:47.462
20	271	9	2025-05-19 06:57:03.119	2025-05-19 06:57:03.119
21	272	9	2025-05-19 06:57:03.119	2025-05-19 06:57:03.119
22	273	9	2025-05-19 06:57:03.119	2025-05-19 06:57:03.119
23	274	9	2025-05-19 06:57:03.119	2025-05-19 06:57:03.119
24	275	9	2025-05-19 06:57:03.119	2025-05-19 06:57:03.119
25	276	9	2025-05-19 06:57:03.119	2025-05-19 06:57:03.119
26	277	9	2025-05-19 06:57:03.119	2025-05-19 06:57:03.119
27	278	9	2025-05-19 06:57:03.119	2025-05-19 06:57:03.119
28	279	9	2025-05-19 06:57:03.119	2025-05-19 06:57:03.119
29	280	9	2025-05-19 06:57:03.119	2025-05-19 06:57:03.119
30	248	10	2025-05-19 07:01:38.309	2025-05-19 07:01:38.309
31	249	10	2025-05-19 07:01:38.309	2025-05-19 07:01:38.309
32	250	10	2025-05-19 07:01:38.309	2025-05-19 07:01:38.309
33	251	10	2025-05-19 07:01:38.309	2025-05-19 07:01:38.309
34	252	10	2025-05-19 07:01:38.309	2025-05-19 07:01:38.309
35	253	10	2025-05-19 07:01:38.309	2025-05-19 07:01:38.309
36	254	10	2025-05-19 07:01:38.309	2025-05-19 07:01:38.309
37	266	11	2025-05-19 07:08:16.935	2025-05-19 07:08:16.935
38	267	11	2025-05-19 07:08:16.935	2025-05-19 07:08:16.935
39	268	11	2025-05-19 07:08:16.935	2025-05-19 07:08:16.935
40	269	11	2025-05-19 07:08:16.935	2025-05-19 07:08:16.935
41	270	11	2025-05-19 07:08:16.935	2025-05-19 07:08:16.935
42	188	11	2025-05-19 07:08:16.935	2025-05-19 07:08:16.935
43	262	11	2025-05-19 07:08:16.935	2025-05-19 07:08:16.935
44	263	11	2025-05-19 07:08:16.935	2025-05-19 07:08:16.935
45	370	12	2025-05-19 08:05:36.856	2025-05-19 08:05:36.856
46	371	12	2025-05-19 08:05:36.856	2025-05-19 08:05:36.856
47	372	12	2025-05-19 08:05:36.856	2025-05-19 08:05:36.856
48	373	12	2025-05-19 08:05:36.856	2025-05-19 08:05:36.856
49	374	12	2025-05-19 08:05:36.856	2025-05-19 08:05:36.856
50	375	12	2025-05-19 08:05:36.856	2025-05-19 08:05:36.856
51	376	12	2025-05-19 08:05:36.856	2025-05-19 08:05:36.856
52	377	12	2025-05-19 08:05:36.856	2025-05-19 08:05:36.856
53	378	12	2025-05-19 08:05:36.856	2025-05-19 08:05:36.856
54	379	12	2025-05-19 08:05:36.856	2025-05-19 08:05:36.856
55	364	12	2025-05-19 08:07:03.166	2025-05-19 08:07:03.166
56	365	12	2025-05-19 08:07:03.166	2025-05-19 08:07:03.166
57	366	12	2025-05-19 08:07:03.166	2025-05-19 08:07:03.166
58	367	12	2025-05-19 08:07:03.166	2025-05-19 08:07:03.166
59	368	12	2025-05-19 08:07:03.166	2025-05-19 08:07:03.166
60	369	12	2025-05-19 08:07:03.166	2025-05-19 08:07:03.166
61	681	12	2025-05-19 08:07:03.166	2025-05-19 08:07:03.166
62	682	12	2025-05-19 08:07:03.166	2025-05-19 08:07:03.166
63	683	12	2025-05-19 08:07:03.166	2025-05-19 08:07:03.166
64	684	12	2025-05-19 08:07:03.166	2025-05-19 08:07:03.166
65	380	12	2025-05-19 08:08:43.429	2025-05-19 08:08:43.429
66	381	12	2025-05-19 08:08:43.429	2025-05-19 08:08:43.429
67	382	12	2025-05-19 08:08:43.429	2025-05-19 08:08:43.429
68	383	12	2025-05-19 08:08:43.429	2025-05-19 08:08:43.429
69	384	12	2025-05-19 08:08:43.429	2025-05-19 08:08:43.429
70	385	12	2025-05-19 08:08:43.429	2025-05-19 08:08:43.429
71	686	12	2025-05-19 08:08:43.429	2025-05-19 08:08:43.429
72	687	12	2025-05-19 08:08:43.429	2025-05-19 08:08:43.429
73	688	12	2025-05-19 08:08:43.429	2025-05-19 08:08:43.429
74	689	12	2025-05-19 08:08:43.429	2025-05-19 08:08:43.429
75	690	12	2025-05-19 08:08:43.429	2025-05-19 08:08:43.429
76	685	12	2025-05-19 08:09:22.138	2025-05-19 08:09:22.138
77	673	12	2025-05-19 08:09:55.144	2025-05-19 08:09:55.144
78	675	12	2025-05-19 08:09:55.144	2025-05-19 08:09:55.144
79	364	13	2025-05-19 08:11:53.84	2025-05-19 08:11:53.84
80	365	13	2025-05-19 08:15:26.131	2025-05-19 08:15:26.131
81	366	13	2025-05-19 08:15:26.131	2025-05-19 08:15:26.131
82	367	13	2025-05-19 08:15:26.131	2025-05-19 08:15:26.131
83	368	13	2025-05-19 08:15:26.131	2025-05-19 08:15:26.131
84	369	13	2025-05-19 08:15:26.131	2025-05-19 08:15:26.131
85	681	13	2025-05-19 08:15:26.131	2025-05-19 08:15:26.131
86	682	13	2025-05-19 08:15:26.131	2025-05-19 08:15:26.131
87	683	13	2025-05-19 08:15:26.131	2025-05-19 08:15:26.131
88	684	13	2025-05-19 08:15:26.131	2025-05-19 08:15:26.131
89	380	14	2025-05-19 08:18:24.202	2025-05-19 08:18:24.202
90	381	14	2025-05-19 08:18:24.202	2025-05-19 08:18:24.202
91	382	14	2025-05-19 08:18:24.202	2025-05-19 08:18:24.202
92	383	14	2025-05-19 08:18:24.202	2025-05-19 08:18:24.202
93	384	14	2025-05-19 08:18:24.202	2025-05-19 08:18:24.202
94	385	14	2025-05-19 08:18:24.202	2025-05-19 08:18:24.202
95	686	15	2025-05-19 08:19:34.596	2025-05-19 08:19:34.596
96	687	15	2025-05-19 08:19:34.596	2025-05-19 08:19:34.596
97	688	15	2025-05-19 08:19:34.596	2025-05-19 08:19:34.596
98	689	15	2025-05-19 08:19:34.596	2025-05-19 08:19:34.596
99	690	15	2025-05-19 08:19:34.596	2025-05-19 08:19:34.596
100	685	15	2025-05-19 08:20:21.576	2025-05-19 08:20:21.576
101	692	16	2025-05-19 08:27:44.862	2025-05-19 08:27:44.862
102	693	16	2025-05-19 08:27:44.862	2025-05-19 08:27:44.862
103	166	16	2025-05-19 08:27:44.862	2025-05-19 08:27:44.862
104	165	16	2025-05-19 08:27:44.862	2025-05-19 08:27:44.862
105	164	16	2025-05-19 08:27:44.862	2025-05-19 08:27:44.862
106	163	16	2025-05-19 08:27:44.862	2025-05-19 08:27:44.862
107	174	16	2025-05-19 08:27:44.862	2025-05-19 08:27:44.862
108	173	16	2025-05-19 08:27:44.862	2025-05-19 08:27:44.862
109	171	16	2025-05-19 08:27:44.862	2025-05-19 08:27:44.862
110	247	16	2025-05-19 08:27:44.862	2025-05-19 08:27:44.862
111	246	16	2025-05-19 08:27:44.862	2025-05-19 08:27:44.862
112	255	16	2025-05-19 08:27:44.862	2025-05-19 08:27:44.862
113	256	16	2025-05-19 08:27:44.862	2025-05-19 08:27:44.862
114	674	12	2025-05-19 08:36:27.305	2025-05-19 08:36:27.305
115	615	6	2025-05-19 08:53:03.631	2025-05-19 08:53:03.631
116	616	6	2025-05-19 08:53:03.631	2025-05-19 08:53:03.631
117	617	6	2025-05-19 08:53:03.631	2025-05-19 08:53:03.631
118	618	6	2025-05-19 08:53:03.631	2025-05-19 08:53:03.631
119	619	6	2025-05-19 08:53:03.631	2025-05-19 08:53:03.631
120	620	6	2025-05-19 08:53:03.631	2025-05-19 08:53:03.631
121	605	1	2025-05-19 08:57:14.782	2025-05-19 08:57:14.782
122	607	1	2025-05-19 08:57:14.782	2025-05-19 08:57:14.782
123	608	1	2025-05-19 08:57:14.782	2025-05-19 08:57:14.782
124	610	1	2025-05-19 08:57:14.782	2025-05-19 08:57:14.782
125	611	1	2025-05-19 08:57:14.782	2025-05-19 08:57:14.782
126	612	1	2025-05-19 08:57:14.782	2025-05-19 08:57:14.782
127	613	1	2025-05-19 08:57:14.782	2025-05-19 08:57:14.782
128	614	1	2025-05-19 08:57:14.782	2025-05-19 08:57:14.782
129	578	2	2025-05-19 09:03:19.462	2025-05-19 09:03:19.462
130	580	2	2025-05-19 09:03:19.462	2025-05-19 09:03:19.462
131	581	2	2025-05-19 09:03:19.462	2025-05-19 09:03:19.462
132	582	2	2025-05-19 09:03:19.462	2025-05-19 09:03:19.462
133	583	2	2025-05-19 09:03:19.462	2025-05-19 09:03:19.462
134	584	2	2025-05-19 09:03:19.462	2025-05-19 09:03:19.462
135	585	2	2025-05-19 09:03:19.462	2025-05-19 09:03:19.462
136	586	2	2025-05-19 09:03:19.462	2025-05-19 09:03:19.462
137	587	2	2025-05-19 09:03:19.462	2025-05-19 09:03:19.462
138	588	2	2025-05-19 09:03:19.462	2025-05-19 09:03:19.462
139	589	2	2025-05-19 09:03:19.462	2025-05-19 09:03:19.462
140	590	2	2025-05-19 09:03:19.462	2025-05-19 09:03:19.462
141	591	2	2025-05-19 09:03:19.462	2025-05-19 09:03:19.462
142	592	2	2025-05-19 09:03:19.462	2025-05-19 09:03:19.462
143	593	2	2025-05-19 09:03:19.462	2025-05-19 09:03:19.462
144	659	3	2025-05-19 09:09:48.081	2025-05-19 09:09:48.081
145	660	3	2025-05-19 09:09:48.081	2025-05-19 09:09:48.081
146	8	5	2025-05-19 09:42:18.712	2025-05-19 09:42:18.712
147	9	5	2025-05-19 09:42:18.712	2025-05-19 09:42:18.712
149	669	5	2025-05-19 09:42:18.712	2025-05-19 09:42:18.712
150	670	5	2025-05-19 09:42:18.712	2025-05-19 09:42:18.712
151	671	5	2025-05-19 09:42:18.712	2025-05-19 09:42:18.712
152	398	7	2025-05-19 09:46:56.007	2025-05-19 09:46:56.007
153	399	7	2025-05-19 09:46:56.007	2025-05-19 09:46:56.007
154	400	7	2025-05-19 09:46:56.007	2025-05-19 09:46:56.007
155	401	7	2025-05-19 09:46:56.007	2025-05-19 09:46:56.007
156	402	7	2025-05-19 09:49:10.619	2025-05-19 09:49:10.619
157	403	7	2025-05-19 09:49:10.619	2025-05-19 09:49:10.619
158	404	7	2025-05-19 09:49:10.619	2025-05-19 09:49:10.619
159	405	7	2025-05-19 09:49:10.619	2025-05-19 09:49:10.619
160	406	7	2025-05-19 09:50:47.438	2025-05-19 09:50:47.438
161	407	7	2025-05-19 09:50:47.438	2025-05-19 09:50:47.438
162	408	7	2025-05-19 09:50:47.438	2025-05-19 09:50:47.438
163	409	7	2025-05-19 09:50:47.438	2025-05-19 09:50:47.438
164	410	7	2025-05-19 09:52:13.266	2025-05-19 09:52:13.266
165	411	7	2025-05-19 09:52:13.266	2025-05-19 09:52:13.266
166	412	7	2025-05-19 09:52:13.266	2025-05-19 09:52:13.266
167	413	7	2025-05-19 09:52:13.266	2025-05-19 09:52:13.266
168	414	7	2025-05-19 09:53:21.995	2025-05-19 09:53:21.995
169	415	7	2025-05-19 09:53:21.995	2025-05-19 09:53:21.995
170	672	12	2025-05-20 09:01:42.736	2025-05-20 09:01:42.736
171	706	17	2025-05-21 07:41:44.69	2025-05-21 07:41:44.69
172	707	17	2025-05-21 07:41:44.69	2025-05-21 07:41:44.69
173	708	17	2025-05-21 07:41:44.69	2025-05-21 07:41:44.69
174	709	17	2025-05-21 07:41:44.69	2025-05-21 07:41:44.69
175	417	7	2025-05-21 08:13:07.01	2025-05-21 08:13:07.01
176	418	7	2025-05-21 08:13:07.01	2025-05-21 08:13:07.01
177	419	7	2025-05-21 08:13:07.01	2025-05-21 08:13:07.01
178	420	7	2025-05-21 08:13:07.01	2025-05-21 08:13:07.01
179	421	7	2025-05-21 08:16:22.206	2025-05-21 08:16:22.206
180	422	7	2025-05-21 08:16:22.206	2025-05-21 08:16:22.206
181	423	7	2025-05-21 08:16:22.206	2025-05-21 08:16:22.206
182	424	7	2025-05-21 08:16:22.206	2025-05-21 08:16:22.206
183	425	7	2025-05-21 08:16:22.206	2025-05-21 08:16:22.206
184	426	7	2025-05-21 08:16:22.206	2025-05-21 08:16:22.206
185	427	7	2025-05-21 08:16:22.206	2025-05-21 08:16:22.206
186	428	7	2025-05-21 08:16:22.206	2025-05-21 08:16:22.206
187	429	7	2025-05-21 08:16:22.206	2025-05-21 08:16:22.206
188	430	7	2025-05-21 08:16:22.206	2025-05-21 08:16:22.206
189	431	7	2025-05-21 08:16:22.206	2025-05-21 08:16:22.206
190	432	7	2025-05-21 08:16:22.206	2025-05-21 08:16:22.206
191	433	7	2025-05-21 08:16:22.206	2025-05-21 08:16:22.206
192	434	7	2025-05-21 08:16:22.206	2025-05-21 08:16:22.206
193	435	7	2025-05-21 08:16:22.206	2025-05-21 08:16:22.206
194	436	7	2025-05-21 08:16:22.206	2025-05-21 08:16:22.206
195	437	7	2025-05-21 08:16:22.206	2025-05-21 08:16:22.206
196	438	7	2025-05-21 08:16:22.206	2025-05-21 08:16:22.206
197	439	7	2025-05-21 08:16:22.206	2025-05-21 08:16:22.206
198	440	7	2025-05-21 08:16:22.206	2025-05-21 08:16:22.206
199	441	7	2025-05-21 08:16:22.206	2025-05-21 08:16:22.206
200	442	7	2025-05-21 08:16:22.206	2025-05-21 08:16:22.206
201	443	7	2025-05-21 08:16:22.206	2025-05-21 08:16:22.206
202	444	7	2025-05-21 08:18:01.843	2025-05-21 08:18:01.843
203	445	7	2025-05-21 08:18:01.843	2025-05-21 08:18:01.843
204	446	7	2025-05-21 08:18:01.843	2025-05-21 08:18:01.843
205	447	7	2025-05-21 08:18:01.843	2025-05-21 08:18:01.843
206	448	7	2025-05-21 08:18:01.843	2025-05-21 08:18:01.843
207	449	7	2025-05-21 08:18:01.843	2025-05-21 08:18:01.843
208	450	7	2025-05-21 08:18:01.843	2025-05-21 08:18:01.843
209	451	7	2025-05-21 08:18:01.843	2025-05-21 08:18:01.843
210	453	7	2025-05-21 08:18:01.843	2025-05-21 08:18:01.843
211	452	7	2025-05-21 08:18:01.843	2025-05-21 08:18:01.843
212	454	7	2025-05-21 08:18:01.843	2025-05-21 08:18:01.843
213	455	7	2025-05-21 08:18:01.843	2025-05-21 08:18:01.843
214	338	18	2025-05-23 08:22:33.267	2025-05-23 08:22:33.267
215	339	18	2025-05-23 08:22:33.267	2025-05-23 08:22:33.267
216	340	18	2025-05-23 08:22:33.267	2025-05-23 08:22:33.267
217	341	18	2025-05-23 08:22:33.267	2025-05-23 08:22:33.267
218	342	18	2025-05-23 08:22:33.267	2025-05-23 08:22:33.267
219	343	18	2025-05-23 08:22:33.267	2025-05-23 08:22:33.267
220	344	18	2025-05-23 08:22:33.267	2025-05-23 08:22:33.267
221	677	18	2025-05-23 08:22:33.267	2025-05-23 08:22:33.267
222	678	18	2025-05-23 08:22:33.267	2025-05-23 08:22:33.267
223	679	18	2025-05-23 08:22:33.267	2025-05-23 08:22:33.267
224	680	18	2025-05-23 08:22:33.267	2025-05-23 08:22:33.267
225	609	1	2025-05-30 08:08:50.59	2025-05-30 08:08:50.59
\.


--
-- Data for Name: Product_Name; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Product_Name" (id, "productId", "languageId", name, "createdAt", "updatedAt") FROM stdin;
1267	713	1	ชูชีพ Jacket เด็กไซส์ M (2-5Y)	2025-06-02 02:09:53.099	2025-06-02 02:09:01.435
1268	713	2	Life jacket Kids Size M (2-5Y)	2025-06-02 02:09:53.099	2025-06-02 02:09:01.595
3	2	1	ห่วงยางขาสอด น้องหมา	2025-02-13 06:55:52.537	2025-02-13 06:52:17.414
4	2	2	Swimming Ring Dog	2025-02-13 06:55:52.537	2025-02-13 06:52:21.141
5	3	1	ห่วงยางเด็กขาสอด เต่า	2025-02-13 06:55:52.537	2025-02-13 06:53:01.182
8	4	2	Sainteve baby inflatable Flamingo	2025-02-13 06:55:52.537	2025-02-13 06:53:10.092
10	5	2	Baby inflatable Flamingo swim ring	2025-02-13 06:55:52.537	2025-02-13 06:53:14.023
11	6	1	แพยางเป่าลม เป็ด-เรนโบว์	2025-02-13 06:55:52.537	2025-02-13 06:53:21.821
13	7	1	ห่วงยางขาสอด สิงโต	2025-02-13 06:55:52.537	2025-02-13 06:53:25.59
15	8	1	เสื้อยืดชาย	2025-02-13 07:51:41.015	2025-02-13 07:49:20.769
16	8	2	White Shirt	2025-02-13 07:51:41.015	2025-02-13 07:49:20.92
17	9	1	เสื้อยืดชาย แขนสั้น	2025-02-13 07:51:41.015	2025-02-13 07:49:21.465
18	9	2	Short-sleeved shirt men	2025-02-13 07:51:41.015	2025-02-13 07:49:21.625
19	10	1	เสื้อยืดชาย แขนยาว	2025-02-13 07:51:41.015	2025-02-13 07:49:21.777
20	10	2	Long-sleeved shirt men	2025-02-13 07:51:41.015	2025-02-13 07:49:22.28
21	11	1	ห่วงยางขาสอด จระเข้	2025-02-16 03:19:09.117	2025-02-16 03:14:35.933
22	11	2	Sainteve Baby boat crocodile	2025-02-16 03:19:09.117	2025-02-16 03:14:36.073
23	12	1	ห่วงยางขาสอดแมว	2025-02-16 03:19:09.117	2025-02-16 03:16:16.166
24	12	2	Sainteve Baby boat Cat	2025-02-16 03:19:09.117	2025-02-16 03:16:16.372
25	13	1	ห่วงยางขาสอด กระรอก	2025-02-16 03:19:09.117	2025-02-16 03:16:59.973
26	13	2	Sainteve baby boat Squirrel	2025-02-16 03:19:09.117	2025-02-16 03:17:00.133
27	14	1	ห่วงยางขาสอด ยูนิคอร์น	2025-02-16 03:19:09.117	2025-02-16 03:17:45.484
28	14	2	Sainteve baby inflatable Unicorn	2025-02-16 03:19:09.117	2025-02-16 03:17:45.636
29	15	1	ห่วงยางขาสอด หมี	2025-02-16 03:19:09.117	2025-02-16 03:17:48.465
30	15	2	Sainteve baby boat bear	2025-02-16 03:19:09.117	2025-02-16 03:17:48.63
32	17	1	ห่วงยางขาสอด ม้าโพนี่	2025-02-16 03:21:44.311	2025-02-16 03:19:43.454
33	17	2	Ponies baby boat	2025-02-16 03:21:44.311	2025-02-16 03:19:43.618
34	18	1	ห่วงยางขาสอด ยูนิคอร์นวิ้ง ๆ	2025-02-16 03:21:44.311	2025-02-16 03:19:53.948
38	18	2	Baby inflatable unicorn Sequin	2025-02-16 03:21:44.311	2025-02-16 03:19:54.109
6	3	2	Sainteve Baby boat Turtle	2025-02-13 06:55:52.537	2025-02-16 03:26:48.681
43	20	1	 ห่วงยางวงกลมเด็กสอดขา-คูล ชมพู	2025-02-16 03:29:46.744	2025-02-16 03:27:54.083
44	20	2	Sainteve Baby shark boat cool (Pink)	2025-02-16 03:29:46.744	2025-02-16 03:27:54.233
64	29	2	Swimming-C ring	2025-02-16 07:49:24.971	2025-02-16 07:46:16.356
65	30	1	ห่วงยางขาสอด เป็ดเหลือง	2025-02-16 07:49:24.971	2025-02-16 07:47:10.415
47	21	1	ขาสอดวงกลม หมีชมพู	2025-02-16 03:35:05.765	2025-02-16 03:30:25.023
48	21	2	Baby boat cartoon (Pink Bear)	2025-02-16 03:35:05.765	2025-02-16 03:30:25.159
49	22	1	ขาสอดวงกลม ยูนิคอร์นชมพู	2025-02-16 03:35:05.765	2025-02-16 03:32:17.825
50	22	2	Baby boat cartoon (Pink Unicorn)	2025-02-16 03:35:05.765	2025-02-16 03:32:18
51	23	1	ขาสอดวงกลม ยีราฟเหลือง	2025-02-16 03:35:05.765	2025-02-16 03:32:19.024
52	23	2	Baby boat cartoon (Yellow Giraffe)	2025-02-16 03:35:05.765	2025-02-16 03:32:19.194
53	24	1	ขาสอดวงกลม การ์ตูนน้ำเงิน	2025-02-16 03:35:05.765	2025-02-16 03:32:19.917
54	24	2	Baby boat blue cartoon	2025-02-16 03:35:05.765	2025-02-16 03:32:20.086
55	25	1	ขาสอดวงกลม การ์ตูนม่วง	2025-02-16 03:35:05.765	2025-02-16 03:32:22.066
56	25	2	Baby boat purple cartoon	2025-02-16 03:35:05.765	2025-02-16 03:32:22.223
57	26	1	ห่วงยางเด็กขาสอด รถตำรวจ	2025-02-16 03:36:28.065	2025-02-16 03:35:13.63
58	26	2	Sainteve Baby boat Police	2025-02-16 03:36:28.065	2025-02-16 03:35:13.767
60	27	2	Sainteve baby boat racing car	2025-02-16 03:36:28.065	2025-02-16 03:35:55.064
39	19	1	 ห่วงยางวงกลมเด็กสอดขา-คูล เหลือง	2025-02-16 03:26:48.681	2025-02-16 07:33:28.266
40	19	2	Sainteve Baby shark boat cool (Yellow)	2025-02-16 03:26:48.681	2025-02-16 07:33:28.266
61	28	1	ห่วงยางขาสอดเรือดำน้ำ	2025-02-16 07:49:24.971	2025-02-16 07:44:57.297
62	28	2	Sainteve baby boat yellow color	2025-02-16 07:49:24.971	2025-02-16 07:45:13.274
63	29	1	ห่วงยางเป่าลม-C	2025-02-16 07:49:24.971	2025-02-16 07:46:16.197
66	30	2	Sainteve Baby boat duck yellow	2025-02-16 07:49:24.971	2025-02-16 07:47:10.563
67	31	1	ห่วงยางเด็กขาสอด ฟลามิงโก้	2025-02-16 07:49:24.971	2025-02-16 07:47:49.458
68	31	2	Sainteve baby inflatable Flamingo	2025-02-16 07:49:24.971	2025-02-16 07:47:49.598
70	32	2	Sainteve Baby boat ponies pink	2025-02-16 07:49:24.971	2025-02-16 07:48:32.844
71	33	1	ห่วงยางขาสอดโพนี่ วิ้ง ๆ	2025-02-16 08:00:47.58	2025-02-16 07:49:55.837
73	35	1	ห่วงยางขาสอดโพนี่ วิ้ง ๆ	2025-02-16 08:00:47.58	2025-02-16 07:49:56.65
74	35	2	Baby boat ponies wink	2025-02-16 08:00:47.58	2025-02-16 07:49:56.828
75	36	1	ห่วงยางขาสอดไดโนเสาร์ ฟ้า	2025-02-16 08:00:47.58	2025-02-16 07:49:57.364
76	36	2	Dinosaur Baby boat blue	2025-02-16 08:00:47.58	2025-02-16 07:49:57.52
77	37	1	ห่วงยางขาสอดไดโนเสาร์ ส้ม	2025-02-16 08:00:47.58	2025-02-16 07:49:58.448
78	37	2	Dinosaur Baby boat orange	2025-02-16 08:00:47.58	2025-02-16 07:49:58.638
79	38	1	ห่วงยางขาสอดไดโนเสาร์ ชมพู	2025-02-16 08:00:47.58	2025-02-16 07:49:59.395
80	38	2	Dinosaur Baby boat pink	2025-02-16 08:00:47.58	2025-02-16 07:49:59.553
81	39	1	ห่วงยางขาสอด ช้างน้อย	2025-02-16 08:00:47.58	2025-02-16 07:57:55.408
82	39	2	Sainteve baby boat Elephant	2025-02-16 08:00:47.58	2025-02-16 07:57:55.557
7	4	1	ห่วงยางเด็กขาสอด ฟลามิงโก้	2025-02-13 06:55:52.537	2025-02-16 18:56:19.395
432	222	2	Adult Inflatable Float mesh	2025-02-16 19:40:25.388	2025-02-16 19:33:55.864
83	40	1	ห่วงยางขาสอดจิ้งจอก	2025-02-16 08:00:47.58	2025-02-16 07:57:58.661
84	40	2	Fox Baby boat	2025-02-16 08:00:47.58	2025-02-16 07:57:58.804
1191	594	1	Dress Fashion	2025-03-07 06:15:53.616	2025-03-07 06:15:10.932
9	5	1	ห่วงยางเด็กขาสอด ฟลามิงโก้	2025-02-13 06:55:52.537	2025-05-16 03:49:59.711
12	6	2	Sainteve Inflatable rubber duck-rainbow	2025-02-13 06:55:52.537	2025-05-16 03:49:59.711
86	34	2	Baby inflatable Unicorn with glitter	2025-02-16 08:00:47.58	2025-02-16 07:59:23.925
87	41	1	ห่วงยางขาสอด แรด	2025-02-16 08:15:52.237	2025-02-16 08:01:01.094
88	41	2	Baby boat Rhinoceros	2025-02-16 08:15:52.237	2025-02-16 08:01:01.32
89	42	1	ห่วงยางเด็กขาสอด วัว	2025-02-16 08:15:52.237	2025-02-16 08:01:02.472
90	42	2	Sainteve baby boat Cow	2025-02-16 08:15:52.237	2025-02-16 08:01:02.664
91	43	1	ห่วงยางขาสอด นกยูงวิ้งๆ	2025-02-16 08:15:52.237	2025-02-16 08:01:04.318
92	43	2	Baby boat peacock sequin	2025-02-16 08:15:52.237	2025-02-16 08:01:04.507
93	44	1	ห่วงยางขาสอดเรือ ลายนางเงือก	2025-02-16 08:15:52.237	2025-02-16 08:01:09.594
94	44	2	Sainteve baby boat mermaid	2025-02-16 08:15:52.237	2025-02-16 08:01:09.76
95	45	1	ห่วงยางขาสอดเรือ ลายกระต่าย	2025-02-16 08:15:52.237	2025-02-16 08:01:12.829
96	45	2	Sainteve baby boat rabbit	2025-02-16 08:15:52.237	2025-02-16 08:01:13.047
97	46	1	ห่วงยางขาสอดเรือ ลายไดโนเสาร์	2025-02-16 08:15:52.237	2025-02-16 08:01:13.881
98	46	2	Sainteve baby boat dinosaur	2025-02-16 08:15:52.237	2025-02-16 08:01:14.046
100	47	2	Sainteve baby boat cartoons	2025-02-16 08:15:52.237	2025-02-16 08:01:15.272
101	48	1	ห่วงยางขาสอดเรือ	2025-02-16 08:15:52.237	2025-02-16 08:01:16.055
102	48	2	Baby boat (Pocket Seat)	2025-02-16 08:15:52.237	2025-02-16 08:01:16.225
103	49	1	ห่วงยางขาสอดเรือ	2025-02-16 08:15:52.237	2025-02-16 08:01:18.008
104	49	2	Baby boat (Pocket Seat)	2025-02-16 08:15:52.237	2025-02-16 08:01:18.185
105	50	1	ห่วงยางขาสอดโพนี่วิ้งๆ	2025-02-16 08:15:52.237	2025-02-16 08:01:19.812
106	50	2	Baby boat ponies wink	2025-02-16 08:15:52.237	2025-02-16 08:01:19.987
107	51	1	ห่วงยางขาสอดม้าโพนี่	2025-02-16 08:15:52.237	2025-02-16 08:01:22.579
108	51	2	Baby boat ponies (Pocket Seat)	2025-02-16 08:15:52.237	2025-02-16 08:01:22.76
113	52	1	ห่วงยางขาสอด เป็ดเหลือง	2025-02-16 08:28:46.591	2025-02-16 08:26:38.636
114	52	2	Baby inflatable Duck yellow	2025-02-16 08:28:46.591	2025-02-16 08:26:40.161
117	54	1	ห่วงยางเป่าลมใส พร้อมกลิตเตอร์	2025-02-16 08:28:46.591	2025-02-16 08:28:09.254
118	54	2	Swimming ring with glitter	2025-02-16 08:28:46.591	2025-02-16 08:28:09.406
119	57	1	ห่วงยางเป่าลมสายรุ้ง+กลิตเตอร์ พร้อมมือจับ	2025-02-16 08:34:28.266	2025-02-16 08:29:56.581
120	57	2	Swimming ring rainbow glitter (handle)	2025-02-16 08:34:28.266	2025-02-16 08:29:56.728
121	58	1	ห่วงยางเป่าลมสายรุ้ง+กลิตเตอร์ พร้อมมือจับ	2025-02-16 08:34:28.266	2025-02-16 08:30:29.573
122	58	2	Swimming ring rainbow glitter (handle)	2025-02-16 08:34:28.266	2025-02-16 08:30:29.713
1269	715	1	กระโปรงยาว	2025-06-20 06:26:32.356	2025-06-20 06:22:48.128
124	59	2	Swimming ring rainbow glitter (handle)	2025-02-16 08:34:28.266	2025-02-16 08:30:49.56
125	60	1	ห่วงยางเป่าลม ลายยูนิคอร์น	2025-02-16 08:34:28.266	2025-02-16 08:32:39.97
126	60	2	Swimming ring pink unicorn Lily fond	2025-02-16 08:34:28.266	2025-02-16 08:32:40.132
127	61	1	ห่วงยางเป่าลม ลายยูนิคอร์น	2025-02-16 08:34:28.266	2025-02-16 08:32:41.562
128	61	2	Swimming ring pink unicorn Lily fond	2025-02-16 08:34:28.266	2025-02-16 08:32:41.741
129	62	1	ห่วงยางเป่าลม ลายยูนิคอร์น	2025-02-16 08:34:28.266	2025-02-16 08:32:43.362
130	62	2	Swimming ring pink unicorn Lily fond	2025-02-16 08:34:28.266	2025-02-16 08:32:43.674
131	63	1	ห่วงยางเป่าลม ลายยูนิคอร์น	2025-02-16 08:34:28.266	2025-02-16 08:32:44.356
132	63	2	Swimming ring pink unicorn Lily fond	2025-02-16 08:34:28.266	2025-02-16 08:32:44.538
1270	715	2	Cotton Long Skirt	2025-06-20 06:26:32.356	2025-06-20 06:22:49.328
1271	714	1	ชุดเดรสยาวสายเดี่ยว	2025-06-20 06:26:32.356	2025-06-20 06:22:58.585
137	66	1	ห่วงยางเป่าลม แตงโม ใหญ่	2025-02-16 08:37:32.667	2025-02-16 08:35:07.772
139	67	1	ห่วงยางโดนัท เล็ก	2025-02-16 08:39:35.361	2025-02-16 08:37:38.943
140	67	2	Floating Donut ring small	2025-02-16 08:39:35.361	2025-02-16 08:37:39.085
141	68	1	ห่วงยางโดนัท กลาง	2025-02-16 08:39:35.361	2025-02-16 08:37:40.087
142	68	2	Floating Donut ring medium	2025-02-16 08:39:35.361	2025-02-16 08:37:40.223
143	69	1	ห่วงยางโดนัท ใหญ่	2025-02-16 08:39:35.361	2025-02-16 08:37:40.7
144	69	2	Floating Donut ring large	2025-02-16 08:39:35.361	2025-02-16 08:37:40.845
153	72	1	ห่วงยางเป่าลม ลายการ์ตูนสีฟ้ามีหู	2025-02-16 08:59:30.894	2025-02-16 08:54:02.695
154	72	2	Inflatable ring blue cartoon with ears	2025-02-16 08:59:30.894	2025-02-16 08:54:02.932
116	122	2	Swimming ring unicorn Sequin white	2025-02-16 08:28:46.591	2025-02-27 06:51:20.02
155	73	1	ห่วงยางเป่าลม ลายการ์ตูนสีฟ้ามีหู	2025-02-16 08:59:30.894	2025-02-16 08:54:07.762
156	73	2	Inflatable ring blue cartoon with ears	2025-02-16 08:59:30.894	2025-02-16 08:54:07.901
157	74	1	ห่วงยางเป่าลม ลายการตูนยีราฟ	2025-02-16 08:59:30.894	2025-02-16 08:56:24.912
158	74	2	Swimming ring cartoon giraffe	2025-02-16 08:59:30.894	2025-02-16 08:56:25.051
159	75	1	ห่วงยางเป่าลม ลายการตูนยีราฟ	2025-02-16 08:59:30.894	2025-02-16 08:56:49.966
160	75	2	Swimming ring cartoon giraffe	2025-02-16 08:59:30.894	2025-02-16 08:56:51.914
161	76	1	Sainteve ห่วงยางเป่าลม ลายหมีสีชมพู	2025-02-16 08:59:30.894	2025-02-16 08:57:56.538
149	71	1	ห่วงยางเป่าลม	2025-02-16 08:53:40.826	2025-03-09 19:32:06.599
150	71	2	Inflatable ring frog	2025-02-16 08:53:40.826	2025-03-09 19:32:06.599
145	70	1	ห่วงยางเป่าลมกบ	2025-02-16 08:53:40.826	2025-03-09 19:33:43.591
146	70	2	Inflatable ring frog	2025-02-16 08:53:40.826	2025-03-09 19:33:43.591
162	76	2	Sainteve swimming ring pink cute bear 	2025-02-16 08:59:30.894	2025-02-16 08:57:56.691
1272	714	2	Strapless Long Dress	2025-06-20 06:26:32.356	2025-06-20 06:22:58.736
138	66	2	Floating Watermelon ring Big	2025-02-16 08:37:32.667	2025-07-14 04:31:02.758
165	78	1	ห่วงยางเป่าลม ลายแคนดี้-แฟนซี	2025-02-16 09:02:59.461	2025-02-16 08:59:36.607
166	78	2	Sainteve swimming Candy bar ring	2025-02-16 09:02:59.461	2025-02-16 08:59:36.746
85	34	1	ห่วงยางเด็กขาสอด ยูนิคอร์นวิ้ง ๆ	2025-02-16 08:00:47.58	2025-05-16 03:49:59.711
167	79	1	ห่วงยางเป่าลม ลายแคนดี้-แฟนซี	2025-02-16 09:02:59.461	2025-02-16 08:59:37.813
168	79	2	Sainteve swimming Candy bar ring	2025-02-16 09:02:59.461	2025-02-16 08:59:37.951
169	80	1	ห่วงยางเป่าลม ลายอมยิ้ม-แฟนซี	2025-02-16 09:08:25.197	2025-02-16 09:03:32.025
170	80	2	Swimming Seven color rainbow ring	2025-02-16 09:08:25.197	2025-02-16 09:03:32.178
171	81	1	ห่วงยางเป่าลม ลายอมยิ้ม-แฟนซี	2025-02-16 09:08:25.197	2025-02-16 09:03:35.671
172	81	2	Swimming Seven color rainbow ring	2025-02-16 09:08:25.197	2025-02-16 09:03:35.853
173	82	1	ห่วงยางเป่าลม ลายอมยิ้ม-แฟนซี	2025-02-16 09:08:25.197	2025-02-16 09:03:39.678
174	82	2	Swimming Seven color rainbow ring	2025-02-16 09:08:25.197	2025-02-16 09:03:39.907
175	83	1	ห่วงยางเป่าลม ลายอมยิ้ม-แฟนซี	2025-02-16 09:08:25.197	2025-02-16 09:03:40.529
176	83	2	Swimming Seven color rainbow ring	2025-02-16 09:08:25.197	2025-02-16 09:03:40.689
177	84	1	ห่วงยางเป่าลม ลายส้ม-แฟนซี	2025-02-16 09:10:26.077	2025-02-16 09:08:33.114
178	84	2	Sainteve swimming fancy orange ring	2025-02-16 09:10:26.077	2025-02-16 09:08:33.262
179	85	1	ห่วงยางเป่าลม ลายส้ม-แฟนซี	2025-02-16 09:10:26.077	2025-02-16 09:08:34.464
180	85	2	Sainteve swimming fancy orange ring	2025-02-16 09:10:26.077	2025-02-16 09:08:34.893
181	86	1	ห่วงยางเป่าลม ลายส้ม-แฟนซี	2025-02-16 09:10:26.077	2025-02-16 09:08:35.497
182	86	2	Sainteve swimming fancy orange ring	2025-02-16 09:10:26.077	2025-02-16 09:08:35.68
183	87	1	ห่วงยางเป่าลมเรนโบว์วิ้ง ๆ (+มือจับ)	2025-02-16 09:18:04.654	2025-02-16 09:15:05.117
184	87	2	Neon gold powder floating ring (+handles)	2025-02-16 09:18:04.654	2025-02-16 09:15:06.004
185	88	1	ห่วงยางเป่าลมเรนโบว์วิ้ง ๆ (+มือจับ)	2025-02-16 09:18:04.654	2025-02-16 09:15:12.502
186	88	2	Neon gold powder floating ring (+handles)	2025-02-16 09:18:04.654	2025-02-16 09:15:12.689
187	89	1	ห่วงยางเป่าลมเรนโบว์วิ้ง ๆ (+มือจับ)	2025-02-16 09:18:04.654	2025-02-16 09:15:13.334
188	89	2	Neon gold powder floating ring (+handles)	2025-02-16 09:18:04.654	2025-02-16 09:15:13.493
189	90	1	ห่วงยางเป่าลมเรนโบว์วิ้ง ๆ (+มือจับ)	2025-02-16 09:18:04.654	2025-02-16 09:15:14.021
190	90	2	Neon gold powder floating ring (+handles)	2025-02-16 09:18:04.654	2025-02-16 09:15:14.167
191	91	1	ห่วงยางซันบีช	2025-02-16 09:19:34.121	2025-02-16 09:18:12.777
192	91	2	Swim ring sun beach	2025-02-16 09:19:34.121	2025-02-16 09:18:13.139
193	231	1	ห่วงยางกลมเป่าลมลายเจ้าหญิง เล็ก	2025-02-16 09:34:39.427	2025-02-16 09:27:28.848
194	231	2	Round inflatable princess ring small	2025-02-16 09:34:39.427	2025-02-16 09:27:28.994
195	232	1	ห่วงยางกลมเป่าลมลายเจ้าหญิง กลาง	2025-02-16 09:34:39.427	2025-02-16 09:27:33.157
196	232	2	Round inflatable princess ring medium	2025-02-16 09:34:39.427	2025-02-16 09:27:33.306
1273	716	1	ห่วงยางเด็กขาสอดเต่าเขียว	2025-06-23 03:54:06.696	2025-06-23 03:53:43.384
200	234	2	Round inflatable cosmic ring small	2025-02-16 09:34:39.427	2025-02-16 09:30:22.981
204	236	2	Round inflatable cosmic ring large	2025-02-16 09:34:39.427	2025-02-16 09:30:24.538
205	96	1	ห่วงยางเด็กคริสตัล	2025-02-16 17:31:11.233	2025-02-16 17:17:24.674
206	96	2	Swim ring baby crystal	2025-02-16 17:31:11.233	2025-02-16 17:17:53.832
1274	716	2	Sainteve Turtle baby boat	2025-06-23 03:54:06.696	2025-06-23 03:53:43.863
213	100	1	กระดานโต้คลื่นเป่าลม	2025-02-16 17:31:11.233	2025-02-16 17:26:20.943
214	100	2	Swim Roofing board	2025-02-16 17:31:11.233	2025-02-16 17:26:21.837
215	101	1	ห่วงยางเป่าลม หางเงือกวิ้ง ๆ เล็ก	2025-02-16 17:31:11.233	2025-02-16 17:27:06.937
216	101	2	Mermaid Sequins Ring small	2025-02-16 17:31:11.233	2025-02-16 17:27:08.988
217	102	1	ห่วงยางเป่าลม หางเงือกวิ้ง ๆ ใหญ่	2025-02-16 17:31:11.233	2025-02-16 17:28:32.217
218	102	2	Mermaid Sequins Ring large 	2025-02-16 17:31:11.233	2025-02-16 17:28:32.378
219	103	1	ห่วงยางเป่าลม ฟลามิงโก้ เล็ก	2025-02-16 17:31:11.233	2025-02-16 17:29:28.921
220	103	2	Sainteve Flamingo ring small	2025-02-16 17:31:11.233	2025-02-16 17:29:29.104
221	104	1	ห่วงยางเป่าลม ฟลามิงโก้ ใหญ่	2025-02-16 17:31:11.233	2025-02-16 17:29:30.481
222	104	2	Sainteve Flamingo ring large	2025-02-16 17:31:11.233	2025-02-16 17:29:30.656
223	105	1	ห่วงยางเป่าลมโพนี่	2025-02-16 17:36:34.717	2025-02-16 17:31:47.857
224	105	2	Swimming ring ponies	2025-02-16 17:36:34.717	2025-02-16 17:31:49.485
225	106	1	ห่วงยางเป่าลม หัวไดโนเสาร์ วิ้ง ๆ 	2025-02-16 17:36:34.717	2025-02-16 17:31:50.237
226	106	2	Swim ring Dinosaur sequin	2025-02-16 17:36:34.717	2025-02-16 17:31:50.443
227	107	1	ห่วงยางเป่าลม เป็ดเหลือง เล็ก	2025-02-16 17:36:34.717	2025-02-16 17:31:51.1
228	107	2	Yellow duck swimming ring small	2025-02-16 17:36:34.717	2025-02-16 17:31:51.291
229	108	1	ห่วงยางเป่าลม เป็ดเหลือง ใหญ่	2025-02-16 17:36:34.717	2025-02-16 17:31:52.946
230	108	2	Yellow duck swimming ring large	2025-02-16 17:36:34.717	2025-02-16 17:31:53.126
231	109	1	ห่วงยางเป่าลม ยูนิคอร์น เล็ก	2025-02-16 17:36:34.717	2025-02-16 17:31:54.073
232	109	2	Unicorn swimming ring small	2025-02-16 17:36:34.717	2025-02-16 17:31:54.237
233	110	1	ห่วงยางเป่าลม ยูนิคอร์น ใหญ่	2025-02-16 17:36:34.717	2025-02-16 17:31:54.918
234	110	2	Unicorn swimming ring large	2025-02-16 17:36:34.717	2025-02-16 17:31:55.081
239	119	1	ห่วงยางเป่าลม โพนี่วิ้ง ๆ	2025-02-16 17:49:17.555	2025-02-16 17:39:48.834
240	119	2	Swimming ring ponies Sequin	2025-02-16 17:49:17.555	2025-02-16 17:39:48.993
241	120	1	ห่วงยางเป่าลมโพนี่เนืัอใส ลายวงกลม	2025-02-16 17:49:17.555	2025-02-16 17:39:54.56
242	120	2	Swimming ring ponies mixed color	2025-02-16 17:49:17.555	2025-02-16 17:39:54.714
243	121	1	ห่วงยางเป่าลม โพนี่วิ้ง ๆ	2025-02-16 17:49:17.555	2025-02-16 17:39:57.94
244	121	2	Swimming ring ponies Sequin	2025-02-16 17:49:17.555	2025-02-16 17:39:58.106
202	235	2	Round inflatable cosmic ring	2025-02-16 09:34:39.427	2025-05-10 09:05:44.323
198	233	2	Round inflatable princess ring	2025-02-16 09:34:39.427	2025-05-10 09:06:07.139
14	7	2	Sainteve Baby boat LION	2025-02-13 06:55:52.537	2025-05-16 03:49:59.711
69	32	1	ห่วงยางขาสอดโพนี่ชมพู	2025-02-16 07:49:24.971	2025-05-16 03:49:59.711
247	123	1	ห่วงยางเป่าลม ยูนิคอร์นวิ้ง ๆ กลาง 	2025-02-16 17:49:17.555	2025-02-16 17:40:02.769
248	123	2	Swimming ring unicorn Sequin white medium	2025-02-16 17:49:17.555	2025-02-16 17:40:02.939
249	124	1	ห่วงยางเป่าลม ยูนิคอร์นวิ้ง ๆ ใหญ่	2025-02-16 17:49:17.555	2025-02-16 17:40:03.482
250	124	2	Swimming ring unicorn Sequin white large 	2025-02-16 17:49:17.555	2025-02-16 17:40:03.639
251	135	1	ห่วงยางเป่าลม ม้าโพนี่ ขาว	2025-02-16 18:02:29.589	2025-02-16 17:50:36.992
252	135	2	Ponies swimming ring white	2025-02-16 18:02:29.589	2025-02-16 17:50:37.128
253	136	1	ห่วงยางเป่าลม ม้าโพนี่ ชมพู	2025-02-16 18:02:29.589	2025-02-16 17:50:39.508
254	136	2	Ponies swimming ring pink	2025-02-16 18:02:29.589	2025-02-16 17:50:39.72
1310	735	1	วอลเลย์บอล	2025-11-01 04:33:18.176	2025-11-01 04:31:02.593
255	137	1	ห่วงยางเป่าลม แองเจิ้ล เล็ก	2025-02-16 18:02:29.589	2025-02-16 17:52:25.188
256	137	2	Inflatable ring Angel small	2025-02-16 18:02:29.589	2025-02-16 17:52:25.336
257	138	1	ห่วงยางเป่าลม แองเจิ้ล ใหญ่	2025-02-16 18:02:29.589	2025-02-16 17:52:27.124
258	138	2	Inflatable ring Angel large	2025-02-16 18:02:29.589	2025-02-16 17:52:27.303
259	132	1	ห่วงยางเป่าลม โพนี่วิ้งๆ เล็ก	2025-02-16 18:02:29.589	2025-02-16 17:54:07.129
260	132	2	Swimming ring ponies sequin pink small	2025-02-16 18:02:29.589	2025-02-16 17:54:07.29
261	133	1	ห่วงยางเป่าลม โพนี่วิ้งๆ ใหญ่	2025-02-16 18:02:29.589	2025-02-16 17:54:07.855
262	133	2	Swimming ring ponies sequin pink large	2025-02-16 18:02:29.589	2025-02-16 17:54:07.993
263	134	1	ห่วงยางเป่าลมโพนี่	2025-02-16 18:02:29.589	2025-02-16 17:55:54.671
264	134	2	Swim ring ponies	2025-02-16 18:02:29.589	2025-02-16 17:55:54.82
265	125	1	ห่วงยางเป่าลม โพนี่วิ้งๆ เล็ก	2025-02-16 18:02:29.589	2025-02-16 17:56:50.63
266	125	2	Swimming ring ponies sequin white small	2025-02-16 18:02:29.589	2025-02-16 17:56:50.803
267	126	1	ห่วงยางเป่าลม โพนี่วิ้งๆ กลาง	2025-02-16 18:02:29.589	2025-02-16 17:56:51.907
268	126	2	Swimming ring ponies sequin white medium	2025-02-16 18:02:29.589	2025-02-16 17:56:52.08
269	127	1	ห่วงยางเป่าลม โพนี่วิ้งๆ ใหญ่	2025-02-16 18:02:29.589	2025-02-16 17:56:52.635
270	127	2	Swimming ring ponies sequin white large	2025-02-16 18:02:29.589	2025-02-16 17:56:52.83
271	128	1	ห่วงยางเป่าลม เป็ดใส+กลิตเตอร์ เล็ก	2025-02-16 18:02:29.589	2025-02-16 17:59:05.538
272	128	2	Inflatable float duck with glitter small	2025-02-16 18:02:29.589	2025-02-16 17:59:05.69
273	130	1	ห่วงยางเป่าลม เป็ดใส+กลิตเตอร์ ใหญ่	2025-02-16 18:02:29.589	2025-02-16 17:59:07.784
274	130	2	Inflatable float duck with glitter large	2025-02-16 18:02:29.589	2025-02-16 17:59:07.941
275	129	1	ห่วงยางเป่าลม ยูนิคอร์นลายดาว	2025-02-16 18:12:36.467	2025-02-16 18:05:05.344
276	129	2	Swim ring Unicorn-Star	2025-02-16 18:12:36.467	2025-02-16 18:05:05.499
277	131	1	ห่วงยางกลมหลังพิง พร้อมมือจับ	2025-02-16 18:12:36.467	2025-02-16 18:05:08.904
278	131	2	Tropical lounger with handles 	2025-02-16 18:12:36.467	2025-02-16 18:05:09.048
279	139	1	ห่วงยางเป่าลม แบบนั่งมีมือจับ	2025-02-16 18:12:36.467	2025-02-16 18:05:11.196
280	139	2	Inflatable swimming ring with handles	2025-02-16 18:12:36.467	2025-02-16 18:05:11.363
281	140	1	แพยางเป่าลม จระเข้	2025-02-16 18:12:36.467	2025-02-16 18:05:12.628
282	140	2	Sainteve Crocodile rider 	2025-02-16 18:12:36.467	2025-02-16 18:05:12.814
283	141	1	ห่วงยางเป่าลมลาย welcome	2025-02-16 18:12:36.467	2025-02-16 18:05:28.386
284	141	2	Welcome Ring mix color	2025-02-16 18:12:36.467	2025-02-16 18:05:28.615
1275	717	1	แท่งโฟมว่ายน้ำ	2025-06-28 02:05:09.626	2025-06-28 02:04:45.85
1276	717	2	Swimming noodle	2025-06-28 02:05:09.626	2025-06-28 02:13:08.274
291	145	1	ห่วงยางเป่าลม ทูโทน	2025-02-16 18:12:36.467	2025-02-16 18:05:32.235
245	53	1	ห่วงยางเป่าลม ลายปลา	2025-02-16 17:49:17.555	2025-02-28 07:36:20.679
246	53	2	Swimming ring fish small	2025-02-16 17:49:17.555	2025-02-28 07:36:20.679
299	149	1	แพยางเป่าลม แบบหลอดสะท้อนแสง	2025-02-16 18:18:35.969	2025-02-16 18:14:15.829
300	149	2	Adult Inflatable Float fluorescent	2025-02-16 18:18:35.969	2025-02-16 18:14:16.007
301	150	1	แพยางเป่าลม แบบหลุม	2025-02-16 18:18:35.969	2025-02-16 18:14:17.459
302	150	2	Adult Inflatable Float	2025-02-16 18:18:35.969	2025-02-16 18:14:17.634
303	151	1	แพยางตาข่าย	2025-02-16 18:18:35.969	2025-02-16 18:14:18.75
304	151	2	Adult Inflatable Float mesh	2025-02-16 18:18:35.969	2025-02-16 18:14:18.92
305	152	1	แพยางเป่าลมหลุม+หมอน	2025-02-16 18:18:35.969	2025-02-16 18:14:21
306	152	2	Floating with pillow	2025-02-16 18:18:35.969	2025-02-16 18:14:21.47
307	153	1	 แพยางเป่าลม เต่า	2025-02-16 18:18:35.969	2025-02-16 18:14:21.935
308	153	2	Sainteve Giant inflatable Turtle 	2025-02-16 18:18:35.969	2025-02-16 18:14:22.216
309	154	1	 แพยางเป่าลม เต่า	2025-02-16 18:18:35.969	2025-02-16 18:14:22.837
310	154	2	Sainteve Giant inflatable Turtle	2025-02-16 18:18:35.969	2025-02-16 18:14:23.058
311	155	1	แพยางเป่าลม วาฬสีดำ	2025-02-16 18:28:51.555	2025-02-16 18:23:59.531
312	155	2	Giant inflatable black whale rider 	2025-02-16 18:28:51.555	2025-02-16 18:23:59.703
313	156	1	แพเก้าอี้ตาข่าย	2025-02-16 18:28:51.555	2025-02-16 18:23:59.873
314	156	2	Floating Hammock	2025-02-16 18:28:51.555	2025-02-16 18:24:00.039
315	157	1	แพยางเป่าลม เป็ดเหลือง เล็ก	2025-02-16 18:28:51.555	2025-02-16 18:24:00.572
316	157	2	Inflatable float Duck yellow small	2025-02-16 18:28:51.555	2025-02-16 18:24:00.727
317	158	1	แพยางเป่าลม เป็ดเหลือง ใหญ่	2025-02-16 18:28:51.555	2025-02-16 18:24:00.883
318	158	2	Inflatable float Duck yellow large	2025-02-16 18:28:51.555	2025-02-16 18:24:01.051
319	159	1	แพยางเป่าลมผู้ใหญ่ รูปสับปะรด	2025-02-16 18:28:51.555	2025-02-16 18:24:01.224
320	159	2	Giant inflatable Pineapple	2025-02-16 18:28:51.555	2025-02-16 18:24:01.399
321	160	1	แพยางเป่าลมผู้ใหญ่ แตงโม	2025-02-16 18:28:51.555	2025-02-16 18:24:01.925
322	160	2	Huge size inflatable watermelon G.	2025-02-16 18:28:51.555	2025-02-16 18:24:02.083
323	161	1	แพยางเป่าลม ฟลามิงโก้	2025-02-16 18:33:43.444	2025-02-16 18:29:23.849
324	161	2	Flamingo Mounts box 	2025-02-16 18:33:43.444	2025-02-16 18:29:24.015
325	162	1	แพยางเป่าลม ยูนิคอร์น มีปีกสีรุ้ง	2025-02-16 18:33:43.444	2025-02-16 18:29:24.232
326	162	2	Inflatable float Unicorn-rainbow 	2025-02-16 18:33:43.444	2025-02-16 18:29:24.396
328	163	2	Balance swimming goggles for kids	2025-02-16 18:33:43.444	2025-02-16 18:29:24.733
330	164	2	Swimming goggles for Adult (Zippered bag)	2025-02-16 18:33:43.444	2025-02-16 18:29:25.053
331	165	1	แว่นตาวายน้ำเด็ก	2025-02-16 18:33:43.444	2025-02-16 18:29:25.198
332	165	2	Silicone kids goggle anti-fog	2025-02-16 18:33:43.444	2025-02-16 18:29:25.533
333	166	1	แว่นตาว่ายน้ำผู้ใหญ่ 	2025-02-16 18:33:43.444	2025-02-16 18:29:26.034
334	166	2	Drysuper swimming goggles for adult	2025-02-16 18:33:43.444	2025-02-16 18:29:26.186
335	171	1	แว่นตาว่ายน้ำเด็ก	2025-02-16 18:37:59.691	2025-02-16 18:34:34.303
336	171	2	Drysuper swimming goggles for kids	2025-02-16 18:37:59.691	2025-02-16 18:34:34.429
337	173	1	แว่นตาว่ายน้ำผู้ใหญ่	2025-02-16 18:37:59.691	2025-02-16 18:34:37.197
338	173	2	Sainteve swimming goggles for adult	2025-02-16 18:37:59.691	2025-02-16 18:34:37.342
339	174	1	 แว่นตาว่ายน้ำผู้ใหญ่ กันแดด	2025-02-16 18:37:59.691	2025-02-16 18:36:08.187
340	174	2	Swimming goggles for Adult & UV Protection	2025-02-16 18:37:59.691	2025-02-16 18:36:30.271
341	175	1	ที่อุดหู อุดจมูกสำหรับว่ายน้ำ	2025-02-16 18:37:59.691	2025-02-16 18:36:33.443
342	175	2	Sainteve ear plugs ang nose clip	2025-02-16 18:37:59.691	2025-02-16 18:36:33.596
343	176	1	ห่วงยางคอ ลอยน้ำเด็ก	2025-02-16 18:45:52.147	2025-02-16 18:38:53.795
344	176	2	Baby swim ring	2025-02-16 18:45:52.147	2025-02-16 18:38:53.97
345	177	1	ปลอกแขนเด็ก	2025-02-16 18:45:52.147	2025-02-16 18:38:56.789
346	177	2	Sainteve Animal arm bands	2025-02-16 18:45:52.147	2025-02-16 18:38:56.967
349	179	1	เสื้อชูชีพเด็กลายการ์ตูน L	2025-02-16 18:45:52.147	2025-02-16 18:39:00.303
350	179	2	Swim vest for children's L	2025-02-16 18:45:52.147	2025-02-16 18:39:00.509
354	181	2	Cartoon Arm bands (Mix type)	2025-02-16 18:45:52.147	2025-02-16 18:39:05.273
355	182	1	กระดานโต้คลื่นเป่าลม+มือจับ	2025-02-16 18:45:52.147	2025-02-16 18:43:40.834
356	182	2	Sainteve roofing board	2025-02-16 18:45:52.147	2025-02-16 18:43:41.002
357	183	1	ห่วงยางเด็กขาสอด ยูนิคอร์น	2025-02-16 18:45:52.147	2025-02-16 18:43:44.714
358	183	2	Kids Swimming Ring Unicorn	2025-02-16 18:45:52.147	2025-02-16 18:43:44.869
359	184	1	แพยางเป่าลม โพนี่สีขาว มีปีก	2025-02-16 18:45:52.147	2025-02-16 18:43:46.3
360	184	2	Inflatable raft Pony with Wings	2025-02-16 18:45:52.147	2025-02-16 18:43:46.465
361	185	1	ห่วงยางกลมตาข่ายนั่ง-หลังพิง	2025-02-16 18:50:14.827	2025-02-16 18:46:08.254
362	185	2	Adult Swim ring mesh	2025-02-16 18:50:14.827	2025-02-16 18:46:09.299
363	187	1	ที่อุดหู อุดจมูก รุ่นมีสายคล้องคอ	2025-02-16 18:50:14.827	2025-02-16 18:47:06.04
364	187	2	Ear plugs ang nose clip	2025-02-16 18:50:14.827	2025-02-16 18:47:06.212
365	188	1	สน็อกเกิ้ลดำน้ำ ผู้ใหญ่	2025-02-16 18:50:14.827	2025-02-16 18:48:49.423
366	188	2	Swimming Snorkel for Adult	2025-02-16 18:50:14.827	2025-02-16 18:48:49.576
199	234	1	ห่วงยางกลมเป่าลม ลายอวกาศ เล็ก	2025-02-16 09:34:39.427	2025-02-16 18:56:19.395
203	236	1	ห่วงยางกลมเป่าลม ลายอวกาศ ใหญ่	2025-02-16 09:34:39.427	2025-02-16 18:56:19.395
327	163	1	แว่นตาว่ายน้ำเด็ก ถุงซิป	2025-02-16 18:33:43.444	2025-02-16 18:56:19.395
329	164	1	แว่นตาว่ายน้ำผู้ใหญ่ PVC	2025-02-16 18:33:43.444	2025-02-16 18:56:19.395
367	189	1	ห่วงยางขาสอด ฟลามิงโก้ชมพูมีปีก	2025-02-16 19:02:46.114	2025-02-16 18:57:25.637
368	189	2	Sainteve baby inflatable Flamingo pink	2025-02-16 19:02:46.114	2025-02-16 18:57:25.803
369	190	1	ห่วงยางขาสอดหางปลาวาฬ	2025-02-16 19:02:46.114	2025-02-16 18:57:27.616
370	190	2	SainteBaby boat whale tail Mixed Color	2025-02-16 19:02:46.114	2025-02-16 18:57:27.761
371	191	1	ห่วงยางเป่าลม หัวเป็ดเขียว-ใส 	2025-02-16 19:02:46.114	2025-02-16 18:57:33.157
372	191	2	Inflatable float green duck head	2025-02-16 19:02:46.114	2025-02-16 18:57:33.317
373	192	1	ห่วงยางเด็กขาสอดโพนี่	2025-02-16 19:02:46.114	2025-02-16 18:57:33.486
374	192	2	Sainteve Ponies baby boat (Pocket Seat)	2025-02-16 19:02:46.114	2025-02-16 18:57:33.679
375	193	1	ห่วงยางเป่าลม เป็ดเหลือง วิ้ง ๆ	2025-02-16 19:02:46.114	2025-02-16 18:57:34.216
376	193	2	Swimming ring Duck sequin	2025-02-16 19:02:46.114	2025-02-16 18:57:34.365
377	194	1	ห่วงยางเป่าลม ฟลามิงโก้ วิ้งๆ	2025-02-16 19:02:46.114	2025-02-16 18:57:34.941
378	194	2	Sainteve Flamingo ring with glitter	2025-02-16 19:02:46.114	2025-02-16 18:57:35.267
379	195	1	ห่วงยางเป่าลมลายหมีอวกาศ เล็ก	2025-02-16 19:09:05.857	2025-02-16 19:04:47.063
380	195	2	Sainteve swim space bear ring small	2025-02-16 19:09:05.857	2025-02-16 19:04:47.237
1277	718	1	ห่วงยางเป่าลมคู่+มือจับ	2025-07-03 02:25:21.24	2025-07-03 02:24:38.011
1278	718	2	Twin ring with handle	2025-07-03 02:25:21.24	2025-07-03 02:24:38.163
351	180	1	เสื้อชูชีพเด็กลายการ์ตูน M	2025-02-16 18:45:52.147	2025-03-10 01:01:51.33
385	198	1	ห่วงยางเป่าลมลายหมี เล็ก	2025-02-16 19:09:05.857	2025-02-16 19:07:11.584
386	198	2	Sainteve swimming Bear Purple ring small	2025-02-16 19:09:05.857	2025-02-16 19:07:11.763
201	235	1	ห่วงยางกลมเป่าลม ลายอวกาศ	2025-02-16 09:34:39.427	2025-05-10 09:05:44.323
391	202	1	ห่วงยางเป่าลมลายกระต่าย เล็ก	2025-02-16 19:14:10.388	2025-02-16 19:09:14.748
392	202	2	Sainteve swimming Rabbit Pink ring small	2025-02-16 19:14:10.388	2025-02-16 19:09:14.927
1279	680	2	Cute Bag	2025-07-08 04:14:41.839	2025-07-08 04:14:23.9
401	207	1	ห่วงยางเป่าลม ใสลายดอกไม้ มีมือจับ ใหญ่	2025-02-16 19:14:10.388	2025-02-16 19:12:20.19
402	207	2	Inflatable flower-patterned float with handle large	2025-02-16 19:14:10.388	2025-02-16 19:12:20.358
403	208	1	ห่วงยางเป่าลม ฟ้าลายอวกาศ-Dino เล็ก	2025-02-16 19:15:57.21	2025-02-16 19:14:23.202
404	208	2	Inflatable float, sky blue space-Dino small	2025-02-16 19:15:57.21	2025-02-16 19:14:23.356
407	210	1	ห่วงยางเป่าลมชมพูลายผีเสื้อ กลิตเตอร์+มือจับ	2025-02-16 19:21:34.342	2025-02-16 19:17:28.809
408	210	2	Swim ring pink with handle 	2025-02-16 19:21:34.342	2025-02-16 19:17:29.721
415	214	1	ห่วงยางเป่าลม แตงโม มีมือจับ	2025-02-16 19:27:49.21	2025-02-16 19:22:17.278
416	214	2	Watermelon inflatable with handle	2025-02-16 19:27:49.21	2025-02-16 19:22:17.456
417	215	1	ห่วงยางกลม + มือจับ	2025-02-16 19:27:49.21	2025-02-16 19:22:17.655
418	215	2	Sainteve Round rubber ring (choose color) + handle	2025-02-16 19:27:49.21	2025-02-16 19:22:18.218
419	216	1	ห่วงยางเป่าลม โพนี่เนื้อใสเรนโบว์	2025-02-16 19:27:49.21	2025-02-16 19:22:18.376
420	216	2	Sainteve Ponies ring	2025-02-16 19:27:49.21	2025-02-16 19:22:20.13
421	217	1	ห่วงยางเป่าลม โพนี่วิ้ง ๆ ลายหัวใจ	2025-02-16 19:27:49.21	2025-02-16 19:22:20.32
422	217	2	Sainteve Ponies ring sequin glitter	2025-02-16 19:27:49.21	2025-02-16 19:22:20.891
423	218	1	ห่วงยางเป่าลมโพนี่ชมพู+กลิตเตอร์	2025-02-16 19:27:49.21	2025-02-16 19:22:21.054
424	218	2	Swimming ring ponies ping with glitter	2025-02-16 19:27:49.21	2025-02-16 19:22:21.45
425	219	1	ห่วงยางเป่าลมคัลเลอร์ฟูล เล็ก	2025-02-16 19:27:49.21	2025-02-16 19:22:21.849
426	219	2	Colorful inflatable rubber ring small	2025-02-16 19:27:49.21	2025-02-16 19:22:22.34
429	221	1	แพยางเป่าลมตาข่าย	2025-02-16 19:40:25.388	2025-02-16 19:33:51.788
430	221	2	Inflatable Float mesh	2025-02-16 19:40:25.388	2025-02-16 19:33:51.956
431	222	1	แพยางเป่าลมตาข่าย ลายใบไม้	2025-02-16 19:40:25.388	2025-02-16 19:33:55.687
433	223	1	แพยางเป่าลม วาฬส้ม	2025-02-16 19:40:25.388	2025-02-16 19:33:56.449
434	223	2	Sainteve Orange whale rider	2025-02-16 19:40:25.388	2025-02-16 19:33:56.61
435	224	1	ห่วงยางลายดอกชบา+มือจับ	2025-02-16 19:40:25.388	2025-02-16 19:33:57.199
436	224	2	Swim ring leaves & flow with handle 	2025-02-16 19:40:25.388	2025-02-16 19:33:57.352
437	225	1	ห่วงยางเป่าลม กลิตเตอร์หางปลา+มือจับ	2025-02-16 19:40:25.388	2025-02-16 19:33:58.642
438	225	2	Swim ring FISH TAIL Sequins with handle	2025-02-16 19:40:25.388	2025-02-16 19:33:58.803
439	226	1	ห่วงยางเป่าลม กลิตเตอร์หอยเชลล์	2025-02-16 19:40:25.388	2025-02-16 19:33:58.979
440	226	2	Swim ring SHELL Sequins	2025-02-16 19:40:25.388	2025-02-16 19:33:59.503
235	117	1	ห่วงยางสับปะรด	2025-02-16 17:49:17.555	2025-02-17 02:00:39.26
237	118	1	ห่วงยางเป่าลม สับปะรด 	2025-02-16 17:49:17.555	2025-02-17 02:00:39.26
236	117	2	Pineapple ring	2025-02-16 17:49:17.555	2025-02-17 02:00:39.26
238	118	2	Pineapple swimming ring	2025-02-16 17:49:17.555	2025-02-17 02:00:39.26
441	248	1	กระดานโต้คลื่น หัวตัด	2025-02-17 02:25:25.713	2025-02-17 02:21:46.657
442	248	2	Body board	2025-02-17 02:25:25.713	2025-02-17 02:21:47.418
443	249	1	กระดานโต้คลื่น หัวตัด	2025-02-17 02:25:25.713	2025-02-17 02:21:47.746
444	249	2	Body board	2025-02-17 02:25:25.713	2025-02-17 02:21:48.018
445	250	1	กระดานโต้คลื่น หัวตัด	2025-02-17 02:25:25.713	2025-02-17 02:21:48.522
446	250	2	Body board	2025-02-17 02:25:25.713	2025-02-17 02:21:48.816
447	251	1	กระดานโต้คลื่น หัวตัด	2025-02-17 02:25:25.713	2025-02-17 02:21:49.458
448	251	2	Body board	2025-02-17 02:25:25.713	2025-02-17 02:21:49.778
449	252	1	กระดานโต้คลื่น หัวแหลม	2025-02-17 02:25:25.713	2025-02-17 02:21:51.505
450	252	2	Bodyboard (Rocket)	2025-02-17 02:25:25.713	2025-02-17 02:21:51.737
451	253	1	กระดานโต้คลื่น หัวแหลม	2025-02-17 02:25:25.713	2025-02-17 02:22:51.968
452	253	2	Bodyboard (Rocket)	2025-02-17 02:25:25.713	2025-02-17 02:22:52.114
453	254	1	กระดานโต้คลื่น หัวแหลม	2025-02-17 02:25:25.713	2025-02-17 02:22:55.816
454	254	2	Bodyboard (Rocket)	2025-02-17 02:25:25.713	2025-02-17 02:22:55.969
455	255	1	แว่นตาว่ายน้ำผู้ใหญ่ กันแดด	2025-02-18 03:08:21.851	2025-02-18 03:06:31.018
456	255	2	Swim goggles for adult	2025-02-18 03:08:21.851	2025-02-18 03:06:31.162
1182	672	2	Beach shoes Tiger	2025-02-21 00:03:34.995	2025-05-20 09:01:13.993
397	205	1	ห่วงยางเป่าลม ใสลายดอกไม้ มีมือจับ	2025-02-16 19:14:10.388	2025-05-15 04:51:44.119
398	205	2	Inflatable flower-patterned float with handle	2025-02-16 19:14:10.388	2025-05-15 04:51:44.119
72	33	2	Baby boat ponies wink wink	2025-02-16 08:00:47.58	2025-05-16 03:49:59.711
1243	701	1	เดรสสั้น	2025-05-17 08:20:44.275	2025-05-17 08:19:48.099
1244	701	2	Mini dress	2025-05-17 08:20:44.275	2025-05-17 08:19:48.28
457	256	1	แว่นตาว่ายน้ำผู้ใหญ่ กันแดด UV	2025-02-18 03:08:21.851	2025-02-18 03:06:32.585
458	256	2	Swimming goggles for Adult & UV Protection	2025-02-18 03:08:21.851	2025-02-18 03:06:32.729
460	257	2	Kids life jacket	2025-02-18 03:20:01.807	2025-02-18 03:17:48.126
462	258	2	Arm Life jacket	2025-02-18 03:20:01.807	2025-02-18 03:18:33.094
463	181	1	ปลอกแขนเด็กลายการ์ตูน	2025-02-18 03:34:26.721	2025-02-18 03:29:43.969
471	263	1	Balance สน็อกเกิ้ลดำน้ำ เด็ก	2025-02-18 04:49:47.759	2025-02-18 04:45:53.343
472	263	2	Balance mask & snorkel for kids  	2025-02-18 04:49:47.759	2025-02-18 04:45:53.479
473	262	1	Balance สน็อกเกิ้ลดำน้ำ เด็ก	2025-02-18 04:49:47.759	2025-02-18 04:45:55.903
474	262	2	Balance mask & snorkel for kids  	2025-02-18 04:49:47.759	2025-02-18 04:45:56.038
475	264	1	Sainteve ที่สูบลมมือ	2025-02-18 04:53:48.332	2025-02-18 04:53:00.804
476	264	2	Sainteve air pump manual	2025-02-18 04:53:48.332	2025-02-18 04:53:00.94
477	265	1	Sainteve ที่สูบลมแบบไฟฟ้า	2025-02-18 04:53:48.332	2025-02-18 04:53:02.197
478	265	2	Sainteve AC electric Air pump	2025-02-18 04:53:48.332	2025-02-18 04:53:02.34
479	266	1	สน็อกเกิ้ลดำน้ำ 	2025-02-18 06:36:50.845	2025-02-18 06:34:42.012
480	266	2	Swimming Snorkel Kids	2025-02-18 06:36:50.845	2025-02-18 06:34:42.163
481	267	1	สน็อกเกิ้ลดำน้ำ 	2025-02-18 06:36:50.845	2025-02-18 06:34:43.067
482	267	2	Swimming Snorkel Kids	2025-02-18 06:36:50.845	2025-02-18 06:34:43.203
483	268	1	สน็อกเกิ้ลดำน้ำ	2025-02-18 06:36:50.845	2025-02-18 06:34:45.092
484	268	2	Swimming Snorkel Adult	2025-02-18 06:36:50.845	2025-02-18 06:34:45.235
485	269	1	สน็อกเกิ้ลดำน้ำ ผู้ใหญ่ 	2025-02-18 06:46:22.298	2025-02-18 06:44:52.585
486	269	2	Swimming Snorkel Adult Two Tone	2025-02-18 06:46:22.298	2025-02-18 06:44:52.72
487	270	1	สน็อกเกิ้ลดำน้ำ ผู้ใหญ่ (หน้ากลม)	2025-02-18 06:49:39.249	2025-02-18 06:48:49.991
488	270	2	Snorkel Adult	2025-02-18 06:49:39.249	2025-02-18 06:48:50.127
489	271	1	กระเป๋ากันน้ำ	2025-02-18 07:06:08.782	2025-02-18 07:02:56.443
490	271	2	Waterproof bag	2025-02-18 07:06:08.782	2025-02-18 07:02:56.836
491	272	1	กระเป๋ากันน้ำ	2025-02-18 07:06:08.782	2025-02-18 07:02:56.979
492	272	2	Waterproof bag	2025-02-18 07:06:08.782	2025-02-18 07:02:57.131
493	273	1	กระเป๋ากันน้ำ	2025-02-18 07:06:08.782	2025-02-18 07:02:57.267
494	273	2	Waterproof bag	2025-02-18 07:06:08.782	2025-02-18 07:02:57.42
495	274	1	กระเป๋ากันน้ำ	2025-02-18 07:06:08.782	2025-02-18 07:02:57.563
496	274	2	Waterproof bag	2025-02-18 07:06:08.782	2025-02-18 07:02:57.723
497	275	1	กระเป๋ากันน้ำ	2025-02-18 07:06:08.782	2025-02-18 07:02:57.875
498	275	2	Waterproof bag	2025-02-18 07:06:08.782	2025-02-18 07:02:58.035
499	276	1	กระเป๋ากันน้ำ	2025-02-18 07:06:08.782	2025-02-18 07:02:58.196
500	276	2	Waterproof bag	2025-02-18 07:06:08.782	2025-02-18 07:02:58.364
501	277	1	กระเป๋ากันน้ำ	2025-02-18 07:06:08.782	2025-02-18 07:02:58.523
502	277	2	Waterproof bag	2025-02-18 07:06:08.782	2025-02-18 07:02:58.684
503	278	1	กระเป๋ากันน้ำ	2025-02-18 07:06:08.782	2025-02-18 07:02:58.851
504	278	2	Waterproof bag	2025-02-18 07:06:08.782	2025-02-18 07:02:59.147
505	279	1	กระเป๋ากันน้ำ	2025-02-18 07:06:08.782	2025-02-18 07:02:59.523
506	279	2	Waterproof bag	2025-02-18 07:06:08.782	2025-02-18 07:02:59.675
507	280	1	กระเป๋ากันน้ำ	2025-02-18 07:06:08.782	2025-02-18 07:03:00.123
508	280	2	Waterproof bag	2025-02-18 07:06:08.782	2025-02-18 07:03:00.483
461	258	1	ชูชีพเด็ก & ปลอกแขน	2025-02-18 03:20:01.807	2025-02-28 07:49:27.078
459	257	1	ชูชีพเด็ก & ปลอกแขน	2025-02-18 03:20:01.807	2025-02-28 07:49:42.548
531	281	1	ผ้าปูชายหาด A	2025-02-18 07:51:51.359	2025-02-18 07:54:31.203
532	281	2	Beach towel A	2025-02-18 07:51:51.359	2025-02-18 07:54:31.203
533	282	1	ผ้าปูชายหาด C	2025-02-18 07:51:51.359	2025-02-18 07:54:31.203
534	282	2	Beach towel C	2025-02-18 07:51:51.359	2025-02-18 07:54:31.203
535	283	1	ผ้าปูชายหาด D	2025-02-18 07:51:51.359	2025-02-18 07:54:31.203
536	283	2	Beach towel D	2025-02-18 07:51:51.359	2025-02-18 07:54:31.203
537	284	1	ผ้าปูชายหาด E	2025-02-18 07:51:51.359	2025-02-18 07:54:31.203
538	284	2	Beach towel E	2025-02-18 07:51:51.359	2025-02-18 07:54:31.203
510	285	2	Beach towel F	2025-02-18 07:51:51.359	2025-02-18 07:54:31.203
509	285	1	ผ้าปูชายหาด F	2025-02-18 07:51:51.359	2025-02-18 07:54:31.203
511	286	1	ผ้าปูชายหาด G	2025-02-18 07:51:51.359	2025-02-18 07:54:31.203
512	286	2	Beach towel G	2025-02-18 07:51:51.359	2025-02-18 07:54:31.203
513	287	1	ผ้าปูชายหาด H	2025-02-18 07:51:51.359	2025-02-18 07:54:31.203
514	287	2	Beach towel H	2025-02-18 07:51:51.359	2025-02-18 07:54:31.203
515	288	1	ผ้าปูชายหาด I	2025-02-18 07:51:51.359	2025-02-18 07:54:31.203
516	288	2	Beach towel I	2025-02-18 07:51:51.359	2025-02-18 07:54:31.203
517	289	1	ผ้าปูชายหาด J	2025-02-18 07:51:51.359	2025-02-18 07:54:31.203
518	289	2	Beach towel J	2025-02-18 07:51:51.359	2025-02-18 07:54:31.203
519	290	1	ผ้าปูชายหาด K	2025-02-18 07:51:51.359	2025-02-18 07:54:31.203
520	290	2	Beach towel K	2025-02-18 07:51:51.359	2025-02-18 07:54:31.203
521	291	1	ผ้าปูชายหาด L	2025-02-18 07:51:51.359	2025-02-18 07:54:31.203
522	291	2	Beach towel L	2025-02-18 07:51:51.359	2025-02-18 07:54:31.203
523	292	1	ผ้าปูชายหาด N	2025-02-18 07:51:51.359	2025-02-18 07:54:31.203
524	292	2	Beach towel N	2025-02-18 07:51:51.359	2025-02-18 07:54:31.203
525	293	1	ผ้าปูชายหาด O	2025-02-18 07:51:51.359	2025-02-18 07:54:31.203
526	293	2	Beach towel O	2025-02-18 07:51:51.359	2025-02-18 07:54:31.203
527	294	1	ผ้าปูชายหาด P	2025-02-18 07:51:51.359	2025-02-18 07:54:31.203
528	294	2	Beach towel P	2025-02-18 07:51:51.359	2025-02-18 07:54:31.203
529	295	1	ผ้าปูชายหาด Q	2025-02-18 07:51:51.359	2025-02-18 07:54:31.203
530	295	2	Beach towel Q	2025-02-18 07:51:51.359	2025-02-18 07:54:31.203
539	301	1	ผ้าขนหนูชายหาด	2025-02-18 08:02:30.196	2025-02-18 08:00:20.429
540	301	2	Beach towel	2025-02-18 08:02:30.196	2025-02-18 08:00:20.588
541	300	1	ผ้าขนหนูชายหาด	2025-02-18 08:02:30.196	2025-02-18 08:00:20.764
542	300	2	Beach towel	2025-02-18 08:02:30.196	2025-02-18 08:00:20.924
543	299	1	ผ้าขนหนูชายหาด	2025-02-18 08:02:30.196	2025-02-18 08:00:21.109
544	299	2	Beach towel	2025-02-18 08:02:30.196	2025-02-18 08:00:21.284
467	260	1	เสื้อชูชีพเด็กเป่าลมสีพื้น B (Size L)	2025-02-18 03:34:26.721	2025-07-15 06:29:46.325
468	260	2	Children's swim safe B (Size L)	2025-02-18 03:34:26.721	2025-07-15 06:29:46.325
465	261	1	เสื้อชูชีพเด็กเป่าลมสีพื้น C (Size M)	2025-02-18 03:34:26.721	2025-07-15 06:30:45.571
466	261	2	Children's swim safe C (Size M)	2025-02-18 03:34:26.721	2025-07-15 06:30:45.571
545	298	1	ผ้าขนหนูชายหาด	2025-02-18 08:02:30.196	2025-02-18 08:00:21.435
546	298	2	Beach towel	2025-02-18 08:02:30.196	2025-02-18 08:00:22.02
547	297	1	ผ้าขนหนูชายหาด	2025-02-18 08:02:30.196	2025-02-18 08:00:22.172
548	297	2	Beach towel	2025-02-18 08:02:30.196	2025-02-18 08:00:23.14
549	296	1	ผ้าขนหนูชายหาด	2025-02-18 08:02:30.196	2025-02-18 08:00:23.284
550	296	2	Beach towel	2025-02-18 08:02:30.196	2025-02-18 08:00:23.812
552	302	2	Beach towel Welcome Thailand 	2025-02-18 08:20:15.499	2025-02-18 08:24:37.572
571	312	1	ผ้าคลุมอาบน้ำเด็กพร้อมหมวก ลายนางเงือก	2025-02-18 08:53:37.897	2025-02-18 08:58:28.716
573	313	1	ผ้าคลุมอาบน้ำเด็กพร้อมหมวก ลายมนุษย์อวกาศ	2025-02-18 08:53:37.897	2025-02-18 08:58:28.716
558	305	2	Beach towel Thailand Beach	2025-02-18 08:20:15.499	2025-02-18 08:24:37.572
564	308	2	Beach towel Krabi	2025-02-18 08:20:15.499	2025-02-18 08:24:37.572
562	307	2	Beach towel 3 Thai elephant 	2025-02-18 08:20:15.499	2025-02-18 08:24:37.572
560	306	2	Beach towel Thai elephant 	2025-02-18 08:20:15.499	2025-02-18 08:24:37.572
556	304	2	Beach towel 4 Thai elephant	2025-02-18 08:20:15.499	2025-02-18 08:24:37.572
554	303	2	Beach towel Dolphin-Samui	2025-02-18 08:20:15.499	2025-02-18 08:24:37.572
565	309	1	ผ้าขนหนูชายหาด ทอลายแผนที่ประเทศไทย	2025-02-18 08:38:24.46	2025-02-18 08:35:31.858
566	309	2	Beach towel Thai map	2025-02-18 08:38:24.46	2025-02-18 08:35:32.01
567	310	1	ผ้าขนหนูชายหาด ทอลายแผนที่ประเทศไทย	2025-02-18 08:38:24.46	2025-02-18 08:35:32.171
568	310	2	Beach towel Thai map	2025-02-18 08:38:24.46	2025-02-18 08:35:32.323
569	311	1	ผ้าขนหนูชายหาด ทอลายเกาะภูเก็ต	2025-02-18 08:38:24.46	2025-02-18 08:35:32.466
570	311	2	Beach towel Phuket	2025-02-18 08:38:24.46	2025-02-18 08:35:32.987
563	308	1	ผ้าขนหนูชายหาด ทอลายกระบี๋	2025-02-18 08:20:15.499	2025-02-18 08:38:24.46
561	307	1	ผ้าขนหนูชายหาด ทอลายช้างไทย 3 ตัว	2025-02-18 08:20:15.499	2025-02-18 08:38:24.46
559	306	1	ผ้าขนหนูชายหาด ทอลายช้างไทย	2025-02-18 08:20:15.499	2025-02-18 08:38:24.46
557	305	1	ผ้าขนหนูชายหาด ทอลาย Thailand Beach	2025-02-18 08:20:15.499	2025-02-18 08:38:24.46
555	304	1	ผ้าขนหนูชายหาด ทอลายช้างไทย 4 ตัว 	2025-02-18 08:20:15.499	2025-02-18 08:38:24.46
553	303	1	ผ้าขนหนูชายหาด ทอลายโลมา-เกาะสมุย	2025-02-18 08:20:15.499	2025-02-18 08:38:24.46
551	302	1	ผ้าขนหนูชายหาด ทอลาย Welcome Thailand 	2025-02-18 08:20:15.499	2025-02-18 08:38:24.46
575	314	1	ผ้าคลุมอาบน้ำเด็กพร้อมหมวก ลายจระเข้	2025-02-18 08:53:37.897	2025-02-18 08:58:28.716
577	315	1	ผ้าคลุมอาบน้ำเด็กพร้อมหมวก ลายเจ้าหญิง	2025-02-18 08:53:37.897	2025-02-18 08:58:28.716
579	316	1	ผ้าคลุมอาบน้ำเด็กพร้อมหมวก ลายฉลาม	2025-02-18 08:53:37.897	2025-02-18 08:58:28.716
581	317	1	ผ้าคลุมอาบน้ำเด็กพร้อมหมวก ลายปลาหมึก	2025-02-18 08:53:37.897	2025-02-18 08:58:28.716
582	317	2	children's bathrobe with a hood octopus	2025-02-18 08:53:37.897	2025-02-18 08:58:28.716
580	316	2	children's bathrobe with a hood shark	2025-02-18 08:53:37.897	2025-02-18 08:58:28.716
578	315	2	children's bathrobe with a hood princes	2025-02-18 08:53:37.897	2025-02-18 08:58:28.716
576	314	2	children's bathrobe with a hood crocodile	2025-02-18 08:53:37.897	2025-02-18 08:58:28.716
574	313	2	children's bathrobe with a hood astronaut	2025-02-18 08:53:37.897	2025-02-18 08:58:28.716
572	312	2	children's bathrobe with a hood mermaid	2025-02-18 08:53:37.897	2025-02-18 08:58:28.716
583	318	1	ห่วงยางเป่าลม ยูนิคอร์นหางรุ้ง เล็ก	2025-02-18 09:16:47.471	2025-02-18 09:14:55.015
584	318	2	Sainteve unicorn swimming ring small	2025-02-18 09:16:47.471	2025-02-18 09:14:55.167
585	319	1	ห่วงยางเป่าลม ยูนิคอร์นหางรุ้ง กลาง	2025-02-18 09:16:47.471	2025-02-18 09:14:55.351
586	319	2	Sainteve unicorn swimming ring medium	2025-02-18 09:16:47.471	2025-02-18 09:15:02.319
587	320	1	ห่วงยางเป่าลม ยูนิคอร์นหางรุ้ง ใหญ่	2025-02-18 09:16:47.471	2025-02-18 09:15:02.479
588	320	2	Sainteve unicorn swimming ring large	2025-02-18 09:16:47.471	2025-02-18 09:15:02.663
589	321	1	บอลเป่าลมยูนิคอร์น	2025-02-18 09:21:42.513	2025-02-18 09:19:15
590	321	2	Pool ball unicorn	2025-02-18 09:21:42.513	2025-02-18 09:19:15.142
591	322	1	บอลเป่าลมปู	2025-02-18 09:21:42.513	2025-02-18 09:19:15.302
592	322	2	Pool ball crab	2025-02-18 09:21:42.513	2025-02-18 09:19:15.766
593	323	1	บอลเป่าลมฟลามิงโก้	2025-02-18 09:21:42.513	2025-02-18 09:19:15.926
594	323	2	Pool ball flamingo	2025-02-18 09:21:42.513	2025-02-18 09:19:16.07
595	324	1	บอลเป่าลมแตงโม	2025-02-18 09:21:42.513	2025-02-18 09:19:18.15
596	324	2	Pool ball watermelon	2025-02-18 09:21:42.513	2025-02-18 09:19:18.318
597	325	1	ปลอกแขนเด็ก 3D ฟลามิงโก้	2025-02-18 09:36:27.988	2025-02-18 09:31:35.517
598	325	2	Kids swimming arm bands flamingo	2025-02-18 09:36:27.988	2025-02-18 09:31:35.684
599	326	1	ปลอกแขนเด็ก 3D ปู	2025-02-18 09:36:27.988	2025-02-18 09:31:35.826
600	326	2	Kids swimming arm bands crab	2025-02-18 09:36:27.988	2025-02-18 09:31:36.002
601	327	1	ปลอกแขนเด็ก 3D ยูนิคอร์น	2025-02-18 09:36:27.988	2025-02-18 09:31:36.146
602	327	2	Kids swimming arm bands unicorn	2025-02-18 09:36:27.988	2025-02-18 09:31:36.3
603	328	1	ปลอกแขนเด็ก 3D นก	2025-02-18 09:36:27.988	2025-02-18 09:31:36.45
604	328	2	Kids swimming arm bands toucan	2025-02-18 09:36:27.988	2025-02-18 09:31:36.818
605	329	1	ปลอกแขนเด็ก 3D ปลาหมึก	2025-02-18 09:36:27.988	2025-02-18 09:31:37.306
606	329	2	Kids swimming arm bands octopus	2025-02-18 09:36:27.988	2025-02-18 09:31:38.403
607	330	1	เสื้อชูชีพ ปีกนางฟ้า กลาง	2025-02-18 09:47:52.056	2025-02-18 09:46:14.903
608	330	2	Angel wings swimming life jacket small	2025-02-18 09:47:52.056	2025-02-18 09:46:15.062
1280	719	1	เสื้อคลุมผู้ชาย	2025-07-12 02:44:29.844	2025-07-12 02:43:45.977
1281	719	2	Men's coat	2025-07-12 02:44:29.844	2025-07-12 02:43:55.378
1192	594	2	เดรสแฟชั่น	2025-03-07 06:15:53.616	2025-03-07 06:15:11.765
611	332	1	หน้ากากเต็มหน้าเด็ก ยูนิคอร์น	2025-02-18 09:50:56.252	2025-02-18 09:50:16.11
612	332	2	Full face for kids (Mesh bag) Unicorn	2025-02-18 09:50:56.252	2025-02-18 09:50:22.165
613	336	1	หน้ากากดำน้ำเต็มหน้าเด็ก (ถุงตาข่าย) หน้าฉลาม 	2025-02-18 16:06:09.51	2025-02-18 16:04:34.404
614	336	2	Full face for kids (Mesh bag) Shark-Blue	2025-02-18 16:06:09.51	2025-02-18 16:04:34.623
615	337	1	โซฟาลม แบบพกพา	2025-02-18 16:13:26.308	2025-02-18 16:12:51.24
616	337	2	Portable air sofa	2025-02-18 16:13:26.308	2025-02-18 16:12:51.405
619	339	1	หมวกสานผู้ใหญ่  ชุดสตรอเบอรี่ 	2025-02-18 16:31:05.699	2025-02-18 16:22:58.49
620	339	2	Woven hat, Strawberry adult set	2025-02-18 16:31:05.699	2025-02-18 16:22:58.654
623	341	1	หมวกสานผู้ใหญ่  ชุดเดซี่	2025-02-18 16:31:05.699	2025-02-18 16:22:59.145
624	341	2	Woven hat, Daisy adult set	2025-02-18 16:31:05.699	2025-02-18 16:22:59.31
627	343	1	หมวกสานผู้ใหญ่  ชุดจัสมิน	2025-02-18 16:31:05.699	2025-02-18 16:22:59.805
628	343	2	Woven hat, Jasmine adult set	2025-02-18 16:31:05.699	2025-02-18 16:23:00.162
631	345	1	ผ้าขนหนูเช็ดหน้า	2025-02-18 16:49:40.266	2025-02-18 16:47:08.927
632	345	2	Face towels Brow-Cream color	2025-02-18 16:49:40.266	2025-02-18 16:47:09.091
633	346	1	ร่มพับสีพื้น 3 ตอน (ป้องกันยูวี)	2025-02-18 16:49:40.266	2025-02-18 16:47:09.627
634	346	2	DrySuper umbrella	2025-02-18 16:49:40.266	2025-02-18 16:47:09.792
635	347	1	ร่มยาวใสกันฝน ทรงญี่ปุ่น	2025-02-18 16:49:40.266	2025-02-18 16:47:10.239
636	347	2	DrySuper POE umbrella	2025-02-18 16:49:40.266	2025-02-18 16:47:10.378
637	348	1	ร่มสั้นสามตอนเปิดปิดอัตโนมัติ (ป้องกันยูวี)	2025-02-18 16:49:40.266	2025-02-18 16:47:10.855
638	348	2	DrySuper Auto umbrella	2025-02-18 16:49:40.266	2025-02-18 16:47:11.294
639	349	1	ห่วงยางขาสอดเรือดำน้ำ	2025-02-19 01:12:46.774	2025-02-19 01:08:46.601
640	349	2	Baby boat submarine	2025-02-19 01:12:46.774	2025-02-19 01:08:46.735
641	350	1	ห่วงยางขาสอดเรือดำน้ำ	2025-02-19 01:12:46.774	2025-02-19 01:08:47.527
642	350	2	Baby boat submarine	2025-02-19 01:12:46.774	2025-02-19 01:08:47.655
643	351	1	ห่วงยางขาสอดเรือดำน้ำ	2025-02-19 01:12:46.774	2025-02-19 01:08:48.224
644	351	2	Baby boat submarine	2025-02-19 01:12:46.774	2025-02-19 01:08:48.375
645	352	1	ห่วงยางขาสอดเรือดำน้ำ	2025-02-19 01:12:46.774	2025-02-19 01:08:48.536
646	352	2	Baby boat submarine	2025-02-19 01:12:46.774	2025-02-19 01:08:48.936
647	353	1	ที่วางแก้วลอยน้ำ	2025-02-19 05:38:51.647	2025-02-19 05:36:45.968
648	353	2	Inflatable Coaster	2025-02-19 05:38:51.647	2025-02-19 05:36:46.124
649	354	1	ซองกันน้ำ คลิปล๊อกเรืองแสง	2025-02-19 05:38:51.647	2025-02-19 05:36:46.284
650	354	2	DrySuper clip-lock waterproof pouch 	2025-02-19 05:38:51.647	2025-02-19 05:36:46.444
651	355	1	ที่วางแก้วลอยน้ำ	2025-02-19 05:38:51.647	2025-02-19 05:36:51.822
652	355	2	Inflatable Coaster	2025-02-19 05:38:51.647	2025-02-19 05:36:51.972
653	356	1	ซองกันน้ำ ขอบลม	2025-02-19 05:38:51.647	2025-02-19 05:36:52.132
654	356	2	Dry Super waterproof bag 	2025-02-19 05:38:51.647	2025-02-19 05:36:52.292
1060	591	2	Linen Dress	2025-02-20 08:38:55.156	2025-02-20 08:36:51.341
655	357	1	หน้ากากดำน้ำเต็มหน้าเด็ก	2025-02-19 06:03:38.658	2025-02-19 06:02:11.591
656	357	2	Snorkel full face for kids (Mesh bag)	2025-02-19 06:03:38.658	2025-02-19 06:02:11.768
657	358	1	หน้ากากดำน้ำเต็มหน้าผู้ใหญ่	2025-02-19 06:03:38.658	2025-02-19 06:02:11.909
658	358	2	Snorkel full face for adult (Mesh bag)	2025-02-19 06:03:38.658	2025-02-19 06:02:12.606
659	359	1	ไม้บีชบอล	2025-02-19 06:09:05.855	2025-02-19 06:07:51.566
660	359	2	Beach ball paddle	2025-02-19 06:09:05.855	2025-02-19 06:07:51.724
661	360	1	ลูกบีชบอล	2025-02-19 06:09:05.855	2025-02-19 06:07:51.853
662	360	2	Beach ball	2025-02-19 06:09:05.855	2025-02-19 06:07:52.396
663	361	1	จานร่อนพลาสติก	2025-02-19 06:12:38.514	2025-02-19 06:12:10.116
664	361	2	Flying Ring 10.50” (WD)	2025-02-19 06:12:38.514	2025-02-19 06:12:10.267
665	362	1	ตีนกบ-เด็ก	2025-02-19 06:16:03.252	2025-02-19 06:15:06.955
666	362	2	Kids swimming fins	2025-02-19 06:16:03.252	2025-02-19 06:15:07.105
667	363	1	ตีนกบ	2025-02-19 06:16:03.252	2025-02-19 06:15:07.242
668	363	2	Swimming Fins	2025-02-19 06:16:03.252	2025-02-19 06:15:07.394
669	364	1	รองเท้าเดินหาดเด็ก	2025-02-19 06:25:51.032	2025-02-19 06:22:40.194
670	364	2	beach sandals kids	2025-02-19 06:25:51.032	2025-02-19 06:22:40.344
671	365	1	รองเท้าเดินหาดเด็ก	2025-02-19 06:25:51.032	2025-02-19 06:22:40.495
672	365	2	beach sandals kids	2025-02-19 06:25:51.032	2025-02-19 06:22:40.657
673	366	1	รองเท้าเดินหาดเด็ก	2025-02-19 06:25:51.032	2025-02-19 06:22:40.808
674	366	2	beach sandals kids	2025-02-19 06:25:51.032	2025-02-19 06:22:40.961
675	367	1	รองเท้าเดินหาดเด็ก	2025-02-19 06:25:51.032	2025-02-19 06:22:41.105
676	367	2	beach sandals kids	2025-02-19 06:25:51.032	2025-02-19 06:22:41.312
677	368	1	รองเท้าเดินหาดเด็ก	2025-02-19 06:25:51.032	2025-02-19 06:22:41.472
678	368	2	beach sandals kids	2025-02-19 06:25:51.032	2025-02-19 06:22:42.113
679	369	1	รองเท้าเดินหาดเด็ก	2025-02-19 06:25:51.032	2025-02-19 06:22:42.272
680	369	2	beach sandals kids	2025-02-19 06:25:51.032	2025-02-19 06:22:42.432
681	370	1	รองเท้าเดินหาดเด็ก วาฬฟ้า 	2025-02-19 06:45:32.074	2025-02-19 06:40:19.148
682	370	2	beach sandals kids blue whale	2025-02-19 06:45:32.074	2025-02-19 06:40:19.307
683	371	1	รองเท้าเดินหาดเด็ก วาฬชมพู	2025-02-19 06:45:32.074	2025-02-19 06:40:19.771
684	371	2	beach sandals kids pink whale	2025-02-19 06:45:32.074	2025-02-19 06:40:19.915
685	372	1	รองเท้าเดินหาดเด็ก สัตว์ทะเลชมพู	2025-02-19 06:45:32.074	2025-02-19 06:40:20.051
686	372	2	beach sandals kids pink creatures	2025-02-19 06:45:32.074	2025-02-19 06:40:20.195
618	338	2	Woven hat, Strawberry kids	2025-02-18 16:31:05.699	2025-03-07 08:04:52.279
621	340	1	หมวกสานเด็ก เดซี่เซ็ท	2025-02-18 16:31:05.699	2025-03-07 08:05:29.381
622	340	2	Woven hat, Daisy kids	2025-02-18 16:31:05.699	2025-03-07 08:05:29.381
625	342	1	หมวกสานเด็ก จัสมินเซ็ท	2025-02-18 16:31:05.699	2025-03-07 08:05:57.935
626	342	2	Woven hat, Jasmine kids	2025-02-18 16:31:05.699	2025-03-07 08:05:57.935
629	344	1	หมวกมุ้งมิ้ง	2025-02-18 16:31:05.699	2025-03-07 08:06:36.933
630	344	2	Cute Hat	2025-02-18 16:31:05.699	2025-03-07 08:06:36.933
687	373	1	รองเท้าเดินหาดเด็ก สัตว์ทะเลน้ำเงิน	2025-02-19 06:45:32.074	2025-02-19 06:40:20.355
688	373	2	beach sandals kids blue creatures	2025-02-19 06:45:32.074	2025-02-19 06:40:20.508
689	374	1	รองเท้าเดินหาดเด็ก เต่าเขียว	2025-02-19 06:45:32.074	2025-02-19 06:40:20.66
690	374	2	beach sandals kids green turtle	2025-02-19 06:45:32.074	2025-02-19 06:40:20.803
692	375	2	beach sandals kids octopus	2025-02-19 06:45:32.074	2025-02-19 06:40:21.107
693	376	1	รองเท้าเดินหาดเด็ก ปลาดาวชมพู	2025-02-19 06:45:32.074	2025-02-19 06:40:21.276
694	376	2	beach sandals kids pink star fish	2025-02-19 06:45:32.074	2025-02-19 06:40:21.436
292	145	2	Sainteve color block Ring two tone color	2025-02-16 18:12:36.467	2025-05-16 03:50:13.862
695	377	1	รองเท้าเดินหาดเด็ก ปลาดาวเหลือง	2025-02-19 06:45:32.074	2025-02-19 06:40:21.595
696	377	2	beach sandals kids yellow star fish	2025-02-19 06:45:32.074	2025-02-19 06:40:21.755
697	378	1	รองเท้าเดินหาดเด็ก ฉลามเหลือง 	2025-02-19 06:45:32.074	2025-02-19 06:40:21.932
698	378	2	beach sandals kids yellow shark	2025-02-19 06:45:32.074	2025-02-19 06:40:22.396
699	379	1	รองเท้าเดินหาดเด็ก ฉลามน้ำเงิน	2025-02-19 06:45:32.074	2025-02-19 06:40:22.539
700	379	2	beach sandals kids blue shark	2025-02-19 06:45:32.074	2025-02-19 06:40:23.027
701	380	1	รองเท้าเดินหาดผู้ใหญ่	2025-02-19 09:43:55.182	2025-02-19 09:41:51.158
702	380	2	beach sandals adult	2025-02-19 09:43:55.182	2025-02-19 09:41:52.471
703	381	1	รองเท้าเดินหาดผู้ใหญ่	2025-02-19 09:43:55.182	2025-02-19 09:41:52.621
704	381	2	beach sandals adult	2025-02-19 09:43:55.182	2025-02-19 09:41:52.79
705	382	1	รองเท้าเดินหาดผู้ใหญ่	2025-02-19 09:43:55.182	2025-02-19 09:41:52.949
706	382	2	beach sandals adult	2025-02-19 09:43:55.182	2025-02-19 09:41:53.093
707	383	1	รองเท้าเดินหาดผู้ใหญ่	2025-02-19 09:43:55.182	2025-02-19 09:41:53.262
708	383	2	beach sandals adult	2025-02-19 09:43:55.182	2025-02-19 09:41:53.431
709	384	1	รองเท้าเดินหาดผู้ใหญ่	2025-02-19 09:43:55.182	2025-02-19 09:41:53.837
710	384	2	beach sandals adult	2025-02-19 09:43:55.182	2025-02-19 09:41:53.99
711	385	1	รองเท้าเดินหาดผู้ใหญ่	2025-02-19 09:43:55.182	2025-02-19 09:41:54.494
712	385	2	beach sandals adult	2025-02-19 09:43:55.182	2025-02-19 09:41:54.645
724	391	2	Cover Coat Crochet CHIFFON FABRIC	2025-02-20 03:34:41.694	2025-02-20 03:30:26.469
729	394	1	ชุดคลุมถักโครเชต์	2025-02-20 03:38:27.805	2025-02-20 03:34:52.379
731	395	1	ชุดคลุมถักโครเชต์	2025-02-20 03:38:27.805	2025-02-20 03:34:53.262
732	395	2	Crochet Cover up	2025-02-20 03:38:27.805	2025-02-20 06:47:55.12
730	394	2	Crochet Cover up	2025-02-20 03:38:27.805	2025-02-20 06:47:55.12
728	393	2	Crochet Cover up	2025-02-20 03:34:41.694	2025-02-20 06:47:55.12
726	392	2	Crochet Cover up	2025-02-20 03:34:41.694	2025-02-20 06:47:55.12
722	390	2	Crochet Cover up	2025-02-20 03:34:41.694	2025-02-20 06:47:55.12
720	389	2	Crochet Mix Cotton Cover up	2025-02-20 03:34:41.694	2025-02-20 06:47:55.12
718	388	2	Crochet Mix Cotton Cover up	2025-02-20 03:34:41.694	2025-02-20 06:47:55.12
716	387	2	Crochet Mix Cotton Cover up	2025-02-20 03:34:41.694	2025-02-20 06:47:55.12
714	386	2	Crochet Mix Cotton Cover up	2025-02-20 03:34:41.694	2025-02-20 06:47:55.12
733	396	1	ชุดเดรสโครเชต์	2025-02-20 03:38:27.805	2025-02-20 03:35:38.603
734	396	2	Crochet Dress	2025-02-20 03:38:27.805	2025-02-20 03:35:38.763
735	397	1	ชุดเดรสโครเชต์	2025-02-20 03:38:27.805	2025-02-20 03:35:40.715
736	397	2	Crochet Dress	2025-02-20 03:38:27.805	2025-02-20 03:35:40.877
727	393	1	ชุดคลุมถักโครเชต์	2025-02-20 03:34:41.694	2025-02-20 03:38:27.805
725	392	1	ชุดคลุมถักโครเชต์	2025-02-20 03:34:41.694	2025-02-20 03:38:27.805
723	391	1	ชุดคลุมถักโครเชต์ผ้าชีฟอง	2025-02-20 03:34:41.694	2025-02-20 03:38:27.805
721	390	1	ชุดคลุมถักโครเชต์	2025-02-20 03:34:41.694	2025-02-20 03:38:27.805
719	389	1	ชุดคลุมถักโครเชต์ผสมผ้าฝ้าย	2025-02-20 03:34:41.694	2025-02-20 03:38:27.805
717	388	1	ชุดคลุมถักโครเชต์ผสมผ้าฝ้าย	2025-02-20 03:34:41.694	2025-02-20 03:38:27.805
715	387	1	ชุดคลุมถักโครเชต์ผสมผ้าฝ้าย	2025-02-20 03:34:41.694	2025-02-20 03:38:27.805
713	386	1	ชุดคลุมถักโครเชต์ผสมผ้าฝ้าย	2025-02-20 03:34:41.694	2025-02-20 03:38:27.805
737	398	1	ชุดคลุมถักโครเชต์	2025-02-20 03:41:47.589	2025-02-20 03:38:53.864
739	399	1	ชุดคลุมถักโครเชต์	2025-02-20 03:41:47.589	2025-02-20 03:38:54.667
741	400	1	ชุดคลุมเดรสชายหาด ผ้าชีฟอง	2025-02-20 03:41:47.589	2025-02-20 03:40:12.74
742	400	2	Beach Dress Cover CHIFFON FABRIC	2025-02-20 03:41:47.589	2025-02-20 03:40:12.882
743	401	1	ชุดเดรสโครเชต์	2025-02-20 03:41:47.589	2025-02-20 03:40:15.891
744	401	2	Crochet Dress	2025-02-20 03:41:47.589	2025-02-20 03:40:16.036
745	402	1	ชุดคลุมชายหาด	2025-02-20 06:26:27.446	2025-02-20 06:17:34.801
746	402	2	Beach Cover Up	2025-02-20 06:26:27.446	2025-02-20 06:17:34.96
747	403	1	เดรสคลุมโครเชต์	2025-02-20 06:26:27.446	2025-02-20 06:17:37.553
748	403	2	Crochet Cover Dress	2025-02-20 06:26:27.446	2025-02-20 06:17:37.704
749	404	1	ชุดเดรสโครเชต์	2025-02-20 06:26:27.446	2025-02-20 06:21:01.45
750	404	2	Crochet Dress	2025-02-20 06:26:27.446	2025-02-20 06:21:01.615
751	405	1	ชุดถักโครเชต์	2025-02-20 06:26:27.446	2025-02-20 06:21:02.648
752	405	2	Crochet Cover	2025-02-20 06:26:27.446	2025-02-20 06:21:02.799
753	406	1	ชุดคลุมถักโครเชต์	2025-02-20 06:26:27.446	2025-02-20 06:24:24.737
755	407	1	ชุดคลุมถักโครเชต์	2025-02-20 06:26:27.446	2025-02-20 06:24:43.654
757	408	1	ชุดคลุมถักโครเชต์	2025-02-20 06:26:27.446	2025-02-20 06:25:36.902
759	409	1	ชุดเดรสโครเชต์	2025-02-20 06:26:27.446	2025-02-20 06:25:38.606
760	409	2	Crochet Dress	2025-02-20 06:26:27.446	2025-02-20 06:25:38.782
761	410	1	ชุดเดรสโครเชต์	2025-02-20 06:30:21.474	2025-02-20 06:26:45.135
762	410	2	Crochet Dress	2025-02-20 06:30:21.474	2025-02-20 06:26:45.287
763	411	1	ชุดเดรสโครเชต์	2025-02-20 06:30:21.474	2025-02-20 06:26:48.262
764	411	2	Crochet Dress	2025-02-20 06:30:21.474	2025-02-20 06:26:48.421
765	412	1	ชุดเดรสโครเชต์	2025-02-20 06:30:21.474	2025-02-20 06:26:49.333
766	412	2	Crochet Dress	2025-02-20 06:30:21.474	2025-02-20 06:26:49.485
767	413	1	ชุดเดรสโครเชต์	2025-02-20 06:30:21.474	2025-02-20 06:26:50.829
768	413	2	Crochet Dress	2025-02-20 06:30:21.474	2025-02-20 06:26:51.597
769	414	1	ชุดคลุมถักโครเชต์	2025-02-20 06:30:21.474	2025-02-20 06:27:53.029
771	415	1	ชุดเดรสโครเชต์	2025-02-20 06:30:21.474	2025-02-20 06:28:28.758
772	415	2	Crochet Dress	2025-02-20 06:30:21.474	2025-02-20 06:28:28.901
773	416	1	เดรสสั้นโครเชต์	2025-02-20 06:30:21.474	2025-02-20 06:28:55.741
774	416	2	Crochet Mini Dress	2025-02-20 06:30:21.474	2025-02-20 06:28:55.901
775	417	1	เดรสสั้นโครเชต์	2025-02-20 06:30:21.474	2025-02-20 06:28:57.038
776	417	2	Crochet Mini Dress	2025-02-20 06:30:21.474	2025-02-20 06:28:57.19
777	418	1	เดรสสั้นโครเชต์	2025-02-20 06:30:21.474	2025-02-20 06:28:59.253
778	418	2	Crochet Mini Dress	2025-02-20 06:30:21.474	2025-02-20 06:28:59.405
779	419	1	เดรสสั้นโครเชต์	2025-02-20 06:30:21.474	2025-02-20 06:29:00.333
780	419	2	Crochet Mini Dress	2025-02-20 06:30:21.474	2025-02-20 06:29:00.485
781	420	1	เดรสสั้นโครเชต์	2025-02-20 06:36:57.341	2025-02-20 06:31:03.421
782	420	2	Crochet Mini Dress	2025-02-20 06:36:57.341	2025-02-20 06:31:03.567
783	421	1	เดรสสั้นโครเชต์	2025-02-20 06:36:57.341	2025-02-20 06:31:03.708
784	421	2	Crochet Mini Dress	2025-02-20 06:36:57.341	2025-02-20 06:31:04.125
785	422	1	เดรสสั้นโครเชต์	2025-02-20 06:36:57.341	2025-02-20 06:31:04.292
786	422	2	Crochet Mini Dress	2025-02-20 06:36:57.341	2025-02-20 06:31:04.436
787	423	1	เดรสสั้นโครเชต์	2025-02-20 06:36:57.341	2025-02-20 06:31:04.58
788	423	2	Crochet Mini Dress	2025-02-20 06:36:57.341	2025-02-20 06:31:05.092
789	424	1	เดรสสั้นโครเชต์	2025-02-20 06:36:57.341	2025-02-20 06:32:13.726
790	424	2	Crochet Mini Dress	2025-02-20 06:36:57.341	2025-02-20 06:32:13.868
791	425	1	เดรสโครเชต์ชายหาด	2025-02-20 06:36:57.341	2025-02-20 06:32:14.476
792	425	2	Crochet Beach Dress	2025-02-20 06:36:57.341	2025-02-20 06:32:14.612
793	426	1	ชุดคลุมถักโครเชต์	2025-02-20 06:36:57.341	2025-02-20 06:33:44.661
795	427	1	ชุดคลุมถักโครเชต์	2025-02-20 06:36:57.341	2025-02-20 06:33:45.588
797	428	1	ชุดถักโครเชต์	2025-02-20 06:36:57.341	2025-02-20 06:33:46.164
799	429	1	ชุดถักโครเชต์	2025-02-20 06:36:57.341	2025-02-20 06:33:46.756
801	430	1	ชุดคลุมถักโครเชต์	2025-02-20 06:36:57.341	2025-02-20 06:35:39.315
803	431	1	ชุดคลุมถักโครเชต์	2025-02-20 06:36:57.341	2025-02-20 06:35:39.62
805	432	1	ชุดคลุมถักโครเชต์	2025-02-20 06:36:57.341	2025-02-20 06:35:40.148
807	433	1	ชุดคลุมถักโครเชต์	2025-02-20 06:36:57.341	2025-02-20 06:35:40.747
809	434	1	ชุดคลุมถักโครเชต์	2025-02-20 06:47:55.12	2025-02-20 06:39:10.235
810	434	2	Crochet Cover up	2025-02-20 06:47:55.12	2025-02-20 06:39:10.524
811	435	1	ชุดคลุมถักโครเชต์	2025-02-20 06:47:55.12	2025-02-20 06:39:10.707
812	435	2	Crochet Cover up	2025-02-20 06:47:55.12	2025-02-20 06:39:11.13
813	436	1	ชุดคลุมถักโครเชต์	2025-02-20 06:47:55.12	2025-02-20 06:39:11.291
814	436	2	Crochet Cover up	2025-02-20 06:47:55.12	2025-02-20 06:39:11.418
815	437	1	ชุดคลุมถักโครเชต์	2025-02-20 06:47:55.12	2025-02-20 06:39:11.994
816	437	2	Crochet Cover up	2025-02-20 06:47:55.12	2025-02-20 06:39:12.14
817	438	1	ชุดคลุมชายหาดถักโครเชต์	2025-02-20 06:47:55.12	2025-02-20 06:40:41.938
818	438	2	Beach Cover Crochet	2025-02-20 06:47:55.12	2025-02-20 06:40:42.874
819	439	1	ชุดคลุมถักโครเชต์	2025-02-20 06:47:55.12	2025-02-20 06:40:45.036
820	439	2	Crochet Cover up	2025-02-20 06:47:55.12	2025-02-20 06:40:45.21
821	440	1	เสื้อคลุมผ้า Cotton	2025-02-20 06:47:55.12	2025-02-20 06:40:45.37
822	440	2	Cotton Cover Up	2025-02-20 06:47:55.12	2025-02-20 06:40:45.955
823	441	1	ชุดคลุมถักโครเชต์	2025-02-20 06:47:55.12	2025-02-20 06:40:46.811
824	441	2	Crochet Cover up	2025-02-20 06:47:55.12	2025-02-20 06:40:47.322
808	433	2	Crochet Cover up	2025-02-20 06:36:57.341	2025-02-20 06:47:55.12
806	432	2	Crochet Cover up	2025-02-20 06:36:57.341	2025-02-20 06:47:55.12
804	431	2	Crochet Cover up	2025-02-20 06:36:57.341	2025-02-20 06:47:55.12
802	430	2	Crochet Cover up	2025-02-20 06:36:57.341	2025-02-20 06:47:55.12
800	429	2	Crochet Cover	2025-02-20 06:36:57.341	2025-02-20 06:47:55.12
798	428	2	Crochet Cover	2025-02-20 06:36:57.341	2025-02-20 06:47:55.12
796	427	2	Crochet Cover up	2025-02-20 06:36:57.341	2025-02-20 06:47:55.12
794	426	2	Crochet Cover up	2025-02-20 06:36:57.341	2025-02-20 06:47:55.12
770	414	2	Crochet Cover up	2025-02-20 06:30:21.474	2025-02-20 06:47:55.12
758	408	2	Crochet Cover up	2025-02-20 06:26:27.446	2025-02-20 06:47:55.12
756	407	2	Crochet Cover up	2025-02-20 06:26:27.446	2025-02-20 06:47:55.12
754	406	2	Crochet Cover up	2025-02-20 06:26:27.446	2025-02-20 06:47:55.12
740	399	2	Crochet Cover up	2025-02-20 03:41:47.589	2025-02-20 06:47:55.12
738	398	2	Crochet Cover up	2025-02-20 03:41:47.589	2025-02-20 06:47:55.12
825	442	1	ชุดคลุมชายหาด	2025-02-20 06:51:56.243	2025-02-20 06:48:23.345
826	442	2	Beach Dress Cover	2025-02-20 06:51:56.243	2025-02-20 06:48:23.497
827	443	1	ชุดคลุมถักโครเชต์ผสมผ้า Cotton	2025-02-20 06:51:56.243	2025-02-20 06:48:26.081
828	443	2	Crochet Mix Cotton Cover Up	2025-02-20 06:51:56.243	2025-02-20 06:48:26.241
829	444	1	ชุดคลุมถักโครเชต์ผสมผ้า Cotton	2025-02-20 06:51:56.243	2025-02-20 06:48:27.753
830	444	2	Crochet Mix Cotton Cover Up	2025-02-20 06:51:56.243	2025-02-20 06:48:27.888
831	445	1	เดรสยาว	2025-02-20 06:51:56.243	2025-02-20 06:48:28.777
832	445	2	Maxi Dress	2025-02-20 06:51:56.243	2025-02-20 06:48:28.92
1311	735	2	Volleyball	2025-11-01 04:33:18.176	2025-11-01 04:31:03.391
833	446	1	ชุดคลุมถักโครเชต์ผสมผ้า Cotton	2025-02-20 06:59:10.818	2025-02-20 06:52:12.64
834	446	2	Crochet Mix Cotton Cover Up	2025-02-20 06:59:10.818	2025-02-20 06:52:12.784
835	447	1	ชุดคลุมถักโครเชต์ผสมผ้า Cotton	2025-02-20 06:59:10.818	2025-02-20 06:52:21.568
836	447	2	Crochet Mix Cotton Cover Up	2025-02-20 06:59:10.818	2025-02-20 06:52:21.728
837	448	1	ชุดคลุมถักโครเชต์ผสมผ้า Cotton	2025-02-20 06:59:10.818	2025-02-20 06:52:21.863
838	448	2	Crochet Mix Cotton Cover Up	2025-02-20 06:59:10.818	2025-02-20 06:52:22.584
839	449	1	ชุดคลุมถักโครเชต์ผสมผ้า Cotton	2025-02-20 06:59:10.818	2025-02-20 06:52:22.744
840	449	2	Crochet Mix Cotton Cover Up	2025-02-20 06:59:10.818	2025-02-20 06:52:23.896
841	450	1	ชุดคลุมถักโครเชต์ผสมผ้า Cotton	2025-02-20 06:59:10.818	2025-02-20 06:53:49.457
842	450	2	Crochet Mix Cotton Cover Up	2025-02-20 06:59:10.818	2025-02-20 06:53:49.607
843	451	1	ชุดคลุมถักโครเชต์	2025-02-20 06:59:10.818	2025-02-20 06:53:49.76
844	451	2	Crochet Cover up	2025-02-20 06:59:10.818	2025-02-20 06:53:49.904
845	452	1	ชุดคลุมถักโครเชต์ผสมผ้า Cotton	2025-02-20 06:59:10.818	2025-02-20 06:53:50.057
846	452	2	Crochet Mix Cotton Cover Up	2025-02-20 06:59:10.818	2025-02-20 06:53:50.217
847	453	1	ชุดคลุมถักโครเชต์	2025-02-20 06:59:10.818	2025-02-20 06:53:50.376
848	453	2	Crochet Cover up	2025-02-20 06:59:10.818	2025-02-20 06:53:50.857
849	454	1	ชุดคลุมถักโครเชต์ผสมผ้า Cotton	2025-02-20 06:59:10.818	2025-02-20 06:55:05.41
850	454	2	Crochet Mix Cotton Cover Up	2025-02-20 06:59:10.818	2025-02-20 06:55:05.554
851	455	1	ชุดคลุมถักโครเชต์ผสมผ้า Cotton	2025-02-20 06:59:10.818	2025-02-20 06:55:06.011
852	455	2	Crochet Mix Cotton Cover Up	2025-02-20 06:59:10.818	2025-02-20 06:55:06.146
853	456	1	มินิซีทรู	2025-02-20 06:59:10.818	2025-02-20 06:58:02.498
854	456	2	Mini See Trough	2025-02-20 06:59:10.818	2025-02-20 06:58:02.658
855	457	1	มินิซีทรู	2025-02-20 06:59:10.818	2025-02-20 06:58:02.819
856	457	2	Mini See Trough	2025-02-20 06:59:10.818	2025-02-20 06:58:02.979
857	458	1	มินิซีทรู	2025-02-20 06:59:10.818	2025-02-20 06:58:03.121
858	458	2	Mini See Trough	2025-02-20 06:59:10.818	2025-02-20 06:58:03.324
859	459	1	มินิซีทรู	2025-02-20 06:59:10.818	2025-02-20 06:58:08.29
860	459	2	Mini See Trough	2025-02-20 06:59:10.818	2025-02-20 06:58:08.426
861	460	1	ชุดเดรสโครเชต์มินิ	2025-02-20 07:19:50.638	2025-02-20 07:14:50.415
862	460	2	Mini Dress Crochet	2025-02-20 07:19:50.638	2025-02-20 07:14:50.59
863	461	1	ชุดเดรสโครเชต์มินิ	2025-02-20 07:19:50.638	2025-02-20 07:14:50.75
864	461	2	Mini Dress Crochet	2025-02-20 07:19:50.638	2025-02-20 07:14:50.943
865	462	1	ชุดเดรสโครเชต์มินิ	2025-02-20 07:19:50.638	2025-02-20 07:14:51.102
866	462	2	Mini Dress Crochet	2025-02-20 07:19:50.638	2025-02-20 07:14:51.255
867	463	1	มินิซีทรู	2025-02-20 07:19:50.638	2025-02-20 07:14:51.398
868	463	2	Mini See Trough	2025-02-20 07:19:50.638	2025-02-20 07:14:51.559
869	464	1	มินิซีทรู	2025-02-20 07:19:50.638	2025-02-20 07:16:56.421
870	464	2	Mini See Trough	2025-02-20 07:19:50.638	2025-02-20 07:16:56.558
871	465	1	ชุดครอปถักโครเชต์	2025-02-20 07:19:50.638	2025-02-20 07:17:55.094
872	465	2	Crochet Crop	2025-02-20 07:19:50.638	2025-02-20 07:17:55.245
873	466	1	ชุดครอปถักโครเชต์	2025-02-20 07:19:50.638	2025-02-20 07:17:55.429
874	466	2	Crochet Crop	2025-02-20 07:19:50.638	2025-02-20 07:17:55.629
875	467	1	ชุดครอปถักโครเชต์	2025-02-20 07:19:50.638	2025-02-20 07:17:56.301
876	467	2	Crochet Crop	2025-02-20 07:19:50.638	2025-02-20 07:17:56.469
877	468	1	ชุดครอปถักโครเชต์	2025-02-20 07:19:50.638	2025-02-20 07:17:58.646
878	468	2	Crochet Crop	2025-02-20 07:19:50.638	2025-02-20 07:17:58.845
879	469	1	ชุดครอปถักโครเชต์	2025-02-20 07:41:37.548	2025-02-20 07:22:29.959
880	469	2	Crochet Crop	2025-02-20 07:41:37.548	2025-02-20 07:22:30.092
881	470	1	ชุดครอปถักโครเชต์	2025-02-20 07:41:37.548	2025-02-20 07:22:30.244
882	470	2	Crochet Crop	2025-02-20 07:41:37.548	2025-02-20 07:22:30.437
883	471	1	ชุดครอปถักโครเชต์	2025-02-20 07:41:37.548	2025-02-20 07:22:31.141
884	471	2	Crochet Crop	2025-02-20 07:41:37.548	2025-02-20 07:22:31.284
885	472	1	ชุดครอปถักโครเชต์	2025-02-20 07:41:37.548	2025-02-20 07:22:31.469
886	472	2	Crochet Crop	2025-02-20 07:41:37.548	2025-02-20 07:22:31.9
887	474	1	ชุดครอปถักโครเชต์	2025-02-20 07:41:37.548	2025-02-20 07:26:20.603
888	474	2	Crochet Crop	2025-02-20 07:41:37.548	2025-02-20 07:26:20.763
889	475	1	ชุดครอปถักโครเชต์	2025-02-20 07:41:37.548	2025-02-20 07:26:20.934
890	475	2	Crochet Crop	2025-02-20 07:41:37.548	2025-02-20 07:26:21.116
891	476	1	ชุดครอปถักโครเชต์	2025-02-20 07:41:37.548	2025-02-20 07:26:21.291
892	476	2	Crochet Crop	2025-02-20 07:41:37.548	2025-02-20 07:26:26.811
893	477	1	ชุดครอปถักโครเชต์	2025-02-20 07:41:37.548	2025-02-20 07:26:28.116
894	477	2	Crochet Crop	2025-02-20 07:41:37.548	2025-02-20 07:26:28.284
895	473	1	ชุดครอปถักโครเชต์	2025-02-20 07:42:44.144	2025-02-20 07:42:26.506
896	473	2	Crochet Crop	2025-02-20 07:42:44.144	2025-02-20 07:42:26.664
897	478	1	ชุดครอปถักโครเชต์	2025-02-20 07:44:22.809	2025-02-20 07:42:47.992
898	478	2	Crochet Crop	2025-02-20 07:44:22.809	2025-02-20 07:42:48.151
899	479	1	ชุดครอปถักโครเชต์	2025-02-20 07:44:22.809	2025-02-20 07:42:48.312
900	479	2	Crochet Crop	2025-02-20 07:44:22.809	2025-02-20 07:42:48.473
901	480	1	ชุดครอปถักโครเชต์	2025-02-20 07:44:22.809	2025-02-20 07:42:48.798
902	480	2	Crochet Crop	2025-02-20 07:44:22.809	2025-02-20 07:42:49.135
903	481	1	ชุดครอปถักโครเชต์	2025-02-20 07:48:26.283	2025-02-20 07:44:57.624
904	481	2	Crochet Crop	2025-02-20 07:48:26.283	2025-02-20 07:44:57.768
905	482	1	ชุดครอปถักโครเชต์	2025-02-20 07:48:26.283	2025-02-20 07:44:57.927
906	482	2	Crochet Crop	2025-02-20 07:48:26.283	2025-02-20 07:44:58.079
907	483	1	ชุดครอปถักโครเชต์	2025-02-20 07:48:26.283	2025-02-20 07:44:58.248
908	483	2	Crochet Crop	2025-02-20 07:48:26.283	2025-02-20 07:44:58.399
909	484	1	ชุดครอปถักโครเชต์	2025-02-20 07:48:26.283	2025-02-20 07:44:58.904
910	484	2	Crochet Crop	2025-02-20 07:48:26.283	2025-02-20 07:44:59.095
911	485	1	ชุดครอปถักโครเชต์	2025-02-20 07:48:26.283	2025-02-20 07:46:00.04
912	485	2	Crochet Crop	2025-02-20 07:48:26.283	2025-02-20 07:46:00.183
913	486	1	ชุดครอปถักโครเชต์	2025-02-20 07:48:26.283	2025-02-20 07:46:00.343
914	486	2	Crochet Crop	2025-02-20 07:48:26.283	2025-02-20 07:46:00.495
915	487	1	ชุดครอปถักโครเชต์	2025-02-20 07:48:26.283	2025-02-20 07:46:00.655
916	487	2	Crochet Crop	2025-02-20 07:48:26.283	2025-02-20 07:46:01.183
917	488	1	ชุดครอปถักโครเชต์	2025-02-20 07:48:26.283	2025-02-20 07:46:01.321
918	488	2	Crochet Crop	2025-02-20 07:48:26.283	2025-02-20 07:46:01.831
919	489	1	ชุดครอปถักโครเชต์	2025-02-20 07:48:26.283	2025-02-20 07:47:06.238
920	489	2	Crochet Crop	2025-02-20 07:48:26.283	2025-02-20 07:47:06.399
921	490	1	ชุดครอปถักโครเชต์	2025-02-20 07:48:26.283	2025-02-20 07:47:06.543
922	490	2	Crochet Crop	2025-02-20 07:48:26.283	2025-02-20 07:47:06.703
923	491	1	ชุดครอปถักโครเชต์	2025-02-20 07:48:26.283	2025-02-20 07:47:07.521
924	491	2	Crochet Crop	2025-02-20 07:48:26.283	2025-02-20 07:47:07.679
925	492	1	ชุดครอปถักโครเชต์	2025-02-20 07:48:26.283	2025-02-20 07:47:15.12
926	492	2	Crochet Crop	2025-02-20 07:48:26.283	2025-02-20 07:47:15.28
927	493	1	ชุดครอปถักโครเชต์	2025-02-20 07:53:24.06	2025-02-20 07:48:53.871
928	493	2	Crochet Crop	2025-02-20 07:53:24.06	2025-02-20 07:48:54.031
929	494	1	ชุดครอปถักโครเชต์	2025-02-20 07:53:24.06	2025-02-20 07:48:54.19
930	494	2	Crochet Crop	2025-02-20 07:53:24.06	2025-02-20 07:48:56.214
931	495	1	ชุดครอปถักโครเชต์	2025-02-20 07:53:24.06	2025-02-20 07:48:56.367
932	495	2	Crochet Crop	2025-02-20 07:53:24.06	2025-02-20 07:48:56.51
933	496	1	ชุดครอปถักโครเชต์	2025-02-20 07:53:24.06	2025-02-20 07:48:56.687
934	496	2	Crochet Crop	2025-02-20 07:53:24.06	2025-02-20 07:48:57.334
935	497	1	ชุดครอปถักโครเชต์	2025-02-20 07:53:24.06	2025-02-20 07:51:54.135
936	497	2	Crochet Crop	2025-02-20 07:53:24.06	2025-02-20 07:51:54.286
937	498	1	ชุดครอปถักโครเชต์	2025-02-20 07:53:24.06	2025-02-20 07:51:54.448
938	498	2	Crochet Crop	2025-02-20 07:53:24.06	2025-02-20 07:51:55.183
939	499	1	ชุดครอปถักโครเชต์	2025-02-20 07:53:24.06	2025-02-20 07:51:55.51
940	499	2	Crochet Crop	2025-02-20 07:53:24.06	2025-02-20 07:51:55.654
941	500	1	ชุดครอปถักโครเชต์	2025-02-20 08:04:11.982	2025-02-20 07:54:48.549
942	500	2	Crochet Crop	2025-02-20 08:04:11.982	2025-02-20 07:54:48.727
943	501	1	ชุดครอปถักโครเชต์	2025-02-20 08:04:11.982	2025-02-20 07:54:49.27
944	501	2	Crochet Crop	2025-02-20 08:04:11.982	2025-02-20 07:54:49.429
945	502	1	ชุดครอปถักโครเชต์	2025-02-20 08:04:11.982	2025-02-20 07:54:49.581
946	502	2	Crochet Crop	2025-02-20 08:04:11.982	2025-02-20 07:54:49.758
947	503	1	ชุดครอปถักโครเชต์	2025-02-20 08:04:11.982	2025-02-20 07:54:51.215
948	503	2	Crochet Crop	2025-02-20 08:04:11.982	2025-02-20 07:54:51.357
949	504	1	ชุดครอปถักโครเชต์	2025-02-20 08:04:11.982	2025-02-20 07:57:30.671
950	504	2	Crochet Crop	2025-02-20 08:04:11.982	2025-02-20 07:57:30.83
951	505	1	ชุดครอปถักโครเชต์	2025-02-20 08:04:11.982	2025-02-20 07:57:30.998
952	505	2	Crochet Crop	2025-02-20 08:04:11.982	2025-02-20 07:57:31.174
953	506	1	ชุดครอปถักโครเชต์	2025-02-20 08:04:11.982	2025-02-20 07:57:31.508
954	506	2	Crochet Crop	2025-02-20 08:04:11.982	2025-02-20 07:57:31.676
955	507	1	ชุดครอปถักโครเชต์	2025-02-20 08:04:11.982	2025-02-20 07:57:32.134
956	507	2	Crochet Crop	2025-02-20 08:04:11.982	2025-02-20 07:57:32.781
957	508	1	ชุดครอปถักโครเชต์	2025-02-20 08:04:11.982	2025-02-20 07:59:15.036
958	508	2	Crochet Crop	2025-02-20 08:04:11.982	2025-02-20 07:59:15.212
959	509	1	ชุดครอปถักโครเชต์	2025-02-20 08:04:11.982	2025-02-20 07:59:15.381
960	509	2	Crochet Crop	2025-02-20 08:04:11.982	2025-02-20 07:59:15.581
961	510	1	ชุดครอปถักโครเชต์	2025-02-20 08:04:11.982	2025-02-20 07:59:15.748
962	510	2	Crochet Crop	2025-02-20 08:04:11.982	2025-02-20 07:59:18.069
963	511	1	ชุดครอปถักโครเชต์	2025-02-20 08:04:11.982	2025-02-20 07:59:22.885
964	511	2	Crochet Crop	2025-02-20 08:04:11.982	2025-02-20 07:59:23.036
965	544	1	ชุดครอปถักโครเชต์	2025-02-20 08:04:11.982	2025-02-20 08:01:14.468
966	544	2	Crochet Crop	2025-02-20 08:04:11.982	2025-02-20 08:01:14.629
967	545	1	ชุดครอปถักโครเชต์	2025-02-20 08:04:11.982	2025-02-20 08:01:14.772
968	545	2	Crochet Crop	2025-02-20 08:04:11.982	2025-02-20 08:01:15.924
969	546	1	ชุดครอปถักโครเชต์	2025-02-20 08:04:11.982	2025-02-20 08:01:16.598
970	546	2	Crochet Crop	2025-02-20 08:04:11.982	2025-02-20 08:01:16.74
971	547	1	ชุดครอปถักโครเชต์	2025-02-20 08:04:11.982	2025-02-20 08:01:17.516
972	547	2	Crochet Crop	2025-02-20 08:04:11.982	2025-02-20 08:01:17.676
973	548	1	เสื้อถักผ้าลูกไม้	2025-02-20 08:04:11.982	2025-02-20 08:02:21.087
974	548	2	Crochet Crop	2025-02-20 08:04:11.982	2025-02-20 08:02:21.244
975	549	1	กางเกงขาสั้นถักโครเชต์	2025-02-20 08:09:12.414	2025-02-20 08:04:31.141
976	549	2	Crochet Shorts	2025-02-20 08:09:12.414	2025-02-20 08:04:31.291
977	550	1	กางเกงขาสั้นถักโครเชต์	2025-02-20 08:09:12.414	2025-02-20 08:04:32.283
978	550	2	Crochet Shorts	2025-02-20 08:09:12.414	2025-02-20 08:04:32.428
979	551	1	กางเกงขาสั้นถักโครเชต์	2025-02-20 08:09:12.414	2025-02-20 08:04:33.707
980	551	2	Crochet Shorts	2025-02-20 08:09:12.414	2025-02-20 08:04:33.867
981	552	1	กางเกงขาสั้นถักโครเชต์	2025-02-20 08:09:12.414	2025-02-20 08:04:35.444
982	552	2	Crochet Shorts	2025-02-20 08:09:12.414	2025-02-20 08:04:35.647
983	553	1	กางเกงขาสั้นถักโครเชต์	2025-02-20 08:09:12.414	2025-02-20 08:06:41.531
984	553	2	Crochet Shorts	2025-02-20 08:09:12.414	2025-02-20 08:06:41.66
985	554	1	กางเกงขาสั้นถักโครเชต์	2025-02-20 08:09:12.414	2025-02-20 08:06:41.819
986	554	2	Crochet Shorts	2025-02-20 08:09:12.414	2025-02-20 08:06:41.971
987	555	1	กางเกงขาสั้นถักโครเชต์	2025-02-20 08:09:12.414	2025-02-20 08:06:42.13
988	555	2	Crochet Shorts	2025-02-20 08:09:12.414	2025-02-20 08:06:42.57
989	556	1	กางเกงขาสั้นถักโครเชต์	2025-02-20 08:09:12.414	2025-02-20 08:06:42.819
990	556	2	Crochet Shorts	2025-02-20 08:09:12.414	2025-02-20 08:06:43.283
993	558	1	กางเกงคลุมขาสั้นถักโครเชต์	2025-02-20 08:09:12.414	2025-02-20 08:07:59.292
994	558	2	Crochet Shorts Cover	2025-02-20 08:09:12.414	2025-02-20 08:07:59.443
1047	585	1	ชิฟองเซ็ต 2 ชิ้น	2025-02-20 08:38:55.156	2025-02-20 08:28:16.406
1048	585	2	Chiffon Set 2 Pcs	2025-02-20 08:38:55.156	2025-02-20 08:28:16.566
995	559	1	ชุดครอปถักโครเชต์	2025-02-20 08:17:38.731	2025-02-20 08:10:29.451
996	559	2	Crochet Crop Top	2025-02-20 08:17:38.731	2025-02-20 08:10:29.61
997	560	1	กางเกงคลุมขาสั้นถักโครเชต์	2025-02-20 08:17:38.731	2025-02-20 08:10:29.777
998	560	2	Crochet Cover	2025-02-20 08:17:38.731	2025-02-20 08:10:30.363
999	561	1	กระโปรงถักโครเชต์	2025-02-20 08:17:38.731	2025-02-20 08:10:30.747
1000	561	2	Crochet Short Skirt	2025-02-20 08:17:38.731	2025-02-20 08:10:30.898
1001	562	1	เสื้อถักผ้าลูกไม้	2025-02-20 08:17:38.731	2025-02-20 08:10:31.05
1002	562	2	Crochet Cover	2025-02-20 08:17:38.731	2025-02-20 08:10:33.772
1003	563	1	กระโปรงถักโครเชต์	2025-02-20 08:17:38.731	2025-02-20 08:14:46.793
1004	563	2	Crochet Short Skirt	2025-02-20 08:17:38.731	2025-02-20 08:14:46.953
1005	564	1	ชุดครอปถักโครเชต์	2025-02-20 08:17:38.731	2025-02-20 08:14:47.105
1006	564	2	Crochet Crop Top	2025-02-20 08:17:38.731	2025-02-20 08:14:47.882
1007	565	1	กางเกงขายาวชายหาด	2025-02-20 08:17:38.731	2025-02-20 08:14:51.2
1008	565	2	Long Pants Beach	2025-02-20 08:17:38.731	2025-02-20 08:14:51.378
1009	566	1	กางเกงขายาวชายหาด	2025-02-20 08:17:38.731	2025-02-20 08:14:56.715
1010	566	2	Long Pants Beach	2025-02-20 08:17:38.731	2025-02-20 08:14:56.865
1011	567	1	กางเกงขายาวถักโครเชต์	2025-02-20 08:17:38.731	2025-02-20 08:16:41.296
1012	567	2	Long Pants Crochet	2025-02-20 08:17:38.731	2025-02-20 08:16:41.432
991	557	1	กางเกงขาสั้นถักโครเชต์	2025-02-20 08:09:12.414	2025-02-20 08:17:38.731
992	557	2	Crochet Shorts	2025-02-20 08:09:12.414	2025-02-20 08:17:38.731
1013	568	1	เซ็ตชุดถักโครเชต์ 2 ชิ้น	2025-02-20 08:26:05.602	2025-02-20 08:18:58.687
1014	568	2	Crochet set 2 Pcs	2025-02-20 08:26:05.602	2025-02-20 08:18:58.84
1015	569	1	เซ็ตชุดถักโครเชต์ 2 ชิ้น	2025-02-20 08:26:05.602	2025-02-20 08:18:59.017
1016	569	2	Crochet set 2 Pcs	2025-02-20 08:26:05.602	2025-02-20 08:18:59.512
1017	570	1	เซ็ตชุดถักโครเชต์	2025-02-20 08:26:05.602	2025-02-20 08:18:59.817
1018	570	2	Crochet set	2025-02-20 08:26:05.602	2025-02-20 08:19:00.143
1019	571	1	เซ็ตชุดถักโครเชต์ 2 ชิ้น	2025-02-20 08:26:05.602	2025-02-20 08:19:00.328
1020	571	2	Crochet set 2 Pcs	2025-02-20 08:26:05.602	2025-02-20 08:19:00.842
1021	572	1	ชุดคลุมถักโครเชต์	2025-02-20 08:26:05.602	2025-02-20 08:21:13.383
1022	572	2	Crochet Cover up	2025-02-20 08:26:05.602	2025-02-20 08:21:13.535
1023	573	1	เซ็ตชุดถักโครเชต์	2025-02-20 08:26:05.602	2025-02-20 08:21:14.136
1024	573	2	Crochet set	2025-02-20 08:26:05.602	2025-02-20 08:21:14.303
1025	574	1	เซ็ตชุดถักโครเชต์	2025-02-20 08:26:05.602	2025-02-20 08:21:14.721
1026	574	2	Crochet set	2025-02-20 08:26:05.602	2025-02-20 08:21:14.865
1027	575	1	ลินินเซ็ต 2 ชิ้น	2025-02-20 08:26:05.602	2025-02-20 08:23:27.863
1028	575	2	Linen Set 2 Pcs	2025-02-20 08:26:05.602	2025-02-20 08:23:28.015
1029	576	1	ลินินเซ็ต 2 ชิ้น	2025-02-20 08:26:05.602	2025-02-20 08:23:28.175
1030	576	2	Linen Set 2 Pcs	2025-02-20 08:26:05.602	2025-02-20 08:23:28.679
1031	577	1	ลินินเซ็ต 2 ชิ้น	2025-02-20 08:26:05.602	2025-02-20 08:23:28.823
1032	577	2	Linen Set 2 Pcs	2025-02-20 08:26:05.602	2025-02-20 08:23:31.015
1033	578	1	ลินินเซ็ต 3 ชิ้น	2025-02-20 08:26:05.602	2025-02-20 08:23:32.071
1034	578	2	Linen Set 3 Pcs	2025-02-20 08:26:05.602	2025-02-20 08:23:32.232
1035	579	1	ลินินเซ็ต 2 ชิ้น	2025-02-20 08:38:55.156	2025-02-20 08:26:55.534
1036	579	2	Linen Set 2 Pcs	2025-02-20 08:38:55.156	2025-02-20 08:26:56.038
1037	580	1	ลินินเซ็ต 2 ชิ้น	2025-02-20 08:38:55.156	2025-02-20 08:26:56.19
1038	580	2	Linen Set 2 Pcs	2025-02-20 08:38:55.156	2025-02-20 08:26:56.864
1039	581	1	ลินินเซ็ต 2 ชิ้น	2025-02-20 08:38:55.156	2025-02-20 08:26:57.366
1040	581	2	Linen Set 2 Pcs	2025-02-20 08:38:55.156	2025-02-20 08:26:57.517
1041	582	1	ลินินเซ็ต 2 ชิ้น	2025-02-20 08:38:55.156	2025-02-20 08:26:57.654
1042	582	2	Linen Set 2 Pcs	2025-02-20 08:38:55.156	2025-02-20 08:26:58.374
1043	583	1	ลินินเซ็ต 3 ชิ้น	2025-02-20 08:38:55.156	2025-02-20 08:28:15.485
1044	583	2	Linen Set 3 Pcs	2025-02-20 08:38:55.156	2025-02-20 08:28:15.647
1045	584	1	ลินินเซ็ต 2 ชิ้น	2025-02-20 08:38:55.156	2025-02-20 08:28:15.798
1046	584	2	Linen Set 2 Pcs	2025-02-20 08:38:55.156	2025-02-20 08:28:15.957
1282	720	1	ของเล่นใต้น้ำ ปลา	2025-07-15 04:27:00.434	2025-07-15 04:24:35.341
1283	720	2	Diving toys "Fish"	2025-07-15 04:27:00.434	2025-07-15 04:24:35.831
1053	588	1	เสื้อยืดขาว ยูนิเซ็กส์	2025-02-20 08:38:55.156	2025-02-20 08:33:40.103
1054	588	2	White Shirt Unisex	2025-02-20 08:38:55.156	2025-02-20 08:33:40.253
1055	589	1	มิกซ์ Cotton	2025-02-20 08:38:55.156	2025-02-20 08:33:42.134
1056	589	2	Mix Cotton	2025-02-20 08:38:55.156	2025-02-20 08:33:42.261
1057	590	1	เดรสผ้าลินิน	2025-02-20 08:38:55.156	2025-02-20 08:36:50.692
1058	590	2	Linen Dress	2025-02-20 08:38:55.156	2025-02-20 08:36:50.82
1059	591	1	เดรสผ้าลินิน	2025-02-20 08:38:55.156	2025-02-20 08:36:51.196
1061	592	1	กางเกงขายาว	2025-02-20 08:38:55.156	2025-02-20 08:37:58.75
1062	592	2	Long Pants	2025-02-20 08:38:55.156	2025-02-20 08:37:58.908
1063	593	1	เดรสยาว	2025-02-20 08:38:55.156	2025-02-20 08:37:59.622
1064	593	2	Long Dress	2025-02-20 08:38:55.156	2025-02-20 08:37:59.773
1065	596	1	เดรสแฟชั่น	2025-02-20 08:49:46.212	2025-02-20 08:39:14.892
1066	596	2	Fashion Dress	2025-02-20 08:49:46.212	2025-02-20 08:39:15.035
1067	597	1	ชุดเดรสคลุมชายหาด	2025-02-20 08:49:46.212	2025-02-20 08:39:15.187
1068	597	2	Beach Dress Cover	2025-02-20 08:49:46.212	2025-02-20 08:39:15.331
1069	598	1	มินิเดรส	2025-02-20 08:49:46.212	2025-02-20 08:39:15.763
1070	598	2	Mini Dress	2025-02-20 08:49:46.212	2025-02-20 08:39:15.915
1071	597	1	จัมป์สูทผ้าชีฟอง	2025-02-20 08:49:46.212	2025-02-20 08:39:16.075
1072	597	2	Chiffon Jump Suit	2025-02-20 08:49:46.212	2025-02-20 08:39:16.251
1073	598	1	เดรสยาว	2025-02-20 08:49:46.212	2025-02-20 08:43:47.404
1074	598	2	Maxi Dress	2025-02-20 08:49:46.212	2025-02-20 08:43:47.594
1075	599	1	เดรสยาว	2025-02-20 08:49:46.212	2025-02-20 08:43:49.602
1076	599	2	Maxi Dress	2025-02-20 08:49:46.212	2025-02-20 08:43:50.354
1077	600	1	เดรสแฟชั่น	2025-02-20 08:49:46.212	2025-02-20 08:43:50.772
1078	600	2	Fashion Dress	2025-02-20 08:49:46.212	2025-02-20 08:43:50.931
1079	601	1	ชุดเดรส	2025-02-20 08:49:46.212	2025-02-20 08:43:51.37
1080	601	2	Dress	2025-02-20 08:49:46.212	2025-02-20 08:43:51.514
1081	602	1	เซ็ต Cotton Puff	2025-02-20 08:49:46.212	2025-02-20 08:46:22.419
1082	602	2	Cotton Puff	2025-02-20 08:49:46.212	2025-02-20 08:46:22.57
1083	603	1	มินิเดรส	2025-02-20 08:49:46.212	2025-02-20 08:46:23.266
1084	603	2	Mini Dress	2025-02-20 08:49:46.212	2025-02-20 08:46:23.409
1085	604	1	เซ็ต Cotton Puff	2025-02-20 08:49:46.212	2025-02-20 08:49:05.089
1086	604	2	Cotton Puff	2025-02-20 08:49:46.212	2025-02-20 08:49:05.233
1087	605	1	Cotton Puff	2025-02-20 09:01:59.597	2025-02-20 08:54:47.32
1088	605	2	Cotton Puff	2025-02-20 09:01:59.597	2025-02-20 08:54:47.456
1089	606	1	ชุดเดรส	2025-02-20 09:01:59.597	2025-02-20 08:54:47.6
1090	606	2	Dress	2025-02-20 09:01:59.597	2025-02-20 08:54:47.752
1091	607	1	เซ็ตชีฟอง 2 ชิ้น	2025-02-20 09:01:59.597	2025-02-20 08:54:47.904
1092	607	2	Chiffon Set 2 Pcs	2025-02-20 09:01:59.597	2025-02-20 08:54:48.041
1093	608	1	เซ็ต Cotton Puff	2025-02-20 09:01:59.597	2025-02-20 08:54:48.183
1094	608	2	Cotton Puff	2025-02-20 09:01:59.597	2025-02-20 08:54:48.336
1095	609	1	Cotton Puff Set 2 Pcs	2025-02-20 09:01:59.597	2025-02-20 08:54:48.633
1096	609	2	Cotton Puff Set 2 Pcs	2025-02-20 09:01:59.597	2025-02-20 08:54:48.8
1097	610	1	Cotton Puff	2025-02-20 09:01:59.597	2025-02-20 08:54:48.951
1098	610	2	Cotton Puff	2025-02-20 09:01:59.597	2025-02-20 08:54:49.377
1099	611	1	กระโปรงยาว	2025-02-20 09:01:59.597	2025-02-20 08:54:49.527
1100	611	2	Long Skirt	2025-02-20 09:01:59.597	2025-02-20 08:54:49.976
1101	612	1	กางเกงขายาว	2025-02-20 09:01:59.597	2025-02-20 08:54:50.151
1102	612	2	Long Pants	2025-02-20 09:01:59.597	2025-02-20 08:54:50.392
1103	613	1	กางเกงขายาว	2025-02-20 09:01:59.597	2025-02-20 09:00:23.064
1104	613	2	Long Pants	2025-02-20 09:01:59.597	2025-02-20 09:00:23.216
1105	614	1	กระโปรงสั้น	2025-02-20 09:01:59.597	2025-02-20 09:00:23.68
1106	614	2	Short Skirt	2025-02-20 09:01:59.597	2025-02-20 09:00:23.831
1107	615	1	เดรสยาว	2025-02-20 09:10:28.597	2025-02-20 09:02:46.175
1108	615	2	Maxi Dress	2025-02-20 09:10:28.597	2025-02-20 09:02:46.329
1109	616	1	เดรสยาว	2025-02-20 09:10:28.597	2025-02-20 09:02:47.103
1110	616	2	Maxi Dress	2025-02-20 09:10:28.597	2025-02-20 09:02:47.262
1111	617	1	เซ็ตเรยอน 2 ชิ้น	2025-02-20 09:10:28.597	2025-02-20 09:02:47.982
1112	617	2	Rayon Set 2 Pcs	2025-02-20 09:10:28.597	2025-02-20 09:02:48.126
1113	618	1	เดรสยาวผ้าเรยอน	2025-02-20 09:10:28.597	2025-02-20 09:08:17.439
1114	618	2	Rayon Maxi Dress	2025-02-20 09:10:28.597	2025-02-20 09:08:17.588
1115	619	1	เซ็ตเรยอน 2 ชิ้น	2025-02-20 09:10:28.597	2025-02-20 09:08:17.766
1116	619	2	Rayon Set 2 Pcs	2025-02-20 09:10:28.597	2025-02-20 09:08:18.493
1117	620	1	เดรสมินิผ้าเรยอน	2025-02-20 09:10:28.597	2025-02-20 09:08:18.814
1118	620	2	Rayon Mini Dress	2025-02-20 09:10:28.597	2025-02-20 09:08:19.213
1119	621	1	Cotton เซ็ตชุดเด็กผู้ชาย	2025-02-20 09:15:27.531	2025-02-20 09:12:41.996
1120	621	2	Cotton Kid's Set Male	2025-02-20 09:15:27.531	2025-02-20 09:12:42.156
1121	622	1	Cotton เซ็ตชุดเด็กผู้หญิง	2025-02-20 09:15:27.531	2025-02-20 09:12:42.683
1122	622	2	Cotton Kid's Set Female	2025-02-20 09:15:27.531	2025-02-20 09:12:42.828
1123	623	1	เดรสพิมพ์ลาย	2025-02-20 09:19:57.596	2025-02-20 09:15:50.716
1124	623	2	Polyester Dress	2025-02-20 09:19:57.596	2025-02-20 09:15:50.859
1125	624	1	เดรสหน้าร้อนผ้าชีฟอง	2025-02-20 09:19:57.596	2025-02-20 09:15:51.011
1126	624	2	Chiffon Summer Dress	2025-02-20 09:19:57.596	2025-02-20 09:15:51.916
1127	625	1	เสื้อโค้ท	2025-02-20 09:19:57.596	2025-02-20 09:15:52.427
1128	625	2	Polyester Over Coat	2025-02-20 09:19:57.596	2025-02-20 09:15:52.579
1129	654	1	Tie Dye Set 1	2025-02-20 09:27:50.755	2025-02-20 09:21:19.205
1139	659	1	Sexy pant	2025-02-20 09:27:50.755	2025-02-20 09:22:40.684
1140	659	2	Sexy pant	2025-02-20 09:27:50.755	2025-02-20 09:22:40.825
1141	660	1	Strip short pant	2025-02-20 09:27:50.755	2025-02-20 09:22:56.731
1142	660	2	Strip short pant	2025-02-20 09:27:50.755	2025-02-20 09:22:56.882
1143	661	1	กางเกงขาสั้นผู้หญิง	2025-02-20 09:27:50.755	2025-02-20 09:23:49.179
1144	661	2	Lady Short Pants	2025-02-20 09:27:50.755	2025-02-20 09:23:49.314
1145	662	1	ชุดว่ายน้ำสีพื้น 2P	2025-02-20 09:27:50.755	2025-02-20 09:26:11.193
1146	662	2	2-Piece	2025-02-20 09:27:50.755	2025-02-20 09:26:11.332
1049	586	1	กางเกงลินิน	2025-02-20 08:38:55.156	2025-05-17 08:05:37.059
1147	663	1	(AA) ชุดว่ายน้ำสีพื้น 2P สายผูกคละสี	2025-02-20 09:37:24.704	2025-02-20 09:28:07.225
1148	663	2	(AA) 2-Piece Tie Straps	2025-02-20 09:37:24.704	2025-02-20 09:28:07.368
1149	664	1	(CC) ชุดว่ายน้ำสีพื้น 2P สายผูกคละสี	2025-02-20 09:37:24.704	2025-02-20 09:29:31.369
1150	664	2	(CC) 2-Piece Tie Straps	2025-02-20 09:37:24.704	2025-02-20 09:29:31.504
1151	665	1	(BB) ชุดว่ายน้ำสีพื้น 2P สายผูกคละสี	2025-02-20 09:37:24.704	2025-02-20 09:30:09.792
1152	665	2	(BB) 2-Piece Tie Straps	2025-02-20 09:37:24.704	2025-02-20 09:30:09.936
1153	666	1	ชุดว่ายน้ำพิมพ์ลาย 2P สายผูกหลัง	2025-02-20 09:37:24.704	2025-02-20 09:30:54.295
1154	666	2	2-Piece Patterned Tie Straps	2025-02-20 09:37:24.704	2025-02-20 09:30:54.447
1157	669	1	เสื้อยืดชาย	2025-02-20 09:37:24.704	2025-02-20 09:34:34.592
1158	669	2	Cotton Puff Shirt	2025-02-20 09:37:24.704	2025-02-20 09:34:34.751
1159	670	1	กางเกงขาสั้น	2025-02-20 09:37:24.704	2025-02-20 09:34:35.264
1160	670	2	Short Pants	2025-02-20 09:37:24.704	2025-02-20 09:34:35.416
1162	671	2	Men Short Pants	2025-02-20 09:37:24.704	2025-02-20 09:34:36.8
1163	245	1	ห่วงยางกลมเป่าลม color cool 	2025-02-20 19:11:34.438	2025-02-20 19:04:24.225
1164	245	2	Swim ring color cool 	2025-02-20 19:11:34.438	2025-02-20 19:04:24.399
1167	242	1	ห่วงยางกลมเป่าลม color cool 	2025-02-20 19:11:34.438	2025-02-20 19:07:11.894
1168	242	2	Swim ring color cool 	2025-02-20 19:11:34.438	2025-02-20 19:07:12.077
1171	246	1	แว่นตาว่ายน้ำเด็ก # Antifog	2025-02-20 19:11:34.438	2025-02-20 19:08:08.257
1172	246	2	Sainteve Kids goggles Antifog	2025-02-20 19:11:34.438	2025-02-20 19:08:08.406
1173	247	1	แว่นตาว่ายน้ำเด็ก # Antifog	2025-02-20 19:11:34.438	2025-02-20 19:09:16.34
1174	247	2	Sainteve Kids goggles Antifog	2025-02-20 19:11:34.438	2025-02-20 19:09:16.487
1175	239	1	ห่วงยางขาสอดเรือการ์ตูน	2025-02-20 19:11:34.438	2025-02-20 19:09:56.594
1176	239	2	Baby boat blue cartoon 	2025-02-20 19:11:34.438	2025-02-20 19:09:56.764
1177	240	1	ห่วงยางขาสอดเรือการ์ตูน	2025-02-20 19:11:34.438	2025-02-20 19:10:29.182
1178	240	2	Baby boat blue cartoon 	2025-02-20 19:11:34.438	2025-02-20 19:10:29.359
1179	241	1	ห่วงยางขาสอดเรือการ์ตูน	2025-02-20 19:11:34.438	2025-02-20 19:10:30.149
1180	241	2	Baby boat blue cartoon 	2025-02-20 19:11:34.438	2025-02-20 19:10:30.318
1284	721	1	ของเล่นใต้น้ำ ฉลาม	2025-07-15 04:27:00.434	2025-07-15 04:24:46.267
1285	721	2	Diving toys "Shark"	2025-07-15 04:27:00.434	2025-07-15 04:24:46.428
1286	722	1	ของเล่นใต้น้ำ หมึก	2025-07-15 04:27:00.434	2025-07-15 04:24:47.82
1188	675	2	Classic	2025-02-21 00:03:34.995	2025-02-21 00:00:20.366
1130	654	2	Tie Dye Set	2025-02-20 09:27:50.755	2025-02-22 03:15:19.433
1189	676	1	ห่วงยางเป่าลม	2025-02-26 04:25:43.878	2025-02-26 04:24:38.607
1190	676	2	Saintive swimming fancy orange ring	2025-02-26 04:25:43.878	2025-02-26 04:24:38.758
115	122	1	ห่วงยางเป่าลม ยูนิคอร์นวิ้ง ๆ	2025-02-16 08:28:46.591	2025-02-27 06:51:20.02
59	27	1	ห่วงยางขาสอดรถแข่งมีพวงมาลัย	2025-02-16 03:36:28.065	2025-02-28 07:31:54.538
1193	595	1	Beach Dress Cover	2025-03-07 06:16:56.773	2025-03-07 06:16:08.876
1194	595	2	ชุดเดรสคลุมชายหาด	2025-03-07 06:16:56.773	2025-03-07 06:16:09.053
99	47	1	ห่วงยางขาสอดเรือ ลายการ์ตูนฟ้า	2025-02-16 08:15:52.237	2025-03-09 19:14:47.558
691	375	1	รองเท้าเด็กหมึกเขียว	2025-02-19 06:45:32.074	2025-03-10 01:04:13.503
617	338	1	หมวกสานเด็ก สตรอเบอรี่	2025-02-18 16:31:05.699	2025-03-07 08:04:52.279
347	178	1	เสื้อชูชีพเด็กลายการ์ตูน XL	2025-02-16 18:45:52.147	2025-03-10 01:00:44.145
348	178	2	Swim vest for children's XL	2025-02-16 18:45:52.147	2025-03-10 01:00:44.145
1203	681	1	รองเทาเดินหาดเด็ก	2025-03-10 02:03:48.41	2025-03-10 02:01:14.712
1204	681	2	Beach Shoes Kids	2025-03-10 02:03:48.41	2025-03-10 02:01:14.854
1205	682	1	รองเทาเดินหาดเด็ก	2025-03-10 02:03:48.41	2025-03-10 02:01:15.013
1206	682	2	Beach Shoes Kids	2025-03-10 02:03:48.41	2025-03-10 02:01:15.165
1207	683	1	รองเทาเดินหาดเด็ก	2025-03-10 02:03:48.41	2025-03-10 02:01:15.326
1208	683	2	Beach Shoes Kids	2025-03-10 02:03:48.41	2025-03-10 02:01:15.494
1209	684	1	รองเทาเดินหาดเด็ก	2025-03-10 02:03:48.41	2025-03-10 02:01:15.646
1210	684	2	Beach Shoes Kids	2025-03-10 02:03:48.41	2025-03-10 02:01:16.013
1211	685	1	รองเท้าเดินหาด รุ่นสปอร์ท	2025-03-10 02:03:48.41	2025-03-10 02:01:16.519
1212	685	2	AQUA Sport Shoes for Adult 	2025-03-10 02:03:48.41	2025-03-10 02:01:17.094
1195	680	1	กระเป๋ามุ้งมิ้ง 	2025-03-07 08:31:54.911	2025-03-07 08:25:28.252
1196	380	2	Cute bag	2025-03-07 08:31:54.911	2025-03-07 08:25:28.583
1197	679	1	กระเป๋าสานเด็ก จัสมิน 	2025-03-07 08:31:54.911	2025-03-07 08:25:28.779
1198	679	2	Woven bag, Jasmin kids	2025-03-07 08:31:54.911	2025-03-07 08:25:28.955
1199	678	1	กระเป๋าสานเด็ก เดซี่เซ็ท	2025-03-07 08:31:54.911	2025-03-07 08:25:29.123
1200	678	2	Woven bag, Daisy kids	2025-03-07 08:31:54.911	2025-03-07 08:25:29.299
1201	677	1	กระเป๋าสานเด็ก สตรอเบอรี่	2025-03-07 08:31:54.911	2025-03-07 08:25:29.459
1202	677	2	Woven bag, Strawberry kids	2025-03-07 08:31:54.911	2025-03-07 08:25:30.003
352	180	2	Swim vest for children's M	2025-02-16 18:45:52.147	2025-03-10 01:01:51.33
1214	686	2	Dry Sport Shoes	2025-03-10 02:08:39.869	2025-03-10 02:04:06.213
1216	687	2	Dry Sport Shoes	2025-03-10 02:08:39.869	2025-03-10 02:04:06.589
1218	688	2	Dry Sport Shoes	2025-03-10 02:08:39.869	2025-03-10 02:04:07.484
1220	689	2	Dry Sport Shoes	2025-03-10 02:08:39.869	2025-03-10 02:04:07.804
1221	690	1	รองเท้าเดินหาด รุ่นสปอร์ท Dry	2025-03-10 02:08:39.869	2025-03-10 02:04:07.964
1222	690	2	Dry Sport Shoes	2025-03-10 02:08:39.869	2025-03-10 02:04:08.133
1213	686	1	รองเท้าเดินหาด รุ่นสปอร์ท Dry	2025-03-10 02:08:39.869	2025-03-10 02:15:59.57
1215	687	1	รองเท้าเดินหาด รุ่นสปอร์ท Dry	2025-03-10 02:08:39.869	2025-03-10 02:15:59.57
1217	688	1	รองเท้าเดินหาด รุ่นสปอร์ท Dry	2025-03-10 02:08:39.869	2025-03-10 02:15:59.57
1219	689	1	รองเท้าเดินหาด รุ่นสปอร์ท Dry	2025-03-10 02:08:39.869	2025-03-10 02:15:59.57
1161	671	1	กางเกงขาสั้นชาย	2025-02-20 09:37:24.704	2025-04-22 08:22:18.898
1187	675	1	รองเท้า คลาสสิค	2025-02-21 00:03:34.995	2025-05-10 09:21:32.457
1183	673	1	รองเท้าเดินหาด ปะการัง	2025-02-21 00:03:34.995	2025-05-19 08:03:08.821
1185	674	1	รองเท้าเดินหาด คาด	2025-02-21 00:03:34.995	2025-05-19 08:35:56.957
1181	672	1	รองเท้ารุ่นไทเกอร์	2025-02-21 00:03:34.995	2025-05-20 09:01:13.993
1287	722	2	Diving toys "Squid"	2025-07-15 04:27:00.434	2025-07-15 04:24:47.998
1223	691	1	Sainteve ห่วงยางขาสอดโพนี่วิ้งๆ	2025-05-10 07:00:11.94	2025-05-10 06:56:52.702
1224	691	2	Baby boat ponies wink wink	2025-05-10 07:00:11.94	2025-05-10 06:56:52.853
1225	692	1	แว่นตาว่ายน้ำเด็ก	2025-05-10 07:00:11.94	2025-05-10 06:57:01.861
1226	692	2	Kid's swimming goggles	2025-05-10 07:00:11.94	2025-05-10 06:57:01.989
1227	693	1	แว่นตาว่ายน้ำเด็ก	2025-05-10 07:00:11.94	2025-05-10 06:57:10.357
1228	693	2	Kid's swimming goggles	2025-05-10 07:00:11.94	2025-05-10 06:57:10.509
1229	694	1	แพนอนแบบหลุม มีหมอน	2025-05-10 07:00:11.94	2025-05-10 06:57:16.685
1230	694	2	Mat foundation with a pit	2025-05-10 07:00:11.94	2025-05-10 06:57:16.837
1231	695	1	ห่วงยางเป่าลม ลายแตงโม+มือจับ	2025-05-10 07:00:11.94	2025-05-10 06:57:25.085
1232	695	2	Inflatable watermelon float + handle	2025-05-10 07:00:11.94	2025-05-10 06:57:25.229
1233	696	1	แพนอนแบบหลุม มีกลิตเตอร์+หมอน	2025-05-10 07:00:11.94	2025-05-10 06:57:35.71
1234	696	2	Pit-shaped sleeping mat with glitter + pillows	2025-05-10 07:00:11.94	2025-05-10 06:57:35.845
1288	723	1	ของเล่นใต้น้ำ สาหร่าย	2025-07-15 04:27:00.434	2025-07-15 04:24:49.107
1289	723	2	Diving toys "Seaweed"	2025-07-15 04:27:00.434	2025-07-15 04:24:49.277
1237	697	1	ห่วงยางเป่าลม ลายแตงโม+มือจับ	2025-05-10 07:00:11.94	2025-05-10 06:57:51.782
1238	697	2	Inflatable watermelon float + handle	2025-05-10 07:00:11.94	2025-05-10 06:57:51.909
1239	700	1	ผ้าขนหนูชายหาด	2025-05-10 07:00:11.94	2025-05-10 06:57:59.189
1240	700	2	Beach towel Tuk Tuk Thailand	2025-05-10 07:00:11.94	2025-05-10 06:57:59.333
1241	699	1	ผ้าขนหนูชายหาด	2025-05-10 07:00:11.94	2025-05-10 06:58:10.781
1242	699	2	Beach towel Muay Thai	2025-05-10 07:00:11.94	2025-05-10 06:58:10.933
1290	724	1	ของเล่นใต้น้ำ แท่ง	2025-07-15 04:27:00.434	2025-07-15 04:24:50.78
1291	724	2	Diving toys "Sticks"	2025-07-15 04:27:00.434	2025-07-15 04:24:50.941
1245	702	1	ขาสอดวงกลม ลายกระต่าย	2025-05-17 09:24:36.355	2025-05-17 09:23:38.996
1246	702	2	Baby boat cartoon Rabbit	2025-05-17 09:24:36.355	2025-05-17 09:23:39.14
1247	703	1	กางเกงลินินขายาว	2025-05-20 02:58:13.089	2025-05-20 02:57:32.326
1248	703	2	Linen Long Pants	2025-05-20 02:58:13.089	2025-05-20 02:57:32.459
1253	706	1	พลั่วตักทรายด้ามไม้	2025-05-21 07:32:57.155	2025-05-21 07:29:10.287
1254	706	2	Wooden handled sand shovel	2025-05-21 07:32:57.155	2025-05-21 07:29:10.455
1255	707	1	พลั่วตักทรายด้ามไม้ แพคคู่	2025-05-21 07:32:57.155	2025-05-21 07:29:10.655
1256	707	2	Wooden handled sand shovel set 2 pieces	2025-05-21 07:32:57.155	2025-05-21 07:29:11.254
1257	708	1	พลั่วตักทรายด้ามไม้	2025-05-21 07:32:57.155	2025-05-21 07:29:28.422
1258	708	2	Wooden handled sand shovel	2025-05-21 07:32:57.155	2025-05-21 07:29:50.239
1259	709	1	พลั่วตักทรายด้ามไม้ แพคคู่	2025-05-21 07:32:57.155	2025-05-21 07:29:53.927
1260	709	2	Wooden handled sand shovel set 2 pieces	2025-05-21 07:32:57.155	2025-05-21 07:29:56.982
123	59	1	ห่วงยางเป่าลมพร้อมมือจับ	2025-02-16 08:34:28.266	2025-05-10 09:02:41.034
197	233	1	ห่วงยางกลมเป่าลมลายเจ้าหญิง	2025-02-16 09:34:39.427	2025-05-10 09:06:07.139
1051	587	2	เสื้อลินิน	2025-02-20 08:38:55.156	2025-05-17 08:04:57.034
1052	587	2	Linen Shirt	2025-02-20 08:38:55.156	2025-05-17 08:04:57.034
1184	673	2	beach sandals Coral	2025-02-21 00:03:34.995	2025-05-19 08:03:08.821
1249	704	2	Linen Short Pants	2025-05-20 03:10:49.171	2025-05-20 03:10:24.081
1250	704	1	กางเกงลินินขาสั้น	2025-05-20 03:10:49.171	2025-05-20 03:10:24.264
1261	710	1	กางเกงพิมพ์ลายคละแบบ เซ็ต 2 ชิ้น	2025-05-26 04:36:31.723	2025-05-26 04:34:54.409
1262	710	2	Patterned pants, 2-piece set	2025-05-26 04:36:31.723	2025-05-26 04:34:54.568
1265	712	1	ชูชีพ Jacket เด็กไซส์ S (1-2Y)	2025-06-02 02:00:44.053	2025-06-02 01:59:23.324
1266	712	2	Life jacket Kids Size S (1-2Y)	2025-06-02 02:00:44.053	2025-06-02 01:59:23.476
469	259	1	เสื้อชูชีพเด็กเป่าลมสีพื้น A (Size XL)	2025-02-18 03:34:26.721	2025-07-15 06:28:42.144
470	259	2	Children's swim safe A  (Size XL)	2025-02-18 03:34:26.721	2025-07-15 06:28:42.144
1312	736	1	ฟุตบอล	2025-11-01 04:33:18.176	2025-11-01 04:31:04.097
1	1	1	ห่วงยางเด็กขาสอด เป็ดเหลืองจูเนียร์	2025-02-13 06:55:52.537	2025-05-16 03:47:50.326
2	1	2	Baby inflatable Duck yellow	2025-02-13 06:55:52.537	2025-05-16 03:47:50.326
1050	586	2	Linen Pants	2025-02-20 08:38:55.156	2025-05-17 08:05:37.059
1186	674	2	Shoes Belt	2025-02-21 00:03:34.995	2025-05-19 08:35:56.957
1251	705	1	เสื้อลินินแขดกุด	2025-05-20 03:19:10.086	2025-05-20 03:17:35.009
1252	705	2	Linen sleeveless shirt	2025-05-20 03:19:10.086	2025-05-20 03:17:35.598
1263	711	1	ห่วงยางเป่าลม SPORT COOL+มือจับ 	2025-05-27 07:03:29.415	2025-05-27 07:02:53.019
1264	711	2	Swim ring sport cool with handle	2025-05-27 07:03:29.415	2025-05-27 07:02:53.154
1292	725	1	ของเล่นใต้น้ำ หมึก (4ตัว)	2025-08-21 06:16:39.736	2025-08-21 06:15:23.716
1293	725	2	Diving toys "Squid" (4Pcs.)	2025-08-21 06:16:39.736	2025-08-21 06:15:25.099
1297	728	2	Tyre RING with handle	2025-09-02 02:48:45.731	2025-09-02 02:48:10.224
1296	728	1	ห่วงยางเป่าลม ล้อรถยนต์ (ถุง)	2025-09-02 02:48:45.731	2025-09-02 02:48:55.477
1302	731	1	ห่วงยางเป่าลม สีฟ้า-เหลือง มีมือจับ (ถุง)	2025-09-02 02:59:41.987	2025-09-02 02:58:42.95
1303	731	2	Blue CIRCLE RING	2025-09-02 02:59:41.987	2025-09-02 02:58:43.111
1306	732	1	Sainteve ห่วงยางขาสอดม้าโพนี่ สีชมพู (ถุง)	2025-09-02 03:13:41.144	2025-09-02 03:10:05.771
1307	732	2	Sainteve baby boat  ponies pink	2025-09-02 03:13:41.144	2025-09-02 03:10:05.947
133	64	1	ห่วงยางเป่าลม แตงโม เล็ก/กลาง	2025-02-16 08:37:32.667	2025-10-16 02:10:30.91
134	64	2	Floating Watermelon ring s/m	2025-02-16 08:37:32.667	2025-10-16 02:10:30.91
1313	736	2	Football	2025-11-01 04:33:18.176	2025-11-01 04:31:04.503
1314	737	1	บีชวอลเลย์ สีรุ้ง	2025-11-01 04:33:18.176	2025-11-01 04:31:04.903
1315	737	2	Beach Volley Rainbow	2025-11-01 04:33:18.176	2025-11-01 04:31:05.775
1320	740	1	SIANTEVE ห่วงยางโดนัท 90 cm.	2025-11-22 04:26:48.372	2025-11-22 04:23:59.387
1321	740	2	SIANTEVE Donut Inflatable Ring 90 cm	2025-11-22 04:26:48.372	2025-11-22 04:23:59.979
1324	742	1	SIANTEVE ห่วงยางโดนัท 120 cm.	2025-11-22 04:26:48.372	2025-11-22 04:24:00.523
1325	742	2	SIANTEVE Donut Inflatable Ring 120 cm	2025-11-22 04:26:48.372	2025-11-22 04:24:01.194
1323	741	2	SIANTEVE Donut Inflatable Ring 100 cm with handdle	2025-11-22 04:26:48.372	2025-11-22 04:30:21.517
1322	741	1	SIANTEVE ห่วงยางโดนัท 100 cm. มีมือจับ	2025-11-22 04:26:48.372	2025-11-22 04:30:21.517
1328	744	1	DrySuper ซองกันน้ำแบบพับ ฝาปิดคลิปล็อค	2025-12-29 01:46:34.787	2025-12-29 01:44:43.883
1329	744	2	DrySuper waterproof fold-top pouch with clip lock closure	2025-12-29 01:46:34.787	2025-12-29 01:44:44.082
1294	727	1	หมวกว่ายน้ำผู้ใหญ่ ซิลิโคน	2025-08-21 07:22:44.444	2025-08-21 07:22:14.22
1295	727	2	Silicone swimming cap	2025-08-21 07:22:44.444	2025-08-21 07:22:19.771
1298	729	1	ห่วงยางเป่าลม ยูนิคอร์นวิ้งๆ 90ซม. (กล่อง)	2025-09-02 02:54:40.721	2025-09-02 02:52:04.775
1299	729	2	Swim ring unicorn Sequin 90Cm.	2025-09-02 02:54:40.721	2025-09-02 02:52:04.951
1300	730	1	ห่วงยางเป่าลม ยูนิคอร์นวิ้งๆ 120ซม. (กล่อง)	2025-09-02 02:54:40.721	2025-09-02 02:52:05.471
1301	730	2	Swim ring unicorn Sequin 120Cm. 	2025-09-02 02:54:40.721	2025-09-02 02:52:05.631
1304	733	1	ขาสอดกลมสีชมพู-ยูนิคอร์น +มือจับ (Pocket Seat)	2025-09-02 03:09:34.697	2025-09-02 03:08:48.828
1305	733	2	Baby boat pink-Unicorn (handle+Pocket Seat)	2025-09-02 03:09:34.697	2025-09-02 03:08:49.467
1308	734	1	Sainteve แพยางเต่าใหญ่ (กล่อง)	2025-10-20 06:27:01.708	2025-10-20 06:25:46.067
1309	734	2	Sainteve giant inflatable Big turtle	2025-10-20 06:27:01.708	2025-10-20 06:25:46.314
1316	738	1	สน็อกเกิ้ลดำน้ำ-ญี่ปุ่น เด็ก	2025-11-10 01:18:19.007	2025-11-10 01:17:02.691
1317	738	2	Mask & Snorkel Japanese style (Kid)	2025-11-10 01:18:19.007	2025-11-10 01:17:03.657
1318	739	1	สน็อกเกิ้ลดำน้ำ-ญี่ปุ่น ผู้ใหญ่	2025-11-10 01:18:19.007	2025-11-10 01:17:04.376
1319	739	2	Mask & Snorkel Japanese style (Adult)	2025-11-10 01:18:19.007	2025-11-10 01:17:04.737
1326	743	1	ห่วงยางเด็กโบว์+กลิตเตอร์ มีมือจับ (ถุง)	2025-12-18 01:20:26.71	2025-12-18 01:20:04.788
1327	743	2	Kids’ Glitter Bow Inflatable Swim Ring with Handles	2025-12-18 01:20:26.71	2025-12-18 01:20:04.947
\.


--
-- Data for Name: Product_Tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Product_Tag" (id, "productId", "tagId", "createdAt", "updatedAt") FROM stdin;
1	386	1	2025-03-17 03:12:42.181	2025-03-17 03:11:21.476
2	387	1	2025-03-17 03:12:42.181	2025-03-17 03:11:21.644
3	388	1	2025-03-17 03:12:42.181	2025-03-17 03:11:21.821
4	389	1	2025-03-17 03:12:42.181	2025-03-17 03:11:24.077
5	390	1	2025-03-17 03:12:42.181	2025-03-17 03:11:30.196
6	391	1	2025-03-17 03:12:42.181	2025-03-17 03:11:30.365
7	392	1	2025-03-17 03:12:42.181	2025-03-17 03:11:30.523
8	393	1	2025-03-17 03:12:42.181	2025-03-17 03:11:30.691
9	394	1	2025-03-17 03:12:42.181	2025-03-17 03:11:30.859
10	395	1	2025-03-17 03:12:42.181	2025-03-17 03:11:31.02
11	396	1	2025-03-17 03:12:42.181	2025-03-17 03:11:31.483
12	397	1	2025-03-17 03:12:42.181	2025-03-17 03:11:31.797
13	416	2	2025-03-17 03:13:30.53	2025-03-17 03:13:20.1
14	252	12	2025-05-19 07:03:10.899	2025-05-19 07:02:13.391
15	253	12	2025-05-19 07:03:10.899	2025-05-19 07:02:13.535
16	254	12	2025-05-19 07:03:10.899	2025-05-19 07:02:19.303
17	248	13	2025-05-19 07:03:10.899	2025-05-19 07:02:37.624
18	249	13	2025-05-19 07:03:10.899	2025-05-19 07:02:37.783
19	250	13	2025-05-19 07:03:10.899	2025-05-19 07:02:37.96
20	251	13	2025-05-19 07:03:10.899	2025-05-19 07:02:38.823
21	269	14	2025-05-19 07:11:04.683	2025-05-19 07:10:30.278
22	267	14	2025-05-19 07:11:04.683	2025-05-19 07:12:13.642
29	686	16	2025-05-19 07:58:04.416	2025-05-19 07:57:03.89
30	687	16	2025-05-19 07:58:04.416	2025-05-19 07:57:04.05
31	688	16	2025-05-19 07:58:04.416	2025-05-19 07:57:04.21
32	689	16	2025-05-19 07:58:04.416	2025-05-19 07:57:04.386
33	690	16	2025-05-19 07:58:04.416	2025-05-19 07:57:04.85
28	385	15	2025-05-19 07:56:49.64	2025-05-19 07:58:04.416
27	384	15	2025-05-19 07:56:49.64	2025-05-19 07:58:04.416
26	383	15	2025-05-19 07:56:49.64	2025-05-19 07:58:04.416
25	382	15	2025-05-19 07:56:49.64	2025-05-19 07:58:04.416
24	381	15	2025-05-19 07:56:49.64	2025-05-19 07:58:04.416
23	380	15	2025-05-19 07:56:49.64	2025-05-19 07:58:04.416
34	364	17	2025-05-19 08:13:21.857	2025-05-19 08:12:28.19
35	365	17	2025-05-19 08:13:21.857	2025-05-19 08:12:28.358
36	366	17	2025-05-19 08:13:21.857	2025-05-19 08:12:28.535
37	367	17	2025-05-19 08:13:21.857	2025-05-19 08:12:28.697
38	368	17	2025-05-19 08:13:21.857	2025-05-19 08:12:28.863
39	369	17	2025-05-19 08:13:21.857	2025-05-19 08:12:29.038
40	681	17	2025-05-19 08:13:21.857	2025-05-19 08:12:29.502
41	682	17	2025-05-19 08:13:21.857	2025-05-19 08:12:29.647
42	683	17	2025-05-19 08:13:21.857	2025-05-19 08:12:30.087
43	684	17	2025-05-19 08:13:21.857	2025-05-19 08:12:30.422
44	103	18	2025-05-19 08:46:34.763	2025-05-19 08:43:29.185
45	4	18	2025-05-19 08:46:34.763	2025-05-19 08:43:29.343
46	31	18	2025-05-19 08:46:34.763	2025-05-19 08:43:29.511
47	104	18	2025-05-19 08:46:34.763	2025-05-19 08:43:29.687
48	189	18	2025-05-19 08:46:34.763	2025-05-19 08:43:29.863
49	325	18	2025-05-19 08:46:34.763	2025-05-19 08:43:30.279
50	5	18	2025-05-19 08:46:34.763	2025-05-19 08:43:30.431
51	161	18	2025-05-19 08:46:34.763	2025-05-19 08:43:30.575
52	194	18	2025-05-19 08:46:34.763	2025-05-19 08:43:31.168
53	323	18	2025-05-19 08:46:34.763	2025-05-19 08:43:31.775
54	398	1	2025-05-19 09:47:57.252	2025-05-19 09:47:13.696
55	399	1	2025-05-19 09:47:57.252	2025-05-19 09:47:13.863
56	400	1	2025-05-19 09:47:57.252	2025-05-19 09:47:14.335
57	401	1	2025-05-19 09:47:57.252	2025-05-19 09:47:15.298
58	402	1	2025-05-19 09:49:35.774	2025-05-19 09:49:16.64
59	403	1	2025-05-19 09:49:35.774	2025-05-19 09:49:16.807
60	404	1	2025-05-19 09:49:35.774	2025-05-19 09:49:16.967
61	405	1	2025-05-19 09:49:35.774	2025-05-19 09:49:17.463
62	406	1	2025-05-19 09:51:09.054	2025-05-19 09:50:53.295
63	407	1	2025-05-19 09:51:09.054	2025-05-19 09:50:53.462
64	408	1	2025-05-19 09:51:09.054	2025-05-19 09:50:53.622
65	409	1	2025-05-19 09:51:09.054	2025-05-19 09:50:54.071
66	410	1	2025-05-19 09:52:33.085	2025-05-19 09:52:19.87
67	411	1	2025-05-19 09:52:33.085	2025-05-19 09:52:20.038
68	412	1	2025-05-19 09:52:33.085	2025-05-19 09:52:20.19
69	413	1	2025-05-19 09:52:33.085	2025-05-19 09:52:20.673
70	414	1	2025-05-19 09:53:34.73	2025-05-19 09:53:24.767
71	415	1	2025-05-19 09:53:34.73	2025-05-19 09:53:24.91
72	370	19	2025-05-21 06:27:00.011	2025-05-21 06:26:14.467
73	371	19	2025-05-21 06:27:00.011	2025-05-21 06:26:14.635
74	372	19	2025-05-21 06:27:00.011	2025-05-21 06:26:14.827
75	373	19	2025-05-21 06:27:00.011	2025-05-21 06:26:15.252
76	374	19	2025-05-21 06:27:00.011	2025-05-21 06:26:15.403
77	375	19	2025-05-21 06:27:00.011	2025-05-21 06:26:15.563
78	376	19	2025-05-21 06:27:00.011	2025-05-21 06:26:15.74
79	377	19	2025-05-21 06:27:00.011	2025-05-21 06:26:15.908
80	378	19	2025-05-21 06:27:00.011	2025-05-21 06:26:16.092
81	379	19	2025-05-21 06:27:00.011	2025-05-21 06:26:16.676
82	417	2	2025-05-21 07:56:33.277	2025-05-21 07:53:53.394
83	418	2	2025-05-21 07:56:33.277	2025-05-21 07:54:22.121
84	419	2	2025-05-21 07:56:33.277	2025-05-21 07:54:30.456
85	420	2	2025-05-21 07:56:33.277	2025-05-21 07:54:53.52
86	421	2	2025-05-21 07:56:33.277	2025-05-21 07:55:05.4
87	422	2	2025-05-21 07:56:33.277	2025-05-21 07:55:23.68
88	423	2	2025-05-21 07:56:33.277	2025-05-21 07:55:37.769
89	424	2	2025-05-21 07:56:33.277	2025-05-21 07:56:16.088
90	425	2	2025-05-21 07:56:33.277	2025-05-21 07:56:28.457
91	426	3	2025-05-21 08:07:49.106	2025-05-21 08:01:47.174
92	427	3	2025-05-21 08:07:49.106	2025-05-21 08:02:22.039
93	428	3	2025-05-21 08:07:49.106	2025-05-21 08:02:25.022
94	429	3	2025-05-21 08:07:49.106	2025-05-21 08:02:58.583
95	430	3	2025-05-21 08:07:49.106	2025-05-21 08:03:18.71
96	431	3	2025-05-21 08:07:49.106	2025-05-21 08:03:18.863
97	432	3	2025-05-21 08:07:49.106	2025-05-21 08:03:48.751
98	433	3	2025-05-21 08:07:49.106	2025-05-21 08:03:50.775
99	434	3	2025-05-21 08:07:49.106	2025-05-21 08:04:16.982
100	435	3	2025-05-21 08:07:49.106	2025-05-21 08:04:27.942
101	436	3	2025-05-21 08:07:49.106	2025-05-21 08:04:41.982
102	437	3	2025-05-21 08:07:49.106	2025-05-21 08:04:42.167
103	438	3	2025-05-21 08:07:49.106	2025-05-21 08:04:42.318
104	439	3	2025-05-21 08:07:49.106	2025-05-21 08:04:44.686
105	440	3	2025-05-21 08:07:49.106	2025-05-21 08:05:19.558
106	441	3	2025-05-21 08:07:49.106	2025-05-21 08:05:20.175
107	442	3	2025-05-21 08:07:49.106	2025-05-21 08:05:20.326
108	443	3	2025-05-21 08:07:49.106	2025-05-21 08:06:03.19
109	444	3	2025-05-21 08:07:49.106	2025-05-21 08:06:03.359
110	445	3	2025-05-21 08:07:49.106	2025-05-21 08:06:26.685
111	446	3	2025-05-21 08:07:49.106	2025-05-21 08:06:26.861
112	447	3	2025-05-21 08:07:49.106	2025-05-21 08:07:01.518
113	448	3	2025-05-21 08:07:49.106	2025-05-21 08:07:01.687
114	449	3	2025-05-21 08:07:49.106	2025-05-21 08:07:02.998
115	450	3	2025-05-21 08:09:34.153	2025-05-21 08:08:14.789
116	451	3	2025-05-21 08:09:34.153	2025-05-21 08:08:14.949
117	453	3	2025-05-21 08:09:34.153	2025-05-21 08:08:15.365
118	452	3	2025-05-21 08:09:34.153	2025-05-21 08:08:15.525
119	454	3	2025-05-21 08:09:34.153	2025-05-21 08:08:15.685
120	455	3	2025-05-21 08:09:34.153	2025-05-21 08:08:16.165
\.


--
-- Data for Name: Products_Color; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Products_Color" (id, "detailId", "colorDetailId", price, "salePrice", qty_in_stock, "SKU", "createdAt", "updatedAt", "availabilityId") FROM stdin;
636	379	120	\N	\N	\N	\N	2025-02-21 01:22:18.277	2025-03-12 06:35:58.88	1
631	378	121	\N	\N	\N	\N	2025-02-21 01:22:18.277	2025-03-12 06:35:58.88	1
635	379	121	\N	\N	\N	\N	2025-02-21 01:22:18.277	2025-03-12 06:35:58.88	1
634	379	122	\N	\N	\N	\N	2025-02-21 01:22:18.277	2025-03-12 06:35:58.88	1
633	378	125	\N	\N	\N	\N	2025-02-21 01:22:18.277	2025-03-12 06:35:58.88	1
632	378	120	\N	\N	\N	\N	2025-02-21 01:22:18.277	2025-03-12 06:35:58.88	1
630	378	122	\N	\N	\N	\N	2025-02-21 01:22:18.277	2025-03-12 06:35:58.88	1
665	388	125	\N	\N	\N	\N	2025-02-21 01:34:48.697	2025-03-12 06:35:58.88	1
661	387	125	\N	\N	\N	\N	2025-02-21 01:27:53.97	2025-03-12 06:35:58.88	1
651	385	122	\N	\N	\N	\N	2025-02-21 01:27:53.97	2025-03-12 06:35:58.88	1
643	381	120	\N	\N	\N	\N	2025-02-21 01:25:24.715	2025-03-12 06:35:58.88	1
639	380	120	\N	\N	\N	\N	2025-02-21 01:25:24.715	2025-03-12 06:35:58.88	1
637	380	122	\N	\N	\N	\N	2025-02-21 01:25:24.715	2025-03-12 06:35:58.88	1
638	380	121	\N	\N	\N	\N	2025-02-21 01:25:24.715	2025-03-12 06:35:58.88	1
640	380	125	\N	\N	\N	\N	2025-02-21 01:25:24.715	2025-03-12 06:35:58.88	1
642	381	121	\N	\N	\N	\N	2025-02-21 01:25:24.715	2025-03-12 06:35:58.88	1
641	381	122	\N	\N	\N	\N	2025-02-21 01:25:24.715	2025-03-12 06:35:58.88	1
646	383	122	\N	\N	\N	\N	2025-02-21 01:25:24.715	2025-03-12 06:35:58.88	1
649	383	125	\N	\N	\N	\N	2025-02-21 01:25:24.715	2025-03-12 06:35:58.88	1
648	383	120	\N	\N	\N	\N	2025-02-21 01:25:24.715	2025-03-12 06:35:58.88	1
647	383	121	\N	\N	\N	\N	2025-02-21 01:25:24.715	2025-03-12 06:35:58.88	1
645	382	121	\N	\N	\N	\N	2025-02-21 01:25:24.715	2025-03-12 06:35:58.88	1
644	381	125	\N	\N	\N	\N	2025-02-21 01:25:24.715	2025-03-12 06:35:58.88	1
650	384	121	\N	\N	\N	\N	2025-02-21 01:27:53.97	2025-03-12 06:35:58.88	1
653	385	120	\N	\N	\N	\N	2025-02-21 01:27:53.97	2025-03-12 06:35:58.88	1
652	385	121	\N	\N	\N	\N	2025-02-21 01:27:53.97	2025-03-12 06:35:58.88	1
655	386	122	\N	\N	\N	\N	2025-02-21 01:27:53.97	2025-03-12 06:35:58.88	1
658	387	122	\N	\N	\N	\N	2025-02-21 01:27:53.97	2025-03-12 06:35:58.88	1
657	386	120	\N	\N	\N	\N	2025-02-21 01:27:53.97	2025-03-12 06:35:58.88	1
656	386	121	\N	\N	\N	\N	2025-02-21 01:27:53.97	2025-03-12 06:35:58.88	1
659	387	121	\N	\N	\N	\N	2025-02-21 01:27:53.97	2025-03-12 06:35:58.88	1
660	387	120	\N	\N	\N	\N	2025-02-21 01:27:53.97	2025-03-12 06:35:58.88	1
664	388	120	\N	\N	\N	\N	2025-02-21 01:34:48.697	2025-03-12 06:35:58.88	1
663	388	121	\N	\N	\N	\N	2025-02-21 01:34:48.697	2025-03-12 06:35:58.88	1
662	388	122	\N	\N	\N	\N	2025-02-21 01:34:48.697	2025-03-12 06:35:58.88	1
683	393	121	\N	\N	\N	\N	2025-02-21 01:38:00.461	2025-03-12 06:35:58.88	1
681	392	125	\N	\N	\N	\N	2025-02-21 01:38:00.461	2025-03-12 06:35:58.88	1
679	392	121	\N	\N	\N	\N	2025-02-21 01:38:00.461	2025-03-12 06:35:58.88	1
674	391	122	\N	\N	\N	\N	2025-02-21 01:34:48.697	2025-03-12 06:35:58.88	1
672	390	120	\N	\N	\N	\N	2025-02-21 01:34:48.697	2025-03-12 06:35:58.88	1
670	390	122	\N	\N	\N	\N	2025-02-21 01:34:48.697	2025-03-12 06:35:58.88	1
668	389	120	\N	\N	\N	\N	2025-02-21 01:34:48.697	2025-03-12 06:35:58.88	1
667	389	121	\N	\N	\N	\N	2025-02-21 01:34:48.697	2025-03-12 06:35:58.88	1
666	389	122	\N	\N	\N	\N	2025-02-21 01:34:48.697	2025-03-12 06:35:58.88	1
669	389	125	\N	\N	\N	\N	2025-02-21 01:34:48.697	2025-03-12 06:35:58.88	1
671	390	121	\N	\N	\N	\N	2025-02-21 01:34:48.697	2025-03-12 06:35:58.88	1
673	390	125	\N	\N	\N	\N	2025-02-21 01:34:48.697	2025-03-12 06:35:58.88	1
676	391	120	\N	\N	\N	\N	2025-02-21 01:34:48.697	2025-03-12 06:35:58.88	1
678	392	122	\N	\N	\N	\N	2025-02-21 01:38:00.461	2025-03-12 06:35:58.88	1
677	391	125	\N	\N	\N	\N	2025-02-21 01:34:48.697	2025-03-12 06:35:58.88	1
675	391	121	\N	\N	\N	\N	2025-02-21 01:34:48.697	2025-03-12 06:35:58.88	1
680	392	120	\N	\N	\N	\N	2025-02-21 01:38:00.461	2025-03-12 06:35:58.88	1
682	393	122	\N	\N	\N	\N	2025-02-21 01:38:00.461	2025-03-12 06:35:58.88	1
702	398	122	\N	\N	\N	\N	2025-02-21 01:41:52.052	2025-03-12 06:35:58.88	1
700	397	120	\N	\N	\N	\N	2025-02-21 01:39:31.649	2025-03-12 06:35:58.88	1
695	396	121	\N	\N	\N	\N	2025-02-21 01:39:31.649	2025-03-12 06:35:58.88	1
690	395	122	\N	\N	\N	\N	2025-02-21 01:38:00.461	2025-03-12 06:35:58.88	1
687	394	121	\N	\N	\N	\N	2025-02-21 01:38:00.461	2025-03-12 06:35:58.88	1
686	394	122	\N	\N	\N	\N	2025-02-21 01:38:00.461	2025-03-12 06:35:58.88	1
684	393	120	\N	\N	\N	\N	2025-02-21 01:38:00.461	2025-03-12 06:35:58.88	1
685	393	125	\N	\N	\N	\N	2025-02-21 01:38:00.461	2025-03-12 06:35:58.88	1
689	394	125	\N	\N	\N	\N	2025-02-21 01:38:00.461	2025-03-12 06:35:58.88	1
688	394	120	\N	\N	\N	\N	2025-02-21 01:38:00.461	2025-03-12 06:35:58.88	1
692	395	120	\N	\N	\N	\N	2025-02-21 01:38:00.461	2025-03-12 06:35:58.88	1
694	396	122	\N	\N	\N	\N	2025-02-21 01:39:31.649	2025-03-12 06:35:58.88	1
693	395	125	\N	\N	\N	\N	2025-02-21 01:38:00.461	2025-03-12 06:35:58.88	1
691	395	121	\N	\N	\N	\N	2025-02-21 01:38:00.461	2025-03-12 06:35:58.88	1
698	397	122	\N	\N	\N	\N	2025-02-21 01:39:31.649	2025-03-12 06:35:58.88	1
696	396	120	\N	\N	\N	\N	2025-02-21 01:39:31.649	2025-03-12 06:35:58.88	1
697	396	125	\N	\N	\N	\N	2025-02-21 01:39:31.649	2025-03-12 06:35:58.88	1
699	397	121	\N	\N	\N	\N	2025-02-21 01:39:31.649	2025-03-12 06:35:58.88	1
701	397	125	\N	\N	\N	\N	2025-02-21 01:39:31.649	2025-03-12 06:35:58.88	1
765	417	121	\N	\N	\N	\N	2025-02-21 01:56:12.597	2025-03-12 06:35:58.88	1
762	416	120	\N	\N	\N	\N	2025-02-21 01:56:12.597	2025-03-12 06:35:58.88	1
760	415	120	\N	\N	\N	\N	2025-02-21 01:52:58.94	2025-03-12 06:35:58.88	1
757	413	121	\N	\N	\N	\N	2025-02-21 01:52:58.94	2025-03-12 06:35:58.88	1
753	412	122	\N	\N	\N	\N	2025-02-21 01:52:58.94	2025-03-12 06:35:58.88	1
750	411	121	\N	\N	\N	\N	2025-02-21 01:50:03.935	2025-03-12 06:35:58.88	1
747	410	120	\N	\N	\N	\N	2025-02-21 01:50:03.935	2025-03-12 06:35:58.88	1
733	405	125	\N	\N	\N	\N	2025-02-21 01:45:42.806	2025-03-12 06:35:58.88	1
729	404	125	\N	\N	\N	\N	2025-02-21 01:45:42.806	2025-03-12 06:35:58.88	1
725	403	125	\N	\N	\N	\N	2025-02-21 01:45:42.806	2025-03-12 06:35:58.88	1
723	403	121	\N	\N	\N	\N	2025-02-21 01:45:42.806	2025-03-12 06:35:58.88	1
721	402	125	\N	\N	\N	\N	2025-02-21 01:45:42.806	2025-03-12 06:35:58.88	1
707	399	121	\N	\N	\N	\N	2025-02-21 01:41:52.052	2025-03-12 06:35:58.88	1
704	398	120	\N	\N	\N	\N	2025-02-21 01:41:52.052	2025-03-12 06:35:58.88	1
703	398	121	\N	\N	\N	\N	2025-02-21 01:41:52.052	2025-03-12 06:35:58.88	1
706	399	122	\N	\N	\N	\N	2025-02-21 01:41:52.052	2025-03-12 06:35:58.88	1
705	398	125	\N	\N	\N	\N	2025-02-21 01:41:52.052	2025-03-12 06:35:58.88	1
709	399	125	\N	\N	\N	\N	2025-02-21 01:41:52.052	2025-03-12 06:35:58.88	1
715	401	121	\N	\N	\N	\N	2025-02-21 01:41:52.052	2025-03-12 06:35:58.88	1
712	400	120	\N	\N	\N	\N	2025-02-21 01:41:52.052	2025-03-12 06:35:58.88	1
711	400	121	\N	\N	\N	\N	2025-02-21 01:41:52.052	2025-03-12 06:35:58.88	1
710	400	122	\N	\N	\N	\N	2025-02-21 01:41:52.052	2025-03-12 06:35:58.88	1
708	399	120	\N	\N	\N	\N	2025-02-21 01:41:52.052	2025-03-12 06:35:58.88	1
714	401	122	\N	\N	\N	\N	2025-02-21 01:41:52.052	2025-03-12 06:35:58.88	1
713	400	125	\N	\N	\N	\N	2025-02-21 01:41:52.052	2025-03-12 06:35:58.88	1
722	403	122	\N	\N	\N	\N	2025-02-21 01:45:42.806	2025-03-12 06:35:58.88	1
720	402	120	\N	\N	\N	\N	2025-02-21 01:45:42.806	2025-03-12 06:35:58.88	1
718	402	122	\N	\N	\N	\N	2025-02-21 01:45:42.806	2025-03-12 06:35:58.88	1
717	401	125	\N	\N	\N	\N	2025-02-21 01:41:52.052	2025-03-12 06:35:58.88	1
716	401	120	\N	\N	\N	\N	2025-02-21 01:41:52.052	2025-03-12 06:35:58.88	1
719	402	121	\N	\N	\N	\N	2025-02-21 01:45:42.806	2025-03-12 06:35:58.88	1
724	403	120	\N	\N	\N	\N	2025-02-21 01:45:42.806	2025-03-12 06:35:58.88	1
727	404	121	\N	\N	\N	\N	2025-02-21 01:45:42.806	2025-03-12 06:35:58.88	1
726	404	122	\N	\N	\N	\N	2025-02-21 01:45:42.806	2025-03-12 06:35:58.88	1
728	404	120	\N	\N	\N	\N	2025-02-21 01:45:42.806	2025-03-12 06:35:58.88	1
731	405	121	\N	\N	\N	\N	2025-02-21 01:45:42.806	2025-03-12 06:35:58.88	1
730	405	122	\N	\N	\N	\N	2025-02-21 01:45:42.806	2025-03-12 06:35:58.88	1
732	405	120	\N	\N	\N	\N	2025-02-21 01:45:42.806	2025-03-12 06:35:58.88	1
746	410	121	\N	\N	\N	\N	2025-02-21 01:50:03.935	2025-03-12 06:35:58.88	1
744	409	121	\N	\N	\N	\N	2025-02-21 01:50:03.935	2025-03-12 06:35:58.88	1
743	409	120	\N	\N	\N	\N	2025-02-21 01:50:03.935	2025-03-12 06:35:58.88	1
741	408	120	\N	\N	\N	\N	2025-02-21 01:50:03.935	2025-03-12 06:35:58.88	1
739	407	121	\N	\N	\N	\N	2025-02-21 01:47:35.806	2025-03-12 06:35:58.88	1
737	406	125	\N	\N	\N	\N	2025-02-21 01:47:35.806	2025-03-12 06:35:58.88	1
735	406	121	\N	\N	\N	\N	2025-02-21 01:47:35.806	2025-03-12 06:35:58.88	1
734	406	122	\N	\N	\N	\N	2025-02-21 01:47:35.806	2025-03-12 06:35:58.88	1
736	406	120	\N	\N	\N	\N	2025-02-21 01:47:35.806	2025-03-12 06:35:58.88	1
738	407	122	\N	\N	\N	\N	2025-02-21 01:47:35.806	2025-03-12 06:35:58.88	1
740	407	120	\N	\N	\N	\N	2025-02-21 01:47:35.806	2025-03-12 06:35:58.88	1
742	408	121	\N	\N	\N	\N	2025-02-21 01:50:03.935	2025-03-12 06:35:58.88	1
745	410	122	\N	\N	\N	\N	2025-02-21 01:50:03.935	2025-03-12 06:35:58.88	1
749	411	122	\N	\N	\N	\N	2025-02-21 01:50:03.935	2025-03-12 06:35:58.88	1
748	410	125	\N	\N	\N	\N	2025-02-21 01:50:03.935	2025-03-12 06:35:58.88	1
752	411	125	\N	\N	\N	\N	2025-02-21 01:50:03.935	2025-03-12 06:35:58.88	1
751	411	120	\N	\N	\N	\N	2025-02-21 01:50:03.935	2025-03-12 06:35:58.88	1
754	412	121	\N	\N	\N	\N	2025-02-21 01:52:58.94	2025-03-12 06:35:58.88	1
755	412	120	\N	\N	\N	\N	2025-02-21 01:52:58.94	2025-03-12 06:35:58.88	1
756	413	120	\N	\N	\N	\N	2025-02-21 01:52:58.94	2025-03-12 06:35:58.88	1
764	417	120	\N	\N	\N	\N	2025-02-21 01:56:12.597	2025-03-12 06:35:58.88	1
763	416	121	\N	\N	\N	\N	2025-02-21 01:56:12.597	2025-03-12 06:35:58.88	1
761	415	121	\N	\N	\N	\N	2025-02-21 01:52:58.94	2025-03-12 06:35:58.88	1
759	414	121	\N	\N	\N	\N	2025-02-21 01:52:58.94	2025-03-12 06:35:58.88	1
758	414	120	\N	\N	\N	\N	2025-02-21 01:52:58.94	2025-03-12 06:35:58.88	1
783	428	121	\N	\N	\N	\N	2025-02-21 02:09:07.648	2025-03-12 06:35:58.88	1
778	425	121	\N	\N	\N	\N	2025-02-21 02:07:13.575	2025-03-12 06:35:58.88	1
774	423	121	\N	\N	\N	\N	2025-02-21 02:03:19.419	2025-03-12 06:35:58.88	1
773	423	122	\N	\N	\N	\N	2025-02-21 02:03:19.419	2025-03-12 06:35:58.88	1
770	421	121	\N	\N	\N	\N	2025-02-21 02:03:19.419	2025-03-12 06:35:58.88	1
769	421	122	\N	\N	\N	\N	2025-02-21 02:03:19.419	2025-03-12 06:35:58.88	1
768	420	124	\N	\N	\N	\N	2025-02-21 02:03:19.419	2025-03-12 06:35:58.88	1
767	419	127	\N	\N	\N	\N	2025-02-21 01:56:12.597	2025-03-12 06:35:58.88	1
766	418	124	\N	\N	\N	\N	2025-02-21 01:56:12.597	2025-03-12 06:35:58.88	1
772	422	121	\N	\N	\N	\N	2025-02-21 02:03:19.419	2025-03-12 06:35:58.88	1
771	421	120	\N	\N	\N	\N	2025-02-21 02:03:19.419	2025-03-12 06:35:58.88	1
776	424	121	\N	\N	\N	\N	2025-02-21 02:07:13.575	2025-03-12 06:35:58.88	1
775	423	120	\N	\N	\N	\N	2025-02-21 02:03:19.419	2025-03-12 06:35:58.88	1
777	425	120	\N	\N	\N	\N	2025-02-21 02:07:13.575	2025-03-12 06:35:58.88	1
782	428	122	\N	\N	\N	\N	2025-02-21 02:09:07.648	2025-03-12 06:35:58.88	1
781	427	121	\N	\N	\N	\N	2025-02-21 02:07:13.575	2025-03-12 06:35:58.88	1
780	427	120	\N	\N	\N	\N	2025-02-21 02:07:13.575	2025-03-12 06:35:58.88	1
779	426	121	\N	\N	\N	\N	2025-02-21 02:07:13.575	2025-03-12 06:35:58.88	1
785	429	122	\N	\N	\N	\N	2025-02-21 02:09:07.648	2025-03-12 06:35:58.88	1
784	428	120	\N	\N	\N	\N	2025-02-21 02:09:07.648	2025-03-12 06:35:58.88	1
786	429	121	\N	\N	\N	\N	2025-02-21 02:09:07.648	2025-03-12 06:35:58.88	1
787	429	120	\N	\N	\N	\N	2025-02-21 02:09:07.648	2025-03-12 06:35:58.88	1
816	444	121	\N	\N	\N	\N	2025-02-21 02:15:57.966	2025-03-12 06:35:58.88	1
813	441	122	\N	\N	\N	\N	2025-02-21 02:14:29.72	2025-03-12 06:35:58.88	1
805	437	120	\N	\N	\N	\N	2025-02-21 02:12:51.851	2025-03-12 06:35:58.88	1
801	436	121	\N	\N	\N	\N	2025-02-21 02:12:51.851	2025-03-12 06:35:58.88	1
796	434	122	\N	\N	\N	\N	2025-02-21 02:11:37.703	2025-03-12 06:35:58.88	1
794	432	127	\N	\N	\N	\N	2025-02-21 02:11:37.703	2025-03-12 06:35:58.88	1
792	431	121	\N	\N	\N	\N	2025-02-21 02:09:07.648	2025-03-12 06:35:58.88	1
791	431	122	\N	\N	\N	\N	2025-02-21 02:09:07.648	2025-03-12 06:35:58.88	1
790	430	120	\N	\N	\N	\N	2025-02-21 02:09:07.648	2025-03-12 06:35:58.88	1
789	430	121	\N	\N	\N	\N	2025-02-21 02:09:07.648	2025-03-12 06:35:58.88	1
799	435	127	\N	\N	\N	\N	2025-02-21 02:11:37.703	2025-03-12 06:35:58.88	1
798	434	120	\N	\N	\N	\N	2025-02-21 02:11:37.703	2025-03-12 06:35:58.88	1
797	434	121	\N	\N	\N	\N	2025-02-21 02:11:37.703	2025-03-12 06:35:58.88	1
795	433	121	\N	\N	\N	\N	2025-02-21 02:11:37.703	2025-03-12 06:35:58.88	1
793	431	120	\N	\N	\N	\N	2025-02-21 02:09:07.648	2025-03-12 06:35:58.88	1
800	436	122	\N	\N	\N	\N	2025-02-21 02:12:51.851	2025-03-12 06:35:58.88	1
804	437	121	\N	\N	\N	\N	2025-02-21 02:12:51.851	2025-03-12 06:35:58.88	1
803	437	122	\N	\N	\N	\N	2025-02-21 02:12:51.851	2025-03-12 06:35:58.88	1
802	436	120	\N	\N	\N	\N	2025-02-21 02:12:51.851	2025-03-12 06:35:58.88	1
809	439	122	\N	\N	\N	\N	2025-02-21 02:14:29.72	2025-03-12 06:35:58.88	1
808	439	121	\N	\N	\N	\N	2025-02-21 02:14:29.72	2025-03-12 06:35:58.88	1
806	438	121	\N	\N	\N	\N	2025-02-21 02:14:29.72	2025-03-12 06:35:58.88	1
810	440	121	\N	\N	\N	\N	2025-02-21 02:14:29.72	2025-03-12 06:35:58.88	1
807	438	122	\N	\N	\N	\N	2025-02-21 02:14:29.72	2025-03-12 06:35:58.88	1
812	441	121	\N	\N	\N	\N	2025-02-21 02:14:29.72	2025-03-12 06:35:58.88	1
811	440	122	\N	\N	\N	\N	2025-02-21 02:14:29.72	2025-03-12 06:35:58.88	1
830	452	122	\N	\N	\N	\N	2025-02-21 02:23:05.669	2025-03-12 06:35:58.88	1
826	450	122	\N	\N	\N	\N	2025-02-21 02:21:37.822	2025-03-12 06:35:58.88	1
824	448	122	\N	\N	\N	\N	2025-02-21 02:21:37.822	2025-03-12 06:35:58.88	1
822	450	121	\N	\N	\N	\N	2025-02-21 02:19:41.716	2025-03-12 06:35:58.88	1
820	448	121	\N	\N	\N	\N	2025-02-21 02:19:41.716	2025-03-12 06:35:58.88	1
819	447	121	\N	\N	\N	\N	2025-02-21 02:19:41.716	2025-03-12 06:35:58.88	1
818	446	121	\N	\N	\N	\N	2025-02-21 02:16:45.557	2025-03-12 06:35:58.88	1
817	445	121	\N	\N	\N	\N	2025-02-21 02:15:57.966	2025-03-12 06:35:58.88	1
815	443	121	\N	\N	\N	\N	2025-02-21 02:15:57.966	2025-03-12 06:35:58.88	1
814	442	121	\N	\N	\N	\N	2025-02-21 02:15:57.966	2025-03-12 06:35:58.88	1
821	449	121	\N	\N	\N	\N	2025-02-21 02:19:41.716	2025-03-12 06:35:58.88	1
823	447	122	\N	\N	\N	\N	2025-02-21 02:21:37.822	2025-03-12 06:35:58.88	1
825	449	122	\N	\N	\N	\N	2025-02-21 02:21:37.822	2025-03-12 06:35:58.88	1
827	451	121	\N	\N	\N	\N	2025-02-21 02:23:05.669	2025-03-12 06:35:58.88	1
828	451	122	\N	\N	\N	\N	2025-02-21 02:23:05.669	2025-03-12 06:35:58.88	1
829	452	121	\N	\N	\N	\N	2025-02-21 02:23:05.669	2025-03-12 06:35:58.88	1
833	454	121	\N	\N	\N	\N	2025-02-21 02:23:05.669	2025-03-12 06:35:58.88	1
832	453	122	\N	\N	\N	\N	2025-02-21 02:23:05.669	2025-03-12 06:35:58.88	1
831	453	121	\N	\N	\N	\N	2025-02-21 02:23:05.669	2025-03-12 06:35:58.88	1
850	462	122	\N	\N	\N	\N	2025-02-21 02:36:14.22	2025-03-12 06:35:58.88	1
846	460	122	\N	\N	\N	\N	2025-02-21 02:36:14.22	2025-03-12 06:35:58.88	1
844	459	122	\N	\N	\N	\N	2025-02-21 02:36:14.22	2025-03-12 06:35:58.88	1
842	458	122	\N	\N	\N	\N	2025-02-21 02:25:30.916	2025-03-12 06:35:58.88	1
840	457	122	\N	\N	\N	\N	2025-02-21 02:25:30.916	2025-03-12 06:35:58.88	1
838	456	122	\N	\N	\N	\N	2025-02-21 02:25:30.916	2025-03-12 06:35:58.88	1
837	456	121	\N	\N	\N	\N	2025-02-21 02:25:30.916	2025-03-12 06:35:58.88	1
835	455	121	\N	\N	\N	\N	2025-02-21 02:25:30.916	2025-03-12 06:35:58.88	1
834	454	122	\N	\N	\N	\N	2025-02-21 02:23:05.669	2025-03-12 06:35:58.88	1
836	455	122	\N	\N	\N	\N	2025-02-21 02:25:30.916	2025-03-12 06:35:58.88	1
843	459	121	\N	\N	\N	\N	2025-02-21 02:36:14.22	2025-03-12 06:35:58.88	1
841	458	121	\N	\N	\N	\N	2025-02-21 02:25:30.916	2025-03-12 06:35:58.88	1
839	457	121	\N	\N	\N	\N	2025-02-21 02:25:30.916	2025-03-12 06:35:58.88	1
877	476	121	\N	\N	\N	\N	2025-02-21 02:45:28.841	2025-03-12 06:35:58.88	1
874	474	122	\N	\N	\N	\N	2025-02-21 02:43:07.494	2025-03-12 06:35:58.88	1
869	472	121	\N	\N	\N	\N	2025-02-21 02:43:07.494	2025-03-12 06:35:58.88	1
865	470	121	\N	\N	\N	\N	2025-02-21 02:43:07.494	2025-03-12 06:35:58.88	1
861	468	121	\N	\N	\N	\N	2025-02-21 02:43:07.494	2025-03-12 06:35:58.88	1
856	465	122	\N	\N	\N	\N	2025-02-21 02:37:41.586	2025-03-12 06:35:58.88	1
857	466	121	\N	\N	\N	\N	2025-02-21 02:37:41.586	2025-03-12 06:35:58.88	1
854	464	122	\N	\N	\N	\N	2025-02-21 02:37:41.586	2025-03-12 06:35:58.88	1
852	463	122	\N	\N	\N	\N	2025-02-21 02:37:41.586	2025-03-12 06:35:58.88	1
851	463	121	\N	\N	\N	\N	2025-02-21 02:37:41.586	2025-03-12 06:35:58.88	1
848	461	122	\N	\N	\N	\N	2025-02-21 02:36:14.22	2025-03-12 06:35:58.88	1
847	461	121	\N	\N	\N	\N	2025-02-21 02:36:14.22	2025-03-12 06:35:58.88	1
845	460	121	\N	\N	\N	\N	2025-02-21 02:36:14.22	2025-03-12 06:35:58.88	1
849	462	121	\N	\N	\N	\N	2025-02-21 02:36:14.22	2025-03-12 06:35:58.88	1
853	464	121	\N	\N	\N	\N	2025-02-21 02:37:41.586	2025-03-12 06:35:58.88	1
855	465	121	\N	\N	\N	\N	2025-02-21 02:37:41.586	2025-03-12 06:35:58.88	1
860	467	122	\N	\N	\N	\N	2025-02-21 02:43:07.494	2025-03-12 06:35:58.88	1
859	467	121	\N	\N	\N	\N	2025-02-21 02:43:07.494	2025-03-12 06:35:58.88	1
858	466	122	\N	\N	\N	\N	2025-02-21 02:37:41.586	2025-03-12 06:35:58.88	1
863	469	121	\N	\N	\N	\N	2025-02-21 02:43:07.494	2025-03-12 06:35:58.88	1
862	468	122	\N	\N	\N	\N	2025-02-21 02:43:07.494	2025-03-12 06:35:58.88	1
864	469	122	\N	\N	\N	\N	2025-02-21 02:43:07.494	2025-03-12 06:35:58.88	1
867	471	121	\N	\N	\N	\N	2025-02-21 02:43:07.494	2025-03-12 06:35:58.88	1
866	470	122	\N	\N	\N	\N	2025-02-21 02:43:07.494	2025-03-12 06:35:58.88	1
868	471	122	\N	\N	\N	\N	2025-02-21 02:43:07.494	2025-03-12 06:35:58.88	1
873	474	121	\N	\N	\N	\N	2025-02-21 02:43:07.494	2025-03-12 06:35:58.88	1
872	473	122	\N	\N	\N	\N	2025-02-21 02:43:07.494	2025-03-12 06:35:58.88	1
871	473	121	\N	\N	\N	\N	2025-02-21 02:43:07.494	2025-03-12 06:35:58.88	1
870	472	122	\N	\N	\N	\N	2025-02-21 02:43:07.494	2025-03-12 06:35:58.88	1
875	475	121	\N	\N	\N	\N	2025-02-21 02:45:28.841	2025-03-12 06:35:58.88	1
876	475	122	\N	\N	\N	\N	2025-02-21 02:45:28.841	2025-03-12 06:35:58.88	1
913	491	122	\N	\N	\N	\N	2025-02-21 03:24:41.846	2025-03-12 06:35:58.88	1
910	490	131	\N	\N	\N	\N	2025-02-21 03:24:41.846	2025-03-12 06:35:58.88	1
906	488	3	\N	\N	\N	\N	2025-02-21 03:22:31.618	2025-03-12 06:35:58.88	1
904	488	130	\N	\N	\N	\N	2025-02-21 03:22:31.618	2025-03-12 06:35:58.88	1
901	487	6	\N	\N	\N	\N	2025-02-21 03:22:31.618	2025-03-12 06:35:58.88	1
899	487	120	\N	\N	\N	\N	2025-02-21 03:22:31.618	2025-03-12 06:35:58.88	1
897	486	120	\N	\N	\N	\N	2025-02-21 03:22:31.618	2025-03-12 06:35:58.88	1
894	485	122	\N	\N	\N	\N	2025-02-21 03:09:58.666	2025-03-12 06:35:58.88	1
892	484	120	\N	\N	\N	\N	2025-02-21 03:09:58.666	2025-03-12 06:35:58.88	1
891	484	129	\N	\N	\N	\N	2025-02-21 03:09:58.666	2025-03-12 06:35:58.88	1
889	484	126	\N	\N	\N	\N	2025-02-21 03:09:58.666	2025-03-12 06:35:58.88	1
887	483	120	\N	\N	\N	\N	2025-02-21 03:09:58.666	2025-03-12 06:35:58.88	1
886	482	122	\N	\N	\N	\N	2025-02-21 03:09:58.666	2025-03-12 06:35:58.88	1
885	482	121	\N	\N	\N	\N	2025-02-21 03:09:58.666	2025-03-12 06:35:58.88	1
882	479	128	\N	\N	\N	\N	2025-02-21 02:48:32.677	2025-03-12 06:35:58.88	1
881	478	122	\N	\N	\N	\N	2025-02-21 02:45:28.841	2025-03-12 06:35:58.88	1
880	478	121	\N	\N	\N	\N	2025-02-21 02:45:28.841	2025-03-12 06:35:58.88	1
879	477	1	\N	\N	\N	\N	2025-02-21 02:45:28.841	2025-03-12 06:35:58.88	1
878	476	122	\N	\N	\N	\N	2025-02-21 02:45:28.841	2025-03-12 06:35:58.88	1
884	481	128	\N	\N	\N	\N	2025-02-21 02:48:32.677	2025-03-12 06:35:58.88	1
883	480	128	\N	\N	\N	\N	2025-02-21 02:48:32.677	2025-03-12 06:35:58.88	1
888	483	121	\N	\N	\N	\N	2025-02-21 03:09:58.666	2025-03-12 06:35:58.88	1
890	484	2	\N	\N	\N	\N	2025-02-21 03:09:58.666	2025-03-12 06:35:58.88	1
893	485	120	\N	\N	\N	\N	2025-02-21 03:09:58.666	2025-03-12 06:35:58.88	1
896	486	121	\N	\N	\N	\N	2025-02-21 03:22:31.618	2025-03-12 06:35:58.88	1
895	485	121	\N	\N	\N	\N	2025-02-21 03:09:58.666	2025-03-12 06:35:58.88	1
898	486	122	\N	\N	\N	\N	2025-02-21 03:22:31.618	2025-03-12 06:35:58.88	1
900	487	3	\N	\N	\N	\N	2025-02-21 03:22:31.618	2025-03-12 06:35:58.88	1
902	487	125	\N	\N	\N	\N	2025-02-21 03:22:31.618	2025-03-12 06:35:58.88	1
903	488	1	\N	\N	\N	\N	2025-02-21 03:22:31.618	2025-03-12 06:35:58.88	1
905	488	131	\N	\N	\N	\N	2025-02-21 03:22:31.618	2025-03-12 06:35:58.88	1
908	490	125	\N	\N	\N	\N	2025-02-21 03:24:41.846	2025-03-12 06:35:58.88	1
907	489	125	\N	\N	\N	\N	2025-02-21 03:22:31.618	2025-03-12 06:35:58.88	1
909	490	3	\N	\N	\N	\N	2025-02-21 03:24:41.846	2025-03-12 06:35:58.88	1
941	502	122	\N	\N	\N	\N	2025-02-21 03:37:26.267	2025-03-12 06:35:58.88	1
938	501	122	\N	\N	\N	\N	2025-02-21 03:37:26.267	2025-03-12 06:35:58.88	1
935	500	122	\N	\N	\N	\N	2025-02-21 03:37:26.267	2025-03-12 06:35:58.88	1
934	500	121	\N	\N	\N	\N	2025-02-21 03:37:26.267	2025-03-12 06:35:58.88	1
932	499	122	\N	\N	\N	\N	2025-02-21 03:37:26.267	2025-03-12 06:35:58.88	1
930	499	120	155	\N	\N	\N	2025-02-21 03:37:26.267	2025-03-12 06:35:58.88	1
928	497	125	\N	\N	\N	\N	2025-02-21 03:28:27.504	2025-03-12 06:35:58.88	1
926	496	131	\N	\N	\N	\N	2025-02-21 03:28:27.504	2025-03-12 06:35:58.88	1
925	496	1	\N	\N	\N	\N	2025-02-21 03:28:27.504	2025-03-12 06:35:58.88	1
924	496	125	\N	\N	\N	\N	2025-02-21 03:28:27.504	2025-03-12 06:35:58.88	1
923	495	125	\N	\N	\N	\N	2025-02-21 03:28:27.504	2025-03-12 06:35:58.88	1
922	495	129	\N	\N	\N	\N	2025-02-21 03:28:27.504	2025-03-12 06:35:58.88	1
920	494	3	\N	\N	\N	\N	2025-02-21 03:28:27.504	2025-03-12 06:35:58.88	1
921	495	3	\N	\N	\N	\N	2025-02-21 03:28:27.504	2025-03-12 06:35:58.88	1
919	494	125	\N	\N	\N	\N	2025-02-21 03:28:27.504	2025-03-12 06:35:58.88	1
918	494	120	\N	\N	\N	\N	2025-02-21 03:28:27.504	2025-03-12 06:35:58.88	1
917	493	122	\N	\N	\N	\N	2025-02-21 03:24:41.846	2025-03-12 06:35:58.88	1
916	493	121	\N	\N	\N	\N	2025-02-21 03:24:41.846	2025-03-12 06:35:58.88	1
915	492	122	\N	\N	\N	\N	2025-02-21 03:24:41.846	2025-03-12 06:35:58.88	1
914	492	121	\N	\N	\N	\N	2025-02-21 03:24:41.846	2025-03-12 06:35:58.88	1
912	491	120	\N	\N	\N	\N	2025-02-21 03:24:41.846	2025-03-12 06:35:58.88	1
911	491	125	\N	\N	\N	\N	2025-02-21 03:24:41.846	2025-03-12 06:35:58.88	1
927	497	132	\N	\N	\N	\N	2025-02-21 03:28:27.504	2025-03-12 06:35:58.88	1
929	498	124	\N	\N	\N	\N	2025-02-21 03:29:41.89	2025-03-12 06:35:58.88	1
931	499	121	\N	\N	\N	\N	2025-02-21 03:37:26.267	2025-03-12 06:35:58.88	1
933	500	120	\N	\N	\N	\N	2025-02-21 03:37:26.267	2025-03-12 06:35:58.88	1
936	501	120	155	\N	\N	\N	2025-02-21 03:37:26.267	2025-03-12 06:35:58.88	1
937	501	121	\N	\N	\N	\N	2025-02-21 03:37:26.267	2025-03-12 06:35:58.88	1
939	502	120	155	\N	\N	\N	2025-02-21 03:37:26.267	2025-03-12 06:35:58.88	1
940	502	121	\N	\N	\N	\N	2025-02-21 03:37:26.267	2025-03-12 06:35:58.88	1
942	503	120	155	\N	\N	\N	2025-02-21 03:49:07.801	2025-03-12 06:35:58.88	1
943	503	121	\N	\N	\N	\N	2025-02-21 03:49:07.801	2025-03-12 06:35:58.88	1
265	204	41	\N	\N	\N	\N	2025-02-18 04:44:15.527	2025-03-12 06:30:56.627	1
268	204	19	\N	\N	\N	\N	2025-02-18 04:44:15.527	2025-03-12 06:30:56.627	1
267	204	20	\N	\N	\N	\N	2025-02-18 04:44:15.527	2025-03-12 06:30:56.627	1
266	204	21	\N	\N	\N	\N	2025-02-18 04:44:15.527	2025-03-12 06:30:56.627	1
270	206	8	\N	\N	\N	\N	2025-02-18 04:50:49.772	2025-03-12 06:30:56.627	1
273	209	20	\N	\N	\N	\N	2025-02-18 06:01:22.148	2025-03-12 06:30:56.627	1
965	509	120	\N	\N	\N	\N	2025-02-21 03:55:35.467	2025-03-12 06:35:58.88	1
962	508	134	\N	\N	\N	\N	2025-02-21 03:52:07.148	2025-03-12 06:35:58.88	1
960	508	121	\N	\N	\N	\N	2025-02-21 03:52:07.148	2025-03-12 06:35:58.88	1
958	508	125	\N	\N	\N	\N	2025-02-21 03:52:07.148	2025-03-12 06:35:58.88	1
957	508	2	\N	\N	\N	\N	2025-02-21 03:52:07.148	2025-03-12 06:35:58.88	1
955	507	121	\N	\N	\N	\N	2025-02-21 03:50:15.076	2025-03-12 06:35:58.88	1
954	507	122	\N	\N	\N	\N	2025-02-21 03:50:15.076	2025-03-12 06:35:58.88	1
953	506	120	155	\N	\N	\N	2025-02-21 03:49:07.801	2025-03-12 06:35:58.88	1
952	506	122	\N	\N	\N	\N	2025-02-21 03:49:07.801	2025-03-12 06:35:58.88	1
950	505	122	\N	\N	\N	\N	2025-02-21 03:49:07.801	2025-03-12 06:35:58.88	1
949	505	121	\N	\N	\N	\N	2025-02-21 03:49:07.801	2025-03-12 06:35:58.88	1
948	505	120	155	\N	\N	\N	2025-02-21 03:49:07.801	2025-03-12 06:35:58.88	1
947	504	120	155	\N	\N	\N	2025-02-21 03:49:07.801	2025-03-12 06:35:58.88	1
946	504	122	\N	\N	\N	\N	2025-02-21 03:49:07.801	2025-03-12 06:35:58.88	1
945	504	121	\N	\N	\N	\N	2025-02-21 03:49:07.801	2025-03-12 06:35:58.88	1
951	506	121	\N	\N	\N	\N	2025-02-21 03:49:07.801	2025-03-12 06:35:58.88	1
956	507	120	\N	\N	\N	\N	2025-02-21 03:50:15.076	2025-03-12 06:35:58.88	1
959	508	122	\N	\N	\N	\N	2025-02-21 03:52:07.148	2025-03-12 06:35:58.88	1
964	509	121	\N	\N	\N	\N	2025-02-21 03:55:35.467	2025-03-12 06:35:58.88	1
963	509	122	\N	\N	\N	\N	2025-02-21 03:55:35.467	2025-03-12 06:35:58.88	1
961	508	120	\N	\N	\N	\N	2025-02-21 03:52:07.148	2025-03-12 06:35:58.88	1
974	512	121	\N	\N	\N	\N	2025-02-21 03:55:35.467	2025-03-12 06:35:58.88	1
973	512	120	\N	\N	\N	\N	2025-02-21 03:55:35.467	2025-03-12 06:35:58.88	1
972	511	125	\N	\N	\N	\N	2025-02-21 03:55:35.467	2025-03-12 06:35:58.88	1
971	511	122	\N	\N	\N	\N	2025-02-21 03:55:35.467	2025-03-12 06:35:58.88	1
970	511	121	\N	\N	\N	\N	2025-02-21 03:55:35.467	2025-03-12 06:35:58.88	1
969	511	120	\N	\N	\N	\N	2025-02-21 03:55:35.467	2025-03-12 06:35:58.88	1
968	510	125	\N	\N	\N	\N	2025-02-21 03:55:35.467	2025-03-12 06:35:58.88	1
967	510	120	\N	\N	\N	\N	2025-02-21 03:55:35.467	2025-03-12 06:35:58.88	1
966	510	121	\N	\N	\N	\N	2025-02-21 03:55:35.467	2025-03-12 06:35:58.88	1
975	512	125	\N	\N	\N	\N	2025-02-21 03:55:35.467	2025-03-12 06:40:15.427	1
994	519	122	\N	\N	\N	\N	2025-02-21 04:14:15.94	2025-03-12 06:40:15.427	1
993	519	121	\N	\N	\N	\N	2025-02-21 04:14:15.94	2025-03-12 06:40:15.427	1
997	520	122	\N	\N	\N	\N	2025-02-21 04:14:15.94	2025-03-12 06:40:15.427	1
996	520	121	\N	\N	\N	\N	2025-02-21 04:14:15.94	2025-03-12 06:40:15.427	1
1004	522	121	\N	\N	\N	\N	2025-02-21 04:39:24.892	2025-03-12 06:40:15.427	1
1003	522	120	\N	\N	\N	\N	2025-02-21 04:39:24.892	2025-03-12 06:40:15.427	1
1001	521	122	\N	\N	\N	\N	2025-02-21 04:14:15.94	2025-03-12 06:40:15.427	1
1000	521	121	\N	\N	\N	\N	2025-02-21 04:14:15.94	2025-03-12 06:40:15.427	1
999	521	120	\N	\N	\N	\N	2025-02-21 04:14:15.94	2025-03-12 06:40:15.427	1
1035	529	136	\N	\N	\N	\N	2025-02-22 01:26:26.227	2025-03-12 06:40:15.427	1
1033	528	131	\N	\N	\N	\N	2025-02-21 04:39:24.892	2025-03-12 06:40:15.427	1
1029	528	122	\N	\N	\N	\N	2025-02-21 04:39:24.892	2025-03-12 06:40:15.427	1
1027	527	136	\N	\N	\N	\N	2025-02-21 04:39:24.892	2025-03-12 06:40:15.427	1
1025	527	3	\N	\N	\N	\N	2025-02-21 04:39:24.892	2025-03-12 06:40:15.427	1
1023	527	135	\N	\N	\N	\N	2025-02-21 04:39:24.892	2025-03-12 06:40:15.427	1
1022	527	122	\N	\N	\N	\N	2025-02-21 04:39:24.892	2025-03-12 06:40:15.427	1
1018	526	121	\N	\N	\N	\N	2025-02-21 04:39:24.892	2025-03-12 06:40:15.427	1
1015	525	3	\N	\N	\N	\N	2025-02-21 04:39:24.892	2025-03-12 06:40:15.427	1
1013	525	122	\N	\N	\N	\N	2025-02-21 04:39:24.892	2025-03-12 06:40:15.427	1
1012	525	121	\N	\N	\N	\N	2025-02-21 04:39:24.892	2025-03-12 06:40:15.427	1
1010	524	122	\N	\N	\N	\N	2025-02-21 04:39:24.892	2025-03-12 06:40:15.427	1
1008	524	120	\N	\N	\N	\N	2025-02-21 04:39:24.892	2025-03-12 06:40:15.427	1
1007	523	125	\N	\N	\N	\N	2025-02-21 04:39:24.892	2025-03-12 06:40:15.427	1
1006	523	120	\N	\N	\N	\N	2025-02-21 04:39:24.892	2025-03-12 06:40:15.427	1
1009	524	121	\N	\N	\N	\N	2025-02-21 04:39:24.892	2025-03-12 06:40:15.427	1
1011	524	125	\N	\N	\N	\N	2025-02-21 04:39:24.892	2025-03-12 06:40:15.427	1
1014	525	125	\N	\N	\N	\N	2025-02-21 04:39:24.892	2025-03-12 06:40:15.427	1
1016	525	2	\N	\N	\N	\N	2025-02-21 04:39:24.892	2025-03-12 06:40:15.427	1
1017	525	6	\N	\N	\N	\N	2025-02-21 04:39:24.892	2025-03-12 06:40:15.427	1
1019	526	122	\N	\N	\N	\N	2025-02-21 04:39:24.892	2025-03-12 06:40:15.427	1
1021	527	121	\N	\N	\N	\N	2025-02-21 04:39:24.892	2025-03-12 06:40:15.427	1
1024	527	134	\N	\N	\N	\N	2025-02-21 04:39:24.892	2025-03-12 06:40:15.427	1
1032	528	3	\N	\N	\N	\N	2025-02-21 04:39:24.892	2025-03-12 06:40:15.427	1
1031	528	134	\N	\N	\N	\N	2025-02-21 04:39:24.892	2025-03-12 06:40:15.427	1
1028	528	121	\N	\N	\N	\N	2025-02-21 04:39:24.892	2025-03-12 06:40:15.427	1
1026	527	131	\N	\N	\N	\N	2025-02-21 04:39:24.892	2025-03-12 06:40:15.427	1
1034	528	135	\N	\N	\N	\N	2025-02-21 04:39:24.892	2025-03-12 06:40:15.427	1
1036	529	134	\N	\N	\N	\N	2025-02-22 01:26:26.227	2025-03-12 06:40:15.427	1
1037	529	121	\N	\N	\N	\N	2025-02-22 01:26:26.227	2025-03-12 06:40:15.427	1
1038	529	6	\N	\N	\N	\N	2025-02-22 01:26:26.227	2025-03-12 06:40:15.427	1
1039	530	126	\N	\N	\N	\N	2025-02-22 01:26:26.227	2025-03-12 06:40:15.427	1
1041	530	3	\N	\N	\N	\N	2025-02-22 01:26:26.227	2025-03-12 06:40:15.427	1
1042	530	125	\N	\N	\N	\N	2025-02-22 01:26:26.227	2025-03-12 06:40:15.427	1
1058	533	1	\N	\N	\N	\N	2025-02-22 01:30:03.692	2025-03-12 06:40:15.427	1
1057	533	138	\N	\N	\N	\N	2025-02-22 01:30:03.692	2025-03-12 06:40:15.427	1
1055	532	122	\N	\N	\N	\N	2025-02-22 01:26:26.227	2025-03-12 06:40:15.427	1
1054	532	125	\N	\N	\N	\N	2025-02-22 01:26:26.227	2025-03-12 06:40:15.427	1
1053	532	130	\N	\N	\N	\N	2025-02-22 01:26:26.227	2025-03-12 06:40:15.427	1
1052	532	121	\N	\N	\N	\N	2025-02-22 01:26:26.227	2025-03-12 06:40:15.427	1
1050	531	125	\N	\N	\N	\N	2025-02-22 01:26:26.227	2025-03-12 06:40:15.427	1
1049	531	136	\N	\N	\N	\N	2025-02-22 01:26:26.227	2025-03-12 06:40:15.427	1
1048	531	1	\N	\N	\N	\N	2025-02-22 01:26:26.227	2025-03-12 06:40:15.427	1
1047	531	6	\N	\N	\N	\N	2025-02-22 01:26:26.227	2025-03-12 06:40:15.427	1
1046	531	121	\N	\N	\N	\N	2025-02-22 01:26:26.227	2025-03-12 06:40:15.427	1
1044	531	126	\N	\N	\N	\N	2025-02-22 01:26:26.227	2025-03-12 06:40:15.427	1
1043	530	121	\N	\N	\N	\N	2025-02-22 01:26:26.227	2025-03-12 06:40:15.427	1
1051	532	87	\N	\N	\N	\N	2025-02-22 01:26:26.227	2025-03-12 06:40:15.427	1
1056	532	136	\N	\N	\N	\N	2025-02-22 01:26:26.227	2025-03-12 06:40:15.427	1
1087	540	122	\N	\N	\N	\N	2025-02-22 01:50:14.985	2025-03-12 06:40:15.427	1
1083	540	134	\N	\N	\N	\N	2025-02-22 01:50:14.985	2025-03-12 06:40:15.427	1
1081	539	121	\N	\N	\N	\N	2025-02-22 01:50:14.985	2025-03-12 06:40:15.427	1
1078	537	135	\N	\N	\N	\N	2025-02-22 01:34:43.761	2025-03-12 06:40:15.427	1
1075	536	1	\N	\N	\N	\N	2025-02-22 01:34:43.761	2025-03-12 06:40:15.427	1
1070	535	122	\N	\N	\N	\N	2025-02-22 01:32:50.93	2025-03-12 06:40:15.427	1
1068	535	130	\N	\N	\N	\N	2025-02-22 01:32:50.93	2025-03-12 06:40:15.427	1
1066	535	131	\N	\N	\N	\N	2025-02-22 01:32:50.93	2025-03-12 06:40:15.427	1
1062	534	1	\N	\N	\N	\N	2025-02-22 01:30:03.692	2025-03-12 06:40:15.427	1
1060	533	121	\N	\N	\N	\N	2025-02-22 01:30:03.692	2025-03-12 06:40:15.427	1
1059	533	3	\N	\N	\N	\N	2025-02-22 01:30:03.692	2025-03-12 06:40:15.427	1
1061	533	136	\N	\N	\N	\N	2025-02-22 01:30:03.692	2025-03-12 06:40:15.427	1
1064	534	120	\N	\N	\N	\N	2025-02-22 01:30:03.692	2025-03-12 06:40:15.427	1
1063	534	121	\N	\N	\N	\N	2025-02-22 01:30:03.692	2025-03-12 06:40:15.427	1
1065	534	134	\N	\N	\N	\N	2025-02-22 01:30:03.692	2025-03-12 06:40:15.427	1
1069	535	1	\N	\N	\N	\N	2025-02-22 01:32:50.93	2025-03-12 06:40:15.427	1
1067	535	134	\N	\N	\N	\N	2025-02-22 01:32:50.93	2025-03-12 06:40:15.427	1
610	367	19	\N	\N	\N	\N	2025-02-21 00:12:37.656	2025-03-12 06:35:58.88	1
629	377	121	\N	\N	\N	\N	2025-02-21 01:22:18.277	2025-03-12 06:35:58.88	1
626	375	121	\N	\N	\N	\N	2025-02-21 01:18:03.972	2025-03-12 06:35:58.88	1
623	374	123	\N	\N	\N	\N	2025-02-21 01:18:03.972	2025-03-12 06:35:58.88	1
621	373	120	\N	\N	\N	\N	2025-02-21 01:18:03.972	2025-03-12 06:35:58.88	1
619	372	120	\N	\N	\N	\N	2025-02-21 01:18:03.972	2025-03-12 06:35:58.88	1
617	371	120	\N	\N	\N	\N	2025-02-21 01:12:45.988	2025-03-12 06:35:58.88	1
616	370	121	\N	\N	\N	\N	2025-02-21 01:12:45.988	2025-03-12 06:35:58.88	1
615	370	120	\N	\N	\N	\N	2025-02-21 01:12:45.988	2025-03-12 06:35:58.88	1
613	369	120	\N	\N	\N	\N	2025-02-21 01:12:45.988	2025-03-12 06:35:58.88	1
612	368	121	\N	\N	\N	\N	2025-02-21 01:12:45.988	2025-03-12 06:35:58.88	1
611	368	120	\N	\N	\N	\N	2025-02-21 01:12:45.988	2025-03-12 06:35:58.88	1
628	377	122	\N	\N	\N	\N	2025-02-21 01:22:18.277	2025-03-12 06:35:58.88	1
627	376	121	\N	\N	\N	\N	2025-02-21 01:22:18.277	2025-03-12 06:35:58.88	1
625	375	122	\N	\N	\N	\N	2025-02-21 01:18:03.972	2025-03-12 06:35:58.88	1
624	374	124	\N	\N	\N	\N	2025-02-21 01:18:03.972	2025-03-12 06:35:58.88	1
622	373	121	\N	\N	\N	\N	2025-02-21 01:18:03.972	2025-03-12 06:35:58.88	1
620	372	121	\N	\N	\N	\N	2025-02-21 01:18:03.972	2025-03-12 06:35:58.88	1
618	371	121	\N	\N	\N	\N	2025-02-21 01:12:45.988	2025-03-12 06:35:58.88	1
614	369	121	\N	\N	\N	\N	2025-02-21 01:12:45.988	2025-03-12 06:35:58.88	1
1072	536	131	\N	\N	\N	\N	2025-02-22 01:34:43.761	2025-03-12 06:40:15.427	1
1074	536	135	\N	\N	\N	\N	2025-02-22 01:34:43.761	2025-03-12 06:40:15.427	1
1071	535	121	\N	\N	\N	\N	2025-02-22 01:32:50.93	2025-03-12 06:40:15.427	1
1076	537	131	\N	\N	\N	\N	2025-02-22 01:34:43.761	2025-03-12 06:40:15.427	1
1079	537	1	\N	\N	\N	\N	2025-02-22 01:34:43.761	2025-03-12 06:40:15.427	1
1080	538	121	\N	\N	\N	\N	2025-02-22 01:50:14.985	2025-03-12 06:40:15.427	1
1082	540	138	\N	\N	\N	\N	2025-02-22 01:50:14.985	2025-03-12 06:40:15.427	1
1085	540	1	\N	\N	\N	\N	2025-02-22 01:50:14.985	2025-03-12 06:40:15.427	1
1084	540	6	\N	\N	\N	\N	2025-02-22 01:50:14.985	2025-03-12 06:40:15.427	1
1086	540	121	\N	\N	\N	\N	2025-02-22 01:50:14.985	2025-03-12 06:40:15.427	1
1114	546	126	\N	\N	\N	\N	2025-02-22 02:04:59.38	2025-03-12 06:40:15.427	1
1111	546	1	\N	\N	\N	\N	2025-02-22 02:04:59.38	2025-03-12 06:40:15.427	1
1105	546	139	\N	\N	\N	\N	2025-02-22 02:04:59.38	2025-03-12 06:40:15.427	1
1103	545	130	\N	\N	\N	\N	2025-02-22 02:04:59.38	2025-03-12 06:40:15.427	1
1100	544	136	\N	\N	\N	\N	2025-02-22 02:04:59.38	2025-03-12 06:40:15.427	1
1099	544	138	\N	\N	\N	\N	2025-02-22 02:04:59.38	2025-03-12 06:40:15.427	1
1097	544	130	\N	\N	\N	\N	2025-02-22 02:04:59.38	2025-03-12 06:40:15.427	1
1095	543	136	\N	\N	\N	\N	2025-02-22 01:53:56.898	2025-03-12 06:40:15.427	1
1094	543	122	\N	\N	\N	\N	2025-02-22 01:53:56.898	2025-03-12 06:40:15.427	1
1093	542	122	\N	\N	\N	\N	2025-02-22 01:53:56.898	2025-03-12 06:40:15.427	1
1092	542	120	\N	\N	\N	\N	2025-02-22 01:53:56.898	2025-03-12 06:40:15.427	1
1091	542	130	\N	\N	\N	\N	2025-02-22 01:53:56.898	2025-03-12 06:40:15.427	1
1090	541	1	\N	\N	\N	\N	2025-02-22 01:50:14.985	2025-03-12 06:40:15.427	1
1088	541	122	\N	\N	\N	\N	2025-02-22 01:50:14.985	2025-03-12 06:40:15.427	1
1096	543	121	\N	\N	\N	\N	2025-02-22 01:53:56.898	2025-03-12 06:40:15.427	1
1098	544	137	\N	\N	\N	\N	2025-02-22 02:04:59.38	2025-03-12 06:40:15.427	1
1101	544	1	\N	\N	\N	\N	2025-02-22 02:04:59.38	2025-03-12 06:40:15.427	1
1102	544	121	\N	\N	\N	\N	2025-02-22 02:04:59.38	2025-03-12 06:40:15.427	1
1104	545	3	\N	\N	\N	\N	2025-02-22 02:04:59.38	2025-03-12 06:40:15.427	1
1106	546	130	\N	\N	\N	\N	2025-02-22 02:04:59.38	2025-03-12 06:40:15.427	1
1109	546	6	\N	\N	\N	\N	2025-02-22 02:04:59.38	2025-03-12 06:40:15.427	1
1112	546	120	\N	\N	\N	\N	2025-02-22 02:04:59.38	2025-03-12 06:40:15.427	1
1113	546	121	\N	\N	\N	\N	2025-02-22 02:04:59.38	2025-03-12 06:40:15.427	1
1131	551	120	\N	\N	\N	\N	2025-02-22 02:13:44.518	2025-03-12 06:40:15.427	1
1128	550	120	\N	\N	\N	\N	2025-02-22 02:13:44.518	2025-03-12 06:40:15.427	1
1124	549	120	\N	\N	\N	\N	2025-02-22 02:13:44.518	2025-03-12 06:40:15.427	1
1119	548	130	\N	\N	\N	\N	2025-02-22 02:13:44.518	2025-03-12 06:40:15.427	1
1117	547	126	\N	\N	\N	\N	2025-02-22 02:04:59.38	2025-03-12 06:40:15.427	1
1116	547	122	\N	\N	\N	\N	2025-02-22 02:04:59.38	2025-03-12 06:40:15.427	1
1115	547	121	\N	\N	\N	\N	2025-02-22 02:04:59.38	2025-03-12 06:40:15.427	1
1121	548	120	\N	\N	\N	\N	2025-02-22 02:13:44.518	2025-03-12 06:40:15.427	1
1120	548	122	\N	\N	\N	\N	2025-02-22 02:13:44.518	2025-03-12 06:40:15.427	1
1118	548	131	\N	\N	\N	\N	2025-02-22 02:13:44.518	2025-03-12 06:40:15.427	1
1122	548	121	\N	\N	\N	\N	2025-02-22 02:13:44.518	2025-03-12 06:40:15.427	1
1123	549	137	\N	\N	\N	\N	2025-02-22 02:13:44.518	2025-03-12 06:40:15.427	1
1127	550	122	\N	\N	\N	\N	2025-02-22 02:13:44.518	2025-03-12 06:40:15.427	1
1126	550	137	\N	\N	\N	\N	2025-02-22 02:13:44.518	2025-03-12 06:40:15.427	1
1125	549	121	\N	\N	\N	\N	2025-02-22 02:13:44.518	2025-03-12 06:40:15.427	1
1129	550	121	\N	\N	\N	\N	2025-02-22 02:13:44.518	2025-03-12 06:40:15.427	1
1130	551	6	\N	\N	\N	\N	2025-02-22 02:13:44.518	2025-03-12 06:40:15.427	1
1146	555	3	\N	\N	\N	\N	2025-02-22 02:41:34.801	2025-03-12 06:40:15.427	1
1145	555	122	\N	\N	\N	\N	2025-02-22 02:41:34.801	2025-03-12 06:40:15.427	1
1144	554	122	\N	\N	\N	\N	2025-02-22 02:36:51.854	2025-03-12 06:40:15.427	1
1143	554	2	\N	\N	\N	\N	2025-02-22 02:36:51.854	2025-03-12 06:40:15.427	1
1141	553	120	\N	\N	\N	\N	2025-02-22 02:36:51.854	2025-03-12 06:40:15.427	1
1139	553	2	\N	\N	\N	\N	2025-02-22 02:36:51.854	2025-03-12 06:40:15.427	1
1138	553	6	\N	\N	\N	\N	2025-02-22 02:36:51.854	2025-03-12 06:40:15.427	1
1137	552	121	\N	\N	\N	\N	2025-02-22 02:36:51.854	2025-03-12 06:40:15.427	1
1136	552	126	\N	\N	\N	\N	2025-02-22 02:36:51.854	2025-03-12 06:40:15.427	1
1135	552	174	\N	\N	\N	\N	2025-02-22 02:36:51.854	2025-03-12 06:40:15.427	1
1134	552	6	\N	\N	\N	\N	2025-02-22 02:36:51.854	2025-03-12 06:40:15.427	1
1133	552	2	\N	\N	\N	\N	2025-02-22 02:36:51.854	2025-03-12 06:40:15.427	1
1132	551	121	\N	\N	\N	\N	2025-02-22 02:13:44.518	2025-03-12 06:40:15.427	1
1140	553	1	\N	\N	\N	\N	2025-02-22 02:36:51.854	2025-03-12 06:40:15.427	1
1167	561	6	\N	\N	\N	\N	2025-02-22 02:45:56.54	2025-03-12 06:40:15.427	1
1164	560	3	\N	\N	\N	\N	2025-02-22 02:45:56.54	2025-03-12 06:40:15.427	1
1162	560	121	\N	\N	\N	\N	2025-02-22 02:45:56.54	2025-03-12 06:40:15.427	1
1160	559	121	\N	\N	\N	\N	2025-02-22 02:45:56.54	2025-03-12 06:40:15.427	1
1155	558	121	\N	\N	\N	\N	2025-02-22 02:41:34.801	2025-03-12 06:40:15.427	1
1153	558	120	\N	\N	\N	\N	2025-02-22 02:41:34.801	2025-03-12 06:40:15.427	1
1151	557	3	\N	\N	\N	\N	2025-02-22 02:41:34.801	2025-03-12 06:40:15.427	1
1148	555	120	\N	\N	\N	\N	2025-02-22 02:41:34.801	2025-03-12 06:40:15.427	1
1147	555	121	\N	\N	\N	\N	2025-02-22 02:41:34.801	2025-03-12 06:40:15.427	1
1149	556	121	\N	\N	\N	\N	2025-02-22 02:41:34.801	2025-03-12 06:40:15.427	1
1150	557	133	\N	\N	\N	\N	2025-02-22 02:41:34.801	2025-03-12 06:40:15.427	1
1152	557	121	\N	\N	\N	\N	2025-02-22 02:41:34.801	2025-03-12 06:40:15.427	1
1154	558	122	\N	\N	\N	\N	2025-02-22 02:41:34.801	2025-03-12 06:40:15.427	1
1156	558	6	\N	\N	\N	\N	2025-02-22 02:41:34.801	2025-03-12 06:40:15.427	1
1157	559	6	\N	\N	\N	\N	2025-02-22 02:45:56.54	2025-03-12 06:40:15.427	1
1159	559	120	\N	\N	\N	\N	2025-02-22 02:45:56.54	2025-03-12 06:40:15.427	1
1158	559	2	\N	\N	\N	\N	2025-02-22 02:45:56.54	2025-03-12 06:40:15.427	1
1161	560	120	\N	\N	\N	\N	2025-02-22 02:45:56.54	2025-03-12 06:40:15.427	1
1163	560	126	\N	\N	\N	\N	2025-02-22 02:45:56.54	2025-03-12 06:40:15.427	1
1166	561	137	\N	\N	\N	\N	2025-02-22 02:45:56.54	2025-03-12 06:40:15.427	1
1165	561	122	\N	\N	\N	\N	2025-02-22 02:45:56.54	2025-03-12 06:40:15.427	1
1191	569	130	\N	\N	\N	\N	2025-02-22 03:01:07.019	2025-03-12 06:40:15.427	1
1188	568	130	\N	\N	\N	\N	2025-02-22 03:01:07.019	2025-03-12 06:40:15.427	1
1185	567	130	\N	\N	\N	\N	2025-02-22 02:56:20.329	2025-03-12 06:40:15.427	1
1073	536	2	\N	\N	\N	\N	2025-02-22 01:34:43.761	2025-05-17 08:06:35.88	1
1183	566	6	\N	\N	\N	\N	2025-02-22 02:56:20.329	2025-03-12 06:40:15.427	1
1180	565	6	\N	\N	\N	\N	2025-02-22 02:56:20.329	2025-03-12 06:40:15.427	1
1178	565	120	\N	\N	\N	\N	2025-02-22 02:56:20.329	2025-03-12 06:40:15.427	1
1175	564	6	\N	\N	\N	\N	2025-02-22 02:54:16.48	2025-03-12 06:40:15.427	1
1173	563	1	\N	\N	\N	\N	2025-02-22 02:54:16.48	2025-03-12 06:40:15.427	1
1170	562	121	\N	\N	\N	\N	2025-02-22 02:45:56.54	2025-03-12 06:40:15.427	1
1171	563	121	\N	\N	\N	\N	2025-02-22 02:54:16.48	2025-03-12 06:40:15.427	1
1169	562	120	\N	\N	\N	\N	2025-02-22 02:45:56.54	2025-03-12 06:40:15.427	1
1168	562	126	\N	\N	\N	\N	2025-02-22 02:45:56.54	2025-03-12 06:40:15.427	1
1172	563	130	\N	\N	\N	\N	2025-02-22 02:54:16.48	2025-03-12 06:40:15.427	1
1174	564	130	\N	\N	\N	\N	2025-02-22 02:54:16.48	2025-03-12 06:40:15.427	1
1177	564	121	\N	\N	\N	\N	2025-02-22 02:54:16.48	2025-03-12 06:40:15.427	1
1176	564	120	\N	\N	\N	\N	2025-02-22 02:54:16.48	2025-03-12 06:40:15.427	1
1179	565	130	\N	\N	\N	\N	2025-02-22 02:56:20.329	2025-03-12 06:40:15.427	1
1181	566	120	\N	\N	\N	\N	2025-02-22 02:56:20.329	2025-03-12 06:40:15.427	1
1182	566	130	\N	\N	\N	\N	2025-02-22 02:56:20.329	2025-03-12 06:40:15.427	1
1184	567	120	\N	\N	\N	\N	2025-02-22 02:56:20.329	2025-03-12 06:40:15.427	1
1186	567	6	\N	\N	\N	\N	2025-02-22 02:56:20.329	2025-03-12 06:40:15.427	1
1187	568	120	\N	\N	\N	\N	2025-02-22 03:01:07.019	2025-03-12 06:40:15.427	1
1190	569	120	\N	\N	\N	\N	2025-02-22 03:01:07.019	2025-03-12 06:40:15.427	1
1189	568	6	\N	\N	\N	\N	2025-02-22 03:01:07.019	2025-03-12 06:40:15.427	1
1202	572	122	\N	\N	\N	\N	2025-02-22 03:01:07.019	2025-03-12 06:40:15.427	1
1201	572	6	\N	\N	\N	\N	2025-02-22 03:01:07.019	2025-03-12 06:40:15.427	1
1200	572	2	\N	\N	\N	\N	2025-02-22 03:01:07.019	2025-03-12 06:40:15.427	1
1199	571	121	\N	\N	\N	\N	2025-02-22 03:01:07.019	2025-03-12 06:40:15.427	1
1198	571	122	\N	\N	\N	\N	2025-02-22 03:01:07.019	2025-03-12 06:40:15.427	1
1196	571	126	\N	\N	\N	\N	2025-02-22 03:01:07.019	2025-03-12 06:40:15.427	1
1195	570	6	\N	\N	\N	\N	2025-02-22 03:01:07.019	2025-03-12 06:40:15.427	1
1194	570	130	\N	\N	\N	\N	2025-02-22 03:01:07.019	2025-03-12 06:40:15.427	1
1193	570	120	\N	\N	\N	\N	2025-02-22 03:01:07.019	2025-03-12 06:40:15.427	1
1192	569	6	\N	\N	\N	\N	2025-02-22 03:01:07.019	2025-03-12 06:40:15.427	1
1197	571	6	\N	\N	\N	\N	2025-02-22 03:01:07.019	2025-03-12 06:40:15.427	1
1216	576	5	\N	\N	\N	\N	2025-02-22 03:25:10.144	2025-03-12 06:40:15.427	1
1214	576	172	\N	\N	\N	\N	2025-02-22 03:25:10.144	2025-03-12 06:40:15.427	1
1211	575	69	\N	\N	\N	\N	2025-02-22 03:25:10.144	2025-03-12 06:40:15.427	1
1210	575	68	\N	\N	\N	\N	2025-02-22 03:25:10.144	2025-03-12 06:40:15.427	1
1208	575	66	\N	\N	\N	\N	2025-02-22 03:25:10.144	2025-03-12 06:40:15.427	1
1207	574	141	\N	\N	\N	\N	2025-02-22 03:08:58.19	2025-03-12 06:40:15.427	1
1205	573	3	\N	\N	\N	\N	2025-02-22 03:08:58.19	2025-03-12 06:40:15.427	1
1204	573	6	\N	\N	\N	\N	2025-02-22 03:08:58.19	2025-03-12 06:40:15.427	1
1203	572	121	\N	\N	\N	\N	2025-02-22 03:01:07.019	2025-03-12 06:40:15.427	1
1206	573	120	\N	\N	\N	\N	2025-02-22 03:08:58.19	2025-03-12 06:40:15.427	1
1209	575	67	\N	\N	\N	\N	2025-02-22 03:25:10.144	2025-03-12 06:40:15.427	1
1212	575	70	\N	\N	\N	\N	2025-02-22 03:25:10.144	2025-03-12 06:40:15.427	1
1215	576	173	\N	\N	\N	\N	2025-02-22 03:25:10.144	2025-03-12 06:40:15.427	1
1228	577	120	\N	\N	\N	\N	2025-02-22 03:25:10.144	2025-03-12 06:40:15.427	1
1226	577	130	\N	\N	\N	\N	2025-02-22 03:25:10.144	2025-03-12 06:40:15.427	1
1227	577	121	\N	\N	\N	\N	2025-02-22 03:25:10.144	2025-03-12 06:40:15.427	1
1225	577	2	\N	\N	\N	\N	2025-02-22 03:25:10.144	2025-03-12 06:40:15.427	1
1224	577	137	\N	\N	\N	\N	2025-02-22 03:25:10.144	2025-03-12 06:40:15.427	1
1222	576	120	\N	\N	\N	\N	2025-02-22 03:25:10.144	2025-03-12 06:40:15.427	1
1223	577	3	\N	\N	\N	\N	2025-02-22 03:25:10.144	2025-03-12 06:40:15.427	1
1220	576	121	\N	\N	\N	\N	2025-02-22 03:25:10.144	2025-03-12 06:40:15.427	1
1221	576	6	\N	\N	\N	\N	2025-02-22 03:25:10.144	2025-03-12 06:40:15.427	1
1219	576	130	\N	\N	\N	\N	2025-02-22 03:25:10.144	2025-03-12 06:40:15.427	1
1218	576	2	\N	\N	\N	\N	2025-02-22 03:25:10.144	2025-03-12 06:40:15.427	1
1217	576	140	\N	\N	\N	\N	2025-02-22 03:25:10.144	2025-03-12 06:40:15.427	1
1234	578	3	\N	\N	\N	\N	2025-02-22 03:25:10.144	2025-03-12 06:40:15.427	1
1233	578	6	\N	\N	\N	\N	2025-02-22 03:25:10.144	2025-03-12 06:40:15.427	1
1232	578	120	\N	\N	\N	\N	2025-02-22 03:25:10.144	2025-03-12 06:40:15.427	1
1231	578	129	\N	\N	\N	\N	2025-02-22 03:25:10.144	2025-03-12 06:40:15.427	1
1244	580	130	\N	\N	\N	\N	2025-02-22 03:37:49.29	2025-03-12 06:40:15.427	1
1258	581	7	\N	\N	\N	\N	2025-02-22 03:51:38.08	2025-03-12 06:40:15.427	1
1254	581	40	\N	\N	\N	\N	2025-02-22 03:51:38.08	2025-03-12 06:40:15.427	1
1249	581	21	\N	\N	\N	\N	2025-02-22 03:51:38.08	2025-03-12 06:40:15.427	1
1247	580	1	\N	\N	\N	\N	2025-02-22 03:37:49.29	2025-03-12 06:40:15.427	1
1246	580	2	\N	\N	\N	\N	2025-02-22 03:37:49.29	2025-03-12 06:40:15.427	1
1245	580	136	\N	\N	\N	\N	2025-02-22 03:37:49.29	2025-03-12 06:40:15.427	1
1251	581	20	\N	\N	\N	\N	2025-02-22 03:51:38.08	2025-03-12 06:40:15.427	1
1250	581	22	\N	\N	\N	\N	2025-02-22 03:51:38.08	2025-03-12 06:40:15.427	1
1248	580	6	\N	\N	\N	\N	2025-02-22 03:37:49.29	2025-03-12 06:40:15.427	1
1255	581	19	\N	\N	\N	\N	2025-02-22 03:51:38.08	2025-03-12 06:40:15.427	1
1253	581	25	\N	\N	\N	\N	2025-02-22 03:51:38.08	2025-03-12 06:40:15.427	1
1270	582	122	\N	\N	\N	\N	2025-02-22 03:52:34.709	2025-03-12 06:40:15.427	1
1268	582	40	\N	\N	\N	\N	2025-02-22 03:52:34.709	2025-03-12 06:40:15.427	1
1266	582	7	\N	\N	\N	\N	2025-02-22 03:52:34.709	2025-03-12 06:40:15.427	1
1264	582	20	\N	\N	\N	\N	2025-02-22 03:52:34.709	2025-03-12 06:40:15.427	1
1259	581	23	\N	\N	\N	\N	2025-02-22 03:51:38.08	2025-03-12 06:40:15.427	1
1263	582	38	\N	\N	\N	\N	2025-02-22 03:52:34.709	2025-03-12 06:40:15.427	1
1265	582	21	\N	\N	\N	\N	2025-02-22 03:52:34.709	2025-03-12 06:40:15.427	1
1267	582	41	\N	\N	\N	\N	2025-02-22 03:52:34.709	2025-03-12 06:40:15.427	1
1269	582	23	\N	\N	\N	\N	2025-02-22 03:52:34.709	2025-03-12 06:40:15.427	1
1271	583	66	\N	\N	\N	\N	2025-02-22 04:18:05.316	2025-03-12 06:40:15.427	1
1279	583	144	\N	\N	\N	\N	2025-02-22 04:18:05.316	2025-03-12 06:40:15.427	1
1312	587	42	\N	\N	\N	\N	2025-02-22 04:28:35.474	2025-03-12 06:40:15.427	1
1307	587	40	\N	\N	\N	\N	2025-02-22 04:28:35.474	2025-03-12 06:40:15.427	1
1303	586	21	\N	\N	\N	\N	2025-02-22 04:28:35.474	2025-03-12 06:40:15.427	1
1299	586	23	\N	\N	\N	\N	2025-02-22 04:28:35.474	2025-03-12 06:40:15.427	1
1296	585	85	\N	\N	\N	\N	2025-02-22 04:28:35.474	2025-03-12 06:40:15.427	1
1235	579	23	\N	\N	\N	\N	2025-02-22 03:34:55.33	2025-05-28 04:28:22.684	1
1256	581	187	\N	\N	\N	\N	2025-02-22 03:51:38.08	2025-05-28 07:03:25.6	1
1262	581	184	\N	\N	\N	\N	2025-02-22 03:51:38.08	2025-05-28 07:04:45.516	1
1289	583	154	\N	\N	\N	\N	2025-02-22 04:18:05.316	2025-03-12 06:40:15.427	1
1287	583	152	\N	\N	\N	\N	2025-02-22 04:18:05.316	2025-03-12 06:40:15.427	1
1298	586	41	\N	\N	\N	\N	2025-02-22 04:28:35.474	2025-03-12 06:40:15.427	1
1297	585	23	\N	\N	\N	\N	2025-02-22 04:28:35.474	2025-03-12 06:40:15.427	1
1295	585	40	\N	\N	\N	\N	2025-02-22 04:28:35.474	2025-03-12 06:40:15.427	1
1294	585	7	\N	\N	\N	\N	2025-02-22 04:28:35.474	2025-03-12 06:40:15.427	1
1290	583	155	\N	\N	\N	\N	2025-02-22 04:18:05.316	2025-03-12 06:40:15.427	1
1301	586	19	\N	\N	\N	\N	2025-02-22 04:28:35.474	2025-03-12 06:40:15.427	1
1300	586	7	\N	\N	\N	\N	2025-02-22 04:28:35.474	2025-03-12 06:40:15.427	1
1302	586	22	\N	\N	\N	\N	2025-02-22 04:28:35.474	2025-03-12 06:40:15.427	1
1305	586	40	\N	\N	\N	\N	2025-02-22 04:28:35.474	2025-03-12 06:40:15.427	1
1306	586	39	\N	\N	\N	\N	2025-02-22 04:28:35.474	2025-03-12 06:40:15.427	1
1304	586	20	\N	\N	\N	\N	2025-02-22 04:28:35.474	2025-03-12 06:40:15.427	1
1311	587	170	\N	\N	\N	\N	2025-02-22 04:28:35.474	2025-03-12 06:40:15.427	1
1310	587	24	\N	\N	\N	\N	2025-02-22 04:28:35.474	2025-03-12 06:40:15.427	1
1309	587	19	\N	\N	\N	\N	2025-02-22 04:28:35.474	2025-03-12 06:40:15.427	1
1308	587	41	\N	\N	\N	\N	2025-02-22 04:28:35.474	2025-03-12 06:40:15.427	1
1313	587	22	\N	\N	\N	\N	2025-02-22 04:28:35.474	2025-03-12 06:40:15.427	1
1315	587	7	\N	\N	\N	\N	2025-02-22 04:28:35.474	2025-03-12 06:40:15.427	1
1314	587	23	\N	\N	\N	\N	2025-02-22 04:28:35.474	2025-03-12 06:40:15.427	1
1317	588	34	\N	\N	\N	\N	2025-02-26 04:27:30.405	2025-03-12 06:40:15.427	1
1316	252	7	\N	\N	\N	\N	2025-02-23 13:25:52.819	2025-03-12 06:40:15.427	1
1320	22	19	\N	\N	\N	\N	2025-02-28 09:21:11.472	2025-03-12 06:40:15.427	1
1318	202	41	\N	\N	\N	\N	2025-02-28 08:50:14.186	2025-03-12 06:40:15.427	1
1319	202	19	\N	\N	\N	\N	2025-02-28 08:50:14.186	2025-03-12 06:40:15.427	1
1322	20	19	\N	\N	\N	\N	2025-02-28 09:21:11.472	2025-03-12 06:40:15.427	1
1321	22	20	\N	\N	\N	\N	2025-02-28 09:21:11.472	2025-03-12 06:40:15.427	1
1323	20	20	\N	\N	\N	\N	2025-02-28 09:21:11.472	2025-03-12 06:40:15.427	1
1325	104	20	\N	\N	\N	\N	2025-03-01 01:43:42.483	2025-03-12 06:40:15.427	1
1324	104	19	\N	\N	\N	\N	2025-03-01 01:43:42.483	2025-03-12 06:40:15.427	1
1326	107	19	\N	\N	\N	\N	2025-03-01 01:43:42.483	2025-03-12 06:40:15.427	1
1340	592	20	\N	\N	\N	\N	2025-03-07 08:38:58.695	2025-03-12 06:40:15.427	1
1338	27	13	\N	\N	\N	\N	2025-03-01 03:36:39.517	2025-03-12 06:40:15.427	1
1334	315	25	\N	\N	\N	\N	2025-03-01 02:23:14.869	2025-03-12 06:40:15.427	1
1331	315	21	\N	\N	\N	\N	2025-03-01 02:23:14.869	2025-03-12 06:40:15.427	1
1329	315	42	\N	\N	\N	\N	2025-03-01 02:23:14.869	2025-03-12 06:40:15.427	1
1328	315	40	\N	\N	\N	\N	2025-03-01 02:23:14.869	2025-03-12 06:40:15.427	1
1327	107	20	\N	\N	\N	\N	2025-03-01 01:43:42.483	2025-03-12 06:40:15.427	1
1330	315	41	\N	\N	\N	\N	2025-03-01 02:23:14.869	2025-03-12 06:40:15.427	1
1332	315	20	\N	\N	\N	\N	2025-03-01 02:23:14.869	2025-03-12 06:40:15.427	1
1333	315	24	\N	\N	\N	\N	2025-03-01 02:23:14.869	2025-03-12 06:40:15.427	1
1336	315	22	\N	\N	\N	\N	2025-03-01 02:23:14.869	2025-03-12 06:40:15.427	1
1335	315	4	\N	\N	\N	\N	2025-03-01 02:23:14.869	2025-03-12 06:40:15.427	1
1337	315	19	\N	\N	\N	\N	2025-03-01 02:23:14.869	2025-03-12 06:40:15.427	1
1339	586	161	\N	\N	\N	\N	2025-03-04 04:54:21.089	2025-03-12 06:40:15.427	1
1343	592	87	\N	\N	\N	\N	2025-03-07 08:38:58.695	2025-03-12 06:40:15.427	1
1342	592	86	\N	\N	\N	\N	2025-03-07 08:38:58.695	2025-03-12 06:40:15.427	1
1341	592	85	\N	\N	\N	\N	2025-03-07 08:38:58.695	2025-03-12 06:40:15.427	1
1365	597	23	\N	\N	\N	\N	2025-03-10 01:58:34.835	2025-03-12 06:40:15.427	1
1359	74	23	\N	\N	\N	\N	2025-03-09 19:41:31.356	2025-03-12 06:40:15.427	1
1353	590	24	\N	\N	\N	\N	2025-03-07 08:40:56.831	2025-03-12 06:40:15.427	1
1350	590	85	\N	\N	\N	\N	2025-03-07 08:40:56.831	2025-03-12 06:40:15.427	1
1347	591	87	\N	\N	\N	\N	2025-03-07 08:39:52.637	2025-03-12 06:40:15.427	1
1345	591	85	\N	\N	\N	\N	2025-03-07 08:39:52.637	2025-03-12 06:40:15.427	1
1344	591	20	\N	\N	\N	\N	2025-03-07 08:39:52.637	2025-03-12 06:40:15.427	1
1346	591	86	\N	\N	\N	\N	2025-03-07 08:39:52.637	2025-03-12 06:40:15.427	1
1348	591	24	\N	\N	\N	\N	2025-03-07 08:39:52.637	2025-03-12 06:40:15.427	1
1349	590	20	\N	\N	\N	\N	2025-03-07 08:40:56.831	2025-03-12 06:40:15.427	1
1351	590	86	\N	\N	\N	\N	2025-03-07 08:40:56.831	2025-03-12 06:40:15.427	1
1352	590	87	\N	\N	\N	\N	2025-03-07 08:40:56.831	2025-03-12 06:40:15.427	1
1356	589	86	\N	\N	\N	\N	2025-03-07 08:41:47.391	2025-03-12 06:40:15.427	1
1355	589	85	\N	\N	\N	\N	2025-03-07 08:41:47.391	2025-03-12 06:40:15.427	1
1354	589	20	\N	\N	\N	\N	2025-03-07 08:41:47.391	2025-03-12 06:40:15.427	1
1358	76	23	\N	\N	\N	\N	2025-03-09 19:41:05.506	2025-03-12 06:40:15.427	1
1357	589	87	\N	\N	\N	\N	2025-03-07 08:41:47.391	2025-03-12 06:40:15.427	1
1364	597	40	\N	\N	\N	\N	2025-03-10 01:58:34.835	2025-03-12 06:40:15.427	1
1362	595	23	\N	\N	\N	\N	2025-03-10 01:55:11.808	2025-03-12 06:40:15.427	1
1361	594	20	\N	\N	\N	\N	2025-03-10 01:55:11.808	2025-03-12 06:40:15.427	1
1360	593	7	\N	\N	\N	\N	2025-03-10 01:55:11.808	2025-03-12 06:40:15.427	1
1363	596	19	\N	\N	\N	\N	2025-03-10 01:55:11.808	2025-03-12 06:40:15.427	1
1371	601	167	\N	\N	\N	\N	2025-03-10 02:13:28.454	2025-03-12 06:40:15.427	1
1367	597	41	\N	\N	\N	\N	2025-03-10 01:58:34.835	2025-03-12 06:40:15.427	1
1366	597	21	\N	\N	\N	\N	2025-03-10 01:58:34.835	2025-03-12 06:40:15.427	1
1372	602	168	\N	\N	\N	\N	2025-03-10 02:13:28.454	2025-03-12 06:40:15.427	1
1370	600	166	\N	\N	\N	\N	2025-03-10 02:13:28.454	2025-03-12 06:40:15.427	1
1368	598	164	\N	\N	\N	\N	2025-03-10 02:13:28.454	2025-03-12 06:40:15.427	1
1369	599	165	\N	\N	\N	\N	2025-03-10 02:13:28.454	2025-03-12 06:40:15.427	1
1375	535	3	\N	\N	\N	\N	2025-03-10 06:33:44.535	2025-03-12 06:40:15.427	1
1373	530	169	\N	\N	\N	\N	2025-03-10 04:58:37.949	2025-03-12 06:40:15.427	1
1376	546	134	\N	\N	\N	\N	2025-03-10 07:26:54.112	2025-03-12 06:40:15.427	1
1374	535	2	\N	\N	\N	\N	2025-03-10 06:33:44.535	2025-03-12 06:40:15.427	1
990	518	121	\N	\N	\N	\N	2025-02-21 04:14:15.94	2025-03-12 06:40:15.427	1
987	517	121	\N	\N	\N	\N	2025-02-21 04:14:15.94	2025-03-12 06:40:15.427	1
983	515	120	\N	\N	\N	\N	2025-02-21 04:14:15.94	2025-03-12 06:40:15.427	1
980	514	120	\N	\N	\N	\N	2025-02-21 04:14:15.94	2025-03-12 06:40:15.427	1
978	513	122	\N	\N	\N	\N	2025-02-21 04:14:15.94	2025-03-12 06:40:15.427	1
977	513	121	\N	\N	\N	\N	2025-02-21 04:14:15.94	2025-03-12 06:40:15.427	1
976	513	120	\N	\N	\N	\N	2025-02-21 04:14:15.94	2025-03-12 06:40:15.427	1
979	513	125	\N	\N	\N	\N	2025-02-21 04:14:15.94	2025-03-12 06:40:15.427	1
982	514	122	\N	\N	\N	\N	2025-02-21 04:14:15.94	2025-03-12 06:40:15.427	1
981	514	121	\N	\N	\N	\N	2025-02-21 04:14:15.94	2025-03-12 06:40:15.427	1
985	516	121	\N	\N	\N	\N	2025-02-21 04:14:15.94	2025-03-12 06:40:15.427	1
984	515	121	\N	\N	\N	\N	2025-02-21 04:14:15.94	2025-03-12 06:40:15.427	1
986	517	120	\N	\N	\N	\N	2025-02-21 04:14:15.94	2025-03-12 06:40:15.427	1
989	518	120	\N	\N	\N	\N	2025-02-21 04:14:15.94	2025-03-12 06:40:15.427	1
988	517	122	\N	\N	\N	\N	2025-02-21 04:14:15.94	2025-03-12 06:40:15.427	1
991	518	122	\N	\N	\N	\N	2025-02-21 04:14:15.94	2025-03-12 06:40:15.427	1
992	519	120	\N	\N	\N	\N	2025-02-21 04:14:15.94	2025-03-12 06:40:15.427	1
1240	579	24	\N	\N	\N	\N	2025-02-22 03:34:55.33	2025-05-28 04:28:22.684	1
1243	580	3	\N	\N	\N	\N	2025-02-22 03:34:55.33	2025-03-12 06:40:15.427	1
1242	580	120	\N	\N	\N	\N	2025-02-22 03:34:55.33	2025-03-12 06:40:15.427	1
1241	580	121	\N	\N	\N	\N	2025-02-22 03:34:55.33	2025-03-12 06:40:15.427	1
1005	522	125	\N	\N	\N	\N	2025-02-21 04:39:24.892	2025-03-12 06:40:15.427	1
1002	521	125	\N	\N	\N	\N	2025-02-21 04:14:15.94	2025-03-12 06:40:15.427	1
998	520	125	\N	\N	\N	\N	2025-02-21 04:14:15.94	2025-03-12 06:40:15.427	1
995	520	120	\N	\N	\N	\N	2025-02-21 04:14:15.94	2025-03-12 06:40:15.427	1
1142	553	121	\N	\N	\N	\N	2025-02-22 02:36:51.854	2025-03-12 06:40:15.427	1
654	385	125	\N	\N	\N	\N	2025-02-21 01:27:53.97	2025-03-12 06:35:58.88	1
788	430	6	\N	\N	\N	\N	2025-02-21 02:09:07.648	2025-03-12 06:35:58.88	1
1213	576	171	\N	\N	\N	\N	2025-02-22 03:25:10.144	2025-03-12 06:40:15.427	1
524	329	162	\N	\N	\N	\N	2025-02-19 01:18:18.468	2025-03-12 06:30:56.627	1
523	328	23	\N	\N	\N	\N	2025-02-19 01:18:18.468	2025-03-12 06:30:56.627	1
1229	578	175	\N	\N	\N	\N	2025-02-22 03:25:10.144	2025-03-12 06:40:15.427	1
34	32	16	\N	\N	\N	\N	2025-02-17 03:03:38.413	2025-03-19 08:35:29.54	1
1020	526	136	\N	\N	\N	\N	2025-02-21 04:39:24.892	2025-03-12 06:40:15.427	1
1040	530	2	\N	\N	\N	\N	2025-02-22 01:26:26.227	2025-03-12 06:40:15.427	1
944	503	122	\N	\N	\N	\N	2025-02-21 03:49:07.801	2025-03-12 06:35:58.88	1
42	38	23	\N	\N	\N	\N	2025-02-17 03:07:12.52	2025-03-12 06:26:56.269	1
41	37	22	\N	\N	\N	\N	2025-02-17 03:07:12.52	2025-03-12 06:26:56.269	1
40	36	21	\N	\N	\N	\N	2025-02-17 03:07:12.52	2025-03-12 06:26:56.269	1
39	35	20	\N	\N	\N	\N	2025-02-17 03:03:38.413	2025-03-12 06:26:56.269	1
36	32	18	\N	\N	\N	\N	2025-02-17 03:03:38.413	2025-03-12 06:26:56.269	1
35	32	17	\N	\N	\N	\N	2025-02-17 03:03:38.413	2025-03-12 06:26:56.269	1
33	31	159	\N	\N	\N	\N	2025-02-17 02:55:20.802	2025-03-12 06:26:56.269	1
29	29	15	\N	\N	\N	\N	2025-02-17 02:49:43.736	2025-03-12 06:26:56.269	1
24	24	10	\N	\N	\N	\N	2025-02-17 02:47:08.707	2025-03-12 06:26:56.269	1
15	15	2	\N	\N	\N	\N	2025-02-16 20:01:19.657	2025-03-12 06:26:56.269	1
12	10	7	\N	\N	\N	\N	2025-02-13 07:46:36.522	2025-03-12 06:26:56.269	1
8	7	8	\N	\N	\N	\N	2025-02-13 07:06:39.382	2025-03-12 06:26:56.269	1
6	5	4	\N	\N	\N	\N	2025-02-13 07:03:13.34	2025-03-12 06:26:56.269	1
3	3	8	\N	\N	\N	\N	2025-02-13 07:00:54.759	2025-03-12 06:26:56.269	1
2	2	2	\N	\N	\N	\N	2025-02-13 06:59:21.468	2025-03-12 06:26:56.269	1
1	1	1	\N	\N	\N	\N	2025-02-13 06:57:52.554	2025-03-12 06:26:56.269	1
5	4	4	\N	\N	\N	\N	2025-02-13 07:02:46.16	2025-03-12 06:26:56.269	1
7	6	5	\N	\N	\N	\N	2025-02-13 07:05:17.574	2025-03-12 06:26:56.269	1
11	9	7	\N	\N	\N	\N	2025-02-13 07:46:36.522	2025-03-12 06:26:56.269	1
10	8	7	\N	\N	\N	\N	2025-02-13 07:46:36.522	2025-03-12 06:26:56.269	1
13	13	3	\N	\N	\N	\N	2025-02-16 19:52:28.431	2025-03-12 06:26:56.269	1
14	14	8	\N	\N	\N	\N	2025-02-16 20:01:19.657	2025-03-12 06:26:56.269	1
19	19	9	\N	\N	\N	\N	2025-02-17 02:34:55.303	2025-03-12 06:26:56.269	1
18	18	8	\N	\N	\N	\N	2025-02-17 02:34:55.303	2025-03-12 06:26:56.269	1
17	17	8	\N	\N	\N	\N	2025-02-16 20:01:19.657	2025-03-12 06:26:56.269	1
16	16	8	\N	\N	\N	\N	2025-02-16 20:01:19.657	2025-03-12 06:26:56.269	1
26	26	12	\N	\N	\N	\N	2025-02-17 02:47:08.707	2025-03-12 06:26:56.269	1
25	25	11	\N	\N	\N	\N	2025-02-17 02:47:08.707	2025-03-12 06:26:56.269	1
28	28	14	\N	\N	\N	\N	2025-02-17 02:47:08.707	2025-03-12 06:26:56.269	1
32	31	160	\N	\N	\N	\N	2025-02-17 02:55:20.802	2025-03-12 06:26:56.269	1
31	31	158	\N	\N	\N	\N	2025-02-17 02:55:20.802	2025-03-12 06:26:56.269	1
30	30	8	\N	\N	\N	\N	2025-02-17 02:49:43.736	2025-03-12 06:26:56.269	1
37	33	19	\N	\N	\N	\N	2025-02-17 03:03:38.413	2025-03-12 06:26:56.269	1
38	34	20	\N	\N	\N	\N	2025-02-17 03:03:38.413	2025-03-12 06:26:56.269	1
75	70	29	\N	\N	\N	\N	2025-02-17 09:32:07.652	2025-03-12 06:26:56.269	1
73	68	29	\N	\N	\N	\N	2025-02-17 09:32:07.652	2025-03-12 06:26:56.269	1
72	67	20	\N	\N	\N	\N	2025-02-17 09:29:30.193	2025-03-12 06:26:56.269	1
71	66	20	\N	\N	\N	\N	2025-02-17 09:29:30.193	2025-03-12 06:26:56.269	1
70	65	20	\N	\N	\N	\N	2025-02-17 09:29:30.193	2025-03-12 06:26:56.269	1
68	63	28	\N	\N	\N	\N	2025-02-17 09:26:43.029	2025-03-12 06:26:56.269	1
67	62	28	\N	\N	\N	\N	2025-02-17 09:26:43.029	2025-03-12 06:26:56.269	1
65	60	8	\N	\N	\N	\N	2025-02-17 09:24:16.062	2025-03-12 06:26:56.269	1
64	59	8	\N	\N	\N	\N	2025-02-17 09:24:16.062	2025-03-12 06:26:56.269	1
63	58	19	\N	\N	\N	\N	2025-02-17 09:24:16.062	2025-03-12 06:26:56.269	1
60	55	27	\N	\N	\N	\N	2025-02-17 03:31:11.592	2025-03-12 06:26:56.269	1
59	54	26	\N	\N	\N	\N	2025-02-17 03:31:11.592	2025-03-12 06:26:56.269	1
55	50	20	\N	\N	\N	\N	2025-02-17 03:26:28.894	2025-03-12 06:26:56.269	1
52	47	23	\N	\N	\N	\N	2025-02-17 03:20:57.861	2025-03-12 06:26:56.269	1
51	46	20	\N	\N	\N	\N	2025-02-17 03:18:48.155	2025-03-12 06:26:56.269	1
45	41	7	\N	\N	\N	\N	2025-02-17 03:16:18.75	2025-03-12 06:26:56.269	1
44	40	20	\N	\N	\N	\N	2025-02-17 03:13:58.384	2025-03-12 06:26:56.269	1
43	39	9	\N	\N	\N	\N	2025-02-17 03:13:58.384	2025-03-12 06:26:56.269	1
47	43	22	\N	\N	\N	\N	2025-02-17 03:16:18.75	2025-03-12 06:26:56.269	1
50	46	24	\N	\N	\N	\N	2025-02-17 03:18:48.155	2025-03-12 06:26:56.269	1
48	44	20	\N	\N	\N	\N	2025-02-17 03:16:18.75	2025-03-12 06:26:56.269	1
49	45	8	\N	\N	\N	\N	2025-02-17 03:18:48.155	2025-03-12 06:26:56.269	1
46	42	23	\N	\N	\N	\N	2025-02-17 03:16:18.75	2025-03-12 06:26:56.269	1
53	48	8	\N	\N	\N	\N	2025-02-17 03:20:57.861	2025-03-12 06:26:56.269	1
54	49	24	\N	\N	\N	\N	2025-02-17 03:20:57.861	2025-03-12 06:26:56.269	1
57	52	19	\N	\N	\N	\N	2025-02-17 03:26:28.894	2025-03-12 06:26:56.269	1
56	51	25	\N	\N	\N	\N	2025-02-17 03:26:28.894	2025-03-12 06:26:56.269	1
58	53	163	\N	\N	\N	\N	2025-02-17 03:26:28.894	2025-03-12 06:26:56.269	1
62	57	20	\N	\N	\N	\N	2025-02-17 09:24:16.062	2025-03-12 06:26:56.269	1
61	56	20	\N	\N	\N	\N	2025-02-17 03:32:14.106	2025-03-12 06:26:56.269	1
66	61	28	\N	\N	\N	\N	2025-02-17 09:26:43.029	2025-03-12 06:26:56.269	1
69	64	20	\N	\N	\N	\N	2025-02-17 09:29:30.193	2025-03-12 06:26:56.269	1
80	71	23	\N	\N	\N	\N	2025-02-17 09:38:09.348	2025-03-12 06:26:56.269	1
102	82	20	\N	\N	\N	\N	2025-02-17 09:47:46.253	2025-03-12 06:26:56.269	1
100	80	31	\N	\N	\N	\N	2025-02-17 09:45:37.205	2025-03-12 06:26:56.269	1
99	79	23	\N	\N	\N	\N	2025-02-17 09:44:19.98	2025-03-12 06:26:56.269	1
96	76	19	\N	\N	\N	\N	2025-02-17 09:44:19.98	2025-03-12 06:26:56.269	1
92	73	23	\N	\N	\N	\N	2025-02-17 09:38:09.348	2025-03-12 06:26:56.269	1
91	73	24	\N	\N	\N	\N	2025-02-17 09:38:09.348	2025-03-12 06:26:56.269	1
89	73	30	\N	\N	\N	\N	2025-02-17 09:38:09.348	2025-03-12 06:26:56.269	1
87	72	25	\N	\N	\N	\N	2025-02-17 09:38:09.348	2025-03-12 06:26:56.269	1
84	72	21	\N	\N	\N	\N	2025-02-17 09:38:09.348	2025-03-12 06:26:56.269	1
82	72	20	\N	\N	\N	\N	2025-02-17 09:38:09.348	2025-03-12 06:26:56.269	1
81	71	25	\N	\N	\N	\N	2025-02-17 09:38:09.348	2025-03-12 06:26:56.269	1
79	71	24	\N	\N	\N	\N	2025-02-17 09:38:09.348	2025-03-12 06:26:56.269	1
78	71	21	\N	\N	\N	\N	2025-02-17 09:38:09.348	2025-03-12 06:26:56.269	1
77	71	30	\N	\N	\N	\N	2025-02-17 09:38:09.348	2025-03-12 06:26:56.269	1
76	71	20	\N	\N	\N	\N	2025-02-17 09:38:09.348	2025-03-12 06:26:56.269	1
85	72	24	\N	\N	\N	\N	2025-02-17 09:38:09.348	2025-03-12 06:26:56.269	1
83	72	30	\N	\N	\N	\N	2025-02-17 09:38:09.348	2025-03-12 06:26:56.269	1
1236	579	30	\N	\N	\N	\N	2025-02-22 03:34:55.33	2025-05-28 04:28:22.684	1
86	72	23	\N	\N	\N	\N	2025-02-17 09:38:09.348	2025-03-12 06:26:56.269	1
90	73	21	\N	\N	\N	\N	2025-02-17 09:38:09.348	2025-03-12 06:26:56.269	1
88	73	20	\N	\N	\N	\N	2025-02-17 09:38:09.348	2025-03-12 06:26:56.269	1
94	74	19	\N	\N	\N	\N	2025-02-17 09:44:19.98	2025-03-12 06:26:56.269	1
93	73	25	\N	\N	\N	\N	2025-02-17 09:38:09.348	2025-03-12 06:26:56.269	1
98	78	23	\N	\N	\N	\N	2025-02-17 09:44:19.98	2025-03-12 06:26:56.269	1
101	81	31	\N	\N	\N	\N	2025-02-17 09:45:37.205	2025-03-12 06:26:56.269	1
140	117	19	\N	\N	\N	\N	2025-02-18 02:04:00.393	2025-03-12 06:26:56.269	1
139	117	24	\N	\N	\N	\N	2025-02-18 02:04:00.393	2025-03-12 06:26:56.269	1
138	116	20	\N	\N	\N	\N	2025-02-18 01:59:21.223	2025-03-12 06:26:56.269	1
137	115	20	\N	\N	\N	\N	2025-02-18 01:59:21.223	2025-03-12 06:26:56.269	1
136	114	20	\N	\N	\N	\N	2025-02-18 01:59:21.223	2025-03-12 06:26:56.269	1
135	113	20	\N	\N	\N	\N	2025-02-18 01:59:21.223	2025-03-12 06:26:56.269	1
133	112	20	\N	\N	\N	\N	2025-02-18 01:59:21.223	2025-03-12 06:26:56.269	1
134	112	23	\N	\N	\N	\N	2025-02-18 01:59:21.223	2025-03-12 06:26:56.269	1
129	108	8	\N	\N	\N	\N	2025-02-18 01:56:43.559	2025-03-12 06:26:56.269	1
124	103	23	\N	\N	\N	\N	2025-02-18 01:37:18.664	2025-03-12 06:26:56.269	1
122	101	23	\N	\N	\N	\N	2025-02-18 01:37:18.664	2025-03-12 06:26:56.269	1
120	99	20	\N	\N	\N	\N	2025-02-18 01:37:18.664	2025-03-12 06:26:56.269	1
117	97	19	\N	\N	\N	\N	2025-02-18 01:30:50.426	2025-03-12 06:26:56.269	1
115	95	33	\N	\N	\N	\N	2025-02-18 01:29:33.358	2025-03-12 06:26:56.269	1
111	91	34	\N	\N	\N	\N	2025-02-18 01:23:26.669	2025-03-12 06:26:56.269	1
109	89	32	\N	\N	\N	\N	2025-02-18 01:23:26.669	2025-03-12 06:26:56.269	1
108	88	32	\N	\N	\N	\N	2025-02-18 01:23:26.669	2025-03-12 06:26:56.269	1
106	86	32	\N	\N	\N	\N	2025-02-18 01:23:26.669	2025-03-12 06:26:56.269	1
105	85	32	\N	\N	\N	\N	2025-02-17 09:49:01.935	2025-03-12 06:26:56.269	1
104	84	32	\N	\N	\N	\N	2025-02-17 09:49:01.935	2025-03-12 06:26:56.269	1
107	87	32	\N	\N	\N	\N	2025-02-18 01:23:26.669	2025-03-12 06:26:56.269	1
110	90	34	\N	\N	\N	\N	2025-02-18 01:23:26.669	2025-03-12 06:26:56.269	1
113	93	33	\N	\N	\N	\N	2025-02-18 01:29:33.358	2025-03-12 06:26:56.269	1
112	92	34	\N	\N	\N	\N	2025-02-18 01:23:26.669	2025-03-12 06:26:56.269	1
114	94	33	\N	\N	\N	\N	2025-02-18 01:29:33.358	2025-03-12 06:26:56.269	1
116	96	33	\N	\N	\N	\N	2025-02-18 01:29:33.358	2025-03-12 06:26:56.269	1
118	97	23	\N	\N	\N	\N	2025-02-18 01:30:50.426	2025-03-12 06:26:56.269	1
119	98	20	\N	\N	\N	\N	2025-02-18 01:37:18.664	2025-03-12 06:26:56.269	1
121	100	20	\N	\N	\N	\N	2025-02-18 01:37:18.664	2025-03-12 06:26:56.269	1
123	102	23	\N	\N	\N	\N	2025-02-18 01:37:18.664	2025-03-12 06:26:56.269	1
189	156	23	\N	\N	\N	\N	2025-02-18 02:34:48.145	2025-03-12 06:26:56.269	1
174	145	22	\N	\N	\N	\N	2025-02-18 02:27:18.934	2025-03-12 06:26:56.269	1
170	142	20	\N	\N	\N	\N	2025-02-18 02:19:04.867	2025-03-12 06:26:56.269	1
167	139	7	\N	\N	\N	\N	2025-02-18 02:19:04.867	2025-03-12 06:26:56.269	1
166	138	20	\N	\N	\N	\N	2025-02-18 02:17:03.844	2025-03-12 06:26:56.269	1
165	138	19	\N	\N	\N	\N	2025-02-18 02:17:03.844	2025-03-12 06:26:56.269	1
163	137	20	\N	\N	\N	\N	2025-02-18 02:17:03.844	2025-03-12 06:26:56.269	1
162	136	20	\N	\N	\N	\N	2025-02-18 02:17:03.844	2025-03-12 06:26:56.269	1
164	138	24	\N	\N	\N	\N	2025-02-18 02:17:03.844	2025-03-12 06:26:56.269	1
169	141	20	\N	\N	\N	\N	2025-02-18 02:19:04.867	2025-03-12 06:26:56.269	1
168	140	20	\N	\N	\N	\N	2025-02-18 02:19:04.867	2025-03-12 06:26:56.269	1
172	144	25	\N	\N	\N	\N	2025-02-18 02:24:45.83	2025-03-12 06:26:56.269	1
171	143	7	\N	\N	\N	\N	2025-02-18 02:24:45.83	2025-03-12 06:26:56.269	1
173	144	24	\N	\N	\N	\N	2025-02-18 02:24:45.83	2025-03-12 06:26:56.269	1
176	145	37	\N	\N	\N	\N	2025-02-18 02:27:18.934	2025-03-12 06:26:56.269	1
175	145	29	\N	\N	\N	\N	2025-02-18 02:27:18.934	2025-03-12 06:26:56.269	1
177	146	24	\N	\N	\N	\N	2025-02-18 02:27:18.934	2025-03-12 06:26:56.269	1
178	147	8	\N	\N	\N	\N	2025-02-18 02:30:27.919	2025-03-12 06:26:56.269	1
182	151	8	\N	\N	\N	\N	2025-02-18 02:30:27.919	2025-03-12 06:26:56.269	1
161	135	35	\N	\N	\N	\N	2025-02-18 02:14:33.062	2025-03-12 06:26:56.269	1
160	134	35	\N	\N	\N	\N	2025-02-18 02:14:33.062	2025-03-12 06:26:56.269	1
158	132	7	\N	\N	\N	\N	2025-02-18 02:14:33.062	2025-03-12 06:26:56.269	1
156	130	7	\N	\N	\N	\N	2025-02-18 02:11:47.057	2025-03-12 06:26:56.269	1
159	133	7	\N	\N	\N	\N	2025-02-18 02:14:33.062	2025-03-12 06:26:56.269	1
157	131	7	\N	\N	\N	\N	2025-02-18 02:14:33.062	2025-03-12 06:26:56.269	1
155	129	7	\N	\N	\N	\N	2025-02-18 02:11:47.057	2025-03-12 06:26:56.269	1
153	127	35	\N	\N	\N	\N	2025-02-18 02:11:47.057	2025-03-12 06:26:56.269	1
151	126	24	\N	\N	\N	\N	2025-02-18 02:11:47.057	2025-03-12 06:26:56.269	1
149	124	19	\N	\N	\N	\N	2025-02-18 02:11:47.057	2025-03-12 06:26:56.269	1
146	121	7	\N	\N	\N	\N	2025-02-18 02:04:00.393	2025-03-12 06:26:56.269	1
144	119	19	\N	\N	\N	\N	2025-02-18 02:04:00.393	2025-03-12 06:26:56.269	1
143	118	20	\N	\N	\N	\N	2025-02-18 02:04:00.393	2025-03-12 06:26:56.269	1
142	118	24	\N	\N	\N	\N	2025-02-18 02:04:00.393	2025-03-12 06:26:56.269	1
141	117	20	\N	\N	\N	\N	2025-02-18 02:04:00.393	2025-03-12 06:26:56.269	1
145	120	19	\N	\N	\N	\N	2025-02-18 02:04:00.393	2025-03-12 06:26:56.269	1
147	122	7	\N	\N	\N	\N	2025-02-18 02:04:00.393	2025-03-12 06:26:56.269	1
148	123	19	\N	\N	\N	\N	2025-02-18 02:11:47.057	2025-03-12 06:26:56.269	1
150	125	24	\N	\N	\N	\N	2025-02-18 02:11:47.057	2025-03-12 06:26:56.269	1
152	126	20	\N	\N	\N	\N	2025-02-18 02:11:47.057	2025-03-12 06:26:56.269	1
154	128	7	\N	\N	\N	\N	2025-02-18 02:11:47.057	2025-03-12 06:26:56.269	1
188	156	20	\N	\N	\N	\N	2025-02-18 02:34:48.145	2025-03-12 06:26:56.269	1
187	156	22	\N	\N	\N	\N	2025-02-18 02:34:48.145	2025-03-12 06:26:56.269	1
186	155	8	\N	\N	\N	\N	2025-02-18 02:34:48.145	2025-03-12 06:26:56.269	1
209	169	8	\N	\N	\N	\N	2025-02-18 02:45:11.907	2025-03-12 06:26:56.269	1
206	166	29	\N	\N	\N	\N	2025-02-18 02:41:14.708	2025-03-12 06:26:56.269	1
203	163	19	\N	\N	\N	\N	2025-02-18 02:41:14.708	2025-03-12 06:26:56.269	1
199	162	19	\N	\N	\N	\N	2025-02-18 02:41:14.708	2025-03-12 06:26:56.269	1
195	159	38	\N	\N	\N	\N	2025-02-18 02:36:48.438	2025-03-12 06:26:56.269	1
191	157	21	\N	\N	\N	\N	2025-02-18 02:34:48.145	2025-03-12 06:26:56.269	1
190	157	23	\N	\N	\N	\N	2025-02-18 02:34:48.145	2025-03-12 06:26:56.269	1
192	158	20	\N	\N	\N	\N	2025-02-18 02:34:48.145	2025-03-12 06:26:56.269	1
194	158	22	\N	\N	\N	\N	2025-02-18 02:34:48.145	2025-03-12 06:26:56.269	1
193	158	24	\N	\N	\N	\N	2025-02-18 02:34:48.145	2025-03-12 06:26:56.269	1
197	160	20	\N	\N	\N	\N	2025-02-18 02:36:48.438	2025-03-12 06:26:56.269	1
196	160	39	\N	\N	\N	\N	2025-02-18 02:36:48.438	2025-03-12 06:26:56.269	1
198	161	40	\N	\N	\N	\N	2025-02-18 02:41:14.708	2025-03-12 06:26:56.269	1
202	162	21	\N	\N	\N	\N	2025-02-18 02:41:14.708	2025-03-12 06:26:56.269	1
201	162	22	\N	\N	\N	\N	2025-02-18 02:41:14.708	2025-03-12 06:26:56.269	1
200	162	23	\N	\N	\N	\N	2025-02-18 02:41:14.708	2025-03-12 06:26:56.269	1
205	165	19	\N	\N	\N	\N	2025-02-18 02:41:14.708	2025-03-12 06:26:56.269	1
204	164	19	\N	\N	\N	\N	2025-02-18 02:41:14.708	2025-03-12 06:26:56.269	1
207	167	20	\N	\N	\N	\N	2025-02-18 02:45:11.907	2025-03-12 06:26:56.269	1
208	168	33	\N	\N	\N	\N	2025-02-18 02:45:11.907	2025-03-12 06:26:56.269	1
233	179	20	\N	\N	\N	\N	2025-02-18 03:11:21.331	2025-03-12 06:26:56.269	1
230	179	41	\N	\N	\N	\N	2025-02-18 03:11:21.331	2025-03-12 06:26:56.269	1
226	177	8	\N	\N	\N	\N	2025-02-18 03:03:54.842	2025-03-12 06:26:56.269	1
224	175	41	\N	\N	\N	\N	2025-02-18 03:03:54.842	2025-03-12 06:26:56.269	1
221	175	42	\N	\N	\N	\N	2025-02-18 03:03:54.842	2025-03-12 06:26:56.269	1
219	174	41	\N	\N	\N	\N	2025-02-18 02:59:25.611	2025-03-12 06:26:56.269	1
227	178	8	\N	\N	\N	\N	2025-02-18 03:03:54.842	2025-03-12 06:26:56.269	1
229	179	40	\N	\N	\N	\N	2025-02-18 03:11:21.331	2025-03-12 06:26:56.269	1
228	175	19	\N	\N	\N	\N	2025-02-18 03:03:54.842	2025-03-12 06:26:56.269	1
225	176	8	\N	\N	\N	\N	2025-02-18 03:03:54.842	2025-03-12 06:26:56.269	1
223	175	21	\N	\N	\N	\N	2025-02-18 03:03:54.842	2025-03-12 06:26:56.269	1
222	175	40	\N	\N	\N	\N	2025-02-18 03:03:54.842	2025-03-12 06:26:56.269	1
220	174	42	\N	\N	\N	\N	2025-02-18 02:59:25.611	2025-03-12 06:26:56.269	1
231	179	42	\N	\N	\N	\N	2025-02-18 03:11:21.331	2025-03-12 06:26:56.269	1
232	179	23	\N	\N	\N	\N	2025-02-18 03:11:21.331	2025-03-12 06:26:56.269	1
211	171	8	\N	\N	\N	\N	2025-02-18 02:45:11.907	2025-03-12 06:26:56.269	1
213	173	7	\N	\N	\N	\N	2025-02-18 02:58:17.303	2025-03-12 06:26:56.269	1
216	173	41	\N	\N	\N	\N	2025-02-18 02:58:17.303	2025-03-12 06:26:56.269	1
218	174	21	\N	\N	\N	\N	2025-02-18 02:59:25.611	2025-03-12 06:26:56.269	1
215	173	20	\N	\N	\N	\N	2025-02-18 02:58:17.303	2025-03-12 06:26:56.269	1
214	173	23	\N	\N	\N	\N	2025-02-18 02:58:17.303	2025-03-12 06:26:56.269	1
217	174	40	\N	\N	\N	\N	2025-02-18 02:59:25.611	2025-03-12 06:26:56.269	1
212	172	8	\N	\N	\N	\N	2025-02-18 02:45:11.907	2025-03-12 06:26:56.269	1
210	170	8	\N	\N	\N	\N	2025-02-18 02:45:11.907	2025-03-12 06:26:56.269	1
264	204	40	\N	\N	\N	\N	2025-02-18 04:44:15.527	2025-03-12 06:26:56.269	1
259	199	45	\N	\N	\N	\N	2025-02-18 04:38:35.155	2025-03-12 06:26:56.269	1
254	194	7	\N	\N	\N	\N	2025-02-18 04:20:37.887	2025-03-12 06:26:56.269	1
248	190	8	\N	\N	\N	\N	2025-02-18 03:36:58.011	2025-03-12 06:26:56.269	1
243	185	8	\N	\N	\N	\N	2025-02-18 03:24:01.726	2025-03-12 06:26:56.269	1
240	182	44	\N	\N	\N	\N	2025-02-18 03:21:37.099	2025-03-12 06:26:56.269	1
237	180	40	\N	\N	\N	\N	2025-02-18 03:11:21.331	2025-03-12 06:26:56.269	1
245	187	8	\N	\N	\N	\N	2025-02-18 03:24:01.726	2025-03-12 06:26:56.269	1
247	189	8	\N	\N	\N	\N	2025-02-18 03:36:58.011	2025-03-12 06:26:56.269	1
244	186	8	\N	\N	\N	\N	2025-02-18 03:24:01.726	2025-03-12 06:26:56.269	1
246	188	45	\N	\N	\N	\N	2025-02-18 03:36:58.011	2025-03-12 06:26:56.269	1
242	184	22	\N	\N	\N	\N	2025-02-18 03:24:01.726	2025-03-12 06:26:56.269	1
241	183	44	\N	\N	\N	\N	2025-02-18 03:21:37.099	2025-03-12 06:26:56.269	1
239	181	8	\N	\N	\N	\N	2025-02-18 03:21:37.099	2025-03-12 06:26:56.269	1
238	180	20	\N	\N	\N	\N	2025-02-18 03:11:21.331	2025-03-12 06:26:56.269	1
251	192	23	\N	\N	\N	\N	2025-02-18 04:20:37.887	2025-03-12 06:26:56.269	1
250	192	20	\N	\N	\N	\N	2025-02-18 04:20:37.887	2025-03-12 06:26:56.269	1
249	191	8	\N	\N	\N	\N	2025-02-18 03:36:58.011	2025-03-12 06:26:56.269	1
253	193	7	\N	\N	\N	\N	2025-02-18 04:20:37.887	2025-03-12 06:26:56.269	1
252	192	19	\N	\N	\N	\N	2025-02-18 04:20:37.887	2025-03-12 06:26:56.269	1
257	197	44	\N	\N	\N	\N	2025-02-18 04:36:36.729	2025-03-12 06:26:56.269	1
256	196	44	\N	\N	\N	\N	2025-02-18 04:36:36.729	2025-03-12 06:26:56.269	1
255	195	44	\N	\N	\N	\N	2025-02-18 04:36:36.729	2025-03-12 06:26:56.269	1
258	198	44	\N	\N	\N	\N	2025-02-18 04:36:36.729	2025-03-12 06:26:56.269	1
261	201	45	\N	\N	\N	\N	2025-02-18 04:38:35.155	2025-03-12 06:26:56.269	1
260	200	45	\N	\N	\N	\N	2025-02-18 04:38:35.155	2025-03-12 06:26:56.269	1
263	203	8	\N	\N	\N	\N	2025-02-18 04:40:38.077	2025-03-12 06:26:56.269	1
236	180	41	\N	\N	\N	\N	2025-02-18 03:11:21.331	2025-03-12 06:26:56.269	1
235	180	23	\N	\N	\N	\N	2025-02-18 03:11:21.331	2025-03-12 06:26:56.269	1
234	180	42	\N	\N	\N	\N	2025-02-18 03:11:21.331	2025-03-12 06:26:56.269	1
272	208	40	\N	\N	\N	\N	2025-02-18 04:54:30.655	2025-03-12 06:30:56.627	1
271	207	40	\N	\N	\N	\N	2025-02-18 04:54:30.655	2025-03-12 06:30:56.627	1
269	205	8	\N	\N	\N	\N	2025-02-18 04:50:49.772	2025-03-12 06:30:56.627	1
276	211	48	\N	\N	\N	\N	2025-02-18 06:01:22.148	2025-03-12 06:30:56.627	1
275	211	47	\N	\N	\N	\N	2025-02-18 06:01:22.148	2025-03-12 06:30:56.627	1
274	210	8	\N	\N	\N	\N	2025-02-18 06:01:22.148	2025-03-12 06:30:56.627	1
294	229	20	\N	\N	\N	\N	2025-02-18 06:09:46.712	2025-03-12 06:30:56.627	1
291	226	35	\N	\N	\N	\N	2025-02-18 06:09:46.712	2025-03-12 06:30:56.627	1
286	221	20	\N	\N	\N	\N	2025-02-18 06:09:46.712	2025-03-12 06:30:56.627	1
283	218	25	\N	\N	\N	\N	2025-02-18 06:09:46.712	2025-03-12 06:30:56.627	1
280	215	41	\N	\N	\N	\N	2025-02-18 06:09:46.712	2025-03-12 06:30:56.627	1
278	213	46	\N	\N	\N	\N	2025-02-18 06:01:22.148	2025-03-12 06:30:56.627	1
277	212	35	\N	\N	\N	\N	2025-02-18 06:01:22.148	2025-03-12 06:30:56.627	1
279	214	35	\N	\N	\N	\N	2025-02-18 06:01:22.148	2025-03-12 06:30:56.627	1
289	224	35	\N	\N	\N	\N	2025-02-18 06:09:46.712	2025-03-12 06:30:56.627	1
292	227	41	\N	\N	\N	\N	2025-02-18 06:09:46.712	2025-03-12 06:30:56.627	1
320	248	8	\N	\N	\N	\N	2025-02-18 06:43:28.92	2025-03-12 06:30:56.627	1
314	245	33	\N	\N	\N	\N	2025-02-18 06:22:20.557	2025-03-12 06:30:56.627	1
311	242	22	\N	\N	\N	\N	2025-02-18 06:22:20.557	2025-03-12 06:30:56.627	1
304	238	8	\N	\N	\N	\N	2025-02-18 06:18:18.176	2025-03-12 06:30:56.627	1
300	234	23	\N	\N	\N	\N	2025-02-18 06:18:18.176	2025-03-12 06:30:56.627	1
299	234	20	\N	\N	\N	\N	2025-02-18 06:18:18.176	2025-03-12 06:30:56.627	1
298	233	21	\N	\N	\N	\N	2025-02-18 06:18:18.176	2025-03-12 06:30:56.627	1
302	236	35	\N	\N	\N	\N	2025-02-18 06:18:18.176	2025-03-12 06:30:56.627	1
301	235	35	\N	\N	\N	\N	2025-02-18 06:18:18.176	2025-03-12 06:30:56.627	1
303	237	20	\N	\N	\N	\N	2025-02-18 06:18:18.176	2025-03-12 06:30:56.627	1
309	240	24	\N	\N	\N	\N	2025-02-18 06:22:20.557	2025-03-12 06:30:56.627	1
308	240	20	\N	\N	\N	\N	2025-02-18 06:22:20.557	2025-03-12 06:30:56.627	1
310	241	37	\N	\N	\N	\N	2025-02-18 06:22:20.557	2025-03-12 06:30:56.627	1
331	252	42	\N	\N	\N	\N	2025-02-18 07:10:12.459	2025-03-12 06:30:56.627	1
329	252	25	\N	\N	\N	\N	2025-02-18 07:10:12.459	2025-03-12 06:30:56.627	1
327	252	23	\N	\N	\N	\N	2025-02-18 07:10:12.459	2025-03-12 06:30:56.627	1
326	252	22	\N	\N	\N	\N	2025-02-18 07:10:12.459	2025-03-12 06:30:56.627	1
325	251	8	\N	\N	\N	\N	2025-02-18 06:52:05.351	2025-03-12 06:30:56.627	1
324	250	49	\N	\N	\N	\N	2025-02-18 06:47:36.37	2025-03-12 06:30:56.627	1
319	247	49	\N	\N	\N	\N	2025-02-18 06:43:28.92	2025-03-12 06:30:56.627	1
315	246	8	\N	\N	\N	\N	2025-02-18 06:43:28.92	2025-03-12 06:30:56.627	1
313	244	33	\N	\N	\N	\N	2025-02-18 06:22:20.557	2025-03-12 06:30:56.627	1
312	243	8	\N	\N	\N	\N	2025-02-18 06:22:20.557	2025-03-12 06:30:56.627	1
328	252	19	\N	\N	\N	\N	2025-02-18 07:10:12.459	2025-03-12 06:30:56.627	1
330	252	40	\N	\N	\N	\N	2025-02-18 07:10:12.459	2025-03-12 06:30:56.627	1
335	252	20	\N	\N	\N	\N	2025-02-18 07:10:12.459	2025-03-12 06:30:56.627	1
334	252	50	\N	\N	\N	\N	2025-02-18 07:10:12.459	2025-03-12 06:30:56.627	1
333	252	21	\N	\N	\N	\N	2025-02-18 07:10:12.459	2025-03-12 06:30:56.627	1
332	252	24	\N	\N	\N	\N	2025-02-18 07:10:12.459	2025-03-12 06:30:56.627	1
351	254	25	\N	\N	\N	\N	2025-02-18 07:14:53.936	2025-03-12 06:30:56.627	1
348	254	22	\N	\N	\N	\N	2025-02-18 07:14:53.936	2025-03-12 06:30:56.627	1
344	253	25	\N	\N	\N	\N	2025-02-18 07:12:41.088	2025-03-12 06:30:56.627	1
340	253	21	\N	\N	\N	\N	2025-02-18 07:12:41.088	2025-03-12 06:30:56.627	1
338	253	20	\N	\N	\N	\N	2025-02-18 07:12:41.088	2025-03-12 06:30:56.627	1
337	253	41	\N	\N	\N	\N	2025-02-18 07:12:41.088	2025-03-12 06:30:56.627	1
336	252	41	\N	\N	\N	\N	2025-02-18 07:10:12.459	2025-03-12 06:30:56.627	1
339	253	50	\N	\N	\N	\N	2025-02-18 07:12:41.088	2025-03-12 06:30:56.627	1
341	253	24	\N	\N	\N	\N	2025-02-18 07:12:41.088	2025-03-12 06:30:56.627	1
343	253	40	\N	\N	\N	\N	2025-02-18 07:12:41.088	2025-03-12 06:30:56.627	1
342	253	42	\N	\N	\N	\N	2025-02-18 07:12:41.088	2025-03-12 06:30:56.627	1
365	255	24	\N	\N	\N	\N	2025-02-18 07:14:53.936	2025-03-12 06:30:56.627	1
361	255	19	\N	\N	\N	\N	2025-02-18 07:14:53.936	2025-03-12 06:30:56.627	1
356	254	50	\N	\N	\N	\N	2025-02-18 07:14:53.936	2025-03-12 06:30:56.627	1
355	254	21	\N	\N	\N	\N	2025-02-18 07:14:53.936	2025-03-12 06:30:56.627	1
354	254	24	\N	\N	\N	\N	2025-02-18 07:14:53.936	2025-03-12 06:30:56.627	1
353	254	42	\N	\N	\N	\N	2025-02-18 07:14:53.936	2025-03-12 06:30:56.627	1
352	254	40	\N	\N	\N	\N	2025-02-18 07:14:53.936	2025-03-12 06:30:56.627	1
350	254	19	\N	\N	\N	\N	2025-02-18 07:14:53.936	2025-03-12 06:30:56.627	1
349	254	23	\N	\N	\N	\N	2025-02-18 07:14:53.936	2025-03-12 06:30:56.627	1
347	253	22	\N	\N	\N	\N	2025-02-18 07:12:41.088	2025-03-12 06:30:56.627	1
346	253	23	\N	\N	\N	\N	2025-02-18 07:12:41.088	2025-03-12 06:30:56.627	1
345	253	19	\N	\N	\N	\N	2025-02-18 07:12:41.088	2025-03-12 06:30:56.627	1
358	254	41	\N	\N	\N	\N	2025-02-18 07:14:53.936	2025-03-12 06:30:56.627	1
357	254	20	\N	\N	\N	\N	2025-02-18 07:14:53.936	2025-03-12 06:30:56.627	1
359	255	22	\N	\N	\N	\N	2025-02-18 07:14:53.936	2025-03-12 06:30:56.627	1
360	255	23	\N	\N	\N	\N	2025-02-18 07:14:53.936	2025-03-12 06:30:56.627	1
374	256	24	\N	\N	\N	\N	2025-02-18 07:18:42.835	2025-03-12 06:30:56.627	1
372	256	50	\N	\N	\N	\N	2025-02-18 07:18:42.835	2025-03-12 06:30:56.627	1
370	256	41	\N	\N	\N	\N	2025-02-18 07:18:42.835	2025-03-12 06:30:56.627	1
368	255	20	\N	\N	\N	\N	2025-02-18 07:14:53.936	2025-03-12 06:30:56.627	1
367	255	50	\N	\N	\N	\N	2025-02-18 07:14:53.936	2025-03-12 06:30:56.627	1
366	255	21	\N	\N	\N	\N	2025-02-18 07:14:53.936	2025-03-12 06:30:56.627	1
364	255	42	\N	\N	\N	\N	2025-02-18 07:14:53.936	2025-03-12 06:30:56.627	1
362	255	25	\N	\N	\N	\N	2025-02-18 07:14:53.936	2025-03-12 06:30:56.627	1
363	255	40	\N	\N	\N	\N	2025-02-18 07:14:53.936	2025-03-12 06:30:56.627	1
369	255	41	\N	\N	\N	\N	2025-02-18 07:14:53.936	2025-03-12 06:30:56.627	1
371	256	20	\N	\N	\N	\N	2025-02-18 07:18:42.835	2025-03-12 06:30:56.627	1
373	256	21	\N	\N	\N	\N	2025-02-18 07:18:42.835	2025-03-12 06:30:56.627	1
411	259	19	\N	\N	\N	\N	2025-02-18 07:23:00.318	2025-03-12 06:30:56.627	1
406	259	21	\N	\N	\N	\N	2025-02-18 07:23:00.318	2025-03-12 06:30:56.627	1
400	258	19	\N	\N	\N	\N	2025-02-18 07:20:09.803	2025-03-12 06:30:56.627	1
396	258	24	\N	\N	\N	\N	2025-02-18 07:20:09.803	2025-03-12 06:30:56.627	1
393	258	20	\N	\N	\N	\N	2025-02-18 07:20:09.803	2025-03-12 06:30:56.627	1
381	257	41	\N	\N	\N	\N	2025-02-18 07:18:42.835	2025-03-12 06:30:56.627	1
379	256	23	\N	\N	\N	\N	2025-02-18 07:18:42.835	2025-03-12 06:30:56.627	1
377	256	25	\N	\N	\N	\N	2025-02-18 07:18:42.835	2025-03-12 06:30:56.627	1
375	256	42	\N	\N	\N	\N	2025-02-18 07:18:42.835	2025-03-12 06:30:56.627	1
376	256	40	\N	\N	\N	\N	2025-02-18 07:18:42.835	2025-03-12 06:30:56.627	1
378	256	19	\N	\N	\N	\N	2025-02-18 07:18:42.835	2025-03-12 06:30:56.627	1
380	256	22	\N	\N	\N	\N	2025-02-18 07:18:42.835	2025-03-12 06:30:56.627	1
387	257	40	\N	\N	\N	\N	2025-02-18 07:18:42.835	2025-03-12 06:30:56.627	1
385	257	24	\N	\N	\N	\N	2025-02-18 07:18:42.835	2025-03-12 06:30:56.627	1
384	257	21	\N	\N	\N	\N	2025-02-18 07:18:42.835	2025-03-12 06:30:56.627	1
382	257	20	\N	\N	\N	\N	2025-02-18 07:18:42.835	2025-03-12 06:30:56.627	1
383	257	50	\N	\N	\N	\N	2025-02-18 07:18:42.835	2025-03-12 06:30:56.627	1
386	257	42	\N	\N	\N	\N	2025-02-18 07:18:42.835	2025-03-12 06:30:56.627	1
392	258	41	\N	\N	\N	\N	2025-02-18 07:20:09.803	2025-03-12 06:30:56.627	1
390	257	23	\N	\N	\N	\N	2025-02-18 07:18:42.835	2025-03-12 06:30:56.627	1
388	257	25	\N	\N	\N	\N	2025-02-18 07:18:42.835	2025-03-12 06:30:56.627	1
389	257	19	\N	\N	\N	\N	2025-02-18 07:18:42.835	2025-03-12 06:30:56.627	1
391	257	22	\N	\N	\N	\N	2025-02-18 07:18:42.835	2025-03-12 06:30:56.627	1
398	258	40	\N	\N	\N	\N	2025-02-18 07:20:09.803	2025-03-12 06:30:56.627	1
399	258	25	\N	\N	\N	\N	2025-02-18 07:20:09.803	2025-03-12 06:30:56.627	1
397	258	42	\N	\N	\N	\N	2025-02-18 07:20:09.803	2025-03-12 06:30:56.627	1
395	258	21	\N	\N	\N	\N	2025-02-18 07:20:09.803	2025-03-12 06:30:56.627	1
394	258	50	\N	\N	\N	\N	2025-02-18 07:20:09.803	2025-03-12 06:30:56.627	1
405	259	50	\N	\N	\N	\N	2025-02-18 07:23:00.318	2025-03-12 06:30:56.627	1
404	259	20	\N	\N	\N	\N	2025-02-18 07:23:00.318	2025-03-12 06:30:56.627	1
403	259	41	\N	\N	\N	\N	2025-02-18 07:23:00.318	2025-03-12 06:30:56.627	1
402	258	22	\N	\N	\N	\N	2025-02-18 07:20:09.803	2025-03-12 06:30:56.627	1
401	258	23	\N	\N	\N	\N	2025-02-18 07:20:09.803	2025-03-12 06:30:56.627	1
410	259	25	\N	\N	\N	\N	2025-02-18 07:23:00.318	2025-03-12 06:30:56.627	1
409	259	40	\N	\N	\N	\N	2025-02-18 07:23:00.318	2025-03-12 06:30:56.627	1
408	259	42	\N	\N	\N	\N	2025-02-18 07:23:00.318	2025-03-12 06:30:56.627	1
407	259	24	\N	\N	\N	\N	2025-02-18 07:23:00.318	2025-03-12 06:30:56.627	1
434	269	58	\N	\N	\N	\N	2025-02-18 08:10:22.047	2025-03-12 06:30:56.627	1
430	265	54	\N	\N	\N	\N	2025-02-18 08:10:22.047	2025-03-12 06:30:56.627	1
427	262	51	\N	\N	\N	\N	2025-02-18 08:10:22.047	2025-03-12 06:30:56.627	1
423	261	50	\N	\N	\N	\N	2025-02-18 07:27:27.069	2025-03-12 06:30:56.627	1
420	260	42	\N	\N	\N	\N	2025-02-18 07:26:46.503	2025-03-12 06:30:56.627	1
416	260	19	\N	\N	\N	\N	2025-02-18 07:26:46.503	2025-03-12 06:30:56.627	1
415	260	41	\N	\N	\N	\N	2025-02-18 07:26:46.503	2025-03-12 06:30:56.627	1
413	259	22	\N	\N	\N	\N	2025-02-18 07:23:00.318	2025-03-12 06:30:56.627	1
412	259	23	\N	\N	\N	\N	2025-02-18 07:23:00.318	2025-03-12 06:30:56.627	1
414	259	7	\N	\N	\N	\N	2025-02-18 07:23:00.318	2025-03-12 06:30:56.627	1
418	260	50	\N	\N	\N	\N	2025-02-18 07:26:46.503	2025-03-12 06:30:56.627	1
417	260	40	\N	\N	\N	\N	2025-02-18 07:26:46.503	2025-03-12 06:30:56.627	1
419	260	23	\N	\N	\N	\N	2025-02-18 07:26:46.503	2025-03-12 06:30:56.627	1
422	261	23	\N	\N	\N	\N	2025-02-18 07:27:27.069	2025-03-12 06:30:56.627	1
421	261	42	\N	\N	\N	\N	2025-02-18 07:27:27.069	2025-03-12 06:30:56.627	1
425	261	19	\N	\N	\N	\N	2025-02-18 07:27:27.069	2025-03-12 06:30:56.627	1
424	261	40	\N	\N	\N	\N	2025-02-18 07:27:27.069	2025-03-12 06:30:56.627	1
426	261	41	\N	\N	\N	\N	2025-02-18 07:27:27.069	2025-03-12 06:30:56.627	1
429	264	53	\N	\N	\N	\N	2025-02-18 08:10:22.047	2025-03-12 06:30:56.627	1
428	263	52	\N	\N	\N	\N	2025-02-18 08:10:22.047	2025-03-12 06:30:56.627	1
433	268	57	\N	\N	\N	\N	2025-02-18 08:10:22.047	2025-03-12 06:30:56.627	1
432	267	56	\N	\N	\N	\N	2025-02-18 08:10:22.047	2025-03-12 06:30:56.627	1
431	266	55	\N	\N	\N	\N	2025-02-18 08:10:22.047	2025-03-12 06:30:56.627	1
457	292	74	\N	\N	\N	\N	2025-02-18 08:39:44.327	2025-03-12 06:30:56.627	1
455	290	72	\N	\N	\N	\N	2025-02-18 08:39:44.327	2025-03-12 06:30:56.627	1
452	285	32	\N	\N	\N	\N	2025-02-18 08:29:35.845	2025-03-12 06:30:56.627	1
448	289	32	\N	\N	\N	\N	2025-02-18 08:29:35.845	2025-03-12 06:30:56.627	1
446	278	70	\N	\N	\N	\N	2025-02-18 08:14:20.255	2025-03-12 06:30:56.627	1
445	279	69	\N	\N	\N	\N	2025-02-18 08:14:20.255	2025-03-12 06:30:56.627	1
442	282	66	\N	\N	\N	\N	2025-02-18 08:14:20.255	2025-03-12 06:30:56.627	1
440	275	64	\N	\N	\N	\N	2025-02-18 08:10:22.047	2025-03-12 06:30:56.627	1
438	273	62	\N	\N	\N	\N	2025-02-18 08:10:22.047	2025-03-12 06:30:56.627	1
437	272	61	\N	\N	\N	\N	2025-02-18 08:10:22.047	2025-03-12 06:30:56.627	1
436	271	60	\N	\N	\N	\N	2025-02-18 08:10:22.047	2025-03-12 06:30:56.627	1
435	270	59	\N	\N	\N	\N	2025-02-18 08:10:22.047	2025-03-12 06:30:56.627	1
439	274	63	\N	\N	\N	\N	2025-02-18 08:10:22.047	2025-03-12 06:30:56.627	1
441	276	65	\N	\N	\N	\N	2025-02-18 08:10:22.047	2025-03-12 06:30:56.627	1
443	281	67	\N	\N	\N	\N	2025-02-18 08:14:20.255	2025-03-12 06:30:56.627	1
444	280	68	\N	\N	\N	\N	2025-02-18 08:14:20.255	2025-03-12 06:30:56.627	1
449	288	32	\N	\N	\N	\N	2025-02-18 08:29:35.845	2025-03-12 06:30:56.627	1
450	287	32	\N	\N	\N	\N	2025-02-18 08:29:35.845	2025-03-12 06:30:56.627	1
451	286	32	\N	\N	\N	\N	2025-02-18 08:29:35.845	2025-03-12 06:30:56.627	1
447	277	71	\N	\N	\N	\N	2025-02-18 08:14:20.255	2025-03-12 06:30:56.627	1
454	283	32	\N	\N	\N	\N	2025-02-18 08:29:35.845	2025-03-12 06:30:56.627	1
453	284	32	\N	\N	\N	\N	2025-02-18 08:29:35.845	2025-03-12 06:30:56.627	1
456	291	73	\N	\N	\N	\N	2025-02-18 08:39:44.327	2025-03-12 06:30:56.627	1
472	307	82	\N	\N	\N	\N	2025-02-18 09:39:01.739	2025-03-12 06:30:56.627	1
469	304	83	\N	\N	\N	\N	2025-02-18 09:28:01.773	2025-03-12 06:30:56.627	1
466	301	7	\N	\N	\N	\N	2025-02-18 09:25:40.877	2025-03-12 06:30:56.627	1
463	298	80	\N	\N	\N	\N	2025-02-18 09:04:40.175	2025-03-12 06:30:56.627	1
460	295	77	\N	\N	\N	\N	2025-02-18 09:04:40.175	2025-03-12 06:30:56.627	1
458	293	75	\N	\N	\N	\N	2025-02-18 09:04:40.175	2025-03-12 06:30:56.627	1
459	294	76	\N	\N	\N	\N	2025-02-18 09:04:40.175	2025-03-12 06:30:56.627	1
461	296	78	\N	\N	\N	\N	2025-02-18 09:04:40.175	2025-03-12 06:30:56.627	1
462	297	79	\N	\N	\N	\N	2025-02-18 09:04:40.175	2025-03-12 06:30:56.627	1
464	299	7	\N	\N	\N	\N	2025-02-18 09:25:40.877	2025-03-12 06:30:56.627	1
465	300	7	\N	\N	\N	\N	2025-02-18 09:25:40.877	2025-03-12 06:30:56.627	1
467	302	81	\N	\N	\N	\N	2025-02-18 09:28:01.773	2025-03-12 06:30:56.627	1
468	303	82	\N	\N	\N	\N	2025-02-18 09:28:01.773	2025-03-12 06:30:56.627	1
471	306	83	\N	\N	\N	\N	2025-02-18 09:39:01.739	2025-03-12 06:30:56.627	1
470	305	29	\N	\N	\N	\N	2025-02-18 09:28:01.773	2025-03-12 06:30:56.627	1
484	314	23	\N	\N	\N	\N	2025-02-18 16:07:13.244	2025-03-12 06:30:56.627	1
480	313	23	\N	\N	\N	\N	2025-02-18 09:52:34.589	2025-03-12 06:30:56.627	1
476	311	24	\N	\N	\N	\N	2025-02-18 09:49:08.499	2025-03-12 06:30:56.627	1
474	309	84	\N	\N	\N	\N	2025-02-18 09:39:01.739	2025-03-12 06:30:56.627	1
473	308	81	\N	\N	\N	\N	2025-02-18 09:39:01.739	2025-03-12 06:30:56.627	1
477	311	20	\N	\N	\N	\N	2025-02-18 09:49:08.499	2025-03-12 06:30:56.627	1
483	313	41	\N	\N	\N	\N	2025-02-18 09:52:34.589	2025-03-12 06:30:56.627	1
482	313	20	\N	\N	\N	\N	2025-02-18 09:52:34.589	2025-03-12 06:30:56.627	1
481	313	7	\N	\N	\N	\N	2025-02-18 09:52:34.589	2025-03-12 06:30:56.627	1
475	310	80	\N	\N	\N	\N	2025-02-18 09:39:01.739	2025-03-12 06:30:56.627	1
513	322	86	\N	\N	\N	\N	2025-02-18 16:38:31.775	2025-03-12 06:30:56.627	1
509	321	87	\N	\N	\N	\N	2025-02-18 16:37:57.702	2025-03-12 06:30:56.627	1
505	320	87	\N	\N	\N	\N	2025-02-18 16:37:14.673	2025-03-12 06:30:56.627	1
503	320	85	\N	\N	\N	\N	2025-02-18 16:37:14.673	2025-03-12 06:30:56.627	1
500	319	87	\N	\N	\N	\N	2025-02-18 16:36:27.917	2025-03-12 06:30:56.627	1
498	318	24	\N	\N	\N	\N	2025-02-18 16:35:41.503	2025-03-12 06:30:56.627	1
495	318	85	\N	\N	\N	\N	2025-02-18 16:35:41.503	2025-03-12 06:30:56.627	1
494	318	20	\N	\N	\N	\N	2025-02-18 16:35:41.503	2025-03-12 06:30:56.627	1
491	317	85	\N	\N	\N	\N	2025-02-18 16:34:50.479	2025-03-12 06:30:56.627	1
489	316	87	\N	\N	\N	\N	2025-02-18 16:34:13.693	2025-03-12 06:30:56.627	1
487	316	85	\N	\N	\N	\N	2025-02-18 16:34:13.693	2025-03-12 06:30:56.627	1
486	316	20	\N	\N	\N	\N	2025-02-18 16:34:13.693	2025-03-12 06:30:56.627	1
488	316	86	\N	\N	\N	\N	2025-02-18 16:34:13.693	2025-03-12 06:30:56.627	1
490	317	20	\N	\N	\N	\N	2025-02-18 16:34:50.479	2025-03-12 06:30:56.627	1
493	317	87	\N	\N	\N	\N	2025-02-18 16:34:50.479	2025-03-12 06:30:56.627	1
492	317	86	\N	\N	\N	\N	2025-02-18 16:34:50.479	2025-03-12 06:30:56.627	1
496	318	86	\N	\N	\N	\N	2025-02-18 16:35:41.503	2025-03-12 06:30:56.627	1
497	318	87	\N	\N	\N	\N	2025-02-18 16:35:41.503	2025-03-12 06:30:56.627	1
499	319	20	\N	\N	\N	\N	2025-02-18 16:36:27.917	2025-03-12 06:30:56.627	1
502	320	20	\N	\N	\N	\N	2025-02-18 16:37:14.673	2025-03-12 06:30:56.627	1
501	319	24	\N	\N	\N	\N	2025-02-18 16:36:27.917	2025-03-12 06:30:56.627	1
504	320	86	\N	\N	\N	\N	2025-02-18 16:37:14.673	2025-03-12 06:30:56.627	1
507	321	20	\N	\N	\N	\N	2025-02-18 16:37:57.702	2025-03-12 06:30:56.627	1
506	320	24	\N	\N	\N	\N	2025-02-18 16:37:14.673	2025-03-12 06:30:56.627	1
508	321	85	\N	\N	\N	\N	2025-02-18 16:37:57.702	2025-03-12 06:30:56.627	1
520	325	40	\N	\N	\N	\N	2025-02-18 16:53:57.525	2025-03-12 06:30:56.627	1
518	324	41	\N	\N	\N	\N	2025-02-18 16:53:57.525	2025-03-12 06:30:56.627	1
516	323	85	\N	\N	\N	\N	2025-02-18 16:51:53.727	2025-03-12 06:30:56.627	1
515	323	30	\N	\N	\N	\N	2025-02-18 16:51:53.727	2025-03-12 06:30:56.627	1
514	322	87	\N	\N	\N	\N	2025-02-18 16:38:31.775	2025-03-12 06:30:56.627	1
512	322	85	\N	\N	\N	\N	2025-02-18 16:38:31.775	2025-03-12 06:30:56.627	1
511	322	20	\N	\N	\N	\N	2025-02-18 16:38:31.775	2025-03-12 06:30:56.627	1
510	321	24	\N	\N	\N	\N	2025-02-18 16:37:57.702	2025-03-12 06:30:56.627	1
519	325	23	\N	\N	\N	\N	2025-02-18 16:53:57.525	2025-03-12 06:30:56.627	1
517	324	23	\N	\N	\N	\N	2025-02-18 16:53:57.525	2025-03-12 06:30:56.627	1
522	327	20	\N	\N	\N	\N	2025-02-19 01:18:18.468	2025-03-12 06:30:56.627	1
521	326	40	\N	\N	\N	\N	2025-02-18 16:53:57.525	2025-03-12 06:30:56.627	1
542	334	7	\N	\N	\N	\N	2025-02-19 05:57:07.678	2025-03-12 06:30:56.627	1
539	333	22	\N	\N	\N	\N	2025-02-19 05:57:07.678	2025-03-12 06:30:56.627	1
535	333	40	\N	\N	\N	\N	2025-02-19 05:57:07.678	2025-03-12 06:30:56.627	1
531	331	18	\N	\N	\N	\N	2025-02-19 05:49:41.405	2025-03-12 06:30:56.627	1
528	332	83	\N	\N	\N	\N	2025-02-19 05:49:41.405	2025-03-12 06:30:56.627	1
527	332	91	\N	\N	\N	\N	2025-02-19 05:49:41.405	2025-03-12 06:30:56.627	1
525	330	27	\N	\N	\N	\N	2025-02-19 01:18:18.468	2025-03-12 06:30:56.627	1
526	332	89	\N	\N	\N	\N	2025-02-19 05:49:41.405	2025-03-12 06:30:56.627	1
530	332	29	\N	\N	\N	\N	2025-02-19 05:49:41.405	2025-03-12 06:30:56.627	1
529	332	88	\N	\N	\N	\N	2025-02-19 05:49:41.405	2025-03-12 06:30:56.627	1
533	333	20	\N	\N	\N	\N	2025-02-19 05:57:07.678	2025-03-12 06:30:56.627	1
532	331	90	\N	\N	\N	\N	2025-02-19 05:49:41.405	2025-03-12 06:30:56.627	1
534	333	7	\N	\N	\N	\N	2025-02-19 05:57:07.678	2025-03-12 06:30:56.627	1
537	333	24	\N	\N	\N	\N	2025-02-19 05:57:07.678	2025-03-12 06:30:56.627	1
536	333	19	\N	\N	\N	\N	2025-02-19 05:57:07.678	2025-03-12 06:30:56.627	1
538	333	23	\N	\N	\N	\N	2025-02-19 05:57:07.678	2025-03-12 06:30:56.627	1
551	335	40	\N	\N	\N	\N	2025-02-19 06:05:31.729	2025-03-12 06:30:56.627	1
547	334	22	\N	\N	\N	\N	2025-02-19 05:57:07.678	2025-03-12 06:30:56.627	1
545	334	24	\N	\N	\N	\N	2025-02-19 05:57:07.678	2025-03-12 06:30:56.627	1
544	334	19	\N	\N	\N	\N	2025-02-19 05:57:07.678	2025-03-12 06:30:56.627	1
543	334	40	\N	\N	\N	\N	2025-02-19 05:57:07.678	2025-03-12 06:30:56.627	1
541	334	20	\N	\N	\N	\N	2025-02-19 05:57:07.678	2025-03-12 06:30:56.627	1
540	333	25	\N	\N	\N	\N	2025-02-19 05:57:07.678	2025-03-12 06:30:56.627	1
546	334	41	\N	\N	\N	\N	2025-02-19 05:57:07.678	2025-03-12 06:30:56.627	1
550	335	20	\N	\N	\N	\N	2025-02-19 06:05:31.729	2025-03-12 06:30:56.627	1
548	334	25	\N	\N	\N	\N	2025-02-19 05:57:07.678	2025-03-12 06:30:56.627	1
549	334	23	\N	\N	\N	\N	2025-02-19 05:57:07.678	2025-03-12 06:30:56.627	1
571	343	93	\N	\N	\N	\N	2025-02-19 06:29:05.955	2025-03-12 06:30:56.627	1
567	341	40	\N	\N	\N	\N	2025-02-19 06:18:46.816	2025-03-12 06:30:56.627	1
563	340	21	\N	\N	\N	\N	2025-02-19 06:18:46.816	2025-03-12 06:30:56.627	1
561	338	8	\N	\N	\N	\N	2025-02-19 06:10:59.367	2025-03-12 06:30:56.627	1
559	337	41	\N	\N	\N	\N	2025-02-19 06:10:59.367	2025-03-12 06:30:56.627	1
555	336	40	\N	\N	\N	\N	2025-02-19 06:05:31.729	2025-03-12 06:30:56.627	1
553	335	24	\N	\N	\N	\N	2025-02-19 06:05:31.729	2025-03-12 06:30:56.627	1
552	335	23	\N	\N	\N	\N	2025-02-19 06:05:31.729	2025-03-12 06:30:56.627	1
554	336	20	\N	\N	\N	\N	2025-02-19 06:05:31.729	2025-03-12 06:30:56.627	1
564	340	41	\N	\N	\N	\N	2025-02-19 06:18:46.816	2025-03-12 06:30:56.627	1
562	339	8	\N	\N	\N	\N	2025-02-19 06:12:58.894	2025-03-12 06:30:56.627	1
560	337	19	\N	\N	\N	\N	2025-02-19 06:10:59.367	2025-03-12 06:30:56.627	1
558	337	21	\N	\N	\N	\N	2025-02-19 06:10:59.367	2025-03-12 06:30:56.627	1
565	340	20	\N	\N	\N	\N	2025-02-19 06:18:46.816	2025-03-12 06:30:56.627	1
566	340	24	\N	\N	\N	\N	2025-02-19 06:18:46.816	2025-03-12 06:30:56.627	1
568	341	41	\N	\N	\N	\N	2025-02-19 06:18:46.816	2025-03-12 06:30:56.627	1
570	342	92	\N	\N	\N	\N	2025-02-19 06:29:05.955	2025-03-12 06:30:56.627	1
572	344	94	\N	\N	\N	\N	2025-02-19 06:29:05.955	2025-03-12 06:30:56.627	1
569	341	19	\N	\N	\N	\N	2025-02-19 06:18:46.816	2025-03-12 06:30:56.627	1
573	345	95	\N	\N	\N	\N	2025-02-19 06:29:05.955	2025-03-12 06:30:56.627	1
609	367	20	\N	\N	\N	\N	2025-02-21 00:12:37.656	2025-03-12 06:30:56.627	1
606	367	41	\N	\N	\N	\N	2025-02-21 00:12:37.656	2025-03-12 06:30:56.627	1
603	366	19	\N	\N	\N	\N	2025-02-21 00:12:37.656	2025-03-12 06:30:56.627	1
600	365	19	\N	\N	\N	\N	2025-02-21 00:12:37.656	2025-03-12 06:30:56.627	1
596	364	118	\N	\N	\N	\N	2025-02-21 00:12:37.656	2025-03-12 06:30:56.627	1
594	364	116	\N	\N	\N	\N	2025-02-21 00:12:37.656	2025-03-12 06:30:56.627	1
591	363	113	\N	\N	\N	\N	2025-02-19 09:46:11.883	2025-03-12 06:30:56.627	1
589	361	111	\N	\N	\N	\N	2025-02-19 09:46:11.883	2025-03-12 06:30:56.627	1
588	360	110	\N	\N	\N	\N	2025-02-19 09:46:11.883	2025-03-12 06:30:56.627	1
586	358	108	\N	\N	\N	\N	2025-02-19 09:46:11.883	2025-03-12 06:30:56.627	1
583	355	105	\N	\N	\N	\N	2025-02-19 06:47:59.946	2025-03-12 06:30:56.627	1
581	353	103	\N	\N	\N	\N	2025-02-19 06:47:59.946	2025-03-12 06:30:56.627	1
580	352	102	\N	\N	\N	\N	2025-02-19 06:47:59.946	2025-03-12 06:30:56.627	1
578	350	100	\N	\N	\N	\N	2025-02-19 06:47:59.946	2025-03-12 06:30:56.627	1
577	349	99	\N	\N	\N	\N	2025-02-19 06:47:59.946	2025-03-12 06:30:56.627	1
576	348	98	\N	\N	\N	\N	2025-02-19 06:47:59.946	2025-03-12 06:30:56.627	1
579	351	101	\N	\N	\N	\N	2025-02-19 06:47:59.946	2025-03-12 06:30:56.627	1
582	354	104	\N	\N	\N	\N	2025-02-19 06:47:59.946	2025-03-12 06:30:56.627	1
584	356	106	\N	\N	\N	\N	2025-02-19 06:47:59.946	2025-03-12 06:30:56.627	1
585	357	107	\N	\N	\N	\N	2025-02-19 06:47:59.946	2025-03-12 06:30:56.627	1
587	359	109	\N	\N	\N	\N	2025-02-19 09:46:11.883	2025-03-12 06:30:56.627	1
590	362	112	\N	\N	\N	\N	2025-02-19 09:46:11.883	2025-03-12 06:30:56.627	1
597	364	119	\N	\N	\N	\N	2025-02-21 00:12:37.656	2025-03-12 06:30:56.627	1
598	365	21	\N	\N	\N	\N	2025-02-21 00:12:37.656	2025-03-12 06:30:56.627	1
595	364	117	\N	\N	\N	\N	2025-02-21 00:12:37.656	2025-03-12 06:30:56.627	1
593	364	115	\N	\N	\N	\N	2025-02-21 00:12:37.656	2025-03-12 06:30:56.627	1
592	364	114	\N	\N	\N	\N	2025-02-21 00:12:37.656	2025-03-12 06:30:56.627	1
602	366	7	\N	\N	\N	\N	2025-02-21 00:12:37.656	2025-03-12 06:30:56.627	1
601	365	42	\N	\N	\N	\N	2025-02-21 00:12:37.656	2025-03-12 06:30:56.627	1
605	366	23	\N	\N	\N	\N	2025-02-21 00:12:37.656	2025-03-12 06:30:56.627	1
604	366	20	\N	\N	\N	\N	2025-02-21 00:12:37.656	2025-03-12 06:30:56.627	1
607	367	40	\N	\N	\N	\N	2025-02-21 00:12:37.656	2025-03-12 06:30:56.627	1
1377	603	20	\N	\N	\N	\N	2025-05-10 07:22:30.237	2025-05-10 07:18:48.296	1
1378	604	8	\N	\N	\N	\N	2025-05-10 07:22:30.237	2025-05-10 07:19:31.024	1
1379	605	8	\N	\N	\N	\N	2025-05-10 07:22:30.237	2025-05-10 07:19:54.704	1
1380	606	37	\N	\N	\N	\N	2025-05-10 07:22:30.237	2025-05-10 07:19:54.975	1
1381	607	29	\N	\N	\N	\N	2025-05-10 07:22:30.237	2025-05-10 07:20:42.639	1
1382	608	20	\N	\N	\N	\N	2025-05-10 07:22:30.237	2025-05-10 07:20:42.792	1
1383	608	19	\N	\N	\N	\N	2025-05-10 07:22:30.237	2025-05-10 07:20:59.784	1
1385	610	29	\N	\N	\N	\N	2025-05-10 07:22:30.237	2025-05-10 07:21:44.039	1
1386	611	177	\N	\N	\N	\N	2025-05-10 07:22:30.237	2025-05-10 07:21:57.815	1
1387	612	176	\N	\N	\N	\N	2025-05-10 07:22:30.237	2025-05-10 07:22:16.116	1
1388	546	2	\N	\N	\N	\N	2025-05-10 08:27:45.889	2025-05-10 08:27:06.135	\N
1389	546	178	\N	\N	\N	\N	2025-05-10 08:27:45.889	2025-05-10 08:27:06.288	\N
1390	162	181	\N	\N	\N	\N	2025-05-10 08:41:12.297	2025-05-10 08:40:51.773	\N
1391	162	182	\N	\N	\N	\N	2025-05-10 08:41:12.297	2025-05-10 08:40:51.908	\N
1230	578	179	\N	\N	\N	\N	2025-02-22 03:25:10.144	2025-05-10 09:00:38.071	1
1030	528	2	\N	\N	\N	\N	2025-02-21 04:39:24.892	2025-05-17 07:11:17.291	1
1077	537	2	\N	\N	\N	\N	2025-02-22 01:34:43.761	2025-05-17 08:01:32.412	1
1392	613	7	\N	\N	\N	\N	2025-05-17 08:19:29.345	2025-05-17 08:14:49.261	1
1393	613	85	\N	\N	\N	\N	2025-05-17 08:19:29.345	2025-05-17 08:14:50.317	1
1394	613	19	\N	\N	\N	\N	2025-05-17 08:19:29.345	2025-05-17 08:14:50.508	1
1395	613	22	\N	\N	\N	\N	2025-05-17 08:19:29.345	2025-05-17 08:14:50.678	1
1396	613	183	\N	\N	\N	\N	2025-05-17 08:19:29.345	2025-05-17 08:14:50.877	1
1397	613	21	\N	\N	\N	\N	2025-05-17 08:19:29.345	2025-05-17 08:14:51.157	1
1398	613	184	\N	\N	\N	\N	2025-05-17 08:19:29.345	2025-05-17 08:14:51.662	1
1399	613	41	\N	\N	\N	\N	2025-05-17 08:19:29.345	2025-05-17 08:14:51.957	1
1400	613	24	\N	\N	\N	\N	2025-05-17 08:19:29.345	2025-05-17 08:14:52.556	1
1401	613	40	\N	\N	\N	\N	2025-05-17 08:19:29.345	2025-05-17 08:14:53.429	1
1402	614	185	\N	\N	\N	\N	2025-05-17 09:29:21.187	2025-05-17 09:27:20.204	1
1403	615	121	\N	\N	\N	\N	2025-05-20 03:00:10.804	2025-05-20 02:58:40.253	1
1404	615	2	\N	\N	\N	\N	2025-05-20 03:00:10.804	2025-05-20 02:58:41.011	1
1405	615	120	\N	\N	\N	\N	2025-05-20 03:00:10.804	2025-05-20 02:58:43.291	1
1406	615	122	\N	\N	\N	\N	2025-05-20 03:00:10.804	2025-05-20 02:58:43.475	1
1407	615	3	\N	\N	\N	\N	2025-05-20 03:00:10.804	2025-05-20 02:58:44.131	1
1408	616	121	\N	\N	\N	\N	2025-05-20 03:11:59.689	2025-05-20 03:11:23.721	1
1409	616	2	\N	\N	\N	\N	2025-05-20 03:11:59.689	2025-05-20 03:11:23.88	1
1410	616	120	\N	\N	\N	\N	2025-05-20 03:11:59.689	2025-05-20 03:11:24.049	1
1411	616	122	\N	\N	\N	\N	2025-05-20 03:11:59.689	2025-05-20 03:11:24.216	1
1412	616	3	\N	\N	\N	\N	2025-05-20 03:11:59.689	2025-05-20 03:11:24.513	1
1414	617	122	\N	\N	\N	\N	2025-05-20 03:20:09.357	2025-05-20 03:19:33.511	1
1415	617	121	\N	\N	\N	\N	2025-05-20 03:20:09.357	2025-05-20 03:19:33.671	1
1413	617	120	\N	\N	\N	\N	2025-05-20 03:20:09.357	2025-05-20 03:22:15.01	1
1416	618	8	\N	\N	\N	\N	2025-05-21 07:35:12.879	2025-05-21 07:34:31.926	1
1417	619	8	\N	\N	\N	\N	2025-05-21 07:35:12.879	2025-05-21 07:34:32.085	1
1418	620	8	\N	\N	\N	\N	2025-05-21 07:35:12.879	2025-05-21 07:34:32.606	1
574	346	97	\N	\N	\N	\N	2025-02-19 06:29:05.955	2025-06-25 08:41:23.708	1
575	347	96	\N	\N	\N	\N	2025-02-19 06:29:05.955	2025-06-25 08:41:58.906	1
1419	621	8	\N	\N	\N	\N	2025-05-21 07:35:12.879	2025-05-21 07:34:32.774	1
1420	622	45	\N	\N	\N	\N	2025-05-26 04:30:49.309	2025-05-26 04:30:28.041	1
1421	623	31	\N	\N	\N	\N	2025-05-27 07:04:33.722	2025-05-27 07:04:09.779	1
1237	579	7	\N	\N	\N	\N	2025-02-22 03:34:55.33	2025-05-28 04:28:22.684	1
1238	579	40	\N	\N	\N	\N	2025-02-22 03:34:55.33	2025-05-28 04:28:22.684	1
1239	579	19	\N	\N	\N	\N	2025-02-22 03:34:55.33	2025-05-28 04:28:22.684	1
1422	579	186	\N	\N	\N	\N	2025-05-28 06:47:46.844	2025-05-28 06:45:53.278	1
1423	579	85	\N	\N	\N	\N	2025-05-28 06:47:46.844	2025-05-28 06:45:53.414	1
1424	583	188	\N	\N	\N	\N	2025-05-30 01:56:08.991	2025-05-30 01:53:41.841	1
1425	583	189	\N	\N	\N	\N	2025-05-30 01:56:08.991	2025-05-30 01:53:42.009	1
1426	583	190	\N	\N	\N	\N	2025-05-30 01:56:08.991	2025-05-30 01:53:42.153	1
556	336	23	\N	\N	\N	\N	2025-02-19 06:05:31.729	2025-05-30 06:29:14.65	1
557	336	24	\N	\N	\N	\N	2025-02-19 06:05:31.729	2025-05-30 06:29:14.65	1
1427	624	66	\N	\N	\N	\N	2025-06-02 02:02:39.727	2025-06-02 02:01:36.724	1
1428	624	67	\N	\N	\N	\N	2025-06-02 02:02:39.727	2025-06-02 02:01:36.868	1
1429	624	68	\N	\N	\N	\N	2025-06-02 02:02:39.727	2025-06-02 02:01:37.021	1
1430	624	69	\N	\N	\N	\N	2025-06-02 02:02:39.727	2025-06-02 02:01:37.179	1
1431	624	70	\N	\N	\N	\N	2025-06-02 02:02:39.727	2025-06-02 02:01:37.325	1
1432	625	66	\N	\N	\N	\N	2025-06-02 02:10:52.689	2025-06-02 02:10:13.067	1
1433	625	67	\N	\N	\N	\N	2025-06-02 02:10:52.689	2025-06-02 02:10:13.225	1
1434	625	68	\N	\N	\N	\N	2025-06-02 02:10:52.689	2025-06-02 02:10:13.387	1
1435	625	69	\N	\N	\N	\N	2025-06-02 02:10:52.689	2025-06-02 02:10:13.564	1
1436	625	70	\N	\N	\N	\N	2025-06-02 02:10:52.689	2025-06-02 02:10:13.953	1
1437	625	71	\N	\N	\N	\N	2025-06-02 02:10:52.689	2025-06-02 02:10:14.397	1
1438	627	40	\N	\N	\N	\N	2025-06-20 06:30:04.36	2025-06-20 06:28:00.585	1
1439	627	7	\N	\N	\N	\N	2025-06-20 06:30:04.36	2025-06-20 06:28:00.792	1
1440	627	85	\N	\N	\N	\N	2025-06-20 06:30:04.36	2025-06-20 06:28:01.399	1
1441	628	40	\N	\N	\N	\N	2025-06-20 06:30:04.36	2025-06-20 06:29:27.943	1
1442	628	7	\N	\N	\N	\N	2025-06-20 06:30:04.36	2025-06-20 06:29:28.103	1
1443	628	85	\N	\N	\N	\N	2025-06-20 06:30:04.36	2025-06-20 06:29:28.639	1
1444	629	24	\N	\N	\N	\N	2025-06-23 03:54:58.907	2025-06-23 03:54:36.73	1
1445	630	8	\N	\N	\N	\N	2025-06-28 02:05:55.874	2025-06-28 02:05:40.675	1
1446	631	31	\N	\N	\N	\N	2025-07-03 02:26:19.418	2025-07-03 02:25:51.259	1
1447	632	121	\N	\N	\N	\N	2025-07-12 02:45:21.542	2025-07-12 02:45:02.16	1
1449	633	192	\N	\N	\N	\N	2025-07-15 04:32:21.868	2025-07-15 04:30:54.931	1
1450	634	193	\N	\N	\N	\N	2025-07-15 04:32:21.868	2025-07-15 04:30:57.018	1
1451	635	194	\N	\N	\N	\N	2025-07-15 04:32:21.868	2025-07-15 04:30:57.188	1
1452	636	194	\N	\N	\N	\N	2025-07-15 04:32:21.868	2025-07-15 04:30:57.707	1
1453	637	192	\N	\N	\N	\N	2025-07-15 04:32:21.868	2025-07-15 04:32:41.168	1
1448	553	191	\N	\N	\N	\N	2025-07-12 07:13:56.696	2025-07-15 04:32:49.63	1
1454	638	192	\N	\N	\N	\N	2025-08-21 06:19:07.66	2025-08-21 06:18:43.787	1
1455	639	40	\N	\N	\N	\N	2025-08-21 07:25:06.275	2025-08-21 07:23:28.036	1
1456	639	41	\N	\N	\N	\N	2025-08-21 07:25:06.275	2025-08-21 07:24:00.732	1
1457	639	23	\N	\N	\N	\N	2025-08-21 07:25:06.275	2025-08-21 07:24:01.173	1
1458	639	20	\N	\N	\N	\N	2025-08-21 07:25:06.275	2025-08-21 07:24:01.644	1
1459	639	42	\N	\N	\N	\N	2025-08-21 07:25:06.275	2025-08-21 07:24:02.452	1
1460	639	25	\N	\N	\N	\N	2025-08-21 07:25:06.275	2025-08-21 07:24:03.132	1
1461	640	40	\N	\N	\N	\N	2025-09-02 02:49:34.66	2025-09-02 02:49:18.096	1
1462	641	20	\N	\N	\N	\N	2025-09-02 02:56:13.065	2025-09-02 02:55:13.63	1
1463	641	23	\N	\N	\N	\N	2025-09-02 02:56:13.065	2025-09-02 02:55:13.807	1
1464	642	20	\N	\N	\N	\N	2025-09-02 02:56:13.065	2025-09-02 02:55:38.991	1
1465	642	23	\N	\N	\N	\N	2025-09-02 02:56:13.065	2025-09-02 02:55:39.144	1
1466	643	195	\N	\N	\N	\N	2025-09-02 03:03:40.807	2025-09-02 03:03:21.493	1
1467	644	20	\N	\N	\N	\N	2025-09-02 03:18:13.342	2025-09-02 03:16:44.107	1
1468	645	196	\N	\N	\N	\N	2025-09-02 03:18:13.342	2025-09-02 03:17:08.241	1
1469	646	24	\N	\N	\N	\N	2025-10-20 06:29:23.198	2025-10-20 06:28:52.473	1
1470	647	197	\N	\N	\N	\N	2025-11-01 04:38:07.29	2025-11-01 04:37:16.959	1
1471	648	197	\N	\N	\N	\N	2025-11-01 04:38:07.29	2025-11-01 04:37:17.846	1
1472	649	5	\N	\N	\N	\N	2025-11-01 04:38:07.29	2025-11-01 04:37:18.569	1
1473	650	7	\N	\N	\N	\N	2025-11-10 01:20:46.778	2025-11-10 01:19:48.289	1
1474	650	23	\N	\N	\N	\N	2025-11-10 01:20:46.778	2025-11-10 01:19:48.991	1
1475	650	40	\N	\N	\N	\N	2025-11-10 01:20:46.778	2025-11-10 01:19:56.107	1
1476	651	23	\N	\N	\N	\N	2025-11-10 01:21:17.45	2025-11-10 01:20:48.928	1
1477	651	40	\N	\N	\N	\N	2025-11-10 01:21:17.45	2025-11-10 01:20:49.079	1
1478	652	20	\N	\N	\N	\N	2025-11-22 04:35:08.896	2025-11-22 04:32:07.895	1
1479	652	23	\N	\N	\N	\N	2025-11-22 04:35:08.896	2025-11-22 04:32:08.1	1
1480	652	198	\N	\N	\N	\N	2025-11-22 04:35:08.896	2025-11-22 04:32:08.819	1
1481	653	20	\N	\N	\N	\N	2025-11-22 04:35:08.896	2025-11-22 04:32:10.217	1
1482	653	23	\N	\N	\N	\N	2025-11-22 04:35:08.896	2025-11-22 04:32:10.403	1
1483	653	198	\N	\N	\N	\N	2025-11-22 04:35:08.896	2025-11-22 04:32:10.585	1
1484	654	20	\N	\N	\N	\N	2025-11-22 04:35:08.896	2025-11-22 04:32:10.77	1
1485	654	23	\N	\N	\N	\N	2025-11-22 04:35:08.896	2025-11-22 04:32:10.977	1
1486	654	198	\N	\N	\N	\N	2025-11-22 04:35:08.896	2025-11-22 04:32:11.185	1
1487	655	8	\N	\N	\N	\N	2025-12-18 01:21:57.032	2025-12-18 01:21:26.309	1
599	365	199	\N	\N	\N	\N	2025-02-21 00:12:37.656	2025-12-18 01:38:04.084	1
1488	656	20	\N	\N	\N	\N	2025-12-29 01:48:32.717	2025-12-29 01:47:18.514	1
1489	656	41	\N	\N	\N	\N	2025-12-29 01:48:32.717	2025-12-29 01:47:19.114	1
1490	656	40	\N	\N	\N	\N	2025-12-29 01:48:32.717	2025-12-29 01:47:19.65	1
1491	656	7	\N	\N	\N	\N	2025-12-29 01:48:32.717	2025-12-29 01:47:19.93	1
1492	656	24	\N	\N	\N	\N	2025-12-29 01:48:32.717	2025-12-29 01:47:20.714	1
\.


--
-- Data for Name: Products_Color_Detail; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Products_Color_Detail" (id, name, code, "createdAt", "updatedAt") FROM stdin;
1	Yellow	#facc15	2025-02-13 06:57:41.084	2025-02-13 06:57:29.412
2	Pink	#ec4899	2025-02-13 06:58:44.016	2025-02-13 06:58:37.059
3	Green	#16a34a	2025-02-13 07:00:36.273	2025-02-13 07:00:30.269
4	Rose	#fb7185	2025-02-13 07:01:14.342	2025-02-13 07:01:09.235
5	Rainbow 	#7dd3fc-#ec4899-#fef08a	2025-02-13 07:05:06.119	2025-02-13 07:04:03.627
6	Blue	#3b82f6	2025-02-13 07:05:45.702	2025-02-13 07:05:37.017
85	ครีม	#FFFFE7	2025-02-18 16:19:44.541	2025-02-18 16:15:42.246
8	คละสี	#0ea5e9-#db2777-#fde047	2025-02-16 19:54:18.872	2025-02-16 20:03:53.222
9	ขาวใส	#fafafa	2025-02-17 02:38:31.279	2025-02-17 02:38:15.591
10	หมีชมพู	#ec4899	2025-02-17 02:45:50.792	2025-02-17 02:44:02.443
11	ยูนิคอร์นชมพู	#f9a8d4	2025-02-17 02:45:50.792	2025-02-17 02:44:02.586
12	ยีราฟเหลือง	#eab308	2025-02-17 02:45:50.792	2025-02-17 02:44:02.739
13	การ์ตูนน้ำเงิน	#3b82f6	2025-02-17 02:45:50.792	2025-02-17 02:44:03.148
14	การ์ตูนม่วง	#c4b5fd	2025-02-17 02:45:50.792	2025-02-17 02:44:06.162
15	รถตำรวจ	#18181b	2025-02-17 02:48:36.062	2025-02-17 02:47:58.089
16	เป็ด	#fde047	2025-02-17 02:59:09.347	2025-02-17 02:57:51.727
17	โพนี่	#fffbeb	2025-02-17 02:59:09.347	2025-02-17 02:57:53.647
18	ยูนิคอร์น	#f9a8d4	2025-02-17 02:59:09.347	2025-02-17 02:57:53.791
19	เหลือง	#fde047	2025-02-17 02:59:09.347	2025-02-17 02:58:52.519
20	ชมพู	#f472b6	2025-02-17 03:01:05.698	2025-02-17 03:00:41.814
21	แดง	#be123c	2025-02-17 03:05:28.694	2025-02-17 03:04:34.541
22	ส้ม	#f97316	2025-02-17 03:05:28.694	2025-02-17 03:04:34.957
24	เขียว	#10b981	2025-02-17 03:18:02.563	2025-02-17 03:17:48.321
25	ม่วง	#a78bfa	2025-02-17 03:25:23.381	2025-02-17 03:25:16.994
26	ชมพู-เงือก	#f9a8d4-#f472b6-#7dd3fc	2025-02-17 03:30:33.862	2025-02-17 03:28:50.215
27	เขียว-เหลือง	#fde047-#facc15-#a7f3d0	2025-02-17 03:30:33.862	2025-02-17 03:28:50.358
23	ฟ้า	#38bdf8	2025-02-17 03:05:28.694	2025-02-17 03:35:47.652
28	ชมพู-ม่วง	#f472b6-#a78bfa-#99f6e4	2025-02-17 09:26:13.137	2025-02-17 09:25:38.483
31	เหลือง-น้ำเงิน	#fcd34d-#fbbf24-#2563eb	2025-02-17 09:45:10.798	2025-02-17 09:44:42.46
32	หลากสี	#818cf8-#f472b6-#86efac	2025-02-17 09:48:33.797	2025-02-17 09:47:54.675
30	น้ำตาล	#78350f	2025-02-17 09:33:41.684	2025-02-17 09:51:42.727
33	รุ้ง	#ef4444-#fcd34d-#22d3ee	2025-02-17 09:55:25.177	2025-02-17 09:52:36.01
34	ส้ม-แฟนซี	#f59e0b-#fde047-#a3e635	2025-02-17 09:55:25.177	2025-02-17 09:54:51.409
35	เนื้อใส	#fff7ed	2025-02-18 02:08:23.07	2025-02-18 02:07:53.285
37	ใบไม้	#d9f99d-#86efac-#fef08a	2025-02-18 02:25:57.85	2025-02-18 02:25:17.533
38	เขียวเข้ม	#065f46	2025-02-18 02:35:43.579	2025-02-18 02:35:15.853
39	เขียวอ่อน	#a3e635	2025-02-18 02:35:43.579	2025-02-18 02:35:16.01
40	ดำ	#09090b	2025-02-18 02:41:36.525	2025-02-18 02:41:29.994
41	น้ำเงิน	#2563eb	2025-02-18 02:53:26.363	2025-02-18 02:52:23.645
7	ขาว	#f9fafb	2025-02-13 07:46:14.822	2025-02-18 02:57:24.406
44	คละลาย	#0ea5e9-#ec4899-#67e8f9	2025-02-18 03:16:10.361	2025-02-18 03:14:11.847
45	คละแบบ	#67e8f9-#c4b5fd-#fb7185	2025-02-18 03:16:10.361	2025-02-18 03:14:12.009
42	เทา	#525252	2025-02-18 02:53:26.363	2025-02-18 04:01:03.529
29	แตงโม	#dc2626-#ef4444-#84cc16	2025-02-17 09:30:45.771	2025-02-18 04:02:12.836
46	เหลือง-ใส	#fef9c3	2025-02-18 05:59:01.631	2025-02-18 05:58:12.134
47	เขียว-ใส	#ecfccb	2025-02-18 05:59:01.631	2025-02-18 05:58:12.84
48	ชมพู-ใส	#fecaca	2025-02-18 05:59:01.631	2025-02-18 05:58:12.974
49	ทูโทน	#0284c7-#bae6fd-#7dd3fc	2025-02-18 06:39:21.211	2025-02-18 06:37:36.491
50	ขี้ม้า	#1a2e05	2025-02-18 06:40:15.851	2025-02-18 06:39:32.634
51	A	#bbf7d0	2025-02-18 07:58:08.97	2025-02-18 07:55:01.966
52	C	#a5f3fc	2025-02-18 07:58:08.97	2025-02-18 07:55:02.189
53	D	#fef3c7	2025-02-18 07:58:08.97	2025-02-18 07:55:02.429
54	E	#fdba74	2025-02-18 07:58:08.97	2025-02-18 07:55:02.901
55	F	#fca5a5	2025-02-18 07:58:08.97	2025-02-18 07:55:03.069
56	G	#93c5fd	2025-02-18 07:58:08.97	2025-02-18 07:55:03.461
57	H	#f87171	2025-02-18 07:58:08.97	2025-02-18 07:55:03.614
58	I	#22d3ee	2025-02-18 07:58:08.97	2025-02-18 07:55:03.773
59	J	#ecfccb	2025-02-18 07:58:08.97	2025-02-18 07:55:03.965
60	K	#fecaca	2025-02-18 07:58:08.97	2025-02-18 07:55:04.408
61	L	#fcd34d	2025-02-18 07:58:08.97	2025-02-18 07:55:04.55
62	N	#06b6d4	2025-02-18 07:58:08.97	2025-02-18 07:55:05.477
63	O	#0284c7	2025-02-18 07:58:08.97	2025-02-18 07:55:05.629
64	P	#818cf8	2025-02-18 07:58:08.97	2025-02-18 07:55:05.781
65	Q	#ddd6fe	2025-02-18 07:58:08.97	2025-02-18 07:55:06.677
67	2	#67e8f9	2025-02-18 08:04:25.73	2025-02-18 08:03:30.835
68	3	#a5f3fc	2025-02-18 08:04:25.73	2025-02-18 08:03:30.979
69	4	#14b8a6	2025-02-18 08:04:25.73	2025-02-18 08:03:31.404
70	5	#5eead4	2025-02-18 08:04:25.73	2025-02-18 08:03:31.546
71	6	#99f6e4	2025-02-18 08:04:25.73	2025-02-18 08:03:32.579
74	เขียว-เขียวเข้ม	#0d9488-#0d9488-#083344	2025-02-18 08:33:46.04	2025-02-18 08:31:39.443
75	นางเงือก	#e11d48-#f9a8d4-#7dd3fc	2025-02-18 09:01:38.443	2025-02-18 08:58:43.349
76	มนุษย์อวกาศ	#bae6fd-#0ea5e9-#0369a1	2025-02-18 09:01:38.443	2025-02-18 08:58:43.55
77	จระเข้	#7dd3fc-#6ee7b7-#34d399	2025-02-18 09:01:38.443	2025-02-18 08:58:44.404
78	เจ้าหญิง	#fde047-#e879f9-#c084fc	2025-02-18 09:01:38.443	2025-02-18 08:58:44.563
79	ฉลาม	#67e8f9-#22d3ee-#22d3ee	2025-02-18 09:01:38.443	2025-02-18 08:58:44.699
80	ปลาหมึก	#fde047-#fbbf24-#0a0a0a	2025-02-18 09:01:38.443	2025-02-18 08:58:47.107
73	ชมพู-เขียว	#9d174d-#22c55e-#0f766e	2025-02-18 08:33:46.04	2025-02-18 09:08:18.809
72	แดง-น้ำเงิน	#991b1b-#0ea5e9-#082f49	2025-02-18 08:33:46.04	2025-02-18 09:08:18.809
81	ยูนิคอร์น	#eff6ff-#f472b6-#7dd3fc	2025-02-18 09:24:58.879	2025-02-18 09:23:33.15
82	ปู	#ef4444	2025-02-18 09:24:58.879	2025-02-18 09:24:01.558
83	ฟลามิงโก้	#fda4af	2025-02-18 09:24:58.879	2025-02-18 09:24:19.06
84	นก	#292524-#f59e0b-#fde047	2025-02-18 09:31:22.928	2025-02-18 09:30:48.459
86	น้ำตาลอ่อน	#DCCEAC	2025-02-18 16:19:44.541	2025-02-18 16:18:00.397
87	น้ำตาลเข้ม	#36210E	2025-02-18 16:19:44.541	2025-02-18 16:18:17.204
88	เป็ดเหลือง	#ef4444-#ef4444-#fde047	2025-02-19 05:40:53.533	2025-02-19 05:39:21.692
89	สับปะรด	#d9f99d-#bef264-#fde047	2025-02-19 05:40:53.533	2025-02-19 05:39:37.028
90	ต้นมะพร้าว	#422006-#86efac-#4ade80	2025-02-19 05:42:33.073	2025-02-19 05:41:47.068
91	โดนัท	#fee2e2-#fca5a5-#f87171	2025-02-19 05:44:01.565	2025-02-19 05:43:32.722
92	TSK-01	#0ea5e9	2025-02-19 06:27:08.392	2025-02-19 06:26:12.486
93	TSK-04	#f472b6	2025-02-19 06:27:08.392	2025-02-19 06:26:12.648
94	TSK-06	#67e8f9	2025-02-19 06:27:08.392	2025-02-19 06:26:12.799
95	TSK-07	#fca5a5	2025-02-19 06:27:08.392	2025-02-19 06:26:13.123
96	TSK-08	#bbf7d0	2025-02-19 06:27:08.392	2025-02-19 06:26:13.52
97	TSK-15	#86efac	2025-02-19 06:27:08.392	2025-02-19 06:26:14.166
98	วาฬฟ้า	#99f6e4-#4ade80-#22d3ee	2025-02-19 06:37:30.278	2025-02-19 06:34:23.332
99	วาฬชมพู	#f9a8d4	2025-02-19 06:37:30.278	2025-02-19 06:34:23.485
100	สัตว์ทะเลชมพู	#60a5fa-#f472b6-#f9a8d4	2025-02-19 06:37:30.278	2025-02-19 06:34:23.645
101	สัตว์ทะเลน้ำเงิน	#1d4ed8	2025-02-19 06:37:30.278	2025-02-19 06:34:23.804
102	เต่าเขียว	#2dd4bf	2025-02-19 06:37:30.278	2025-02-19 06:34:23.964
66	1	#a3a3a3	2025-02-18 08:04:25.73	2025-05-28 03:53:03.102
104	ปลาดาวชมพู	#f472b6	2025-02-19 06:37:30.278	2025-02-19 06:34:24.26
105	ปลาดาวเหลือง	#fef08a-#fcd34d-#db2777	2025-02-19 06:37:30.278	2025-02-19 06:34:24.869
106	ฉลามเหลือง	#fde047	2025-02-19 06:37:30.278	2025-02-19 06:34:24.99
107	ฉลามน้ำเงิน 	#3b82f6	2025-02-19 06:37:30.278	2025-02-19 06:34:25.524
108	DRY-001	#f8fafc	2025-02-19 09:38:10.096	2025-02-19 09:36:29.567
109	DRY-002	#6b7280	2025-02-19 09:38:10.096	2025-02-19 09:36:29.729
110	DRY-003	#d4d4d8	2025-02-19 09:38:10.096	2025-02-19 09:36:31.623
111	DRY-004	#fcd34d	2025-02-19 09:38:10.096	2025-02-19 09:36:31.783
112	DRY-005	#2563eb	2025-02-19 09:38:10.096	2025-02-19 09:36:32.382
113	DRY-006	#059669-#facc15-#dc2626	2025-02-19 09:38:10.096	2025-02-19 09:36:32.878
114	แถบขาว	#f8fafc	2025-02-21 00:07:39.919	2025-02-21 00:04:53.794
115	แถบเขียว	#22c55e	2025-02-21 00:07:39.919	2025-02-21 00:04:53.983
116	แถบเหลือง	#fcd34d	2025-02-21 00:07:39.919	2025-02-21 00:04:54.134
117	แถบน้ำเงิน	#3b82f6	2025-02-21 00:07:39.919	2025-02-21 00:04:55.542
118	แถบแดง	#e11d48	2025-02-21 00:07:39.919	2025-02-21 00:04:59.27
119	แถบชมพู	#f472b6	2025-02-21 00:07:39.919	2025-02-21 00:05:00.025
120	Black	#09090b	2025-02-21 01:08:37.022	2025-02-21 01:08:21.429
121	White	#fafafa	2025-02-21 01:08:37.022	2025-02-21 01:08:21.557
122	Cream	#FFFFE7	2025-02-21 01:15:46.211	2025-02-21 01:13:54.948
123	Drak	#e0e7ff-#a5b4fc-#93c5fd	2025-02-21 01:15:46.211	2025-02-21 01:14:06.277
124	Pastel	#fff1f2-#fecdd3-#fda4af	2025-02-21 01:15:46.211	2025-02-21 01:14:20.151
125	Khakhi	#C3b091	2025-02-21 01:20:32.627	2025-02-21 01:19:56.299
126	Brown	#cdb496	2025-02-21 01:29:22.63	2025-02-21 01:28:03.147
127	White-Blue	#f0f9ff-#e0f2fe-#0284c7	2025-02-21 01:55:14.278	2025-02-21 01:54:40.671
128	Yellow-Red	#fde68a-#fcd34d-#ef4444	2025-02-21 02:47:59.292	2025-02-21 02:47:36.122
129	Purple	#6366f1	2025-02-21 03:04:05.535	2025-02-21 03:03:35.534
130	Red	#ef4444	2025-02-21 03:11:26.744	2025-02-21 03:11:01.563
131	Sky	#38bdf8	2025-02-21 03:11:26.744	2025-02-21 03:11:02.059
132	Navy	#0c4a6e	2025-02-21 03:26:12.946	2025-02-21 03:25:22.692
133	Beige	F5f5dc	2025-02-21 03:32:28.299	2025-02-21 03:32:16.714
134	Orange	#fb923c	2025-02-21 03:51:08.773	2025-02-21 03:50:54.305
135	Light Brown	#fed7aa	2025-02-21 04:41:40.388	2025-02-21 04:40:45.713
136	Fuchsia	#db2777	2025-02-21 04:41:40.388	2025-02-21 04:41:04.302
137	Gray	#4b5563	2025-02-22 01:23:32.492	2025-02-22 01:22:00.744
138	Light Green	#a3e635	2025-02-22 01:27:43.914	2025-02-22 01:27:29.214
139	Dark Green	#1a2e05	2025-02-22 01:47:35.036	2025-02-22 01:46:24.601
140	Light Blue	#bae6fd	2025-02-22 01:55:44.88	2025-02-22 01:55:31.431
141	Polyester	#d1fae5-#6ee7b7-#86efac	2025-02-22 03:07:03.439	2025-02-22 03:06:29.455
142	7	#e11d48	2025-02-22 03:57:55.17	2025-02-22 03:55:59.084
143	8	#db2777	2025-02-22 03:57:55.17	2025-02-22 03:55:59.732
145	10	#818cf8	2025-02-22 03:57:55.17	2025-02-22 03:56:00.036
146	11	#a5b4fc	2025-02-22 03:57:55.17	2025-02-22 03:56:00.196
147	12	#a5f3fc	2025-02-22 03:57:55.17	2025-02-22 03:56:00.34
148	13	#67e8f9	2025-02-22 03:57:55.17	2025-02-22 03:56:00.499
149	14	#5eead4	2025-02-22 03:57:55.17	2025-02-22 03:56:00.661
150	15	#2dd4bf	2025-02-22 03:57:55.17	2025-02-22 03:56:02.244
151	16	#86efac	2025-02-22 03:57:55.17	2025-02-22 03:56:02.388
153	18	#65a30d	2025-02-22 03:57:55.17	2025-02-22 03:56:02.692
156	21	#ca8a04	2025-02-22 03:57:55.17	2025-02-22 03:56:03.156
157	22	#9a3412	2025-02-22 03:57:55.17	2025-02-22 03:56:03.74
158	1000	#fde047	2025-03-04 02:08:10.338	2025-03-04 02:04:35.962
159	1001	#38bdf8	2025-03-04 02:08:10.338	2025-03-04 02:04:36.202
160	1002	#f472b6	2025-03-04 02:08:10.338	2025-03-04 02:04:36.587
161	กรม	#075985	2025-03-04 04:53:49.056	2025-03-04 04:53:15.1
162	ชมพู-ฟ้า	#f9a8d4-#ec4899-#38bdf8	2025-03-09 18:43:30.046	2025-03-09 18:42:20.041
163	การ์ตูนฟ้า	#7dd3fc-#38bdf8-#1d4ed8	2025-03-09 19:12:09.537	2025-03-09 19:11:05.522
103	หมึกเขียว	#2dd4bf	2025-02-19 06:37:30.278	2025-03-10 01:05:21.507
164	SP-001	#c7d2fe	2025-03-10 02:11:39.697	2025-03-10 02:10:28.267
165	SP-002	#a5b4fc	2025-03-10 02:11:39.697	2025-03-10 02:10:28.429
166	SP-003	#818cf8	2025-03-10 02:11:39.697	2025-03-10 02:10:28.58
167	SP-004	#6366f1	2025-03-10 02:11:39.697	2025-03-10 02:10:28.724
168	SP-005	#4f46e5	2025-03-10 02:11:39.697	2025-03-10 02:10:29.374
169	Light Pink	#fbcfe8	2025-03-10 04:58:29.597	2025-03-10 04:57:31.132
170	เขียวตอง	#bef264	2025-03-10 06:56:12.119	2025-03-10 06:53:36.926
171	Pink-White	#fef2f2-#fca5a5-#f9a8d4	2025-03-10 07:01:14.521	2025-03-10 06:57:51.955
172	Neon	#a3e635	2025-03-10 07:01:14.521	2025-03-10 06:57:52.116
173	Purple-Blue	#a78bfa-#6d28d9-#3b82f6	2025-03-10 07:01:14.521	2025-03-10 06:57:52.668
174	Dark Pink	#be185d	2025-03-10 07:05:22.871	2025-03-10 07:04:53.675
175	Blue Ocean	#a5f3fc	2025-03-10 08:34:43.829	2025-03-10 08:33:46.794
176	ตุ๊กๆไทย	#d9f99d-#22c55e-#84cc16	2025-05-10 07:05:08.805	2025-05-10 07:04:03.436
177	มวยไทย	#fbcfe8	2025-05-10 07:05:08.805	2025-05-10 07:04:08.078
178	Dark Blue	#164e63	2025-05-10 07:05:08.805	2025-05-10 07:04:13.283
179	Coral	#ea580c	2025-05-10 07:05:08.805	2025-05-10 07:04:20.884
180	สายรุ้ง+กลิตเตอร์	#ecfccb-#fbbf24-#f87171	2025-05-10 07:05:08.805	2025-05-10 07:04:25.284
181	ชมพู-ขาว	#fda4af-#fecdd3-#f8fafc	2025-05-10 07:05:08.805	2025-05-10 07:04:29.932
182	ฟ้า-ขาว	#38bdf8-#bae6fd-#f8fafc	2025-05-10 07:05:08.805	2025-05-10 07:04:34.115
183	ชมพูอ่อน	#fecdd3	2025-05-17 08:17:22.181	2025-05-17 08:16:45.085
184	บานเย็น	#f43f5e	2025-05-17 08:18:08.806	2025-05-17 08:17:58.721
185	กระต่าย	#fca5a5-#fb7185-#e11d48	2025-05-17 09:29:00.375	2025-05-17 09:28:19.301
144	9	#fb7185	2025-02-22 03:57:55.17	2025-05-28 03:53:30.567
155	20	#38bdf8	2025-02-22 03:57:55.17	2025-05-28 03:54:41.69
152	17	#fafaf9-#fff1f2-#f9a8d4	2025-02-22 03:57:55.17	2025-05-28 03:55:56.759
154	19	#2563eb	2025-02-22 03:57:55.17	2025-05-28 03:56:08.39
186	เขียวขี้ม้า	#059669	2025-05-28 06:47:17.396	2025-05-28 06:46:45.407
187	เขียวนีออน	#86efac	2025-05-28 07:03:17.42	2025-05-28 07:03:04.994
188	23	#bae6fd-#fffbeb-#fef9c3	2025-05-28 07:18:40.694	2025-05-28 07:17:12.32
189	24	#fecaca-#e0f2fe-#93c5fd	2025-05-28 07:18:40.694	2025-05-28 07:17:12.48
190	25	#fff1f2-#fecdd3-#f43f5e	2025-05-28 07:18:40.694	2025-05-28 07:17:12.959
191	Light Yellow	#fef9c3	2025-07-12 07:13:27.23	2025-07-12 07:12:54.228
192	4สี	#fef08a-#86efac-#fb7185	2025-07-15 04:29:42.192	2025-07-15 04:27:38.635
193	4ลาย	#fbbf24-#ef4444-#a78bfa	2025-07-15 04:29:42.192	2025-07-15 04:27:39.141
194	3สี	#fef08a-#4ade80-#f9a8d4	2025-07-15 04:29:42.192	2025-07-15 04:27:39.516
195	ฟ้า-เหลือง	#0ea5e9-#d9f99d-#fef08a	2025-09-02 03:03:16.261	2025-09-02 03:00:42.215
196	ชมพู-ยูนิคอร์น	#fda4af-#e9d5ff-#f472b6	2025-09-02 03:15:21.056	2025-09-02 03:14:53.139
197	Standard	#71717a	2025-11-01 04:36:30.981	2025-11-01 04:35:43.256
198	ชอคโกแลต	#422006	2025-11-22 04:34:48.581	2025-11-22 04:34:12.856
199	ดำ-น้ำตาล	#1c1917	2025-12-18 01:37:55.332	2025-12-18 01:37:08.465
\.


--
-- Data for Name: Products_Detail; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Products_Detail" (id, "productId", "createdAt", "updatedAt") FROM stdin;
1	1	2025-02-13 06:56:36.291	2025-02-13 06:56:17.436
2	2	2025-02-13 06:56:36.291	2025-02-13 06:56:18.901
3	3	2025-02-13 06:56:36.291	2025-02-13 06:56:19.268
4	4	2025-02-13 06:56:36.291	2025-02-13 06:56:19.427
5	5	2025-02-13 06:56:36.291	2025-02-13 06:56:19.891
6	6	2025-02-13 06:56:36.291	2025-02-13 06:56:20.043
7	7	2025-02-13 06:56:36.291	2025-02-13 06:56:20.66
8	8	2025-02-13 07:45:02.523	2025-02-13 07:44:46.081
9	9	2025-02-13 07:45:02.523	2025-02-13 07:44:46.842
10	10	2025-02-13 07:45:02.523	2025-02-13 07:44:47.345
13	11	2025-02-16 19:50:55.375	2025-02-16 19:50:32.301
14	12	2025-02-16 19:55:31.039	2025-02-16 19:54:36.484
15	13	2025-02-16 19:55:31.039	2025-02-16 19:54:56.302
16	14	2025-02-16 19:56:04.744	2025-02-16 19:55:34.666
17	15	2025-02-16 19:56:04.744	2025-02-16 19:55:51.294
18	17	2025-02-17 02:32:04.939	2025-02-17 02:28:06.272
19	18	2025-02-17 02:32:04.939	2025-02-17 02:28:24.231
20	19	2025-02-17 02:32:04.939	2025-02-17 02:28:25.896
22	20	2025-02-17 02:32:04.939	2025-02-17 02:28:26.664
24	21	2025-02-17 02:32:04.939	2025-02-17 02:29:48.703
25	22	2025-02-17 02:32:04.939	2025-02-17 02:29:48.846
26	23	2025-02-17 02:32:04.939	2025-02-17 02:29:49.006
27	24	2025-02-17 02:32:04.939	2025-02-17 02:29:50.567
28	25	2025-02-17 02:32:04.939	2025-02-17 02:29:50.711
29	26	2025-02-17 02:32:04.939	2025-02-17 02:31:17.726
30	27	2025-02-17 02:32:04.939	2025-02-17 02:31:50.847
31	28	2025-02-17 02:53:09.877	2025-02-17 02:52:52.36
32	29	2025-02-17 02:56:27.846	2025-02-17 02:55:32.851
33	30	2025-02-17 02:56:27.846	2025-02-17 02:55:33.393
34	31	2025-02-17 02:56:27.846	2025-02-17 02:55:34.104
35	32	2025-02-17 02:56:27.846	2025-02-17 02:55:36.129
36	239	2025-02-17 03:06:26.957	2025-02-17 03:05:37.029
37	240	2025-02-17 03:06:26.957	2025-02-17 03:05:37.181
38	241	2025-02-17 03:06:26.957	2025-02-17 03:05:37.797
39	34	2025-02-17 03:13:20.11	2025-02-17 03:12:34.867
40	33	2025-02-17 03:13:20.11	2025-02-17 03:12:53.035
41	35	2025-02-17 03:15:26.033	2025-02-17 03:14:33.803
42	36	2025-02-17 03:15:26.033	2025-02-17 03:14:35.186
43	37	2025-02-17 03:15:26.033	2025-02-17 03:14:37.626
44	38	2025-02-17 03:15:26.033	2025-02-17 03:14:38.011
45	39	2025-02-17 03:17:03.174	2025-02-17 03:16:23.266
46	40	2025-02-17 03:17:03.174	2025-02-17 03:16:23.562
47	41	2025-02-17 03:20:06.715	2025-02-17 03:19:19.979
48	42	2025-02-17 03:20:06.715	2025-02-17 03:19:20.121
49	43	2025-02-17 03:20:06.715	2025-02-17 03:19:22.305
50	44	2025-02-17 03:21:53.274	2025-02-17 03:21:10.106
51	45	2025-02-17 03:21:53.274	2025-02-17 03:21:10.273
52	46	2025-02-17 03:21:53.274	2025-02-17 03:21:10.416
53	47	2025-02-17 03:21:53.274	2025-02-17 03:21:10.552
54	48	2025-02-17 03:28:40.481	2025-02-17 03:28:12.223
55	49	2025-02-17 03:28:40.481	2025-02-17 03:28:12.391
56	50	2025-02-17 03:31:55.142	2025-02-17 03:31:41.623
57	51	2025-02-17 09:22:48.856	2025-02-17 09:21:32.499
58	52	2025-02-17 09:22:48.856	2025-02-17 09:21:48.564
59	53	2025-02-17 09:22:48.856	2025-02-17 09:21:51.098
60	54	2025-02-17 09:22:48.856	2025-02-17 09:21:58.643
61	57	2025-02-17 09:25:25.504	2025-02-17 09:24:38.426
62	58	2025-02-17 09:25:25.504	2025-02-17 09:24:44.57
63	59	2025-02-17 09:25:25.504	2025-02-17 09:24:44.715
64	60	2025-02-17 09:28:23.271	2025-02-17 09:27:57.689
65	61	2025-02-17 09:28:23.271	2025-02-17 09:27:57.856
66	62	2025-02-17 09:28:23.271	2025-02-17 09:27:58.585
67	63	2025-02-17 09:28:23.271	2025-02-17 09:27:59.042
68	64	2025-02-17 09:31:19.508	2025-02-17 09:30:52.088
70	66	2025-02-17 09:31:19.508	2025-02-17 09:30:52.657
71	67	2025-02-17 09:32:56.532	2025-02-17 09:32:27.295
72	68	2025-02-17 09:32:56.532	2025-02-17 09:32:27.537
73	69	2025-02-17 09:32:56.532	2025-02-17 09:32:27.937
74	70	2025-02-17 09:40:31.065	2025-02-17 09:38:31.574
76	71	2025-02-17 09:40:31.065	2025-02-17 09:38:34.286
78	72	2025-02-17 09:40:31.065	2025-02-17 09:38:37.134
79	73	2025-02-17 09:40:31.065	2025-02-17 09:38:37.286
80	74	2025-02-17 09:40:31.065	2025-02-17 09:38:37.726
81	75	2025-02-17 09:40:31.065	2025-02-17 09:38:37.878
82	76	2025-02-17 09:47:02.658	2025-02-17 09:45:47.348
84	78	2025-02-17 09:47:02.658	2025-02-17 09:45:48.436
85	79	2025-02-17 09:47:02.658	2025-02-17 09:45:56.492
86	80	2025-02-18 01:21:25.851	2025-02-18 01:16:38.44
87	81	2025-02-18 01:21:25.851	2025-02-18 01:16:38.616
88	82	2025-02-18 01:21:25.851	2025-02-18 01:16:39.432
89	83	2025-02-18 01:21:25.851	2025-02-18 01:16:40.16
90	84	2025-02-18 01:21:25.851	2025-02-18 01:17:46.417
91	85	2025-02-18 01:21:25.851	2025-02-18 01:17:46.584
92	86	2025-02-18 01:21:25.851	2025-02-18 01:17:47.224
93	87	2025-02-18 01:28:44.205	2025-02-18 01:28:10.614
94	88	2025-02-18 01:28:44.205	2025-02-18 01:28:10.766
95	89	2025-02-18 01:28:44.205	2025-02-18 01:28:10.925
96	90	2025-02-18 01:28:44.205	2025-02-18 01:28:11.357
97	91	2025-02-18 01:30:01.296	2025-02-18 01:29:40.58
98	231	2025-02-18 01:36:19.221	2025-02-18 01:34:48.091
99	232	2025-02-18 01:36:19.221	2025-02-18 01:35:35.972
100	233	2025-02-18 01:36:19.221	2025-02-18 01:35:41.635
101	234	2025-02-18 01:36:19.221	2025-02-18 01:35:46.238
102	235	2025-02-18 01:36:19.221	2025-02-18 01:35:46.387
103	236	2025-02-18 01:36:19.221	2025-02-18 01:35:46.875
104	242	2025-02-18 01:38:06.589	2025-02-18 01:37:37.18
107	245	2025-02-18 01:38:06.589	2025-02-18 01:37:38.362
108	96	2025-02-18 01:55:18.388	2025-02-18 01:54:51.453
112	100	2025-02-18 01:57:54.04	2025-02-18 01:56:50.333
113	101	2025-02-18 01:57:54.04	2025-02-18 01:56:50.485
114	102	2025-02-18 01:57:54.04	2025-02-18 01:56:50.645
115	103	2025-02-18 01:57:54.04	2025-02-18 01:56:52.421
116	104	2025-02-18 01:57:54.04	2025-02-18 01:56:52.565
117	105	2025-02-18 02:01:11.984	2025-02-18 01:59:45.39
118	106	2025-02-18 02:01:11.984	2025-02-18 01:59:47.124
119	107	2025-02-18 02:01:11.984	2025-02-18 01:59:49.74
120	108	2025-02-18 02:01:11.984	2025-02-18 01:59:50.317
121	109	2025-02-18 02:01:11.984	2025-02-18 01:59:52.7
122	110	2025-02-18 02:01:11.984	2025-02-18 01:59:53.125
123	117	2025-02-18 02:05:16.732	2025-02-18 02:04:22.275
124	118	2025-02-18 02:05:16.732	2025-02-18 02:04:22.451
125	119	2025-02-18 02:05:16.732	2025-02-18 02:04:23.715
126	120	2025-02-18 02:05:16.732	2025-02-18 02:04:23.858
127	121	2025-02-18 02:05:16.732	2025-02-18 02:04:24.979
128	122	2025-02-18 02:05:16.732	2025-02-18 02:04:25.875
129	123	2025-02-18 02:05:16.732	2025-02-18 02:04:26.475
130	124	2025-02-18 02:05:16.732	2025-02-18 02:04:27.171
131	125	2025-02-18 02:13:35.002	2025-02-18 02:12:42.833
132	126	2025-02-18 02:13:35.002	2025-02-18 02:12:42.984
133	127	2025-02-18 02:13:35.002	2025-02-18 02:12:43.496
134	128	2025-02-18 02:13:35.002	2025-02-18 02:12:43.976
135	130	2025-02-18 02:13:35.002	2025-02-18 02:12:44.122
136	132	2025-02-18 02:15:39.641	2025-02-18 02:14:41.409
137	133	2025-02-18 02:15:39.641	2025-02-18 02:14:41.568
138	134	2025-02-18 02:15:39.641	2025-02-18 02:14:42.899
139	135	2025-02-18 02:17:52.902	2025-02-18 02:17:10.647
140	136	2025-02-18 02:17:52.902	2025-02-18 02:17:10.831
141	137	2025-02-18 02:17:52.902	2025-02-18 02:17:12.751
142	138	2025-02-18 02:17:52.902	2025-02-18 02:17:12.895
143	129	2025-02-18 02:23:41.915	2025-02-18 02:19:35.447
144	131	2025-02-18 02:23:41.915	2025-02-18 02:19:35.608
145	139	2025-02-18 02:23:41.915	2025-02-18 02:19:35.759
146	140	2025-02-18 02:23:41.915	2025-02-18 02:19:36.393
147	141	2025-02-18 02:29:06.445	2025-02-18 02:27:40.389
151	145	2025-02-18 02:29:06.445	2025-02-18 02:28:34.652
155	149	2025-02-18 02:32:04.075	2025-02-18 02:31:04.795
156	150	2025-02-18 02:32:04.075	2025-02-18 02:31:04.963
157	151	2025-02-18 02:32:04.075	2025-02-18 02:31:05.573
158	152	2025-02-18 02:32:04.075	2025-02-18 02:31:05.724
159	153	2025-02-18 02:32:04.075	2025-02-18 02:31:06.563
160	154	2025-02-18 02:32:04.075	2025-02-18 02:31:07.595
161	155	2025-02-18 02:38:42.146	2025-02-18 02:37:48.826
162	156	2025-02-18 02:38:42.146	2025-02-18 02:37:48.985
163	157	2025-02-18 02:38:42.146	2025-02-18 02:37:49.138
164	158	2025-02-18 02:38:42.146	2025-02-18 02:37:50.259
165	159	2025-02-18 02:38:42.146	2025-02-18 02:37:50.401
166	160	2025-02-18 02:38:42.146	2025-02-18 02:37:50.554
167	161	2025-02-18 02:44:05.738	2025-02-18 02:43:16.104
168	162	2025-02-18 02:44:05.738	2025-02-18 02:43:16.248
169	163	2025-02-18 02:44:05.738	2025-02-18 02:43:16.408
170	164	2025-02-18 02:44:05.738	2025-02-18 02:43:17.088
171	165	2025-02-18 02:44:05.738	2025-02-18 02:43:17.232
172	166	2025-02-18 02:44:05.738	2025-02-18 02:43:17.376
173	171	2025-02-18 02:52:04.903	2025-02-18 02:45:57.888
174	173	2025-02-18 02:52:04.903	2025-02-18 02:46:00.271
175	174	2025-02-18 02:52:04.903	2025-02-18 02:46:00.439
176	175	2025-02-18 02:52:04.903	2025-02-18 02:46:00.631
177	246	2025-02-18 02:52:04.903	2025-02-18 02:46:01.184
178	247	2025-02-18 02:52:04.903	2025-02-18 02:46:01.359
179	255	2025-02-18 03:09:03.078	2025-02-18 03:08:35.657
180	256	2025-02-18 03:09:03.078	2025-02-18 03:08:35.825
181	176	2025-02-18 03:20:47.811	2025-02-18 03:20:13.814
182	257	2025-02-18 03:20:47.811	2025-02-18 03:20:26.374
183	258	2025-02-18 03:20:47.811	2025-02-18 03:20:26.519
184	177	2025-02-18 03:22:57.888	2025-02-18 03:21:55.533
185	178	2025-02-18 03:22:57.888	2025-02-18 03:21:57.277
186	179	2025-02-18 03:22:57.888	2025-02-18 03:21:57.437
187	180	2025-02-18 03:22:57.888	2025-02-18 03:21:57.574
188	181	2025-02-18 03:36:04.06	2025-02-18 03:35:17.873
189	259	2025-02-18 03:36:04.06	2025-02-18 03:35:18.291
190	260	2025-02-18 03:36:04.06	2025-02-18 03:35:18.449
191	261	2025-02-18 03:36:04.06	2025-02-18 03:35:18.81
192	182	2025-02-18 04:19:09.384	2025-02-18 04:17:41.968
193	183	2025-02-18 04:19:09.384	2025-02-18 04:17:43.047
194	184	2025-02-18 04:19:09.384	2025-02-18 04:17:43.286
195	248	2025-02-18 04:35:31.263	2025-02-18 04:34:53.609
196	249	2025-02-18 04:35:31.263	2025-02-18 04:34:53.754
197	250	2025-02-18 04:35:31.263	2025-02-18 04:34:53.898
198	251	2025-02-18 04:35:31.263	2025-02-18 04:34:54.593
199	252	2025-02-18 04:37:40.381	2025-02-18 04:37:21.201
200	253	2025-02-18 04:37:40.381	2025-02-18 04:37:21.345
201	254	2025-02-18 04:37:40.381	2025-02-18 04:37:22.594
202	185	2025-02-18 04:39:14.125	2025-02-18 04:38:56.21
203	187	2025-02-18 04:40:15.359	2025-02-18 04:40:01.033
204	188	2025-02-18 04:43:02.798	2025-02-18 04:42:37.631
205	262	2025-02-18 04:50:18.541	2025-02-18 04:49:53.885
206	263	2025-02-18 04:50:18.541	2025-02-18 04:49:54.013
207	264	2025-02-18 04:53:58.746	2025-02-18 04:53:51.941
208	265	2025-02-18 04:53:58.746	2025-02-18 04:53:52.076
209	189	2025-02-18 04:57:42.692	2025-02-18 04:56:28.572
210	190	2025-02-18 04:57:42.692	2025-02-18 04:56:28.724
211	191	2025-02-18 04:57:42.692	2025-02-18 04:56:28.875
212	192	2025-02-18 04:57:42.692	2025-02-18 04:56:29.015
213	193	2025-02-18 04:57:42.692	2025-02-18 04:56:29.156
214	194	2025-02-18 04:57:42.692	2025-02-18 04:56:29.652
215	195	2025-02-18 06:05:27.996	2025-02-18 06:01:45.622
218	198	2025-02-18 06:05:27.996	2025-02-18 06:01:48.054
221	202	2025-02-18 06:05:27.996	2025-02-18 06:01:53.478
224	205	2025-02-18 06:05:27.996	2025-02-18 06:01:56.454
226	207	2025-02-18 06:05:27.996	2025-02-18 06:02:00.173
227	208	2025-02-18 06:05:27.996	2025-02-18 06:02:03.085
229	210	2025-02-18 06:05:27.996	2025-02-18 06:02:03.935
233	214	2025-02-18 06:12:19.866	2025-02-18 06:10:18.157
234	215	2025-02-18 06:12:19.866	2025-02-18 06:10:18.3
235	216	2025-02-18 06:12:19.866	2025-02-18 06:10:19.196
236	217	2025-02-18 06:12:19.866	2025-02-18 06:10:19.341
237	218	2025-02-18 06:12:19.866	2025-02-18 06:10:20.212
238	219	2025-02-18 06:12:19.866	2025-02-18 06:10:20.374
240	221	2025-02-18 06:20:09.999	2025-02-18 06:18:42.032
241	222	2025-02-18 06:20:09.999	2025-02-18 06:18:42.183
242	223	2025-02-18 06:20:09.999	2025-02-18 06:19:27.175
243	224	2025-02-18 06:20:09.999	2025-02-18 06:19:27.319
244	225	2025-02-18 06:20:09.999	2025-02-18 06:19:27.745
245	226	2025-02-18 06:20:09.999	2025-02-18 06:19:27.887
246	266	2025-02-18 06:37:18.127	2025-02-18 06:36:58.514
247	267	2025-02-18 06:37:18.127	2025-02-18 06:36:58.65
248	268	2025-02-18 06:37:18.127	2025-02-18 06:36:59.179
250	269	2025-02-18 06:46:58.165	2025-02-18 06:46:54.112
251	270	2025-02-18 06:49:55.539	2025-02-18 06:49:49.207
252	271	2025-02-18 07:07:10.078	2025-02-18 07:06:31.228
253	272	2025-02-18 07:07:10.078	2025-02-18 07:06:31.739
254	273	2025-02-18 07:07:10.078	2025-02-18 07:06:31.899
255	274	2025-02-18 07:07:10.078	2025-02-18 07:06:32.06
256	275	2025-02-18 07:07:10.078	2025-02-18 07:06:32.242
257	276	2025-02-18 07:07:10.078	2025-02-18 07:06:32.396
258	277	2025-02-18 07:07:10.078	2025-02-18 07:06:32.58
259	278	2025-02-18 07:07:10.078	2025-02-18 07:06:32.771
260	279	2025-02-18 07:07:10.078	2025-02-18 07:06:33.099
261	280	2025-02-18 07:07:10.078	2025-02-18 07:06:33.94
262	281	2025-02-18 08:05:57.857	2025-02-18 08:04:42.818
263	282	2025-02-18 08:05:57.857	2025-02-18 08:04:42.97
264	283	2025-02-18 08:05:57.857	2025-02-18 08:04:43.14
265	284	2025-02-18 08:05:57.857	2025-02-18 08:04:43.299
266	285	2025-02-18 08:05:57.857	2025-02-18 08:04:43.442
267	286	2025-02-18 08:05:57.857	2025-02-18 08:04:43.603
268	287	2025-02-18 08:05:57.857	2025-02-18 08:04:43.771
269	288	2025-02-18 08:05:57.857	2025-02-18 08:04:43.908
270	289	2025-02-18 08:05:57.857	2025-02-18 08:04:44.1
271	290	2025-02-18 08:05:57.857	2025-02-18 08:04:44.26
272	291	2025-02-18 08:05:57.857	2025-02-18 08:04:44.466
273	292	2025-02-18 08:05:57.857	2025-02-18 08:04:44.643
274	293	2025-02-18 08:05:57.857	2025-02-18 08:04:45.02
275	294	2025-02-18 08:05:57.857	2025-02-18 08:04:45.162
276	295	2025-02-18 08:05:57.857	2025-02-18 08:04:45.7
277	301	2025-02-18 08:11:25.845	2025-02-18 08:10:47.77
278	300	2025-02-18 08:11:25.845	2025-02-18 08:10:47.937
279	299	2025-02-18 08:11:25.845	2025-02-18 08:10:48.098
280	298	2025-02-18 08:11:25.845	2025-02-18 08:10:48.258
281	297	2025-02-18 08:11:25.845	2025-02-18 08:10:48.418
282	296	2025-02-18 08:11:25.845	2025-02-18 08:10:48.731
283	302	2025-02-18 08:20:51.514	2025-02-18 08:20:25.19
284	303	2025-02-18 08:20:51.514	2025-02-18 08:20:25.342
285	304	2025-02-18 08:20:51.514	2025-02-18 08:20:25.495
286	305	2025-02-18 08:20:51.514	2025-02-18 08:20:25.646
287	306	2025-02-18 08:20:51.514	2025-02-18 08:20:25.79
288	307	2025-02-18 08:20:51.514	2025-02-18 08:20:25.943
289	308	2025-02-18 08:20:51.514	2025-02-18 08:20:26.447
290	309	2025-02-18 08:38:49.808	2025-02-18 08:38:34.538
291	310	2025-02-18 08:38:49.808	2025-02-18 08:38:34.698
292	311	2025-02-18 08:38:49.808	2025-02-18 08:38:34.849
293	312	2025-02-18 09:03:05.045	2025-02-18 09:02:35.108
294	313	2025-02-18 09:03:05.045	2025-02-18 09:02:35.258
295	314	2025-02-18 09:03:05.045	2025-02-18 09:02:35.402
296	315	2025-02-18 09:03:05.045	2025-02-18 09:02:35.555
297	316	2025-02-18 09:03:05.045	2025-02-18 09:02:36.218
298	317	2025-02-18 09:03:05.045	2025-02-18 09:02:36.378
299	318	2025-02-18 09:22:27.01	2025-02-18 09:22:16.805
300	319	2025-02-18 09:22:27.01	2025-02-18 09:22:16.957
301	320	2025-02-18 09:22:27.01	2025-02-18 09:22:17.097
302	321	2025-02-18 09:26:21.859	2025-02-18 09:26:06.391
303	322	2025-02-18 09:26:21.859	2025-02-18 09:26:07.526
304	323	2025-02-18 09:26:21.859	2025-02-18 09:26:07.7
305	324	2025-02-18 09:26:21.859	2025-02-18 09:26:07.86
306	325	2025-02-18 09:37:07.354	2025-02-18 09:36:52.474
307	326	2025-02-18 09:37:07.354	2025-02-18 09:36:52.626
308	327	2025-02-18 09:37:07.354	2025-02-18 09:36:52.793
309	328	2025-02-18 09:37:07.354	2025-02-18 09:36:53.154
310	329	2025-02-18 09:37:07.354	2025-02-18 09:36:53.29
311	330	2025-02-18 09:48:06.45	2025-02-18 09:47:56.599
313	332	2025-02-18 09:51:02.39	2025-02-18 09:50:59.198
314	336	2025-02-18 16:06:27.438	2025-02-18 16:06:13.458
315	337	2025-02-18 16:13:50.293	2025-02-18 16:13:36.507
316	338	2025-02-18 16:32:41.883	2025-02-18 16:31:51.955
317	339	2025-02-18 16:32:41.883	2025-02-18 16:31:52.136
318	340	2025-02-18 16:32:41.883	2025-02-18 16:31:52.309
319	341	2025-02-18 16:32:41.883	2025-02-18 16:31:52.497
320	342	2025-02-18 16:32:41.883	2025-02-18 16:31:52.694
321	343	2025-02-18 16:32:41.883	2025-02-18 16:31:53.197
322	344	2025-02-18 16:32:41.883	2025-02-18 16:31:54.657
323	345	2025-02-18 16:51:08.569	2025-02-18 16:49:49.374
324	346	2025-02-18 16:51:08.569	2025-02-18 16:49:49.546
325	347	2025-02-18 16:51:08.569	2025-02-18 16:49:52.394
326	348	2025-02-18 16:51:08.569	2025-02-18 16:49:52.564
327	349	2025-02-19 01:15:42.801	2025-02-19 01:15:05.414
328	350	2025-02-19 01:15:42.801	2025-02-19 01:15:05.599
329	351	2025-02-19 01:15:42.801	2025-02-19 01:15:06.511
330	352	2025-02-19 01:15:42.801	2025-02-19 01:15:06.663
331	355	2025-02-19 05:41:41.055	2025-02-19 05:41:28.739
332	353	2025-02-19 05:45:59.349	2025-02-19 05:45:54.538
333	354	2025-02-19 05:46:51.057	2025-02-19 05:46:27.617
334	356	2025-02-19 05:46:51.057	2025-02-19 05:46:48.114
335	357	2025-02-19 06:03:55.645	2025-02-19 06:03:47.431
336	358	2025-02-19 06:03:55.645	2025-02-19 06:03:47.55
337	359	2025-02-19 06:09:38.538	2025-02-19 06:09:10.373
338	360	2025-02-19 06:09:38.538	2025-02-19 06:09:10.491
339	361	2025-02-19 06:12:47.277	2025-02-19 06:12:41.057
340	362	2025-02-19 06:16:20.263	2025-02-19 06:16:09.13
341	363	2025-02-19 06:16:20.263	2025-02-19 06:16:09.273
342	364	2025-02-19 06:27:50.747	2025-02-19 06:27:29.102
343	365	2025-02-19 06:27:50.747	2025-02-19 06:27:29.262
344	366	2025-02-19 06:27:50.747	2025-02-19 06:27:29.423
345	367	2025-02-19 06:27:50.747	2025-02-19 06:27:29.583
346	368	2025-02-19 06:27:50.747	2025-02-19 06:27:29.751
347	369	2025-02-19 06:27:50.747	2025-02-19 06:27:31.143
348	370	2025-02-19 06:46:11.378	2025-02-19 06:45:42.281
349	371	2025-02-19 06:46:11.378	2025-02-19 06:45:42.441
350	372	2025-02-19 06:46:11.378	2025-02-19 06:45:42.593
351	373	2025-02-19 06:46:11.378	2025-02-19 06:45:42.755
352	374	2025-02-19 06:46:11.378	2025-02-19 06:45:42.914
353	375	2025-02-19 06:46:11.378	2025-02-19 06:45:43.298
354	376	2025-02-19 06:46:11.378	2025-02-19 06:45:43.449
355	377	2025-02-19 06:46:11.378	2025-02-19 06:45:43.604
356	378	2025-02-19 06:46:11.378	2025-02-19 06:45:44.793
357	379	2025-02-19 06:46:11.378	2025-02-19 06:45:45.241
358	380	2025-02-19 09:44:20.776	2025-02-19 09:44:03.767
359	381	2025-02-19 09:44:20.776	2025-02-19 09:44:03.942
360	382	2025-02-19 09:44:20.776	2025-02-19 09:44:04.086
361	383	2025-02-19 09:44:20.776	2025-02-19 09:44:04.509
362	384	2025-02-19 09:44:20.776	2025-02-19 09:44:04.645
363	385	2025-02-19 09:44:20.776	2025-02-19 09:44:05.173
364	672	2025-02-21 00:08:28.752	2025-02-21 00:08:02.081
365	673	2025-02-21 00:08:28.752	2025-02-21 00:08:02.238
366	674	2025-02-21 00:08:28.752	2025-02-21 00:08:02.388
367	675	2025-02-21 00:08:28.752	2025-02-21 00:08:02.885
368	386	2025-02-21 01:09:18.364	2025-02-21 01:08:46.071
369	387	2025-02-21 01:09:18.364	2025-02-21 01:08:58.007
370	388	2025-02-21 01:09:18.364	2025-02-21 01:08:58.149
371	389	2025-02-21 01:09:18.364	2025-02-21 01:08:58.75
372	390	2025-02-21 01:16:16.951	2025-02-21 01:15:54.59
373	391	2025-02-21 01:16:16.951	2025-02-21 01:15:54.732
374	392	2025-02-21 01:16:16.951	2025-02-21 01:15:55.187
375	393	2025-02-21 01:16:16.951	2025-02-21 01:15:55.347
376	394	2025-02-21 01:19:14.798	2025-02-21 01:18:51.884
377	395	2025-02-21 01:19:14.798	2025-02-21 01:18:52.044
378	396	2025-02-21 01:19:14.798	2025-02-21 01:18:52.572
379	397	2025-02-21 01:19:14.798	2025-02-21 01:18:52.723
380	398	2025-02-21 01:23:29.401	2025-02-21 01:23:03.725
381	399	2025-02-21 01:23:29.401	2025-02-21 01:23:03.882
382	400	2025-02-21 01:23:29.401	2025-02-21 01:23:04.034
383	401	2025-02-21 01:23:29.401	2025-02-21 01:23:04.417
384	402	2025-02-21 01:26:04.675	2025-02-21 01:25:36.321
385	403	2025-02-21 01:26:04.675	2025-02-21 01:25:36.794
386	404	2025-02-21 01:26:04.675	2025-02-21 01:25:36.97
387	405	2025-02-21 01:26:04.675	2025-02-21 01:25:37.361
388	406	2025-02-21 01:32:44.474	2025-02-21 01:31:55.691
389	407	2025-02-21 01:32:44.474	2025-02-21 01:31:55.871
390	408	2025-02-21 01:32:44.474	2025-02-21 01:31:56.015
391	409	2025-02-21 01:32:44.474	2025-02-21 01:31:56.36
392	410	2025-02-21 01:35:49.725	2025-02-21 01:34:59.272
393	411	2025-02-21 01:35:49.725	2025-02-21 01:34:59.439
394	412	2025-02-21 01:35:49.725	2025-02-21 01:34:59.591
395	413	2025-02-21 01:35:49.725	2025-02-21 01:35:00.154
396	414	2025-02-21 01:38:29.044	2025-02-21 01:38:10.472
397	415	2025-02-21 01:38:29.044	2025-02-21 01:38:10.606
398	416	2025-02-21 01:40:08.04	2025-02-21 01:39:40.854
399	417	2025-02-21 01:40:08.04	2025-02-21 01:39:41.006
400	418	2025-02-21 01:40:08.04	2025-02-21 01:39:41.27
401	419	2025-02-21 01:40:08.04	2025-02-21 01:39:41.511
402	420	2025-02-21 01:42:55.31	2025-02-21 01:42:30.446
403	421	2025-02-21 01:42:55.31	2025-02-21 01:42:30.605
404	422	2025-02-21 01:42:55.31	2025-02-21 01:42:30.766
405	423	2025-02-21 01:42:55.31	2025-02-21 01:42:31.99
406	424	2025-02-21 01:46:08.089	2025-02-21 01:46:01.021
407	425	2025-02-21 01:46:08.089	2025-02-21 01:46:01.181
408	426	2025-02-21 01:48:33.558	2025-02-21 01:47:53.98
409	427	2025-02-21 01:48:33.558	2025-02-21 01:47:54.141
410	428	2025-02-21 01:48:33.558	2025-02-21 01:47:54.337
411	429	2025-02-21 01:48:33.558	2025-02-21 01:47:54.74
412	430	2025-02-21 01:50:52.898	2025-02-21 01:50:31.603
413	431	2025-02-21 01:50:52.898	2025-02-21 01:50:31.756
414	432	2025-02-21 01:50:52.898	2025-02-21 01:50:31.908
415	433	2025-02-21 01:50:52.898	2025-02-21 01:50:32.043
416	434	2025-02-21 01:54:19.467	2025-02-21 01:53:52.387
417	435	2025-02-21 01:54:19.467	2025-02-21 01:53:52.603
418	436	2025-02-21 01:54:19.467	2025-02-21 01:53:52.755
419	437	2025-02-21 01:54:19.467	2025-02-21 01:53:53.196
420	438	2025-02-21 01:57:09.238	2025-02-21 01:56:42.946
421	439	2025-02-21 01:57:09.238	2025-02-21 01:56:43.108
422	440	2025-02-21 01:57:09.238	2025-02-21 01:56:43.675
423	441	2025-02-21 01:57:09.238	2025-02-21 01:56:44.242
424	442	2025-02-21 02:06:05.429	2025-02-21 02:05:45.281
425	443	2025-02-21 02:06:05.429	2025-02-21 02:05:45.448
426	444	2025-02-21 02:06:05.429	2025-02-21 02:05:45.689
427	445	2025-02-21 02:06:05.429	2025-02-21 02:05:46.081
428	446	2025-02-21 02:08:08.031	2025-02-21 02:07:45.689
429	447	2025-02-21 02:08:08.031	2025-02-21 02:07:45.832
430	448	2025-02-21 02:08:08.031	2025-02-21 02:07:45.992
431	449	2025-02-21 02:08:08.031	2025-02-21 02:07:46.409
432	450	2025-02-21 02:09:59.675	2025-02-21 02:09:48.489
433	451	2025-02-21 02:09:59.675	2025-02-21 02:09:48.647
434	452	2025-02-21 02:09:59.675	2025-02-21 02:09:48.825
435	453	2025-02-21 02:09:59.675	2025-02-21 02:09:49.288
436	454	2025-02-21 02:12:16.462	2025-02-21 02:11:44.208
437	455	2025-02-21 02:12:16.462	2025-02-21 02:11:44.351
438	456	2025-02-21 02:13:23.962	2025-02-21 02:13:04.728
439	457	2025-02-21 02:13:23.962	2025-02-21 02:13:04.87
440	458	2025-02-21 02:13:23.962	2025-02-21 02:13:05.935
441	459	2025-02-21 02:13:23.962	2025-02-21 02:13:06.248
442	460	2025-02-21 02:15:09.575	2025-02-21 02:14:47.222
443	461	2025-02-21 02:15:09.575	2025-02-21 02:14:47.407
444	462	2025-02-21 02:15:09.575	2025-02-21 02:14:47.896
445	463	2025-02-21 02:15:09.575	2025-02-21 02:14:48.088
446	464	2025-02-21 02:16:34.641	2025-02-21 02:16:06.175
447	465	2025-02-21 02:19:16.33	2025-02-21 02:18:04.165
448	466	2025-02-21 02:19:16.33	2025-02-21 02:18:04.318
449	467	2025-02-21 02:19:16.33	2025-02-21 02:18:04.669
450	468	2025-02-21 02:19:16.33	2025-02-21 02:18:05.055
451	469	2025-02-21 02:22:14.422	2025-02-21 02:22:01.301
452	470	2025-02-21 02:22:14.422	2025-02-21 02:22:01.461
453	471	2025-02-21 02:22:14.422	2025-02-21 02:22:01.62
454	472	2025-02-21 02:22:14.422	2025-02-21 02:22:02.004
455	473	2025-02-21 02:24:26.059	2025-02-21 02:23:59.19
456	474	2025-02-21 02:24:26.059	2025-02-21 02:23:59.349
457	475	2025-02-21 02:24:26.059	2025-02-21 02:23:59.789
458	476	2025-02-21 02:24:26.059	2025-02-21 02:23:59.965
459	477	2025-02-21 02:29:49.658	2025-02-21 02:29:00.989
460	478	2025-02-21 02:29:49.658	2025-02-21 02:29:01.156
461	479	2025-02-21 02:29:49.658	2025-02-21 02:29:01.579
462	480	2025-02-21 02:29:49.658	2025-02-21 02:29:01.892
463	481	2025-02-21 02:36:52.801	2025-02-21 02:36:34.921
464	482	2025-02-21 02:36:52.801	2025-02-21 02:36:35.074
465	483	2025-02-21 02:36:52.801	2025-02-21 02:36:35.226
466	484	2025-02-21 02:36:52.801	2025-02-21 02:36:35.619
467	485	2025-02-21 02:38:21.49	2025-02-21 02:37:57.353
468	486	2025-02-21 02:38:21.49	2025-02-21 02:37:57.514
469	487	2025-02-21 02:38:21.49	2025-02-21 02:37:57.657
470	488	2025-02-21 02:38:21.49	2025-02-21 02:37:58.098
471	489	2025-02-21 02:41:51.135	2025-02-21 02:39:39.809
472	490	2025-02-21 02:41:51.135	2025-02-21 02:39:39.953
473	491	2025-02-21 02:41:51.135	2025-02-21 02:39:40.114
474	492	2025-02-21 02:41:51.135	2025-02-21 02:39:40.49
475	493	2025-02-21 02:44:12.348	2025-02-21 02:43:52.443
476	494	2025-02-21 02:44:12.348	2025-02-21 02:43:52.584
477	495	2025-02-21 02:44:12.348	2025-02-21 02:43:52.737
478	496	2025-02-21 02:44:12.348	2025-02-21 02:43:53.104
479	497	2025-02-21 02:45:56.897	2025-02-21 02:45:44.08
480	498	2025-02-21 02:45:56.897	2025-02-21 02:45:44.248
481	499	2025-02-21 02:45:56.897	2025-02-21 02:45:44.569
482	500	2025-02-21 03:01:39.956	2025-02-21 03:01:30.9
483	501	2025-02-21 03:01:39.956	2025-02-21 03:01:31.052
484	502	2025-02-21 03:01:39.956	2025-02-21 03:01:31.204
485	503	2025-02-21 03:01:39.956	2025-02-21 03:01:31.652
486	504	2025-02-21 03:12:02.344	2025-02-21 03:11:32.683
487	505	2025-02-21 03:12:02.344	2025-02-21 03:11:32.826
488	506	2025-02-21 03:12:02.344	2025-02-21 03:11:32.971
489	507	2025-02-21 03:12:02.344	2025-02-21 03:11:33.723
490	508	2025-02-21 03:23:09.797	2025-02-21 03:22:48.618
491	509	2025-02-21 03:23:09.797	2025-02-21 03:22:48.759
492	510	2025-02-21 03:23:09.797	2025-02-21 03:22:48.92
493	511	2025-02-21 03:23:09.797	2025-02-21 03:22:49.055
494	544	2025-02-21 03:26:51.604	2025-02-21 03:26:21.967
495	545	2025-02-21 03:26:51.604	2025-02-21 03:26:22.119
496	546	2025-02-21 03:26:51.604	2025-02-21 03:26:22.886
497	547	2025-02-21 03:26:51.604	2025-02-21 03:26:24.31
498	548	2025-02-21 03:28:54.293	2025-02-21 03:28:46.158
499	549	2025-02-21 03:32:56.813	2025-02-21 03:32:40.118
500	550	2025-02-21 03:32:56.813	2025-02-21 03:32:40.278
501	551	2025-02-21 03:32:56.813	2025-02-21 03:32:40.421
502	552	2025-02-21 03:32:56.813	2025-02-21 03:32:40.813
503	553	2025-02-21 03:38:30.932	2025-02-21 03:38:10.877
504	554	2025-02-21 03:38:30.932	2025-02-21 03:38:11.02
505	555	2025-02-21 03:38:30.932	2025-02-21 03:38:11.172
506	556	2025-02-21 03:38:30.932	2025-02-21 03:38:11.508
507	557	2025-02-21 03:49:29.79	2025-02-21 03:49:19.34
508	558	2025-02-21 03:49:29.79	2025-02-21 03:49:19.498
509	559	2025-02-21 03:53:56.503	2025-02-21 03:53:37.185
510	560	2025-02-21 03:53:56.503	2025-02-21 03:53:37.338
511	561	2025-02-21 03:53:56.503	2025-02-21 03:53:37.48
512	562	2025-02-21 03:53:56.503	2025-02-21 03:53:37.626
513	563	2025-02-21 04:08:09.206	2025-02-21 04:07:11.141
514	564	2025-02-21 04:08:09.206	2025-02-21 04:07:11.294
515	565	2025-02-21 04:08:09.206	2025-02-21 04:07:11.903
516	566	2025-02-21 04:08:09.206	2025-02-21 04:07:12.038
517	567	2025-02-21 04:08:09.206	2025-02-21 04:07:12.767
518	568	2025-02-21 04:08:09.206	2025-02-21 04:07:12.902
519	569	2025-02-21 04:08:09.206	2025-02-21 04:07:13.061
520	570	2025-02-21 04:08:09.206	2025-02-21 04:07:13.846
521	571	2025-02-21 04:08:09.206	2025-02-21 04:07:18.439
522	572	2025-02-21 04:23:27.642	2025-02-21 04:22:14.042
523	573	2025-02-21 04:23:27.642	2025-02-21 04:22:14.205
524	574	2025-02-21 04:23:27.642	2025-02-21 04:22:14.938
525	575	2025-02-21 04:23:27.642	2025-02-21 04:22:16.803
526	576	2025-02-21 04:23:27.642	2025-02-21 04:22:16.964
527	577	2025-02-21 04:23:27.642	2025-02-21 04:22:17.123
528	578	2025-02-21 04:23:27.642	2025-02-21 04:22:17.731
529	579	2025-02-21 04:48:12.815	2025-02-21 04:46:46.639
530	580	2025-02-21 04:48:12.815	2025-02-21 04:46:46.797
531	581	2025-02-21 04:48:12.815	2025-02-21 04:46:46.966
532	582	2025-02-21 04:48:12.815	2025-02-21 04:46:47.246
533	583	2025-02-21 04:48:12.815	2025-02-21 04:46:47.405
534	584	2025-02-21 04:48:12.815	2025-02-21 04:46:47.55
535	585	2025-02-21 04:48:12.815	2025-02-21 04:46:47.693
536	586	2025-02-21 04:48:12.815	2025-02-21 04:46:48.189
537	587	2025-02-21 04:48:12.815	2025-02-21 04:46:48.477
538	588	2025-02-22 01:46:11.771	2025-02-22 01:42:00.544
539	589	2025-02-22 01:46:11.771	2025-02-22 01:42:01.425
540	590	2025-02-22 01:46:11.771	2025-02-22 01:44:56.401
541	591	2025-02-22 01:46:11.771	2025-02-22 01:44:56.984
542	592	2025-02-22 01:52:45.083	2025-02-22 01:52:37.321
543	593	2025-02-22 01:52:45.083	2025-02-22 01:52:37.48
544	594	2025-02-22 01:56:37.694	2025-02-22 01:55:59.134
545	595	2025-02-22 01:56:37.694	2025-02-22 01:55:59.311
546	596	2025-02-22 01:56:37.694	2025-02-22 01:55:59.623
547	597	2025-02-22 01:56:37.694	2025-02-22 01:55:59.982
548	598	2025-02-22 02:08:00.316	2025-02-22 02:07:47.284
549	599	2025-02-22 02:08:00.316	2025-02-22 02:07:47.804
550	600	2025-02-22 02:08:00.316	2025-02-22 02:07:48.419
551	601	2025-02-22 02:08:00.316	2025-02-22 02:07:49.283
552	602	2025-02-22 02:16:36.582	2025-02-22 02:16:15.943
553	603	2025-02-22 02:16:36.582	2025-02-22 02:16:16.09
554	604	2025-02-22 02:16:36.582	2025-02-22 02:16:16.634
555	605	2025-02-22 02:38:51.032	2025-02-22 02:38:28.399
556	606	2025-02-22 02:38:51.032	2025-02-22 02:38:28.541
557	607	2025-02-22 02:38:51.032	2025-02-22 02:38:28.99
558	608	2025-02-22 02:38:51.032	2025-02-22 02:38:29.141
559	609	2025-02-22 02:42:59.119	2025-02-22 02:42:27.223
560	610	2025-02-22 02:42:59.119	2025-02-22 02:42:27.381
561	611	2025-02-22 02:42:59.119	2025-02-22 02:42:28.004
562	612	2025-02-22 02:42:59.119	2025-02-22 02:42:28.508
563	613	2025-02-22 02:51:26	2025-02-22 02:51:20.061
564	614	2025-02-22 02:51:26	2025-02-22 02:51:20.226
565	615	2025-02-22 02:54:53.916	2025-02-22 02:54:38.658
566	616	2025-02-22 02:54:53.916	2025-02-22 02:54:38.818
567	617	2025-02-22 02:54:53.916	2025-02-22 02:54:39.481
568	618	2025-02-22 02:57:19.888	2025-02-22 02:56:28.25
569	619	2025-02-22 02:57:19.888	2025-02-22 02:56:28.401
570	620	2025-02-22 02:57:19.888	2025-02-22 02:56:28.833
571	621	2025-02-22 02:57:19.888	2025-02-22 02:57:01.385
572	622	2025-02-22 02:57:19.888	2025-02-22 02:57:01.53
573	623	2025-02-22 03:07:42.426	2025-02-22 03:07:33.015
574	625	2025-02-22 03:07:42.426	2025-02-22 03:07:33.166
575	654	2025-02-22 03:16:48.385	2025-02-22 03:16:03.108
576	659	2025-02-22 03:16:48.385	2025-02-22 03:16:03.268
577	660	2025-02-22 03:16:48.385	2025-02-22 03:16:03.412
578	661	2025-02-22 03:16:48.385	2025-02-22 03:16:03.829
579	662	2025-02-22 03:32:39.539	2025-02-22 03:32:26.842
580	663	2025-02-22 03:32:39.539	2025-02-22 03:32:26.996
581	664	2025-02-22 03:32:39.539	2025-02-22 03:32:27.13
582	665	2025-02-22 03:32:39.539	2025-02-22 03:32:27.721
583	666	2025-02-22 04:14:47.173	2025-02-22 04:14:44.544
585	669	2025-02-22 04:19:54.891	2025-02-22 04:19:30.887
586	670	2025-02-22 04:19:54.891	2025-02-22 04:19:31.039
587	671	2025-02-22 04:19:54.891	2025-02-22 04:19:31.379
588	676	2025-02-26 04:26:31.484	2025-02-26 04:26:22.695
589	680	2025-03-07 08:37:40.415	2025-03-07 08:37:28.553
590	679	2025-03-07 08:37:40.415	2025-03-07 08:37:28.729
591	678	2025-03-07 08:37:40.415	2025-03-07 08:37:28.913
592	677	2025-03-07 08:37:40.415	2025-03-07 08:37:29.322
593	681	2025-03-10 01:53:23.084	2025-03-10 01:52:51.04
594	682	2025-03-10 01:53:23.084	2025-03-10 01:52:51.183
595	683	2025-03-10 01:53:23.084	2025-03-10 01:52:51.351
596	684	2025-03-10 01:53:23.084	2025-03-10 01:52:51.735
597	685	2025-03-10 01:57:28.498	2025-03-10 01:57:12.783
598	686	2025-03-10 02:09:39.13	2025-03-10 02:09:13.301
599	687	2025-03-10 02:09:39.13	2025-03-10 02:09:13.475
600	688	2025-03-10 02:09:39.13	2025-03-10 02:09:14.547
601	689	2025-03-10 02:09:39.13	2025-03-10 02:09:14.723
602	690	2025-03-10 02:09:39.13	2025-03-10 02:09:15.254
603	691	2025-05-10 07:08:56.343	2025-05-10 07:08:00.267
604	692	2025-05-10 07:08:56.343	2025-05-10 07:08:02.274
605	693	2025-05-10 07:08:56.343	2025-05-10 07:08:02.434
606	694	2025-05-10 07:08:56.343	2025-05-10 07:08:02.586
607	695	2025-05-10 07:08:56.343	2025-05-10 07:08:02.763
608	696	2025-05-10 07:08:56.343	2025-05-10 07:08:02.906
610	697	2025-05-10 07:08:56.343	2025-05-10 07:08:03.49
611	700	2025-05-10 07:08:56.343	2025-05-10 07:08:04.09
612	699	2025-05-10 07:08:56.343	2025-05-10 07:08:04.474
613	701	2025-05-17 08:13:31.731	2025-05-17 08:13:26.305
614	702	2025-05-17 09:26:20.844	2025-05-17 09:25:06.324
615	703	2025-05-20 02:57:25.832	2025-05-20 02:57:22.941
616	704	2025-05-20 03:10:55.322	2025-05-20 03:10:52.226
617	705	2025-05-20 03:19:19.614	2025-05-20 03:19:17.415
618	706	2025-05-21 07:33:26.209	2025-05-21 07:33:03.509
619	707	2025-05-21 07:33:26.209	2025-05-21 07:33:03.678
620	708	2025-05-21 07:33:26.209	2025-05-21 07:33:03.822
621	709	2025-05-21 07:33:26.209	2025-05-21 07:33:04.486
622	710	2025-05-26 04:30:21.905	2025-05-26 04:30:13.801
623	711	2025-05-27 07:03:38.93	2025-05-27 07:03:36.394
624	712	2025-06-02 01:59:16.888	2025-06-02 01:59:13.374
625	713	2025-06-02 02:08:57.691	2025-06-02 02:08:55.363
627	714	2025-06-20 06:27:04.355	2025-06-20 06:26:40.431
628	715	2025-06-20 06:27:04.355	2025-06-20 06:26:41.047
629	716	2025-06-23 03:54:24.584	2025-06-23 03:54:16.864
630	717	2025-06-28 02:02:56.787	2025-06-28 02:02:53.331
631	718	2025-07-03 02:25:41.736	2025-07-03 02:25:29.604
632	719	2025-07-12 02:44:51.233	2025-07-12 02:44:49.24
633	720	2025-07-15 04:30:49.307	2025-07-15 04:30:30.099
634	721	2025-07-15 04:30:49.307	2025-07-15 04:30:30.348
635	722	2025-07-15 04:30:49.307	2025-07-15 04:30:30.531
636	723	2025-07-15 04:30:49.307	2025-07-15 04:30:30.771
637	724	2025-07-15 04:30:49.307	2025-07-15 04:30:31.836
638	725	2025-08-21 06:17:00.257	2025-08-21 06:16:55.989
639	727	2025-08-21 07:23:03.767	2025-08-21 07:22:56.677
640	728	2025-09-02 02:48:03.576	2025-09-02 02:47:55.026
641	730	2025-09-02 02:54:54.043	2025-09-02 02:54:46.211
642	729	2025-09-02 02:54:54.043	2025-09-02 02:54:46.584
643	731	2025-09-02 02:59:54.801	2025-09-02 02:59:47.174
644	732	2025-09-02 03:15:41.263	2025-09-02 03:15:32.483
645	733	2025-09-02 03:15:41.263	2025-09-02 03:15:36.514
646	734	2025-10-20 06:27:26.137	2025-10-20 06:27:12.476
647	735	2025-11-01 04:33:48.001	2025-11-01 04:33:35.257
648	736	2025-11-01 04:33:48.001	2025-11-01 04:33:35.407
649	737	2025-11-01 04:33:48.001	2025-11-01 04:33:35.551
650	738	2025-11-10 01:19:10.28	2025-11-10 01:18:50.92
651	739	2025-11-10 01:19:10.28	2025-11-10 01:18:51.448
652	740	2025-11-22 04:27:19.399	2025-11-22 04:27:10.098
653	741	2025-11-22 04:27:19.399	2025-11-22 04:27:10.266
654	742	2025-11-22 04:27:19.399	2025-11-22 04:27:10.842
655	743	2025-12-18 01:20:47.949	2025-12-18 01:20:42.106
656	744	2025-12-29 01:46:59.914	2025-12-29 01:46:56.642
\.


--
-- Data for Name: Products_Image; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Products_Image" (id, "detailId", "colorId", path, "altText", "createdAt", "updatedAt") FROM stdin;
1	1	1	C:/uploads/SY-A0660-1739431233718.png	\N	2025-02-13 07:20:34.174	2025-02-13 07:20:34.174
2	2	2	C:/uploads/SY-A0768-1739431274341.png	\N	2025-02-13 07:21:14.609	2025-02-13 07:21:14.609
18	329	524	C:/uploads/2030-1739928719665.png	\N	2025-02-19 01:31:42.526	2025-02-19 01:31:42.526
16	327	522	C:/uploads/2024-1739928702410.png	\N	2025-02-19 01:30:30.466	2025-02-19 01:30:30.466
5	4	5	C:/uploads/SY-A0723-1739431857519.png	\N	2025-02-13 07:30:57.609	2025-02-13 07:30:57.609
6	5	6	C:/uploads/SY-A2208-1739431958754.png	\N	2025-02-13 07:32:38.869	2025-02-13 07:32:38.869
7	6	7	C:/uploads/SY-A2190-1739431986852.png	\N	2025-02-13 07:33:06.976	2025-02-13 07:33:06.976
17	328	523	C:/uploads/2040-1739928630260.png	\N	2025-02-19 01:31:25.757	2025-02-19 01:31:25.757
29	20	\N	C:/uploads/SY-A2002-1739929774579.png	\N	2025-02-19 01:49:34.681	2025-02-19 01:49:34.681
13	3	3	C:/uploads/SY-A1171-1739431026843-1739899756632.png	\N	2025-02-18 17:29:16.72	2025-02-18 17:29:16.72
14	7	8	C:/uploads/SY-A0350-1739431115582-1739899913413.png	\N	2025-02-18 17:31:53.521	2025-02-18 17:31:53.521
15	13	13	C:/uploads/SY-A0381-1739902854986.png	\N	2025-02-18 18:20:55.164	2025-02-18 18:20:55.164
20	14	14	C:/uploads/SY-A0738-1739929170762.png	\N	2025-02-19 01:39:30.991	2025-02-19 01:39:30.991
21	15	15	C:/uploads/SY-A0952-1739929212125.png	\N	2025-02-19 01:40:12.73	2025-02-19 01:40:12.73
22	16	16	C:/uploads/SY-A0775-1739929306454.png	\N	2025-02-19 01:41:46.554	2025-02-19 01:41:46.554
23	17	17	C:/uploads/SY-A2018-1739929356638.png	\N	2025-02-19 01:42:36.796	2025-02-19 01:42:36.796
24	18	18	C:/uploads/SY-A1197-1739929410983.png	\N	2025-02-19 01:43:31.15	2025-02-19 01:43:31.15
25	19	19	C:/uploads/SY-A0901-1739929497311.png	\N	2025-02-19 01:44:57.493	2025-02-19 01:44:57.493
30	24	24	C:/uploads/SY-A2038-1-1739929855022.png	\N	2025-02-19 01:50:55.568	2025-02-19 01:50:55.568
31	25	25	C:/uploads/SY-A2038-2-1739929887416.png	\N	2025-02-19 01:51:27.654	2025-02-19 01:51:27.654
32	26	26	C:/uploads/SY-A2038-3-1739929933332.png	\N	2025-02-19 01:52:13.448	2025-02-19 01:52:13.448
34	28	28	C:/uploads/SY-A2038-7-1739930022072.png	\N	2025-02-19 01:53:42.202	2025-02-19 01:53:42.202
35	30	30	C:/uploads/SY-A1061-1739930092784.png	\N	2025-02-19 01:54:52.967	2025-02-19 01:54:52.967
36	31	31	C:/uploads/SY-A1000-002-Yellow-1739930237514.png	\N	2025-02-19 01:57:17.728	2025-02-19 01:57:17.728
37	31	32	C:/uploads/SY-A1000-002-Pink-1739930249217.png	\N	2025-02-19 01:57:29.319	2025-02-19 01:57:29.319
38	31	33	C:/uploads/SY-A1000-002-Blue-1739930263003.png	\N	2025-02-19 01:57:43.111	2025-02-19 01:57:43.111
39	32	34	C:/uploads/SY-A0873-Yellow-1739930336043.png	\N	2025-02-19 01:58:56.15	2025-02-19 01:58:56.15
42	34	38	C:/uploads/SY-A0758-1739930421651.png	\N	2025-02-19 02:00:21.771	2025-02-19 02:00:21.771
43	35	39	C:/uploads/SY-A0778-1739930468951.png	\N	2025-02-19 02:01:09.091	2025-02-19 02:01:09.091
44	40	44	C:/uploads/SY-A0850-1739930521178.png	\N	2025-02-19 02:02:01.267	2025-02-19 02:02:01.267
45	39	43	C:/uploads/BIGGER-1739930554307.png	\N	2025-02-19 02:02:34.501	2025-02-19 02:02:34.501
46	45	49	C:/uploads/SY-A1150-1739930654668.png	\N	2025-02-19 02:04:14.777	2025-02-19 02:04:14.777
47	46	50	C:/uploads/SY-A2057-Green-1739930699445.png	\N	2025-02-19 02:04:59.545	2025-02-19 02:04:59.545
48	46	51	C:/uploads/SY-A2057-Pink-1739930713738.png	\N	2025-02-19 02:05:13.841	2025-02-19 02:05:13.841
49	47	52	C:/uploads/SY-E0117-1739930778832.png	\N	2025-02-19 02:06:18.956	2025-02-19 02:06:18.956
50	29	29	C:/uploads/SY-A0916-1739930907175.png	\N	2025-02-19 02:08:27.492	2025-02-19 02:08:27.492
51	33	37	C:/uploads/SY-A0771-1739930939800.png	\N	2025-02-19 02:08:59.901	2025-02-19 02:08:59.901
52	41	45	C:/uploads/SY-A0840-1739930994709.png	\N	2025-02-19 02:09:54.829	2025-02-19 02:09:54.829
53	49	54	C:/uploads/SY-A2041-1739931027042.png	\N	2025-02-19 02:10:27.211	2025-02-19 02:10:27.211
54	36	40	C:/uploads/2124-1739932133029.png	\N	2025-02-19 02:28:53.216	2025-02-19 02:28:53.216
55	37	41	C:/uploads/2123-1739932187309.png	\N	2025-02-19 02:29:47.493	2025-02-19 02:29:47.493
56	38	42	C:/uploads/2125-1739932235720.png	\N	2025-02-19 02:30:35.822	2025-02-19 02:30:35.822
57	42	46	C:/uploads/2054-1739933849258.png	\N	2025-02-19 02:57:30.716	2025-02-19 02:57:30.716
58	43	47	C:/uploads/2053-1739933896225.png	\N	2025-02-19 02:58:16.827	2025-02-19 02:58:16.827
59	44	48	C:/uploads/2055-1739933958223.png	\N	2025-02-19 02:59:18.421	2025-02-19 02:59:18.421
1372	535	1375	/var/uploads/8589-1741588548400.png	\N	2025-03-10 06:35:48.405	2025-03-10 06:35:48.405
62	52	57	C:/uploads/SY-A2071-1739934184938.png	\N	2025-02-19 03:03:05.079	2025-02-19 03:03:05.079
64	54	59	C:/uploads/SY-A2065-1739934299916.png	\N	2025-02-19 03:05:00.064	2025-02-19 03:05:00.064
65	55	60	C:/uploads/SY-A2064-1739934334664.png	\N	2025-02-19 03:05:36.85	2025-02-19 03:05:36.85
66	56	61	C:/uploads/SY-A2080-1739934698796.png	\N	2025-02-19 03:11:39.226	2025-02-19 03:11:39.226
67	48	53	C:/uploads/SY-A0501-1739934806126.png	\N	2025-02-19 03:13:26.245	2025-02-19 03:13:26.245
68	57	62	C:/uploads/SY-A2079-1739934867450.png	\N	2025-02-19 03:14:27.876	2025-02-19 03:14:27.876
69	58	63	C:/uploads/SY-A1168-1739934922411.png	\N	2025-02-19 03:15:22.532	2025-02-19 03:15:22.532
70	59	64	C:/uploads/0779-1739935160287.png	\N	2025-02-19 03:19:21.41	2025-02-19 03:19:21.41
71	61	66	C:/uploads/SY-A2014-A2015-A2016-1739935545872.png	\N	2025-02-19 03:25:46.328	2025-02-19 03:25:46.328
72	62	67	C:/uploads/SY-A2014-A2015-A2016-1739935571015.png	\N	2025-02-19 03:26:11.181	2025-02-19 03:26:11.181
73	63	68	C:/uploads/SY-A2014-A2015-A2016-1739935596409.png	\N	2025-02-19 03:26:36.543	2025-02-19 03:26:36.543
74	64	69	C:/uploads/SY-A2031-A2032-A2033-A2037-1739935736583.png	\N	2025-02-19 03:28:56.781	2025-02-19 03:28:56.781
75	65	70	C:/uploads/SY-A2031-A2032-A2033-A2037-1739935761863.png	\N	2025-02-19 03:29:22.009	2025-02-19 03:29:22.009
76	66	71	C:/uploads/SY-A2031-A2032-A2033-A2037-1739935784845.png	\N	2025-02-19 03:29:44.951	2025-02-19 03:29:44.951
77	67	72	C:/uploads/SY-A2031-A2032-A2033-A2037-1739935809975.png	\N	2025-02-19 03:30:10.112	2025-02-19 03:30:10.112
78	60	65	C:/uploads/0807-1739936033239.png	\N	2025-02-19 03:33:53.457	2025-02-19 03:33:53.457
79	68	73	C:/uploads/TM-1739936222416.png	\N	2025-02-19 03:37:02.571	2025-02-19 03:37:02.571
1704	411	750	/var/uploads/22018-2-1752305045393.png	\N	2025-07-12 07:24:05.532	2025-07-12 07:24:05.532
81	70	75	C:/uploads/TM-1739936275467.png	\N	2025-02-19 03:37:55.611	2025-02-19 03:37:55.611
82	71	76	C:/uploads/DN-3-1739937075297.png	\N	2025-02-19 03:51:15.527	2025-02-19 03:51:15.527
83	71	77	C:/uploads/DN-4-1739937091296.png	\N	2025-02-19 03:51:31.481	2025-02-19 03:51:31.481
84	71	78	C:/uploads/DN-2-1739937111582.png	\N	2025-02-19 03:51:51.763	2025-02-19 03:51:51.763
85	71	79	C:/uploads/DN-6-1739937122819.png	\N	2025-02-19 03:52:02.916	2025-02-19 03:52:02.916
86	71	80	C:/uploads/DN-5-1739937134714.png	\N	2025-02-19 03:52:14.895	2025-02-19 03:52:14.895
87	71	81	C:/uploads/DN-1-1739937167325.png	\N	2025-02-19 03:52:47.454	2025-02-19 03:52:47.454
88	72	87	C:/uploads/DN-1-1739937194051.png	\N	2025-02-19 03:53:14.156	2025-02-19 03:53:14.156
89	72	86	C:/uploads/DN-5-1739937210541.png	\N	2025-02-19 03:53:30.655	2025-02-19 03:53:30.655
90	72	85	C:/uploads/DN-6-1739937229714.png	\N	2025-02-19 03:53:49.862	2025-02-19 03:53:49.862
91	72	84	C:/uploads/DN-2-1739937238802.png	\N	2025-02-19 03:53:58.892	2025-02-19 03:53:58.892
92	72	83	C:/uploads/DN-4-1739937246709.png	\N	2025-02-19 03:54:06.924	2025-02-19 03:54:06.924
93	72	82	C:/uploads/DN-3-1739937255194.png	\N	2025-02-19 03:54:15.328	2025-02-19 03:54:15.328
94	73	88	C:/uploads/DN-3-1739937276075.png	\N	2025-02-19 03:54:36.19	2025-02-19 03:54:36.19
95	73	89	C:/uploads/DN-4-1739937286003.png	\N	2025-02-19 03:54:46.092	2025-02-19 03:54:46.092
96	73	90	C:/uploads/DN-2-1739937310773.png	\N	2025-02-19 03:55:10.959	2025-02-19 03:55:10.959
97	73	91	C:/uploads/DN-6-1739937349562.png	\N	2025-02-19 03:55:49.812	2025-02-19 03:55:49.812
98	73	92	C:/uploads/DN-5-1739937358282.png	\N	2025-02-19 03:55:58.372	2025-02-19 03:55:58.372
99	73	93	C:/uploads/DN-1-1739937382357.png	\N	2025-02-19 03:56:22.465	2025-02-19 03:56:22.465
100	78	98	C:/uploads/SY-A2026-A2027-1739937645018.png	\N	2025-02-19 04:00:45.192	2025-02-19 04:00:45.192
101	79	99	C:/uploads/SY-A2026-A2027-1739937656430.png	\N	2025-02-19 04:00:56.531	2025-02-19 04:00:56.531
102	80	100	C:/uploads/SY-A2021-A2022-1739937747197.png	\N	2025-02-19 04:02:27.302	2025-02-19 04:02:27.302
103	81	101	C:/uploads/SY-A2021-A2022-1739937760764.png	\N	2025-02-19 04:02:40.918	2025-02-19 04:02:40.918
104	82	102	C:/uploads/SY-A2010-1739937818939.png	\N	2025-02-19 04:03:39.061	2025-02-19 04:03:39.061
1436	558	1155	/var/uploads/43-1747466978253.png	\N	2025-05-17 07:29:38.382	2025-05-17 07:29:38.382
106	84	104	C:/uploads/SY-A0735-A0736-1739937897115.png	\N	2025-02-19 04:04:57.313	2025-02-19 04:04:57.313
107	85	105	C:/uploads/SY-A0735-A0736-1739937907474.png	\N	2025-02-19 04:05:08.626	2025-02-19 04:05:08.626
108	86	106	C:/uploads/SY-A0801-A0802-A0803-A0805-1739938102115.png	\N	2025-02-19 04:08:22.221	2025-02-19 04:08:22.221
109	87	107	C:/uploads/SY-A0801-A0802-A0803-A0805-1739938114094.png	\N	2025-02-19 04:08:34.22	2025-02-19 04:08:34.22
110	88	108	C:/uploads/SY-A0801-A0802-A0803-A0805-1739938125519.png	\N	2025-02-19 04:08:45.707	2025-02-19 04:08:45.707
111	89	109	C:/uploads/SY-A0801-A0802-A0803-A0805-1739938137394.png	\N	2025-02-19 04:08:57.505	2025-02-19 04:08:57.505
112	93	113	C:/uploads/0921-5-1739938589233.png	\N	2025-02-19 04:16:29.42	2025-02-19 04:16:29.42
113	94	114	C:/uploads/0921-5-1739938601888.png	\N	2025-02-19 04:16:42.024	2025-02-19 04:16:42.024
114	95	115	C:/uploads/0921-5-1739938606155.png	\N	2025-02-19 04:16:46.26	2025-02-19 04:16:46.26
115	96	116	C:/uploads/0921-5-1739938632915.png	\N	2025-02-19 04:17:13.048	2025-02-19 04:17:13.048
116	98	119	C:/uploads/SY-A1008-1739938767199.png	\N	2025-02-19 04:19:27.321	2025-02-19 04:19:27.321
117	99	120	C:/uploads/SY-A1008-1739938778382.png	\N	2025-02-19 04:19:38.706	2025-02-19 04:19:38.706
118	100	121	C:/uploads/SY-A1008-1739938789124.png	\N	2025-02-19 04:19:49.333	2025-02-19 04:19:49.333
119	101	122	C:/uploads/SY-A1013-1739940062167.png	\N	2025-02-19 04:41:02.366	2025-02-19 04:41:02.366
120	102	123	C:/uploads/SY-A1013-1739940066190.png	\N	2025-02-19 04:41:06.312	2025-02-19 04:41:06.312
121	103	124	C:/uploads/SY-A1013-1739940071616.png	\N	2025-02-19 04:41:11.719	2025-02-19 04:41:11.719
127	97	117	C:/uploads/1138-o-1739940784966.png	\N	2025-02-19 04:53:05.224	2025-02-19 04:53:05.224
128	97	118	C:/uploads/1138-b-1739940792790.png	\N	2025-02-19 04:53:12.966	2025-02-19 04:53:12.966
1373	560	1162	/var/uploads/6598-1741589404239.png	\N	2025-03-10 06:50:04.245	2025-03-10 06:50:04.245
133	90	110	C:/uploads/71921-1740080066351.jpg	\N	2025-02-20 19:34:26.526	2025-02-20 19:34:26.526
134	91	111	C:/uploads/71921-1740080084808.jpg	\N	2025-02-20 19:34:44.896	2025-02-20 19:34:44.896
135	92	112	C:/uploads/71921-1740080090768.jpg	\N	2025-02-20 19:34:50.855	2025-02-20 19:34:50.855
1437	558	1153	/var/uploads/41-1747466989230.png	\N	2025-05-17 07:29:49.358	2025-05-17 07:29:49.358
1705	411	749	/var/uploads/22018-4-1752305113995.png	\N	2025-07-12 07:25:14.161	2025-07-12 07:25:14.161
1706	411	752	/var/uploads/22018-1-1752305125077.png	\N	2025-07-12 07:25:25.307	2025-07-12 07:25:25.307
1438	558	1154	/var/uploads/42-1747466999519.png	\N	2025-05-17 07:29:59.643	2025-05-17 07:29:59.643
140	112	133	C:/uploads/2118-2-1740081111781.jpg	\N	2025-02-20 19:51:51.947	2025-02-20 19:51:51.947
141	112	134	C:/uploads/2118-1-1740081125396.jpg	\N	2025-02-20 19:52:05.485	2025-02-20 19:52:05.485
142	113	135	C:/uploads/0908-1740081617910.jpg	\N	2025-02-20 20:00:18.078	2025-02-20 20:00:18.078
143	114	136	C:/uploads/0909-1740081637530.jpg	\N	2025-02-20 20:00:37.613	2025-02-20 20:00:37.613
144	115	137	C:/uploads/0715-1740081798426.jpg	\N	2025-02-20 20:03:18.569	2025-02-20 20:03:18.569
145	116	138	C:/uploads/0382-1740081831281.jpg	\N	2025-02-20 20:03:51.368	2025-02-20 20:03:51.368
146	117	139	C:/uploads/0782-1-1740082370165.jpg	\N	2025-02-20 20:12:50.328	2025-02-20 20:12:50.328
147	117	140	C:/uploads/0782-2-1740082384822.jpg	\N	2025-02-20 20:13:04.906	2025-02-20 20:13:04.906
148	117	141	C:/uploads/0782-3-1740082396236.jpg	\N	2025-02-20 20:13:16.323	2025-02-20 20:13:16.323
149	118	142	C:/uploads/2046-1-1740082616287.jpg	\N	2025-02-20 20:16:56.376	2025-02-20 20:16:56.376
150	118	143	C:/uploads/2046-2-1740082622707.jpg	\N	2025-02-20 20:17:02.793	2025-02-20 20:17:02.793
151	119	144	C:/uploads/0765-1740083172155.jpg	\N	2025-02-20 20:26:12.319	2025-02-20 20:26:12.319
152	120	145	C:/uploads/0766-1740083189358.jpg	\N	2025-02-20 20:26:29.441	2025-02-20 20:26:29.441
153	121	146	C:/uploads/0716-1740083232165.jpg	\N	2025-02-20 20:27:12.251	2025-02-20 20:27:12.251
154	122	147	C:/uploads/0555-1740083273574.jpg	\N	2025-02-20 20:27:53.66	2025-02-20 20:27:53.66
155	123	148	C:/uploads/0875-1740083529128.jpg	\N	2025-02-20 20:32:09.55	2025-02-20 20:32:09.55
156	124	149	C:/uploads/0731-1740083564931.jpg	\N	2025-02-20 20:32:45.02	2025-02-20 20:32:45.02
157	125	150	C:/uploads/0957-1740084350594.jpg	\N	2025-02-20 20:45:50.768	2025-02-20 20:45:50.768
158	126	151	C:/uploads/2000-1-1740084420632.jpg	\N	2025-02-20 20:47:00.724	2025-02-20 20:47:00.724
159	126	152	C:/uploads/2000-2-1740084434574.jpg	\N	2025-02-20 20:47:14.661	2025-02-20 20:47:14.661
160	127	153	C:/uploads/SY-A2001-1740117542860.png	\N	2025-02-21 05:59:03.111	2025-02-21 05:59:03.111
161	128	154	C:/uploads/SY-A0799-A0817-A0892-1740117683698.png	\N	2025-02-21 06:01:23.795	2025-02-21 06:01:23.795
164	131	157	C:/uploads/SY-A0839-A0863-A0893-1740117873643.png	\N	2025-02-21 06:04:33.853	2025-02-21 06:04:33.853
167	134	160	C:/uploads/SY-A2029-A2030-1740117959542.png	\N	2025-02-21 06:05:59.633	2025-02-21 06:05:59.633
168	135	161	C:/uploads/SY-A2029-A2030-1740117975326.png	\N	2025-02-21 06:06:15.418	2025-02-21 06:06:15.418
169	136	162	C:/uploads/SY-A0795-A0862-1740118066345.png	\N	2025-02-21 06:07:46.547	2025-02-21 06:07:46.547
172	140	168	C:/uploads/SY-A0690-Pink-1740118218020.png	\N	2025-02-21 06:10:18.115	2025-02-21 06:10:18.115
173	139	167	C:/uploads/SY-A0690-White-1740118296413.png	\N	2025-02-21 06:11:36.506	2025-02-21 06:11:36.506
174	138	164	C:/uploads/SY-A0782-Blue-1740118612771.png	\N	2025-02-21 06:16:53.123	2025-02-21 06:16:53.123
175	138	165	C:/uploads/SY-A0782-Yellow-1740118622358.png	\N	2025-02-21 06:17:02.462	2025-02-21 06:17:02.462
177	138	166	C:/uploads/SY-A0782-Pink-1740118680272.png	\N	2025-02-21 06:18:01.059	2025-02-21 06:18:01.059
178	141	169	C:/uploads/SY-A0780-A0781-1740118806769.png	\N	2025-02-21 06:20:06.879	2025-02-21 06:20:06.879
179	142	170	C:/uploads/SY-A0780-A0781-1740118818496.png	\N	2025-02-21 06:20:18.615	2025-02-21 06:20:18.615
180	143	171	C:/uploads/SY-A2048-1740118878576.png	\N	2025-02-21 06:21:18.739	2025-02-21 06:21:18.739
181	144	172	C:/uploads/SY-A2052-Pink-1740118971779.png	\N	2025-02-21 06:22:51.881	2025-02-21 06:22:51.881
182	144	173	C:/uploads/SY-A2052-Blue-1740118980466.png	\N	2025-02-21 06:23:00.668	2025-02-21 06:23:00.668
183	145	174	C:/uploads/SY-A2120-Orange-1740119049397.png	\N	2025-02-21 06:24:09.523	2025-02-21 06:24:09.523
184	145	175	C:/uploads/SY-A2120-Green-1740119057248.png	\N	2025-02-21 06:24:17.362	2025-02-21 06:24:17.362
185	145	176	C:/uploads/SY-A2120-Blue-1740119068918.png	\N	2025-02-21 06:24:29.031	2025-02-21 06:24:29.031
186	146	177	C:/uploads/SY-B2029-1740119129785.png	\N	2025-02-21 06:25:29.874	2025-02-21 06:25:29.874
187	147	178	C:/uploads/SY-A2049-60-70-80-90-1740119244013.png	\N	2025-02-21 06:27:24.159	2025-02-21 06:27:24.159
1707	411	751	/var/uploads/22018-3-1752305139327.png	\N	2025-07-12 07:25:39.463	2025-07-12 07:25:39.463
1708	419	767	/var/uploads/33664-1-1752305215254.png	\N	2025-07-12 07:26:55.427	2025-07-12 07:26:55.427
1709	419	767	/var/uploads/33664-2-1752305220254.png	\N	2025-07-12 07:27:00.276	2025-07-12 07:27:00.276
191	151	182	C:/uploads/SY- A2050-1740119337917.png	\N	2025-02-21 06:28:58.089	2025-02-21 06:28:58.089
1771	429	786	/var/uploads/3250-3-1752653069065.png	\N	2025-07-16 08:04:29.196	2025-07-16 08:04:29.196
1772	429	786	/var/uploads/3250-33-1752653074070.png	\N	2025-07-16 08:04:34.093	2025-07-16 08:04:34.093
1773	429	787	/var/uploads/3250-1-1752653085068.png	\N	2025-07-16 08:04:45.237	2025-07-16 08:04:45.237
195	155	186	C:/uploads/SY-B5026-1740119457257.png	\N	2025-02-21 06:30:57.368	2025-02-21 06:30:57.368
196	156	187	C:/uploads/4758-1740119917648.png	\N	2025-02-21 06:38:37.855	2025-02-21 06:38:37.855
197	156	188	C:/uploads/489-1740119924810.png	\N	2025-02-21 06:38:44.912	2025-02-21 06:38:44.912
198	156	189	C:/uploads/456-1740119935330.png	\N	2025-02-21 06:38:55.483	2025-02-21 06:38:55.483
199	157	190	C:/uploads/45678-1740120220213.png	\N	2025-02-21 06:43:40.38	2025-02-21 06:43:40.38
200	157	191	C:/uploads/485787-1740120226830.png	\N	2025-02-21 06:43:46.93	2025-02-21 06:43:46.93
201	158	192	C:/uploads/SY-A0872-Pink-1740121192625.png	\N	2025-02-21 06:59:52.807	2025-02-21 06:59:52.807
202	158	193	C:/uploads/SY-A0872-Green-1740121199604.png	\N	2025-02-21 06:59:59.736	2025-02-21 06:59:59.736
203	158	194	C:/uploads/SY-A0872-Yellow-1740121206767.png	\N	2025-02-21 07:00:06.855	2025-02-21 07:00:06.855
204	159	195	C:/uploads/SY-A0347-1740121287540.png	\N	2025-02-21 07:01:27.641	2025-02-21 07:01:27.641
205	160	196	C:/uploads/7847-1740121934267.png	\N	2025-02-21 07:12:14.458	2025-02-21 07:12:14.458
206	160	197	C:/uploads/123123-1740121942191.png	\N	2025-02-21 07:12:22.303	2025-02-21 07:12:22.303
207	161	198	C:/uploads/SY-A0764-1740121999567.png	\N	2025-02-21 07:13:19.675	2025-02-21 07:13:19.675
208	162	199	C:/uploads/SY-A0903-Yellow-1740122094920.png	\N	2025-02-21 07:14:55.013	2025-02-21 07:14:55.013
209	162	200	C:/uploads/SY-A0903-Blue-1740122102773.png	\N	2025-02-21 07:15:02.871	2025-02-21 07:15:02.871
210	162	201	C:/uploads/SY-A0903-Orange-1740122115071.png	\N	2025-02-21 07:15:15.179	2025-02-21 07:15:15.179
212	162	202	C:/uploads/SY-A0903-Red-1740122140927.png	\N	2025-02-21 07:15:41.062	2025-02-21 07:15:41.062
213	163	203	C:/uploads/SY-A0371-1740122220220.png	\N	2025-02-21 07:17:00.311	2025-02-21 07:17:00.311
214	164	204	C:/uploads/SY-A0761-1740122264576.png	\N	2025-02-21 07:17:44.858	2025-02-21 07:17:44.858
215	165	205	C:/uploads/SY-A0546-1740122304144.png	\N	2025-02-21 07:18:24.322	2025-02-21 07:18:24.322
216	166	206	C:/uploads/SY-A0547-1740122444047.png	\N	2025-02-21 07:20:44.193	2025-02-21 07:20:44.193
217	167	207	C:/uploads/SY-A0878-1740122483656.png	\N	2025-02-21 07:21:23.758	2025-02-21 07:21:23.758
218	168	208	C:/uploads/SY-A0760-1740122505804.png	\N	2025-02-21 07:21:45.944	2025-02-21 07:21:45.944
219	171	211	C:/uploads/SY-5600-1740122658592.png	\N	2025-02-21 07:24:18.784	2025-02-21 07:24:18.784
220	172	212	C:/uploads/SY-3110-1740122700319.png	\N	2025-02-21 07:25:00.435	2025-02-21 07:25:00.435
221	173	213	C:/uploads/SY-5031-Blue-1740122842307.png	\N	2025-02-21 07:27:22.402	2025-02-21 07:27:22.402
222	173	214	C:/uploads/SY-5031-Yellow-1740122854387.png	\N	2025-02-21 07:27:34.485	2025-02-21 07:27:34.485
223	173	215	C:/uploads/SY-5031-Pink-1740122866329.png	\N	2025-02-21 07:27:46.426	2025-02-21 07:27:46.426
224	173	216	C:/uploads/SY-5031-DArk-Blue-1740122876838.png	\N	2025-02-21 07:27:56.946	2025-02-21 07:27:56.946
225	174	217	C:/uploads/SY-6018-Black-1740122939835.png	\N	2025-02-21 07:28:59.948	2025-02-21 07:28:59.948
226	174	218	C:/uploads/SY-6018-Red-1740122952796.png	\N	2025-02-21 07:29:12.916	2025-02-21 07:29:12.916
227	174	219	C:/uploads/SY-6018-Blue-1740122974356.png	\N	2025-02-21 07:29:34.783	2025-02-21 07:29:34.783
228	174	220	C:/uploads/SY-6018-Gray-1740122984738.png	\N	2025-02-21 07:29:44.901	2025-02-21 07:29:44.901
229	179	229	C:/uploads/SY-8016-Black-1740123122808.png	\N	2025-02-21 07:32:02.908	2025-02-21 07:32:02.908
230	179	230	C:/uploads/SY-8016-Blue-1740123129821.png	\N	2025-02-21 07:32:09.909	2025-02-21 07:32:09.909
231	179	231	C:/uploads/SY-8016-Gray-1740123143156.png	\N	2025-02-21 07:32:23.253	2025-02-21 07:32:23.253
232	179	232	C:/uploads/SY-8016-Green-1740123167338.png	\N	2025-02-21 07:32:47.466	2025-02-21 07:32:47.466
233	179	233	C:/uploads/SY-8016-Pink-1740123181779.png	\N	2025-02-21 07:33:01.872	2025-02-21 07:33:01.872
234	180	234	C:/uploads/SY-8016-A-Gray-1740123221423.png	\N	2025-02-21 07:33:41.517	2025-02-21 07:33:41.517
235	180	235	C:/uploads/SY-8016-A-Green-1740123236608.png	\N	2025-02-21 07:33:56.703	2025-02-21 07:33:56.703
236	180	236	C:/uploads/SY-8016-A-Blue-1740123248811.png	\N	2025-02-21 07:34:09.021	2025-02-21 07:34:09.021
237	180	237	C:/uploads/SY-8016-A-Black-1740123257454.png	\N	2025-02-21 07:34:17.561	2025-02-21 07:34:17.561
238	180	238	C:/uploads/SY-8016-A-Pink-1740123268716.png	\N	2025-02-21 07:34:28.832	2025-02-21 07:34:28.832
239	175	221	C:/uploads/SY-8025-Gray-1740123487293.png	\N	2025-02-21 07:38:07.532	2025-02-21 07:38:07.532
240	175	222	C:/uploads/SY-8025-Black-1740123493746.png	\N	2025-02-21 07:38:13.839	2025-02-21 07:38:13.839
241	175	223	C:/uploads/SY-8025-Red-1740123507076.png	\N	2025-02-21 07:38:27.167	2025-02-21 07:38:27.167
242	175	224	C:/uploads/SY-8025-Blue-1740123513926.png	\N	2025-02-21 07:38:34.051	2025-02-21 07:38:34.051
1774	433	795	/var/uploads/5208-1-1752653183227.png	\N	2025-07-16 08:06:23.448	2025-07-16 08:06:23.448
245	175	228	C:/uploads/SY-8025-Yellow-1740123855795.png	\N	2025-02-21 07:44:15.892	2025-02-21 07:44:15.892
246	169	209	C:/uploads/qwer22-1740124483482.png	\N	2025-02-21 07:54:43.707	2025-02-21 07:54:43.707
247	170	210	C:/uploads/qwe2-1740124528333.png	\N	2025-02-21 07:55:28.461	2025-02-21 07:55:28.461
248	181	239	C:/uploads/SY-A1079-1740124707397.png	\N	2025-02-21 07:58:27.524	2025-02-21 07:58:27.524
249	184	242	C:/uploads/SY-A1106-1740124761231.png	\N	2025-02-21 07:59:21.408	2025-02-21 07:59:21.408
250	185	243	C:/uploads/SY-A0898-A0899-A0900-1740124816413.png	\N	2025-02-21 08:00:16.651	2025-02-21 08:00:16.651
251	186	244	C:/uploads/SY-A0898-A0899-A0900-1740124820364.png	\N	2025-02-21 08:00:20.484	2025-02-21 08:00:20.484
252	187	245	C:/uploads/SY-A0898-A0899-A0900-1740124824680.png	\N	2025-02-21 08:00:24.865	2025-02-21 08:00:24.865
253	188	246	C:/uploads/SY-A0776-1740124874318.png	\N	2025-02-21 08:01:14.463	2025-02-21 08:01:14.463
254	192	250	C:/uploads/SY-A2183-Pink-1740124977274.png	\N	2025-02-21 08:02:57.371	2025-02-21 08:02:57.371
255	192	251	C:/uploads/SY-A2183-Blue-1740124985294.png	\N	2025-02-21 08:03:05.557	2025-02-21 08:03:05.557
256	192	252	C:/uploads/SY-A2183-Yellow-1740124993029.png	\N	2025-02-21 08:03:13.124	2025-02-21 08:03:13.124
257	193	253	C:/uploads/SY-A0759-1740125194258.png	\N	2025-02-21 08:06:34.461	2025-02-21 08:06:34.461
258	194	254	C:/uploads/SY-A0680-1740125238933.png	\N	2025-02-21 08:07:19.109	2025-02-21 08:07:19.109
259	189	247	C:/uploads/SY-ABC-1740125703914.png	\N	2025-02-21 08:15:04.108	2025-02-21 08:15:04.108
260	190	248	C:/uploads/SY-ABC-1740125714114.png	\N	2025-02-21 08:15:14.244	2025-02-21 08:15:14.244
261	191	249	C:/uploads/SY-ABC-1740125723263.png	\N	2025-02-21 08:15:23.383	2025-02-21 08:15:23.383
1775	428	783	/var/uploads/7199-3-1752653303995.png	\N	2025-07-16 08:08:24.229	2025-07-16 08:08:24.229
1776	428	782	/var/uploads/7199-1-1752653314361.png	\N	2025-07-16 08:08:34.711	2025-07-16 08:08:34.711
1777	428	784	/var/uploads/7199-2-1752653325713.png	\N	2025-07-16 08:08:46.194	2025-07-16 08:08:46.194
266	211	275	C:/uploads/SY-A2088-Green-1740126118883.png	\N	2025-02-21 08:21:59.076	2025-02-21 08:21:59.076
267	211	276	C:/uploads/SY-A2088-Pink-1740126126525.png	\N	2025-02-21 08:22:06.64	2025-02-21 08:22:06.64
268	213	278	C:/uploads/SY-A2117-1740126190113.png	\N	2025-02-21 08:23:10.299	2025-02-21 08:23:10.299
269	240	308	C:/uploads/SY-A2094-1740126385502.png	\N	2025-02-21 08:26:25.761	2025-02-21 08:26:25.761
270	240	309	C:/uploads/SY-A2094G-1740126392698.png	\N	2025-02-21 08:26:32.877	2025-02-21 08:26:32.877
271	241	310	C:/uploads/SY-A2095-1740126447300.png	\N	2025-02-21 08:27:27.513	2025-02-21 08:27:27.513
272	242	311	C:/uploads/SY-A5029-1740126521193.png	\N	2025-02-21 08:28:41.319	2025-02-21 08:28:41.319
273	243	312	C:/uploads/SY-A2179-1740126569623.png	\N	2025-02-21 08:29:29.776	2025-02-21 08:29:29.776
274	244	313	C:/uploads/SY-A2177-1740126783056.png	\N	2025-02-21 08:33:03.224	2025-02-21 08:33:03.224
275	245	314	C:/uploads/SY-A2180-1740126828810.png	\N	2025-02-21 08:33:48.956	2025-02-21 08:33:48.956
276	233	298	C:/uploads/SY-A2128-1740127004416.png	\N	2025-02-21 08:36:44.664	2025-02-21 08:36:44.664
277	234	299	C:/uploads/12314-1740127254082.png	\N	2025-02-21 08:40:54.329	2025-02-21 08:40:54.329
278	234	300	C:/uploads/345342-1740127260781.png	\N	2025-02-21 08:41:00.879	2025-02-21 08:41:00.879
279	235	301	C:/uploads/SY-A2100-1740127310001.png	\N	2025-02-21 08:41:50.243	2025-02-21 08:41:50.243
280	236	302	C:/uploads/SY-A2099-1740127344360.png	\N	2025-02-21 08:42:24.49	2025-02-21 08:42:24.49
281	237	303	C:/uploads/SY-A2107-1-1740127383298.png	\N	2025-02-21 08:43:03.402	2025-02-21 08:43:03.402
282	238	304	C:/uploads/234234-1740127923750.png	\N	2025-02-21 08:52:04.046	2025-02-21 08:52:04.046
1374	546	1106	/var/uploads/cn-620-3-1741591644993.png	\N	2025-03-10 07:27:25.001	2025-03-10 07:27:25.001
1710	420	768	/var/uploads/53456-1-1752305304152.png	\N	2025-07-12 07:28:24.323	2025-07-12 07:28:24.323
1375	546	1109	/var/uploads/cn-620-6-1741591810126.png	\N	2025-03-10 07:30:10.131	2025-03-10 07:30:10.131
286	227	292	C:/uploads/SY-A2149-1740128048859.png	\N	2025-02-21 08:54:08.978	2025-02-21 08:54:08.978
1711	420	768	/var/uploads/53456-2-1752305309723.png	\N	2025-07-12 07:28:29.743	2025-07-12 07:28:29.743
288	229	294	C:/uploads/SY-A2158-1740128130614.png	\N	2025-02-21 08:55:30.712	2025-02-21 08:55:30.712
1712	420	768	/var/uploads/53456-3-1752305316296.png	\N	2025-07-12 07:28:36.52	2025-07-12 07:28:36.52
1778	9	11	/var/uploads/9001-1-1752653400394.png	\N	2025-07-16 08:10:00.425	2025-07-16 08:10:00.425
1779	9	11	/var/uploads/9001-2-1752653404793.png	\N	2025-07-16 08:10:04.856	2025-07-16 08:10:04.856
292	221	286	C:/uploads/SY-A2067-1740128235495.png	\N	2025-02-21 08:57:15.645	2025-02-21 08:57:15.645
1780	9	11	/var/uploads/9001-3-1752653418898.png	\N	2025-07-16 08:10:22.337	2025-07-16 08:10:22.337
1781	10	12	/var/uploads/9002-1-1752653551105.png	\N	2025-07-16 08:12:31.267	2025-07-16 08:12:31.267
297	224	289	C:/uploads/SY-A2083-A2085-1740128407054.png	\N	2025-02-21 09:00:07.198	2025-02-21 09:00:07.198
1439	558	1156	/var/uploads/44-1747467014282.png	\N	2025-05-17 07:30:14.423	2025-05-17 07:30:14.423
299	226	291	C:/uploads/SY-A2083-A2085-1740128472441.png	\N	2025-02-21 09:01:12.557	2025-02-21 09:01:12.557
300	215	280	C:/uploads/SY-A2072-1740128530917.png	\N	2025-02-21 09:02:11.241	2025-02-21 09:02:11.241
1782	10	12	/var/uploads/9002-2-1752653555397.png	\N	2025-07-16 08:12:35.454	2025-07-16 08:12:35.454
1783	415	760	/var/uploads/9022-2-1752653629598.png	\N	2025-07-16 08:13:49.848	2025-07-16 08:13:49.848
303	218	283	C:/uploads/SY-A2066-1740128604289.png	\N	2025-02-21 09:03:24.416	2025-02-21 09:03:24.416
1784	415	761	/var/uploads/9022-1-1752653642364.png	\N	2025-07-16 08:14:02.689	2025-07-16 08:14:02.689
306	210	274	C:/uploads/SY-A2126-1740128732941.png	\N	2025-02-21 09:05:33.076	2025-02-21 09:05:33.076
307	209	273	C:/uploads/SY-A2119-1740128779372.png	\N	2025-02-21 09:06:19.631	2025-02-21 09:06:19.631
308	212	277	C:/uploads/SY-A2096-1740128842247.png	\N	2025-02-21 09:07:22.526	2025-02-21 09:07:22.526
309	311	476	C:/uploads/SY-WIND-Green-1740129118154.png	\N	2025-02-21 09:11:58.391	2025-02-21 09:11:58.391
310	311	477	C:/uploads/SY-WIND-Pink-1740129125986.png	\N	2025-02-21 09:12:06.114	2025-02-21 09:12:06.114
313	177	226	C:/uploads/123124-1740129469164.png	\N	2025-02-21 09:17:49.342	2025-02-21 09:17:49.342
314	178	227	C:/uploads/1q2312-1740129510916.png	\N	2025-02-21 09:18:31.056	2025-02-21 09:18:31.056
316	204	264	C:/uploads/3-1-1740147203224.jpg	\N	2025-02-21 14:13:23.319	2025-02-21 14:13:23.319
317	204	265	C:/uploads/3-2-1740147211097.jpg	\N	2025-02-21 14:13:31.185	2025-02-21 14:13:31.185
318	204	266	C:/uploads/3-3-1740147235362.jpg	\N	2025-02-21 14:13:55.451	2025-02-21 14:13:55.451
319	204	267	C:/uploads/3-4-1740147243090.jpg	\N	2025-02-21 14:14:03.177	2025-02-21 14:14:03.177
320	204	268	C:/uploads/3-5-1740147251767.jpg	\N	2025-02-21 14:14:11.854	2025-02-21 14:14:11.854
322	214	279	C:/uploads/4-1740147689533.jpg	\N	2025-02-21 14:21:29.624	2025-02-21 14:21:29.624
323	306	471	C:/uploads/1-1740148760871.jpg	\N	2025-02-21 14:39:21.087	2025-02-21 14:39:21.087
324	307	472	C:/uploads/2-1740148788920.jpg	\N	2025-02-21 14:39:49.027	2025-02-21 14:39:49.027
325	308	473	C:/uploads/3-1740148829556.jpg	\N	2025-02-21 14:40:29.672	2025-02-21 14:40:29.672
326	309	474	C:/uploads/4-1740148861467.jpg	\N	2025-02-21 14:41:01.569	2025-02-21 14:41:01.569
327	310	475	C:/uploads/5-1740148901593.jpg	\N	2025-02-21 14:41:41.975	2025-02-21 14:41:41.975
328	182	240	C:/uploads/M-1740149288916.jpg	\N	2025-02-21 14:48:09.097	2025-02-21 14:48:09.097
330	195	255	C:/uploads/17-1740150123872.jpg	\N	2025-02-21 15:02:04.053	2025-02-21 15:02:04.053
331	196	256	C:/uploads/26-1740150152977.jpg	\N	2025-02-21 15:02:33.076	2025-02-21 15:02:33.076
332	197	257	C:/uploads/33-1740150187658.jpg	\N	2025-02-21 15:03:07.753	2025-02-21 15:03:07.753
333	198	258	C:/uploads/41-1740150216505.jpg	\N	2025-02-21 15:03:36.64	2025-02-21 15:03:36.64
334	199	259	C:/uploads/26-1740150645091.jpg	\N	2025-02-21 15:10:45.275	2025-02-21 15:10:45.275
335	200	260	C:/uploads/33-1740150674348.jpg	\N	2025-02-21 15:11:14.446	2025-02-21 15:11:14.446
336	201	261	C:/uploads/41-1740150699234.jpg	\N	2025-02-21 15:11:39.326	2025-02-21 15:11:39.326
337	332	526	C:/uploads/2-3-1740153752098.jpg	\N	2025-02-21 16:02:32.271	2025-02-21 16:02:32.271
338	332	527	C:/uploads/2-1-1740153780903.jpg	\N	2025-02-21 16:03:00.995	2025-02-21 16:03:00.995
339	332	528	C:/uploads/2-5-1740153814293.jpg	\N	2025-02-21 16:03:34.382	2025-02-21 16:03:34.382
340	332	529	C:/uploads/2-4-1740153836580.jpg	\N	2025-02-21 16:03:56.671	2025-02-21 16:03:56.671
341	332	530	C:/uploads/2-2-1740153866457.jpg	\N	2025-02-21 16:04:26.543	2025-02-21 16:04:26.543
349	333	540	C:/uploads/8c-2-1740154057865.jpg	\N	2025-02-21 16:07:37.979	2025-02-21 16:07:37.979
350	333	533	C:/uploads/8c-3-1740154132558.jpg	\N	2025-02-21 16:08:52.776	2025-02-21 16:08:52.776
351	333	534	C:/uploads/8c-4-1740154147120.jpg	\N	2025-02-21 16:09:07.21	2025-02-21 16:09:07.21
352	333	535	C:/uploads/8c-5-1740154177466.jpg	\N	2025-02-21 16:09:37.559	2025-02-21 16:09:37.559
353	333	536	C:/uploads/8c-6-1740154184763.jpg	\N	2025-02-21 16:09:44.856	2025-02-21 16:09:44.856
354	333	537	C:/uploads/8c-7-1740154199750.jpg	\N	2025-02-21 16:09:59.838	2025-02-21 16:09:59.838
355	333	538	C:/uploads/8c-8-1740154206919.jpg	\N	2025-02-21 16:10:07.01	2025-02-21 16:10:07.01
356	333	539	C:/uploads/8c-1-1740154220932.jpg	\N	2025-02-21 16:10:21.021	2025-02-21 16:10:21.021
357	331	531	C:/uploads/56-2-1740154582351.jpg	\N	2025-02-21 16:16:22.522	2025-02-21 16:16:22.522
358	331	532	C:/uploads/56-1-1740154589749.jpg	\N	2025-02-21 16:16:29.842	2025-02-21 16:16:29.842
359	334	541	C:/uploads/9c-7-1740154668547.jpg	\N	2025-02-21 16:17:48.636	2025-02-21 16:17:48.636
360	334	542	C:/uploads/9c-1-1740154675829.jpg	\N	2025-02-21 16:17:55.914	2025-02-21 16:17:55.914
361	334	543	C:/uploads/9c-2-1740154687117.jpg	\N	2025-02-21 16:18:07.207	2025-02-21 16:18:07.207
362	334	544	C:/uploads/9c-5-1740154695692.jpg	\N	2025-02-21 16:18:15.81	2025-02-21 16:18:15.81
363	334	545	C:/uploads/9c-8-1740154709511.jpg	\N	2025-02-21 16:18:29.598	2025-02-21 16:18:29.598
364	334	546	C:/uploads/9c-9-1740154716771.jpg	\N	2025-02-21 16:18:36.862	2025-02-21 16:18:36.862
365	334	547	C:/uploads/9c-4-1740154735427.jpg	\N	2025-02-21 16:18:55.513	2025-02-21 16:18:55.513
366	334	548	C:/uploads/9c-3-1740154742661.jpg	\N	2025-02-21 16:19:02.751	2025-02-21 16:19:02.751
321	203	263	/var/uploads/2-1749099197174.png	\N	2025-02-21 14:20:11.383	2025-02-21 14:20:11.383
367	334	549	C:/uploads/9c-6-1740154750853.jpg	\N	2025-02-21 16:19:10.942	2025-02-21 16:19:10.942
368	305	470	C:/uploads/4-1740155145411.jpg	\N	2025-02-21 16:25:45.586	2025-02-21 16:25:45.586
369	304	469	C:/uploads/3-1740155167500.jpg	\N	2025-02-21 16:26:07.594	2025-02-21 16:26:07.594
370	303	468	C:/uploads/2-1740155185355.jpg	\N	2025-02-21 16:26:25.448	2025-02-21 16:26:25.448
371	302	467	C:/uploads/1-1740155203076.jpg	\N	2025-02-21 16:26:43.168	2025-02-21 16:26:43.168
372	299	464	C:/uploads/66-1740156585308.jpg	\N	2025-02-21 16:49:45.566	2025-02-21 16:49:45.566
373	300	465	C:/uploads/66-1740156597153.jpg	\N	2025-02-21 16:49:57.246	2025-02-21 16:49:57.246
374	301	466	C:/uploads/66-1740156611016.jpg	\N	2025-02-21 16:50:11.102	2025-02-21 16:50:11.102
375	337	558	C:/uploads/22-1-1740200097240.png	\N	2025-02-22 04:54:57.448	2025-02-22 04:54:57.448
376	337	559	C:/uploads/22-2-1740200104429.png	\N	2025-02-22 04:55:04.52	2025-02-22 04:55:04.52
377	337	560	C:/uploads/22-3-1740200111231.png	\N	2025-02-22 04:55:11.432	2025-02-22 04:55:11.432
378	338	561	C:/uploads/21-1740200149985.png	\N	2025-02-22 04:55:50.089	2025-02-22 04:55:50.089
379	205	269	C:/uploads/77-1740204471203.png	\N	2025-02-22 06:07:51.901	2025-02-22 06:07:51.901
380	206	270	C:/uploads/76-1740204482638.png	\N	2025-02-22 06:08:02.896	2025-02-22 06:08:02.896
381	339	562	C:/uploads/45-1740205138428.png	\N	2025-02-22 06:18:58.63	2025-02-22 06:18:58.63
1713	506	953	/var/uploads/423-1-1752306311517.png	\N	2025-07-12 07:45:11.725	2025-07-12 07:45:11.725
1714	506	952	/var/uploads/423-2-1752306331023.png	\N	2025-07-12 07:45:31.248	2025-07-12 07:45:31.248
389	335	552	C:/uploads/75-2-1740205764021.png	\N	2025-02-22 06:29:24.121	2025-02-22 06:29:24.121
1715	506	951	/var/uploads/423-3-1752306345265.png	\N	2025-07-12 07:45:45.461	2025-07-12 07:45:45.461
1785	410	747	/var/uploads/23329-4-1752653884088.png	\N	2025-07-16 08:18:04.367	2025-07-16 08:18:04.367
1786	410	746	/var/uploads/23329-3-1752653894112.png	\N	2025-07-16 08:18:14.29	2025-07-16 08:18:14.29
1787	410	745	/var/uploads/23329-1-1752653911188.png	\N	2025-07-16 08:18:31.333	2025-07-16 08:18:31.333
1788	410	748	/var/uploads/23329-2-1752653925507.png	\N	2025-07-16 08:18:45.756	2025-07-16 08:18:45.756
1789	392	681	/var/uploads/23837-2-1752653986460.png	\N	2025-07-16 08:19:46.631	2025-07-16 08:19:46.631
1376	546	1111	/var/uploads/cn-620-4-1741591820400.png	\N	2025-03-10 07:30:20.405	2025-03-10 07:30:20.405
1377	546	1112	/var/uploads/cn-620-2-1741591828863.png	\N	2025-03-10 07:30:28.873	2025-03-10 07:30:28.873
1378	546	1113	/var/uploads/cn-620-1-1741591837932.png	\N	2025-03-10 07:30:37.937	2025-03-10 07:30:37.937
1379	546	1114	/var/uploads/cn-620-7-1741591846666.png	\N	2025-03-10 07:30:46.671	2025-03-10 07:30:46.671
400	317	490	C:/uploads/h2-1-1740207929692.png	\N	2025-02-22 07:05:29.813	2025-02-22 07:05:29.813
401	317	491	C:/uploads/h2-2-1740207938714.png	\N	2025-02-22 07:05:38.814	2025-02-22 07:05:38.814
402	317	492	C:/uploads/h2-3-1740207947557.png	\N	2025-02-22 07:05:47.733	2025-02-22 07:05:47.733
403	317	493	C:/uploads/h2-4-1740207954985.png	\N	2025-02-22 07:05:55.076	2025-02-22 07:05:55.076
1380	546	1105	/var/uploads/cn-620-5-1741591869315.png	\N	2025-03-10 07:31:09.319	2025-03-10 07:31:09.319
1381	546	1376	/var/uploads/cn-620-8-1741591877791.png	\N	2025-03-10 07:31:17.796	2025-03-10 07:31:17.796
410	319	499	C:/uploads/H4-1-1740209044778.png	\N	2025-02-22 07:24:04.88	2025-02-22 07:24:04.88
411	319	500	C:/uploads/H4-2-1740209052177.png	\N	2025-02-22 07:24:12.672	2025-02-22 07:24:12.672
412	319	501	C:/uploads/H4-3-1740209059388.png	\N	2025-02-22 07:24:19.481	2025-02-22 07:24:19.481
418	321	507	C:/uploads/h6-1-1740209614432.png	\N	2025-02-22 07:33:34.64	2025-02-22 07:33:34.64
419	321	508	C:/uploads/h6-2-1740209620717.png	\N	2025-02-22 07:33:40.863	2025-02-22 07:33:40.863
420	321	509	C:/uploads/h6-3-1740209627170.png	\N	2025-02-22 07:33:47.274	2025-02-22 07:33:47.274
421	321	510	C:/uploads/h6-4-1740209633220.png	\N	2025-02-22 07:33:53.384	2025-02-22 07:33:53.384
426	323	515	C:/uploads/ft-1-1740210620564.png	\N	2025-02-22 07:50:20.804	2025-02-22 07:50:20.804
427	323	516	C:/uploads/ft-2-1740210627815.png	\N	2025-02-22 07:50:27.94	2025-02-22 07:50:27.94
431	208	272	C:/uploads/4-1740211359302.png	\N	2025-02-22 08:02:39.564	2025-02-22 08:02:39.564
432	207	271	C:/uploads/3-1740211377789.png	\N	2025-02-22 08:02:57.879	2025-02-22 08:02:57.879
437	247	319	C:/uploads/6-1740212576622.png	\N	2025-02-22 08:22:56.861	2025-02-22 08:22:56.861
442	250	324	C:/uploads/8-1740213212551.png	\N	2025-02-22 08:33:32.748	2025-02-22 08:33:32.748
443	340	563	C:/uploads/11-1740214248584.png	\N	2025-02-22 08:50:48.794	2025-02-22 08:50:48.794
1790	392	679	/var/uploads/23837-4-1752653998212.png	\N	2025-07-16 08:19:58.907	2025-07-16 08:19:58.907
1791	392	678	/var/uploads/23837-1-1752654008933.png	\N	2025-07-16 08:20:09.203	2025-07-16 08:20:09.203
1792	392	680	/var/uploads/23837-3-1752654018323.png	\N	2025-07-16 08:20:18.614	2025-07-16 08:20:18.614
450	251	325	C:/uploads/9-1740214964863.png	\N	2025-02-22 09:02:45.06	2025-02-22 09:02:45.06
451	358	586	C:/uploads/1-1740215604004.png	\N	2025-02-22 09:13:24.235	2025-02-22 09:13:24.235
452	359	587	C:/uploads/2-1740215616465.png	\N	2025-02-22 09:13:36.594	2025-02-22 09:13:36.594
453	360	588	C:/uploads/3-1740215626226.png	\N	2025-02-22 09:13:46.354	2025-02-22 09:13:46.354
454	361	589	C:/uploads/4-1740215637520.png	\N	2025-02-22 09:13:57.617	2025-02-22 09:13:57.617
455	362	590	C:/uploads/5-1740215647821.png	\N	2025-02-22 09:14:07.96	2025-02-22 09:14:07.96
456	363	591	C:/uploads/6-1740215655674.png	\N	2025-02-22 09:14:15.808	2025-02-22 09:14:15.808
1793	417	765	/var/uploads/62501-2-1752654075088.png	\N	2025-07-16 08:21:15.265	2025-07-16 08:21:15.265
1794	417	764	/var/uploads/62501-1-1752654085678.png	\N	2025-07-16 08:21:25.851	2025-07-16 08:21:25.851
1795	409	744	/var/uploads/72541-2-1752654145616.png	\N	2025-07-16 08:22:25.767	2025-07-16 08:22:25.767
1796	409	743	/var/uploads/72541-1-1752654156973.png	\N	2025-07-16 08:22:37.185	2025-07-16 08:22:37.185
476	348	576	C:/uploads/1-1740269223513.png	\N	2025-02-23 00:07:03.694	2025-02-23 00:07:03.694
477	349	577	C:/uploads/2-1740269242143.png	\N	2025-02-23 00:07:22.235	2025-02-23 00:07:22.235
478	350	578	C:/uploads/3-1740269254208.png	\N	2025-02-23 00:07:34.308	2025-02-23 00:07:34.308
479	351	579	C:/uploads/4-1740269261733.png	\N	2025-02-23 00:07:41.827	2025-02-23 00:07:41.827
480	352	580	C:/uploads/5-1740269703910.png	\N	2025-02-23 00:15:04.116	2025-02-23 00:15:04.116
481	353	581	C:/uploads/6-1740269730741.png	\N	2025-02-23 00:15:30.86	2025-02-23 00:15:30.86
482	354	582	C:/uploads/7-1740269740572.png	\N	2025-02-23 00:15:40.665	2025-02-23 00:15:40.665
483	355	583	C:/uploads/8-1740269752718.png	\N	2025-02-23 00:15:52.812	2025-02-23 00:15:52.812
484	356	584	C:/uploads/9-1740269784423.png	\N	2025-02-23 00:16:24.515	2025-02-23 00:16:24.515
444	340	564	C:/uploads/14-1740214267501.png	\N	2025-02-22 08:50:54.646	2025-02-22 08:50:54.646
445	340	565	C:/uploads/12-1740214254507.png	\N	2025-02-22 08:51:00.927	2025-02-22 08:51:00.927
446	340	566	C:/uploads/13-1740214260816.png	\N	2025-02-22 08:51:07.604	2025-02-22 08:51:07.604
485	357	585	C:/uploads/10-1740269794456.png	\N	2025-02-23 00:16:34.553	2025-02-23 00:16:34.553
486	342	570	C:/uploads/1-1740269988334.png	\N	2025-02-23 00:19:48.507	2025-02-23 00:19:48.507
487	343	571	C:/uploads/2-1740269996606.png	\N	2025-02-23 00:19:56.703	2025-02-23 00:19:56.703
488	344	572	C:/uploads/3-1740270006005.png	\N	2025-02-23 00:20:06.099	2025-02-23 00:20:06.099
489	345	573	C:/uploads/4-1740270014655.png	\N	2025-02-23 00:20:14.749	2025-02-23 00:20:14.749
490	346	574	C:/uploads/5-1740270024616.png	\N	2025-02-23 00:20:24.71	2025-02-23 00:20:24.71
491	347	575	C:/uploads/6-1740270033622.png	\N	2025-02-23 00:20:33.714	2025-02-23 00:20:33.714
650	293	458	C:/uploads/1-1740321736656.jpg	\N	2025-02-23 14:42:16.886	2025-02-23 14:42:16.886
651	294	459	C:/uploads/2-1740321757863.jpg	\N	2025-02-23 14:42:37.95	2025-02-23 14:42:37.95
652	295	460	C:/uploads/3-1740321776495.jpg	\N	2025-02-23 14:42:56.602	2025-02-23 14:42:56.602
653	296	461	C:/uploads/4-1740321794401.jpg	\N	2025-02-23 14:43:14.6	2025-02-23 14:43:14.6
654	297	462	C:/uploads/5-1740321803962.jpg	\N	2025-02-23 14:43:24.053	2025-02-23 14:43:24.053
655	298	463	C:/uploads/6-1740321812841.jpg	\N	2025-02-23 14:43:32.925	2025-02-23 14:43:32.925
656	287	450	C:/uploads/11-1740322059628.jpg	\N	2025-02-23 14:47:39.807	2025-02-23 14:47:39.807
657	288	449	C:/uploads/22-1740322099735.jpg	\N	2025-02-23 14:48:19.887	2025-02-23 14:48:19.887
658	289	448	C:/uploads/33-1740322153746.jpg	\N	2025-02-23 14:49:13.847	2025-02-23 14:49:13.847
659	290	455	C:/uploads/1-1740322384776.jpg	\N	2025-02-23 14:53:04.95	2025-02-23 14:53:04.95
660	291	456	C:/uploads/2-1740322404572.jpg	\N	2025-02-23 14:53:24.657	2025-02-23 14:53:24.657
661	292	457	C:/uploads/3-1740322424515.jpg	\N	2025-02-23 14:53:44.604	2025-02-23 14:53:44.604
662	283	454	C:/uploads/41-1740322683429.jpg	\N	2025-02-23 14:58:03.621	2025-02-23 14:58:03.621
664	285	452	C:/uploads/43-1740322726611.jpg	\N	2025-02-23 14:58:46.742	2025-02-23 14:58:46.742
667	282	442	C:/uploads/1-1740324107014.jpg	\N	2025-02-23 15:21:47.183	2025-02-23 15:21:47.183
668	281	443	C:/uploads/2-1740324124861.jpg	\N	2025-02-23 15:22:04.945	2025-02-23 15:22:04.945
669	280	444	C:/uploads/3-1740324142039.jpg	\N	2025-02-23 15:22:22.128	2025-02-23 15:22:22.128
670	279	445	C:/uploads/4-1740324162098.jpg	\N	2025-02-23 15:22:42.182	2025-02-23 15:22:42.182
671	278	446	C:/uploads/5-1740324215341.jpg	\N	2025-02-23 15:23:35.428	2025-02-23 15:23:35.428
672	277	447	C:/uploads/6-1740324232656.jpg	\N	2025-02-23 15:23:52.793	2025-02-23 15:23:52.793
665	286	451	C:/uploads/42-1740322707962.jpg	\N	2025-02-23 14:59:05.087	2025-02-23 14:59:05.087
663	284	453	C:/uploads/44-1740322744972.jpg	\N	2025-02-23 14:58:28.048	2025-02-23 14:58:28.048
712	260	415	C:/uploads/1-1740331821860.jpg	\N	2025-02-23 17:30:21.955	2025-02-23 17:30:21.955
713	260	416	C:/uploads/2-1740331829071.jpg	\N	2025-02-23 17:30:29.157	2025-02-23 17:30:29.157
714	260	417	C:/uploads/3-1740331836474.jpg	\N	2025-02-23 17:30:36.555	2025-02-23 17:30:36.555
715	260	418	C:/uploads/4-1740331845052.jpg	\N	2025-02-23 17:30:45.137	2025-02-23 17:30:45.137
716	260	419	C:/uploads/5-1740331852381.jpg	\N	2025-02-23 17:30:52.463	2025-02-23 17:30:52.463
717	260	420	C:/uploads/6-1740331858798.jpg	\N	2025-02-23 17:30:58.883	2025-02-23 17:30:58.883
718	261	421	C:/uploads/1-1740331894318.jpg	\N	2025-02-23 17:31:34.512	2025-02-23 17:31:34.512
719	261	422	C:/uploads/2-1740331900939.jpg	\N	2025-02-23 17:31:41.032	2025-02-23 17:31:41.032
720	261	423	C:/uploads/3-1740331907369.jpg	\N	2025-02-23 17:31:47.459	2025-02-23 17:31:47.459
721	261	424	C:/uploads/4-1740331916697.jpg	\N	2025-02-23 17:31:56.8	2025-02-23 17:31:56.8
722	261	425	C:/uploads/5-1740331924926.jpg	\N	2025-02-23 17:32:05.017	2025-02-23 17:32:05.017
723	261	426	C:/uploads/6-1740331932031.jpg	\N	2025-02-23 17:32:12.13	2025-02-23 17:32:12.13
724	326	521	C:/uploads/su3-1740360744282.png	\N	2025-02-24 01:32:24.483	2025-02-24 01:32:24.483
725	325	519	C:/uploads/su21-1740361517606.png	\N	2025-02-24 01:45:17.783	2025-02-24 01:45:17.783
726	325	520	C:/uploads/su22-1740361524012.png	\N	2025-02-24 01:45:24.12	2025-02-24 01:45:24.12
727	324	517	C:/uploads/su11-1740361843100.png	\N	2025-02-24 01:50:43.299	2025-02-24 01:50:43.299
728	324	518	C:/uploads/su12-1740361853630.png	\N	2025-02-24 01:50:53.737	2025-02-24 01:50:53.737
729	588	1317	C:/uploads/71921-1740544528868.jpg	\N	2025-02-26 04:35:29.151	2025-02-26 04:35:29.151
1717	531	1049	/var/uploads/604-6-1752306498791.png	\N	2025-07-12 07:48:18.92	2025-07-12 07:48:18.92
1718	531	1048	/var/uploads/604-5-1752306511070.png	\N	2025-07-12 07:48:31.212	2025-07-12 07:48:31.212
732	369	613	C:/uploads/21-1740626069635.jpg	\N	2025-02-27 03:14:29.882	2025-02-27 03:14:29.882
733	369	614	C:/uploads/22-1740626077585.jpg	\N	2025-02-27 03:14:37.71	2025-02-27 03:14:37.71
1719	531	1047	/var/uploads/604-4-1752306522175.png	\N	2025-07-12 07:48:42.314	2025-07-12 07:48:42.314
1720	531	1046	/var/uploads/604-3-1752306542010.png	\N	2025-07-12 07:49:02.095	2025-07-12 07:49:02.095
736	371	617	C:/uploads/42-1740626204142.jpg	\N	2025-02-27 03:16:44.231	2025-02-27 03:16:44.231
737	371	618	C:/uploads/41-1740626214385.jpg	\N	2025-02-27 03:16:54.479	2025-02-27 03:16:54.479
738	372	619	C:/uploads/10-1740626319027.png	\N	2025-02-27 03:18:39.156	2025-02-27 03:18:39.156
739	372	620	C:/uploads/12-1740626333128.png	\N	2025-02-27 03:18:53.217	2025-02-27 03:18:53.217
740	373	621	C:/uploads/21-1740626405270.png	\N	2025-02-27 03:20:05.453	2025-02-27 03:20:05.453
741	373	622	C:/uploads/22-1740626420590.png	\N	2025-02-27 03:20:20.68	2025-02-27 03:20:20.68
742	374	623	C:/uploads/31-1740626487626.png	\N	2025-02-27 03:21:27.72	2025-02-27 03:21:27.72
744	375	625	C:/uploads/41-1740628259487.png	\N	2025-02-27 03:50:59.858	2025-02-27 03:50:59.858
745	375	626	C:/uploads/42-1740628276799.png	\N	2025-02-27 03:51:16.888	2025-02-27 03:51:16.888
1797	564	1175	/var/uploads/a001-2-1752654359704.png	\N	2025-07-16 08:25:59.974	2025-07-16 08:25:59.974
747	377	628	C:/uploads/21-1740628391477.png	\N	2025-02-27 03:53:11.6	2025-02-27 03:53:11.6
748	377	629	C:/uploads/22-1740628408331.png	\N	2025-02-27 03:53:28.426	2025-02-27 03:53:28.426
749	378	630	C:/uploads/31-1740628462018.png	\N	2025-02-27 03:54:22.11	2025-02-27 03:54:22.11
750	378	631	C:/uploads/32-1740628477774.png	\N	2025-02-27 03:54:37.949	2025-02-27 03:54:37.949
751	378	632	C:/uploads/33-1740628510309.png	\N	2025-02-27 03:55:10.922	2025-02-27 03:55:10.922
752	378	633	C:/uploads/34-1740628517684.png	\N	2025-02-27 03:55:17.811	2025-02-27 03:55:17.811
753	379	634	C:/uploads/41-1740628566142.png	\N	2025-02-27 03:56:06.27	2025-02-27 03:56:06.27
674	263	428	/var/uploads/c-1747905635104.png	\N	2025-02-23 15:46:56.458	2025-02-23 15:46:56.458
675	264	429	/var/uploads/d-1747905745279.png	\N	2025-02-23 15:47:14.049	2025-02-23 15:47:14.049
676	265	430	/var/uploads/e-1747905798472.png	\N	2025-02-23 15:47:26.275	2025-02-23 15:47:26.275
678	267	432	/var/uploads/g-1747905899524.png	\N	2025-02-23 15:48:13.804	2025-02-23 15:48:13.804
679	268	433	/var/uploads/h-1747905946657.png	\N	2025-02-23 15:48:24.29	2025-02-23 15:48:24.29
680	269	434	/var/uploads/i-1747906040303.png	\N	2025-02-23 15:48:33.627	2025-02-23 15:48:33.627
681	270	435	/var/uploads/j-1747906073696.png	\N	2025-02-23 15:48:44.637	2025-02-23 15:48:44.637
682	271	436	/var/uploads/k-1747906120526.png	\N	2025-02-23 15:48:54.537	2025-02-23 15:48:54.537
683	272	437	/var/uploads/l-1747906150455.png	\N	2025-02-23 15:49:04.444	2025-02-23 15:49:04.444
684	273	438	/var/uploads/n-1747906183842.png	\N	2025-02-23 15:49:14.347	2025-02-23 15:49:14.347
685	274	439	/var/uploads/o-1747906212033.png	\N	2025-02-23 15:49:24.805	2025-02-23 15:49:24.805
686	275	440	/var/uploads/p-1747906269240.png	\N	2025-02-23 15:49:51.636	2025-02-23 15:49:51.636
687	276	441	/var/uploads/q-1747906300135.png	\N	2025-02-23 15:50:00.262	2025-02-23 15:50:00.262
677	266	431	/var/uploads/f-1747906969507.png	\N	2025-02-23 15:48:01.708	2025-02-23 15:48:01.708
1798	564	1174	/var/uploads/a001-1-1752654370344.png	\N	2025-07-16 08:26:17.786	2025-07-16 08:26:17.786
754	379	635	C:/uploads/42-1740628572437.png	\N	2025-02-27 03:56:12.55	2025-02-27 03:56:12.55
755	379	636	C:/uploads/43-1740628586446.png	\N	2025-02-27 03:56:26.574	2025-02-27 03:56:26.574
756	380	637	C:/uploads/11-1740628703446.png	\N	2025-02-27 03:58:23.534	2025-02-27 03:58:23.534
757	380	638	C:/uploads/12-1740628714613.png	\N	2025-02-27 03:58:34.703	2025-02-27 03:58:34.703
758	380	639	C:/uploads/13-1740628728913.png	\N	2025-02-27 03:58:49.036	2025-02-27 03:58:49.036
759	380	640	C:/uploads/14-1740628738955.png	\N	2025-02-27 03:58:59.078	2025-02-27 03:58:59.078
760	381	641	C:/uploads/21-1740628792356.png	\N	2025-02-27 03:59:52.6	2025-02-27 03:59:52.6
761	381	642	C:/uploads/22-1740628799302.png	\N	2025-02-27 03:59:59.386	2025-02-27 03:59:59.386
762	381	643	C:/uploads/23-1740628805687.png	\N	2025-02-27 04:00:05.801	2025-02-27 04:00:05.801
763	381	644	C:/uploads/24-1740628813124.png	\N	2025-02-27 04:00:13.247	2025-02-27 04:00:13.247
765	383	646	C:/uploads/41-1740628917059.png	\N	2025-02-27 04:01:57.18	2025-02-27 04:01:57.18
766	383	647	C:/uploads/42-1740628926707.png	\N	2025-02-27 04:02:06.818	2025-02-27 04:02:06.818
767	383	648	C:/uploads/43-1740628933898.png	\N	2025-02-27 04:02:13.992	2025-02-27 04:02:13.992
768	383	649	C:/uploads/44-1740628940617.png	\N	2025-02-27 04:02:20.778	2025-02-27 04:02:20.778
769	384	650	C:/uploads/11-1740637504006.png	\N	2025-02-27 06:25:04.205	2025-02-27 06:25:04.205
1721	531	1050	/var/uploads/604-7-1752306686446.png	\N	2025-07-12 07:51:26.543	2025-07-12 07:51:26.543
1722	531	1044	/var/uploads/604-1-1752306698709.png	\N	2025-07-12 07:51:38.846	2025-07-12 07:51:38.846
1723	514	980	/var/uploads/806-3-1752306883550.png	\N	2025-07-12 07:54:43.69	2025-07-12 07:54:43.69
1724	514	982	/var/uploads/806-2-1752306893094.png	\N	2025-07-12 07:54:53.387	2025-07-12 07:54:53.387
774	386	655	C:/uploads/31-1740637685799.png	\N	2025-02-27 06:28:05.892	2025-02-27 06:28:05.892
775	386	656	C:/uploads/32-1740637693928.png	\N	2025-02-27 06:28:14.021	2025-02-27 06:28:14.021
776	386	657	C:/uploads/33-1740637703373.png	\N	2025-02-27 06:28:23.572	2025-02-27 06:28:23.572
1725	514	981	/var/uploads/806-1-1752306908773.png	\N	2025-07-12 07:55:08.901	2025-07-12 07:55:08.901
1726	512	974	/var/uploads/21059-2-1752306968472.png	\N	2025-07-12 07:56:08.678	2025-07-12 07:56:08.678
1727	512	973	/var/uploads/21059-3-1752306980578.png	\N	2025-07-12 07:56:20.771	2025-07-12 07:56:20.771
1799	564	1177	/var/uploads/a001-4-1752654389839.png	\N	2025-07-16 08:27:08.042	2025-07-16 08:27:08.042
781	388	662	C:/uploads/11-1740637873183.png	\N	2025-02-27 06:31:13.429	2025-02-27 06:31:13.429
782	388	663	C:/uploads/12-1740637879703.png	\N	2025-02-27 06:31:19.824	2025-02-27 06:31:19.824
783	388	664	C:/uploads/13-1740637887667.png	\N	2025-02-27 06:31:27.788	2025-02-27 06:31:27.788
784	388	665	C:/uploads/14-1740637894603.png	\N	2025-02-27 06:31:34.743	2025-02-27 06:31:34.743
785	389	666	C:/uploads/21-1740637940184.png	\N	2025-02-27 06:32:20.294	2025-02-27 06:32:20.294
786	389	667	C:/uploads/22-1740637958305.png	\N	2025-02-27 06:32:38.395	2025-02-27 06:32:38.395
787	389	668	C:/uploads/23-1740637970443.png	\N	2025-02-27 06:32:50.611	2025-02-27 06:32:50.611
790	391	675	C:/uploads/42-1740638602450.png	\N	2025-02-27 06:43:22.538	2025-02-27 06:43:22.538
791	391	676	C:/uploads/43-1740638611601.png	\N	2025-02-27 06:43:31.713	2025-02-27 06:43:31.713
793	393	682	C:/uploads/21-1740639722079.png	\N	2025-02-27 07:02:02.519	2025-02-27 07:02:02.519
794	393	683	C:/uploads/22-1740639729074.png	\N	2025-02-27 07:02:09.327	2025-02-27 07:02:09.327
795	393	684	C:/uploads/23-1740639735532.png	\N	2025-02-27 07:02:15.734	2025-02-27 07:02:15.734
796	393	685	C:/uploads/24-1740639742351.png	\N	2025-02-27 07:02:22.585	2025-02-27 07:02:22.585
797	394	686	C:/uploads/31-1740639780690.png	\N	2025-02-27 07:03:00.867	2025-02-27 07:03:00.867
798	394	687	C:/uploads/32-1740639788111.png	\N	2025-02-27 07:03:08.483	2025-02-27 07:03:08.483
799	394	688	C:/uploads/33-1740639795765.png	\N	2025-02-27 07:03:16.13	2025-02-27 07:03:16.13
800	394	689	C:/uploads/34-1740639804276.png	\N	2025-02-27 07:03:24.394	2025-02-27 07:03:24.394
801	395	690	C:/uploads/41-1740639850489.png	\N	2025-02-27 07:04:10.592	2025-02-27 07:04:10.592
802	395	691	C:/uploads/42-1740639870291.png	\N	2025-02-27 07:04:30.382	2025-02-27 07:04:30.382
803	395	692	C:/uploads/43-1740639882535.png	\N	2025-02-27 07:04:42.656	2025-02-27 07:04:42.656
804	395	693	C:/uploads/44-1740639890252.png	\N	2025-02-27 07:04:50.341	2025-02-27 07:04:50.341
805	396	694	C:/uploads/11-1740640159356.png	\N	2025-02-27 07:09:19.53	2025-02-27 07:09:19.53
806	396	695	C:/uploads/12-1740640164872.png	\N	2025-02-27 07:09:24.997	2025-02-27 07:09:24.997
807	396	696	C:/uploads/13-1740640170942.png	\N	2025-02-27 07:09:31.029	2025-02-27 07:09:31.029
808	396	697	C:/uploads/14-1740640176506.png	\N	2025-02-27 07:09:36.592	2025-02-27 07:09:36.592
809	397	698	C:/uploads/21-1740640259403.png	\N	2025-02-27 07:10:59.62	2025-02-27 07:10:59.62
810	397	699	C:/uploads/22-1740640265496.png	\N	2025-02-27 07:11:05.66	2025-02-27 07:11:05.66
811	397	700	C:/uploads/23-1740640272094.png	\N	2025-02-27 07:11:12.18	2025-02-27 07:11:12.18
812	397	701	C:/uploads/24-1740640278286.png	\N	2025-02-27 07:11:18.514	2025-02-27 07:11:18.514
813	406	734	C:/uploads/11-1740640817199.png	\N	2025-02-27 07:20:17.388	2025-02-27 07:20:17.388
814	406	735	C:/uploads/12-1740640822948.jpg	\N	2025-02-27 07:20:23.077	2025-02-27 07:20:23.077
815	406	736	C:/uploads/13-1740640828662.png	\N	2025-02-27 07:20:28.753	2025-02-27 07:20:28.753
816	406	737	C:/uploads/14-1740640834560.png	\N	2025-02-27 07:20:34.662	2025-02-27 07:20:34.662
817	418	766	C:/uploads/10-1740640878972.jpg	\N	2025-02-27 07:21:19.086	2025-02-27 07:21:19.086
819	423	773	C:/uploads/42-1740641086810.jpg	\N	2025-02-27 07:24:46.931	2025-02-27 07:24:46.931
820	423	774	C:/uploads/41-1740641099276.jpg	\N	2025-02-27 07:24:59.396	2025-02-27 07:24:59.396
821	423	775	C:/uploads/43-1740641106022.jpg	\N	2025-02-27 07:25:06.191	2025-02-27 07:25:06.191
822	425	777	C:/uploads/21-1740641192685.jpg	\N	2025-02-27 07:26:32.769	2025-02-27 07:26:32.769
823	425	778	C:/uploads/22-1740641198404.jpg	\N	2025-02-27 07:26:38.497	2025-02-27 07:26:38.497
824	426	779	C:/uploads/30-1740641233421.png	\N	2025-02-27 07:27:13.567	2025-02-27 07:27:13.567
789	391	674	C:/uploads/44-1740638618594.png	\N	2025-02-27 06:42:45.382	2025-02-27 06:42:45.382
792	391	677	C:/uploads/41-1740638555812.png	\N	2025-02-27 06:43:38.99	2025-02-27 06:43:38.99
825	431	791	C:/uploads/41-1740641647983.png	\N	2025-02-27 07:34:08.186	2025-02-27 07:34:08.186
826	431	792	C:/uploads/42-1740641653673.png	\N	2025-02-27 07:34:13.767	2025-02-27 07:34:13.767
827	431	793	C:/uploads/43-1740641659146.png	\N	2025-02-27 07:34:19.266	2025-02-27 07:34:19.266
828	432	794	C:/uploads/10-1740641701878.jpg	\N	2025-02-27 07:35:01.964	2025-02-27 07:35:01.964
829	435	799	C:/uploads/40-1740641758606.jpg	\N	2025-02-27 07:35:58.712	2025-02-27 07:35:58.712
833	437	803	C:/uploads/21-1740641865328.jpg	\N	2025-02-27 07:37:45.422	2025-02-27 07:37:45.422
834	437	804	C:/uploads/22-1740641870662.jpg	\N	2025-02-27 07:37:50.779	2025-02-27 07:37:50.779
835	437	805	C:/uploads/23-1740641877556.jpg	\N	2025-02-27 07:37:57.731	2025-02-27 07:37:57.731
836	442	814	C:/uploads/10-1740641945140.jpg	\N	2025-02-27 07:39:05.317	2025-02-27 07:39:05.317
837	444	816	C:/uploads/40-1740641978746.jpg	\N	2025-02-27 07:39:38.841	2025-02-27 07:39:38.841
838	483	887	C:/uploads/22-1740642238586.jpg	\N	2025-02-27 07:43:58.684	2025-02-27 07:43:58.684
839	483	888	C:/uploads/21-1740642244535.jpg	\N	2025-02-27 07:44:04.651	2025-02-27 07:44:04.651
841	487	899	C:/uploads/21-1740642364803.jpg	\N	2025-02-27 07:46:04.9	2025-02-27 07:46:04.9
842	487	900	C:/uploads/22-1740642379420.jpg	\N	2025-02-27 07:46:19.519	2025-02-27 07:46:19.519
843	487	901	C:/uploads/23-1740642386616.jpg	\N	2025-02-27 07:46:26.795	2025-02-27 07:46:26.795
844	487	902	C:/uploads/24-1740642395925.jpg	\N	2025-02-27 07:46:36.024	2025-02-27 07:46:36.024
847	491	912	C:/uploads/21-1740642529658.jpg	\N	2025-02-27 07:48:49.766	2025-02-27 07:48:49.766
848	491	913	C:/uploads/22-1740642538867.jpg	\N	2025-02-27 07:48:58.993	2025-02-27 07:48:58.993
1800	564	1176	/var/uploads/a001-3-1752654445634.png	\N	2025-07-16 08:27:25.815	2025-07-16 08:27:25.815
849	491	911	C:/uploads/23-1740642545105.jpg	\N	2025-02-27 07:49:05.195	2025-02-27 07:49:05.195
850	508	957	C:/uploads/26-1740642615720.png	\N	2025-02-27 07:50:15.903	2025-02-27 07:50:15.903
851	508	962	C:/uploads/25-1740642632578.png	\N	2025-02-27 07:50:32.676	2025-02-27 07:50:32.676
852	508	961	C:/uploads/24-1740642641338.png	\N	2025-02-27 07:50:41.427	2025-02-27 07:50:41.427
853	508	960	C:/uploads/23-1740642651416.png	\N	2025-02-27 07:50:51.509	2025-02-27 07:50:51.509
854	508	959	C:/uploads/22-1740642658618.png	\N	2025-02-27 07:50:58.745	2025-02-27 07:50:58.745
855	508	958	C:/uploads/21-1740642716280.png	\N	2025-02-27 07:51:56.378	2025-02-27 07:51:56.378
859	511	969	C:/uploads/31-1740643048426.png	\N	2025-02-27 07:57:28.522	2025-02-27 07:57:28.522
860	511	970	C:/uploads/32-1740643065380.png	\N	2025-02-27 07:57:45.619	2025-02-27 07:57:45.619
861	511	971	C:/uploads/33-1740643095035.png	\N	2025-02-27 07:58:15.133	2025-02-27 07:58:15.133
862	511	972	C:/uploads/34-1740643100327.png	\N	2025-02-27 07:58:20.423	2025-02-27 07:58:20.423
866	516	985	C:/uploads/30-1740643229182.jpg	\N	2025-02-27 08:00:29.302	2025-02-27 08:00:29.302
867	515	983	C:/uploads/42-1740643319956.jpg	\N	2025-02-27 08:02:00.165	2025-02-27 08:02:00.165
868	515	984	C:/uploads/41-1740643325615.jpg	\N	2025-02-27 08:02:05.702	2025-02-27 08:02:05.702
869	518	989	C:/uploads/11-1740643411437.jpg	\N	2025-02-27 08:03:31.526	2025-02-27 08:03:31.526
870	518	990	C:/uploads/12-1740643420765.jpg	\N	2025-02-27 08:03:40.985	2025-02-27 08:03:40.985
871	518	991	C:/uploads/13-1740643426435.jpg	\N	2025-02-27 08:03:46.609	2025-02-27 08:03:46.609
872	517	986	C:/uploads/11-1740643491987.jpg	\N	2025-02-27 08:04:52.082	2025-02-27 08:04:52.082
873	517	987	C:/uploads/12-1740643498598.jpg	\N	2025-02-27 08:04:58.72	2025-02-27 08:04:58.72
874	517	988	C:/uploads/13-1740643504009.jpg	\N	2025-02-27 08:05:04.111	2025-02-27 08:05:04.111
875	520	995	C:/uploads/31-1740643553775.png	\N	2025-02-27 08:05:53.877	2025-02-27 08:05:53.877
876	520	996	C:/uploads/32-1740643561141.png	\N	2025-02-27 08:06:01.265	2025-02-27 08:06:01.265
877	520	997	C:/uploads/33-1740643567321.png	\N	2025-02-27 08:06:07.466	2025-02-27 08:06:07.466
878	520	998	C:/uploads/34-1740643595350.png	\N	2025-02-27 08:06:35.444	2025-02-27 08:06:35.444
880	524	1008	C:/uploads/31-1740644046529.png	\N	2025-02-27 08:14:06.627	2025-02-27 08:14:06.627
881	524	1009	C:/uploads/32-1740644056690.png	\N	2025-02-27 08:14:16.789	2025-02-27 08:14:16.789
882	524	1010	C:/uploads/33-1740644063274.png	\N	2025-02-27 08:14:23.379	2025-02-27 08:14:23.379
883	524	1011	C:/uploads/34-1740644069336.png	\N	2025-02-27 08:14:29.437	2025-02-27 08:14:29.437
884	577	1223	C:/uploads/31-1740644209549.png	\N	2025-02-27 08:16:49.651	2025-02-27 08:16:49.651
885	577	1224	C:/uploads/32-1740644214718.png	\N	2025-02-27 08:16:54.814	2025-02-27 08:16:54.814
886	577	1225	C:/uploads/33-1740644220298.png	\N	2025-02-27 08:17:00.421	2025-02-27 08:17:00.421
887	577	1226	C:/uploads/34-1740644230627.png	\N	2025-02-27 08:17:10.729	2025-02-27 08:17:10.729
888	577	1227	C:/uploads/35-1740644239525.png	\N	2025-02-27 08:17:19.624	2025-02-27 08:17:19.624
889	577	1228	C:/uploads/36-1740644245697.png	\N	2025-02-27 08:17:25.8	2025-02-27 08:17:25.8
41	32	36	C:/uploads/SY-A0873-Rainbow-1739930353977.png	\N	2025-02-19 01:59:23.861	2025-02-19 01:59:23.861
40	32	35	C:/uploads/SY-A0873-Pink-1739930363748.png	\N	2025-02-19 01:59:14.13	2025-02-19 01:59:14.13
19	330	525	C:/uploads/2029-1739928685130.png	\N	2025-02-19 01:31:59.911	2025-02-19 01:31:59.911
890	202	1318	C:/uploads/wer-1740732770810.png	\N	2025-02-28 08:52:51.035	2025-02-28 08:52:51.035
891	202	1319	C:/uploads/wdawd-1740732782757.png	\N	2025-02-28 08:53:02.943	2025-02-28 08:53:02.943
892	20	1322	C:/uploads/SY-A2002-1740734794248.png	\N	2025-02-28 09:26:34.799	2025-02-28 09:26:34.799
893	20	1323	C:/uploads/SY-A2003-1740734810194.png	\N	2025-02-28 09:26:50.347	2025-02-28 09:26:50.347
894	22	1320	C:/uploads/SY-A2002-1740734832939.png	\N	2025-02-28 09:27:13.036	2025-02-28 09:27:13.036
895	22	1321	C:/uploads/SY-A2003-1740734838757.png	\N	2025-02-28 09:27:18.848	2025-02-28 09:27:18.848
896	104	1324	C:/uploads/2-1740793467627.png	\N	2025-03-01 01:44:27.884	2025-03-01 01:44:27.884
897	104	1325	C:/uploads/1-1740793475223.png	\N	2025-03-01 01:44:35.33	2025-03-01 01:44:35.33
898	107	1326	C:/uploads/2-1740793496163.png	\N	2025-03-01 01:44:56.251	2025-03-01 01:44:56.251
899	107	1327	C:/uploads/1-1740793503144.png	\N	2025-03-01 01:45:03.227	2025-03-01 01:45:03.227
900	51	56	C:/uploads/Untitled-1-1740794111839.png	\N	2025-03-01 01:55:12.01	2025-03-01 01:55:12.01
901	315	1328	C:/uploads/1-1740797713340.png	\N	2025-03-01 02:55:13.553	2025-03-01 02:55:13.553
902	315	1329	C:/uploads/2-1740797722873.png	\N	2025-03-01 02:55:23.012	2025-03-01 02:55:23.012
903	315	1330	C:/uploads/3-1740797731681.png	\N	2025-03-01 02:55:31.779	2025-03-01 02:55:31.779
904	315	1331	C:/uploads/4-1740797739112.png	\N	2025-03-01 02:55:39.238	2025-03-01 02:55:39.238
905	315	1332	C:/uploads/5-1740797757006.png	\N	2025-03-01 02:55:57.648	2025-03-01 02:55:57.648
906	315	1333	C:/uploads/6-1740797766974.png	\N	2025-03-01 02:56:07.076	2025-03-01 02:56:07.076
907	315	1334	C:/uploads/7-1740797778506.png	\N	2025-03-01 02:56:18.611	2025-03-01 02:56:18.611
908	315	1335	C:/uploads/8-1740797801858.png	\N	2025-03-01 02:56:42.13	2025-03-01 02:56:42.13
909	315	1336	C:/uploads/9-1740797808453.png	\N	2025-03-01 02:56:48.612	2025-03-01 02:56:48.612
910	315	1337	C:/uploads/10-1740797817257.png	\N	2025-03-01 02:56:57.342	2025-03-01 02:56:57.342
911	246	315	C:/uploads/594-1740799807498.png	\N	2025-03-01 03:30:07.756	2025-03-01 03:30:07.756
912	248	320	C:/uploads/250-1740799837992.png	\N	2025-03-01 03:30:38.081	2025-03-01 03:30:38.081
913	27	1338	C:/uploads/SY-A2038-5-1740800274728.png	\N	2025-03-01 03:37:55.015	2025-03-01 03:37:55.015
914	390	670	/var/uploads/31-1741141207491.png	\N	2025-03-05 02:20:07.498	2025-03-05 02:20:07.498
915	390	671	/var/uploads/32-1741141215168.png	\N	2025-03-05 02:20:15.174	2025-03-05 02:20:15.174
916	390	672	/var/uploads/33-1741141221160.png	\N	2025-03-05 02:20:21.165	2025-03-05 02:20:21.165
917	390	673	/var/uploads/34-1741141236972.png	\N	2025-03-05 02:20:36.979	2025-03-05 02:20:36.979
965	486	896	/var/uploads/11-1741143306015.png	\N	2025-03-05 02:55:06.02	2025-03-05 02:55:06.02
966	486	897	/var/uploads/12-1741143312458.png	\N	2025-03-05 02:55:12.462	2025-03-05 02:55:12.462
1013	526	1018	/var/uploads/21-1741146350274.png	\N	2025-03-05 03:45:50.28	2025-03-05 03:45:50.28
1014	526	1019	/var/uploads/22-1741146359913.png	\N	2025-03-05 03:45:59.921	2025-03-05 03:45:59.921
1016	530	1039	/var/uploads/21-1741146500237.png	\N	2025-03-05 03:48:20.241	2025-03-05 03:48:20.241
1018	530	1041	/var/uploads/23-1741146520126.png	\N	2025-03-05 03:48:40.13	2025-03-05 03:48:40.13
1019	530	1042	/var/uploads/24-1741146542123.png	\N	2025-03-05 03:49:02.128	2025-03-05 03:49:02.128
1020	530	1043	/var/uploads/25-1741146555230.png	\N	2025-03-05 03:49:15.233	2025-03-05 03:49:15.233
1061	548	1118	/var/uploads/31-1741147644381.png	\N	2025-03-05 04:07:24.387	2025-03-05 04:07:24.387
1062	548	1119	/var/uploads/32-1741147653827.png	\N	2025-03-05 04:07:33.832	2025-03-05 04:07:33.832
1063	548	1120	/var/uploads/33-1741147662586.png	\N	2025-03-05 04:07:42.591	2025-03-05 04:07:42.591
1064	548	1121	/var/uploads/34-1741147668907.png	\N	2025-03-05 04:07:48.911	2025-03-05 04:07:48.911
1065	548	1122	/var/uploads/35-1741147674308.png	\N	2025-03-05 04:07:54.313	2025-03-05 04:07:54.313
1066	561	1165	/var/uploads/31-1741147736062.png	\N	2025-03-05 04:08:56.066	2025-03-05 04:08:56.066
1067	561	1165	/var/uploads/31-1741147741498.png	\N	2025-03-05 04:09:01.502	2025-03-05 04:09:01.502
1068	561	1166	/var/uploads/32-1741147750143.png	\N	2025-03-05 04:09:10.147	2025-03-05 04:09:10.147
1069	561	1167	/var/uploads/33-1741147755605.png	\N	2025-03-05 04:09:15.612	2025-03-05 04:09:15.612
1070	563	1171	/var/uploads/11-1741147811995.png	\N	2025-03-05 04:10:11.999	2025-03-05 04:10:11.999
1071	563	1172	/var/uploads/12-1741147830098.png	\N	2025-03-05 04:10:30.103	2025-03-05 04:10:30.103
1072	563	1173	/var/uploads/13-1741147839482.png	\N	2025-03-05 04:10:39.486	2025-03-05 04:10:39.486
1073	565	1178	/var/uploads/11-1741147907595.png	\N	2025-03-05 04:11:47.599	2025-03-05 04:11:47.599
1074	565	1179	/var/uploads/12-1741147913814.png	\N	2025-03-05 04:11:53.818	2025-03-05 04:11:53.818
1075	565	1180	/var/uploads/13-1741147919343.png	\N	2025-03-05 04:11:59.347	2025-03-05 04:11:59.347
1135	503	942	/var/uploads/11-1741241693813.png	\N	2025-03-06 06:14:53.817	2025-03-06 06:14:53.817
1136	503	943	/var/uploads/12-1741241706624.png	\N	2025-03-06 06:15:06.628	2025-03-06 06:15:06.628
1137	503	944	/var/uploads/13-1741241712540.png	\N	2025-03-06 06:15:12.544	2025-03-06 06:15:12.544
1138	504	945	/var/uploads/21-1741241765906.png	\N	2025-03-06 06:16:05.912	2025-03-06 06:16:05.912
1139	504	946	/var/uploads/22-1741241772260.png	\N	2025-03-06 06:16:12.265	2025-03-06 06:16:12.265
1140	504	947	/var/uploads/23-1741241780823.png	\N	2025-03-06 06:16:20.827	2025-03-06 06:16:20.827
1141	505	948	/var/uploads/31-1741241820756.png	\N	2025-03-06 06:17:00.759	2025-03-06 06:17:00.759
1142	505	949	/var/uploads/32-1741241826044.png	\N	2025-03-06 06:17:06.048	2025-03-06 06:17:06.048
1143	505	950	/var/uploads/33-1741241831657.png	\N	2025-03-06 06:17:11.661	2025-03-06 06:17:11.661
1728	512	975	/var/uploads/21059-1-1752306989618.png	\N	2025-07-12 07:56:29.79	2025-07-12 07:56:29.79
1729	521	1001	/var/uploads/22069-3-1752307065589.png	\N	2025-07-12 07:57:45.724	2025-07-12 07:57:45.724
1730	521	1000	/var/uploads/22069-1-1752307075377.png	\N	2025-07-12 07:57:55.511	2025-07-12 07:57:55.511
1731	521	999	/var/uploads/22069-2-1752307085123.png	\N	2025-07-12 07:58:05.273	2025-07-12 07:58:05.273
1732	521	1002	/var/uploads/22069-4-1752307094989.png	\N	2025-07-12 07:58:15.124	2025-07-12 07:58:15.124
1733	510	968	/var/uploads/23730-4-1752307165852.png	\N	2025-07-12 07:59:26.087	2025-07-12 07:59:26.087
1184	400	710	/var/uploads/31-1741243283260.png	\N	2025-03-06 06:41:23.27	2025-03-06 06:41:23.27
1185	400	711	/var/uploads/32-1741243288539.png	\N	2025-03-06 06:41:28.543	2025-03-06 06:41:28.543
1186	400	712	/var/uploads/33-1741243292956.png	\N	2025-03-06 06:41:32.959	2025-03-06 06:41:32.959
1187	400	713	/var/uploads/34-1741243302845.png	\N	2025-03-06 06:41:42.849	2025-03-06 06:41:42.849
1734	510	967	/var/uploads/23730-3-1752307229444.png	\N	2025-07-12 08:00:29.634	2025-07-12 08:00:29.634
1735	510	966	/var/uploads/23730-2-1752307242735.png	\N	2025-07-12 08:00:42.928	2025-07-12 08:00:42.928
1801	8	10	/var/uploads/a01-1-1752654540837.png	\N	2025-07-16 08:29:01.049	2025-07-16 08:29:01.049
1232	389	669	/var/uploads/24-1741321654185.png	\N	2025-03-07 04:27:34.192	2025-03-07 04:27:34.192
1233	374	624	/var/uploads/33252-1741321847969.png	\N	2025-03-07 04:30:47.973	2025-03-07 04:30:47.973
1297	474	873	/var/uploads/31-1741340597412.png	\N	2025-03-07 09:43:17.417	2025-03-07 09:43:17.417
1298	474	874	/var/uploads/32-1741340602551.png	\N	2025-03-07 09:43:22.555	2025-03-07 09:43:22.555
1802	8	10	/var/uploads/a01-2-1752654544784.png	\N	2025-07-16 08:29:04.954	2025-07-16 08:29:04.954
1301	552	1133	/var/uploads/11-1741340718047.png	\N	2025-03-07 09:45:18.051	2025-03-07 09:45:18.051
1302	552	1134	/var/uploads/12-1741340727674.png	\N	2025-03-07 09:45:27.678	2025-03-07 09:45:27.678
1303	552	1135	/var/uploads/13-1741340737601.png	\N	2025-03-07 09:45:37.605	2025-03-07 09:45:37.605
1304	552	1136	/var/uploads/14-1741340745945.png	\N	2025-03-07 09:45:45.949	2025-03-07 09:45:45.949
1305	552	1137	/var/uploads/15-1741340754724.png	\N	2025-03-07 09:45:54.728	2025-03-07 09:45:54.728
1367	532	1054	/var/uploads/45848-1741587140283.png	\N	2025-03-10 06:12:20.293	2025-03-10 06:12:20.293
1368	532	1055	/var/uploads/45849-1741587159875.png	\N	2025-03-10 06:12:39.88	2025-03-10 06:12:39.88
1369	532	1051	/var/uploads/45850-1741587413449.png	\N	2025-03-10 06:16:53.455	2025-03-10 06:16:53.455
922	399	706	/var/uploads/41-1741141721527.png	\N	2025-03-05 02:28:41.534	2025-03-05 02:28:41.534
923	399	707	/var/uploads/42-1741141727049.png	\N	2025-03-05 02:28:47.054	2025-03-05 02:28:47.054
924	399	708	/var/uploads/43-1741141733718.png	\N	2025-03-05 02:28:53.722	2025-03-05 02:28:53.722
925	399	709	/var/uploads/44-1741141739543.png	\N	2025-03-05 02:28:59.548	2025-03-05 02:28:59.548
967	486	898	/var/uploads/13-1741144686474.png	\N	2025-03-05 03:18:06.48	2025-03-05 03:18:06.48
968	488	904	/var/uploads/41-1741144797068.png	\N	2025-03-05 03:19:57.072	2025-03-05 03:19:57.072
969	488	905	/var/uploads/42-1741144832296.png	\N	2025-03-05 03:20:32.305	2025-03-05 03:20:32.305
1029	532	1052	/var/uploads/42-1741146684434.png	\N	2025-03-05 03:51:24.439	2025-03-05 03:51:24.439
1030	532	1053	/var/uploads/43-1741146690333.png	\N	2025-03-05 03:51:30.337	2025-03-05 03:51:30.337
1034	532	1056	/var/uploads/46-1741146832666.png	\N	2025-03-05 03:53:52.67	2025-03-05 03:53:52.67
1081	572	1201	/var/uploads/22-1741148042338.png	\N	2025-03-05 04:14:02.342	2025-03-05 04:14:02.342
1082	572	1202	/var/uploads/23-1741148047742.png	\N	2025-03-05 04:14:07.746	2025-03-05 04:14:07.746
1083	572	1203	/var/uploads/24-1741148053253.png	\N	2025-03-05 04:14:13.257	2025-03-05 04:14:13.257
1084	573	1204	/var/uploads/11-1741148115138.png	\N	2025-03-05 04:15:15.142	2025-03-05 04:15:15.142
1085	573	1205	/var/uploads/12-1741148121351.png	\N	2025-03-05 04:15:21.356	2025-03-05 04:15:21.356
1086	573	1206	/var/uploads/13-1741148125880.png	\N	2025-03-05 04:15:25.884	2025-03-05 04:15:25.884
1087	578	1229	/var/uploads/41-1741148179395.png	\N	2025-03-05 04:16:19.4	2025-03-05 04:16:19.4
1088	578	1230	/var/uploads/42-1741148187369.png	\N	2025-03-05 04:16:27.374	2025-03-05 04:16:27.374
1089	578	1231	/var/uploads/43-1741148192348.png	\N	2025-03-05 04:16:32.354	2025-03-05 04:16:32.354
1090	578	1232	/var/uploads/44-1741148205446.png	\N	2025-03-05 04:16:45.45	2025-03-05 04:16:45.45
1091	578	1233	/var/uploads/45-1741148216287.png	\N	2025-03-05 04:16:56.292	2025-03-05 04:16:56.292
1092	578	1234	/var/uploads/46-1741148221673.png	\N	2025-03-05 04:17:01.677	2025-03-05 04:17:01.677
1080	572	1200	/var/uploads/643-1752289190423.png	\N	2025-03-05 04:13:49.725	2025-03-05 04:13:49.725
1146	443	815	/var/uploads/20-1741242096878.png	\N	2025-03-06 06:21:36.884	2025-03-06 06:21:36.884
1147	441	812	/var/uploads/41-1741242150742.png	\N	2025-03-06 06:22:30.746	2025-03-06 06:22:30.746
1148	441	813	/var/uploads/42-1741242159865.png	\N	2025-03-06 06:22:39.874	2025-03-06 06:22:39.874
1149	440	810	/var/uploads/31-1741242199097.png	\N	2025-03-06 06:23:19.101	2025-03-06 06:23:19.101
1150	440	811	/var/uploads/32-1741242203857.png	\N	2025-03-06 06:23:23.861	2025-03-06 06:23:23.861
1151	439	808	/var/uploads/21-1741242236617.png	\N	2025-03-06 06:23:56.623	2025-03-06 06:23:56.623
1152	439	809	/var/uploads/22-1741242252218.png	\N	2025-03-06 06:24:12.223	2025-03-06 06:24:12.223
1153	438	806	/var/uploads/11-1741242293466.png	\N	2025-03-06 06:24:53.47	2025-03-06 06:24:53.47
1154	438	807	/var/uploads/12-1741242298486.png	\N	2025-03-06 06:24:58.493	2025-03-06 06:24:58.493
1155	457	839	/var/uploads/41-1741242381393.png	\N	2025-03-06 06:26:21.398	2025-03-06 06:26:21.398
1736	484	892	/var/uploads/503-3-1752307740407.png	\N	2025-07-12 08:09:00.567	2025-07-12 08:09:00.567
1737	484	891	/var/uploads/503-1-1752307751138.png	\N	2025-07-12 08:09:11.287	2025-07-12 08:09:11.287
1738	484	890	/var/uploads/503-2-1752307771843.png	\N	2025-07-12 08:09:31.99	2025-07-12 08:09:31.99
1739	484	889	/var/uploads/503-4-1752307842751.png	\N	2025-07-12 08:10:42.942	2025-07-12 08:10:42.942
1740	489	907	/var/uploads/508-1-1752307922149.png	\N	2025-07-12 08:12:02.352	2025-07-12 08:12:02.352
1741	489	907	/var/uploads/508-2-1752307925980.png	\N	2025-07-12 08:12:05.994	2025-07-12 08:12:05.994
1803	571	1199	/var/uploads/cn001-2-1752654617800.png	\N	2025-07-16 08:30:19.833	2025-07-16 08:30:19.833
1804	571	1198	/var/uploads/cn001-3-1752654788914.png	\N	2025-07-16 08:33:09.096	2025-07-16 08:33:09.096
1805	571	1196	/var/uploads/cn001-1-1752654799608.png	\N	2025-07-16 08:33:19.832	2025-07-16 08:33:19.832
1806	571	1197	/var/uploads/cn001-4-1752654809452.png	\N	2025-07-16 08:33:29.916	2025-07-16 08:33:29.916
1807	509	965	/var/uploads/cn103-2-1752654887342.png	\N	2025-07-16 08:34:47.504	2025-07-16 08:34:47.504
1306	553	1138	/var/uploads/cn-646-4-1741340903670.png	\N	2025-03-07 09:48:23.676	2025-03-07 09:48:23.676
1307	553	1139	/var/uploads/cn-646-3-1741340912074.png	\N	2025-03-07 09:48:32.078	2025-03-07 09:48:32.078
1308	553	1140	/var/uploads/cn-646-5-1741340924918.png	\N	2025-03-07 09:48:44.921	2025-03-07 09:48:44.921
1309	553	1141	/var/uploads/cn-646-2-1741340935750.png	\N	2025-03-07 09:48:55.753	2025-03-07 09:48:55.753
1310	553	1142	/var/uploads/cn-646-1-1741340943760.png	\N	2025-03-07 09:49:03.764	2025-03-07 09:49:03.764
1311	461	847	/var/uploads/31-1741341028522.png	\N	2025-03-07 09:50:28.525	2025-03-07 09:50:28.525
1312	461	848	/var/uploads/32-1741341037128.png	\N	2025-03-07 09:50:37.132	2025-03-07 09:50:37.132
1329	53	58	/var/uploads/565-1741547743373.png	\N	2025-03-09 19:15:43.378	2025-03-09 19:15:43.378
970	488	906	/var/uploads/44-1741144883503.png	\N	2025-03-05 03:21:15.736	2025-03-05 03:21:15.736
971	488	903	/var/uploads/43-1741144875726.png	\N	2025-03-05 03:21:23.507	2025-03-05 03:21:23.507
1350	526	1020	/var/uploads/456-1741580102624.png	\N	2025-03-10 04:15:02.633	2025-03-10 04:15:02.633
1370	535	1066	/var/uploads/8588-1741588451542.png	\N	2025-03-10 06:34:11.547	2025-03-10 06:34:11.547
1371	535	1374	/var/uploads/8587-1741588486180.png	\N	2025-03-10 06:34:46.184	2025-03-10 06:34:46.184
930	403	722	/var/uploads/21-1741141934040.png	\N	2025-03-05 02:32:14.045	2025-03-05 02:32:14.045
931	403	723	/var/uploads/22-1741141942927.png	\N	2025-03-05 02:32:22.935	2025-03-05 02:32:22.935
932	403	724	/var/uploads/23-1741141949105.png	\N	2025-03-05 02:32:29.11	2025-03-05 02:32:29.11
933	403	725	/var/uploads/24-1741141953979.png	\N	2025-03-05 02:32:33.989	2025-03-05 02:32:33.989
934	402	718	/var/uploads/11-1741141972783.png	\N	2025-03-05 02:32:52.788	2025-03-05 02:32:52.788
935	402	719	/var/uploads/12-1741141978167.png	\N	2025-03-05 02:32:58.175	2025-03-05 02:32:58.175
936	402	720	/var/uploads/13-1741141984853.png	\N	2025-03-05 02:33:04.857	2025-03-05 02:33:04.857
937	402	721	/var/uploads/14-1741141990620.png	\N	2025-03-05 02:33:10.625	2025-03-05 02:33:10.625
972	490	909	/var/uploads/11-1741145103085.png	\N	2025-03-05 03:25:03.093	2025-03-05 03:25:03.093
973	490	910	/var/uploads/12-1741145110647.png	\N	2025-03-05 03:25:10.651	2025-03-05 03:25:10.651
974	490	908	/var/uploads/13-1741145118237.png	\N	2025-03-05 03:25:18.242	2025-03-05 03:25:18.242
975	495	921	/var/uploads/21-1741145359707.jpg	\N	2025-03-05 03:29:19.711	2025-03-05 03:29:19.711
976	495	922	/var/uploads/22-1741145370034.png	\N	2025-03-05 03:29:30.04	2025-03-05 03:29:30.04
977	495	923	/var/uploads/23-1741145375539.png	\N	2025-03-05 03:29:35.544	2025-03-05 03:29:35.544
1156	457	840	/var/uploads/42-1741242390611.png	\N	2025-03-06 06:26:30.616	2025-03-06 06:26:30.616
1163	421	769	/var/uploads/21-1741242686320.png	\N	2025-03-06 06:31:26.324	2025-03-06 06:31:26.324
1742	499	932	/var/uploads/1011-3-1752308039992.png	\N	2025-07-12 08:14:00.209	2025-07-12 08:14:00.209
1743	499	930	/var/uploads/1011-1-1752308049291.png	\N	2025-07-12 08:14:09.468	2025-07-12 08:14:09.468
1744	499	931	/var/uploads/1011-2-1752308059183.png	\N	2025-07-12 08:14:19.366	2025-07-12 08:14:19.366
1745	522	1004	/var/uploads/21253-2-1752308209114.png	\N	2025-07-12 08:16:49.253	2025-07-12 08:16:49.253
1204	405	730	/var/uploads/41-1741243780460.png	\N	2025-03-06 06:49:40.465	2025-03-06 06:49:40.465
1205	405	731	/var/uploads/42-1741243786895.png	\N	2025-03-06 06:49:46.899	2025-03-06 06:49:46.899
1206	405	732	/var/uploads/43-1741243795655.png	\N	2025-03-06 06:49:55.659	2025-03-06 06:49:55.659
1207	405	733	/var/uploads/44-1741243800710.png	\N	2025-03-06 06:50:00.715	2025-03-06 06:50:00.715
1746	522	1003	/var/uploads/21253-1-1752308218430.png	\N	2025-07-12 08:16:58.557	2025-07-12 08:16:58.557
1747	522	1005	/var/uploads/21253-3-1752308229604.png	\N	2025-07-12 08:17:09.736	2025-07-12 08:17:09.736
1808	509	964	/var/uploads/cn103-1-1752654924373.png	\N	2025-07-16 08:35:24.661	2025-07-16 08:35:24.661
1249	316	486	/var/uploads/1-1741335297859.png	\N	2025-03-07 08:14:57.866	2025-03-07 08:14:57.866
1250	316	487	/var/uploads/2-1741335303818.png	\N	2025-03-07 08:15:03.823	2025-03-07 08:15:03.823
1251	316	488	/var/uploads/3-1741335309395.png	\N	2025-03-07 08:15:09.4	2025-03-07 08:15:09.4
1252	316	489	/var/uploads/4-1741335315284.png	\N	2025-03-07 08:15:15.288	2025-03-07 08:15:15.288
1313	458	841	/var/uploads/31-1741341092821.png	\N	2025-03-07 09:51:32.825	2025-03-07 09:51:32.825
1314	458	842	/var/uploads/32-1741341102873.png	\N	2025-03-07 09:51:42.877	2025-03-07 09:51:42.877
1315	456	837	/var/uploads/21-1741341150383.png	\N	2025-03-07 09:52:30.388	2025-03-07 09:52:30.388
1316	456	838	/var/uploads/22-1741341156322.png	\N	2025-03-07 09:52:36.325	2025-03-07 09:52:36.325
1351	549	1123	/var/uploads/21-1741582330125.png	\N	2025-03-10 04:52:10.132	2025-03-10 04:52:10.132
1352	549	1124	/var/uploads/22-1741582349592.png	\N	2025-03-10 04:52:29.596	2025-03-10 04:52:29.596
1353	549	1125	/var/uploads/23-1741582357572.png	\N	2025-03-10 04:52:37.577	2025-03-10 04:52:37.577
1354	551	1130	/var/uploads/31-1741582414744.png	\N	2025-03-10 04:53:34.748	2025-03-10 04:53:34.748
942	430	788	/var/uploads/31-1741142191982.png	\N	2025-03-05 02:36:31.987	2025-03-05 02:36:31.987
943	430	789	/var/uploads/32-1741142203711.png	\N	2025-03-05 02:36:43.715	2025-03-05 02:36:43.715
944	430	790	/var/uploads/33-1741142212470.png	\N	2025-03-05 02:36:52.474	2025-03-05 02:36:52.474
946	445	817	/var/uploads/30-1741142315530.png	\N	2025-03-05 02:38:35.534	2025-03-05 02:38:35.534
947	463	851	/var/uploads/11-1741142376467.png	\N	2025-03-05 02:39:36.472	2025-03-05 02:39:36.472
948	463	852	/var/uploads/12-1741142382471.png	\N	2025-03-05 02:39:42.475	2025-03-05 02:39:42.475
978	494	918	/var/uploads/11-1741145397265.png	\N	2025-03-05 03:29:57.271	2025-03-05 03:29:57.271
979	494	919	/var/uploads/13-1741145410075.png	\N	2025-03-05 03:30:10.079	2025-03-05 03:30:10.079
980	494	920	/var/uploads/12-1741145415032.png	\N	2025-03-05 03:30:15.037	2025-03-05 03:30:15.037
981	498	929	/var/uploads/10-1741145499058.png	\N	2025-03-05 03:31:39.066	2025-03-05 03:31:39.066
985	501	936	/var/uploads/31-1741145687133.png	\N	2025-03-05 03:34:47.141	2025-03-05 03:34:47.141
986	501	937	/var/uploads/32-1741145694736.png	\N	2025-03-05 03:34:54.742	2025-03-05 03:34:54.742
1036	535	1067	/var/uploads/32-1741146994223.png	\N	2025-03-05 03:56:34.229	2025-03-05 03:56:34.229
1037	535	1068	/var/uploads/33-1741147002307.png	\N	2025-03-05 03:56:42.312	2025-03-05 03:56:42.312
1039	535	1070	/var/uploads/35-1741147121515.png	\N	2025-03-05 03:58:41.519	2025-03-05 03:58:41.519
1040	535	1069	/var/uploads/34-1741147129879.png	\N	2025-03-05 03:58:49.884	2025-03-05 03:58:49.884
1041	535	1071	/var/uploads/36-1741147139902.png	\N	2025-03-05 03:58:59.906	2025-03-05 03:58:59.906
1107	587	1307	/var/uploads/41-1741148587394.png	\N	2025-03-05 04:23:07.4	2025-03-05 04:23:07.4
1108	587	1308	/var/uploads/42-1741148594114.png	\N	2025-03-05 04:23:14.118	2025-03-05 04:23:14.118
1109	587	1309	/var/uploads/43-1741148600241.png	\N	2025-03-05 04:23:20.245	2025-03-05 04:23:20.245
1110	587	1310	/var/uploads/44-1741148612606.png	\N	2025-03-05 04:23:32.61	2025-03-05 04:23:32.61
1111	587	1311	/var/uploads/45-1741148634815.png	\N	2025-03-05 04:23:54.819	2025-03-05 04:23:54.819
1112	587	1312	/var/uploads/46-1741148645184.png	\N	2025-03-05 04:24:05.187	2025-03-05 04:24:05.187
1113	587	1313	/var/uploads/47-1741148658272.png	\N	2025-03-05 04:24:18.276	2025-03-05 04:24:18.276
1114	587	1314	/var/uploads/48-1741148675032.png	\N	2025-03-05 04:24:35.035	2025-03-05 04:24:35.035
1115	587	1315	/var/uploads/49-1741148683451.png	\N	2025-03-05 04:24:43.455	2025-03-05 04:24:43.455
1164	421	770	/var/uploads/22-1741242692684.png	\N	2025-03-06 06:31:32.69	2025-03-06 06:31:32.69
1165	421	771	/var/uploads/23-1741242699750.png	\N	2025-03-06 06:31:39.755	2025-03-06 06:31:39.755
1809	509	963	/var/uploads/cn103-3-1752654934761.png	\N	2025-07-16 08:35:35.037	2025-07-16 08:35:35.037
1213	414	758	/var/uploads/31-1741244289411.png	\N	2025-03-06 06:58:09.417	2025-03-06 06:58:09.417
1214	414	759	/var/uploads/32-1741244299425.png	\N	2025-03-06 06:58:19.429	2025-03-06 06:58:19.429
1217	416	762	/var/uploads/11-1741244436551.png	\N	2025-03-06 07:00:36.555	2025-03-06 07:00:36.555
1218	416	763	/var/uploads/12-1741244444424.png	\N	2025-03-06 07:00:44.442	2025-03-06 07:00:44.442
1267	592	1340	/var/uploads/11-1741337211196.png	\N	2025-03-07 08:46:51.199	2025-03-07 08:46:51.199
1268	592	1341	/var/uploads/12-1741337217729.png	\N	2025-03-07 08:46:57.732	2025-03-07 08:46:57.732
1269	592	1342	/var/uploads/13-1741337223022.png	\N	2025-03-07 08:47:03.026	2025-03-07 08:47:03.026
1270	592	1343	/var/uploads/14-1741337228479.png	\N	2025-03-07 08:47:08.482	2025-03-07 08:47:08.482
1317	453	831	/var/uploads/41-1741341221135.png	\N	2025-03-07 09:53:41.139	2025-03-07 09:53:41.139
1318	453	832	/var/uploads/42-1741341230612.png	\N	2025-03-07 09:53:50.616	2025-03-07 09:53:50.616
1319	451	827	/var/uploads/11-1741341288420.png	\N	2025-03-07 09:54:48.424	2025-03-07 09:54:48.424
1320	451	828	/var/uploads/12-1741341294118.png	\N	2025-03-07 09:54:54.122	2025-03-07 09:54:54.122
1330	74	94	C:/uploads/919-1740079510884.jpg	\N	2025-03-09 19:47:17.611	2025-03-09 19:47:17.611
1331	74	1359	C:/uploads/920-1740079633749.jpg	\N	2025-03-09 19:47:17.611	2025-03-09 19:47:17.611
1332	76	96	C:/uploads/919-1740079528885.jpg	\N	2025-03-09 19:47:17.611	2025-03-09 19:47:17.611
1333	76	1358	C:/uploads/920-1740079647364.jpg	\N	2025-03-09 19:47:17.611	2025-03-09 19:47:17.611
1355	530	1040	/var/uploads/4545-1741582983811.png	\N	2025-03-10 05:03:03.817	2025-03-10 05:03:03.817
1356	530	1373	/var/uploads/4546-1741583197480.png	\N	2025-03-10 05:06:37.488	2025-03-10 05:06:37.488
949	466	857	/var/uploads/41-1741142425810.png	\N	2025-03-05 02:40:25.816	2025-03-05 02:40:25.816
950	466	858	/var/uploads/42-1741142431200.png	\N	2025-03-05 02:40:31.205	2025-03-05 02:40:31.205
951	472	869	/var/uploads/21-1741142489577.png	\N	2025-03-05 02:41:29.581	2025-03-05 02:41:29.581
952	472	870	/var/uploads/22-1741142495523.png	\N	2025-03-05 02:41:35.527	2025-03-05 02:41:35.527
953	473	871	/var/uploads/41-1741142531441.png	\N	2025-03-05 02:42:11.446	2025-03-05 02:42:11.446
954	473	872	/var/uploads/42-1741142537636.png	\N	2025-03-05 02:42:17.64	2025-03-05 02:42:17.64
955	475	875	/var/uploads/11-1741142589435.png	\N	2025-03-05 02:43:09.44	2025-03-05 02:43:09.44
956	475	876	/var/uploads/12-1741142598087.png	\N	2025-03-05 02:43:18.098	2025-03-05 02:43:18.098
957	485	893	/var/uploads/31-1741142681415.png	\N	2025-03-05 02:44:41.419	2025-03-05 02:44:41.419
958	485	894	/var/uploads/32-1741142692499.png	\N	2025-03-05 02:44:52.503	2025-03-05 02:44:52.503
959	485	895	/var/uploads/33-1741142697718.png	\N	2025-03-05 02:44:57.724	2025-03-05 02:44:57.724
987	501	938	/var/uploads/33-1741145701183.png	\N	2025-03-05 03:35:01.189	2025-03-05 03:35:01.189
988	502	939	/var/uploads/41-1741145753228.png	\N	2025-03-05 03:35:53.234	2025-03-05 03:35:53.234
989	502	940	/var/uploads/42-1741145760775.png	\N	2025-03-05 03:36:00.779	2025-03-05 03:36:00.779
990	502	941	/var/uploads/43-1741145767323.png	\N	2025-03-05 03:36:07.328	2025-03-05 03:36:07.328
994	507	954	/var/uploads/11-1741145877084.png	\N	2025-03-05 03:37:57.088	2025-03-05 03:37:57.088
995	507	955	/var/uploads/12-1741145884946.png	\N	2025-03-05 03:38:04.949	2025-03-05 03:38:04.949
996	507	956	/var/uploads/13-1741145890415.png	\N	2025-03-05 03:38:10.419	2025-03-05 03:38:10.419
1042	539	1081	/var/uploads/21-1741147203321.png	\N	2025-03-05 04:00:03.325	2025-03-05 04:00:03.325
1043	544	1097	/var/uploads/11-1741147290359.png	\N	2025-03-05 04:01:30.364	2025-03-05 04:01:30.364
1119	496	926	/var/uploads/41-1741241168406.png	\N	2025-03-06 06:06:08.41	2025-03-06 06:06:08.41
1748	633	1449	/var/uploads/etc-01454743-1752554184641.png	\N	2025-07-15 04:36:24.807	2025-07-15 04:36:24.807
1121	496	924	/var/uploads/43-1741241184945.png	\N	2025-03-06 06:06:24.949	2025-03-06 06:06:24.949
1122	562	1168	/var/uploads/41-1741241300398.png	\N	2025-03-06 06:08:20.402	2025-03-06 06:08:20.402
1123	562	1169	/var/uploads/42-1741241309078.png	\N	2025-03-06 06:08:29.081	2025-03-06 06:08:29.081
1124	562	1170	/var/uploads/43-1741241318505.png	\N	2025-03-06 06:08:38.511	2025-03-06 06:08:38.511
1166	422	772	/var/uploads/31-1741242730657.png	\N	2025-03-06 06:32:10.662	2025-03-06 06:32:10.662
1173	427	780	/var/uploads/41-1741242984565.png	\N	2025-03-06 06:36:24.569	2025-03-06 06:36:24.569
1174	427	781	/var/uploads/42-1741242990074.png	\N	2025-03-06 06:36:30.078	2025-03-06 06:36:30.078
1175	424	776	/var/uploads/10-1741243029589.png	\N	2025-03-06 06:37:09.593	2025-03-06 06:37:09.593
1221	446	818	/var/uploads/11-1741244718945.png	\N	2025-03-06 07:05:18.949	2025-03-06 07:05:18.949
1222	576	1213	/var/uploads/21-1741244790239.png	\N	2025-03-06 07:06:30.243	2025-03-06 07:06:30.243
1271	568	1187	/var/uploads/11-1741339885537.png	\N	2025-03-07 09:31:25.543	2025-03-07 09:31:25.543
1272	568	1188	/var/uploads/12-1741339891691.png	\N	2025-03-07 09:31:31.695	2025-03-07 09:31:31.695
1273	568	1189	/var/uploads/13-1741339900750.png	\N	2025-03-07 09:31:40.754	2025-03-07 09:31:40.754
1274	569	1190	/var/uploads/21-1741339948666.png	\N	2025-03-07 09:32:28.673	2025-03-07 09:32:28.673
1275	569	1191	/var/uploads/22-1741339954824.png	\N	2025-03-07 09:32:34.828	2025-03-07 09:32:34.828
1276	569	1192	/var/uploads/23-1741339961725.png	\N	2025-03-07 09:32:41.73	2025-03-07 09:32:41.73
1277	566	1181	/var/uploads/21-1741340030510.png	\N	2025-03-07 09:33:50.515	2025-03-07 09:33:50.515
1278	566	1182	/var/uploads/22-1741340071404.png	\N	2025-03-07 09:34:31.408	2025-03-07 09:34:31.408
1279	566	1183	/var/uploads/23-1741340077215.png	\N	2025-03-07 09:34:37.22	2025-03-07 09:34:37.22
1280	567	1184	/var/uploads/31-1741340109775.png	\N	2025-03-07 09:35:09.78	2025-03-07 09:35:09.78
1281	567	1185	/var/uploads/32-1741340116305.png	\N	2025-03-07 09:35:16.311	2025-03-07 09:35:16.311
1282	567	1186	/var/uploads/33-1741340121199.png	\N	2025-03-07 09:35:21.203	2025-03-07 09:35:21.203
1321	449	821	/var/uploads/41-1741424695382.png	\N	2025-03-08 09:04:55.39	2025-03-08 09:04:55.39
1322	449	825	/var/uploads/42-1741424713753.png	\N	2025-03-08 09:05:13.758	2025-03-08 09:05:13.758
1323	447	819	/var/uploads/11-1741424770696.png	\N	2025-03-08 09:06:10.702	2025-03-08 09:06:10.702
1324	447	823	/var/uploads/12-1741424780446.png	\N	2025-03-08 09:06:20.451	2025-03-08 09:06:20.451
1325	450	822	/var/uploads/31-1741424875693.png	\N	2025-03-08 09:07:55.7	2025-03-08 09:07:55.7
1326	450	826	/var/uploads/32-1741424895386.png	\N	2025-03-08 09:08:15.39	2025-03-08 09:08:15.39
1334	593	1360	/var/uploads/1-1741573745340.png	\N	2025-03-10 02:29:05.346	2025-03-10 02:29:05.346
1335	594	1361	/var/uploads/2-1741573769034.png	\N	2025-03-10 02:29:29.038	2025-03-10 02:29:29.038
1336	595	1362	/var/uploads/3-1741573793435.png	\N	2025-03-10 02:29:53.442	2025-03-10 02:29:53.442
1337	596	1363	/var/uploads/4-1741573815971.png	\N	2025-03-10 02:30:15.975	2025-03-10 02:30:15.975
1749	633	1449	/var/uploads/etc-01454742-1752554188977.png	\N	2025-07-15 04:36:29.035	2025-07-15 04:36:29.035
1750	633	1449	/var/uploads/etc-01454741-1752554193189.png	\N	2025-07-15 04:36:33.249	2025-07-15 04:36:33.249
1751	634	1450	/var/uploads/etc-0145658-1752554229749.png	\N	2025-07-15 04:37:09.944	2025-07-15 04:37:09.944
1752	635	1451	/var/uploads/etc-0145471-1752554250787.png	\N	2025-07-15 04:37:30.917	2025-07-15 04:37:30.917
1342	598	1368	/var/uploads/1-1741573965493.png	\N	2025-03-10 02:32:45.498	2025-03-10 02:32:45.498
1343	599	1369	/var/uploads/2-1741573990359.png	\N	2025-03-10 02:33:10.363	2025-03-10 02:33:10.363
1344	600	1370	/var/uploads/3-1741574011562.png	\N	2025-03-10 02:33:31.566	2025-03-10 02:33:31.566
1357	551	1131	/var/uploads/32-1741583676710.png	\N	2025-03-10 05:14:36.719	2025-03-10 05:14:36.719
1358	551	1132	/var/uploads/33-1741583689539.png	\N	2025-03-10 05:14:49.544	2025-03-10 05:14:49.544
1753	636	1452	/var/uploads/etc-01454771-1752554270321.png	\N	2025-07-15 04:37:50.507	2025-07-15 04:37:50.507
1754	637	1453	/var/uploads/etc-01451474-1752554289979.png	\N	2025-07-15 04:38:10.114	2025-07-15 04:38:10.114
1003	513	976	/var/uploads/11-1741146137484.png	\N	2025-03-05 03:42:17.488	2025-03-05 03:42:17.488
1004	513	977	/var/uploads/12-1741146144500.png	\N	2025-03-05 03:42:24.504	2025-03-05 03:42:24.504
1005	513	978	/var/uploads/13-1741146149297.png	\N	2025-03-05 03:42:29.301	2025-03-05 03:42:29.301
1006	513	979	/var/uploads/14-1741146154898.png	\N	2025-03-05 03:42:34.902	2025-03-05 03:42:34.902
1011	523	1006	/var/uploads/21-1741146303427.png	\N	2025-03-05 03:45:03.433	2025-03-05 03:45:03.433
1012	523	1007	/var/uploads/22-1741146308782.png	\N	2025-03-05 03:45:08.786	2025-03-05 03:45:08.786
1044	544	1098	/var/uploads/12-1741147295657.png	\N	2025-03-05 04:01:35.662	2025-03-05 04:01:35.662
1045	544	1099	/var/uploads/13-1741147301855.png	\N	2025-03-05 04:01:41.859	2025-03-05 04:01:41.859
1046	544	1100	/var/uploads/14-1741147313322.png	\N	2025-03-05 04:01:53.329	2025-03-05 04:01:53.329
1047	544	1101	/var/uploads/15-1741147323814.png	\N	2025-03-05 04:02:03.818	2025-03-05 04:02:03.818
1048	544	1102	/var/uploads/16-1741147330496.png	\N	2025-03-05 04:02:10.499	2025-03-05 04:02:10.499
1049	545	1103	/var/uploads/21-1741147367313.png	\N	2025-03-05 04:02:47.326	2025-03-05 04:02:47.326
1050	545	1104	/var/uploads/22-1741147377933.png	\N	2025-03-05 04:02:57.937	2025-03-05 04:02:57.937
1125	560	1161	/var/uploads/21-1741241366008.png	\N	2025-03-06 06:09:26.013	2025-03-06 06:09:26.013
1127	560	1163	/var/uploads/23-1741241377139.png	\N	2025-03-06 06:09:37.143	2025-03-06 06:09:37.143
1128	560	1164	/var/uploads/24-1741241383838.png	\N	2025-03-06 06:09:43.847	2025-03-06 06:09:43.847
1129	482	885	/var/uploads/11-1741241461649.png	\N	2025-03-06 06:11:01.653	2025-03-06 06:11:01.653
1130	482	886	/var/uploads/12-1741241471089.png	\N	2025-03-06 06:11:11.094	2025-03-06 06:11:11.094
1755	183	241	/var/uploads/1-1752640421012.png	\N	2025-07-16 04:33:41.246	2025-07-16 04:33:41.246
1756	183	241	/var/uploads/2-1752640426563.png	\N	2025-07-16 04:33:46.616	2025-07-16 04:33:46.616
1757	183	241	/var/uploads/3-1752640430676.png	\N	2025-07-16 04:33:50.721	2025-07-16 04:33:50.721
1177	434	796	/var/uploads/31-1741243150465.png	\N	2025-03-06 06:39:10.472	2025-03-06 06:39:10.472
1178	434	797	/var/uploads/32-1741243155763.png	\N	2025-03-06 06:39:15.767	2025-03-06 06:39:15.767
1179	434	798	/var/uploads/33-1741243161691.png	\N	2025-03-06 06:39:21.695	2025-03-06 06:39:21.695
1223	576	1214	/var/uploads/22-1741244799654.png	\N	2025-03-06 07:06:39.66	2025-03-06 07:06:39.66
1224	576	1215	/var/uploads/23-1741244812163.png	\N	2025-03-06 07:06:52.167	2025-03-06 07:06:52.167
1225	576	1216	/var/uploads/24-1741244822764.png	\N	2025-03-06 07:07:02.768	2025-03-06 07:07:02.768
1226	576	1217	/var/uploads/25-1741244838297.png	\N	2025-03-06 07:07:18.301	2025-03-06 07:07:18.301
1227	576	1218	/var/uploads/26-1741244849262.png	\N	2025-03-06 07:07:29.266	2025-03-06 07:07:29.266
1228	576	1219	/var/uploads/27-1741244858195.png	\N	2025-03-06 07:07:38.2	2025-03-06 07:07:38.2
1229	576	1220	/var/uploads/28-1741244878873.png	\N	2025-03-06 07:07:58.88	2025-03-06 07:07:58.88
1230	576	1221	/var/uploads/29-1741244888428.png	\N	2025-03-06 07:08:08.434	2025-03-06 07:08:08.434
1231	576	1222	/var/uploads/210-1741244901549.png	\N	2025-03-06 07:08:21.554	2025-03-06 07:08:21.554
1283	541	1088	/var/uploads/41-1741340194945.png	\N	2025-03-07 09:36:34.951	2025-03-07 09:36:34.951
1285	541	1090	/var/uploads/43-1741340209890.png	\N	2025-03-07 09:36:49.896	2025-03-07 09:36:49.896
1286	550	1126	/var/uploads/41-1741340270490.png	\N	2025-03-07 09:37:50.5	2025-03-07 09:37:50.5
1287	550	1127	/var/uploads/42-1741340276139.png	\N	2025-03-07 09:37:56.143	2025-03-07 09:37:56.143
1288	550	1128	/var/uploads/43-1741340281810.png	\N	2025-03-07 09:38:01.814	2025-03-07 09:38:01.814
1289	550	1129	/var/uploads/44-1741340286620.png	\N	2025-03-07 09:38:06.624	2025-03-07 09:38:06.624
1290	468	861	/var/uploads/21-1741340342047.png	\N	2025-03-07 09:39:02.051	2025-03-07 09:39:02.051
1291	468	862	/var/uploads/22-1741340346710.png	\N	2025-03-07 09:39:06.714	2025-03-07 09:39:06.714
1327	448	820	/var/uploads/21-1741426830701.png	\N	2025-03-08 09:40:30.706	2025-03-08 09:40:30.706
1328	448	824	/var/uploads/22-1741426850513.png	\N	2025-03-08 09:40:50.517	2025-03-08 09:40:50.517
1345	601	1371	/var/uploads/4-1741574053272.png	\N	2025-03-10 02:34:13.278	2025-03-10 02:34:13.278
1346	602	1372	/var/uploads/5-1741574066222.png	\N	2025-03-10 02:34:26.226	2025-03-10 02:34:26.226
1359	556	1149	/var/uploads/20-1741583762686.png	\N	2025-03-10 05:16:02.693	2025-03-10 05:16:02.693
1758	183	241	/var/uploads/4-1752640436992.png	\N	2025-07-16 04:33:57.257	2025-07-16 04:33:57.257
1759	183	241	/var/uploads/5-1752640443852.png	\N	2025-07-16 04:34:04.11	2025-07-16 04:34:04.11
1760	183	241	/var/uploads/6-1752640447478.png	\N	2025-07-16 04:34:07.593	2025-07-16 04:34:07.593
1761	183	241	/var/uploads/7-1752640451495.png	\N	2025-07-16 04:34:11.522	2025-07-16 04:34:11.522
1364	543	1094	/var/uploads/21-1741583956058.png	\N	2025-03-10 05:19:16.063	2025-03-10 05:19:16.063
1365	543	1095	/var/uploads/22-1741583964011.png	\N	2025-03-10 05:19:24.015	2025-03-10 05:19:24.015
1366	543	1096	/var/uploads/23-1741583973468.png	\N	2025-03-10 05:19:33.473	2025-03-10 05:19:33.473
1762	183	241	/var/uploads/8-1752640455531.png	\N	2025-07-16 04:34:15.566	2025-07-16 04:34:15.566
1763	183	241	/var/uploads/9-1752640459613.png	\N	2025-07-16 04:34:19.644	2025-07-16 04:34:19.644
1448	537	1076	/var/uploads/411-1747468917101.png	\N	2025-05-17 08:01:57.126	2025-05-17 08:01:57.126
1449	537	1079	/var/uploads/431-1747468935720.png	\N	2025-05-17 08:02:15.845	2025-05-17 08:02:15.845
1450	537	1077	/var/uploads/421-1747468979335.png	\N	2025-05-17 08:02:59.461	2025-05-17 08:02:59.461
60	50	55	/var/uploads/2069-1747473480506.png	\N	2025-02-19 03:01:44.886	2025-02-19 03:01:44.886
1477	615	1403	/var/uploads/2-1747710319713.png	\N	2025-05-20 03:05:19.834	2025-05-20 03:05:19.834
1478	615	1404	/var/uploads/3-1747710332968.png	\N	2025-05-20 03:05:33.094	2025-05-20 03:05:33.094
1479	615	1405	/var/uploads/4-1747710361612.png	\N	2025-05-20 03:06:01.728	2025-05-20 03:06:01.728
1480	615	1406	/var/uploads/5-1747710373675.png	\N	2025-05-20 03:06:13.797	2025-05-20 03:06:13.797
1481	615	1407	/var/uploads/6-1747710384766.png	\N	2025-05-20 03:06:24.886	2025-05-20 03:06:24.886
1482	615	1403	/var/uploads/1-1747710512542.png	\N	2025-05-20 03:08:32.668	2025-05-20 03:08:32.668
447	341	567	C:/uploads/23-1740214538468.png	\N	2025-02-22 08:54:56.61	2025-02-22 08:54:56.61
448	341	568	C:/uploads/21-1740214496449.png	\N	2025-02-22 08:55:02.812	2025-02-22 08:55:02.812
449	341	569	C:/uploads/22-1740214502715.png	\N	2025-02-22 08:55:38.68	2025-02-22 08:55:38.68
1500	364	596	/var/uploads/3-1747731848964.png	\N	2025-05-20 09:04:09.054	2025-05-20 09:04:09.054
1501	364	594	/var/uploads/4-1747731858499.png	\N	2025-05-20 09:04:18.625	2025-05-20 09:04:18.625
1502	364	597	/var/uploads/6-1747731872397.png	\N	2025-05-20 09:04:32.552	2025-05-20 09:04:32.552
1503	364	595	/var/uploads/1-1747731883785.png	\N	2025-05-20 09:04:43.906	2025-05-20 09:04:43.906
1504	364	593	/var/uploads/5-1747731896755.png	\N	2025-05-20 09:04:56.883	2025-05-20 09:04:56.883
1505	364	592	/var/uploads/2-1747731907875.png	\N	2025-05-20 09:05:08.001	2025-05-20 09:05:08.001
1514	176	225	/var/uploads/0-1747887917843.png	\N	2025-05-22 04:25:17.966	2025-05-22 04:25:17.966
1515	176	225	/var/uploads/1-1747887935267.png	\N	2025-05-22 04:25:35.355	2025-05-22 04:25:35.355
1516	176	225	/var/uploads/2-1747887945291.png	\N	2025-05-22 04:25:45.378	2025-05-22 04:25:45.378
1443	570	1195	/var/uploads/33-1747467485370.png	\N	2025-05-17 07:38:05.532	2025-05-17 07:38:05.532
1396	546	1388	/var/uploads/2-1745476128935.jpg	\N	2025-05-10 08:29:01.786	2025-05-10 08:29:01.786
1397	546	1389	/var/uploads/3-1745476142463.jpg	\N	2025-05-10 08:29:01.786	2025-05-10 08:29:01.786
136	108	129	/var/uploads/SY-A1066-1742536046392.png	\N	2025-02-20 19:43:59.536	2025-02-20 19:43:59.536
1400	455	835	/var/uploads/11-1747463114664.png	\N	2025-05-17 06:25:14.786	2025-05-17 06:25:14.786
1401	455	836	/var/uploads/12-1747463129251.png	\N	2025-05-17 06:25:29.373	2025-05-17 06:25:29.373
1404	462	850	/var/uploads/42-1747463830363.png	\N	2025-05-17 06:37:10.533	2025-05-17 06:37:10.533
1405	462	849	/var/uploads/41-1747463856016.png	\N	2025-05-17 06:37:36.186	2025-05-17 06:37:36.186
1406	464	853	/var/uploads/21-1747464033105.png	\N	2025-05-17 06:40:33.269	2025-05-17 06:40:33.269
1407	464	854	/var/uploads/22-1747464051368.png	\N	2025-05-17 06:40:51.533	2025-05-17 06:40:51.533
1410	469	863	/var/uploads/31-1747464646125.png	\N	2025-05-17 06:50:46.259	2025-05-17 06:50:46.259
1411	469	864	/var/uploads/32-1747464665132.png	\N	2025-05-17 06:51:05.255	2025-05-17 06:51:05.255
1412	477	879	/var/uploads/31-1747464837923.png	\N	2025-05-17 06:53:58.057	2025-05-17 06:53:58.057
1417	481	884	/var/uploads/30-1747465354191.png	\N	2025-05-17 07:02:34.323	2025-05-17 07:02:34.323
1425	547	1117	/var/uploads/42-1747466336368.png	\N	2025-05-17 07:18:56.488	2025-05-17 07:18:56.488
1426	547	1116	/var/uploads/41-1747466347008.png	\N	2025-05-17 07:19:07.093	2025-05-17 07:19:07.093
1427	540	1087	/var/uploads/36-1747466475145.png	\N	2025-05-17 07:21:15.23	2025-05-17 07:21:15.23
1428	540	1083	/var/uploads/32-1747466490230.png	\N	2025-05-17 07:21:30.348	2025-05-17 07:21:30.348
1429	540	1082	/var/uploads/31-1747466510137.png	\N	2025-05-17 07:21:50.263	2025-05-17 07:21:50.263
1430	540	1085	/var/uploads/34-1747466521676.png	\N	2025-05-17 07:22:01.809	2025-05-17 07:22:01.809
1431	540	1084	/var/uploads/33-1747466535333.png	\N	2025-05-17 07:22:15.458	2025-05-17 07:22:15.458
1432	540	1086	/var/uploads/35-1747466546691.png	\N	2025-05-17 07:22:26.775	2025-05-17 07:22:26.775
1444	570	1194	/var/uploads/32-1747467494144.png	\N	2025-05-17 07:38:14.317	2025-05-17 07:38:14.317
1445	570	1193	/var/uploads/31-1747467505937.png	\N	2025-05-17 07:38:26.072	2025-05-17 07:38:26.072
1451	536	1075	/var/uploads/432-1747469250957.png	\N	2025-05-17 08:07:31.015	2025-05-17 08:07:31.015
1452	536	1072	/var/uploads/412-1747469268327.png	\N	2025-05-17 08:07:48.411	2025-05-17 08:07:48.411
1453	536	1074	/var/uploads/442-1747469327204.png	\N	2025-05-17 08:08:47.286	2025-05-17 08:08:47.286
1455	536	1073	/var/uploads/422-1747469416447.png	\N	2025-05-17 08:10:16.536	2025-05-17 08:10:16.536
1466	614	1402	/var/uploads/2038-6-1747474238583.png	\N	2025-05-17 09:30:38.727	2025-05-17 09:30:38.727
1483	616	1408	/var/uploads/2-1747710833376.png	\N	2025-05-20 03:13:53.497	2025-05-20 03:13:53.497
1484	616	1409	/var/uploads/3-1747710846473.png	\N	2025-05-20 03:14:06.592	2025-05-20 03:14:06.592
1485	616	1410	/var/uploads/4-1747710857128.png	\N	2025-05-20 03:14:17.242	2025-05-20 03:14:17.242
1486	616	1411	/var/uploads/5-1747710867489.png	\N	2025-05-20 03:14:27.607	2025-05-20 03:14:27.607
1487	616	1412	/var/uploads/6-1747710885245.png	\N	2025-05-20 03:14:45.368	2025-05-20 03:14:45.368
1488	616	1408	/var/uploads/9-1747710898589.png	\N	2025-05-20 03:14:58.709	2025-05-20 03:14:58.709
1492	597	1365	/var/uploads/4-1747731223641.png	\N	2025-05-20 08:53:43.761	2025-05-20 08:53:43.761
1493	597	1364	/var/uploads/1-1747731238360.png	\N	2025-05-20 08:53:58.477	2025-05-20 08:53:58.477
1494	597	1367	/var/uploads/2-1747731253165.png	\N	2025-05-20 08:54:13.289	2025-05-20 08:54:13.289
1495	597	1366	/var/uploads/3-1747731273613.png	\N	2025-05-20 08:54:33.74	2025-05-20 08:54:33.74
1506	365	600	/var/uploads/3-1747808394765.png	\N	2025-05-21 06:19:54.886	2025-05-21 06:19:54.886
1507	365	599	/var/uploads/4-1747808411850.png	\N	2025-05-21 06:20:11.973	2025-05-21 06:20:11.973
1508	365	598	/var/uploads/pp-1747808425034.png	\N	2025-05-21 06:20:25.156	2025-05-21 06:20:25.156
1509	365	601	/var/uploads/2-1747808437583.png	\N	2025-05-21 06:20:37.702	2025-05-21 06:20:37.702
1517	176	225	/var/uploads/3-1747887954507.png	\N	2025-05-22 04:25:54.587	2025-05-22 04:25:54.587
1518	176	225	/var/uploads/4-1747887963701.png	\N	2025-05-22 04:26:03.786	2025-05-22 04:26:03.786
1519	176	225	/var/uploads/5-1747887971226.png	\N	2025-05-22 04:26:11.307	2025-05-22 04:26:11.307
1520	176	225	/var/uploads/6-1747887977584.png	\N	2025-05-22 04:26:17.668	2025-05-22 04:26:17.668
1521	176	225	/var/uploads/7-1747887986064.png	\N	2025-05-22 04:26:26.171	2025-05-22 04:26:26.171
1526	262	427	/var/uploads/a-1747905600786.png	\N	2025-05-22 09:20:00.905	2025-05-22 09:20:00.905
1528	623	1421	/var/uploads/5-1748329894358.png	\N	2025-05-27 07:11:34.554	2025-05-27 07:11:34.554
1534	579	1235	/var/uploads/2-1748406565669.png	\N	2025-05-28 04:29:25.836	2025-05-28 04:29:25.836
1535	579	1240	/var/uploads/7-1748406593070.png	\N	2025-05-28 04:29:53.225	2025-05-28 04:29:53.225
1536	579	1236	/var/uploads/3-1748406606558.png	\N	2025-05-28 04:30:06.713	2025-05-28 04:30:06.713
1538	579	1238	/var/uploads/5-1748406640607.png	\N	2025-05-28 04:30:40.771	2025-05-28 04:30:40.771
1539	579	1239	/var/uploads/6-1748406656135.png	\N	2025-05-28 04:30:56.293	2025-05-28 04:30:56.293
1543	581	1258	/var/uploads/24-1748415621980.png	\N	2025-05-28 07:00:22.104	2025-05-28 07:00:22.104
1544	581	1254	/var/uploads/18-1748415632610.png	\N	2025-05-28 07:00:32.695	2025-05-28 07:00:32.695
1545	581	1249	/var/uploads/16-1748415663498.png	\N	2025-05-28 07:01:03.591	2025-05-28 07:01:03.591
1546	581	1251	/var/uploads/21-1748415680472.png	\N	2025-05-28 07:01:20.597	2025-05-28 07:01:20.597
1547	581	1250	/var/uploads/19-1748415709134.png	\N	2025-05-28 07:01:49.252	2025-05-28 07:01:49.252
1548	581	1256	/var/uploads/22-1748415819020.png	\N	2025-05-28 07:03:39.153	2025-05-28 07:03:39.153
1549	581	1255	/var/uploads/15-1748415835142.png	\N	2025-05-28 07:03:55.227	2025-05-28 07:03:55.227
1550	581	1253	/var/uploads/23-1748415849291.png	\N	2025-05-28 07:04:09.417	2025-05-28 07:04:09.417
1553	583	1424	/var/uploads/พิมพ์ลาย2p23-1748570296323.png	\N	2025-05-30 01:58:16.35	2025-05-30 01:58:16.35
1554	583	1425	/var/uploads/พิมพ์ลาย2p24-1748570310156.png	\N	2025-05-30 01:58:30.28	2025-05-30 01:58:30.28
1555	583	1426	/var/uploads/พิมพ์ลาย2p25-1748570318686.png	\N	2025-05-30 01:58:38.809	2025-05-30 01:58:38.809
1557	559	1160	/var/uploads/4-1748592390215.png	\N	2025-05-30 08:06:30.336	2025-05-30 08:06:30.336
1558	559	1157	/var/uploads/7-1748592400064.png	\N	2025-05-30 08:06:40.188	2025-05-30 08:06:40.188
1559	559	1159	/var/uploads/5-1748592411151.png	\N	2025-05-30 08:06:51.279	2025-05-30 08:06:51.279
1560	559	1158	/var/uploads/6-1748592426403.png	\N	2025-05-30 08:07:06.559	2025-05-30 08:07:06.559
1568	624	1430	/var/uploads/7-1748829906483.png	\N	2025-06-02 02:05:06.616	2025-06-02 02:05:06.616
1569	624	1431	/var/uploads/8-1748829916611.png	\N	2025-06-02 02:05:16.84	2025-06-02 02:05:16.84
1570	625	1432	/var/uploads/12-1748830304809.png	\N	2025-06-02 02:11:44.935	2025-06-02 02:11:44.935
1571	625	1433	/var/uploads/13-1748830315958.png	\N	2025-06-02 02:11:56.073	2025-06-02 02:11:56.073
1572	625	1434	/var/uploads/14-1748830327294.png	\N	2025-06-02 02:12:07.419	2025-06-02 02:12:07.419
1573	625	1435	/var/uploads/15-1748830342159.png	\N	2025-06-02 02:12:22.28	2025-06-02 02:12:22.28
1574	625	1436	/var/uploads/16-1748830357350.png	\N	2025-06-02 02:12:37.478	2025-06-02 02:12:37.478
1575	625	1437	/var/uploads/17-1748830367409.png	\N	2025-06-02 02:12:47.528	2025-06-02 02:12:47.528
1576	314	484	/var/uploads/12-1748845948152.png	\N	2025-06-02 06:32:28.276	2025-06-02 06:32:28.276
1577	314	484	/var/uploads/13-1748845957317.png	\N	2025-06-02 06:32:37.447	2025-06-02 06:32:37.447
1578	313	480	/var/uploads/15-1748848420019.png	\N	2025-06-02 07:13:40.135	2025-06-02 07:13:40.135
1579	313	483	/var/uploads/13-1748848435301.png	\N	2025-06-02 07:13:55.422	2025-06-02 07:13:55.422
1580	313	482	/var/uploads/14-1748848449774.png	\N	2025-06-02 07:14:09.971	2025-06-02 07:14:09.971
1581	313	481	/var/uploads/16-1748848461024.png	\N	2025-06-02 07:14:21.139	2025-06-02 07:14:21.139
1582	322	513	/var/uploads/4-1748850246952.png	\N	2025-06-02 07:44:07.158	2025-06-02 07:44:07.158
1385	603	1377	/var/uploads/1545-1742532805427.png	\N	2025-05-10 08:02:50.999	2025-05-10 08:02:50.999
1386	604	1378	/var/uploads/188266_0-1745395982182.jpg	\N	2025-05-10 08:02:50.999	2025-05-10 08:02:50.999
1387	605	1379	/var/uploads/188267_0-1745396226301.jpg	\N	2025-05-10 08:02:50.999	2025-05-10 08:02:50.999
1388	606	1380	/var/uploads/188268_0-1745396245882.jpg	\N	2025-05-10 08:02:50.999	2025-05-10 08:02:50.999
1389	607	1381	/var/uploads/188269_0-1745396180020.jpg	\N	2025-05-10 08:02:50.999	2025-05-10 08:02:50.999
1390	608	1382	/var/uploads/188270_0-1745396304800.jpg	\N	2025-05-10 08:02:50.999	2025-05-10 08:02:50.999
1391	608	1383	/var/uploads/188270_0-1745461758354.jpg	\N	2025-05-10 08:02:50.999	2025-05-10 08:02:50.999
1393	610	1385	/var/uploads/188269_0-1745396949128.jpg	\N	2025-05-10 08:02:50.999	2025-05-10 08:02:50.999
1394	611	1386	/var/uploads/245185458-1745474984362.png	\N	2025-05-10 08:02:50.999	2025-05-10 08:02:50.999
1395	612	1387	/var/uploads/145185458-1745474939710.png	\N	2025-05-10 08:02:50.999	2025-05-10 08:02:50.999
1398	162	1390	/var/uploads/3-1746599581005.png	\N	2025-05-10 08:43:43.181	2025-05-10 08:43:43.181
1399	162	1391	/var/uploads/5-1746599599640.png	\N	2025-05-10 08:43:43.181	2025-05-10 08:43:43.181
1403	459	843	/var/uploads/11-1747463488227.png	\N	2025-05-17 06:32:08.115	2025-05-17 06:32:08.115
1402	459	844	/var/uploads/12-1747463527989.png	\N	2025-05-17 06:31:28.358	2025-05-17 06:31:28.358
1408	465	855	/var/uploads/31-1747464179719.png	\N	2025-05-17 06:42:59.856	2025-05-17 06:42:59.856
1409	465	856	/var/uploads/32-1747464190541.png	\N	2025-05-17 06:43:10.667	2025-05-17 06:43:10.667
1413	478	880	/var/uploads/42-1747464939221.png	\N	2025-05-17 06:55:39.288	2025-05-17 06:55:39.288
1414	478	881	/var/uploads/41-1747464953736.png	\N	2025-05-17 06:55:53.866	2025-05-17 06:55:53.866
1415	479	882	/var/uploads/20-1747465067935.png	\N	2025-05-17 06:57:48.067	2025-05-17 06:57:48.067
1418	528	1033	/var/uploads/46-1747465669380.png	\N	2025-05-17 07:07:49.478	2025-05-17 07:07:49.478
1419	528	1029	/var/uploads/42-1747465741318.png	\N	2025-05-17 07:09:01.444	2025-05-17 07:09:01.444
1420	528	1032	/var/uploads/47-1747465764630.png	\N	2025-05-17 07:09:24.836	2025-05-17 07:09:24.836
1421	528	1031	/var/uploads/43-1747465780394.png	\N	2025-05-17 07:09:40.514	2025-05-17 07:09:40.514
1422	528	1028	/var/uploads/41-1747465793291.png	\N	2025-05-17 07:09:53.41	2025-05-17 07:09:53.41
1423	528	1034	/var/uploads/45-1747465920035.png	\N	2025-05-17 07:12:00.172	2025-05-17 07:12:00.172
1424	528	1030	/var/uploads/44-1747465935742.png	\N	2025-05-17 07:12:15.859	2025-05-17 07:12:15.859
1433	557	1151	/var/uploads/32-1747466804472.png	\N	2025-05-17 07:26:44.604	2025-05-17 07:26:44.604
1434	557	1150	/var/uploads/31-1747466823598.png	\N	2025-05-17 07:27:03.736	2025-05-17 07:27:03.736
1435	557	1152	/var/uploads/33-1747466838634.png	\N	2025-05-17 07:27:18.769	2025-05-17 07:27:18.769
1446	537	1078	/var/uploads/441-1747468613054.png	\N	2025-05-17 07:56:53.176	2025-05-17 07:56:53.176
1456	613	1392	/var/uploads/cn-645-1-1747472503702.png	\N	2025-05-17 09:01:43.838	2025-05-17 09:01:43.838
1457	613	1393	/var/uploads/cn-645-6-1747472521219.png	\N	2025-05-17 09:02:01.347	2025-05-17 09:02:01.347
1458	613	1394	/var/uploads/cn-645-10-1747472548318.png	\N	2025-05-17 09:02:28.446	2025-05-17 09:02:28.446
1459	613	1395	/var/uploads/cn-645-5-1747472564191.png	\N	2025-05-17 09:02:44.324	2025-05-17 09:02:44.324
1460	613	1396	/var/uploads/cn-645-4-1747472579880.png	\N	2025-05-17 09:03:00.057	2025-05-17 09:03:00.057
1461	613	1397	/var/uploads/cn-645-3-1747472593217.png	\N	2025-05-17 09:03:13.342	2025-05-17 09:03:13.342
1462	613	1398	/var/uploads/cn-645-9-1747472610610.png	\N	2025-05-17 09:03:30.757	2025-05-17 09:03:30.757
1463	613	1399	/var/uploads/cn-645-8-1747472624318.png	\N	2025-05-17 09:03:44.444	2025-05-17 09:03:44.444
1464	613	1400	/var/uploads/cn-645-7-1747472637766.png	\N	2025-05-17 09:03:57.891	2025-05-17 09:03:57.891
1465	613	1401	/var/uploads/cn-645-2-1747472648479.png	\N	2025-05-17 09:04:08.599	2025-05-17 09:04:08.599
1540	579	1237	/var/uploads/white-1748414728133.png	\N	2025-05-28 06:45:28.239	2025-05-28 06:45:28.239
1541	579	1422	/var/uploads/dark-green-1748414885986.png	\N	2025-05-28 06:48:06.152	2025-05-28 06:48:06.152
1467	605	1379	/var/uploads/25-1747708915572.png	\N	2025-05-20 02:41:55.642	2025-05-20 02:41:55.642
1468	605	1379	/var/uploads/26-1747708925838.png	\N	2025-05-20 02:42:05.955	2025-05-20 02:42:05.955
1469	605	1379	/var/uploads/27-1747708934719.png	\N	2025-05-20 02:42:14.844	2025-05-20 02:42:14.844
1470	605	1379	/var/uploads/28-1747708944999.png	\N	2025-05-20 02:42:25.117	2025-05-20 02:42:25.117
1471	605	1379	/var/uploads/29-1747708950565.png	\N	2025-05-20 02:42:30.6	2025-05-20 02:42:30.6
1472	605	1379	/var/uploads/30-1747708960406.png	\N	2025-05-20 02:42:40.535	2025-05-20 02:42:40.535
1473	604	1378	/var/uploads/40-1747709135555.png	\N	2025-05-20 02:45:35.712	2025-05-20 02:45:35.712
1474	604	1378	/var/uploads/41-1747709144957.png	\N	2025-05-20 02:45:45.112	2025-05-20 02:45:45.112
1475	604	1378	/var/uploads/42-1747709152901.png	\N	2025-05-20 02:45:53.032	2025-05-20 02:45:53.032
1476	604	1378	/var/uploads/43-1747709158111.png	\N	2025-05-20 02:45:58.12	2025-05-20 02:45:58.12
1489	617	1413	/var/uploads/13-1747711294603.png	\N	2025-05-20 03:21:34.685	2025-05-20 03:21:34.685
1490	617	1414	/var/uploads/14-1747711305889.png	\N	2025-05-20 03:21:46.001	2025-05-20 03:21:46.001
1491	617	1415	/var/uploads/15-1747711317687.png	\N	2025-05-20 03:21:57.81	2025-05-20 03:21:57.81
1496	366	603	/var/uploads/2-1747731463332.png	\N	2025-05-20 08:57:43.416	2025-05-20 08:57:43.416
1497	366	602	/var/uploads/4-1747731480208.png	\N	2025-05-20 08:58:00.291	2025-05-20 08:58:00.291
1498	366	605	/var/uploads/3-1747731492866.png	\N	2025-05-20 08:58:12.952	2025-05-20 08:58:12.952
1499	366	604	/var/uploads/1-1747731504159.png	\N	2025-05-20 08:58:24.282	2025-05-20 08:58:24.282
1510	618	1416	/var/uploads/1-1747812982609.png	\N	2025-05-21 07:36:22.764	2025-05-21 07:36:22.764
1511	619	1417	/var/uploads/2-1747813070519.png	\N	2025-05-21 07:37:50.682	2025-05-21 07:37:50.682
1512	620	1418	/var/uploads/3-1747813112735.png	\N	2025-05-21 07:38:32.957	2025-05-21 07:38:32.957
1513	621	1419	/var/uploads/4-1747813138899.png	\N	2025-05-21 07:38:59.054	2025-05-21 07:38:59.054
1522	367	610	/var/uploads/4-1747904925627.png	\N	2025-05-22 09:08:45.743	2025-05-22 09:08:45.743
1523	367	609	/var/uploads/1-1747904936441.png	\N	2025-05-22 09:08:56.558	2025-05-22 09:08:56.558
1524	367	606	/var/uploads/2-1747904946207.png	\N	2025-05-22 09:09:06.329	2025-05-22 09:09:06.329
1525	367	607	/var/uploads/3-1747904964457.png	\N	2025-05-22 09:09:24.577	2025-05-22 09:09:24.577
1527	622	1420	/var/uploads/plps-1748234023370.png	\N	2025-05-26 04:33:43.552	2025-05-26 04:33:43.552
1529	583	1271	/var/uploads/พิมพ์ลาย2p1-1748403391977.png	\N	2025-05-28 03:36:32.097	2025-05-28 03:36:32.097
1530	583	1279	/var/uploads/พิมพ์ลาย2p9-1748403417163.png	\N	2025-05-28 03:36:57.29	2025-05-28 03:36:57.29
1531	583	1287	/var/uploads/พิมพ์ลาย2p17-1748403442603.png	\N	2025-05-28 03:37:22.719	2025-05-28 03:37:22.719
1532	583	1289	/var/uploads/พิมพ์ลาย2p19-1748403463015.png	\N	2025-05-28 03:37:43.137	2025-05-28 03:37:43.137
1533	583	1290	/var/uploads/พิมพ์ลาย2p20-1748403486709.png	\N	2025-05-28 03:38:06.833	2025-05-28 03:38:06.833
1542	579	1423	/var/uploads/cream-1748414898393.png	\N	2025-05-28 06:48:18.559	2025-05-28 06:48:18.559
1551	581	1262	/var/uploads/17-1748415901935.png	\N	2025-05-28 07:05:01.992	2025-05-28 07:05:01.992
1552	581	1259	/var/uploads/20-1748415924571.png	\N	2025-05-28 07:05:24.691	2025-05-28 07:05:24.691
1556	496	925	/var/uploads/568457-1748587982959.png	\N	2025-05-30 06:53:03.054	2025-05-30 06:53:03.054
1561	336	555	/var/uploads/12-1748659893809.png	\N	2025-05-31 02:51:33.93	2025-05-31 02:51:33.93
1562	336	554	/var/uploads/full-face-1748659968202.png	\N	2025-05-31 02:52:48.433	2025-05-31 02:52:48.433
1563	336	556	/var/uploads/9-1748659979304.png	\N	2025-05-31 02:52:59.429	2025-05-31 02:52:59.429
1564	336	557	/var/uploads/10-1748659989711.png	\N	2025-05-31 02:53:09.835	2025-05-31 02:53:09.835
1416	480	883	/var/uploads/20-1748665456771.png	\N	2025-05-17 06:58:49.018	2025-05-17 06:58:49.018
1565	624	1427	/var/uploads/4-1748829859153.png	\N	2025-06-02 02:04:19.275	2025-06-02 02:04:19.275
1566	624	1428	/var/uploads/5-1748829876894.png	\N	2025-06-02 02:04:37.012	2025-06-02 02:04:37.012
1567	624	1429	/var/uploads/6-1748829888802.png	\N	2025-06-02 02:04:48.918	2025-06-02 02:04:48.918
1583	322	514	/var/uploads/3-1748850257703.png	\N	2025-06-02 07:44:18.008	2025-06-02 07:44:18.008
1584	322	512	/var/uploads/2-1748850267977.png	\N	2025-06-02 07:44:28.602	2025-06-02 07:44:28.602
1585	322	511	/var/uploads/1-1748850279585.png	\N	2025-06-02 07:44:40.011	2025-06-02 07:44:40.011
1586	320	505	/var/uploads/4-4-1748850384499.png	\N	2025-06-02 07:46:24.728	2025-06-02 07:46:24.728
1588	320	502	/var/uploads/3-3-1748850409699.png	\N	2025-06-02 07:46:50.115	2025-06-02 07:46:50.115
1589	320	504	/var/uploads/1-1-1748850426957.png	\N	2025-06-02 07:47:07.177	2025-06-02 07:47:07.177
1590	320	506	/var/uploads/2-2-1748850438565.png	\N	2025-06-02 07:47:19.934	2025-06-02 07:47:19.934
1591	320	503	/var/uploads/5-5-1748850519008.png	\N	2025-06-02 07:48:39.102	2025-06-02 07:48:39.102
1592	318	495	/var/uploads/5-1748850716366.png	\N	2025-06-02 07:51:56.553	2025-06-02 07:51:56.553
1593	318	494	/var/uploads/4-1748850728672.png	\N	2025-06-02 07:52:09.311	2025-06-02 07:52:09.311
1594	318	496	/var/uploads/2-1748850740106.png	\N	2025-06-02 07:52:20.387	2025-06-02 07:52:20.387
1595	318	497	/var/uploads/3-1748850751539.png	\N	2025-06-02 07:52:31.727	2025-06-02 07:52:31.727
1596	318	498	/var/uploads/1-1748850794983.png	\N	2025-06-02 07:53:16.806	2025-06-02 07:53:16.806
1597	589	1356	/var/uploads/2-1748850968115.png	\N	2025-06-02 07:56:08.259	2025-06-02 07:56:08.259
1598	589	1355	/var/uploads/3-1748850980508.png	\N	2025-06-02 07:56:20.65	2025-06-02 07:56:20.65
1599	589	1354	/var/uploads/4-1748850990625.png	\N	2025-06-02 07:56:30.762	2025-06-02 07:56:30.762
1600	589	1357	/var/uploads/1-1748851000407.png	\N	2025-06-02 07:56:40.54	2025-06-02 07:56:40.54
1601	590	1353	/var/uploads/2-1748851155697.png	\N	2025-06-02 07:59:15.788	2025-06-02 07:59:15.788
1602	590	1350	/var/uploads/5-1748851170734.png	\N	2025-06-02 07:59:30.82	2025-06-02 07:59:30.82
1603	590	1349	/var/uploads/3-1748851180650.png	\N	2025-06-02 07:59:40.768	2025-06-02 07:59:40.768
1604	590	1351	/var/uploads/1-1748851191733.png	\N	2025-06-02 07:59:51.829	2025-06-02 07:59:51.829
1605	590	1352	/var/uploads/4-1748851205229.png	\N	2025-06-02 08:00:05.322	2025-06-02 08:00:05.322
1606	591	1347	/var/uploads/2-1748851402554.png	\N	2025-06-02 08:03:22.749	2025-06-02 08:03:22.749
1607	591	1345	/var/uploads/5-1748851417192.png	\N	2025-06-02 08:03:37.331	2025-06-02 08:03:37.331
1608	591	1344	/var/uploads/6-1748851426481.png	\N	2025-06-02 08:03:46.63	2025-06-02 08:03:46.63
1609	591	1346	/var/uploads/4-1748851436096.png	\N	2025-06-02 08:03:56.344	2025-06-02 08:03:56.344
1610	591	1348	/var/uploads/3-1748851447046.png	\N	2025-06-02 08:04:07.184	2025-06-02 08:04:07.184
1611	335	553	/var/uploads/19-1748854649945.png	\N	2025-06-02 08:57:30.106	2025-06-02 08:57:30.106
1612	335	550	/var/uploads/20-1748854660969.png	\N	2025-06-02 08:57:41.143	2025-06-02 08:57:41.143
1613	335	551	/var/uploads/21-1748854670656.png	\N	2025-06-02 08:57:51.146	2025-06-02 08:57:51.146
1621	629	1444	/var/uploads/SY-A2138-1750650949503.png	\N	2025-06-23 03:55:49.697	2025-06-23 03:55:49.697
1623	630	1445	/var/uploads/84562-1751076708817.png	\N	2025-06-28 02:11:48.989	2025-06-28 02:11:48.989
1624	631	1446	/var/uploads/SY-A2245-1751509898221.png	\N	2025-07-03 02:31:38.391	2025-07-03 02:31:38.391
1625	632	1447	/var/uploads/9003-2-1752288434104.png	\N	2025-07-12 02:47:14.255	2025-07-12 02:47:14.255
1626	632	1447	/var/uploads/9003-1-1752288443141.png	\N	2025-07-12 02:47:23.265	2025-07-12 02:47:23.265
1627	585	1296	/var/uploads/9004-4-1752288600271.png	\N	2025-07-12 02:50:01.345	2025-07-12 02:50:01.345
1628	585	1297	/var/uploads/9004-1-1752288614962.png	\N	2025-07-12 02:50:15.189	2025-07-12 02:50:15.189
1629	585	1295	/var/uploads/9004-3-1752288626451.png	\N	2025-07-12 02:50:26.625	2025-07-12 02:50:26.625
1630	585	1294	/var/uploads/9004-2-1752288642093.png	\N	2025-07-12 02:50:42.625	2025-07-12 02:50:42.625
1631	586	1303	/var/uploads/5505-6-1752288758392.png	\N	2025-07-12 02:52:38.532	2025-07-12 02:52:38.532
1632	586	1299	/var/uploads/5505-2-1752288770395.png	\N	2025-07-12 02:52:50.596	2025-07-12 02:52:50.596
1633	586	1298	/var/uploads/5505-1-1752288781698.png	\N	2025-07-12 02:53:01.919	2025-07-12 02:53:01.919
1634	586	1301	/var/uploads/5505-4-1752288793016.png	\N	2025-07-12 02:53:13.34	2025-07-12 02:53:13.34
1635	586	1300	/var/uploads/5505-3-1752288809803.png	\N	2025-07-12 02:53:30.564	2025-07-12 02:53:30.564
1636	586	1302	/var/uploads/5505-5-1752288825912.png	\N	2025-07-12 02:53:46.754	2025-07-12 02:53:46.754
1637	586	1305	/var/uploads/5505-8-1752288834855.png	\N	2025-07-12 02:53:55.242	2025-07-12 02:53:55.242
1638	586	1306	/var/uploads/5505-9-1752288847296.png	\N	2025-07-12 02:54:08.858	2025-07-12 02:54:08.858
1639	586	1304	/var/uploads/5505-7-1752288862757.png	\N	2025-07-12 02:54:24.532	2025-07-12 02:54:24.532
1640	586	1339	/var/uploads/5505-10-1752288874830.png	\N	2025-07-12 02:54:35.063	2025-07-12 02:54:35.063
879	574	1207	/var/uploads/619-1752289492238.png	\N	2025-02-27 08:12:49.837	2025-02-27 08:12:49.837
1641	574	1207	/var/uploads/619-1-1752289569895.png	\N	2025-07-12 03:06:10.051	2025-07-12 03:06:10.051
1642	574	1207	/var/uploads/619-2-1752289575166.png	\N	2025-07-12 03:06:15.222	2025-07-12 03:06:15.222
1643	555	1146	/var/uploads/631-2-1752289932503.png	\N	2025-07-12 03:12:12.737	2025-07-12 03:12:12.737
1644	555	1145	/var/uploads/631-1-1752289945189.png	\N	2025-07-12 03:12:25.367	2025-07-12 03:12:25.367
1645	555	1148	/var/uploads/631-4-1752289956923.png	\N	2025-07-12 03:12:37.097	2025-07-12 03:12:37.097
1646	555	1147	/var/uploads/631-3-1752289970043.png	\N	2025-07-12 03:12:50.25	2025-07-12 03:12:50.25
1647	554	1144	/var/uploads/633-1-1752290144910.png	\N	2025-07-12 03:15:45.066	2025-07-12 03:15:45.066
1648	554	1143	/var/uploads/633-2-1752290155056.png	\N	2025-07-12 03:15:55.192	2025-07-12 03:15:55.192
1649	542	1093	/var/uploads/625-2-1752290521636.png	\N	2025-07-12 03:22:01.856	2025-07-12 03:22:01.856
1650	542	1092	/var/uploads/625-3-1752290568246.png	\N	2025-07-12 03:22:48.436	2025-07-12 03:22:48.436
1651	542	1091	/var/uploads/625-1-1752290581860.png	\N	2025-07-12 03:23:02.017	2025-07-12 03:23:02.017
1652	370	616	/var/uploads/32771-1-1752291310953.png	\N	2025-07-12 03:35:11.09	2025-07-12 03:35:11.09
1653	370	615	/var/uploads/32771-2-1752291321427.png	\N	2025-07-12 03:35:21.631	2025-07-12 03:35:21.631
1654	398	702	/var/uploads/23072-1-1752291993282.png	\N	2025-07-12 03:46:35.548	2025-07-12 03:46:35.548
1655	398	704	/var/uploads/23072-3-1752292005877.png	\N	2025-07-12 03:46:46.04	2025-07-12 03:46:46.04
1656	398	703	/var/uploads/23072-4-1752292019499.png	\N	2025-07-12 03:46:59.694	2025-07-12 03:46:59.694
1657	398	705	/var/uploads/23072-2-1752292029345.png	\N	2025-07-12 03:47:09.529	2025-07-12 03:47:09.529
1658	376	627	/var/uploads/44802-1-1752292180731.png	\N	2025-07-12 03:49:44.069	2025-07-12 03:49:44.069
1659	376	627	/var/uploads/44802-2-1752292189380.png	\N	2025-07-12 03:49:51.317	2025-07-12 03:49:51.317
1660	368	612	/var/uploads/72135-2-1752292317038.png	\N	2025-07-12 03:51:58.673	2025-07-12 03:51:58.673
1661	368	611	/var/uploads/72135-1-1752292327378.png	\N	2025-07-12 03:52:08.395	2025-07-12 03:52:08.395
1662	385	651	/var/uploads/22399-1-1752292540696.png	\N	2025-07-12 03:55:40.809	2025-07-12 03:55:40.809
1663	385	653	/var/uploads/22399-3-1752292550874.png	\N	2025-07-12 03:55:51.005	2025-07-12 03:55:51.005
1664	385	652	/var/uploads/22399-2-1752292563465.png	\N	2025-07-12 03:56:04.388	2025-07-12 03:56:04.388
1665	385	654	/var/uploads/22399-4-1752292575901.png	\N	2025-07-12 03:56:16.425	2025-07-12 03:56:16.425
1668	387	660	/var/uploads/22342-3-1752292717850.png	\N	2025-07-12 03:58:37.976	2025-07-12 03:58:37.976
1669	387	659	/var/uploads/22342-2-1752292729792.png	\N	2025-07-12 03:58:50.064	2025-07-12 03:58:50.064
1670	387	658	/var/uploads/22342-1-1752292749513.png	\N	2025-07-12 03:59:09.607	2025-07-12 03:59:09.607
1671	387	661	/var/uploads/22342-4-1752292761139.png	\N	2025-07-12 03:59:21.276	2025-07-12 03:59:21.276
1764	452	830	/var/uploads/104-1-1752652812858.png	\N	2025-07-16 08:00:13.029	2025-07-16 08:00:13.029
1765	452	829	/var/uploads/104-2-1752652826265.png	\N	2025-07-16 08:00:26.458	2025-07-16 08:00:26.458
1674	407	739	/var/uploads/1089-3-1752294314492.png	\N	2025-07-12 04:25:14.733	2025-07-12 04:25:14.733
1675	407	738	/var/uploads/1089-1-1752294326627.png	\N	2025-07-12 04:25:26.991	2025-07-12 04:25:26.991
1676	407	740	/var/uploads/1089-2-1752294336260.png	\N	2025-07-12 04:25:36.459	2025-07-12 04:25:36.459
1677	401	715	/var/uploads/23709-2-1752294422831.png	\N	2025-07-12 04:27:03.018	2025-07-12 04:27:03.018
1678	401	714	/var/uploads/23709-1-1752294434299.png	\N	2025-07-12 04:27:14.557	2025-07-12 04:27:14.557
1679	401	717	/var/uploads/23709-3-1752294445240.png	\N	2025-07-12 04:27:25.401	2025-07-12 04:27:25.401
1680	401	716	/var/uploads/23709-4-1752294454016.png	\N	2025-07-12 04:27:34.182	2025-07-12 04:27:34.182
1681	404	729	/var/uploads/24016-1-1752294512687.png	\N	2025-07-12 04:28:32.873	2025-07-12 04:28:32.873
1682	404	727	/var/uploads/24016-3-1752294529810.png	\N	2025-07-12 04:28:50.192	2025-07-12 04:28:50.192
1683	404	726	/var/uploads/24016-4-1752294541228.png	\N	2025-07-12 04:29:01.419	2025-07-12 04:29:01.419
1684	404	728	/var/uploads/24016-2-1752294549936.png	\N	2025-07-12 04:29:10.123	2025-07-12 04:29:10.123
1685	413	757	/var/uploads/31628-1-1752294753930.png	\N	2025-07-12 04:32:34.158	2025-07-12 04:32:34.158
1686	413	756	/var/uploads/31628-2-1752294766477.png	\N	2025-07-12 04:32:46.743	2025-07-12 04:32:46.743
1687	408	741	/var/uploads/82994-2-1752294837653.png	\N	2025-07-12 04:33:57.861	2025-07-12 04:33:57.861
1688	408	742	/var/uploads/82994-1-1752294847854.png	\N	2025-07-12 04:34:08.076	2025-07-12 04:34:08.076
1689	454	833	/var/uploads/108-1-1752302024789.png	\N	2025-07-12 06:33:44.958	2025-07-12 06:33:44.958
1766	382	645	/var/uploads/936-1-1752652894807.png	\N	2025-07-16 08:01:34.94	2025-07-16 08:01:34.94
1691	454	834	/var/uploads/108-2-1752302269005.png	\N	2025-07-12 06:37:49.224	2025-07-12 06:37:49.224
1692	460	846	/var/uploads/116-1-1752303235288.png	\N	2025-07-12 06:53:55.468	2025-07-12 06:53:55.468
1693	460	845	/var/uploads/116-2-1752303249325.png	\N	2025-07-12 06:54:09.504	2025-07-12 06:54:09.504
1694	412	753	/var/uploads/3228-2-1752303330234.png	\N	2025-07-12 06:55:30.44	2025-07-12 06:55:30.44
1695	412	754	/var/uploads/3228-1-1752303345807.png	\N	2025-07-12 06:55:45.993	2025-07-12 06:55:45.993
1696	412	755	/var/uploads/3228-3-1752303364399.png	\N	2025-07-12 06:56:04.644	2025-07-12 06:56:04.644
1697	470	865	/var/uploads/4677-1-1752303628536.png	\N	2025-07-12 07:00:28.71	2025-07-12 07:00:28.71
1698	470	866	/var/uploads/4677-2-1752303638116.png	\N	2025-07-12 07:00:38.305	2025-07-12 07:00:38.305
1699	471	867	/var/uploads/4746-1-1752303719521.png	\N	2025-07-12 07:01:59.712	2025-07-12 07:01:59.712
1700	471	868	/var/uploads/4746-2-1752303730116.png	\N	2025-07-12 07:02:10.305	2025-07-12 07:02:10.305
1701	553	1448	/var/uploads/2-1752304672761.png	\N	2025-07-12 07:17:52.923	2025-07-12 07:17:52.923
1702	476	877	/var/uploads/5601-1-1752304936231.png	\N	2025-07-12 07:22:16.418	2025-07-12 07:22:16.418
1703	476	878	/var/uploads/5601-2-1752304948989.png	\N	2025-07-12 07:22:29.172	2025-07-12 07:22:29.172
1767	436	801	/var/uploads/3201-3-1752652972729.png	\N	2025-07-16 08:02:52.942	2025-07-16 08:02:52.942
1768	436	800	/var/uploads/3201-1-1752652982260.png	\N	2025-07-16 08:03:02.528	2025-07-16 08:03:02.528
1769	436	802	/var/uploads/3201-2-1752652993619.png	\N	2025-07-16 08:03:13.828	2025-07-16 08:03:13.828
1770	429	785	/var/uploads/3250-2-1752653057545.png	\N	2025-07-16 08:04:17.739	2025-07-16 08:04:17.739
1810	638	1454	/var/uploads/etc-0150-1755758826494.png	\N	2025-08-21 06:47:06.73	2025-08-21 06:47:06.73
1811	137	163	/var/uploads/5-1755760012787.png	\N	2025-08-21 07:06:53.123	2025-08-21 07:06:53.123
1814	132	158	/var/uploads/6-1755760260392.png	\N	2025-08-21 07:11:00.697	2025-08-21 07:11:00.697
1815	129	155	/var/uploads/SY-A0817-1755760543116.png	\N	2025-08-21 07:15:43.291	2025-08-21 07:15:43.291
1816	639	1455	/var/uploads/7-1755761914433.png	\N	2025-08-21 07:38:34.603	2025-08-21 07:38:34.603
1817	639	1456	/var/uploads/9-1755761925371.png	\N	2025-08-21 07:38:45.578	2025-08-21 07:38:45.578
1818	639	1457	/var/uploads/8-1755761935742.png	\N	2025-08-21 07:38:55.937	2025-08-21 07:38:55.937
1819	639	1458	/var/uploads/12-1755761946308.png	\N	2025-08-21 07:39:06.507	2025-08-21 07:39:06.507
1820	639	1459	/var/uploads/11-1755761963322.png	\N	2025-08-21 07:39:23.621	2025-08-21 07:39:23.621
1821	639	1460	/var/uploads/10-1755761972903.png	\N	2025-08-21 07:39:33.563	2025-08-21 07:39:33.563
1822	259	411	/var/uploads/5-1755767376545.png	\N	2025-08-21 09:09:36.679	2025-08-21 09:09:36.679
1823	259	406	/var/uploads/4-1755767394700.png	\N	2025-08-21 09:09:54.861	2025-08-21 09:09:54.861
1824	259	405	/var/uploads/3-1755767411073.png	\N	2025-08-21 09:10:11.22	2025-08-21 09:10:11.22
1825	259	404	/var/uploads/13-1755767426184.png	\N	2025-08-21 09:10:26.337	2025-08-21 09:10:26.337
1826	259	403	/var/uploads/2-1755767436989.png	\N	2025-08-21 09:10:37.127	2025-08-21 09:10:37.127
1827	259	410	/var/uploads/7-1755767445957.png	\N	2025-08-21 09:10:46.105	2025-08-21 09:10:46.105
1828	259	409	/var/uploads/12-1755767459011.png	\N	2025-08-21 09:10:59.149	2025-08-21 09:10:59.149
1829	259	408	/var/uploads/9-1755767468398.png	\N	2025-08-21 09:11:08.527	2025-08-21 09:11:08.527
1830	259	407	/var/uploads/6-1755767477104.png	\N	2025-08-21 09:11:17.236	2025-08-21 09:11:17.236
1831	259	413	/var/uploads/8-1755767486666.png	\N	2025-08-21 09:11:26.824	2025-08-21 09:11:26.824
1832	259	412	/var/uploads/10-1755767496450.png	\N	2025-08-21 09:11:36.608	2025-08-21 09:11:36.608
1833	259	414	/var/uploads/11-1755767505490.png	\N	2025-08-21 09:11:45.606	2025-08-21 09:11:45.606
1834	258	400	/var/uploads/3-1755767676932.png	\N	2025-08-21 09:14:37.052	2025-08-21 09:14:37.052
1835	258	396	/var/uploads/12-1755767686807.png	\N	2025-08-21 09:14:46.956	2025-08-21 09:14:46.956
1836	258	393	/var/uploads/2-1755767696639.png	\N	2025-08-21 09:14:56.785	2025-08-21 09:14:56.785
1837	258	392	/var/uploads/5-1755767706045.png	\N	2025-08-21 09:15:06.222	2025-08-21 09:15:06.222
1838	258	398	/var/uploads/6-1755767715555.png	\N	2025-08-21 09:15:15.714	2025-08-21 09:15:15.714
1839	258	399	/var/uploads/8-1755767724685.png	\N	2025-08-21 09:15:24.856	2025-08-21 09:15:24.856
1840	258	397	/var/uploads/9-1755767734353.png	\N	2025-08-21 09:15:34.494	2025-08-21 09:15:34.494
1841	258	395	/var/uploads/7-1755767749028.png	\N	2025-08-21 09:15:49.197	2025-08-21 09:15:49.197
1842	258	394	/var/uploads/10-1755767759414.png	\N	2025-08-21 09:15:59.653	2025-08-21 09:15:59.653
1843	258	402	/var/uploads/4-1755767769036.png	\N	2025-08-21 09:16:09.177	2025-08-21 09:16:09.177
1844	258	401	/var/uploads/11-1755767777775.png	\N	2025-08-21 09:16:17.943	2025-08-21 09:16:17.943
1845	252	1316	/var/uploads/2-1755769118834.png	\N	2025-08-21 09:38:39.702	2025-08-21 09:38:39.702
1846	252	331	/var/uploads/3-1755769129982.png	\N	2025-08-21 09:38:50.178	2025-08-21 09:38:50.178
1847	252	329	/var/uploads/6-1755769138427.png	\N	2025-08-21 09:38:59.03	2025-08-21 09:38:59.03
1848	252	327	/var/uploads/4-1755769149153.png	\N	2025-08-21 09:39:11.177	2025-08-21 09:39:11.177
1849	252	326	/var/uploads/10-1755769161287.png	\N	2025-08-21 09:39:23.818	2025-08-21 09:39:23.818
1850	252	328	/var/uploads/7-1755769172714.png	\N	2025-08-21 09:39:33.029	2025-08-21 09:39:33.029
1851	252	330	/var/uploads/13-1755769181473.png	\N	2025-08-21 09:39:52.529	2025-08-21 09:39:52.529
1852	252	335	/var/uploads/12-1755769202655.png	\N	2025-08-21 09:40:03.295	2025-08-21 09:40:03.295
1853	252	334	/var/uploads/9-1755769212188.png	\N	2025-08-21 09:40:13.037	2025-08-21 09:40:13.037
1854	252	333	/var/uploads/11-1755769221207.png	\N	2025-08-21 09:40:27.427	2025-08-21 09:40:27.427
1855	252	332	/var/uploads/8-1755769238868.png	\N	2025-08-21 09:40:43.987	2025-08-21 09:40:43.987
1856	252	336	/var/uploads/5-1755769252812.png	\N	2025-08-21 09:40:53.578	2025-08-21 09:40:53.578
1857	257	381	/var/uploads/4-1755826361791.png	\N	2025-08-22 01:32:41.931	2025-08-22 01:32:41.931
1858	257	387	/var/uploads/9-1755826371801.png	\N	2025-08-22 01:32:51.929	2025-08-22 01:32:51.929
1859	257	385	/var/uploads/8-1755826470728.png	\N	2025-08-22 01:34:30.851	2025-08-22 01:34:30.851
1860	257	384	/var/uploads/6-1755826483441.png	\N	2025-08-22 01:34:43.563	2025-08-22 01:34:43.563
1861	257	382	/var/uploads/12-1755826492887.png	\N	2025-08-22 01:34:53.122	2025-08-22 01:34:53.122
1862	257	383	/var/uploads/3-1755826505228.png	\N	2025-08-22 01:35:05.349	2025-08-22 01:35:05.349
1863	257	386	/var/uploads/5-1755826513862.png	\N	2025-08-22 01:35:13.992	2025-08-22 01:35:13.992
1864	257	390	/var/uploads/10-1755826524264.png	\N	2025-08-22 01:35:24.393	2025-08-22 01:35:24.393
1865	257	388	/var/uploads/7-1755826533916.png	\N	2025-08-22 01:35:34.042	2025-08-22 01:35:34.042
1866	257	389	/var/uploads/11-1755826545600.png	\N	2025-08-22 01:35:45.805	2025-08-22 01:35:45.805
1867	257	391	/var/uploads/2-1755826555810.png	\N	2025-08-22 01:35:55.938	2025-08-22 01:35:55.938
1868	256	374	/var/uploads/10-1755826948149.png	\N	2025-08-22 01:42:28.331	2025-08-22 01:42:28.331
1869	256	372	/var/uploads/4-1755826957893.png	\N	2025-08-22 01:42:38.063	2025-08-22 01:42:38.063
1870	256	370	/var/uploads/2-1755826967232.png	\N	2025-08-22 01:42:47.387	2025-08-22 01:42:47.387
1871	256	371	/var/uploads/11-1755826977177.png	\N	2025-08-22 01:42:57.335	2025-08-22 01:42:57.335
1872	256	373	/var/uploads/12-1755827714214.png	\N	2025-08-22 01:55:14.348	2025-08-22 01:55:14.348
1873	256	379	/var/uploads/6-1755827724361.png	\N	2025-08-22 01:55:24.532	2025-08-22 01:55:24.532
1874	256	377	/var/uploads/8-1755827736694.png	\N	2025-08-22 01:55:36.813	2025-08-22 01:55:36.813
1875	256	375	/var/uploads/5-1755827746955.png	\N	2025-08-22 01:55:47.122	2025-08-22 01:55:47.122
1876	256	376	/var/uploads/9-1755827756668.png	\N	2025-08-22 01:55:56.828	2025-08-22 01:55:56.828
1877	256	378	/var/uploads/3-1755827767496.png	\N	2025-08-22 01:56:07.631	2025-08-22 01:56:07.631
1878	256	380	/var/uploads/7-1755827784180.png	\N	2025-08-22 01:56:24.348	2025-08-22 01:56:24.348
1879	253	344	/var/uploads/3-1755831017557.png	\N	2025-08-22 02:50:17.654	2025-08-22 02:50:17.654
1880	253	340	/var/uploads/7-1755831027400.png	\N	2025-08-22 02:50:27.526	2025-08-22 02:50:27.526
1881	253	338	/var/uploads/11-1755831036182.png	\N	2025-08-22 02:50:36.302	2025-08-22 02:50:36.302
1882	253	337	/var/uploads/5-1755831046241.png	\N	2025-08-22 02:50:46.361	2025-08-22 02:50:46.361
1883	253	339	/var/uploads/4-1755831055924.png	\N	2025-08-22 02:50:56.039	2025-08-22 02:50:56.039
1884	253	341	/var/uploads/10-1755831072103.png	\N	2025-08-22 02:51:12.231	2025-08-22 02:51:12.231
1885	253	343	/var/uploads/6-1755831081753.png	\N	2025-08-22 02:51:21.881	2025-08-22 02:51:21.881
1886	253	342	/var/uploads/9-1755831095897.png	\N	2025-08-22 02:51:36.029	2025-08-22 02:51:36.029
1887	253	347	/var/uploads/2-1755831106230.png	\N	2025-08-22 02:51:46.351	2025-08-22 02:51:46.351
1888	253	346	/var/uploads/12-1755831115980.png	\N	2025-08-22 02:51:56.103	2025-08-22 02:51:56.103
1889	253	345	/var/uploads/8-1755831131881.png	\N	2025-08-22 02:52:12.005	2025-08-22 02:52:12.005
1890	254	351	/var/uploads/2-1755831223442.png	\N	2025-08-22 02:53:43.565	2025-08-22 02:53:43.565
1891	254	348	/var/uploads/10-1755831233125.png	\N	2025-08-22 02:53:53.243	2025-08-22 02:53:53.243
1892	254	356	/var/uploads/3-1755831245639.png	\N	2025-08-22 02:54:05.757	2025-08-22 02:54:05.757
1893	254	355	/var/uploads/7-1755831255147.png	\N	2025-08-22 02:54:15.27	2025-08-22 02:54:15.27
1894	254	354	/var/uploads/8-1755831265148.png	\N	2025-08-22 02:54:25.276	2025-08-22 02:54:25.276
1895	254	353	/var/uploads/4-1755831275795.png	\N	2025-08-22 02:54:35.913	2025-08-22 02:54:35.913
1896	254	352	/var/uploads/5-1755831285761.png	\N	2025-08-22 02:54:45.883	2025-08-22 02:54:45.883
1897	254	350	/var/uploads/9-1755831294789.png	\N	2025-08-22 02:54:54.905	2025-08-22 02:54:54.905
1898	254	349	/var/uploads/11-1755831306328.png	\N	2025-08-22 02:55:06.456	2025-08-22 02:55:06.456
1899	254	358	/var/uploads/12-1755831315389.png	\N	2025-08-22 02:55:15.512	2025-08-22 02:55:15.512
1900	254	357	/var/uploads/6-1755831324549.png	\N	2025-08-22 02:55:24.653	2025-08-22 02:55:24.653
1901	255	365	/var/uploads/10-1755832236078.png	\N	2025-08-22 03:10:36.392	2025-08-22 03:10:36.392
1902	255	361	/var/uploads/3-1755832247507.png	\N	2025-08-22 03:10:48.268	2025-08-22 03:10:48.268
1903	255	359	/var/uploads/12-1755832258491.png	\N	2025-08-22 03:10:58.684	2025-08-22 03:10:58.684
1904	255	360	/var/uploads/11-1755832277943.png	\N	2025-08-22 03:11:18.423	2025-08-22 03:11:18.423
1905	255	368	/var/uploads/4-1755832312143.png	\N	2025-08-22 03:11:52.766	2025-08-22 03:11:52.766
1906	255	367	/var/uploads/5-1755832322611.png	\N	2025-08-22 03:12:02.844	2025-08-22 03:12:02.844
1907	255	366	/var/uploads/2-1755832334431.png	\N	2025-08-22 03:12:14.94	2025-08-22 03:12:14.94
1908	255	364	/var/uploads/8-1755832345360.png	\N	2025-08-22 03:12:25.612	2025-08-22 03:12:25.612
1909	255	362	/var/uploads/7-1755832355138.png	\N	2025-08-22 03:12:35.411	2025-08-22 03:12:35.411
1910	255	363	/var/uploads/6-1755832375190.png	\N	2025-08-22 03:12:55.573	2025-08-22 03:12:55.573
1911	255	369	/var/uploads/9-1755832385597.png	\N	2025-08-22 03:13:06.821	2025-08-22 03:13:06.821
1912	130	156	/var/uploads/14-1756780636221.png	\N	2025-09-02 02:37:16.394	2025-09-02 02:37:16.394
1913	133	159	/var/uploads/16-1756780675300.png	\N	2025-09-02 02:37:55.462	2025-09-02 02:37:55.462
1914	640	1461	/var/uploads/12-1756783261719.png	\N	2025-09-02 03:21:02.111	2025-09-02 03:21:02.111
1915	642	1464	/var/uploads/10-1756783306751.png	\N	2025-09-02 03:21:47.735	2025-09-02 03:21:47.735
1916	642	1465	/var/uploads/9-1756783316897.png	\N	2025-09-02 03:21:57.704	2025-09-02 03:21:57.704
1917	641	1462	/var/uploads/10-1756783353777.png	\N	2025-09-02 03:22:34.241	2025-09-02 03:22:34.241
1918	641	1463	/var/uploads/9-1756783363847.png	\N	2025-09-02 03:22:44.299	2025-09-02 03:22:44.299
1919	645	1468	/var/uploads/6-1756783411107.png	\N	2025-09-02 03:23:31.992	2025-09-02 03:23:31.992
1920	644	1467	/var/uploads/4-1756783468894.png	\N	2025-09-02 03:24:29.104	2025-09-02 03:24:29.104
1921	643	1466	/var/uploads/2-1756783523830.png	\N	2025-09-02 03:25:24.055	2025-09-02 03:25:24.055
1922	646	1469	/var/uploads/new-pro-6-45457-1760941897824.png	\N	2025-10-20 06:31:37.956	2025-10-20 06:31:37.956
1923	647	1470	/var/uploads/11-1761972049319.png	\N	2025-11-01 04:40:49.496	2025-11-01 04:40:49.496
1924	648	1471	/var/uploads/12-1761972073585.png	\N	2025-11-01 04:41:13.758	2025-11-01 04:41:13.758
1925	649	1472	/var/uploads/10-1761972094041.png	\N	2025-11-01 04:41:34.218	2025-11-01 04:41:34.218
1926	628	1441	/var/uploads/3-1762311332590.png	\N	2025-11-05 02:55:32.742	2025-11-05 02:55:32.742
1927	628	1442	/var/uploads/1-1762311347413.png	\N	2025-11-05 02:55:47.545	2025-11-05 02:55:47.545
1928	628	1443	/var/uploads/2-1762311364184.png	\N	2025-11-05 02:56:04.308	2025-11-05 02:56:04.308
1929	627	1438	/var/uploads/6-1762311407915.png	\N	2025-11-05 02:56:48.047	2025-11-05 02:56:48.047
1930	627	1439	/var/uploads/4-1762311418049.png	\N	2025-11-05 02:56:58.172	2025-11-05 02:56:58.172
1931	627	1440	/var/uploads/5-1762311429652.png	\N	2025-11-05 02:57:09.801	2025-11-05 02:57:09.801
1932	650	1475	/var/uploads/3-1762739477834.png	\N	2025-11-10 01:51:17.999	2025-11-10 01:51:17.999
1933	650	1474	/var/uploads/2-1762739490209.png	\N	2025-11-10 01:51:30.38	2025-11-10 01:51:30.38
1934	650	1473	/var/uploads/1-1762739499499.png	\N	2025-11-10 01:51:39.688	2025-11-10 01:51:39.688
1935	651	1476	/var/uploads/70-1762739520693.png	\N	2025-11-10 01:52:00.898	2025-11-10 01:52:00.898
1936	651	1477	/var/uploads/69-1762739533454.png	\N	2025-11-10 01:52:13.636	2025-11-10 01:52:13.636
1937	652	1478	/var/uploads/12-1763787702516.png	\N	2025-11-22 05:01:42.665	2025-11-22 05:01:42.665
1938	652	1479	/var/uploads/13-1763787767354.png	\N	2025-11-22 05:02:47.518	2025-11-22 05:02:47.518
1939	652	1480	/var/uploads/14-1763787773504.png	\N	2025-11-22 05:02:53.542	2025-11-22 05:02:53.542
1940	654	1484	/var/uploads/12-1763787811285.png	\N	2025-11-22 05:03:31.469	2025-11-22 05:03:31.469
1941	654	1485	/var/uploads/13-1763787820933.png	\N	2025-11-22 05:03:41.105	2025-11-22 05:03:41.105
1942	654	1486	/var/uploads/14-1763787830821.png	\N	2025-11-22 05:03:50.981	2025-11-22 05:03:50.981
1943	653	1481	/var/uploads/17-1763791636358.png	\N	2025-11-22 06:07:16.527	2025-11-22 06:07:16.527
1944	653	1482	/var/uploads/16-1763791657103.png	\N	2025-11-22 06:07:37.416	2025-11-22 06:07:37.416
1945	653	1483	/var/uploads/15-1763791675325.png	\N	2025-11-22 06:07:55.497	2025-11-22 06:07:55.497
1946	655	1487	/var/uploads/SY-A2232-1766021478354.png	\N	2025-12-18 01:31:18.364	2025-12-18 01:31:18.364
1947	656	1488	/var/uploads/2-1766973057996.png	\N	2025-12-29 01:50:58.004	2025-12-29 01:50:58.004
1948	656	1489	/var/uploads/3-1766973068719.png	\N	2025-12-29 01:51:08.725	2025-12-29 01:51:08.725
1949	656	1490	/var/uploads/4-1766973079585.png	\N	2025-12-29 01:51:19.592	2025-12-29 01:51:19.592
1950	656	1491	/var/uploads/5-1766973092083.png	\N	2025-12-29 01:51:32.089	2025-12-29 01:51:32.089
1951	656	1492	/var/uploads/6-1766973102231.png	\N	2025-12-29 01:51:42.236	2025-12-29 01:51:42.236
\.


--
-- Data for Name: Products_Size; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Products_Size" (id, "detailId", "sizeId", price, "salePrice", bust, hip, length, "unitId", qty_in_stock, "SKU", "createdAt", "updatedAt", "availabilityId", shoulder, sleeve_length) FROM stdin;
54	347	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:33:35.438	2025-03-12 06:21:06.898	1	\N	\N
52	347	9	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:33:35.438	2025-03-12 06:21:06.898	1	\N	\N
50	346	4	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:33:35.438	2025-03-12 06:21:06.898	1	\N	\N
46	346	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:33:35.438	2025-03-12 06:21:06.898	1	\N	\N
42	345	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:33:35.438	2025-03-12 06:21:06.898	1	\N	\N
38	345	9	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:33:35.438	2025-03-12 06:21:06.898	1	\N	\N
36	344	4	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:31:56.787	2025-03-12 06:21:06.898	1	\N	\N
35	344	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:31:56.787	2025-03-12 06:21:06.898	1	\N	\N
37	345	10	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:33:35.438	2025-03-12 06:21:06.898	1	\N	\N
40	345	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:33:35.438	2025-03-12 06:21:06.898	1	\N	\N
39	345	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:33:35.438	2025-03-12 06:21:06.898	1	\N	\N
41	345	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:33:35.438	2025-03-12 06:21:06.898	1	\N	\N
44	346	10	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:33:35.438	2025-03-12 06:21:06.898	1	\N	\N
43	345	4	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:33:35.438	2025-03-12 06:21:06.898	1	\N	\N
45	346	9	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:33:35.438	2025-03-12 06:21:06.898	1	\N	\N
47	346	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:33:35.438	2025-03-12 06:21:06.898	1	\N	\N
49	346	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:33:35.438	2025-03-12 06:21:06.898	1	\N	\N
48	346	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:33:35.438	2025-03-12 06:21:06.898	1	\N	\N
51	347	10	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:33:35.438	2025-03-12 06:21:06.898	1	\N	\N
53	347	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:33:35.438	2025-03-12 06:21:06.898	1	\N	\N
22	342	4	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:31:56.787	2025-03-12 06:21:06.898	1	\N	\N
19	342	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:31:56.787	2025-03-12 06:21:06.898	1	\N	\N
9	10	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-13 07:56:46.76	2025-03-12 06:21:06.898	1	\N	\N
7	9	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-13 07:56:46.76	2025-03-12 06:21:06.898	1	\N	\N
8	9	4	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-13 07:56:46.76	2025-03-12 06:21:06.898	1	\N	\N
17	342	9	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:31:56.787	2025-03-12 06:21:06.898	1	\N	\N
16	342	10	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:31:56.787	2025-03-12 06:21:06.898	1	\N	\N
11	10	4	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-13 07:56:46.76	2025-03-12 06:21:06.898	1	\N	\N
10	10	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-13 07:56:46.76	2025-03-12 06:21:06.898	1	\N	\N
18	342	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:31:56.787	2025-03-12 06:21:06.898	1	\N	\N
21	342	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:31:56.787	2025-03-12 06:21:06.898	1	\N	\N
20	342	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:31:56.787	2025-03-12 06:21:06.898	1	\N	\N
31	344	9	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:31:56.787	2025-03-12 06:21:06.898	1	\N	\N
30	344	10	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:31:56.787	2025-03-12 06:21:06.898	1	\N	\N
29	343	4	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:31:56.787	2025-03-12 06:21:06.898	1	\N	\N
28	343	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:31:56.787	2025-03-12 06:21:06.898	1	\N	\N
26	343	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:31:56.787	2025-03-12 06:21:06.898	1	\N	\N
25	343	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:31:56.787	2025-03-12 06:21:06.898	1	\N	\N
24	343	9	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:31:56.787	2025-03-12 06:21:06.898	1	\N	\N
23	343	10	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:31:56.787	2025-03-12 06:21:06.898	1	\N	\N
27	343	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:31:56.787	2025-03-12 06:21:06.898	1	\N	\N
34	344	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:31:56.787	2025-03-12 06:21:06.898	1	\N	\N
33	344	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:31:56.787	2025-03-12 06:21:06.898	1	\N	\N
32	344	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:31:56.787	2025-03-12 06:21:06.898	1	\N	\N
6	9	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-13 07:56:46.76	2025-03-19 08:41:46.141	1	\N	\N
55	347	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:33:35.438	2025-03-12 06:19:18.585	1	\N	\N
56	347	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:33:35.438	2025-03-12 06:19:18.585	1	\N	\N
60	348	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:52:28.925	2025-03-12 06:19:18.585	1	\N	\N
58	348	10	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:52:28.925	2025-03-12 06:19:18.585	1	\N	\N
59	348	9	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:52:28.925	2025-03-12 06:19:18.585	1	\N	\N
57	347	4	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:33:35.438	2025-03-12 06:19:18.585	1	\N	\N
61	348	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:52:28.925	2025-03-12 06:19:18.585	1	\N	\N
65	349	10	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:52:28.925	2025-03-12 06:19:18.585	1	\N	\N
63	348	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:52:28.925	2025-03-12 06:19:18.585	1	\N	\N
64	348	4	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:52:28.925	2025-03-12 06:19:18.585	1	\N	\N
62	348	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:52:28.925	2025-03-12 06:19:18.585	1	\N	\N
67	349	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:52:28.925	2025-03-12 06:19:18.585	1	\N	\N
70	349	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:52:28.925	2025-03-12 06:19:18.585	1	\N	\N
69	349	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:52:28.925	2025-03-12 06:19:18.585	1	\N	\N
68	349	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:52:28.925	2025-03-12 06:19:18.585	1	\N	\N
66	349	9	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:52:28.925	2025-03-12 06:19:18.585	1	\N	\N
73	350	9	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:52:28.925	2025-03-12 06:19:18.585	1	\N	\N
72	350	10	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:52:28.925	2025-03-12 06:19:18.585	1	\N	\N
71	349	4	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:52:28.925	2025-03-12 06:19:18.585	1	\N	\N
75	350	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:52:28.925	2025-03-12 06:19:18.585	1	\N	\N
74	350	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:52:28.925	2025-03-12 06:19:18.585	1	\N	\N
77	350	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:52:28.925	2025-03-12 06:19:18.585	1	\N	\N
80	351	9	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:52:28.925	2025-03-12 06:19:18.585	1	\N	\N
79	351	10	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:52:28.925	2025-03-12 06:19:18.585	1	\N	\N
78	350	4	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:52:28.925	2025-03-12 06:19:18.585	1	\N	\N
76	350	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:52:28.925	2025-03-12 06:19:18.585	1	\N	\N
98	353	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:54:01.04	2025-03-12 06:19:18.585	1	\N	\N
97	353	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:54:01.04	2025-03-12 06:19:18.585	1	\N	\N
95	353	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:54:01.04	2025-03-12 06:19:18.585	1	\N	\N
96	353	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:54:01.04	2025-03-12 06:19:18.585	1	\N	\N
94	353	9	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:54:01.04	2025-03-12 06:19:18.585	1	\N	\N
93	353	10	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:54:01.04	2025-03-12 06:19:18.585	1	\N	\N
92	352	4	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:54:01.04	2025-03-12 06:19:18.585	1	\N	\N
90	352	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:54:01.04	2025-03-12 06:19:18.585	1	\N	\N
91	352	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:54:01.04	2025-03-12 06:19:18.585	1	\N	\N
89	352	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:54:01.04	2025-03-12 06:19:18.585	1	\N	\N
88	352	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:54:01.04	2025-03-12 06:19:18.585	1	\N	\N
87	352	9	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:54:01.04	2025-03-12 06:19:18.585	1	\N	\N
86	352	10	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:54:01.04	2025-03-12 06:19:18.585	1	\N	\N
85	351	4	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:52:28.925	2025-03-12 06:19:18.585	1	\N	\N
84	351	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:52:28.925	2025-03-12 06:19:18.585	1	\N	\N
83	351	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:52:28.925	2025-03-12 06:19:18.585	1	\N	\N
82	351	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:52:28.925	2025-03-12 06:19:18.585	1	\N	\N
81	351	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:52:28.925	2025-03-12 06:19:18.585	1	\N	\N
119	356	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:31:12.034	2025-03-12 06:19:18.585	1	\N	\N
118	356	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:31:12.034	2025-03-12 06:19:18.585	1	\N	\N
116	356	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:31:12.034	2025-03-12 06:19:18.585	1	\N	\N
117	356	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:31:12.034	2025-03-12 06:19:18.585	1	\N	\N
115	356	9	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:31:12.034	2025-03-12 06:19:18.585	1	\N	\N
113	355	4	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:31:12.034	2025-03-12 06:19:18.585	1	\N	\N
114	356	10	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:31:12.034	2025-03-12 06:19:18.585	1	\N	\N
112	355	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:31:12.034	2025-03-12 06:19:18.585	1	\N	\N
110	355	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:31:12.034	2025-03-12 06:19:18.585	1	\N	\N
111	355	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:31:12.034	2025-03-12 06:19:18.585	1	\N	\N
108	355	9	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:31:12.034	2025-03-12 06:19:18.585	1	\N	\N
109	355	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:31:12.034	2025-03-12 06:19:18.585	1	\N	\N
107	355	10	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:31:12.034	2025-03-12 06:19:18.585	1	\N	\N
106	354	4	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:54:01.04	2025-03-12 06:19:18.585	1	\N	\N
105	354	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:54:01.04	2025-03-12 06:19:18.585	1	\N	\N
104	354	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:54:01.04	2025-03-12 06:19:18.585	1	\N	\N
103	354	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:54:01.04	2025-03-12 06:19:18.585	1	\N	\N
102	354	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:54:01.04	2025-03-12 06:19:18.585	1	\N	\N
101	354	9	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:54:01.04	2025-03-12 06:19:18.585	1	\N	\N
100	354	10	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:54:01.04	2025-03-12 06:19:18.585	1	\N	\N
99	353	4	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 06:54:01.04	2025-03-12 06:19:18.585	1	\N	\N
149	361	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
148	360	11	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
147	360	5	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
145	360	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
146	360	4	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
143	360	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
141	359	11	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
142	360	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
144	360	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
140	359	5	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
138	359	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
139	359	4	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
137	359	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
135	359	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
136	359	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
134	358	11	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
133	358	5	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
132	358	4	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
131	358	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
130	358	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
129	358	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
128	358	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
127	357	4	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:31:12.034	2025-03-12 06:19:18.585	1	\N	\N
126	357	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:31:12.034	2025-03-12 06:19:18.585	1	\N	\N
125	357	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:31:12.034	2025-03-12 06:19:18.585	1	\N	\N
124	357	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:31:12.034	2025-03-12 06:19:18.585	1	\N	\N
123	357	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:31:12.034	2025-03-12 06:19:18.585	1	\N	\N
121	357	10	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:31:12.034	2025-03-12 06:19:18.585	1	\N	\N
120	356	4	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:31:12.034	2025-03-12 06:19:18.585	1	\N	\N
122	357	9	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:31:12.034	2025-03-12 06:19:18.585	1	\N	\N
162	362	11	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
161	362	5	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
160	362	4	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
159	362	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
158	362	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
156	362	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
157	362	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
155	361	11	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
154	361	5	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
153	361	4	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
152	361	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
151	361	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
150	361	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
205	549	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 02:14:57.048	2025-03-12 06:19:18.585	1	\N	\N
204	549	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 02:14:57.048	2025-03-12 06:19:18.585	1	\N	\N
203	547	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 02:06:20.945	2025-03-12 06:19:18.585	1	\N	\N
202	547	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 02:06:20.945	2025-03-12 06:19:18.585	1	\N	\N
201	547	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 02:06:20.945	2025-03-12 06:19:18.585	1	\N	\N
200	547	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 02:06:20.945	2025-03-12 06:19:18.585	1	\N	\N
198	545	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 02:06:20.945	2025-03-12 06:19:18.585	1	\N	\N
199	545	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 02:06:20.945	2025-03-12 06:19:18.585	1	\N	\N
197	543	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 01:54:19.96	2025-03-12 06:19:18.585	1	\N	\N
196	543	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 01:54:19.96	2025-03-12 06:19:18.585	1	\N	\N
195	543	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 01:54:19.96	2025-03-12 06:19:18.585	1	\N	\N
194	540	4	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 01:52:11.026	2025-03-12 06:19:18.585	1	\N	\N
193	540	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 01:52:11.026	2025-03-12 06:19:18.585	1	\N	\N
192	540	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 01:52:11.026	2025-03-12 06:19:18.585	1	\N	\N
191	540	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 01:52:11.026	2025-03-12 06:19:18.585	1	\N	\N
190	540	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 01:52:11.026	2025-03-12 06:19:18.585	1	\N	\N
189	539	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 01:52:11.026	2025-03-12 06:19:18.585	1	\N	\N
188	539	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 01:52:11.026	2025-03-12 06:19:18.585	1	\N	\N
187	539	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 01:52:11.026	2025-03-12 06:19:18.585	1	\N	\N
186	539	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 01:52:11.026	2025-03-12 06:19:18.585	1	\N	\N
185	538	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 01:52:11.026	2025-03-12 06:19:18.585	1	\N	\N
184	537	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 01:40:54.133	2025-03-12 06:19:18.585	1	\N	\N
180	535	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 01:40:54.133	2025-03-12 06:19:18.585	1	\N	\N
182	536	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 01:40:54.133	2025-03-12 06:19:18.585	1	\N	\N
181	536	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 01:40:54.133	2025-03-12 06:19:18.585	1	\N	\N
183	537	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 01:40:54.133	2025-03-12 06:19:18.585	1	\N	\N
179	535	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 01:40:54.133	2025-03-12 06:19:18.585	1	\N	\N
178	532	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 01:40:54.133	2025-03-12 06:19:18.585	1	\N	\N
177	532	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 01:40:54.133	2025-03-12 06:19:18.585	1	\N	\N
176	531	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 01:40:54.133	2025-03-12 06:19:18.585	1	\N	\N
174	530	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 01:40:54.133	2025-03-12 06:19:18.585	1	\N	\N
173	530	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 01:40:54.133	2025-03-12 06:19:18.585	1	\N	\N
170	525	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 01:40:54.133	2025-03-12 06:19:18.585	1	\N	\N
172	529	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 01:40:54.133	2025-03-12 06:19:18.585	1	\N	\N
171	525	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 01:40:54.133	2025-03-12 06:19:18.585	1	\N	\N
175	531	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 01:40:54.133	2025-03-12 06:19:18.585	1	\N	\N
169	363	11	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
168	363	5	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
167	363	4	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
166	363	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
165	363	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
164	363	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
163	363	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-19 09:50:34.709	2025-03-12 06:19:18.585	1	\N	\N
229	575	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:28:49.403	2025-03-12 06:19:18.585	1	\N	\N
227	575	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:28:49.403	2025-03-12 06:19:18.585	1	\N	\N
226	575	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:28:49.403	2025-03-12 06:19:18.585	1	\N	\N
225	572	17	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:03:40.487	2025-03-12 06:19:18.585	1	\N	\N
224	572	16	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:03:40.487	2025-03-12 06:19:18.585	1	\N	\N
223	572	15	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:03:40.487	2025-03-12 06:19:18.585	1	\N	\N
221	572	13	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:03:40.487	2025-03-12 06:19:18.585	1	\N	\N
219	571	17	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:03:40.487	2025-03-12 06:19:18.585	1	\N	\N
218	571	16	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:03:40.487	2025-03-12 06:19:18.585	1	\N	\N
222	572	14	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:03:40.487	2025-03-12 06:19:18.585	1	\N	\N
220	572	12	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:03:40.487	2025-03-12 06:19:18.585	1	\N	\N
228	575	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:28:49.403	2025-03-12 06:19:18.585	1	\N	\N
217	571	15	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:03:40.487	2025-03-12 06:19:18.585	1	\N	\N
216	571	14	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:03:40.487	2025-03-12 06:19:18.585	1	\N	\N
215	571	13	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:03:40.487	2025-03-12 06:19:18.585	1	\N	\N
214	571	12	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:03:40.487	2025-03-12 06:19:18.585	1	\N	\N
213	557	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 02:42:14.08	2025-03-12 06:19:18.585	1	\N	\N
212	557	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 02:42:14.08	2025-03-12 06:19:18.585	1	\N	\N
211	557	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 02:42:14.08	2025-03-12 06:19:18.585	1	\N	\N
210	557	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 02:42:14.08	2025-03-12 06:19:18.585	1	\N	\N
209	552	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 02:37:17.972	2025-03-12 06:19:18.585	1	\N	\N
207	550	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 02:14:57.048	2025-03-12 06:19:18.585	1	\N	\N
206	550	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 02:14:57.048	2025-03-12 06:19:18.585	1	\N	\N
208	552	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 02:37:17.972	2025-03-12 06:19:18.585	1	\N	\N
251	581	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:48:07.128	2025-03-12 06:19:18.585	1	\N	\N
249	580	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:35:47.672	2025-03-12 06:19:18.585	1	\N	\N
246	580	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:35:47.672	2025-03-12 06:19:18.585	1	\N	\N
243	579	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:35:47.672	2025-03-12 06:19:18.585	1	\N	\N
241	578	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:28:49.403	2025-03-12 06:19:18.585	1	\N	\N
238	577	4	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:28:49.403	2025-03-12 06:19:18.585	1	\N	\N
235	577	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:28:49.403	2025-03-12 06:19:18.585	1	\N	\N
233	576	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:28:49.403	2025-03-12 06:19:18.585	1	\N	\N
232	576	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:28:49.403	2025-03-12 06:19:18.585	1	\N	\N
230	575	4	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:28:49.403	2025-03-12 06:19:18.585	1	\N	\N
231	576	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:28:49.403	2025-03-12 06:19:18.585	1	\N	\N
234	576	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:28:49.403	2025-03-12 06:19:18.585	1	\N	\N
236	577	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:28:49.403	2025-03-12 06:19:18.585	1	\N	\N
237	577	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:28:49.403	2025-03-12 06:19:18.585	1	\N	\N
240	578	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:28:49.403	2025-03-12 06:19:18.585	1	\N	\N
239	578	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:28:49.403	2025-03-12 06:19:18.585	1	\N	\N
245	579	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:35:47.672	2025-03-12 06:19:18.585	1	\N	\N
244	579	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:35:47.672	2025-03-12 06:19:18.585	1	\N	\N
242	578	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:28:49.403	2025-03-12 06:19:18.585	1	\N	\N
248	580	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:35:47.672	2025-03-12 06:19:18.585	1	\N	\N
247	580	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:35:47.672	2025-03-12 06:19:18.585	1	\N	\N
269	364	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-04 02:56:42.99	2025-03-12 06:19:18.585	1	\N	\N
267	364	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-04 02:56:42.99	2025-03-12 06:19:18.585	1	\N	\N
266	364	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-04 02:56:42.99	2025-03-12 06:19:18.585	1	\N	\N
263	340	30	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-01 04:09:54.75	2025-03-12 06:19:18.585	1	\N	\N
261	583	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 04:15:44.528	2025-03-12 06:19:18.585	1	\N	\N
259	583	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 04:15:44.528	2025-03-12 06:19:18.585	1	\N	\N
257	582	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:54:35.341	2025-03-12 06:19:18.585	1	\N	\N
255	582	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:54:35.341	2025-03-12 06:19:18.585	1	\N	\N
253	582	9	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:54:35.341	2025-03-12 06:19:18.585	1	\N	\N
250	581	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:48:07.128	2025-03-12 06:19:18.585	1	\N	\N
252	581	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:48:07.128	2025-03-12 06:19:18.585	1	\N	\N
254	582	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:54:35.341	2025-03-12 06:19:18.585	1	\N	\N
256	582	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 03:54:35.341	2025-03-12 06:19:18.585	1	\N	\N
258	583	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 04:15:44.528	2025-03-12 06:19:18.585	1	\N	\N
260	583	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-02-22 04:15:44.528	2025-03-12 06:19:18.585	1	\N	\N
264	341	29	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-01 04:09:54.75	2025-03-12 06:19:18.585	1	\N	\N
265	341	30	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-01 04:09:54.75	2025-03-12 06:19:18.585	1	\N	\N
262	340	29	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-01 04:09:54.75	2025-03-12 06:19:18.585	1	\N	\N
281	367	5	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-04 07:44:01.74	2025-03-12 06:19:18.585	1	\N	\N
278	366	5	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-04 02:56:42.99	2025-03-12 06:19:18.585	1	\N	\N
276	366	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-04 02:56:42.99	2025-03-12 06:19:18.585	1	\N	\N
274	366	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-04 02:56:42.99	2025-03-12 06:19:18.585	1	\N	\N
273	366	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-04 02:56:42.99	2025-03-12 06:19:18.585	1	\N	\N
272	364	11	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-04 02:56:42.99	2025-03-12 06:19:18.585	1	\N	\N
271	364	5	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-04 02:56:42.99	2025-03-12 06:19:18.585	1	\N	\N
270	364	4	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-04 02:56:42.99	2025-03-12 06:19:18.585	1	\N	\N
268	364	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-04 02:56:42.99	2025-03-12 06:19:18.585	1	\N	\N
275	366	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-04 02:56:42.99	2025-03-12 06:19:18.585	1	\N	\N
277	366	4	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-04 02:56:42.99	2025-03-12 06:19:18.585	1	\N	\N
279	366	11	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-04 02:56:42.99	2025-03-12 06:19:18.585	1	\N	\N
280	367	11	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-04 07:44:01.74	2025-03-12 06:19:18.585	1	\N	\N
319	593	10	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:23:58.638	2025-03-12 06:19:18.585	1	\N	\N
311	587	5	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-09 21:27:38.112	2025-03-12 06:19:18.585	1	\N	\N
309	587	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-09 21:27:38.112	2025-03-12 06:19:18.585	1	\N	\N
304	586	4	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-09 21:27:38.112	2025-03-12 06:19:18.585	1	\N	\N
300	586	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-09 21:27:38.112	2025-03-12 06:19:18.585	1	\N	\N
290	365	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-07 02:49:18.57	2025-03-12 06:19:18.585	1	\N	\N
287	365	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-07 02:49:18.57	2025-03-12 06:19:18.585	1	\N	\N
285	367	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-04 07:44:01.74	2025-03-12 06:19:18.585	1	\N	\N
283	367	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-04 07:44:01.74	2025-03-12 06:19:18.585	1	\N	\N
282	367	4	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-04 07:44:01.74	2025-03-12 06:19:18.585	1	\N	\N
284	367	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-04 07:44:01.74	2025-03-12 06:19:18.585	1	\N	\N
286	367	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-04 07:44:01.74	2025-03-12 06:19:18.585	1	\N	\N
289	365	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-07 02:49:18.57	2025-03-12 06:19:18.585	1	\N	\N
288	365	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-07 02:49:18.57	2025-03-12 06:19:18.585	1	\N	\N
307	587	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-09 21:27:38.112	2025-03-12 06:19:18.585	1	\N	\N
306	587	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-09 21:27:38.112	2025-03-12 06:19:18.585	1	\N	\N
303	586	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-09 21:27:38.112	2025-03-12 06:19:18.585	1	\N	\N
302	586	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-09 21:27:38.112	2025-03-12 06:19:18.585	1	\N	\N
301	586	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-09 21:27:38.112	2025-03-12 06:19:18.585	1	\N	\N
293	365	11	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-07 02:49:18.57	2025-03-12 06:19:18.585	1	\N	\N
291	365	4	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-07 02:49:18.57	2025-03-12 06:19:18.585	1	\N	\N
292	365	5	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-07 02:49:18.57	2025-03-12 06:19:18.585	1	\N	\N
305	586	5	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-09 21:27:38.112	2025-03-12 06:19:18.585	1	\N	\N
308	587	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-09 21:27:38.112	2025-03-12 06:19:18.585	1	\N	\N
310	587	4	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-09 21:27:38.112	2025-03-12 06:19:18.585	1	\N	\N
349	597	20	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:25:06.686	2025-03-12 06:19:18.585	1	\N	\N
369	601	20	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:28:17.596	2025-03-12 06:19:18.585	1	\N	\N
390	599	24	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 03:41:24.006	2025-03-12 06:19:18.585	1	\N	\N
405	601	27	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 03:43:27	2025-03-12 06:19:18.585	1	\N	\N
409	602	25	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 03:43:57.732	2025-03-12 06:19:18.585	1	\N	\N
414	585	4	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 08:36:56.512	2025-03-12 06:19:18.585	1	\N	\N
413	585	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 08:36:56.512	2025-03-12 06:19:18.585	1	\N	\N
412	602	28	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 03:43:57.732	2025-03-12 06:19:18.585	1	\N	\N
411	602	27	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 03:43:57.732	2025-03-12 06:19:18.585	1	\N	\N
410	602	26	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 03:43:57.732	2025-03-12 06:19:18.585	1	\N	\N
408	602	24	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 03:43:57.732	2025-03-12 06:19:18.585	1	\N	\N
407	602	23	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 03:43:57.732	2025-03-12 06:19:18.585	1	\N	\N
406	601	28	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 03:43:27	2025-03-12 06:19:18.585	1	\N	\N
404	601	26	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 03:43:27	2025-03-12 06:19:18.585	1	\N	\N
403	601	25	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 03:43:27	2025-03-12 06:19:18.585	1	\N	\N
402	601	24	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 03:43:27	2025-03-12 06:19:18.585	1	\N	\N
401	601	23	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 03:43:27	2025-03-12 06:19:18.585	1	\N	\N
400	600	28	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 03:42:58.166	2025-03-12 06:19:18.585	1	\N	\N
399	600	27	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 03:42:58.166	2025-03-12 06:19:18.585	1	\N	\N
398	600	26	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 03:42:58.166	2025-03-12 06:19:18.585	1	\N	\N
397	600	25	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 03:42:58.166	2025-03-12 06:19:18.585	1	\N	\N
395	600	23	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 03:42:58.166	2025-03-12 06:19:18.585	1	\N	\N
396	600	24	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 03:42:58.166	2025-03-12 06:19:18.585	1	\N	\N
394	599	28	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 03:41:24.006	2025-03-12 06:19:18.585	1	\N	\N
392	599	26	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 03:41:24.006	2025-03-12 06:19:18.585	1	\N	\N
393	599	27	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 03:41:24.006	2025-03-12 06:19:18.585	1	\N	\N
391	599	25	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 03:41:24.006	2025-03-12 06:19:18.585	1	\N	\N
370	601	21	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:28:17.596	2025-03-12 06:19:18.585	1	\N	\N
374	602	20	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:28:17.596	2025-03-12 06:19:18.585	1	\N	\N
378	597	24	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 03:39:31.522	2025-03-12 06:19:18.585	1	\N	\N
373	602	19	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:28:17.596	2025-03-12 06:19:18.585	1	\N	\N
372	602	18	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:28:17.596	2025-03-12 06:19:18.585	1	\N	\N
371	601	22	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:28:17.596	2025-03-12 06:19:18.585	1	\N	\N
376	602	22	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:28:17.596	2025-03-12 06:19:18.585	1	\N	\N
375	602	21	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:28:17.596	2025-03-12 06:19:18.585	1	\N	\N
377	597	23	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 03:39:31.522	2025-03-12 06:19:18.585	1	\N	\N
381	597	27	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 03:39:31.522	2025-03-12 06:19:18.585	1	\N	\N
380	597	26	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 03:39:31.522	2025-03-12 06:19:18.585	1	\N	\N
379	597	25	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 03:39:31.522	2025-03-12 06:19:18.585	1	\N	\N
388	598	28	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 03:40:43.525	2025-03-12 06:19:18.585	1	\N	\N
387	598	27	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 03:40:43.525	2025-03-12 06:19:18.585	1	\N	\N
386	598	26	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 03:40:43.525	2025-03-12 06:19:18.585	1	\N	\N
385	598	25	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 03:40:43.525	2025-03-12 06:19:18.585	1	\N	\N
384	598	24	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 03:40:43.525	2025-03-12 06:19:18.585	1	\N	\N
383	598	23	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 03:40:43.525	2025-03-12 06:19:18.585	1	\N	\N
382	597	28	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 03:39:31.522	2025-03-12 06:19:18.585	1	\N	\N
389	599	23	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 03:41:24.006	2025-03-12 06:19:18.585	1	\N	\N
364	600	20	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:28:17.596	2025-03-12 06:19:18.585	1	\N	\N
366	600	22	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:28:17.596	2025-03-12 06:19:18.585	1	\N	\N
365	600	21	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:28:17.596	2025-03-12 06:19:18.585	1	\N	\N
367	601	18	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:28:17.596	2025-03-12 06:19:18.585	1	\N	\N
368	601	19	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:28:17.596	2025-03-12 06:19:18.585	1	\N	\N
363	600	19	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:28:17.596	2025-03-12 06:19:18.585	1	\N	\N
361	599	22	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:28:17.596	2025-03-12 06:19:18.585	1	\N	\N
362	600	18	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:28:17.596	2025-03-12 06:19:18.585	1	\N	\N
360	599	21	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:28:17.596	2025-03-12 06:19:18.585	1	\N	\N
358	599	19	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:28:17.596	2025-03-12 06:19:18.585	1	\N	\N
359	599	20	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:28:17.596	2025-03-12 06:19:18.585	1	\N	\N
357	599	18	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:28:17.596	2025-03-12 06:19:18.585	1	\N	\N
356	598	22	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:28:17.596	2025-03-12 06:19:18.585	1	\N	\N
355	598	21	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:28:17.596	2025-03-12 06:19:18.585	1	\N	\N
354	598	20	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:28:17.596	2025-03-12 06:19:18.585	1	\N	\N
353	598	19	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:28:17.596	2025-03-12 06:19:18.585	1	\N	\N
352	598	18	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:28:17.596	2025-03-12 06:19:18.585	1	\N	\N
351	597	22	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:25:06.686	2025-03-12 06:19:18.585	1	\N	\N
350	597	21	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:25:06.686	2025-03-12 06:19:18.585	1	\N	\N
342	596	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:23:58.638	2025-03-12 06:19:18.585	1	\N	\N
340	596	10	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:23:58.638	2025-03-12 06:19:18.585	1	\N	\N
337	595	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:23:58.638	2025-03-12 06:19:18.585	1	\N	\N
334	595	9	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:23:58.638	2025-03-12 06:19:18.585	1	\N	\N
332	594	4	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:23:58.638	2025-03-12 06:19:18.585	1	\N	\N
330	594	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:23:58.638	2025-03-12 06:19:18.585	1	\N	\N
348	597	19	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:25:06.686	2025-03-12 06:19:18.585	1	\N	\N
346	596	4	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:23:58.638	2025-03-12 06:19:18.585	1	\N	\N
347	597	18	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:25:06.686	2025-03-12 06:19:18.585	1	\N	\N
345	596	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:23:58.638	2025-03-12 06:19:18.585	1	\N	\N
344	596	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:23:58.638	2025-03-12 06:19:18.585	1	\N	\N
343	596	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:23:58.638	2025-03-12 06:19:18.585	1	\N	\N
341	596	9	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:23:58.638	2025-03-12 06:19:18.585	1	\N	\N
339	595	4	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:23:58.638	2025-03-12 06:19:18.585	1	\N	\N
338	595	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:23:58.638	2025-03-12 06:19:18.585	1	\N	\N
336	595	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:23:58.638	2025-03-12 06:19:18.585	1	\N	\N
335	595	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:23:58.638	2025-03-12 06:19:18.585	1	\N	\N
333	595	10	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:23:58.638	2025-03-12 06:19:18.585	1	\N	\N
331	594	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:23:58.638	2025-03-12 06:19:18.585	1	\N	\N
329	594	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:23:58.638	2025-03-12 06:19:18.585	1	\N	\N
328	594	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:23:58.638	2025-03-12 06:19:18.585	1	\N	\N
327	594	9	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:23:58.638	2025-03-12 06:19:18.585	1	\N	\N
326	594	10	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:23:58.638	2025-03-12 06:19:18.585	1	\N	\N
325	593	4	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:23:58.638	2025-03-12 06:19:18.585	1	\N	\N
324	593	3	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:23:58.638	2025-03-12 06:19:18.585	1	\N	\N
323	593	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:23:58.638	2025-03-12 06:19:18.585	1	\N	\N
322	593	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:23:58.638	2025-03-12 06:19:18.585	1	\N	\N
320	593	9	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:23:58.638	2025-03-12 06:19:18.585	1	\N	\N
321	593	8	\N	\N	\N	\N	\N	\N	\N	\N	2025-03-10 02:23:58.638	2025-03-12 06:19:18.585	1	\N	\N
1	8	1	\N	\N	115	\N	74	1	\N	\N	2025-02-13 07:56:46.76	2025-04-19 04:07:43.305	1	55	28.5
5	8	5	\N	\N	135	\N	78	1	\N	\N	2025-02-13 07:56:46.76	2025-04-19 04:07:43.305	1	61	30.5
4	8	4	\N	\N	130	\N	77	1	\N	\N	2025-02-13 07:56:46.76	2025-04-19 04:07:43.305	1	59.5	30
3	8	3	\N	\N	125	\N	76	1	\N	\N	2025-02-13 07:56:46.76	2025-04-19 04:07:43.305	1	58	29.5
2	8	2	\N	\N	120	\N	75	1	\N	\N	2025-02-13 07:56:46.76	2025-04-19 04:07:43.305	1	56.5	29
415	336	29	\N	\N	\N	\N	\N	\N	\N	\N	2025-05-10 08:10:28.162	2025-05-10 08:09:43.924	\N	\N	\N
416	336	30	\N	\N	\N	\N	\N	\N	\N	\N	2025-05-10 08:10:28.162	2025-05-10 08:09:44.068	\N	\N	\N
417	224	7	62	\N	\N	\N	\N	1	\N	\N	2025-05-14 09:52:17.854	2025-05-14 09:50:03.762	1	\N	\N
418	224	31	70	\N	\N	\N	\N	1	\N	\N	2025-05-14 09:52:17.854	2025-05-14 09:50:03.912	1	\N	\N
419	82	6	40	\N	\N	\N	\N	1	\N	\N	2025-05-15 04:51:12.341	2025-05-15 04:50:25.232	1	\N	\N
420	82	7	50	\N	\N	\N	\N	1	\N	\N	2025-05-15 04:51:12.341	2025-05-15 04:50:25.364	1	\N	\N
421	455	32	\N	\N	\N	\N	\N	\N	\N	\N	2025-05-17 06:27:54.102	2025-05-17 06:27:27.749	1	\N	\N
423	462	32	\N	\N	\N	\N	\N	\N	\N	\N	2025-05-17 06:38:21.965	2025-05-17 06:38:12.77	1	\N	\N
424	464	32	\N	\N	\N	\N	\N	\N	\N	\N	2025-05-17 06:41:18.041	2025-05-17 06:41:01.908	1	\N	\N
425	465	32	\N	\N	\N	\N	\N	\N	\N	\N	2025-05-17 06:44:42.226	2025-05-17 06:44:33.673	1	\N	\N
426	469	32	\N	\N	\N	\N	\N	\N	\N	\N	2025-05-17 06:51:45.755	2025-05-17 06:51:34.375	1	\N	\N
427	477	32	\N	\N	\N	\N	\N	\N	\N	\N	2025-05-17 06:54:17.397	2025-05-17 06:54:11.014	1	\N	\N
428	480	32	\N	\N	\N	\N	\N	\N	\N	\N	2025-05-17 06:59:28.558	2025-05-17 06:59:21.177	1	\N	\N
429	481	32	\N	\N	\N	\N	\N	\N	\N	\N	2025-05-17 07:02:57.33	2025-05-17 07:02:50.013	1	\N	\N
422	459	32	\N	\N	\N	\N	\N	\N	\N	\N	2025-05-17 06:30:36.028	2025-05-26 04:32:34.048	1	\N	\N
444	610	13	95	\N	\N	\N	\N	1	\N	\N	2025-05-19 06:04:08.228	2025-05-19 06:03:18.926	1	\N	\N
445	610	15	130	\N	\N	\N	\N	1	\N	\N	2025-05-19 06:04:08.228	2025-05-19 06:03:22.094	1	\N	\N
446	311	1	85	\N	\N	\N	\N	\N	\N	\N	2025-05-19 06:11:11.878	2025-05-19 06:10:14.804	1	\N	\N
447	311	2	90	\N	\N	\N	\N	\N	\N	\N	2025-05-19 06:11:11.878	2025-05-19 06:10:14.939	1	\N	\N
448	68	6	38	\N	\N	\N	\N	1	\N	\N	2025-05-19 06:18:47.106	2025-05-19 06:19:17.807	1	\N	\N
449	68	12	62	\N	\N	\N	\N	1	\N	\N	2025-05-19 06:18:47.106	2025-05-19 06:19:17.807	1	\N	\N
450	108	6	35	\N	\N	\N	\N	1	\N	\N	2025-05-19 06:23:14.834	2025-05-19 06:22:11.353	1	\N	\N
451	108	7	45	\N	\N	\N	\N	1	\N	\N	2025-05-19 06:23:14.834	2025-05-19 06:22:11.521	1	\N	\N
452	108	31	55	\N	\N	\N	\N	1	\N	\N	2025-05-19 06:23:14.834	2025-05-19 06:22:11.689	1	\N	\N
453	108	12	60	\N	\N	\N	\N	1	\N	\N	2025-05-19 06:23:14.834	2025-05-19 06:22:12.193	1	\N	\N
454	147	6	45	\N	\N	\N	\N	1	\N	\N	2025-05-19 06:26:38.033	2025-05-19 06:25:45.833	1	\N	\N
455	147	7	55	\N	\N	\N	\N	1	\N	\N	2025-05-19 06:26:38.033	2025-05-19 06:25:45.984	1	\N	\N
456	147	31	60	\N	\N	\N	\N	1	\N	\N	2025-05-19 06:26:38.033	2025-05-19 06:25:46.136	1	\N	\N
457	147	12	70	\N	\N	\N	\N	1	\N	\N	2025-05-19 06:26:38.033	2025-05-19 06:25:46.601	1	\N	\N
458	151	6	45	\N	\N	\N	\N	1	\N	\N	2025-05-19 06:29:09.318	2025-05-19 06:28:08.687	1	\N	\N
459	151	7	50	\N	\N	\N	\N	1	\N	\N	2025-05-19 06:29:09.318	2025-05-19 06:28:08.856	1	\N	\N
460	151	31	60	\N	\N	\N	\N	1	\N	\N	2025-05-19 06:29:09.318	2025-05-19 06:28:09.296	1	\N	\N
461	151	12	70	\N	\N	\N	\N	1	\N	\N	2025-05-19 06:29:09.318	2025-05-19 06:28:09.448	1	\N	\N
462	215	6	40	\N	\N	\N	\N	1	\N	\N	2025-05-19 06:39:55.347	2025-05-19 06:39:11.047	1	\N	\N
463	215	7	45	\N	\N	\N	\N	1	\N	\N	2025-05-19 06:39:55.347	2025-05-19 06:39:11.205	1	\N	\N
464	215	31	50	\N	\N	\N	\N	1	\N	\N	2025-05-19 06:39:55.347	2025-05-19 06:39:11.662	1	\N	\N
465	218	7	42	\N	\N	\N	\N	1	\N	\N	2025-05-19 06:41:31.475	2025-05-19 06:40:58.11	1	\N	\N
466	218	31	50	\N	\N	\N	\N	1	\N	\N	2025-05-19 06:41:31.475	2025-05-19 06:40:58.261	1	\N	\N
467	218	12	60	\N	\N	\N	\N	1	\N	\N	2025-05-19 06:41:31.475	2025-05-19 06:40:58.421	1	\N	\N
468	221	7	42	\N	\N	\N	\N	1	\N	\N	2025-05-19 06:43:22.644	2025-05-19 06:42:44.228	1	\N	\N
469	221	31	50	\N	\N	\N	\N	1	\N	\N	2025-05-19 06:43:22.644	2025-05-19 06:42:44.38	1	\N	\N
470	221	12	60	\N	\N	\N	\N	1	\N	\N	2025-05-19 06:43:22.644	2025-05-19 06:42:44.533	1	\N	\N
471	227	6	37	\N	\N	\N	\N	1	\N	\N	2025-05-19 06:44:46.16	2025-05-19 06:44:17.58	1	\N	\N
472	227	7	45	\N	\N	\N	\N	1	\N	\N	2025-05-19 06:44:46.16	2025-05-19 06:44:17.74	1	\N	\N
473	229	6	53	\N	\N	\N	\N	1	\N	\N	2025-05-19 06:46:29.762	2025-05-19 06:45:42.797	1	\N	\N
474	229	7	62	\N	\N	\N	\N	1	\N	\N	2025-05-19 06:46:29.762	2025-05-19 06:45:42.94	1	\N	\N
475	229	31	70	\N	\N	\N	\N	1	\N	\N	2025-05-19 06:46:29.762	2025-05-19 06:45:43.108	1	\N	\N
476	229	12	78	\N	\N	\N	\N	1	\N	\N	2025-05-19 06:46:29.762	2025-05-19 06:45:43.555	1	\N	\N
477	238	12	70	\N	\N	\N	\N	1	\N	\N	2025-05-19 06:48:08.926	2025-05-19 06:47:34.523	1	\N	\N
478	238	15	125	\N	\N	\N	\N	1	\N	\N	2025-05-19 06:48:08.926	2025-05-19 06:47:34.684	1	\N	\N
479	615	1	\N	\N	\N	26	38	2	\N	\N	2025-05-20 03:03:19.328	2025-05-20 03:00:19.723	1	\N	\N
480	615	2	\N	\N	\N	28	38	2	\N	\N	2025-05-20 03:03:19.328	2025-05-20 03:00:19.883	1	\N	\N
481	616	1	\N	\N	\N	26	16	2	\N	\N	2025-05-20 03:12:57.462	2025-05-20 03:12:12.208	1	\N	\N
482	616	2	\N	\N	\N	28	16	2	\N	\N	2025-05-20 03:12:57.462	2025-05-20 03:12:12.352	1	\N	\N
483	617	32	\N	\N	\N	\N	\N	\N	\N	\N	2025-05-20 03:20:34.934	2025-05-20 03:20:15.751	1	\N	\N
484	622	32	\N	\N	\N	\N	\N	\N	\N	\N	2025-05-26 04:32:34.048	2025-05-26 04:30:54.53	1	\N	\N
443	613	32	\N	\N	\N	\N	\N	2	\N	\N	2025-05-17 08:22:39.177	2025-05-26 04:32:34.048	1	\N	\N
485	447	32	\N	\N	\N	\N	\N	\N	\N	\N	2025-05-26 07:53:48.766	2025-05-26 07:53:23.578	1	\N	\N
486	448	32	\N	\N	\N	\N	\N	\N	\N	\N	2025-05-26 07:54:29.867	2025-05-26 07:54:22.45	1	\N	\N
487	450	32	\N	\N	\N	\N	\N	\N	\N	\N	2025-05-26 07:56:58.781	2025-05-26 07:56:27.738	1	\N	\N
488	449	32	\N	\N	\N	\N	\N	\N	\N	\N	2025-05-26 07:56:58.781	2025-05-26 07:56:28.553	1	\N	\N
489	452	32	\N	\N	\N	\N	\N	\N	\N	\N	2025-05-26 07:59:47.931	2025-05-26 07:59:41.826	1	\N	\N
490	454	32	\N	\N	\N	\N	\N	\N	\N	\N	2025-05-26 08:00:14.798	2025-05-26 08:00:08.24	1	\N	\N
491	453	32	\N	\N	\N	\N	\N	\N	\N	\N	2025-05-26 08:00:38.883	2025-05-26 08:00:33.624	1	\N	\N
492	451	32	\N	\N	\N	\N	\N	\N	\N	\N	2025-05-26 08:02:04.617	2025-05-26 08:01:58.311	1	\N	\N
494	456	32	\N	\N	\N	\N	\N	\N	\N	\N	2025-05-26 08:13:47.071	2025-05-26 08:12:10.966	1	\N	\N
495	458	32	\N	\N	\N	\N	\N	\N	\N	\N	2025-05-26 08:13:47.071	2025-05-26 08:12:11.118	1	\N	\N
496	457	32	\N	\N	\N	\N	\N	\N	\N	\N	2025-05-26 08:13:47.071	2025-05-26 08:12:11.51	1	\N	\N
498	460	32	\N	\N	\N	\N	\N	\N	\N	\N	2025-05-26 08:15:30.002	2025-05-26 08:14:12.012	1	\N	\N
499	461	32	\N	\N	\N	\N	\N	\N	\N	\N	2025-05-26 08:15:30.002	2025-05-26 08:14:12.157	1	\N	\N
501	468	32	\N	\N	\N	\N	\N	\N	\N	\N	2025-05-26 08:17:59.726	2025-05-26 08:16:16.732	1	\N	\N
503	470	32	\N	\N	\N	\N	\N	\N	\N	\N	2025-05-26 08:17:59.726	2025-05-26 08:16:17.493	1	\N	\N
504	471	32	\N	\N	\N	\N	\N	\N	\N	\N	2025-05-26 08:19:43.055	2025-05-26 08:18:18.34	1	\N	\N
505	472	32	\N	\N	\N	\N	\N	\N	\N	\N	2025-05-26 08:19:43.055	2025-05-26 08:18:18.507	1	\N	\N
506	473	32	\N	\N	\N	\N	\N	\N	\N	\N	2025-05-26 08:19:43.055	2025-05-26 08:18:18.652	1	\N	\N
507	474	32	\N	\N	\N	\N	\N	\N	\N	\N	2025-05-26 08:19:43.055	2025-05-26 08:18:18.795	1	\N	\N
508	475	32	\N	\N	\N	\N	\N	\N	\N	\N	2025-05-26 08:21:38.736	2025-05-26 08:20:07.42	1	\N	\N
509	476	32	\N	\N	\N	\N	\N	\N	\N	\N	2025-05-26 08:21:38.736	2025-05-26 08:20:07.883	1	\N	\N
511	478	32	\N	\N	\N	\N	\N	\N	\N	\N	2025-05-26 08:21:38.736	2025-05-26 08:20:08.788	1	\N	\N
514	623	33	74	180	\N	\N	\N	1	\N	\N	2025-05-27 07:08:41.102	2025-05-27 07:04:47.69	1	\N	\N
515	623	34	82	190	\N	\N	\N	1	\N	\N	2025-05-27 07:08:41.102	2025-05-27 07:04:48.315	1	\N	\N
516	623	15	125	390	\N	\N	\N	1	\N	\N	2025-05-27 07:08:41.102	2025-05-27 07:04:48.449	1	\N	\N
517	463	32	\N	\N	\N	\N	\N	\N	\N	\N	2025-05-28 03:30:50.793	2025-05-28 03:30:39.862	1	\N	\N
518	627	32	\N	\N	\N	\N	\N	\N	\N	\N	2025-06-20 06:32:16.229	2025-06-20 06:30:24.535	1	\N	\N
519	628	32	\N	\N	\N	\N	\N	\N	\N	\N	2025-06-20 06:32:16.229	2025-06-20 06:30:25.942	1	\N	\N
520	630	36	55	\N	\N	\N	\N	1	\N	\N	2025-06-28 02:04:07.099	2025-06-28 02:03:09.274	1	\N	\N
521	630	35	65	\N	\N	\N	\N	1	\N	\N	2025-06-28 02:04:07.099	2025-06-28 02:03:09.593	1	\N	\N
522	632	32	\N	\N	\N	\N	\N	\N	\N	\N	2025-07-12 02:46:12.94	2025-07-12 02:45:41.577	1	\N	\N
524	182	1	\N	\N	\N	\N	\N	\N	\N	\N	2025-08-01 07:42:49.061	2025-08-01 07:42:35.281	1	\N	\N
525	183	2	\N	\N	\N	\N	\N	\N	\N	\N	2025-08-01 07:47:47.513	2025-08-01 07:47:38.838	1	\N	\N
\.


--
-- Data for Name: Promotion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Promotion" (id, name, description, "discountRate", "startDate", "endDate", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: Promotion_Category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Promotion_Category" (id, "categoryId", "promotionId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: PublicRelationMessage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."PublicRelationMessage" (id, content1, content2, content3, "displayOrder", "startDate", "endDate", "isActive", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: Role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Role" (id, name, description, "createdAt", "updatedAt") FROM stdin;
1	admin	\N	2025-02-13 06:32:31.435	2025-02-13 06:32:14.434
2	user	\N	2025-02-13 06:32:31.435	2025-02-13 06:32:18.17
3	guest	\N	2025-02-13 06:32:31.435	2025-02-13 06:32:21.465
\.


--
-- Data for Name: Shipping_Method; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Shipping_Method" (id, name, description, price, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: Shop_Order; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Shop_Order" (id, "userId", "paymentMethodId", "shippingAddressId", "shippingMethodId", "orderStatusId", "paymentStatusId", order_total, order_date, "updatedAt") FROM stdin;
\.


--
-- Data for Name: Shopping_Cart; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Shopping_Cart" (id, "userId", "createdAt", "updatedAt") FROM stdin;
17	2	2025-05-02 06:17:08.682	2025-05-02 06:17:08.682
18	3	2025-05-13 09:50:30.487	2025-05-13 09:50:30.487
19	28	2025-05-17 03:32:26.971	2025-05-17 03:32:15.706
20	30	2025-05-17 03:32:26.971	2025-05-17 03:32:15.866
43	32	2025-05-17 03:36:50.237	2025-05-17 03:35:53.529
44	33	2025-05-17 03:36:50.237	2025-05-17 03:35:53.689
45	34	2025-05-17 03:36:50.237	2025-05-17 03:35:53.865
46	36	2025-05-17 03:36:50.237	2025-05-17 03:35:54.033
47	38	2025-05-17 03:36:50.237	2025-05-17 03:35:54.186
48	41	2025-05-17 03:36:50.237	2025-05-17 03:35:54.345
49	42	2025-05-17 03:36:50.237	2025-05-17 03:35:54.505
50	43	2025-05-17 03:36:50.237	2025-05-17 03:35:54.953
51	44	2025-05-17 03:36:50.237	2025-05-17 03:35:55.114
52	45	2025-05-17 03:36:50.237	2025-05-17 03:35:55.257
53	50	2025-05-17 03:38:06.849	2025-05-17 03:37:06.018
54	49	2025-05-17 03:38:06.849	2025-05-17 03:37:06.185
55	51	2025-05-17 03:38:06.849	2025-05-17 03:37:06.37
56	52	2025-05-17 03:38:06.849	2025-05-17 03:37:06.529
57	29	2025-05-17 03:38:06.849	2025-05-17 03:37:06.698
58	55	2025-05-17 03:38:06.849	2025-05-17 03:37:06.849
59	56	2025-05-17 03:38:06.849	2025-05-17 03:37:06.993
60	47	2025-05-17 03:38:06.849	2025-05-17 03:37:07.434
61	57	2025-05-17 03:38:06.849	2025-05-17 03:37:07.585
62	58	2025-05-17 03:38:06.849	2025-05-17 03:37:08.171
65	59	2025-05-17 03:40:06.236	2025-05-17 03:38:28.299
66	27	2025-05-17 03:40:06.236	2025-05-17 03:38:28.465
67	60	2025-05-17 03:40:06.236	2025-05-17 03:38:28.649
68	62	2025-05-17 03:40:06.236	2025-05-17 03:38:29.105
69	65	2025-05-17 03:40:06.236	2025-05-17 03:38:29.274
70	64	2025-05-17 03:40:06.236	2025-05-17 03:38:29.44
71	35	2025-05-17 03:40:06.236	2025-05-17 03:38:29.603
72	67	2025-05-17 03:40:06.236	2025-05-17 03:38:29.744
73	68	2025-05-17 03:40:06.236	2025-05-17 03:38:30.089
74	69	2025-05-17 03:40:06.236	2025-05-17 03:38:30.264
75	70	2025-05-17 03:41:28.931	2025-05-17 03:40:30.017
76	71	2025-05-17 03:41:28.931	2025-05-17 03:40:30.168
77	73	2025-05-17 03:41:28.931	2025-05-17 03:40:30.352
78	74	2025-05-17 03:41:28.931	2025-05-17 03:40:30.721
79	75	2025-05-17 03:41:28.931	2025-05-17 03:40:30.904
80	76	2025-05-17 03:41:28.931	2025-05-17 03:40:31.064
81	78	2025-05-17 03:41:28.931	2025-05-17 03:40:31.256
82	77	2025-05-17 03:41:28.931	2025-05-17 03:40:31.736
83	79	2025-05-17 03:41:28.931	2025-05-17 03:40:32.184
84	80	2025-05-17 03:41:28.931	2025-05-17 03:40:34.176
85	82	2025-05-17 03:42:48.596	2025-05-17 03:41:37.456
86	84	2025-05-17 03:42:48.596	2025-05-17 03:41:37.632
87	85	2025-05-17 03:42:48.596	2025-05-17 03:41:37.828
88	87	2025-05-17 03:42:48.596	2025-05-17 03:41:37.992
89	88	2025-05-17 03:42:48.596	2025-05-17 03:41:38.152
90	90	2025-05-17 03:42:48.596	2025-05-17 03:41:38.304
91	46	2025-05-17 03:42:48.596	2025-05-17 03:41:38.456
92	92	2025-05-17 03:42:48.596	2025-05-17 03:41:38.617
93	93	2025-05-17 03:42:48.596	2025-05-17 03:41:39.105
94	94	2025-05-17 03:42:48.596	2025-05-17 03:41:39.633
95	95	2025-05-17 03:42:48.596	2025-05-17 03:41:43.64
96	97	2025-05-17 03:42:48.596	2025-05-17 03:41:43.8
97	98	2025-05-17 03:42:48.596	2025-05-17 03:41:43.968
98	100	2025-05-17 03:42:48.596	2025-05-17 03:41:44.136
99	99	2025-05-17 03:42:48.596	2025-05-17 03:41:44.561
100	102	2025-05-17 03:42:48.596	2025-05-17 03:41:44.688
101	103	2025-05-17 03:42:48.596	2025-05-17 03:41:44.856
102	104	2025-05-17 03:42:48.596	2025-05-17 03:41:46.396
103	105	2025-05-17 03:42:48.596	2025-05-17 03:41:46.696
104	106	2025-05-17 03:42:48.596	2025-05-17 03:41:47.048
105	107	2025-05-17 03:44:20.345	2025-05-17 03:43:17.296
106	101	2025-05-17 03:44:20.345	2025-05-17 03:43:17.471
107	108	2025-05-17 03:44:20.345	2025-05-17 03:43:17.648
108	109	2025-05-17 03:44:20.345	2025-05-17 03:43:17.808
109	110	2025-05-17 03:44:20.345	2025-05-17 03:43:17.968
110	81	2025-05-17 03:44:20.345	2025-05-17 03:43:18.127
111	111	2025-05-17 03:44:20.345	2025-05-17 03:43:18.263
112	112	2025-05-17 03:44:20.345	2025-05-17 03:43:18.407
113	114	2025-05-17 03:44:20.345	2025-05-17 03:43:18.568
114	115	2025-05-17 03:44:20.345	2025-05-17 03:43:18.704
115	117	2025-05-17 03:44:20.345	2025-05-17 03:43:18.855
116	118	2025-05-17 03:44:20.345	2025-05-17 03:43:19.023
117	119	2025-05-17 03:44:20.345	2025-05-17 03:43:19.2
118	122	2025-05-17 03:44:20.345	2025-05-17 03:43:19.376
119	116	2025-05-17 03:44:20.345	2025-05-17 03:43:19.535
120	125	2025-05-17 03:44:20.345	2025-05-17 03:43:19.863
121	124	2025-05-17 03:44:20.345	2025-05-17 03:43:20.016
122	126	2025-05-17 03:44:20.345	2025-05-17 03:43:20.191
123	127	2025-05-17 03:44:20.345	2025-05-17 03:43:20.416
124	128	2025-05-17 03:44:20.345	2025-05-17 03:43:20.753
125	123	2025-05-17 03:44:20.345	2025-05-17 03:43:21.088
126	129	2025-05-17 03:44:20.345	2025-05-17 03:43:21.536
127	131	2025-05-17 03:45:27.97	2025-05-17 03:44:37.503
128	132	2025-05-17 03:45:27.97	2025-05-17 03:44:37.679
129	133	2025-05-17 03:45:27.97	2025-05-17 03:44:37.863
130	134	2025-05-17 03:45:27.97	2025-05-17 03:44:38.119
131	135	2025-05-17 03:45:27.97	2025-05-17 03:44:38.433
132	136	2025-05-17 03:45:27.97	2025-05-17 03:44:38.599
133	138	2025-05-17 03:45:27.97	2025-05-17 03:44:38.751
134	139	2025-05-17 03:45:27.97	2025-05-17 03:44:39.255
135	142	2025-05-17 03:45:27.97	2025-05-17 03:44:39.424
136	143	2025-05-17 03:45:27.97	2025-05-17 03:44:39.855
137	141	2025-05-17 03:45:27.97	2025-05-17 03:44:40.178
138	146	2025-05-17 03:45:27.97	2025-05-17 03:44:40.576
139	72	2025-05-17 03:45:27.97	2025-05-17 03:44:41.031
140	149	2025-05-17 03:45:27.97	2025-05-17 03:44:41.583
141	150	2025-05-19 08:32:13.028	2025-05-19 08:32:13.028
142	152	2025-06-01 02:44:13.264	2025-06-01 02:44:13.264
143	155	2025-07-03 04:17:31.831	2025-07-03 04:17:31.831
144	156	2025-07-07 02:36:58.566	2025-07-07 02:36:58.566
145	158	2025-07-21 17:38:43.327	2025-07-21 17:38:43.327
146	159	2025-07-28 03:34:31.127	2025-07-28 03:34:31.127
147	160	2025-08-01 03:14:36.265	2025-08-01 03:14:36.265
148	161	2025-08-05 05:51:49.831	2025-08-05 05:51:49.831
149	145	2025-08-19 04:43:01.935	2025-08-19 04:43:01.935
150	162	2025-09-09 07:59:02.627	2025-09-09 07:59:02.627
151	163	2025-09-12 08:19:13.361	2025-09-12 08:19:13.361
152	164	2025-10-01 15:56:00.382	2025-10-01 15:56:00.382
153	167	2025-10-17 05:24:30.795	2025-10-17 05:24:30.795
154	169	2025-11-18 12:25:24.499	2025-11-18 12:25:24.499
155	170	2025-11-19 03:30:09.2	2025-11-19 03:30:09.2
156	171	2025-11-22 05:25:17.728	2025-11-22 05:25:17.728
157	172	2025-12-23 01:44:26.554	2025-12-23 01:44:26.554
158	173	2025-12-24 04:37:32.284	2025-12-24 04:37:32.284
159	174	2025-12-24 05:21:27.238	2025-12-24 05:21:27.238
\.


--
-- Data for Name: Shopping_Product_cart; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Shopping_Product_cart" (id, "cartId", "productId", "colorId", "sizeId", quantity, "createdAt", "updatedAt", "packgageId") FROM stdin;
1849	106	382	110	2	5	2025-06-14 03:30:53.946	2025-06-14 03:30:53.946	\N
1478	106	64	29	12	4	2025-05-19 10:57:49.571	2025-05-19 10:57:49.571	\N
1479	106	145	8	31	4	2025-05-19 10:58:48.997	2025-05-19 10:58:48.997	\N
2225	143	614	6	\N	1	2025-07-03 04:26:52.29	2025-07-03 04:26:52.29	\N
10072	157	266	8	\N	6	2025-12-23 01:57:56.473	2025-12-23 01:57:56.473	\N
1455	73	695	29	\N	5	2025-05-17 04:39:44.812	2025-05-17 04:39:07.46	\N
1456	73	181	45	\N	30	2025-05-17 04:39:44.812	2025-05-17 04:39:25.236	\N
5656	152	356	19	\N	2	2025-10-01 15:59:31.929	2025-10-01 16:03:48.951	\N
5657	152	356	40	\N	2	2025-10-01 15:59:33.123	2025-10-01 16:03:49.638	\N
5658	152	356	20	\N	2	2025-10-01 15:59:35.228	2025-10-01 16:03:50.498	\N
1850	82	280	23	\N	1	2025-06-16 04:47:42.915	2025-06-16 04:47:42.915	\N
1851	82	280	42	\N	1	2025-06-16 04:47:47.236	2025-06-16 04:47:47.236	\N
1852	82	280	19	\N	1	2025-06-16 04:47:52.675	2025-06-16 04:47:52.675	\N
1853	82	280	40	\N	1	2025-06-16 04:47:55.893	2025-06-16 04:47:55.893	\N
1854	82	280	41	\N	1	2025-06-16 04:47:58.061	2025-06-16 04:47:58.061	\N
5659	152	356	23	\N	2	2025-10-01 15:59:38.833	2025-10-01 16:03:51.402	\N
5653	152	356	7	\N	2	2025-10-01 15:59:08.865	2025-10-01 16:04:18.524	\N
1396	18	29	16	\N	3	2025-05-17 04:05:07.563	2025-05-17 03:59:18.709	\N
1397	18	29	18	\N	3	2025-05-17 04:05:07.563	2025-05-17 04:00:56.228	\N
1398	18	29	17	\N	3	2025-05-17 04:05:07.563	2025-05-17 04:00:56.395	\N
5647	152	707	8	\N	5	2025-10-01 15:56:57.381	2025-10-01 15:56:57.381	\N
5648	152	709	8	\N	5	2025-10-01 15:57:10.735	2025-10-01 15:57:10.735	\N
1402	108	68	20	\N	1	2025-05-17 04:08:44.384	2025-05-17 04:07:09.347	\N
1403	108	68	30	\N	1	2025-05-17 04:08:44.384	2025-05-17 04:07:09.522	\N
1404	108	68	21	\N	1	2025-05-17 04:08:44.384	2025-05-17 04:07:09.692	\N
1405	108	68	24	\N	1	2025-05-17 04:08:44.384	2025-05-17 04:07:10.843	\N
1406	108	68	23	\N	1	2025-05-17 04:08:44.384	2025-05-17 04:07:10.995	\N
1407	108	68	25	\N	1	2025-05-17 04:08:44.384	2025-05-17 04:07:11.755	\N
5650	152	359	19	\N	2	2025-10-01 15:58:02.451	2025-10-01 15:58:02.451	\N
1408	115	357	24	\N	1	2025-05-17 04:11:45.108	2025-05-17 04:10:02.107	\N
1409	115	357	40	\N	1	2025-05-17 04:11:45.108	2025-05-17 04:10:02.251	\N
1410	119	356	23	\N	12	2025-05-17 04:11:45.108	2025-05-17 04:10:45.673	\N
1411	119	356	41	\N	12	2025-05-17 04:11:45.108	2025-05-17 04:10:45.85	\N
1412	119	356	40	\N	12	2025-05-17 04:11:45.108	2025-05-17 04:10:46.034	\N
1413	119	356	7	\N	12	2025-05-17 04:11:45.108	2025-05-17 04:10:48.035	\N
1414	119	356	20	\N	12	2025-05-17 04:11:45.108	2025-05-17 04:10:48.202	\N
1415	115	383	111	11	1	2025-05-17 04:17:44.105	2025-05-17 04:13:07.329	\N
1416	115	380	108	1	1	2025-05-17 04:17:44.105	2025-05-17 04:13:07.489	\N
1417	115	380	108	2	1	2025-05-17 04:17:44.105	2025-05-17 04:13:07.658	\N
1418	115	380	108	3	1	2025-05-17 04:17:44.105	2025-05-17 04:13:07.834	\N
1419	115	380	108	4	1	2025-05-17 04:17:44.105	2025-05-17 04:13:07.994	\N
1420	115	380	108	5	1	2025-05-17 04:17:44.105	2025-05-17 04:13:08.162	\N
1421	115	380	108	11	1	2025-05-17 04:17:44.105	2025-05-17 04:13:08.426	\N
1422	115	381	109	1	1	2025-05-17 04:17:44.105	2025-05-17 04:13:08.585	\N
1423	115	381	109	2	1	2025-05-17 04:17:44.105	2025-05-17 04:13:08.905	\N
1424	115	381	109	3	1	2025-05-17 04:17:44.105	2025-05-17 04:13:09.066	\N
1425	115	381	109	4	1	2025-05-17 04:17:44.105	2025-05-17 04:13:09.226	\N
1426	115	381	109	5	1	2025-05-17 04:17:44.105	2025-05-17 04:13:09.378	\N
1427	115	381	109	11	1	2025-05-17 04:17:44.105	2025-05-17 04:13:09.545	\N
1428	115	384	112	8	1	2025-05-17 04:17:44.105	2025-05-17 04:13:09.689	\N
1429	115	384	112	1	1	2025-05-17 04:17:44.105	2025-05-17 04:13:09.85	\N
1430	115	384	112	2	1	2025-05-17 04:17:44.105	2025-05-17 04:13:10.01	\N
1431	115	384	112	3	1	2025-05-17 04:17:44.105	2025-05-17 04:13:10.241	\N
1432	115	384	112	4	1	2025-05-17 04:17:44.105	2025-05-17 04:13:10.402	\N
1433	115	384	112	5	1	2025-05-17 04:17:44.105	2025-05-17 04:13:10.554	\N
1434	115	384	112	11	1	2025-05-17 04:17:44.105	2025-05-17 04:13:10.994	\N
1435	115	382	110	11	1	2025-05-17 04:17:44.105	2025-05-17 04:13:11.13	\N
1436	115	382	110	5	1	2025-05-17 04:17:44.105	2025-05-17 04:13:11.837	\N
5651	152	359	21	\N	2	2025-10-01 15:58:06.433	2025-10-01 15:58:06.433	\N
1445	73	349	20	\N	6	2025-05-17 04:30:14.832	2025-05-17 04:29:29.029	\N
1447	73	11	3	\N	7	2025-05-17 04:34:49.362	2025-05-17 04:33:13.028	\N
1448	73	12	8	\N	6	2025-05-17 04:34:49.362	2025-05-17 04:34:08.325	\N
1449	73	15	8	\N	7	2025-05-17 04:34:49.362	2025-05-17 04:34:16.133	\N
1450	73	46	19	\N	6	2025-05-17 04:36:03.331	2025-05-17 04:34:57.756	\N
1451	73	236	23	\N	6	2025-05-17 04:36:03.331	2025-05-17 04:35:21.716	\N
1453	73	76	20	7	10	2025-05-17 04:38:30.591	2025-05-17 04:36:09.741	\N
5652	152	361	8	\N	4	2025-10-01 15:58:48.833	2025-10-01 15:58:48.833	\N
1671	106	270	8	\N	1	2025-06-08 00:45:14.574	2025-06-08 00:45:14.574	4
3255	100	690	168	21	5	2025-07-29 08:30:56.716	2025-07-29 08:30:56.716	\N
5655	152	356	24	\N	2	2025-10-01 15:59:30.743	2025-10-01 16:04:49.826	\N
5654	152	356	22	\N	2	2025-10-01 15:59:29.457	2025-10-01 16:04:50.529	\N
9997	157	134	20	\N	2	2025-12-23 01:54:43.347	2025-12-23 02:06:01.528	\N
11614	55	152	20	\N	3	2026-01-06 02:56:41.137	2026-01-06 02:57:55.604	\N
2226	143	715	40	32	1	2025-07-03 04:27:24.975	2025-07-03 04:27:24.975	\N
8859	89	739	40	\N	5	2025-12-05 05:37:38.869	2025-12-05 05:37:38.869	\N
8860	89	96	8	12	24	2025-12-05 05:40:42.648	2025-12-05 05:40:42.648	\N
8858	89	739	23	\N	5	2025-12-05 05:37:24.672	2025-12-05 05:41:53.441	\N
6448	153	308	32	\N	2	2025-10-17 05:24:30.817	2025-10-17 05:28:54.994	\N
8987	86	358	23	29	2	2025-12-09 07:27:52.428	2025-12-09 07:27:52.428	\N
8988	86	358	24	29	2	2025-12-09 07:28:05.013	2025-12-09 07:28:05.013	\N
5661	152	271	7	\N	1	2025-10-01 16:00:58.32	2025-10-01 16:00:58.32	\N
5662	152	271	42	\N	1	2025-10-01 16:01:03.396	2025-10-01 16:01:03.396	\N
5663	152	271	40	\N	1	2025-10-01 16:01:07.092	2025-10-01 16:01:07.092	\N
5664	152	271	19	\N	1	2025-10-01 16:01:10.718	2025-10-01 16:01:10.718	\N
8989	86	358	24	30	2	2025-12-09 07:28:09.95	2025-12-09 07:28:09.95	\N
8990	86	358	20	30	1	2025-12-09 07:28:12.799	2025-12-09 07:28:12.799	\N
7875	154	699	176	\N	1	2025-11-18 12:25:24.522	2025-11-18 12:25:24.522	\N
8991	86	358	23	30	2	2025-12-09 07:28:15.413	2025-12-09 07:28:30.301	\N
7876	154	696	20	\N	3	2025-11-18 12:25:52.78	2025-11-18 12:25:52.78	\N
8986	86	358	20	29	2	2025-12-09 07:27:46.383	2025-12-09 07:28:42.21	\N
5232	79	107	19	\N	3	2025-09-16 03:32:50.831	2025-09-16 03:32:50.831	\N
5233	79	716	24	\N	3	2025-09-16 03:33:53.753	2025-09-16 03:33:53.753	\N
3848	148	78	32	\N	1	2025-08-05 05:56:20.538	2025-08-05 05:56:20.538	\N
3849	148	80	32	\N	3	2025-08-05 06:03:08.666	2025-08-05 06:03:08.666	\N
3850	148	141	8	6	2	2025-08-05 06:05:02.604	2025-08-05 06:05:02.604	\N
3851	148	141	8	7	2	2025-08-05 06:05:07.267	2025-08-05 06:05:07.267	\N
3852	148	141	8	12	2	2025-08-05 06:05:16.474	2025-08-05 06:05:16.474	\N
3853	46	180	8	\N	1	2025-08-05 06:08:56.896	2025-08-05 06:08:56.896	\N
3854	148	250	44	\N	2	2025-08-05 06:10:10.942	2025-08-05 06:10:10.942	\N
3855	46	718	31	\N	2	2025-08-05 06:25:46.997	2025-08-05 06:25:46.997	\N
3856	46	723	194	\N	1	2025-08-05 06:26:09.843	2025-08-05 06:26:09.843	\N
7877	154	716	24	\N	2	2025-11-18 12:26:19.951	2025-11-18 12:26:19.951	\N
7878	154	695	29	\N	3	2025-11-18 12:26:47.97	2025-11-18 12:26:47.97	\N
3859	148	711	31	33	1	2025-08-05 08:25:55.667	2025-08-05 08:25:55.667	\N
7879	154	693	8	\N	4	2025-11-18 12:27:14.104	2025-11-18 12:27:14.104	\N
7880	154	691	20	\N	3	2025-11-18 12:27:58.036	2025-11-18 12:27:58.036	\N
11280	92	149	8	\N	3	2026-01-05 01:08:41.662	2026-01-05 01:08:41.662	\N
11281	92	150	23	\N	1	2026-01-05 01:09:05.216	2026-01-05 01:09:05.216	\N
11283	92	150	22	\N	1	2026-01-05 01:09:08.724	2026-01-05 01:09:08.724	\N
11279	92	214	21	\N	3	2026-01-05 01:07:16.249	2026-01-05 01:21:27.338	\N
10000	157	262	8	\N	6	2025-12-23 01:55:29.679	2025-12-23 02:06:20.913	\N
3909	98	363	40	29	1	2025-08-06 08:40:33.228	2025-08-06 08:40:33.228	\N
3910	98	363	41	29	2	2025-08-06 08:40:58.33	2025-08-06 08:40:58.33	\N
4513	149	707	8	\N	5	2025-08-19 04:54:01.739	2025-08-19 04:54:01.739	\N
9893	157	140	24	\N	5	2025-12-23 01:44:26.58	2025-12-23 01:44:26.58	\N
11807	43	471	122	32	1	2026-01-07 02:01:52.13	2026-01-07 02:01:52.13	\N
6449	153	304	32	\N	1	2025-10-17 05:31:48.14	2025-10-17 05:31:48.14	\N
11808	43	471	121	32	1	2026-01-07 02:01:53.262	2026-01-07 02:01:53.262	\N
11809	43	475	122	32	1	2026-01-07 02:01:59.296	2026-01-07 02:01:59.296	\N
11287	92	119	24	\N	2	2026-01-05 01:10:23.898	2026-01-05 01:10:23.898	\N
11288	92	103	20	\N	2	2026-01-05 01:10:46.164	2026-01-05 01:10:46.164	\N
10847	159	740	20	\N	1	2025-12-24 05:21:27.254	2025-12-24 05:21:27.254	\N
11810	43	475	121	32	1	2026-01-07 02:02:00.668	2026-01-07 02:02:00.668	\N
11811	43	173	41	\N	2	2026-01-07 02:02:53.412	2026-01-07 02:02:53.412	\N
11284	92	132	20	\N	2	2026-01-05 01:09:32.301	2026-01-05 01:17:17.927	\N
11812	43	173	42	\N	2	2026-01-07 02:02:54.894	2026-01-07 02:02:54.894	\N
11813	43	173	40	\N	2	2026-01-07 02:02:55.895	2026-01-07 02:02:55.895	\N
11814	43	274	24	\N	1	2026-01-07 02:03:12.31	2026-01-07 02:03:12.31	\N
11815	43	274	23	\N	1	2026-01-07 02:03:13.275	2026-01-07 02:03:13.275	\N
11294	92	51	20	\N	2	2026-01-05 01:13:20.98	2026-01-05 01:18:26.664	\N
11293	92	52	19	\N	3	2026-01-05 01:13:02.052	2026-01-05 01:18:29.061	\N
11816	43	274	50	\N	1	2026-01-07 02:03:15.03	2026-01-07 02:03:15.03	\N
4512	149	708	8	\N	4	2025-08-19 04:43:01.955	2025-08-19 04:43:01.955	\N
11258	92	743	8	\N	3	2026-01-05 00:44:39.321	2026-01-05 01:21:49.22	\N
11290	92	89	33	\N	4	2026-01-05 01:11:32.247	2026-01-05 01:22:46.159	\N
8992	86	274	40	\N	2	2025-12-09 07:29:29.84	2025-12-09 07:29:29.84	\N
11289	92	88	33	\N	4	2026-01-05 01:11:11.852	2026-01-05 01:22:47.536	\N
11295	92	39	8	\N	3	2026-01-05 01:13:46.854	2026-01-05 01:48:47.631	\N
11817	43	274	42	\N	1	2026-01-07 02:03:16.771	2026-01-07 02:03:16.771	\N
11818	43	274	40	\N	1	2026-01-07 02:03:20.399	2026-01-07 02:03:20.399	\N
11819	43	297	67	\N	6	2026-01-07 02:03:33.949	2026-01-07 02:03:33.949	\N
11820	43	306	32	\N	1	2026-01-07 02:05:20.697	2026-01-07 02:05:20.697	\N
11821	43	744	40	\N	1	2026-01-07 02:05:35.298	2026-01-07 02:05:35.298	\N
11822	43	744	7	\N	1	2026-01-07 02:05:37.026	2026-01-07 02:05:37.026	\N
9892	136	696	19	\N	1	2025-12-22 14:27:35.373	2025-12-22 14:27:35.373	\N
9891	136	696	20	\N	1	2025-12-22 14:27:06.497	2025-12-22 14:27:06.497	\N
11263	92	691	20	\N	2	2026-01-05 00:48:30.21	2026-01-05 00:48:30.21	\N
9953	157	153	38	\N	2	2025-12-23 01:47:08.941	2025-12-23 01:47:08.941	\N
9967	157	105	20	\N	2	2025-12-23 01:48:06.263	2025-12-23 02:05:49.111	\N
9996	157	163	8	\N	1	2025-12-23 01:49:32.288	2025-12-23 01:49:32.288	5
9968	157	105	24	\N	2	2025-12-23 01:48:08.182	2025-12-23 02:05:53.846	\N
\.


--
-- Data for Name: Size; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Size" (id, value, "createdAt", "updatedAt") FROM stdin;
1	M	2025-02-13 07:54:49.96	2025-02-13 07:54:30.608
2	L	2025-02-13 07:54:49.96	2025-02-13 07:54:34.71
3	XL	2025-02-13 07:54:49.96	2025-02-13 07:54:35.558
6	60	2025-02-16 07:35:17.363	2025-02-16 07:35:09.999
7	70	2025-02-16 07:35:17.363	2025-02-16 07:35:13.857
8	S	2025-02-18 17:07:39.683	2025-02-18 17:07:23.365
12	90	2025-02-22 03:02:04.947	2025-02-22 03:01:40.464
13	100	2025-02-22 03:02:04.947	2025-02-22 03:01:41.863
14	110	2025-02-22 03:02:04.947	2025-02-22 03:01:42.312
15	120	2025-02-22 03:02:04.947	2025-02-22 03:01:42.816
16	130	2025-02-22 03:02:04.947	2025-02-22 03:01:43.984
17	140	2025-02-22 03:02:04.947	2025-02-22 03:01:44.384
9	XS	2025-02-18 17:07:39.683	2025-02-22 03:54:12.66
18	36	2025-03-10 01:55:47.473	2025-03-10 01:55:31.598
19	37	2025-03-10 01:55:47.473	2025-03-10 01:55:31.79
20	38	2025-03-10 01:55:47.473	2025-03-10 01:55:31.952
21	39	2025-03-10 01:55:47.473	2025-03-10 01:55:32.398
22	40	2025-03-10 01:55:47.473	2025-03-10 01:55:32.798
23	41	2025-03-10 03:35:58.026	2025-03-10 03:35:22.067
24	42	2025-03-10 03:35:58.026	2025-03-10 03:35:22.219
25	43	2025-03-10 03:35:58.026	2025-03-10 03:35:22.371
26	44	2025-03-10 03:35:58.026	2025-03-10 03:35:22.531
27	45	2025-03-10 03:35:58.026	2025-03-10 03:35:23.659
28	46	2025-03-10 03:35:58.026	2025-03-10 03:35:24.067
29	S/M	2025-03-10 03:36:19.046	2025-03-10 03:36:00.987
30	L/XL	2025-03-10 03:36:19.046	2025-03-10 03:36:01.923
11	4XL	2025-02-18 17:08:53.344	2025-04-22 04:58:11.72
5	3XL	2025-02-13 07:54:49.96	2025-04-22 04:58:11.72
4	2XL	2025-02-13 07:54:49.96	2025-04-22 04:58:11.72
10	2XS	2025-02-18 17:07:39.683	2025-04-26 02:59:16.462
31	80	2025-05-14 09:52:08.392	2025-05-14 09:52:03.383
32	Free-Size	2025-05-17 06:27:10.593	2025-05-17 06:26:48.743
33	82	2025-05-27 07:08:30.047	2025-05-27 07:08:23.296
34	92	2025-05-27 07:08:30.047	2025-05-27 07:08:23.44
35	150*7	2025-06-28 02:02:34.47	2025-06-28 02:02:21.627
36	150*6	2025-06-28 02:02:34.47	2025-06-28 02:02:21.77
\.


--
-- Data for Name: Size_Unit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Size_Unit" (id, unit, "createdAt", "updatedAt") FROM stdin;
1	Cm	2025-02-13 06:35:03.452	2025-02-13 06:34:50.153
2	Inch	2025-02-13 06:35:03.452	2025-02-13 06:34:53.497
3	Liter	2025-02-18 06:56:49.912	2025-02-18 06:55:14.653
\.


--
-- Data for Name: Tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Tag" (id, "languageId", name, "createdAt", "updatedAt") FROM stdin;
1	2	Dress	2025-03-17 03:01:56.744	2025-03-17 02:57:04.128
2	2	Mini Dress	2025-03-17 03:01:56.744	2025-03-17 02:57:06.455
3	2	Up	2025-03-17 03:01:56.744	2025-03-17 02:57:06.648
4	2	Crop	2025-03-17 03:01:56.744	2025-03-17 02:57:06.783
5	2	Top Up	2025-03-17 03:01:56.744	2025-03-17 02:57:06.952
6	2	Pants Short	2025-03-17 03:01:56.744	2025-03-17 02:58:33.169
7	2	Skirt Short	2025-03-17 03:01:56.744	2025-03-17 02:58:45.335
8	2	Long & Set	2025-03-17 03:01:56.744	2025-03-17 02:59:00.273
9	2	Pants Set	2025-03-17 03:01:56.744	2025-03-17 02:59:22.232
10	2	Skirt Set	2025-03-17 03:01:56.744	2025-03-17 02:59:23.856
11	2	Bikini	2025-03-17 03:20:10.116	2025-03-17 03:20:01.489
12	1	หัวแหลม	2025-05-19 07:02:03.217	2025-05-19 07:01:44.471
13	1	หัวตัด	2025-05-19 07:02:03.217	2025-05-19 07:01:47.68
14	2	Two Tone	2025-05-19 07:10:06.862	2025-05-19 07:09:50.471
15	2	DRY	2025-05-19 07:55:27.006	2025-05-19 07:55:01.531
16	2	SPORT	2025-05-19 07:55:27.006	2025-05-19 07:55:02.027
18	2	Flamingo	2025-05-19 08:43:11.926	2025-05-19 08:42:56.608
17	2	TSK	2025-05-19 08:12:13.493	2025-05-20 07:15:55.355
19	2	Cartoon	2025-05-21 06:24:57.864	2025-05-21 06:27:26.966
\.


--
-- Data for Name: Task_Status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Task_Status" (id, status) FROM stdin;
1	doing
\.


--
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."User" (id, first_name, last_name, email, active, "lineId", "lineDisplayName", "linePictureUrl", email_verified, password_hash, image_path, "createdAt", "updatedAt") FROM stdin;
1	C	\N	admin.etc@hotmail.com	t	\N	\N	\N	\N	$2b$10$wPdDwEZ72FfyoarQF2aljudC/tkY8ZOneYYdwza8hqPHdXVGw8l/W	\N	2025-02-13 06:31:05.166	2025-02-13 06:31:05.166
19	\N	\N	\N	t	Ua94fd3d8311b7f5c81cd4ecfff7933e3	Leena (林肖）	https://profile.line-scdn.net/0hmpsf6zYQMl9eHyJd-xdMIC5PMTV9bmtNIXgpMWwdaWdmJnAJcn97bWNPP2diKiENc3AqOmxPaz9SDEU5QEnOa1kvb25iKHwNdX58sQ	\N	\N	\N	2025-02-24 19:13:27.821	2025-02-24 19:13:27.821
3	ADMIN	\N	\N	t	U1406dce73c75a2a7edae689f1c8338f2	Fharisi	https://profile.line-scdn.net/0hsjEYSFqVLEVoIDle3rtSOhhwLy9LUXVXRBEwIg91dyUBGWwWExVicFhwJXxTQ2MbR0c3Jl5ycyVkM1sjdnbQcW8QcXRUF2IXQ0Fiqw	\N	\N	\N	2025-02-14 20:04:02.762	2025-02-26 09:20:54.757
20	\N	\N	\N	t	U4d0d295eda5d99e6ea1656628e63af19	🦁นุชราภรณ์🐓	https://profile.line-scdn.net/0hyjQ87hYGJkV8QTYLS1hYOgwRJS9fMH9XWSNtK0hJcHIRcDJGViZrcBwTeHJDcTYQUXA7JElBKnxwUlEjYhfacXtxe3RAdmgXVyBoqw	\N	\N	\N	2025-02-27 03:11:26.103	2025-02-27 03:11:26.103
21	\N	\N	\N	t	U303d737588ff60d76215d632ed306911	💧เมืองใต้ คนคอน💧⛅	https://profile.line-scdn.net/0hlmRLjkh2M0J_NRpu2phNPQ9lMChcRGpQAVB8LEw3byJKVSNAUlF9JEMyanFHAXwUVlcoJ0w1ZXRzJkQkYWPPdngFbnNDAn0QVFR9rA	\N	\N	\N	2025-02-27 03:26:06.913	2025-02-27 03:26:06.913
22	\N	\N	\N	t	Udcc7f45d6e59d93c7ac9ee46f8461857	nana	https://profile.line-scdn.net/0hMB0Cew9-Em0dOgEvNFZsEm1qEQc-S0t_YQwKXyA6H1ogDVQ6OF1YXChtS15zAlM-MwgKCn86SQgRKWULA2zuWRoKT1whDVw_Nltcgw	\N	\N	\N	2025-03-01 08:21:08.371	2025-03-01 08:21:08.371
23	\N	\N	\N	t	U4367e2b5bf55a36b906f0e2efdb650df	Phuket Admin	https://profile.line-scdn.net/0h4jZYAeu_a0V3IHoQkZAVOgdwaC9UUTJXCUAtJ0EnPXJLQy1HW092KkNwMXYaQCVBWEUjIhBzMCB7MxwjaXaXcXAQNnRLFyUXXEElqw	\N	\N	\N	2025-03-01 08:38:05.638	2025-03-01 08:38:05.638
24	\N	\N	\N	t	U9d08830133407c3622b8c6738ea8f6be	นกคลัง/ภูเก็ต	https://profile.line-scdn.net/0hNZ2Kk9jpEXUfMgDTev5vCm9iEh88Q0hnOwRZFisxH0chBVVzNwNXQSlgG00gClYqM1VcEi9mSRATIWYTAWTtQRgCTEQjBV8nNFNfmw	\N	\N	\N	2025-03-01 09:03:51.824	2025-03-01 09:03:51.824
25	\N	\N	\N	t	Ue5b0b785f80c8d73c55ed0ba07316cdd	G R A S :(	https://profile.line-scdn.net/0htlZYaL1HK0N3IDqGc4BVPAdwKClUUXJRD0NtdkNwcnEfFG5HWxUwJUN0JyNPFW0QCUdiJ0skdHB7M1wlaXbXd3AQdnJLF2URXEFlrQ	\N	\N	\N	2025-03-01 09:05:55.223	2025-03-01 09:05:55.223
26	\N	\N	\N	t	U78771990b240f162e9a2c2c6007ebfbc	เจนเจ๊นนน🩷	https://profile.line-scdn.net/0hubuWHu04Kk1YLjrI02tUMih-KSd7X3NfcxhsKGwudC5hF2sYdB9kf297d3VlS2hJJk4wLT8qI3RUPV0rRnjWeV8ed3xkGWQfc09kow	\N	\N	\N	2025-03-01 09:08:29.449	2025-03-01 09:08:29.449
27	\N	\N	\N	t	U55d97bffcaf0257c232bb63a4e549a16	Fharisi	https://profile.line-scdn.net/0hsjEYBOX3LEVoIDle3rtSOhhwLy9LUXVXRBEwIg91dyUBGWwWExVicFhwJXxTQ2MbR0c3Jl5ycyVkM1sjdnbQcW8QcXRUFmoWRE5mpg	\N	\N	\N	2025-03-10 09:33:58.708	2025-03-10 09:33:58.708
28	\N	\N	\N	t	Ue72157f9bf122f9f26a430fd43e21ba9	💸เจ้าของไลชื่อ แพร💸	https://profile.line-scdn.net/0hJwo-4mIMFVhCVAVyrXFrJzIEFjJhJUxKaDVZO39dSG4oZVoIPjVdbnAHSz8oMwJea2Vaa3IHSz9OR2I-XALpbEVkSGl-YlMLbjpfuw	\N	\N	\N	2025-03-10 10:22:17.968	2025-03-10 10:22:17.968
29	\N	\N	\N	t	U193db9de59cbb539bc55556f392232c9	ไตรรัตน์ วุฒิพงษ์ฯ	https://profile.line-scdn.net/0h0ceAQsDHb0xIOEXxMdIRMzhobCZrSTZeMV4lLioxMnRxAXsSNl8pKio_MH0gCnsdNgwoKS46Y3tEKxgqVm6TeE8IMn10DikfZFYlrw	\N	\N	\N	2025-03-10 11:49:50.711	2025-03-10 11:49:50.711
30	\N	\N	\N	t	Ua86d8f5d4408e942974d86d5f7d2fceb	PiPo	https://profile.line-scdn.net/0hsU4Bxtr_LHoZOz056GBSBWlrLxA6SnVoYVxiGykyJkMkDDskPA5iS35pcBomCmt4ZlQwHSkycUgVKFscB23QTh4LcUslDWopNVVmmQ	\N	\N	\N	2025-03-10 14:41:55.237	2025-03-10 14:41:55.237
31	\N	\N	\N	t	U3eb1cdbdaf2c13c678c62999da46edd1	นุชราภรณ์	https://profile.line-scdn.net/0hhI0tDRk9N2YdDScQmfRJGW1dNAw-fG50ZWwqU31ab1JybnhlOW8vBX9YO1B1OnFiZWJ_VStaPl4RHkAAA1vLUho9alchO3E1MWN9hQ	\N	\N	\N	2025-03-11 01:13:57.389	2025-03-11 01:13:57.389
32	\N	\N	\N	t	U4116d7fbe3c2236fa45f5edb75b1af07	Da 🌈🌈🌈	https://profile.line-scdn.net/0ht1rXH_mtKx5fITtCEt9VYS9xKHR8UHIMJhM0fmhzdXkxQTxPehVhKmN2dS1kQjhOI042fmgoISZTMlx4QXfXKlgRdi9jF21Nc09h_Q	\N	\N	\N	2025-03-11 02:07:05.48	2025-03-11 02:07:05.48
33	\N	\N	\N	t	U1d490e84c0f13aead6f79f87a9de3e72	Rote Imperial Travel	https://profile.line-scdn.net/0hUg0MRDTKCkgdNBskN_R0N21kCSI-RVNaYVcSJ31jVnx0UBgfZQJNfSEyUXxwDEwWOVQQfiExAHgRJ30uA2L2fBoEV3khAkwbMVpAqw	\N	\N	\N	2025-03-11 04:17:47.023	2025-03-11 04:17:47.023
34	\N	\N	\N	t	U40ad22fd5696790258f96a84670c38d8	Wi🥀	https://profile.line-scdn.net/0hjV8V8eELNXkVLyS7zD1LBmV_NhM2XmxrbRstGXIoP0gtTHYoMEguSHAvPEAqH3Eraxl_GiQrbUsZPEIfC3nJTRIfaEgpGXMqOUF_mg	\N	\N	\N	2025-03-11 06:04:43.831	2025-03-11 06:04:43.831
35	\N	\N	\N	t	Uea5d55f024a7e34cc946637769ee38d1	🦁นุชราภรณ์🐓	https://profile.line-scdn.net/0hyjQ86s6MJkV8QTYLS1hYOgwRJS9fMH9XWSNtK0hJcHIRcDJGViZrcBwTeHJDcTYQUXA7JElBKnxwUlEjYhfacXtxe3RAd2AWUC9spg	\N	\N	\N	2025-03-11 06:33:11.103	2025-03-11 06:33:11.103
36	\N	\N	\N	t	U0679bf8f57769fa1b732f250b6fc0ddd	PH 🍯	https://profile.line-scdn.net/0hOlsLVzTgEENeNQIWBPJuPC5lEyl9RElRcwdcdTg9S3FgUldFIVUPJT8zGXI3DQBCJwQPdmIxGXtSJmclQGPsd1kFTXJiA1YQcltaoA	\N	\N	\N	2025-03-11 08:44:47.399	2025-03-11 08:44:47.399
37	\N	\N	\N	t	U308144e97ff6fa4d489ab896de0c2fe2	Leena (林肖）	https://profile.line-scdn.net/0hmpsfFmdrMl9eHyJd-xdMIC5PMTV9bmtNIXgpMWwdaWdmJnAJcn97bWNPP2diKiENc3AqOmxPaz9SDEU5QEnOa1kvb25iKXQMcnF4vA	\N	\N	\N	2025-03-11 10:12:02.605	2025-03-11 10:12:02.605
38	\N	\N	\N	t	U378c4efba690be45417e5bda7f59e09c	J A C K	https://profile.line-scdn.net/0hhjuYA1_YN0VYICbv2ZhJeyhwNC97UW5XcE96dmR0aycxEHlDdkUtK2wmOiZiFCIXIBJ4KmlwbH16TiNbADoHcyVZFi4dWShaLRMFeD9QbzdkTQNnJwYHewh0KSwYZicSdgEAWGpkHTA4VAAQfDVxX2hAESA2WSlXFndbE10SWcY3IkAQdUd-ImggYXDg	\N	\N	\N	2025-03-12 02:35:43.226	2025-03-12 02:35:43.226
2	C	\N	user.etc@hotmail.com	t	\N	\N	\N	\N	$2b$10$rUot/s.RoYpJz0gWQrETJeogh3YHDH62RdjzmzOUsByLhg/K4YKmW	/var/uploads/40-1741148563375.png	2025-02-13 06:33:02.931	2025-04-23 07:00:40.668
39	\N	\N	\N	t	Ud9a86b163f96d028d889063778d85721	Fatin	https://profile.line-scdn.net/0hktozlMYQNFtCAyW5RwdKJDJTNzFhcm1JPGxyPHMGOmh_M3sNO2QpPXQHY2IoMHNabGcpaSUHaWtOEEM9XFXIb0UzaWp-NXIIbm1-uA	\N	\N	\N	2025-05-17 02:40:20.134	2025-05-17 02:39:31.126
40	\N	\N	\N	t	Uf9f991e2f79d77da1596e59dc599eab4	Zunwa	https://profile.line-scdn.net/0hrmeS7G5oLUJIKj26J4JTPTh6LihrW3RQbEsxdigvIXciSmMQYkthJXUtdnB0SW8UZEhlc316JCdEOVokVnzRdk8acHN0HGsRZERnoQ	\N	\N	\N	2025-05-17 03:03:12.837	2025-05-17 03:01:42.986
41	\N	\N	\N	t	Uf2b558692347fcbed4aae82c9843f490	น้องผึ้ง	https://profile.line-scdn.net/0h4sEp_AGTa1xoCXp4SyoVIxhZaDZLeDJOEGctOAlcPG1VbnwPRmogalUKYDkBbSgNRjt3al0LZ2lkGhw6dl-XaG85Nm1UPy0PRGchvw	\N	\N	\N	2025-05-17 03:03:12.837	2025-05-17 03:02:37.665
42	\N	\N	\N	t	U4fd40a0bc52656bad7bc1e9dc12744ff	รัตดา อุ่นอก	https://profile.line-scdn.net/0hmqpr5ZrrMl5dCyPxMgdMYC1bMTR-emtMJj8pajwCa2xgPnVdeWwqMGxeZG40aXMIcGt8aGwMOT1_ay5fL2oYY3R3J3JnMgFKNwo_SjNiMxgyVTN4Dil9RwxTMjsJcnUOMRkdZQkJFCcWVQhVEw4qMSBQaTJmTAoKFVxeCFg5XN0yCUULcGx7OW0LZGvl	\N	\N	\N	2025-05-17 03:07:50.981	2025-05-17 03:05:06.544
43	\N	\N	\N	t	Uee5577927684262872db1d50194ea150	สาว	https://profile.line-scdn.net/0hOY72aeQAEHYaSwUBAc1uCWobExw5OklkYioIFHtKGUB3fwckPioNQC9ORkAkeFAjPnlZQnhCHkEWWGcQBB3sQh17TUcmfVYlNiValQ	\N	\N	\N	2025-05-17 03:07:50.981	2025-05-17 03:05:25.04
44	\N	\N	\N	t	U6207c2da545b3cad973bdc11ed6a41c4	𝓣𝓮𝓮𝓷 ²⁹¹⁶	https://profile.line-scdn.net/0htaSPsjHJK05-KThvhK9VMQ55KCRdWHJcVBwwfx95cSlDGG9LVkszIEssIHoQGT5MWho0LUJ7ci1yOlwoYH_XenkZdn9CH20dUkdhrQ	\N	\N	\N	2025-05-17 03:07:50.981	2025-05-17 03:05:39.131
46	สมุย/ วิภาพร (องุ่น)	\N	\N	t	U3d6cb439f27ba2b12506689bc0b39c6e	ห่วงยางเป่าลม4289	https://profile.line-scdn.net/0hqAsTYrRDLm5eLT3tIbZQES59LQR9XHd8ehwzDWx-dA1mHG46dEkyCm4pcllmFDptdx9gDmMtIAxSPlkIQHvSWlkdc19iG2g9ckNkjQ	\N	\N	\N	2025-05-17 03:07:50.981	2025-06-10 01:23:15.251
47	\N	\N	\N	t	Ued6d961f0ae0a100815171ba80365dc9	วาฬดาเลย์ พูลวิลล่า	https://profile.line-scdn.net/0h48uo4G74axdYFkXGzQIVaChGaH17ZzIFdycsJm9FPCE3JH5AcCcgJWhEYSJjdSVHICRxdmhFMnJUBRxxRkCXI18mNiZkIC1EdHgh9A	\N	\N	\N	2025-05-17 03:07:50.981	2025-05-17 03:06:19.28
48	\N	\N	\N	t	Uc5e0873af0b2dcd06e8e7fed297f9509	kraai Thaewchatturat	\N	\N	\N	\N	2025-05-17 03:07:50.981	2025-05-17 03:06:29.433
49	\N	\N	\N	t	U152dbb05569f30e8eff803474625bcd0	🐵King	https://profile.line-scdn.net/0hTRaUxZt6C31MLCIcBwh1Ajx8CBdvXVJvZhlCEn8uVkwjGUwtZ01MHnklUR15HUosaU9BTnkkVh9AP3wbUnr3SUscVkxwGk0uYEJBng	\N	\N	\N	2025-05-17 03:07:50.981	2025-05-17 03:07:01.536
50	\N	\N	\N	t	U86fcb3d30ec5f71ce10cfa2172304fe5	Purchase Seatran	https://profile.line-scdn.net/0h0-dz6614bwJJA3rtWiwRfTlTbGhqcjYQMGQnbXoHNDEgYy9UbDYiYi4BYTJ8MC0HZ2QmZnRQNWFFEBhkV1WTNk4zMjN1NSlRZW0l4Q	\N	\N	\N	2025-05-17 03:07:50.981	2025-05-17 03:07:13.513
51	\N	\N	\N	t	Ub4a83b6d117ff56d23e13051588b6958	zara	https://profile.line-scdn.net/0htro-heWMK11CVDusRahVIjIEKDdhJXJPbjVna3JdJWkqbWwDbDdiOHcHcm0tN20IPmBsO3MEcmhOR1w7XALXaUVkdmx-Ym0Objphvg	\N	\N	\N	2025-05-17 03:07:50.981	2025-05-17 03:07:30.232
53	\N	\N	\N	t	Ufb37473fb2c457acdc5e0722b46fde1c	เกริกมินิมาร์ท@ขนอม🌟	https://profile.line-scdn.net/0hBcWt2AimHUx6DTVh6FRjMwpdHiZZfEReATsHLUpdFC8XbVsZUzlVKRgKQX5EaAkcVj8GLEtYFit2HmoqZFvheH09QH1GO1sfVmNXrw	\N	\N	\N	2025-05-17 03:12:22.13	2025-05-17 03:08:20.519
54	\N	\N	\N	t	U55095c2c62b2ad4ed61409059b6baa50	เหมียว&นะปริวัฒน์	https://profile.line-scdn.net/0hueG1ZUsnKkpqSAM48qpUNRoYKSBJOXNYRi5iLggccCoAfz8ZT3xnKw8cdy0DfW1PFi0yL19IfXtmW10sdB7Wfm14d3tWfmwZRiZgqQ	\N	\N	\N	2025-05-17 03:12:22.13	2025-05-17 03:08:20.679
55	\N	\N	\N	t	Uc9ec6d2d4a0feb82f441c959a9d46410	อิฟฟา สะอาด	https://profile.line-scdn.net/0hvNEhmmAnKWFoETh6U21XHhhBKgtLYHBzQXAzDg8VIlQFdmk1RXdnUA9CIlJTdmtgRXdiA1kQcwZkAl4HdkfVVW8hdFBUJ28yRH9jgg	\N	\N	\N	2025-05-17 03:12:22.13	2025-05-17 03:08:21.335
56	\N	\N	\N	t	U670f98a63e81ddd62576b48693f4bd2b	Nong  aioy	https://profile.line-scdn.net/0hGz9AucqVGFUUOAjgh-BmKmRoGz83SUFHPg0FOicwEWwhCl1UPgwFYyExQ2AuXVoLPldVNnJsEmwYK28zCm7kYRMIRWQoDl4GOFZStg	\N	\N	\N	2025-05-17 03:12:22.13	2025-05-17 03:08:21.479
57	\N	\N	\N	t	Uf98067713f1d71bc6aa6adf8fe97bb1d	Winit	https://profile.line-scdn.net/0hrfseX-bfLUleHDlNPoVTNi5MLiN9bXRbJno3LGsfcH1nKjkYIX1kezkbIHxnKWkec35nJzxLIHtSD1ovQErRfVkscHhiKmsacnJnqg	\N	\N	\N	2025-05-17 03:12:22.13	2025-05-17 03:08:21.631
58	\N	\N	\N	t	U9bfa8d3e875eecfc60222a1b1eefea9d	pranom_nom	https://profile.line-scdn.net/0hCj9G0PxUHEUUPjcKg95iOmRuHy83T0VXOgoHICZsEHd7DltAMQ1WJCg-S30gXQwQMV9bdiE2RnYYLWsjCmjgcRMOQXQoCFoWOFBWpg	\N	\N	\N	2025-05-17 03:12:22.13	2025-05-17 03:08:23.48
59	\N	\N	\N	t	U8b5f24557d573f7829d64de3d4e507ba	nawin	https://profile.line-scdn.net/0hhfjnrjnhN0lHFx7mKftJNjdHNCNkZm5baXd9fCYRYHh8JHUdbiN-JiAQPnxzdCNIOSZ_KHBFb3xLBEAvWUHLfUAnanh7IXEaa3l9qg	\N	\N	\N	2025-05-17 03:12:22.13	2025-05-17 03:08:23.623
60	\N	\N	\N	t	U3714c8fe0b9f095c2a940ba2f7517188	Pop🐶	https://profile.line-scdn.net/0hzruIlC6WJV1YMA0KBQ1bIihgJjd7QXxPdgQ4PWwyeGptB2MJIFY_bz4yKD5hVTFeIQNqaGxkKG9UI1I7RmbZaV8AeGxkBmMOdF5vvg	\N	\N	\N	2025-05-17 03:12:22.13	2025-05-17 03:08:24.72
61	\N	\N	\N	t	U72153d4765f098bf97dd808dda241df0	บิว	https://profile.line-scdn.net/0hrY7SKE16LXYaKj9iWJNTCWp6Lhw5W3RkP0kxEHgsdUYiT2MgNE1kFCgrckVzHTolY0syEC8vJkMWOVoQBHzRQh0acEcmHGslNkRnlQ	\N	\N	\N	2025-05-17 03:12:22.13	2025-05-17 03:08:25.992
62	\N	\N	\N	t	U16d3fa14e7e997741237add1d9a9cca3	nee	https://profile.line-scdn.net/0hGisgUrJfGEZeHggbAGlmOS5OGyx9b0FUcSpSJmgbRnFiK1sQJS9eKG8dQnJgeQ1DenBQJmgbQHdSDW8gQEjkclkuRXdiKF4VcnBSpQ	\N	\N	\N	2025-05-17 03:12:22.13	2025-05-17 03:08:32.016
63	\N	\N	\N	t	Ud70a53ebf7f47848f1a663ab7d9a7c4e	patchaya 	https://profile.line-scdn.net/0hn0DysUVrMR9pACEUkb1PYBlQMnVKcWgNQTQtfA5TP3gDMiNMETQteVUCaCsBMH8bFzV2fA5TPy5lE0Z5d1bNK24wbC5VNndMRW57_A	\N	\N	\N	2025-05-17 03:12:22.13	2025-05-17 03:08:32.183
64	\N	\N	\N	t	Ua7a97df2e556fcd3a32ab954f7eeb305	ชัยยา ทองโคตร	https://profile.line-scdn.net/0hkoIg7f1RNEBkHiX-_QRKfhRONypHb21SGC18JlUeOXMLeXMXTn4pJwJKbydQeXIQTiorcQIZa3JGZjJIIRs9QDUXOnJebAhFOH0uRyFXAncmbhVlJnx4XyVGa3chKBUUMngeT1hAHAcQUwQTEBA-bgpBGSMMUy0QMElYFmEsWsMLHEMVSXl9J1QeYnXc	\N	\N	\N	2025-05-17 03:12:22.13	2025-05-17 03:08:32.359
65	\N	\N	\N	t	U8de23bfe11ab90f9370ec63edc864bb6	อรรคเดช ม.	https://profile.line-scdn.net/0hZDQQl-mMBWt8KBY3-RF7FAx4BgFfWVx5BBtIWhp8CFNJEUttBEoZCRt6X1gVEBJtBU1IBUguWl1wO3INYn75X3sYWFpAHkM4UEZPiA	\N	\N	\N	2025-05-17 03:12:22.13	2025-05-17 03:08:32.792
66	\N	\N	\N	t	U0a8f7d78b2937d5ed12edf2564ee6a16	สุวรรณา  น่ะจ๊ะ	https://profile.line-scdn.net/0hQ9VnZgzHDhZ7FyFQxupwaQtHDXxYZlcEBXBDdE4SAnZOI0xDBXIScxpEVCYRJ0lAAiFAd0dAUy53BHlwZUHyInwnUydHIUhFV3lE9Q	\N	\N	\N	2025-05-17 03:12:22.13	2025-05-17 03:08:32.951
67	\N	\N	\N	t	U42b9f2cf18b292c3490eaab53bc48397	ด.ช.ธนาเดช สาครเจริญ	https://profile.line-scdn.net/0hR_Yz8cNZDXB0AxieBkpzDwRTDhpXclRiXjVCEhEFUkFKZ0IkD2BBQhQLUBNPY0kmCmEXFEMHUkV4EHoWalXxRHMzUEFINUsjWG1Hkw	\N	\N	\N	2025-05-17 03:12:22.13	2025-05-17 03:08:33.111
68	\N	\N	\N	t	U612eb2af4b2c8cfbf5542ed42e28a122	ร้านป้าลอง	https://profile.line-scdn.net/0hpjRCjh__L0V_Oj5UDWVROg9qLC9cS3ZXUFVmdho_JSYXCz8QVFsycU06JSBDXW8bVQxoJUk5IXNzKVgjYWzTcXgKcnRDDGkWU1Rlpg	\N	\N	\N	2025-05-17 03:12:22.13	2025-05-17 03:08:33.264
70	\N	\N	\N	t	Udec0c7e09bd23b45e0d548ac9f646e73	ธวัชชัย  พิทักษ์แท้	https://profile.line-scdn.net/0h0BIXRb-qb21kIX2RoaoREhRxbAdHUDZ_TUUhD1h0N1oKRn09QEAkAgUhZVVbQyBoS0J1DVciZl9oMhgLeneTWWMRMlxYFyk-SE8ljg	\N	\N	\N	2025-05-17 03:12:22.13	2025-05-17 03:08:34.232
72	\N	\N	\N	t	Uc0feeb8f01ee058b45f184f2a96c3745	J Rayong	https://profile.line-scdn.net/0hB1yaNVU7HR5UGAnz5cVjYSRIHnR3aUQMeHoFcTNNES5uIFlNeHkBLzZPRSY6f1gaKilXezNKEydYC2p4Sk7hKlMoQC9oLltNeHZX_Q	\N	\N	\N	2025-05-17 03:17:06.278	2025-05-17 03:13:12.447
73	\N	\N	\N	t	Ueaa67f9e5856f8fdd0315dd55544eea0	N 🧸	https://profile.line-scdn.net/0h4fffK3HJa0lLH3q5_80VNjtPaCNobjJbZ39zL3xMNH0lfS8ZYXAlJ3wbMngkJi8ZNHpzenlMMXpHDBwvVUmXfUwvNnh3KS0aZ3Ehqg	\N	\N	\N	2025-05-17 03:17:06.278	2025-05-17 03:13:12.614
75	\N	\N	\N	t	U65eb7aaae45791a67b4cf52bf423606c	เจี๊ยบ บุญธรรม	https://profile.line-scdn.net/0hrbGssjDuLU1qCj-88TBTMhpaLidJe3RfR2wxflcKJn1QOWwdEjhneFkIJnkCOWwaET5neF4LcCpmGVordFzReW06cHxWPGseRmRnrg	\N	\N	\N	2025-05-17 03:17:06.278	2025-05-17 03:13:12.975
76	\N	\N	\N	t	Ua8990ae68755c9da834e23248843e834	พี่หน่อย  เกาะช้าง	https://profile.line-scdn.net/0hUTOkZkCICntiEh1yARl0BBJCCRFBY1NpSyAWGV5AAU9eKkt-SX0XSl5AXEhddU56GXxMTwNCUh5uAX0dfET2T2UiV0peJEwoTnxAmA	\N	\N	\N	2025-05-17 03:17:06.278	2025-05-17 03:13:13.136
77	\N	\N	\N	t	Ub9263c4519200873efb380994bef078c	Live and Learn	https://profile.line-scdn.net/0hPmpZ48DpD0JdIx7HK0txfC1zDCh-UlZQdxcSdmoqBXQ0G05EIxBCJW9zBnFoRExDeUAQJjt2A3N_FBpHBTklJAxfLio-c0lxAiM9UzxmExI4cU1IDUJJYTRXDyIOYxVGEkZEID9RNyI7TgF3FVkVRB9_LXomWwBQI3RjFFgRYcEyIXgXcERGJW0jWXfl	\N	\N	\N	2025-05-17 03:17:06.278	2025-05-17 03:13:13.296
52	พังาtailorkhaolakราจู	\N	\N	t	Ua799440454475f47ea5223f4a8c7d655	aashiq karki	https://profile.line-scdn.net/0hmmWLrY5AMkJ6NSNbJ4BMPQplMShZRGtQUAd1Jh81ZSVDAncXX1AuIU00aCIQViBEBFZ7JE9maHR2JkUkZGPOdn0Fb3NGA3QRVlt4oQ	\N	\N	\N	2025-05-17 03:12:22.13	2025-06-02 06:07:16.675
71	สุราษฯ/ชยุตราMatoom_	\N	\N	t	U76e4715e968008c80b618ed86fcdaddd	Matoom_	https://profile.line-scdn.net/0hefHkUIyNOkllEihs_QNENhVCOSNGY2NbQXFyf1VFMCtcci1LTnMge1VBNHlbdnkZSSNwLVEVNi1pAU0ve0TGfWIiZ3hZJHwaSXxwqg	\N	\N	\N	2025-05-17 03:12:22.13	2025-06-03 04:39:35.336
74	อ่าวนาง/คุณแคท	\N	\N	t	U97785988d9d588e57ba334f23b3a9ac7	แคท	https://profile.line-scdn.net/0hFp56aAOQGV8YTwlmlZRnIGgfGjU7PkBNYCFWP31PFTghfV0INytTPSoYEj9wfgkNMXpePi1JRm0UXG45Bhnlax9_RG4keV8MNCFTvA	\N	\N	\N	2025-05-17 03:17:06.278	2025-06-10 01:58:12.333
78	\N	\N	\N	t	U0f68c17ce5dcd43bda7a2693b9b0f0dd	Kranjanasorn Tuey	https://profile.line-scdn.net/0hXV08OXn4B3kdQRN16Kl5Bm0RBBM-MF5rOHBMFntADkpzeUN6MSZOH3tGDUx1d0MnNiNAHikWC0sRUnAfAxf7TRpxWkghd0EqMS9Nmg	\N	\N	\N	2025-05-17 03:17:06.278	2025-05-17 03:13:13.446
79	\N	\N	\N	t	U9a106a0c9449fa862b6dc28718d48f36	🥀SiRin	https://profile.line-scdn.net/0hq7lr9CzSLhhBCz-xujtQJjFbLXJiencKbzlheyFZdit9OjwcOWVheCQNeC99a2lGbjgxKicPdHhjYwhIbDYmOCNtD3sgUCk2DG4YJT19FUMePzYvNm0VKRpXOHMoeQ0bZBdmBBZeC3UmPQgNag4ffzR-dF4YPxFJEFxCTkQ5QJsuCVlNbGxnf3ELeC35	\N	\N	\N	2025-05-17 03:17:06.278	2025-05-17 03:13:13.606
80	\N	\N	\N	t	Ue3a542ca0bfccdfa57b468927f49dd66	พี่ปุ๊ . pou  🌵	https://profile.line-scdn.net/0hcsPTGh-XPFx9LS3QGO1CYg19PzZeXGVOBRl2ak8vaj8VGHkJVxh1PEsrYjxDTX9eVxlwaE1_ZzxfbWcIFxsJZhUlAW49WyR3EjA7fy9KPwIfZR1fBw0mVBsrazk9Hzl1JFcUT1RtKicbWgxQIS56Mg0lOjQVZhJ6LnpQCngfUt8SL0sJUEp1O00tamnF	\N	\N	\N	2025-05-17 03:17:06.278	2025-05-17 03:13:13.775
81	\N	\N	\N	t	U07b9a80023c9f46a89f6a19a6ac5d481	J Rayong	https://profile.line-scdn.net/0hHBTyCLiWF215AAd-AJlpEglQFAdacU5_BWZeWUVTHFhAM1YzB2JcC08DS19GZQA8BzYNDh9USlx1E2ALZ1brWX4wSlxFNlE-VW5djg	\N	\N	\N	2025-05-17 03:17:06.278	2025-05-17 03:13:13.918
82	\N	\N	\N	t	U3f6194414d0bb1eb0d5a58053b1c7913	❤ P ❤	https://profile.line-scdn.net/0hu5uKYTmjKhpYMjsPBFNUZShiKXB7Q3MIIAA3KG1mIS9hCmRPIFFlKT5hJi1iUT9IfFJhf207JitUIV18RmTWLl8CdytkBGxJdFxg-Q	\N	\N	\N	2025-05-17 03:17:06.278	2025-05-17 03:13:14.07
83	\N	\N	\N	t	U2873cd873c0c9d88940abf66955270dd	รูปภาพจากแม่	https://profile.line-scdn.net/0hzY2o_FFmJXYfFjayh_tbCW9GJhw8Z3xkNyc_Ey5DehIjcjcjOnhoQilCe0F1JTEnNic9QyoVek4TBVIQAUDZQhgmeEcjIGMlM3hvlQ	\N	\N	\N	2025-05-17 03:17:06.278	2025-05-17 03:13:14.241
85	\N	\N	\N	t	Uafbcfb4cf1fb4f484e2a42d12c1be7ca	Renu	https://profile.line-scdn.net/0hArw-Zg8uHl1aVAwFi0xgIioEHTd5JUdPI2JQPWxRQWQ1ZVgDd2BQMmpVEmkwMFlffjVUO2sDE2VWR2k7RALiaV1kQ2xmYlgOdjpUvg	\N	\N	\N	2025-05-17 03:17:06.278	2025-05-17 03:13:14.552
86	\N	\N	\N	t	U29d463f3ad3fca62471c82f0ae3c29ae	bunrit sangsong	https://profile.line-scdn.net/0h7tyvY8bkaFtUD3k9LjQWJCRfazF3fjFJfWx0PWJcNWo7aygNLWwnOzFaMT9pPXoFLW4vaGAJZj5YHB89SlmUb1M_NWpoOS4IeGEiuA	\N	\N	\N	2025-05-17 03:17:06.278	2025-05-17 03:13:14.719
87	\N	\N	\N	t	U778258c6d4716c99f3d38db97618e2ae	bleach bleach shop	https://profile.line-scdn.net/0hZBakN-ynBW1MEhQHIyh7EjxCBgdvY1x_N3FOCn8XW1p1dxVoYXEfCClGXFl3K0QyY3JLDSsRW19AAXILUkT5WUsiWFxwJEM-YHxPjg	\N	\N	\N	2025-05-17 03:17:06.278	2025-05-17 03:13:14.894
88	\N	\N	\N	t	Udd72e3c3024a69c30665e5a349f0fd13	Ple Siriruk	https://profile.line-scdn.net/0hTjWgYaFnC0V6HhilysN1OgpOCC9Zb1JXBH5GKk8YXCVPek0VVX4UdhwaU3NFKE0TV3ARKxscUHZ2DXwjZEj3cX0uVnRGKE0WVnBBpg	\N	\N	\N	2025-05-17 03:17:06.278	2025-05-17 03:13:15.07
89	\N	\N	\N	t	U2d0139c98a1117cc254c50fe29f14fa3	มายค์	https://profile.line-scdn.net/0hVSX__08vCXx1Jhhf0E93AwV2ChZWV1BuCRcREkgiBUVBFR4qXxIUSEh1VBkdRB15CxBGHkMmU0l5NX4aa3D1SHIWVE1JEE8vWUhDnw	\N	\N	\N	2025-05-17 03:17:06.278	2025-05-17 03:13:15.406
90	\N	\N	\N	t	Ua69ee7ffe1c1f0768c291aa241a3a933	วุธ 089-7823564	https://profile.line-scdn.net/0hpwEQtDpzL1hoKDq1hk5RJxh4LDJLWXZKFk9oN117dm1RG2wHQRs1a1R8eTwAGW8HFh5mPFooJT9kO1g-dn7TbG8YcmlUHmkLREZluw	\N	\N	\N	2025-05-17 03:17:06.278	2025-05-17 03:13:15.934
91	\N	\N	\N	t	Ufe81cc364d77377e25095540051deb47	Stee	https://profile.line-scdn.net/0hMhTeeUSCEkd5HD_6iEhsOAlMES1abUtVAC9fdkoVRXcWeFREBn4IIEQVHCVMLgcWUnpbKUUcGX91D2UhZ0ruc34sT3ZFKlQUVXJYpA	\N	\N	\N	2025-05-17 03:17:06.278	2025-05-17 03:13:17.041
92	\N	\N	\N	t	U02728335a473f792fb901ccb330e8b02	Prayfra Seanweang	https://profile.line-scdn.net/0hKdYVM39iFEt0LwHxvFBqNAR_FyFXXk1ZCE9eLUkrTCkZTFFOD0hbeBR7TH0ZGFsdD0pTL0cnS3x4PGMtannof3MfSXpIGVIYWEFeqA	\N	\N	\N	2025-05-17 03:20:58.505	2025-05-17 03:17:22.022
93	\N	\N	\N	t	Uc14fad4e29778824e467a72a34d62fbc	Arati Rai(Mali )	https://profile.line-scdn.net/0h8sqWseHcZ1xcLnMmk9kZIyx-ZDZ_Xz5OJEsvOWAobWhlF3UMJR1_OT4sPj5jGXBYJUp8OW9-PzlQPRA6QnibaFseOm1gGCEPcEAtvw	\N	\N	\N	2025-05-17 03:20:58.505	2025-05-17 03:17:22.19
94	\N	\N	\N	t	U4a1761e53641bf6119538d55fb9c6005	Sophida8995	https://profile.line-scdn.net/0hnoFrqWJrMUBrCyD3KMZPfhtbMipIemhSFGh9dQoIaHEDaCVGRDl_JlpZPXhUPnYWFW56dloIPCJJWn9NOTo6WCZ5aTgXZXVvEzgLcjVbFQQIPCARPB8uLltbCXIrOQhITht9bxtLFBYgeRJXEC14Xld0EiUIRQBjOVxdFm45X8MECUYVRmx4J1sLZ3XT	\N	\N	\N	2025-05-17 03:20:58.505	2025-05-17 03:17:22.349
95	\N	\N	\N	t	U3c124eb13be890250090a06f02b6d3fe	Fern4289💴6395	https://profile.line-scdn.net/0htW_Z0BLIK3hyIznwvjZVBwJzKBJRUnJqV0BkTBdzcx1LFGsmWkMzFhUmJU4YGj4oDkJhTRIrcUF-MFwebHXXTHUTdklOFW0rXk1hmw	\N	\N	\N	2025-05-17 03:20:58.505	2025-05-17 03:17:22.51
96	\N	\N	\N	t	Ua450ef5de6c0dc5536ffd54babe497ce	85	https://profile.line-scdn.net/0hkigYsapPNEZKICXLZ8JKOTpwNyxpUW1UZkArKXshaSVyGSMQb0YsICx3ayQgFiZCMxF-JHl0P3ZGM0MgVHbIck0QaXd2FnIVZk5-pQ	\N	\N	\N	2025-05-17 03:20:58.505	2025-05-17 03:17:22.679
97	\N	\N	\N	t	Uf524b3cb18cda1a1f10022d71779b969	─  ƉΞΔ𝕎  ─	https://profile.line-scdn.net/0hXWvT5dbWB3hbLRTYocB5Byt9BBJ4XF5qfxlPHjt6X0hgShB-cUNBG2kpWh8zHxAmdB5ATWl_WR1XPnAeRXv7TFwdWklnG0Erd0NNmw	\N	\N	\N	2025-05-17 03:20:58.505	2025-05-17 03:17:22.847
98	\N	\N	\N	t	U7224e62564dc037f0f898c2f3eeb1516	Teetiti	https://profile.line-scdn.net/0hUc1XtgmMCkwcIRtyrlp0M2xxCSY_UFNeNkcRfi8gXSt0FkQcMxAQfy4gACshGB4eMRQSIyApBygQMn0qAnf2eBsRV30gF0wfME9Arw	\N	\N	\N	2025-05-17 03:20:58.505	2025-05-17 03:17:23.013
99	\N	\N	\N	t	U0412fcc7d9b069530990ce5f84e981e5	patumporn khanal	https://profile.line-scdn.net/0hZ1W9e2hwBR56QBQxAIl7YQoQBnRZMVwMXyAafkYSWX1BcRJIUy5MKxpEXixEcUcaViMYKEgXWHl2U3J4ZBb5Kn1wWC9GdkNNVi5P_Q	\N	\N	\N	2025-05-17 03:20:58.505	2025-05-17 03:17:23.174
100	\N	\N	\N	t	Ucd876e0c9b9c60b00e3a6e241e69dc64	N"aimie👧❤️	https://profile.line-scdn.net/0hWeE85j_-CEpoQRyrh7x2NRgRCyBLMFFYEyZDeAgRXy0HcB1PRCYQJVUUUXtXcE4fFnAXKlVGUChkUn8sdhf0fm9xVXtUd04ZRC9CqQ	\N	\N	\N	2025-05-17 03:20:58.505	2025-05-17 03:17:23.341
102	\N	\N	\N	t	Uf8677906e43bb146b0b4d91f931a07ae	อาเจิ้น	https://profile.line-scdn.net/0hAnz3UkK-HkFXSgmBIohgPicaHSt0O0dTcytWJGBIQXNjLlxCeS5XJWZPRnk5eQ0UK39YJGdNECNbWWknSRzidVB6Q3BrfFgSeyRUog	\N	\N	\N	2025-05-17 03:20:58.505	2025-05-17 03:17:23.858
103	\N	\N	\N	t	Ucaced13d4f15af92c40abbcbc35c3132	NooNaa🩷❤️‍🔥	https://profile.line-scdn.net/0hD1J1s1yFGx5nSA8nvtFlYRcYGHREOUIMHCZSfwBNRytefFQcG3lUelYYFikIel9KQyxRKwZNRytrW2x4eR7nKmB4Ri9bfl1NSyZR_Q	\N	\N	\N	2025-05-17 03:20:58.505	2025-05-17 03:17:24.013
104	\N	\N	\N	t	Uee70780ff194017b6479691edc4f40c6	Ptmn.L	https://profile.line-scdn.net/0hLrK_1lx1E11mJjhLt_ttIhZ2EDdFV0pPSkJYPQF2RWVcRQEOSkVYP1AvSmxYEFYNGEcPM1EgTGRqNWQ7eHDvaWEWTmxaEFUOSkhZvg	\N	\N	\N	2025-05-17 03:20:58.505	2025-05-17 03:17:24.182
105	\N	\N	\N	t	U3cab1bf0f9459337904f98c6841bb3e1	❤️ญ 2024❤️	https://profile.line-scdn.net/0hUTGCSiC2CntqOhryDMp0BBpqCRFJS1NpQlsVGFc6XEsAAk0lEQhGHVk9AxwDCkgsQllCSFw4U0hmKX0ddGz2T20KV0pWDEwoRlRAmA	\N	\N	\N	2025-05-17 03:20:58.505	2025-05-17 03:17:24.342
106	\N	\N	\N	t	Ued1e747652331bf7d8be6a4ead719b37	แอมๆ✌️✌️	https://profile.line-scdn.net/0h16HAxFHebhllOHiIC2IQZhVobXNGSTcLQQolKFQ9YHsLC3wcGw4je1E4MS0NW31OTgt0LANqNChpKxl_e26SLWIIMyhZDihKSVYk-g	\N	\N	\N	2025-05-17 03:20:58.505	2025-05-17 03:17:24.574
107	\N	\N	\N	t	U2ea275f7c0ae93f28925894b5b47fd28	Pond	https://profile.line-scdn.net/0hNfLVLlCkEUlhLwIZqXhvNhF_EiNCXkhbT0pfKVYsHC5ZSlBKSU4OfQcsRipeGgMXS01bKVd8SHptPGYvf3ntfWYfTHhdGVcaTUFbqg	\N	\N	\N	2025-05-17 03:20:58.505	2025-05-17 03:17:24.741
108	\N	\N	\N	t	Ub7b173c12a4b2f074cabca28229483d4	Bee	https://profile.line-scdn.net/0h8ku1W0-5Z0RYSHbB3r4ZeigYZC57OT5WIywpJWxNOXNiKnVCcSwqJ2xManM3fyJBfX0ocTkcOHV6KyByMVNqWT0zbgcYC1JgD11pUmkNYy9gHX5HGkt-ZzNOSioaLXx2IklpSQs3PnJkL0BCKzI0YyhMMQYaOFpzDR8LEl16Ccc3ShARdS8uI2hIMXHg	\N	\N	\N	2025-05-17 03:20:58.505	2025-05-17 03:17:24.901
101	เกาะเต่า/เบญจมาศ/ทราย	\N	\N	t	U8f21cab6716a896940d11f48006bda71	ทราย	https://profile.line-scdn.net/0htOLcfmvLK2BhGjpp1J5VHxFKKApCa3JyHXhsD1xIcwBfIztlHi8xU1RNc1BcLTw1GnwwUlAbIVdtCVwGf0zXVGYqdlFdLG0zTXRhgw	\N	\N	\N	2025-05-17 03:20:58.505	2025-06-02 06:04:05.174
109	\N	\N	\N	t	U5539ca22af3a5aa615e32ef061e24498	ple ple	https://profile.line-scdn.net/0hT6zQRVEUCxlXKCJNxGJ1Zid4CHN0WVILfhxAfDZ8Uy5sSBkdeR0UKDF7VyBoSkgYeR0Xd2MpAHtbO3x_SX73LVAYVihrHk1Ke0ZB-g	\N	\N	\N	2025-05-17 03:20:58.505	2025-05-17 03:17:25.301
111	\N	\N	\N	t	U8bf8d0e242f28569c57c191b73ecc848	 อนุสรณ์เกาะช้างจ.ตราด	https://profile.line-scdn.net/0h7vZ2ILMeaFl3S3-KV6AWJgcbazNUOjFLD30lOUsYZWxMeXgNDCQlP0ZMPmkfLn8NW3ogNkoZMDt7WB8_aR2UbXB7NWhLfS4KWyUiug	\N	\N	\N	2025-05-17 03:20:58.505	2025-05-17 03:17:26.365
112	\N	\N	\N	t	U8292912c0ba428d3833ff61ff7e1fa8a	☺️เกรซเอง 🍭🧁	https://profile.line-scdn.net/0hSuNGdDbrDFpjPiC-rppyJRNuDzBAT1VISQ1COgNtUWpbBkgMTV1FNFRuVmNYXUINSgpCOQZsAmtvLXs8fWjwbmQOUWtfCEoJT1BGuQ	\N	\N	\N	2025-05-17 03:25:07.446	2025-05-17 03:21:57.789
113	\N	\N	\N	t	Ud3b1abf942a5514be668fd197c5a8831	อรพิน อรพิน เมฆบุตร	https://profile.line-scdn.net/0hWefVW3kSCEpLLxjDm2x2NTt_CyBoXlFYbhsSJXp_UC90TUsUYEpAJH0oVC0mFkZMZBsSeHl_Ui5HPH8sVXn0fkwfVXt3GU4ZZ0FCqQ	\N	\N	\N	2025-05-17 03:25:07.446	2025-05-17 03:21:57.948
114	\N	\N	\N	t	U34e0836bc6a77f6e6a72049b7f5b0c4f	ann7824	https://profile.line-scdn.net/0hiIMroFQpNmZgCyZtIoVIGRBbNQxDem90TjkpBFMNa1AJaHFjGGUsV1YCOgEIOnQyTG4pB1ZfPFdsGEEAfl3KUmc7a1dcPXA1TGV8hQ	\N	\N	\N	2025-05-17 03:25:07.446	2025-05-17 03:21:58.108
115	\N	\N	\N	t	Uad3b6595f0f4c5505cc9e143782d98a4	𝓑𝓮𝓮𝓶 〰️	https://profile.line-scdn.net/0hwZHj7HKkKHVlEzupqatWChVDKx9GYnFnQHxhRFNBdBZcK2ciQSdgQVZGcUcLJzorGSEzQFFGI0BpAF8Te0XUQWIjdURZJW4mSX1ilg	\N	\N	\N	2025-05-17 03:25:07.446	2025-05-17 03:21:58.268
116	\N	\N	\N	t	U38d67f6d3347a998a92e5195f42cecb1	Chaloemchai8	https://profile.line-scdn.net/0h_QmEtAPEAH5APBOETV9-ATBsAxRjTVlsa1sfHnY5XEl-CEEpZVsfSiVsDEcuD0UqZV1GTXRsXExML3cYXmr8SkcMXU98CkYtbFJKnQ	\N	\N	\N	2025-05-17 03:25:07.446	2025-05-17 03:21:58.428
117	\N	\N	\N	t	U2aad7ea68f054dbc1734bf5f30224b09	ทัศเอง I'm Tat 🇨🇷	https://profile.line-scdn.net/0hm0CrC6sMMh9uCyWvbVBMYB5bMXVNemsNS24ueloKOy5WaHZAFmp1LFhYOSlXbnNOQzp9fVIMO3tiGEV5cF3OK2k7by5SPXRMQmV4_A	\N	\N	\N	2025-05-17 03:25:07.446	2025-05-17 03:21:58.58
119	\N	\N	\N	t	U94f007bbff6f30c8e13eb75031704528	rosesarintorn	https://profile.line-scdn.net/0he8c4wnHlOhdOTREFlIhEaD4dOX1tPGMFZXlyJCgYYCMmdS9GNShxJS9FMCdzfCpAZX9zJnJIMy9CXk1xUBvGI0l9ZyZye3xEYiNw9A	\N	\N	\N	2025-05-17 03:25:07.446	2025-05-17 03:21:58.9
120	\N	\N	\N	t	Uf246b9bd4a96b7dc77460b176f7235b5	Dirk	https://profile.line-scdn.net/0hwUPYs4lrKHp9IAB3bllWBQ1wKxBeUXFoWEVnS0kmdUwSQ24lBBJiTE1ydhgSFzwqWEczTEEmc0hxM18cY3bUTnoQdUtBFm4pUU5imQ	\N	\N	\N	2025-05-17 03:25:07.446	2025-05-17 03:21:59.053
121	\N	\N	\N	t	U3762a9d1591eb7e44742c5a367416b81	Bee	https://profile.line-scdn.net/0m02c214eb7251cc83e5e0d652c560b2f87c150f559662	\N	\N	\N	2025-05-17 03:25:07.446	2025-05-17 03:21:59.222
122	\N	\N	\N	t	U32df29b9033cf21f46df4252174547d1	numpung	https://profile.line-scdn.net/0hZ-u6WPijBQJYTxJBPnx7fSgfBmh7PlwQdyFNY2hJU2I2d0EEc31OMDhPX2U1dhIBcH5PMG9GWmBUXHJkRhn5Nl9_WDNkeUNRdCFP4Q	\N	\N	\N	2025-05-17 03:25:07.446	2025-05-17 03:21:59.375
123	\N	\N	\N	t	Uc0125782d24a047a41ff71338630fddf	กระต่าย	\N	\N	\N	\N	2025-05-17 03:25:07.446	2025-05-17 03:21:59.852
124	\N	\N	\N	t	U68fe4f0c18bb09df427bdeb32edd94c0	Ozone	https://profile.line-scdn.net/0hKIt_iVJYFGZZJgM4t9BqGSl2Fwx6V010J0gJCWUkSwZgQ1U5JkVaUzsgT1dtFVszdkcPCGokH1JVNWMAR3DoUl4WSVdlEFI1dUhehQ	\N	\N	\N	2025-05-17 03:25:07.446	2025-05-17 03:21:59.996
126	\N	\N	\N	t	U947ba699e99eae37d09e9ee302b491d3	pumski	https://profile.line-scdn.net/0hesC3_q5yOlxuSi7xNX1EIx4aOTZNO2NOQn92Pl5DN25UKnlaQSpxP1lJZDsAcy1ZRnsnO1hDbTtiWU06cBzGaGl6Z21SfHwPQiRwvw	\N	\N	\N	2025-05-17 03:25:07.446	2025-05-17 03:22:01.524
128	\N	\N	\N	t	Uc7625b1dc74e7f3b32595a52efa34e6c	👉BAIAOY👈	https://profile.line-scdn.net/0hkgFUfJj2NEhrLCXx6CZKdht8NyJIXW1aTkJ5LlovOHheT3IZF0N8K1Ytay0GTicaREJ6KlZ7PShJZittJDQZLjYlawYEGA9_GU5yR0J7YnEOXgoCPx0ALw5EKHEQSR1BDhxyexl8LCYTG3UXKSMOSAcuCgIrWitDO3tYHm4eWssELkMdRkt9L1ssYn3T	\N	\N	\N	2025-05-17 03:25:07.446	2025-05-17 03:22:02.693
129	\N	\N	\N	t	Ua10a10e8e348a26ad6372c191b27981c	Aarti🐰	https://profile.line-scdn.net/0hIprSsRNYFl9fKga08RtoIC96FTV8W09Ncx5aPmwpGGhnSVgAI0tfMTkrTD1kGAVeJERQMG55HD9TOWE5QXzqa1gaS25jHFAMc0RcvA	\N	\N	\N	2025-05-17 03:25:07.446	2025-05-17 03:22:03.165
130	\N	\N	\N	t	Ufb3ce5dc33c6f6848ba858ac12438eb0	Krabi Startour	https://profile.line-scdn.net/0hfKQPSujuOWR8KRbNTyBHGwx5Og5fWGB2WUghUUohbgMSHiowVB9wV08tM1VBSS4wBB0hBB1-Y1RwOk4CYn_FUHsZZFVAH383UEdzhw	\N	\N	\N	2025-05-17 03:25:07.446	2025-05-17 03:22:03.358
132	\N	\N	\N	t	Ub3eab3f1eb7730b935244dc1f4f777e0	มัณยาภา9989	https://profile.line-scdn.net/0h6UvqysPEaXpbCHjm82UXRCtYahB4eTBod2knHD4BZU1nbH0lIGsuHWwAZEM0bSl4I2tzTDtbP0x5Rip3cghUYR1eNT8gYCt6PCZyRhZaVAgWcXVNDiVyXTtORzA5ZEtXAxBBHRR9cxUfO3lqExlgTDZgXEw8MFRXBF8FLF46B_k0Ch4vdm8gHWsIP0_j	\N	\N	\N	2025-05-17 03:31:14.152	2025-05-17 03:28:08.645
135	\N	\N	\N	t	U072d4573ecaaa6d3d6b778929a2e7643	ฟักทอง	https://profile.line-scdn.net/0m0e3e44907251c7ea6863ffe0fc12b70fae1bed46f1ac	\N	\N	\N	2025-05-17 03:31:14.152	2025-05-17 03:28:09.123
136	\N	\N	\N	t	U8f956e8ebda154f7074329308452b878	Secret Beach Phangan	https://profile.line-scdn.net/0hjMr_o7DCNWJfJiH-xT9LHS92Ngh8V2xwexR9UGlzbgBmFSY3JEYoUTkjawFmFCUxc0Z6AWghagFTNUIEQXDJVlgWaFNjEHMxc0h_gQ	\N	\N	\N	2025-05-17 03:31:14.152	2025-05-17 03:28:09.283
137	\N	\N	\N	t	Uef34baeb0708083c49e80a73d17cd978	Kanthika	https://profile.line-scdn.net/0hXQumdq27B35YFBWGjXZ5AShEBBR7ZV5sdyJJSjocWk5lIkJ9IXBJHGlEXE5mIkMgIyFIHW0VX0pUB3AYRkL7Sl8kWk9kIkEtdHpNnQ	\N	\N	\N	2025-05-17 03:31:14.152	2025-05-17 03:28:09.435
138	\N	\N	\N	t	Ubfcf7718a6a2052918627be05085f793	Machima2456	https://profile.line-scdn.net/0hq7CfTMBLLhhuHzvFoO5QZx5PLXJNbncKEitnK18dJStVem1HQH0zdlgZcihVKW5NR3s0LAtLeCtiDFl-cEnSLGkvcylSKWhLQnFk-w	\N	\N	\N	2025-05-17 03:31:14.152	2025-05-17 03:28:09.597
139	\N	\N	\N	t	Uad8508f1e72323a36c4c52caf0244ba3	i n g อร  ☺️☺️☺️	https://profile.line-scdn.net/0hNrNvekWkEV1jDwDW0dNvYxNfEjdAfkhPRjxfMwUOGGRbPQJYRmsLb1VfSG9WbVYMSmsJPwUPHGtBV1JQJiswawwONioiNzZjBhQ6ZANQLh0fXwhDLRI6ZRFhK2w_Pj1PDSBechZ0GBE7TSVVDDVbW197GQ03OlJoTlh9C2Y9f94MDWYITmhYOlMPR2jb	\N	\N	\N	2025-05-17 03:31:14.152	2025-05-17 03:28:09.756
110	สมุย/อูมทอยส์oumsani	\N	\N	t	U51983daf7a8f4afd922685dc523f609a	oum sanida	https://profile.line-scdn.net/0h1zA9nN5eblVsQH8bdv0QKhwQbT9PMTdHFSJ1MlkVNDIGJSxUQyAkNllCMWdZcy0FRXMnMV5CNmZgUxkzchaSYWtwM2RQdigGQC4ktg	\N	\N	\N	2025-05-17 03:20:58.505	2025-06-02 04:51:36.898
125	สมุย/ปริมทิพย์ภาแอฟ+เมญ่า	\N	\N	t	Ua2abca6c7bf5dc1d7494953245b869ee	แอฟ+เมญ่า	https://profile.line-scdn.net/0hze7rsytVJUoaCzR22vtbNWpbJiA5enxYYT8-fyleLykhM2UfMDlsLCcMKXovaDJIYm9jJXgJLi0WGFIsBF3Zfh07eHsmPWMZNmVvqQ	\N	\N	\N	2025-05-17 03:25:07.446	2025-06-02 04:54:00.07
134	สมุย/เซ็นเตอร์วัน/มล	\N	\N	t	U69d675848f43a37fa2c4c9f9b8943f64	มล 💖🎉	https://profile.line-scdn.net/0hVjPcjWsdCUV9Ghg8cv13Og1KCi9ea1BXU38TcU8TVSYQIhoUAnwWJ0sZXnAVI08WA3tFKksYBCJxCX4jY0z1cXoqVHRBLE8WUXRDpg	\N	\N	\N	2025-05-17 03:31:14.152	2025-06-02 04:57:45.694
133	เกาะเต่า/สมชายSomchai	\N	\N	t	U6473f591acb87e24d7828ab608e61fab	Som chai Koh Tao	https://profile.line-scdn.net/0hcJkb8wZGPGVGGy_nZjdCGjZLPw9lamV3bSpyUXsaalEvKCxnYilzCyAbNwEpfHw7bnh7CnEdZVJKCEsDWE3AUUErYVR6LXo2anV2hg	\N	\N	\N	2025-05-17 03:31:14.152	2025-06-02 04:58:36.812
118	อ่าวนาง/เปิ้ลPle Paula	\N	\N	t	U91e48e366d364b8592eae37baf5dac08	Ple Paula	https://profile.line-scdn.net/0hJWvrNhfQFXhbCwNC5IprBytbFhJ4ekxqIGtdS28CGRxjM1t8cDlbSjsLH05vMwZ8JW1eHmYPH09XGGIeRV3pTFw7SElnPVMrd2Vfmw	\N	\N	\N	2025-05-17 03:25:07.446	2025-06-02 06:08:01.912
140	\N	\N	\N	t	Ud998b92f1d1d8d0b569e10de39e409f4	Nong	https://profile.line-scdn.net/0hr620xpcyLRkfSTz0GX1TZm8ZLnM8OHQLZHsxKH9PeylyfG9GYH1jLSxPdS93eD1GNCtqfy8dI34TWlp_AR_RLRh5cCgjf2tKMydn-g	\N	\N	\N	2025-05-17 03:31:14.152	2025-05-17 03:28:09.899
141	\N	\N	\N	t	U1bd7704b2ba20a2dd74253773152dbb3	Honey Bee	https://profile.line-scdn.net/0hFhKUWyIDGUdmLA6gmaJnOBZ8Gi1FXUBVGE4BI1MoQXFTSAsXSxpSJVZ-R3JbHApCGEheIlUpRX9qP24heHrlc2EcRHZaGl8USkJTpA	\N	\N	\N	2025-05-17 03:31:14.152	2025-05-17 03:28:10.068
142	\N	\N	\N	t	Ud29bdfc6ac720a551842ab88755696c9	น้ำผึ้งแอดมิน BKK🦄	https://profile.line-scdn.net/0h7eMqL-CaaEpgCHsRL-kWNRBYayBDeTFYHjkiKAIBNXsIbSxOT2klKwFcZX9cOS4bSzpyL1BcZXJsGx8sfl6Ufmc4NXtcPi4ZTGYiqQ	\N	\N	\N	2025-05-17 03:31:14.152	2025-05-17 03:28:10.227
143	\N	\N	\N	t	U68c7dda0bce0c1873451913236264824	pom	https://profile.line-scdn.net/0hXDzalq2eB2tXGBasIfJ5FCdIBAF0aV55KXxNDDAQDltvLRJoLn9MCTEQDAhqKUM9LHpMWGVKDVxbC3ANSU77X1AoWlprLkE4e3ZNiA	\N	\N	\N	2025-05-17 03:31:14.152	2025-05-17 03:28:10.388
144	\N	\N	\N	t	U6c609acd78e838f2598cffee0d8565b4	Pradip	https://profile.line-scdn.net/0huDMlM5K-KmtgFTuXdWZUFBBFKQFDZHN5SCZtCgEVdlkPI2g7GHBjWgcTJ1pZIT09RHowXwIcdllsBl0NfkPWX2cld1pcI2w4THtgiA	\N	\N	\N	2025-05-17 03:31:14.152	2025-05-17 03:28:10.566
145	\N	\N	\N	t	U823ac1f2e059c509d82ccf895cdbbca6	ปุ๋มมี่ มี่	https://profile.line-scdn.net/0hMHxdXVXKEmdVHTlGyD9sGCVNEQ12bEt1LS4ICTdJT1U9LlxmKSgNBGlKTwdhfVA0LHsPAGUYSgRZDmUBS0vuU1ItT1ZpK1Q0eXNYhA	\N	\N	\N	2025-05-17 03:31:14.152	2025-05-17 03:28:10.741
146	\N	\N	\N	t	U9deeafc6722898b75316b8495eb2ac02	สาโรจน์	https://profile.line-scdn.net/0hNaZ8Vm2DEU53QQQAUTNvMQcREiRUMEhcCHcOLxJCSH8dJVFPDCQNfUBGRnsZcQUdXS9aIBZGTyx7UmYoaRftenBxTH9Ld1cdWy9brQ	\N	\N	\N	2025-05-17 03:31:14.152	2025-05-17 03:28:10.899
147	\N	\N	\N	t	Uba29aee24fca37bfb2d45f7dcb66e7ae	เดือนเมษา	https://profile.line-scdn.net/0hrzjNOaNCLVVHNztOAqBTKjdnLj9kRnRHaFgwMXo-djVyBT4GP1hmYyE1cjZ6UzhXbQNqOydkc2BLJFozWWHRYUAHcGR7AWsGa1lntg	\N	\N	\N	2025-05-17 03:31:14.152	2025-05-17 03:28:11.9
148	\N	\N	\N	t	Ucdc2ea4540b80d12a109cfb16b837893	darabaworn	https://profile.line-scdn.net/0hO9vMBExUEBZbNAGUOwpuKCtkE3x4RUkEJVEMcDsyTXQ1B1EXJFULcm5kSSJhAl4QJVoMcm1mTyZ5by9DEg8cBhFqPH1jAzAbFRI-DzgzDjoIbx9FDiktJBI8OEEBcRxAHDQBcRdTHEUSZ1IWFlUtCR5kJ3oWDBQ6AmN8QF4GfpU0NmdDdlNZcWs0RiPj	\N	\N	\N	2025-05-17 03:31:14.152	2025-05-17 03:28:12.444
149	\N	\N	\N	t	Ueebf0f1f15b698bce903bada93a91383	ธนดล สุภิญโญ	https://profile.line-scdn.net/0h76yxwvtEaBlUAXsRlb8WZiRRa3N3cDELKmclLDYFMS87ZS5GemImfjJUNXxpNH9GfG8hKmQAMSBYEh9_SleULVMxNShoNy5KeG8i-g	\N	\N	\N	2025-05-17 03:31:14.152	2025-05-17 03:28:13.053
150	\N	\N	\N	t	Uc139d4cb2549671d137dcdca089a13b3	เจนเจ๊นนน🩷	https://profile.line-scdn.net/0hubuWwM02Kk1YLjrI02tUMih-KSd7X3NfcxhsKGwudC5hF2sYdB9kf297d3VlS2hJJk4wLT8qI3RUPV0rRnjWeV8ed3xkGGwedEBgrg	\N	\N	\N	2025-05-19 08:32:08.272	2025-05-19 08:32:08.272
151	\N	\N	\N	t	U38a82fd2953c2845f8ffd22b081abfbf	นาธานาเอล	https://profile.line-scdn.net/0h8z6N45E9Z1UbN3IAx-oZKmtnZD84Rj5HZ1IhYHkyajBxVSBQPlEuMixla2IlVCULYlh9ZnpgazAXJBAzBWGbYRwHOmQnASEGN1kttg	\N	\N	\N	2025-05-24 09:50:06.093	2025-05-24 09:50:06.093
45	กะรน/เกวลี เกตุสมัคFah	\N	\N	t	U5cd78c8ab4283696bb3521f8e9eee046	Fah💗	https://profile.line-scdn.net/0h0QDWcUCqb35pLn6JliERARl-bBRKXzZsFUooSAt7OUgGFnh6R0ElHQ8mYRxXHXggEEooH1V5MhllPRgYd3iTSm4eMk9VGCktRUAlnQ	\N	\N	\N	2025-05-17 03:07:50.981	2025-06-02 04:49:22.237
152	เสม็ด/เอื้อมพร/Uem	\N	\N	t	U8f83781187c6cecd3771376ba41404c2	Uem	https://profile.line-scdn.net/0hAWPtVizXHnh9DQA4IpJgRg1dHRJefEdqVmNYTUEIRk8VaFgsBTkBGEBaF0wQO18mUWlQShsIRUtfQzdpGAsNayleRAlCbSsnNA4WQ04JIxQ4STJbVW8odigNQxBcTRtnES0pZSZVIBgdQj56BjYtXDpJRBYfWz0pMVpyLng_cPsSD2ktUGpXH00NSE3F	\N	\N	\N	2025-06-01 02:43:03.776	2025-06-02 04:50:23.086
131	เสม็ด/เอื้อมพร/Uem	\N	\N	t	U8f83781187c6cecd3771376ba41404c2U8f83781187c6cecd3771376ba41404c2	Uem	https://profile.line-scdn.net/0hAWPteH83Hnh9DQ_7zxNgRg1dHRJefEdqVmNYTUEIRk8VaFgsBTkBGEBaF0wQO18mUWlQShsIRUtfQzdpGAsNayleRAlCbSsnNA4WQ04JIxQ4STJbVW8odigNQxBcTRtnES0pZSZVIBgdQj56BjYtXDpJRBYfWz0pMVpyLng_cPsSD2ktUGpXH00NSE3F	\N	\N	\N	2025-05-17 03:25:07.446	2025-06-02 04:50:23.086
84	เกาะพะงัน/โรมา/มาตี94	\N	\N	t	U65b4a25971d547c1a27f37181577879a	มาตี 94♾️	https://profile.line-scdn.net/0hvfWHZ1kiKUl6MTiyDNRXNgphKiNZQHBbAVYzfU43JSsUADxPBgduK0cxcX5PUjlIAV5kK01mfn92Il4vZGfVfX0BdHhGB28aVl9jqg	\N	\N	\N	2025-05-17 03:17:06.278	2025-06-02 06:02:54.645
69	ชะอำ/คุณเอ/แม่น้องกันต์	\N	\N	t	Ue4119760919cd388d63554b3bb7c994a	แม่น้องกันต์	https://profile.line-scdn.net/0hXPr8SXZsB39fQRQqHJ15AC8RBBV8MF5tIXdOEG1BChtgIUYteiFLGjhCDBxrIkApdydBGmsVWUlTUnAZQRf7S1hxWk5jd0Escy9NnA	\N	\N	\N	2025-05-17 03:12:22.13	2025-06-02 06:03:36.006
127	พังงา/ทัศนีย์  ศิริกุล	\N	\N	t	U1e3ddcd2f33cac4e5fc559a91c980b4f	ทัศนีย์  ศิริกุล	https://profile.line-scdn.net/0hHTOAhM0UF3tiODxh9VRpBBJoFBFBSU5pGV8MGgRoQRgKD1l9GVhQTwI7G0NWWAIsHlYPFV4wQUhuK2AdfG7rT2UISkpeDlEoTlZdmA	\N	\N	\N	2025-05-17 03:25:07.446	2025-06-02 06:08:47.316
153	\N	\N	\N	t	Uefd03f603a636a6c5ac80ea4ba2cd05f	Eik Sarin	https://profile.line-scdn.net/0hYJPpfFmxBmV9CRflswp4Ww1ZBQ9eeF93UDtJBUEOWFJFPBIzATtPVE5aDQIVaRJgWWpJABgADwdfVwN4LDUWR0kKDTwHWRhzOS09aCprARYeYSFlUT8uQTwNHwghWgRSVGg-cxtuOjI5cjkyNi0vdQtuUQs7Uj13I15qM3g7aOYSC3EwUG5PAk0JUFDF	\N	\N	\N	2025-06-06 07:17:00.496	2025-06-06 07:17:00.496
154	\N	\N	\N	t	U685638666ab6039619e98e0014d09c50	Nakharin1999	https://profile.line-scdn.net/0hhrm5Xf6tN11ATCeJms5JIjAcNDdjPW5PO3l8PXMcOjl9K3lePix4aHRNb2h5KCVbPC9_OScZam9MX0A7XhrLaUd8amx8enEObCJ9vg	\N	\N	\N	2025-06-23 01:42:41.101	2025-06-23 01:42:41.101
155	\N	\N	\N	t	Uef033d68215144d0c546c50077a9e1e6	Yuyee 🌴	https://profile.line-scdn.net/0hgJx5LZPEOGVVTC0DiSJGGiUcOw92PWF3KX0jBzRKZVZqKHhmfCMjAmJNblNofnw0ey4jB2YbblVZX08DSxrEUVJ8ZVRpen42eSJyhg	\N	\N	\N	2025-06-26 13:13:04.664	2025-06-26 13:13:04.664
156	\N	\N	\N	t	U0e97165177c28710cfe4e6dddee73e38	moon	https://profile.line-scdn.net/0hIp-xRTduFl8AAQXIEBBoIHBRFTUjcE9NeTINPjwBG2tqZlQPKGEMMGEBSGZpZFIJLGFeODEFH28MEmE5HlfqawcxS248N1AMLG9cvA	\N	\N	\N	2025-07-07 02:35:24.118	2025-07-07 02:35:24.118
157	\N	\N	\N	t	Ub3ae95b347883450322c40b563b35e9d	Amranee 5989	https://profile.line-scdn.net/0hI3pszdeZFhxdCggoPrZoIi1aFXZ-e08OImxYKmhYSy9hPFlCeTxdKWpaGiUzalQZcDxffj1ZQC5_OTMXNmsNBQxNGGQjTTY9Og08BjVxJioVcyQadic-MxtqJkJmTFc-BHAFczVQHGkZU1cQFjxbIDxqHUwiP1Mqdl16Slg4eJ8yCGFJcG1fe20KQCnl	\N	\N	\N	2025-07-21 02:26:07.836	2025-07-21 02:26:07.836
158	\N	\N	\N	t	Uc5f6c85b99e2223628e3ae319306e736	baytoe bhattarai	https://profile.line-scdn.net/0hvRuRFdMcKX1YKz3ZrtJXAih7Khd7WnBvIEVhS298fxgxHj1-Jh4xHT8ifh1nTGZ5IEw0T20uJE1UOF4bRn3VSV8bdExkHW8udEVjng	\N	\N	\N	2025-07-21 17:38:29.907	2025-07-21 17:38:29.907
159	\N	\N	\N	t	Ua6359d6980122d2a6917ca1d1ddf9590	Kob.  Sukhapong	https://profile.line-scdn.net/0hqlMaHoyLLkNgGDxrnq5QPBBILSlDaXdRG3hiJAVPcHpZf2xGGX4yd1FMdnEOej4WG3tnJAEYeHNsC1klfk7Sd2coc3JcLmgQTHZkoA	\N	\N	\N	2025-07-28 03:33:14.89	2025-07-28 03:33:14.89
160	\N	\N	\N	t	U3f1ad8a16a3c792276b4b2d7e4ce1bdc	pananปุริมค้าของเล่น	https://profile.line-scdn.net/0hrY__2WlRLXZyJjNDe5hTSAJ2LhxRV3RkX0RgFBMmekRIE2MiCxM3Q09yJBVGHmsoV0ZhFRMhJ0VQYjc8OgYlGDkjBwMyTy5cKwIhczl-DiNHdSF8GjM_SxlwBkY0TXZSODkrdRpVGB4ZRRElKTkLbiRdBT0WCmhTDHFBIHcUQ_UdJFojX0FkEUIme0PK	\N	\N	\N	2025-08-01 03:14:11.729	2025-08-01 03:14:11.729
161	\N	\N	\N	t	Uf765b25f5a54155f2ac4004f723df7ef	ก้อย อ้อมกอด	https://profile.line-scdn.net/0hmEbo9hEJMmpPFicBkJZMFT9GMQBsZ2t4MHl8DigfOVkmICZraiN6WXoWbAgmICA7Y3QvWH9Fbl1DBUUMUUDOXkgmb1tzIHQ5Y3h4iQ	\N	\N	\N	2025-08-05 04:53:48.976	2025-08-05 04:53:48.976
162	\N	\N	\N	t	U33f8c4226826ea7be2009775fce27d0c	/\\/€€|_👉Gautam👈	https://profile.line-scdn.net/0hXErOr0X2B2pfNiq86hl5FS9mBAB8R154dgMdC2hhX1pmU0Y0dwdICmpiCg1rA0k1IwRKDjk2DltTJXAMQWD7XlgGWltjAEE5c1hNiQ	\N	\N	\N	2025-09-09 07:58:38.644	2025-09-09 07:58:38.644
163	\N	\N	\N	t	U04758f15a4f6989e7de1492148174616	Risa Let	https://profile.line-scdn.net/0hvupvic8uKVpdDzcRAPJXJS1fKjB-fnBIdT1hPDsLdT9nPmoEJTkzPWFcf2Izb2hbIjluOm9YJGxRHF48Q1nVblo_dGthOW8JcWFjuQ	\N	\N	\N	2025-09-12 08:17:19.696	2025-09-12 08:17:19.696
164	\N	\N	\N	t	U2b1d588cd38ed1442fd9db024d1acb53	PAM	https://profile.line-scdn.net/0hZlTNbXjRBUN5NxewfwV7PAlnBilaRlxRXFNIdRkwDycQB0YVBQFJIRg_DnsWBxJHU1hJcRw3Wyd1JHIlZ2H5d34HWHJFAUMQVVlPoA	\N	\N	\N	2025-10-01 15:55:22.818	2025-10-01 15:55:22.818
165	\N	\N	\N	t	U2ca582c421261f59fe584e72f5e9d642	𝐹𝑒𝑟.𝑛𝑖𝑡𝑡ℎ𝑎🦋	https://profile.line-scdn.net/0hskpbw-LkLERdGzLruTVSei1LLy5-anVWISlmdm0SIHMyKz5Bci82Jj8SICc1Kz8bJHhlcDsfIHZ_XQhSK34LVglALB1nYAJAdRwmazpcFA0rKjBPGRUHJAMaLXEOeSNRGRU0RjAZGwc_dBtUcw0AJD1-ExoLUzgTBkxAElgpQscyGVsRcHxlI20benHl	\N	\N	\N	2025-10-09 03:34:39.898	2025-10-09 03:34:39.898
166	\N	\N	\N	t	Uc2ec3c40bd21e032b1c017edd12c38df	sunnykaflay	https://profile.line-scdn.net/0hgW7KQaPgOHgaMi_g4aBGB2piOxI5Q2FqZFx1SytmNRxwC355Pl1_GS9iNEAgVnZ5NgclSSc1MR0WIU8eBGTETB0CZUkmBH4rNlxymw	\N	\N	\N	2025-10-13 05:24:52.03	2025-10-13 05:24:52.03
167	\N	\N	\N	t	U44f03a90bb256a1c3f7c6b11e5e680b4	FAN’N	https://profile.line-scdn.net/0hoWbB10BUMHhPOyIGmbROBz9rMxJsSmlqN1QqHnhvZhwiCHUsNw92SX1sPkh7W3B9a1p5Gy0yPUFDKEceUW3MTEgLbUlzDXYrY1V6mw	\N	\N	\N	2025-10-17 05:24:01.81	2025-10-17 05:24:01.81
168	\N	\N	\N	t	U3b837c80e1ab81e6185e7fdea5ba95a3	Stephan	https://profile.line-scdn.net/0hb5fR5L9cPRpLKy2Goc1DZTt7PnBoWmQIbk4gLHsiMCIhSXwbYU10dXopNCx0Syoebkknfn0qMS5HOEp8VX3BLkwbYCt3HXtJZ0V3-Q	\N	\N	\N	2025-10-31 05:54:40.719	2025-10-31 05:54:40.719
169	\N	\N	\N	t	U894862e833aea9deff4a42e11c1c368b	Smit	https://profile.line-scdn.net/0hf6LJjWGFORlhMy4lxAxHZhFjOnNCQmALSFZ_Klc0ZS5ZUH9LGlMmdgM2ZyEJB3kcGFx1d1E3M3ptIE5_f2XFLWYDZChdBX9KTV1z-g	\N	\N	\N	2025-11-18 12:24:06.637	2025-11-18 12:24:06.637
170	\N	\N	\N	t	U04db2e0084447b3c37833ccd1c5bfe33	Rangsiya Phonwiset	https://profile.line-scdn.net/0h-xJqxRiPcldnCGxu_rYMaRdYcT1EeStFG2g7NVQAKTVdMTwHSDw4MFENKGdbMDNVS2ptOFAPKDNFfm15HWxvWQt3cGYbY2p0ExU6MS5LMAM_MGpyLjptMgFYaD45WGUDLxBeORB6ehgGPlJoMC9DaFVbby4BRDxSJV8eAWI6HNQICgUCSm87MFcIJGLf	\N	\N	\N	2025-11-19 03:29:42.377	2025-11-19 03:29:42.377
171	\N	\N	\N	t	U073c70df7beacd11b0addcba571b8df3	หนูนิวส์ 彡🧺🧸🪞 ◡̈ യ	https://profile.line-scdn.net/0hK-dnPniDFAJJFwq3PAxqPDlHF2hqZk0QZSJcYigeQjsmLgdSNyJYZH4QSTYgJltUZiEMMHRAQmdrTBA_BDdeFgN0NFQDeyMDPywoMCFnHk8TejstZCkAZjpVMUsWeQRRLAMDEChMAkQOeQ80IwwvPXRLOGAaWgcOZUB4VEwleoEmFWNXZHBdZXkXQjfx	\N	\N	\N	2025-11-22 05:24:52.761	2025-11-22 05:24:52.761
172	\N	\N	\N	t	U8e29bd188f79c4773d56187215323962	nan.ronnakorn	https://profile.line-scdn.net/0hr11Uc6Y8LR4cLAFxZUhTYWx8LnQ_XXQMMB5ifiB-e3snSTgdZEtgfSgtdHsoSTlJZx1hfXp5cn4QP1p4AnrRKhsccC8gGmtNMEJn_Q	\N	\N	\N	2025-12-23 01:42:48.867	2025-12-23 01:42:48.867
173	\N	\N	\N	t	U5bc6fc7704a9d07034cebf01bca591c2	โส	https://profile.line-scdn.net/0hN2O0EEJzER1iSQHDh8VvYhIZEndBOEgPTildL1EaHShYLFdOHSkOeQcaGiVdeAJLHCpeeVNLS31uWmZ7fB_tKWV5TCxef1dOTidb_g	\N	\N	\N	2025-12-24 04:37:24.972	2025-12-24 04:37:24.972
174	\N	\N	\N	t	U56e936496b48530fd07ee3645d1ae658	น้อง‘สอน 🐰💬⭐️	https://profile.line-scdn.net/0hJNevc8MfFWFIDwoY-zRrXzhfFgtrfkxzM2EJBS0OSVV8bVFkND4NV31YGFkhNlY3bG8PUH4JHlNqRCZcZRwfdQFPADQuYFV3YRICB31JSjEJSjF3FAACYxRyNFImSAhZY28yeHR_DBMnYjdtJzsiGxhUDiUvVg1LPFh5N009e-InDWI0ZWhcBngPQ1Tw	\N	\N	\N	2025-12-24 05:21:23.379	2025-12-24 05:21:23.379
175	\N	\N	\N	t	Uca33b59108db0988f9154a171f84e1e2	Bhai	https://profile.line-scdn.net/0hF_P_rq1uGXB9Jge6JDtnTg12GhpeV0BiBUMGQR9xEBMXRQwgBEYBHxshFURHE111ARMGEUAuF0NfTAxRCDoEaU5wGBAgXwJuCQZUVipiODhETVt5OVxRXjNaOyc2E1dGOgcwSRBwJzcUdF9uLRorQQMkA1wSZRtvAnF1JngUd_MSJG4lUEFQF00mT0XF	\N	\N	\N	2025-12-24 08:26:07.367	2025-12-24 08:26:07.367
\.


--
-- Data for Name: User_Acconts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."User_Acconts" (id, "userId", provider, provider_account_id, refresh_token, access_token, expires_at, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: User_Address; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."User_Address" (id, "userId", "addressId", is_default, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: User_Line_Group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."User_Line_Group" (id, "groupId", "userId", "lineRoleId", "joinedAt") FROM stdin;
\.


--
-- Data for Name: User_Line_Task; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."User_Line_Task" (id, title, description, "groupId", "userId", "statusId", "createdAt", "updatedAt") FROM stdin;
1		\N	1	\N	1	2025-03-12 05:30:24.43	2025-03-12 05:31:00.313
2		\N	2	1	1	2025-03-12 05:31:00.313	2025-03-12 05:30:25.634
\.


--
-- Data for Name: User_Payment_Method; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."User_Payment_Method" (id, "userId", "paymentTypeId", provider, "accountNumber", "accountName", "bankName", "qrCodeImageUrl", expiry_date, is_default, "tokenizedData", is_verified, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: User_Product_Favorites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."User_Product_Favorites" (id, "userId", "productId", "createdAt", "updatedAt") FROM stdin;
120	46	359	2025-06-09 12:08:55.241	2025-06-09 12:08:55.241
122	77	278	2025-06-16 04:52:39.287	2025-06-16 04:52:39.287
123	98	672	2025-06-19 14:18:54.208	2025-06-19 14:18:54.208
124	98	174	2025-06-19 14:33:59.22	2025-06-19 14:33:59.22
125	98	171	2025-06-19 14:34:32.272	2025-06-19 14:34:32.272
126	98	692	2025-06-19 14:37:33.291	2025-06-19 14:37:33.291
127	98	355	2025-06-19 14:48:27.33	2025-06-19 14:48:27.33
128	98	347	2025-06-19 14:52:09.744	2025-06-19 14:52:09.744
129	98	324	2025-06-19 14:53:15.542	2025-06-19 14:53:15.542
130	98	323	2025-06-19 14:53:31.529	2025-06-19 14:53:31.529
131	98	321	2025-06-19 14:54:05.437	2025-06-19 14:54:05.437
132	98	225	2025-06-19 14:55:06.76	2025-06-19 14:55:06.76
133	98	176	2025-06-19 14:56:49.848	2025-06-19 14:56:49.848
134	98	153	2025-06-19 14:57:15.183	2025-06-19 14:57:15.183
135	98	318	2025-06-19 14:59:11.445	2025-06-19 14:59:11.445
136	98	118	2025-06-19 15:00:36.543	2025-06-19 15:00:36.543
137	98	103	2025-06-19 15:01:28.895	2025-06-19 15:01:28.895
138	70	269	2025-06-23 05:08:24.473	2025-06-23 05:08:24.473
140	70	221	2025-06-23 05:27:00.866	2025-06-23 05:27:00.866
141	70	214	2025-06-23 05:27:27.049	2025-06-23 05:27:27.049
143	70	166	2025-06-23 05:28:40.547	2025-06-23 05:28:40.547
144	70	164	2025-06-23 05:29:12.2	2025-06-23 05:29:12.2
145	70	151	2025-06-23 05:30:01.179	2025-06-23 05:30:01.179
146	70	90	2025-06-23 05:30:51.762	2025-06-23 05:30:51.762
147	70	76	2025-06-23 05:34:03.842	2025-06-23 05:34:03.842
148	70	66	2025-06-23 05:34:31.466	2025-06-23 05:34:31.466
149	70	52	2025-06-23 05:34:58.329	2025-06-23 05:34:58.329
150	70	51	2025-06-23 05:35:26.564	2025-06-23 05:35:26.564
151	70	3	2025-06-23 05:36:22.562	2025-06-23 05:36:22.562
152	70	125	2025-06-23 05:37:56.177	2025-06-23 05:37:56.177
153	70	132	2025-06-23 05:38:20.47	2025-06-23 05:38:20.47
154	111	508	2025-06-27 12:04:18.239	2025-06-27 12:04:18.239
155	111	486	2025-06-27 12:05:24.799	2025-06-27 12:05:24.799
156	111	465	2025-06-27 12:06:05.099	2025-06-27 12:06:05.099
157	111	685	2025-06-28 05:02:55.608	2025-06-28 05:02:55.608
158	87	696	2025-07-01 11:13:57.643	2025-07-01 11:13:57.643
159	87	695	2025-07-01 11:15:13.36	2025-07-01 11:15:13.36
163	87	356	2025-07-01 11:23:50.21	2025-07-01 11:23:50.21
165	87	320	2025-07-01 11:24:53.477	2025-07-01 11:24:53.477
101	3	8	2025-05-16 15:57:45.496	2025-05-16 15:57:45.496
102	3	10	2025-05-16 15:57:47.64	2025-05-16 15:57:47.64
103	3	387	2025-05-16 15:57:49.22	2025-05-16 15:57:49.22
104	3	389	2025-05-16 15:57:50.79	2025-05-16 15:57:50.79
105	3	391	2025-05-16 15:57:52.4	2025-05-16 15:57:52.4
166	87	319	2025-07-01 11:25:20.017	2025-07-01 11:25:20.017
167	87	318	2025-07-01 11:25:37.417	2025-07-01 11:25:37.417
106	3	393	2025-05-16 15:57:53.87	2025-05-16 15:57:53.87
114	98	152	2025-05-22 12:20:25.555	2025-05-22 12:20:25.555
116	98	150	2025-05-22 12:21:10.283	2025-05-22 12:21:10.283
170	87	274	2025-07-01 11:28:06.146	2025-07-01 11:28:06.146
172	87	273	2025-07-01 11:29:01.171	2025-07-01 11:29:01.171
173	87	272	2025-07-01 11:29:05.95	2025-07-01 11:29:05.95
174	87	271	2025-07-01 11:29:46.862	2025-07-01 11:29:46.862
175	87	270	2025-07-01 11:31:10.376	2025-07-01 11:31:10.376
176	87	269	2025-07-01 11:31:48.103	2025-07-01 11:31:48.103
177	87	268	2025-07-01 11:32:09.287	2025-07-01 11:32:09.287
178	87	248	2025-07-01 11:33:20.381	2025-07-01 11:33:20.381
179	87	214	2025-07-01 11:34:15.638	2025-07-01 11:34:15.638
181	87	69	2025-07-01 11:39:22.73	2025-07-01 11:39:22.73
182	87	68	2025-07-01 11:40:08.54	2025-07-01 11:40:08.54
185	87	59	2025-07-01 11:42:24.808	2025-07-01 11:42:24.808
186	74	166	2025-07-02 12:11:29.088	2025-07-02 12:11:29.088
187	74	678	2025-07-02 12:12:17.137	2025-07-02 12:12:17.137
188	74	361	2025-07-02 12:13:39.914	2025-07-02 12:13:39.914
189	74	255	2025-07-02 12:15:34.178	2025-07-02 12:15:34.178
190	156	149	2025-07-07 02:56:50.322	2025-07-07 02:56:50.322
191	156	149	2025-07-07 02:56:50.322	2025-07-07 02:56:50.322
192	132	256	2025-07-12 01:47:23.655	2025-07-12 01:47:23.655
193	132	254	2025-07-12 01:56:53.927	2025-07-12 01:56:53.927
194	74	271	2025-07-12 14:33:29.764	2025-07-12 14:33:29.764
195	74	219	2025-07-12 14:35:50.606	2025-07-12 14:35:50.606
196	74	182	2025-07-12 14:36:25.65	2025-07-12 14:36:25.65
197	74	225	2025-07-12 14:38:51.21	2025-07-12 14:38:51.21
198	74	215	2025-07-12 14:43:49.564	2025-07-12 14:43:49.564
200	87	254	2025-07-19 17:10:06.15	2025-07-19 17:10:06.15
201	87	253	2025-07-19 17:11:09.458	2025-07-19 17:11:09.458
202	87	252	2025-07-19 17:11:26.052	2025-07-19 17:11:26.052
203	87	218	2025-07-19 17:12:35.45	2025-07-19 17:12:35.45
204	87	177	2025-07-19 17:13:57.996	2025-07-19 17:13:57.996
205	87	149	2025-07-19 17:14:49.691	2025-07-19 17:14:49.691
208	74	707	2025-07-22 09:17:40.061	2025-07-22 09:17:40.061
210	133	272	2025-07-23 04:28:18.152	2025-07-23 04:28:18.152
224	156	110	2025-07-25 01:30:06.025	2025-07-25 01:30:06.025
225	71	685	2025-07-27 07:34:12.414	2025-07-27 07:34:12.414
226	88	96	2025-07-27 14:46:30.142	2025-07-27 14:46:30.142
230	27	720	2025-08-02 07:59:33.064	2025-08-02 07:59:33.064
231	111	182	2025-08-03 07:04:28.163	2025-08-03 07:04:28.163
232	111	181	2025-08-03 07:04:32.172	2025-08-03 07:04:32.172
234	111	187	2025-08-03 07:04:38.28	2025-08-03 07:04:38.28
236	111	171	2025-08-03 07:04:43.966	2025-08-03 07:04:43.966
237	111	174	2025-08-03 07:04:46.73	2025-08-03 07:04:46.73
240	100	363	2025-08-06 08:40:49.801	2025-08-06 08:40:49.801
242	126	267	2025-08-11 10:01:14.368	2025-08-11 10:01:14.368
243	126	269	2025-08-11 10:01:17.502	2025-08-11 10:01:17.502
246	126	361	2025-08-20 02:31:51.95	2025-08-20 02:31:51.95
247	126	359	2025-08-20 02:31:55.121	2025-08-20 02:31:55.121
248	126	358	2025-08-20 02:32:00.267	2025-08-20 02:32:00.267
249	126	357	2025-08-20 02:32:01.395	2025-08-20 02:32:01.395
250	126	356	2025-08-20 02:32:02.49	2025-08-20 02:32:02.49
251	126	332	2025-08-20 02:32:31.607	2025-08-20 02:32:31.607
252	126	271	2025-08-20 02:34:28.988	2025-08-20 02:34:28.988
253	126	270	2025-08-20 02:34:30.807	2025-08-20 02:34:30.807
254	126	268	2025-08-20 02:34:32.111	2025-08-20 02:34:32.111
255	126	278	2025-08-20 02:34:41.161	2025-08-20 02:34:41.161
256	126	222	2025-08-20 02:35:27.219	2025-08-20 02:35:27.219
257	74	308	2025-09-14 00:44:17.038	2025-09-14 00:44:17.038
258	74	310	2025-09-14 00:45:03.15	2025-09-14 00:45:03.15
259	74	309	2025-09-14 00:45:31.751	2025-09-14 00:45:31.751
260	74	304	2025-09-14 00:45:54.107	2025-09-14 00:45:54.107
261	74	47	2025-09-14 00:49:14.663	2025-09-14 00:49:14.663
262	80	347	2025-09-18 02:34:34.84	2025-09-18 02:34:34.84
263	82	350	2025-09-27 13:28:19.286	2025-09-27 13:28:19.286
280	62	271	2025-10-04 15:10:08.335	2025-10-04 15:10:08.335
281	160	261	2025-10-06 08:09:57.665	2025-10-06 08:09:57.665
282	160	180	2025-10-06 08:10:06.751	2025-10-06 08:10:06.751
283	160	695	2025-10-06 08:11:59.329	2025-10-06 08:11:59.329
284	160	697	2025-10-06 08:12:17.807	2025-10-06 08:12:17.807
285	160	179	2025-10-06 08:24:10.008	2025-10-06 08:24:10.008
286	160	178	2025-10-06 08:24:11.282	2025-10-06 08:24:11.282
287	160	154	2025-10-06 08:40:03.143	2025-10-06 08:40:03.143
288	160	153	2025-10-06 08:40:05.345	2025-10-06 08:40:05.345
289	160	89	2025-10-06 08:43:58.5	2025-10-06 08:43:58.5
290	74	357	2025-10-13 03:20:17.061	2025-10-13 03:20:17.061
291	74	247	2025-10-13 03:24:36.245	2025-10-13 03:24:36.245
292	98	356	2025-10-13 07:28:05.098	2025-10-13 07:28:05.098
293	50	551	2025-10-14 03:01:23.95	2025-10-14 03:01:23.95
294	50	552	2025-10-14 03:01:42.085	2025-10-14 03:01:42.085
296	50	493	2025-10-14 03:02:05.986	2025-10-14 03:02:05.986
297	50	492	2025-10-14 03:02:07.606	2025-10-14 03:02:07.606
298	50	490	2025-10-14 03:02:14.705	2025-10-14 03:02:14.705
299	50	489	2025-10-14 03:02:16.245	2025-10-14 03:02:16.245
300	50	484	2025-10-14 03:02:23.706	2025-10-14 03:02:23.706
301	50	404	2025-10-14 03:03:32.431	2025-10-14 03:03:32.431
303	50	399	2025-10-14 03:03:51.78	2025-10-14 03:03:51.78
304	50	416	2025-10-14 03:04:05.612	2025-10-14 03:04:05.612
305	58	181	2025-10-15 07:13:03.434	2025-10-15 07:13:03.434
307	55	673	2025-10-21 08:13:30.332	2025-10-21 08:13:30.332
308	55	385	2025-10-21 08:14:19.17	2025-10-21 08:14:19.17
309	55	380	2025-10-21 08:14:36.057	2025-10-21 08:14:36.057
310	50	567	2025-10-21 13:06:33.109	2025-10-21 13:06:33.109
311	50	672	2025-10-21 13:07:53.804	2025-10-21 13:07:53.804
312	50	673	2025-10-21 13:07:56.304	2025-10-21 13:07:56.304
313	50	356	2025-10-21 13:08:04.97	2025-10-21 13:08:04.97
314	50	270	2025-10-21 13:12:13.942	2025-10-21 13:12:13.942
316	64	214	2025-10-29 11:36:43.758	2025-10-29 11:36:43.758
317	64	66	2025-10-29 11:39:45.823	2025-10-29 11:39:45.823
318	64	195	2025-10-29 14:37:49.677	2025-10-29 14:37:49.677
319	64	359	2025-10-29 14:43:12.628	2025-10-29 14:43:12.628
320	64	361	2025-10-30 03:50:07.505	2025-10-30 03:50:07.505
321	64	695	2025-10-30 03:50:21.232	2025-10-30 03:50:21.232
322	64	215	2025-10-30 03:51:41.291	2025-10-30 03:51:41.291
323	64	181	2025-10-30 03:52:18.693	2025-10-30 03:52:18.693
324	64	177	2025-10-30 03:52:25.304	2025-10-30 03:52:25.304
325	64	75	2025-10-30 03:53:31.909	2025-10-30 03:53:31.909
326	64	62	2025-10-30 03:54:02.514	2025-10-30 03:54:02.514
327	64	61	2025-10-30 03:54:03.889	2025-10-30 03:54:03.889
328	64	40	2025-10-30 03:54:25.039	2025-10-30 03:54:25.039
329	64	15	2025-10-30 03:55:05.8	2025-10-30 03:55:05.8
330	64	13	2025-10-30 03:55:12.034	2025-10-30 03:55:12.034
331	64	12	2025-10-30 03:55:15.281	2025-10-30 03:55:15.281
332	126	736	2025-11-03 02:06:27.239	2025-11-03 02:06:27.239
333	126	737	2025-11-03 02:06:39.323	2025-11-03 02:06:39.323
334	126	735	2025-11-03 02:06:53.884	2025-11-03 02:06:53.884
335	64	709	2025-11-03 04:12:05.393	2025-11-03 04:12:05.393
336	64	707	2025-11-03 04:12:10.297	2025-11-03 04:12:10.297
337	64	697	2025-11-03 04:12:46.071	2025-11-03 04:12:46.071
338	76	736	2025-11-17 04:00:25.208	2025-11-17 04:00:25.208
339	76	735	2025-11-17 04:01:03.887	2025-11-17 04:01:03.887
340	76	734	2025-11-17 05:24:53.081	2025-11-17 05:24:53.081
341	71	674	2025-11-18 04:25:33.132	2025-11-18 04:25:33.132
342	169	688	2025-11-18 12:28:21.673	2025-11-18 12:28:21.673
345	111	90	2025-11-23 07:41:45.856	2025-11-23 07:41:45.856
346	111	91	2025-11-23 07:41:48.108	2025-11-23 07:41:48.108
347	111	88	2025-11-23 07:41:53.286	2025-11-23 07:41:53.286
348	111	89	2025-11-23 07:41:54.486	2025-11-23 07:41:54.486
352	111	82	2025-11-23 07:42:11.134	2025-11-23 07:42:11.134
358	111	53	2025-11-23 07:43:02.247	2025-11-23 07:43:02.247
360	95	736	2025-11-26 03:47:28.477	2025-11-26 03:47:28.477
361	95	356	2025-11-26 03:53:40.071	2025-11-26 03:53:40.071
363	64	360	2025-11-29 06:30:55.2	2025-11-29 06:30:55.2
365	95	379	2025-12-04 17:49:51.632	2025-12-04 17:49:51.632
366	114	732	2025-12-14 06:44:05.656	2025-12-14 06:44:05.656
367	114	729	2025-12-14 06:45:04.013	2025-12-14 06:45:04.013
368	114	740	2025-12-14 06:45:59.135	2025-12-14 06:45:59.135
369	51	255	2025-12-19 02:05:05.345	2025-12-19 02:05:05.345
370	55	269	2025-12-20 07:56:39.41	2025-12-20 07:56:39.41
371	111	50	2025-12-21 02:55:54.629	2025-12-21 02:55:54.629
375	111	221	2025-12-21 02:57:22.863	2025-12-21 02:57:22.863
376	111	222	2025-12-21 02:57:25.145	2025-12-21 02:57:25.145
377	111	219	2025-12-21 02:57:26.749	2025-12-21 02:57:26.749
378	111	224	2025-12-21 02:57:30.063	2025-12-21 02:57:30.063
379	111	226	2025-12-21 02:57:33.405	2025-12-21 02:57:33.405
380	111	225	2025-12-21 02:57:35.578	2025-12-21 02:57:35.578
381	111	246	2025-12-21 02:57:40.453	2025-12-21 02:57:40.453
383	111	256	2025-12-21 02:57:49.252	2025-12-21 02:57:49.252
385	111	262	2025-12-21 02:57:58.708	2025-12-21 02:57:58.708
386	111	265	2025-12-21 02:58:03.381	2025-12-21 02:58:03.381
387	111	266	2025-12-21 02:58:05.297	2025-12-21 02:58:05.297
388	111	268	2025-12-21 02:58:08.557	2025-12-21 02:58:08.557
389	111	271	2025-12-21 02:58:13.587	2025-12-21 02:58:13.587
392	111	363	2025-12-21 05:53:02.44	2025-12-21 05:53:02.44
393	111	483	2025-12-21 14:15:52.032	2025-12-21 14:15:52.032
395	111	481	2025-12-21 14:16:02.625	2025-12-21 14:16:02.625
396	111	473	2025-12-21 14:16:16.135	2025-12-21 14:16:16.135
398	143	696	2025-12-22 14:27:14.485	2025-12-22 14:27:14.485
399	82	267	2025-12-23 04:26:28.844	2025-12-23 04:26:28.844
400	82	269	2025-12-23 04:26:33.802	2025-12-23 04:26:33.802
401	82	263	2025-12-23 04:33:16.412	2025-12-23 04:33:16.412
415	44	743	2025-12-23 07:11:40.063	2025-12-23 07:11:40.063
416	44	741	2025-12-23 07:11:41.016	2025-12-23 07:11:41.016
417	44	733	2025-12-23 07:13:00.235	2025-12-23 07:13:00.235
418	44	718	2025-12-23 07:13:11.542	2025-12-23 07:13:11.542
419	44	707	2025-12-23 07:13:31.443	2025-12-23 07:13:31.443
420	44	696	2025-12-23 07:13:56.397	2025-12-23 07:13:56.397
421	44	697	2025-12-23 07:14:11.826	2025-12-23 07:14:11.826
422	44	361	2025-12-23 07:18:10.487	2025-12-23 07:18:10.487
423	44	359	2025-12-23 07:18:32.016	2025-12-23 07:18:32.016
424	44	270	2025-12-23 07:20:41.74	2025-12-23 07:20:41.74
425	44	263	2025-12-23 07:21:54.949	2025-12-23 07:21:54.949
426	44	140	2025-12-23 07:22:49.644	2025-12-23 07:22:49.644
427	44	132	2025-12-23 07:22:59.995	2025-12-23 07:22:59.995
428	44	25	2025-12-23 07:24:05.205	2025-12-23 07:24:05.205
429	44	23	2025-12-23 07:24:06.689	2025-12-23 07:24:06.689
430	44	21	2025-12-23 07:24:07.755	2025-12-23 07:24:07.755
431	44	24	2025-12-23 07:24:09.834	2025-12-23 07:24:09.834
432	44	22	2025-12-23 07:24:10.602	2025-12-23 07:24:10.602
433	44	20	2025-12-23 07:26:02.107	2025-12-23 07:26:02.107
434	44	29	2025-12-23 07:28:42.434	2025-12-23 07:28:42.434
435	44	121	2025-12-23 07:30:50.578	2025-12-23 07:30:50.578
436	44	73	2025-12-23 07:31:27.73	2025-12-23 07:31:27.73
437	44	46	2025-12-23 07:32:05.663	2025-12-23 07:32:05.663
438	44	45	2025-12-23 07:32:07.106	2025-12-23 07:32:07.106
439	44	709	2025-12-23 07:34:43.551	2025-12-23 07:34:43.551
442	82	303	2025-12-24 01:32:27.37	2025-12-24 01:32:27.37
443	98	254	2025-12-24 18:37:32.559	2025-12-24 18:37:32.559
444	98	381	2025-12-25 07:01:29.276	2025-12-25 07:01:29.276
445	98	384	2025-12-25 07:01:53.332	2025-12-25 07:01:53.332
446	98	383	2025-12-25 07:01:55.7	2025-12-25 07:01:55.7
447	98	382	2025-12-25 07:01:57.442	2025-12-25 07:01:57.442
448	98	380	2025-12-25 07:01:59.379	2025-12-25 07:01:59.379
449	98	385	2025-12-25 07:02:07.2	2025-12-25 07:02:07.2
450	98	674	2025-12-25 07:02:16.057	2025-12-25 07:02:16.057
451	92	743	2026-01-05 00:40:48.975	2026-01-05 00:40:48.975
453	92	706	2026-01-05 00:46:16.493	2026-01-05 00:46:16.493
454	92	731	2026-01-05 00:46:38.435	2026-01-05 00:46:38.435
455	92	696	2026-01-05 00:47:36.67	2026-01-05 00:47:36.67
456	92	733	2026-01-05 00:52:11.705	2026-01-05 00:52:11.705
457	92	318	2026-01-05 00:54:04.285	2026-01-05 00:54:04.285
458	92	369	2026-01-05 00:54:36.668	2026-01-05 00:54:36.668
459	92	299	2026-01-05 00:56:32.531	2026-01-05 00:56:32.531
460	92	691	2026-01-05 00:59:55.421	2026-01-05 00:59:55.421
461	92	361	2026-01-05 01:00:20.426	2026-01-05 01:00:20.426
462	92	288	2026-01-05 01:01:09.231	2026-01-05 01:01:09.231
463	92	289	2026-01-05 01:01:10.928	2026-01-05 01:01:10.928
464	92	286	2026-01-05 01:01:17.506	2026-01-05 01:01:17.506
465	92	281	2026-01-05 01:01:30.156	2026-01-05 01:01:30.156
466	92	149	2026-01-05 01:08:57.581	2026-01-05 01:08:57.581
467	92	150	2026-01-05 01:08:59.55	2026-01-05 01:08:59.55
468	92	122	2026-01-05 01:09:51.007	2026-01-05 01:09:51.007
469	92	121	2026-01-05 01:10:02.789	2026-01-05 01:10:02.789
470	92	119	2026-01-05 01:10:16.601	2026-01-05 01:10:16.601
471	92	54	2026-01-05 01:13:05.685	2026-01-05 01:13:05.685
472	92	39	2026-01-05 01:13:37.409	2026-01-05 01:13:37.409
473	32	742	2026-01-07 02:05:45.392	2026-01-07 02:05:45.392
\.


--
-- Data for Name: User_Product_Reviews; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."User_Product_Reviews" (id, "userId", "orderLineId", rating, comment, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: User_Roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."User_Roles" (id, "userId", "roleId", "createdAt", "updatedAt") FROM stdin;
1	1	1	2025-02-13 06:32:47.31	2025-02-13 06:32:47.31
\.


--
-- Data for Name: User_Sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."User_Sessions" (id, "userId", expires_at, "createdAt") FROM stdin;
\.


--
-- Data for Name: Verification_Tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Verification_Tokens" (id, identifier, token, expires_at, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Name: Address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Address_id_seq"', 1, false);


--
-- Name: Category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Category_id_seq"', 18, true);


--
-- Name: Country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Country_id_seq"', 1, false);


--
-- Name: DealOfTheDay_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."DealOfTheDay_id_seq"', 1, false);


--
-- Name: Language_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Language_id_seq"', 2, true);


--
-- Name: Line_Group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Line_Group_id_seq"', 2, true);


--
-- Name: Line_Role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Line_Role_id_seq"', 1, false);


--
-- Name: Order_Line_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Order_Line_id_seq"', 1, false);


--
-- Name: Order_Status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Order_Status_id_seq"', 1, false);


--
-- Name: Organize_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Organize_id_seq"', 2, true);


--
-- Name: PackageType_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."PackageType_id_seq"', 3, true);


--
-- Name: Packgage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Packgage_id_seq"', 6, true);


--
-- Name: Payment_Status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Payment_Status_id_seq"', 1, false);


--
-- Name: Payment_Type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Payment_Type_id_seq"', 1, false);


--
-- Name: Product_Availability_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Product_Availability_id_seq"', 2, true);


--
-- Name: Product_Category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Product_Category_id_seq"', 225, true);


--
-- Name: Product_Name_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Product_Name_id_seq"', 1329, true);


--
-- Name: Product_Tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Product_Tag_id_seq"', 120, true);


--
-- Name: Product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Product_id_seq"', 744, true);


--
-- Name: Products_Color_Detail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Products_Color_Detail_id_seq"', 199, true);


--
-- Name: Products_Color_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Products_Color_id_seq"', 1492, true);


--
-- Name: Products_Detail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Products_Detail_id_seq"', 656, true);


--
-- Name: Products_Image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Products_Image_id_seq"', 1951, true);


--
-- Name: Products_Size_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Products_Size_id_seq"', 525, true);


--
-- Name: Promotion_Category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Promotion_Category_id_seq"', 1, false);


--
-- Name: Promotion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Promotion_id_seq"', 1, false);


--
-- Name: PublicRelationMessage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."PublicRelationMessage_id_seq"', 1, false);


--
-- Name: Role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Role_id_seq"', 3, true);


--
-- Name: Shipping_Method_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Shipping_Method_id_seq"', 1, false);


--
-- Name: Shop_Order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Shop_Order_id_seq"', 1, false);


--
-- Name: Shopping_Cart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Shopping_Cart_id_seq"', 159, true);


--
-- Name: Shopping_Product_cart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Shopping_Product_cart_id_seq"', 11822, true);


--
-- Name: Size_Unit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Size_Unit_id_seq"', 3, true);


--
-- Name: Size_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Size_id_seq"', 36, true);


--
-- Name: Tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Tag_id_seq"', 19, true);


--
-- Name: Task_Status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Task_Status_id_seq"', 1, true);


--
-- Name: User_Acconts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."User_Acconts_id_seq"', 1, false);


--
-- Name: User_Address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."User_Address_id_seq"', 1, false);


--
-- Name: User_Line_Group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."User_Line_Group_id_seq"', 1, false);


--
-- Name: User_Line_Task_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."User_Line_Task_id_seq"', 2, true);


--
-- Name: User_Payment_Method_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."User_Payment_Method_id_seq"', 1, false);


--
-- Name: User_Product_Favorites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."User_Product_Favorites_id_seq"', 473, true);


--
-- Name: User_Product_Reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."User_Product_Reviews_id_seq"', 1, false);


--
-- Name: User_Roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."User_Roles_id_seq"', 1, true);


--
-- Name: User_Sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."User_Sessions_id_seq"', 1, false);


--
-- Name: User_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."User_id_seq"', 175, true);


--
-- Name: Verification_Tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Verification_Tokens_id_seq"', 1, false);


--
-- Name: Address Address_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Address"
    ADD CONSTRAINT "Address_pkey" PRIMARY KEY (id);


--
-- Name: Category Category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Category"
    ADD CONSTRAINT "Category_pkey" PRIMARY KEY (id);


--
-- Name: Country Country_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Country"
    ADD CONSTRAINT "Country_pkey" PRIMARY KEY (id);


--
-- Name: DealOfTheDay DealOfTheDay_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DealOfTheDay"
    ADD CONSTRAINT "DealOfTheDay_pkey" PRIMARY KEY (id);


--
-- Name: Language Language_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Language"
    ADD CONSTRAINT "Language_pkey" PRIMARY KEY (id);


--
-- Name: Line_Group Line_Group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Line_Group"
    ADD CONSTRAINT "Line_Group_pkey" PRIMARY KEY (id);


--
-- Name: Line_Role Line_Role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Line_Role"
    ADD CONSTRAINT "Line_Role_pkey" PRIMARY KEY (id);


--
-- Name: Order_Line Order_Line_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order_Line"
    ADD CONSTRAINT "Order_Line_pkey" PRIMARY KEY (id);


--
-- Name: Order_Status Order_Status_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order_Status"
    ADD CONSTRAINT "Order_Status_pkey" PRIMARY KEY (id);


--
-- Name: Organize Organize_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Organize"
    ADD CONSTRAINT "Organize_pkey" PRIMARY KEY (id);


--
-- Name: PackageType PackageType_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PackageType"
    ADD CONSTRAINT "PackageType_pkey" PRIMARY KEY (id);


--
-- Name: Packgage Packgage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Packgage"
    ADD CONSTRAINT "Packgage_pkey" PRIMARY KEY (id);


--
-- Name: Payment_Status Payment_Status_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Payment_Status"
    ADD CONSTRAINT "Payment_Status_pkey" PRIMARY KEY (id);


--
-- Name: Payment_Type Payment_Type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Payment_Type"
    ADD CONSTRAINT "Payment_Type_pkey" PRIMARY KEY (id);


--
-- Name: ProductPackgage ProductPackgage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProductPackgage"
    ADD CONSTRAINT "ProductPackgage_pkey" PRIMARY KEY ("productId", "packgageId");


--
-- Name: Product_Availability Product_Availability_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product_Availability"
    ADD CONSTRAINT "Product_Availability_pkey" PRIMARY KEY (id);


--
-- Name: Product_Category Product_Category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product_Category"
    ADD CONSTRAINT "Product_Category_pkey" PRIMARY KEY (id);


--
-- Name: Product_Name Product_Name_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product_Name"
    ADD CONSTRAINT "Product_Name_pkey" PRIMARY KEY (id);


--
-- Name: Product_Tag Product_Tag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product_Tag"
    ADD CONSTRAINT "Product_Tag_pkey" PRIMARY KEY (id);


--
-- Name: Product Product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "Product_pkey" PRIMARY KEY (id);


--
-- Name: Products_Color_Detail Products_Color_Detail_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Products_Color_Detail"
    ADD CONSTRAINT "Products_Color_Detail_pkey" PRIMARY KEY (id);


--
-- Name: Products_Color Products_Color_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Products_Color"
    ADD CONSTRAINT "Products_Color_pkey" PRIMARY KEY (id);


--
-- Name: Products_Detail Products_Detail_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Products_Detail"
    ADD CONSTRAINT "Products_Detail_pkey" PRIMARY KEY (id);


--
-- Name: Products_Image Products_Image_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Products_Image"
    ADD CONSTRAINT "Products_Image_pkey" PRIMARY KEY (id);


--
-- Name: Products_Size Products_Size_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Products_Size"
    ADD CONSTRAINT "Products_Size_pkey" PRIMARY KEY (id);


--
-- Name: Promotion_Category Promotion_Category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Promotion_Category"
    ADD CONSTRAINT "Promotion_Category_pkey" PRIMARY KEY (id);


--
-- Name: Promotion Promotion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Promotion"
    ADD CONSTRAINT "Promotion_pkey" PRIMARY KEY (id);


--
-- Name: PublicRelationMessage PublicRelationMessage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PublicRelationMessage"
    ADD CONSTRAINT "PublicRelationMessage_pkey" PRIMARY KEY (id);


--
-- Name: Role Role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Role"
    ADD CONSTRAINT "Role_pkey" PRIMARY KEY (id);


--
-- Name: Shipping_Method Shipping_Method_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Shipping_Method"
    ADD CONSTRAINT "Shipping_Method_pkey" PRIMARY KEY (id);


--
-- Name: Shop_Order Shop_Order_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Shop_Order"
    ADD CONSTRAINT "Shop_Order_pkey" PRIMARY KEY (id);


--
-- Name: Shopping_Cart Shopping_Cart_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Shopping_Cart"
    ADD CONSTRAINT "Shopping_Cart_pkey" PRIMARY KEY (id);


--
-- Name: Shopping_Product_cart Shopping_Product_cart_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Shopping_Product_cart"
    ADD CONSTRAINT "Shopping_Product_cart_pkey" PRIMARY KEY (id);


--
-- Name: Size_Unit Size_Unit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Size_Unit"
    ADD CONSTRAINT "Size_Unit_pkey" PRIMARY KEY (id);


--
-- Name: Size Size_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Size"
    ADD CONSTRAINT "Size_pkey" PRIMARY KEY (id);


--
-- Name: Tag Tag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tag"
    ADD CONSTRAINT "Tag_pkey" PRIMARY KEY (id);


--
-- Name: Task_Status Task_Status_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Task_Status"
    ADD CONSTRAINT "Task_Status_pkey" PRIMARY KEY (id);


--
-- Name: User_Acconts User_Acconts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User_Acconts"
    ADD CONSTRAINT "User_Acconts_pkey" PRIMARY KEY (id);


--
-- Name: User_Address User_Address_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User_Address"
    ADD CONSTRAINT "User_Address_pkey" PRIMARY KEY (id);


--
-- Name: User_Line_Group User_Line_Group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User_Line_Group"
    ADD CONSTRAINT "User_Line_Group_pkey" PRIMARY KEY (id);


--
-- Name: User_Line_Task User_Line_Task_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User_Line_Task"
    ADD CONSTRAINT "User_Line_Task_pkey" PRIMARY KEY (id);


--
-- Name: User_Payment_Method User_Payment_Method_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User_Payment_Method"
    ADD CONSTRAINT "User_Payment_Method_pkey" PRIMARY KEY (id);


--
-- Name: User_Product_Favorites User_Product_Favorites_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User_Product_Favorites"
    ADD CONSTRAINT "User_Product_Favorites_pkey" PRIMARY KEY (id);


--
-- Name: User_Product_Reviews User_Product_Reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User_Product_Reviews"
    ADD CONSTRAINT "User_Product_Reviews_pkey" PRIMARY KEY (id);


--
-- Name: User_Roles User_Roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User_Roles"
    ADD CONSTRAINT "User_Roles_pkey" PRIMARY KEY (id);


--
-- Name: User_Sessions User_Sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User_Sessions"
    ADD CONSTRAINT "User_Sessions_pkey" PRIMARY KEY (id);


--
-- Name: User User_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (id);


--
-- Name: Verification_Tokens Verification_Tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Verification_Tokens"
    ADD CONSTRAINT "Verification_Tokens_pkey" PRIMARY KEY (id);


--
-- Name: Category_name_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "Category_name_key" ON public."Category" USING btree (name);


--
-- Name: Country_country_name_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "Country_country_name_key" ON public."Country" USING btree (country_name);


--
-- Name: Language_code_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "Language_code_key" ON public."Language" USING btree (code);


--
-- Name: Line_Group_groupId_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "Line_Group_groupId_key" ON public."Line_Group" USING btree ("groupId");


--
-- Name: Line_Role_name_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "Line_Role_name_key" ON public."Line_Role" USING btree (name);


--
-- Name: Order_Status_status_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "Order_Status_status_key" ON public."Order_Status" USING btree (status);


--
-- Name: Organize_name_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "Organize_name_key" ON public."Organize" USING btree (name);


--
-- Name: PackageType_name_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "PackageType_name_key" ON public."PackageType" USING btree (name);


--
-- Name: Packgage_name_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "Packgage_name_key" ON public."Packgage" USING btree (name);


--
-- Name: Payment_Status_status_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "Payment_Status_status_key" ON public."Payment_Status" USING btree (status);


--
-- Name: Payment_Type_name_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "Payment_Type_name_key" ON public."Payment_Type" USING btree (name);


--
-- Name: Product_Availability_name_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "Product_Availability_name_key" ON public."Product_Availability" USING btree (name);


--
-- Name: Product_productId_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "Product_productId_key" ON public."Product" USING btree ("productId");


--
-- Name: Products_Detail_productId_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "Products_Detail_productId_key" ON public."Products_Detail" USING btree ("productId");


--
-- Name: Role_name_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "Role_name_key" ON public."Role" USING btree (name);


--
-- Name: Shipping_Method_name_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "Shipping_Method_name_key" ON public."Shipping_Method" USING btree (name);


--
-- Name: Shopping_Cart_userId_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "Shopping_Cart_userId_key" ON public."Shopping_Cart" USING btree ("userId");


--
-- Name: Size_Unit_unit_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "Size_Unit_unit_key" ON public."Size_Unit" USING btree (unit);


--
-- Name: Size_value_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "Size_value_key" ON public."Size" USING btree (value);


--
-- Name: Tag_name_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "Tag_name_key" ON public."Tag" USING btree (name);


--
-- Name: Task_Status_status_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "Task_Status_status_key" ON public."Task_Status" USING btree (status);


--
-- Name: User_Address_addressId_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "User_Address_addressId_key" ON public."User_Address" USING btree ("addressId");


--
-- Name: User_Line_Group_userId_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "User_Line_Group_userId_key" ON public."User_Line_Group" USING btree ("userId");


--
-- Name: User_Line_Task_userId_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "User_Line_Task_userId_key" ON public."User_Line_Task" USING btree ("userId");


--
-- Name: User_Roles_userId_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "User_Roles_userId_key" ON public."User_Roles" USING btree ("userId");


--
-- Name: User_email_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "User_email_key" ON public."User" USING btree (email);


--
-- Name: User_lineId_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "User_lineId_key" ON public."User" USING btree ("lineId");


--
-- Name: Verification_Tokens_token_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "Verification_Tokens_token_key" ON public."Verification_Tokens" USING btree (token);


--
-- Name: Address Address_countryId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Address"
    ADD CONSTRAINT "Address_countryId_fkey" FOREIGN KEY ("countryId") REFERENCES public."Country"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: Category Category_languageId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Category"
    ADD CONSTRAINT "Category_languageId_fkey" FOREIGN KEY ("languageId") REFERENCES public."Language"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: Order_Line Order_Line_colorId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order_Line"
    ADD CONSTRAINT "Order_Line_colorId_fkey" FOREIGN KEY ("colorId") REFERENCES public."Products_Color"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Order_Line Order_Line_orderId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order_Line"
    ADD CONSTRAINT "Order_Line_orderId_fkey" FOREIGN KEY ("orderId") REFERENCES public."Shop_Order"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: Order_Line Order_Line_productId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order_Line"
    ADD CONSTRAINT "Order_Line_productId_fkey" FOREIGN KEY ("productId") REFERENCES public."Product"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Order_Line Order_Line_sizeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order_Line"
    ADD CONSTRAINT "Order_Line_sizeId_fkey" FOREIGN KEY ("sizeId") REFERENCES public."Products_Size"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: ProductPackgage ProductPackgage_packgageId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProductPackgage"
    ADD CONSTRAINT "ProductPackgage_packgageId_fkey" FOREIGN KEY ("packgageId") REFERENCES public."Packgage"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ProductPackgage ProductPackgage_productId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProductPackgage"
    ADD CONSTRAINT "ProductPackgage_productId_fkey" FOREIGN KEY ("productId") REFERENCES public."Product"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Product_Category Product_Category_categoryId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product_Category"
    ADD CONSTRAINT "Product_Category_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES public."Category"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: Product_Category Product_Category_productId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product_Category"
    ADD CONSTRAINT "Product_Category_productId_fkey" FOREIGN KEY ("productId") REFERENCES public."Product"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Product_Name Product_Name_languageId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product_Name"
    ADD CONSTRAINT "Product_Name_languageId_fkey" FOREIGN KEY ("languageId") REFERENCES public."Language"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: Product_Name Product_Name_productId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product_Name"
    ADD CONSTRAINT "Product_Name_productId_fkey" FOREIGN KEY ("productId") REFERENCES public."Product"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Product_Tag Product_Tag_productId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product_Tag"
    ADD CONSTRAINT "Product_Tag_productId_fkey" FOREIGN KEY ("productId") REFERENCES public."Product"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Product_Tag Product_Tag_tagId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product_Tag"
    ADD CONSTRAINT "Product_Tag_tagId_fkey" FOREIGN KEY ("tagId") REFERENCES public."Tag"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: Product Product_availabilityId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "Product_availabilityId_fkey" FOREIGN KEY ("availabilityId") REFERENCES public."Product_Availability"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: Product Product_inPackAmountTypeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "Product_inPackAmountTypeId_fkey" FOREIGN KEY ("inPackAmountTypeId") REFERENCES public."PackageType"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Product Product_organizeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "Product_organizeId_fkey" FOREIGN KEY ("organizeId") REFERENCES public."Organize"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: Product Product_sizeUnitId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "Product_sizeUnitId_fkey" FOREIGN KEY ("sizeUnitId") REFERENCES public."Size_Unit"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Products_Color Products_Color_availabilityId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Products_Color"
    ADD CONSTRAINT "Products_Color_availabilityId_fkey" FOREIGN KEY ("availabilityId") REFERENCES public."Product_Availability"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Products_Color Products_Color_colorDetailId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Products_Color"
    ADD CONSTRAINT "Products_Color_colorDetailId_fkey" FOREIGN KEY ("colorDetailId") REFERENCES public."Products_Color_Detail"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: Products_Color Products_Color_detailId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Products_Color"
    ADD CONSTRAINT "Products_Color_detailId_fkey" FOREIGN KEY ("detailId") REFERENCES public."Products_Detail"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Products_Detail Products_Detail_productId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Products_Detail"
    ADD CONSTRAINT "Products_Detail_productId_fkey" FOREIGN KEY ("productId") REFERENCES public."Product"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Products_Image Products_Image_colorId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Products_Image"
    ADD CONSTRAINT "Products_Image_colorId_fkey" FOREIGN KEY ("colorId") REFERENCES public."Products_Color"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Products_Image Products_Image_detailId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Products_Image"
    ADD CONSTRAINT "Products_Image_detailId_fkey" FOREIGN KEY ("detailId") REFERENCES public."Products_Detail"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Products_Size Products_Size_availabilityId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Products_Size"
    ADD CONSTRAINT "Products_Size_availabilityId_fkey" FOREIGN KEY ("availabilityId") REFERENCES public."Product_Availability"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Products_Size Products_Size_detailId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Products_Size"
    ADD CONSTRAINT "Products_Size_detailId_fkey" FOREIGN KEY ("detailId") REFERENCES public."Products_Detail"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Products_Size Products_Size_sizeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Products_Size"
    ADD CONSTRAINT "Products_Size_sizeId_fkey" FOREIGN KEY ("sizeId") REFERENCES public."Size"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Products_Size Products_Size_unitId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Products_Size"
    ADD CONSTRAINT "Products_Size_unitId_fkey" FOREIGN KEY ("unitId") REFERENCES public."Size_Unit"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Promotion_Category Promotion_Category_categoryId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Promotion_Category"
    ADD CONSTRAINT "Promotion_Category_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES public."Category"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: Promotion_Category Promotion_Category_promotionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Promotion_Category"
    ADD CONSTRAINT "Promotion_Category_promotionId_fkey" FOREIGN KEY ("promotionId") REFERENCES public."Promotion"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: Shop_Order Shop_Order_orderStatusId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Shop_Order"
    ADD CONSTRAINT "Shop_Order_orderStatusId_fkey" FOREIGN KEY ("orderStatusId") REFERENCES public."Order_Status"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: Shop_Order Shop_Order_paymentMethodId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Shop_Order"
    ADD CONSTRAINT "Shop_Order_paymentMethodId_fkey" FOREIGN KEY ("paymentMethodId") REFERENCES public."User_Payment_Method"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: Shop_Order Shop_Order_paymentStatusId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Shop_Order"
    ADD CONSTRAINT "Shop_Order_paymentStatusId_fkey" FOREIGN KEY ("paymentStatusId") REFERENCES public."Payment_Status"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: Shop_Order Shop_Order_shippingAddressId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Shop_Order"
    ADD CONSTRAINT "Shop_Order_shippingAddressId_fkey" FOREIGN KEY ("shippingAddressId") REFERENCES public."Address"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: Shop_Order Shop_Order_shippingMethodId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Shop_Order"
    ADD CONSTRAINT "Shop_Order_shippingMethodId_fkey" FOREIGN KEY ("shippingMethodId") REFERENCES public."Shipping_Method"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: Shop_Order Shop_Order_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Shop_Order"
    ADD CONSTRAINT "Shop_Order_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: Shopping_Cart Shopping_Cart_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Shopping_Cart"
    ADD CONSTRAINT "Shopping_Cart_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: Shopping_Product_cart Shopping_Product_cart_cartId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Shopping_Product_cart"
    ADD CONSTRAINT "Shopping_Product_cart_cartId_fkey" FOREIGN KEY ("cartId") REFERENCES public."Shopping_Cart"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: Shopping_Product_cart Shopping_Product_cart_colorId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Shopping_Product_cart"
    ADD CONSTRAINT "Shopping_Product_cart_colorId_fkey" FOREIGN KEY ("colorId") REFERENCES public."Products_Color_Detail"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Shopping_Product_cart Shopping_Product_cart_packgageId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Shopping_Product_cart"
    ADD CONSTRAINT "Shopping_Product_cart_packgageId_fkey" FOREIGN KEY ("packgageId") REFERENCES public."Packgage"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Shopping_Product_cart Shopping_Product_cart_productId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Shopping_Product_cart"
    ADD CONSTRAINT "Shopping_Product_cart_productId_fkey" FOREIGN KEY ("productId") REFERENCES public."Product"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Shopping_Product_cart Shopping_Product_cart_sizeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Shopping_Product_cart"
    ADD CONSTRAINT "Shopping_Product_cart_sizeId_fkey" FOREIGN KEY ("sizeId") REFERENCES public."Size"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Tag Tag_languageId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tag"
    ADD CONSTRAINT "Tag_languageId_fkey" FOREIGN KEY ("languageId") REFERENCES public."Language"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: User_Acconts User_Acconts_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User_Acconts"
    ADD CONSTRAINT "User_Acconts_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: User_Address User_Address_addressId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User_Address"
    ADD CONSTRAINT "User_Address_addressId_fkey" FOREIGN KEY ("addressId") REFERENCES public."Address"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: User_Address User_Address_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User_Address"
    ADD CONSTRAINT "User_Address_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: User_Line_Group User_Line_Group_groupId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User_Line_Group"
    ADD CONSTRAINT "User_Line_Group_groupId_fkey" FOREIGN KEY ("groupId") REFERENCES public."Line_Group"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: User_Line_Group User_Line_Group_lineRoleId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User_Line_Group"
    ADD CONSTRAINT "User_Line_Group_lineRoleId_fkey" FOREIGN KEY ("lineRoleId") REFERENCES public."Line_Role"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: User_Line_Group User_Line_Group_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User_Line_Group"
    ADD CONSTRAINT "User_Line_Group_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: User_Line_Task User_Line_Task_groupId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User_Line_Task"
    ADD CONSTRAINT "User_Line_Task_groupId_fkey" FOREIGN KEY ("groupId") REFERENCES public."Line_Group"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: User_Line_Task User_Line_Task_statusId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User_Line_Task"
    ADD CONSTRAINT "User_Line_Task_statusId_fkey" FOREIGN KEY ("statusId") REFERENCES public."Task_Status"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: User_Line_Task User_Line_Task_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User_Line_Task"
    ADD CONSTRAINT "User_Line_Task_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: User_Payment_Method User_Payment_Method_paymentTypeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User_Payment_Method"
    ADD CONSTRAINT "User_Payment_Method_paymentTypeId_fkey" FOREIGN KEY ("paymentTypeId") REFERENCES public."Payment_Type"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: User_Payment_Method User_Payment_Method_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User_Payment_Method"
    ADD CONSTRAINT "User_Payment_Method_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: User_Product_Favorites User_Product_Favorites_productId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User_Product_Favorites"
    ADD CONSTRAINT "User_Product_Favorites_productId_fkey" FOREIGN KEY ("productId") REFERENCES public."Product"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: User_Product_Favorites User_Product_Favorites_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User_Product_Favorites"
    ADD CONSTRAINT "User_Product_Favorites_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: User_Product_Reviews User_Product_Reviews_orderLineId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User_Product_Reviews"
    ADD CONSTRAINT "User_Product_Reviews_orderLineId_fkey" FOREIGN KEY ("orderLineId") REFERENCES public."Order_Line"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: User_Product_Reviews User_Product_Reviews_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User_Product_Reviews"
    ADD CONSTRAINT "User_Product_Reviews_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: User_Roles User_Roles_roleId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User_Roles"
    ADD CONSTRAINT "User_Roles_roleId_fkey" FOREIGN KEY ("roleId") REFERENCES public."Role"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: User_Roles User_Roles_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User_Roles"
    ADD CONSTRAINT "User_Roles_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: User_Sessions User_Sessions_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User_Sessions"
    ADD CONSTRAINT "User_Sessions_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;


--
-- PostgreSQL database dump complete
--

\unrestrict Dr214xLSgBkA5oOvcskeh5f1t9BcNacytWVRgf6Qxu1tUm8K88daCdELuWVWh3X

