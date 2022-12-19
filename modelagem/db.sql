CREATE DATABASE "eecommerce";

 CREATE TABLE "users" (
	"id" serial PRIMARY KEY,
	"name" TEXT(30) NOT NULL UNIQUE,
	"password" TEXT NOT NULL ,
	"email" TEXT NOT NULL UNIQUE,
	"address" TEXT NOT NULL UNIQUE,
);

CREATE TABLE "products" (
	"id" serial PRIMARY KEY,
	"name" TEXT NOT NULL,
	"price" integer NOT NULL,
	"main_photo" TEXT NOT NULL,
);

CREATE TABLE "clothes" (
	"id" serial PRIMARY KEY,
	"name" TEXT NOT NULL,
	"size" varchar(1) NOT NULL,
	"category" TEXT NOT NULL,
	"productsId" integer NOT NULL REFERENCES "products"("id"),
);

CREATE TABLE "transactions" (
	"id" serial PRIMARY KEY,
	"userId" integer NOT NULL REFERENCES "users"("id"),
	"productId" integer NOT NULL REFERENCES "products"("id"),
	"situation" TEXT NOT NULL,
	"boughtAt" TIMESTAMP NOT NULL DEFAULT NOW(),
	"clientsAddress" TEXT NOT NULL,
);