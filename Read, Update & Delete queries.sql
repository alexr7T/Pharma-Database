-- Read Queries 

-- 1. Retrieve all clinical trial details along with the compound names.
SELECT ct.trial_id, c.compound_name, ct.start_date, ct.end_date, ct.trial_phase
FROM clinical_trials ct
INNER JOIN compounds c ON ct.compound_id = c.compound_id;

-- 2. Retrieve all researcher names and their affiliations.
SELECT researcher_name, affiliation
FROM researchers;

-- 3. Retrieve all patent titles, associated compound names, and filing dates.
SELECT p.patent_title, c.compound_name, p.filing_date
FROM patents p
INNER JOIN compounds c ON p.compound_id = c.compound_id;

-- 4. Retrieve all research article titles, author names, and publication dates.
SELECT ra.title, r.researcher_name, ra.publication_date
FROM research_articles ra
INNER JOIN researchers r ON ra.author_id = r.researcher_id;

-- 5. Retrieve all compound names and their supplier companies.
SELECT c.compound_name, cmp.company_name
FROM compounds c
INNER JOIN companies cmp ON c.supplier_id = cmp.company_id;

-- 6. Retrieve all clinical trial details, including the company names.
SELECT ct.trial_id, ct.start_date, ct.end_date, cmp.company_name
FROM clinical_trials ct
INNER JOIN compounds c ON ct.compound_id = c.compound_id
INNER JOIN companies cmp ON c.supplier_id = cmp.company_id;

-- 7. Retrieve all company names and their headquarters locations.
SELECT company_name, headquarters_location
FROM companies;

-- 8. Retrieve all Phase III clinical trial details along with compound names.
SELECT c.compound_name, ct.start_date, ct.end_date
FROM clinical_trials ct
INNER JOIN compounds c ON ct.compound_id = c.compound_id
WHERE ct.trial_phase = 'Phase III';

-- 9. Retrieve researcher names and titles of research articles published in 2023.
SELECT r.researcher_name, ra.title, ra.publication_date
FROM researchers r
INNER JOIN research_articles ra ON r.researcher_id = ra.author_id
WHERE YEAR(ra.publication_date) = 2023;

-- 10. Retrieve compound names and molecular weights for compounds heavier than 300 g/mol.
SELECT compound_name, molecular_weight
FROM compounds
WHERE molecular_weight > 300;

-- Update Queries
START TRANSACTION;

-- 11. Update the end date of the clinical trial with trial ID 1 to '2023-12-31'.
UPDATE clinical_trials
SET end_date = '2023-12-31'
WHERE trial_id = 1;

-- 12. Update the trial phase to 'Phase IV' for the compound with ID 2.
UPDATE clinical_trials
SET trial_phase = 'Phase IV'
WHERE compound_id = 2;

-- 13. Update the headquarters location of the company with ID 1 to 'Boston, USA'.
UPDATE companies
SET headquarters_location = 'Boston, USA'
WHERE company_id = 1;

-- 14. Update the filing date of the patent with ID 3 to '2023-12-31'.
UPDATE patents
SET filing_date = '2023-12-31'
WHERE patent_id = 3;

-- 15. Increase the molecular weight by 5 for the compound with ID 4.
UPDATE compounds
SET molecular_weight = molecular_weight + 5
WHERE compound_id = 4;

-- 16. Update the publication date of the research article with ID 61 to '2024-01-01'.
UPDATE research_articles
SET publication_date = '2024-01-01'
WHERE article_id = 61;

-- 17. Update the affiliation of the researcher with ID 4 to 'Harvard University'.
UPDATE researchers
SET affiliation = 'Harvard University'
WHERE researcher_id = 4;

-- 18. Update the supplier ID of the compound with ID 5 to 10.
UPDATE compounds
SET supplier_id = 10
WHERE compound_id = 5;

-- 19. Update the trial phase to 'Completed' for clinical trials ending before '2024-01-01'.
UPDATE clinical_trials
SET trial_phase = 'Completed'
WHERE end_date < '2024-01-01';

-- 20. Update the name of the company with ID 2 to 'New Pharma Inc.'
UPDATE companies
SET company_name = 'New Pharma Inc.'
WHERE company_id = 2;

COMMIT;

-- Delete Queries
START TRANSACTION;

-- 21. Delete associated research articles authored by the researcher with ID 7.
DELETE FROM research_articles
WHERE author_id = 7;

-- 22. Delete the researcher with ID 7.
DELETE FROM researchers
WHERE researcher_id = 7;

-- 23. Delete associated patents for compounds supplied by the company with ID 8.
DELETE FROM patents
WHERE compound_id IN (SELECT compound_id FROM compounds WHERE supplier_id = 8);

-- 24. Delete associated clinical trials for compounds supplied by the company with ID 8.
DELETE FROM clinical_trials
WHERE compound_id IN (SELECT compound_id FROM compounds WHERE supplier_id = 8);

-- 25. Delete the compounds supplied by the company with ID 8.
DELETE FROM compounds
WHERE supplier_id = 8;

-- 26. Delete the clinical trial with trial ID 2.
DELETE FROM clinical_trials
WHERE trial_id = 2;

-- 27. Delete the clinical trial for the compound with ID 3.
DELETE FROM clinical_trials
WHERE compound_id = 3;

-- 28. Delete the company with ID 5.
DELETE FROM companies
WHERE company_id = 5;

-- 29. Delete the patents for the compound with ID 6.
DELETE FROM patents
WHERE compound_id = 6;

-- 30. Delete the research article with ID 62.
DELETE FROM research_articles
WHERE article_id = 62;

-- 31. Delete clinical trials ending before '2023-06-01'.
DELETE FROM clinical_trials
WHERE end_date < '2023-06-01';

-- 32. Delete research articles published before '2024-01-01'.
DELETE FROM research_articles
WHERE publication_date < '2024-01-01';

-- 33. Delete clinical trials in 'Phase I'.
DELETE FROM clinical_trials
WHERE trial_phase = 'Phase I';

COMMIT;
