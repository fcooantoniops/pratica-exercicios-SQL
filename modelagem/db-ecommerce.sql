CREATE DATABASE "ecommerce";

CREATE TABLE "users" (
    "id" SERIAL PRIMARY KEY, 
    "name" VARCHAR(50) NOT NULL, 
    "email" TEXT UNIQUE NOT NULL, 
    "password" TEXT NOT NULL
);

CREATE TABLE "products"(
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(50) NOT NULL, 
    "price" INTEGER NOT NULL, 
    "image" TEXT NOT NULL
);

CREATE TABLE "clothes"(
    "id" SERIAL PRIMARY KEY, 
    "size" TEXT NOT NULL
);

CREATE TABLE "chart" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "productsId" INTEGER NOT NULL,
    "sizeId" INTEGER NOT NULL, 
    "purchaseStatus" INTEGER NOT NULL,
    "date" DATE NOT NULL,
    "amount" INTEGER NOT NULL
);
