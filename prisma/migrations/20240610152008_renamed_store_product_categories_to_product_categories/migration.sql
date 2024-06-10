/*
  Warnings:

  - You are about to drop the column `store_product_category_id` on the `Product` table. All the data in the column will be lost.
  - You are about to drop the `StoreProductCategories` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Product" DROP CONSTRAINT "Product_store_product_category_id_fkey";

-- DropForeignKey
ALTER TABLE "StoreProductCategories" DROP CONSTRAINT "StoreProductCategories_store_id_fkey";

-- AlterTable
ALTER TABLE "Product" DROP COLUMN "store_product_category_id",
ADD COLUMN     "product_category_id" TEXT;

-- DropTable
DROP TABLE "StoreProductCategories";

-- CreateTable
CREATE TABLE "ProductCategories" (
    "id" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "instance_id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "store_id" TEXT NOT NULL,

    CONSTRAINT "ProductCategories_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Product" ADD CONSTRAINT "Product_product_category_id_fkey" FOREIGN KEY ("product_category_id") REFERENCES "ProductCategories"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ProductCategories" ADD CONSTRAINT "ProductCategories_store_id_fkey" FOREIGN KEY ("store_id") REFERENCES "Store"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
