SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmaceutical/biotech database management system`
--

--
-- Dumping data for table `clinical_trials`
--

INSERT INTO `clinical_trials` (`trial_id`, `compound_id`, `start_date`, `end_date`, `trial_phase`) VALUES
(1, 1, '2023-01-01', '2023-06-30', 'Phase I'),
(2, 2, '2023-05-01', '2023-12-31', 'Phase II'),
(3, 3, '2023-10-15', '2024-03-15', 'Phase III'),
(4, 4, '2023-03-01', '2023-09-30', 'Phase II'),
(5, 5, '2022-12-15', '2023-06-15', 'Phase I'),
(6, 6, '2023-02-01', '2023-08-31', 'Phase III'),
(7, 7, '2023-06-15', '2023-12-15', 'Phase II'),
(8, 8, '2022-11-01', '2023-05-31', 'Phase II'),
(9, 9, '2023-04-01', '2023-10-31', 'Phase III'),
(10, 10, '2023-09-15', '2024-03-15', 'Phase I'),
(11, 11, '2022-10-01', '2023-04-30', 'Phase III'),
(12, 12, '2023-01-15', '2023-07-15', 'Phase II'),
(13, 13, '2023-07-01', '2023-12-31', 'Phase II'),
(14, 14, '2023-08-15', '2024-02-15', 'Phase III'),
(15, 15, '2023-05-01', '2023-11-30', 'Phase I');

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`company_id`, `company_name`, `headquarters_location`) VALUES
(1, 'Pfizer Inc.', 'New York, USA'),
(2, 'Johnson & Johnson', 'New Jersey, USA'),
(3, 'Roche Holding AG', 'Basel, Switzerland'),
(4, 'Novartis AG', 'Basel, Switzerland'),
(5, 'Merck & Co., Inc.', 'New Jersey, USA'),
(6, 'GlaxoSmithKline plc', 'Brentford, UK'),
(7, 'Sanofi', 'Paris, France'),
(8, 'AstraZeneca PLC', 'Cambridge, UK'),
(9, 'AbbVie Inc.', 'North Chicago, USA'),
(10, 'Bayer AG', 'Leverkusen, Germany'),
(11, 'Eli Lilly and Company', 'Indianapolis, USA'),
(12, 'Bristol Myers Squibb', 'New York, USA'),
(13, 'Amgen Inc.', 'Thousand Oaks, USA'),
(14, 'Biogen Inc.', 'Cambridge, USA'),
(15, 'Gilead Sciences, Inc.', 'Foster City, USA');

--
-- Dumping data for table `compounds`
--

INSERT INTO `compounds` (`compound_id`, `compound_name`, `chemical_structure`, `molecular_weight`, `supplier_id`) VALUES
(1, 'Paracetamol', 'C8H9NO2', 151.16, 1),
(2, 'Ibuprofen', 'C13H18O2', 206.28, 2),
(3, 'Aspirin', 'C9H8O4', 180.16, 3),
(4, 'Simvastatin', 'C25H38O5', 418.57, 4),
(5, 'Lisinopril', 'C21H31N3O5', 405.50, 5),
(6, 'Metformin', 'C4H11N5', 129.16, 6),
(7, 'Amoxicillin', 'C16H19N3O5S', 365.40, 7),
(8, 'Ciprofloxacin', 'C17H18FN3O3', 331.34, 8),
(9, 'Atorvastatin', 'C33H35FN2O5', 558.64, 9),
(10, 'Clopidogrel', 'C16H16ClNO2S', 321.82, 10),
(11, 'Warfarin', 'C19H16O4', 308.33, 11),
(12, 'Levothyroxine', 'C15H11I4NO4', 776.87, 12),
(13, 'Omeprazole', 'C17H19N3O3S', 345.42, 13),
(14, 'Metoprolol', 'C15H25NO3', 267.37, 14),
(15, 'Albuterol', 'C13H21NO3', 239.31, 15);

--
-- Dumping data for table `patents`
--

INSERT INTO `patents` (`patent_id`, `patent_title`, `compound_id`, `filing_date`) VALUES
(1, 'Patent for Novel Formulation of Paracetamol', 1, '2022-11-15'),
(2, 'Patent for Improved Ibuprofen Delivery System', 2, '2023-01-20'),
(3, 'Patent for Aspirin Coating Technology', 3, '2023-03-10'),
(4, 'Patent for Simvastatin Synthesis Process', 4, '2023-05-15'),
(5, 'Patent for Lisinopril Combination Therapy', 5, '2023-07-20'),
(6, 'Patent for Metformin Extended-release Formulation', 6, '2023-09-25'),
(7, 'Patent for Amoxicillin Prophylactic Use', 7, '2023-11-30'),
(8, 'Patent for Ciprofloxacin Topical Application', 8, '2024-02-05'),
(9, 'Patent for Atorvastatin Bioavailability Enhancement', 9, '2024-04-10'),
(10, 'Patent for Clopidogrel Metabolism Modulator', 10, '2024-06-25'),
(11, 'Patent for Warfarin Dosage Adjustment Algorithm', 11, '2024-08-30'),
(12, 'Patent for Levothyroxine Stability Enhancement', 12, '2024-10-15'),
(13, 'Patent for Omeprazole Enteric Coating Technology', 13, '2024-12-20'),
(14, 'Patent for Metoprolol Sustained-release Formulation', 14, '2025-02-25'),
(15, 'Patent for Albuterol Inhalation Device Design', 15, '2025-04-30');

--
-- Dumping data for table `researchers`
--

INSERT INTO `researchers` (`researcher_id`, `researcher_name`, `affiliation`) VALUES
(4, 'Dr. Jane Doe', 'Harvard Medical School'),
(5, 'Prof. David Johnson', 'Johns Hopkins University'),
(6, 'Dr. Emily Wang', 'Stanford University'),
(7, 'Dr. Michael Garcia', 'Massachusetts Institute of Technology'),
(8, 'Prof. Sarah Lee', 'University of California, Berkeley'),
(9, 'Dr. Robert Smith', 'Mayo Clinic'),
(10, 'Prof. Maria Rodriguez', 'Yale University'),
(11, 'Dr. James Wilson', 'Columbia University'),
(12, 'Prof. Jennifer Brown', 'Duke University'),
(13, 'Dr. Christopher Davis', 'University of Pennsylvania'),
(14, 'Dr. Samantha Taylor', 'University of Cambridge'),
(15, 'Prof. William Martinez', 'Imperial College London'),
(16, 'Dr. Elizabeth Clark', 'University of Oxford'),
(17, 'Prof. Daniel White', 'University College London'),
(18, 'Dr. Jessica Anderson', 'ETH Zurich');

--
-- Dumping data for table `research_articles`
--

INSERT INTO `research_articles` (`article_id`, `title`, `author_id`, `publication_date`) VALUES
(61, 'New Insights into Drug Resistance Mechanisms', 4, '2023-01-15'),
(62, 'Advancements in Cancer Immunotherapy', 5, '2023-02-28'),
(63, 'Role of Gut Microbiota in Neurological Disorders', 6, '2023-03-20'),
(64, 'Emerging Therapeutic Targets for Alzheimer\'s Disease', 7, '2023-04-10'),
(65, 'Precision Medicine Approaches in Cardiovascular Health', 8, '2023-05-05'),
(66, 'Recent Developments in Gene Editing Technologies', 9, '2023-06-15'),
(67, 'Immune Checkpoint Inhibitors in Solid Tumor Treatment', 10, '2023-07-25'),
(68, 'Applications of Artificial Intelligence in Drug Discovery', 11, '2023-08-30'),
(69, 'Advances in Regenerative Medicine for Tissue Engineering', 12, '2023-09-20'),
(70, 'Novel Therapeutic Strategies for Infectious Diseases', 13, '2023-10-10'),
(71, 'Impact of Environmental Factors on Health and Disease', 14, '2023-11-05'),
(72, 'Biomarkers for Early Detection of Metabolic Syndrome', 15, '2023-12-15'),
(73, 'Personalized Vaccination Approaches for Cancer Prevention', 16, '2024-01-20'),
(74, 'Epigenetic Modifications in Neurodegenerative Disorders', 17, '2024-02-28'),
(75, 'Stem Cell Therapy in Musculoskeletal Regeneration', 18, '2024-03-25');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
