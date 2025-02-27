/*
Warnings:

- A unique constraint covering the columns `[email]` on the table `Student` will be added. If there are existing duplicate values, this will fail.

 */
-- CreateIndex
SELECT
  email,
  COUNT(*)
FROM
  Student
GROUP BY
  email
HAVING
  COUNT(*) > 1;