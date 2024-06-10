/*
  Warnings:

  - You are about to drop the column `type` on the `Product` table. All the data in the column will be lost.
  - Added the required column `product_type_id` to the `Product` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Product" DROP COLUMN "type",
ADD COLUMN     "product_type_id" TEXT NOT NULL;

-- CreateTable
CREATE TABLE "ProductType" (
    "id" TEXT NOT NULL,
    "instance_id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "ProductType_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Product" ADD CONSTRAINT "Product_product_type_id_fkey" FOREIGN KEY ("product_type_id") REFERENCES "ProductType"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
