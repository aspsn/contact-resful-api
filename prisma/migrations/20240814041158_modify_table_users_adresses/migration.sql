/*
  Warnings:

  - Made the column `contact_id` on table `addresses` required. This step will fail if there are existing NULL values in that column.

*/
-- DropForeignKey
ALTER TABLE `addresses` DROP FOREIGN KEY `addresses_contact_id_fkey`;

-- AlterTable
ALTER TABLE `addresses` MODIFY `contact_id` INTEGER NOT NULL;

-- AlterTable
ALTER TABLE `users` MODIFY `token` VARCHAR(100) NULL;

-- AddForeignKey
ALTER TABLE `addresses` ADD CONSTRAINT `addresses_contact_id_fkey` FOREIGN KEY (`contact_id`) REFERENCES `contacts`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
