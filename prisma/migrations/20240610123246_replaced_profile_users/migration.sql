/*
  Warnings:

  - You are about to drop the column `profile_id` on the `Cart` table. All the data in the column will be lost.
  - You are about to drop the `Profile` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `StoreProfiles` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `user_id` to the `Cart` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Cart" DROP CONSTRAINT "Cart_profile_id_fkey";

-- DropForeignKey
ALTER TABLE "StoreProfiles" DROP CONSTRAINT "StoreProfiles_profile_id_fkey";

-- DropForeignKey
ALTER TABLE "StoreProfiles" DROP CONSTRAINT "StoreProfiles_role_id_fkey";

-- DropForeignKey
ALTER TABLE "StoreProfiles" DROP CONSTRAINT "StoreProfiles_store_id_fkey";

-- AlterTable
ALTER TABLE "Cart" DROP COLUMN "profile_id",
ADD COLUMN     "user_id" TEXT NOT NULL;

-- DropTable
DROP TABLE "Profile";

-- DropTable
DROP TABLE "StoreProfiles";

-- CreateTable
CREATE TABLE "StoreUsers" (
    "id" TEXT NOT NULL,
    "instance_id" SERIAL NOT NULL,
    "user_id" TEXT NOT NULL,
    "store_id" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "role_id" TEXT NOT NULL,

    CONSTRAINT "StoreUsers_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Cart" ADD CONSTRAINT "Cart_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "StoreUsers" ADD CONSTRAINT "StoreUsers_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "StoreUsers" ADD CONSTRAINT "StoreUsers_store_id_fkey" FOREIGN KEY ("store_id") REFERENCES "Store"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "StoreUsers" ADD CONSTRAINT "StoreUsers_role_id_fkey" FOREIGN KEY ("role_id") REFERENCES "Roles"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
