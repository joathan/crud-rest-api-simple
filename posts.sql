/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : PostgreSQL
 Source Server Version : 110001
 Source Host           : localhost:5432
 Source Catalog        : php_api
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 110001
 File Encoding         : 65001

 Date: 09/03/2019 02:11:19
*/


-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS "public"."posts";
CREATE TABLE "public"."posts" (
  "id" serial8,
  "title" varchar(255),
  "body" text,
  "author" varchar(255),
  "created_at" timestamp(6)
);

-- ----------------------------
-- Primary Key structure for table posts
-- ----------------------------
ALTER TABLE "public"."posts" ADD CONSTRAINT "posts_pkey" PRIMARY KEY ("id");

CREATE SEQUENCE posts_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1; 
ALTER TABLE posts_id_seq OWNER TO postgres;

ALTER TABLE "public"."posts" 
  ALTER COLUMN "id" SET DEFAULT nextval('posts_id_seq'::regclass);