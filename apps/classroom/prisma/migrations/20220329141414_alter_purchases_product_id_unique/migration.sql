SELECT purchasesProductId, COUNT(*)
FROM Course
GROUP BY purchasesProductId
HAVING COUNT(*) > 1;
