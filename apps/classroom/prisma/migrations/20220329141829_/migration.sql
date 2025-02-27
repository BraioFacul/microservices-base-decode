-- AlterTable
ALTER TABLE `Enrollment` MODIFY `purchasesEnrolledByPurchaseId` VARCHAR(255);

-- CreateIndex
CREATE UNIQUE INDEX `Enrollment_purchasesEnrolledByPurchaseId_key` ON `Enrollment` (`purchasesEnrolledByPurchaseId`);