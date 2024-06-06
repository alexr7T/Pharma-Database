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

-- --------------------------------------------------------

--
-- Table structure for table `clinical_trials`
--

CREATE TABLE `clinical_trials` (
  `trial_id` int(11) NOT NULL,
  `compound_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `trial_phase` enum('Phase I','Phase II','Phase III','Phase IV') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clinical_trials`
--

INSERT INTO `clinical_trials` (`trial_id`, `compound_id`, `start_date`, `end_date`, `trial_phase`) VALUES
(1, 1, '2023-01-01', '2023-12-31', ''),
(4, 4, '2023-03-01', '2023-09-30', ''),
(5, 5, '2022-12-15', '2023-06-15', ''),
(6, 6, '2023-02-01', '2023-08-31', ''),
(7, 7, '2023-06-15', '2023-12-15', ''),
(9, 9, '2023-04-01', '2023-10-31', ''),
(12, 12, '2023-01-15', '2023-07-15', ''),
(13, 13, '2023-07-01', '2023-12-31', ''),
(14, 14, '2023-08-15', '2024-02-15', 'Phase III'),
(15, 15, '2023-05-01', '2023-11-30', '');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `headquarters_location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`company_id`, `company_name`, `headquarters_location`) VALUES
(1, 'Pfizer Inc.', 'Boston, USA'),
(2, 'New Pharma Inc.', 'New Jersey, USA'),
(3, 'Roche Holding AG', 'Basel, Switzerland'),
(4, 'Novartis AG', 'Basel, Switzerland'),
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

-- --------------------------------------------------------

--
-- Table structure for table `compounds`
--

CREATE TABLE `compounds` (
  `compound_id` int(11) NOT NULL,
  `compound_name` varchar(255) DEFAULT NULL,
  `chemical_structure` varchar(255) DEFAULT NULL,
  `molecular_weight` decimal(10,2) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `compounds`
--

INSERT INTO `compounds` (`compound_id`, `compound_name`, `chemical_structure`, `molecular_weight`, `supplier_id`) VALUES
(1, 'Paracetamol', 'C8H9NO2', 151.16, 1),
(2, 'Ibuprofen', 'C13H18O2', 206.28, 2),
(3, 'Aspirin', 'C9H8O4', 180.16, 3),
(4, 'Simvastatin', 'C25H38O5', 448.57, 4),
(5, 'Lisinopril', 'C21H31N3O5', 405.50, 10),
(6, 'Metformin', 'C4H11N5', 129.16, 6),
(7, 'Amoxicillin', 'C16H19N3O5S', 365.40, 7),
(9, 'Atorvastatin', 'C33H35FN2O5', 558.64, 9),
(10, 'Clopidogrel', 'C16H16ClNO2S', 321.82, 10),
(11, 'Warfarin', 'C19H16O4', 308.33, 11),
(12, 'Levothyroxine', 'C15H11I4NO4', 776.87, 12),
(13, 'Omeprazole', 'C17H19N3O3S', 345.42, 13),
(14, 'Metoprolol', 'C15H25NO3', 267.37, 14),
(15, 'Albuterol', 'C13H21NO3', 239.31, 15);

-- --------------------------------------------------------

--
-- Table structure for table `patents`
--

CREATE TABLE `patents` (
  `patent_id` int(11) NOT NULL,
  `patent_title` varchar(255) DEFAULT NULL,
  `compound_id` int(11) DEFAULT NULL,
  `filing_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patents`
--

INSERT INTO `patents` (`patent_id`, `patent_title`, `compound_id`, `filing_date`) VALUES
(1, 'Patent for Novel Formulation of Paracetamol', 1, '2022-11-15'),
(2, 'Patent for Improved Ibuprofen Delivery System', 2, '2023-01-20'),
(3, 'Patent for Aspirin Coating Technology', 3, '2023-12-31'),
(4, 'Patent for Simvastatin Synthesis Process', 4, '2023-05-15'),
(5, 'Patent for Lisinopril Combination Therapy', 5, '2023-07-20'),
(7, 'Patent for Amoxicillin Prophylactic Use', 7, '2023-11-30'),
(9, 'Patent for Atorvastatin Bioavailability Enhancement', 9, '2024-04-10'),
(10, 'Patent for Clopidogrel Metabolism Modulator', 10, '2024-06-25'),
(11, 'Patent for Warfarin Dosage Adjustment Algorithm', 11, '2024-08-30'),
(12, 'Patent for Levothyroxine Stability Enhancement', 12, '2024-10-15'),
(13, 'Patent for Omeprazole Enteric Coating Technology', 13, '2024-12-20'),
(14, 'Patent for Metoprolol Sustained-release Formulation', 14, '2025-02-25'),
(15, 'Patent for Albuterol Inhalation Device Design', 15, '2025-04-30');

-- --------------------------------------------------------

--
-- Table structure for table `researchers`
--

CREATE TABLE `researchers` (
  `researcher_id` int(11) NOT NULL,
  `researcher_name` varchar(255) DEFAULT NULL,
  `affiliation` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `researchers`
--

INSERT INTO `researchers` (`researcher_id`, `researcher_name`, `affiliation`) VALUES
(4, 'Dr. Jane Doe', 'Harvard University'),
(5, 'Prof. David Johnson', 'Johns Hopkins University'),
(6, 'Dr. Emily Wang', 'Stanford University'),
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

-- --------------------------------------------------------

--
-- Table structure for table `research_articles`
--

CREATE TABLE `research_articles` (
  `article_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `publication_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `research_articles`
--

INSERT INTO `research_articles` (`article_id`, `title`, `author_id`, `publication_date`) VALUES
(61, 'New Insights into Drug Resistance Mechanisms', 4, '2024-01-01'),
(73, 'Personalized Vaccination Approaches for Cancer Prevention', 16, '2024-01-20'),
(74, 'Epigenetic Modifications in Neurodegenerative Disorders', 17, '2024-02-28'),
(75, 'Stem Cell Therapy in Musculoskeletal Regeneration', 18, '2024-03-25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clinical_trials`
--
ALTER TABLE `clinical_trials`
  ADD PRIMARY KEY (`trial_id`),
  ADD KEY `compound_id` (`compound_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `compounds`
--
ALTER TABLE `compounds`
  ADD PRIMARY KEY (`compound_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `patents`
--
ALTER TABLE `patents`
  ADD PRIMARY KEY (`patent_id`),
  ADD KEY `compound_id` (`compound_id`);

--
-- Indexes for table `researchers`
--
ALTER TABLE `researchers`
  ADD PRIMARY KEY (`researcher_id`);

--
-- Indexes for table `research_articles`
--
ALTER TABLE `research_articles`
  ADD PRIMARY KEY (`article_id`),
  ADD KEY `author_id` (`author_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clinical_trials`
--
ALTER TABLE `clinical_trials`
  MODIFY `trial_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `compounds`
--
ALTER TABLE `compounds`
  MODIFY `compound_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `patents`
--
ALTER TABLE `patents`
  MODIFY `patent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `researchers`
--
ALTER TABLE `researchers`
  MODIFY `researcher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `research_articles`
--
ALTER TABLE `research_articles`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clinical_trials`
--
ALTER TABLE `clinical_trials`
  ADD CONSTRAINT `clinical_trials_ibfk_1` FOREIGN KEY (`compound_id`) REFERENCES `compounds` (`compound_id`);

--
-- Constraints for table `compounds`
--
ALTER TABLE `compounds`
  ADD CONSTRAINT `compounds_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `companies` (`company_id`);

--
-- Constraints for table `patents`
--
ALTER TABLE `patents`
  ADD CONSTRAINT `patents_ibfk_1` FOREIGN KEY (`compound_id`) REFERENCES `compounds` (`compound_id`);

--
-- Constraints for table `research_articles`
--
ALTER TABLE `research_articles`
  ADD CONSTRAINT `research_articles_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `researchers` (`researcher_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
