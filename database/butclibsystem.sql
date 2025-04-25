-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2025 at 04:01 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `butclibsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

Create database butclibsystem;

use butclibsystem;

CREATE TABLE `books` (
  `id` bigint(255) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `author` text NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `category` varchar(50) NOT NULL,
  `year` year(4) NOT NULL,
  `filePath` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `keywords`, `category`, `year`, `filePath`, `created_at`, `updated_at`) VALUES
(14, 'Ecology of Marine Bivalves', 'Richard F. Dame', 'Ecology, Marine, Marine Life, Biology, Bivalves', 'Biology', '2012', 'public/ebooks/2012_Ecology_of_marine_bivalves.pdf', NULL, NULL),
(15, 'Information, Entropy and Their Geometric Structure', 'Frédéric Barbaresco and Ali Mohammad-Djafari', 'Information, Entropy and Their Geometric Structure', 'Science', '2015', 'public/ebooks/2015Information_Entropy_and_Their_Geometric_Structures.pdf', NULL, NULL),
(16, 'Adolescent Pregnancy: Past, Present and Future Tre', 'Naomi Farber', 'Adolescent Pregnancy: Past, Present and Future Trends and Issues', 'Science', '2016', 'public/ebooks/2016_Adolescent_Pregnancy_Past_Present_and_Future_Trends_and_Issues.pdf', NULL, NULL),
(17, 'Ecological Monitoring, Assessment, and Management ', 'Young-Seuk Park and Soon-Jin Hwang', 'Ecological Monitoring, Assessment, and Management in Freshwater Systems', 'Science', '2016', 'public/ebooks/2016_Ecological_Monitoring_Assessment_and_Management_in_Freshwater_Systems.pdf', NULL, NULL),
(18, 'Groundwater Quantity and Quality', 'John A. Luczaj and Dallas Blaney', 'Groundwater Quantity and Quality', 'Science', '2016', 'public/ebooks/2016_Groundwater_Quantity_and_Quality.pdf', NULL, NULL),
(19, 'Omega-3 Fatty Acids in Health and Disease', 'Lindsay Brown, Bernhard Rauch and Hemant Poudyal', 'Omega-3 Fatty Acids in Health and Disease', 'Medicine', '2016', 'public/ebooks/2016_Omega3_Fatty_Acids_in_Health_and_Disease.pdf', NULL, NULL),
(20, 'Assessment of Nutrient Intakes', 'Clare Collins and Sharon Kirkpatrick ', 'Assessment of Nutrient Intakes', 'Health', '2017', 'public/ebooks/2017_Assessment_of_Nutrient_Intakes.pdf', NULL, NULL),
(21, 'Nutrition in Pregnancy', 'Janna L. Morrison and Timothy R.H. Regnault', 'Nutrition, Pregnancy', 'Health', '2017', 'public/ebooks/2017_Nutrition_in_Pregnancy.pdf', NULL, NULL),
(22, 'Transcultural Literary Studies: Politics, Theory, ', 'Bernd Fischer', 'Transcultural Literary Studies: Politics, Theory, and Literary Analysis', 'Humanities', '2017', 'public/ebooks/2017_Transcultural_Literary_Studies_Politics_Theory_and_Literary_Analysis.pdf', NULL, NULL),
(23, 'Emotions in Late Modernity', 'Mary Holmes and Julie Brownlie', 'Emotions in Late Modernity', 'Psychology', '2019', 'public/ebooks/2019_Book_Emotions_in_Late_Maturity.pdf', NULL, NULL),
(24, 'Handbook of Education Policy Studies', 'Guorui Fan and Thomas S. Popkewitz', 'Handbook of Education Policy Studies', 'Education', '2020', 'public/ebooks/2020_Book_HandbookOfEducationPolicyStudies.pdf', NULL, NULL),
(25, 'Organic Waste Composting through Nexus Thinking', 'Serena Caucci and Kai Schwärzel ', 'Organic Waste Composting through Nexus Thinking', 'Science', '2020', 'public/ebooks/2020_Book_OrganicWasteCompostingThroughN.pdf', NULL, NULL),
(26, 'Workers, Managers, Productivity', 'Akio Hosono , John Page and Go Shimada', 'Workers, Managers, Productivity', 'Business Economics', '2020', 'public/ebooks/2020_Book_WorkersManagersProductivity.pdf', NULL, NULL),
(27, 'Children’s Exploration and Cultural Formation', 'Mariane Hedegaard and Elin Eriksen Ødegaard', 'Children’s Exploration and Cultural Formation', 'Culture', '2020', 'public/ebooks/2020_ChildrenSExplorationAndCultura.pdf', NULL, NULL),
(28, 'Coffee and Caffeine Consumption for Human Health', 'Juan Del Coso', 'Coffee and Caffeine Consumption for Human Health', 'Health', '2020', 'public/ebooks/2020_Coffee_and_Caffeine_Consumption_for_Human_Health.pdf', NULL, NULL),
(29, 'Cultural Competence and the Higher Education Secto', 'Jack Frawley, Gabrielle Russell and Juanita Sherwood ', 'Cultural Competence and the Higher Education Sector', 'Culture', '2020', 'public/ebooks/2020_CulturalCompetenceAndTheHigherEducation.pdf', NULL, NULL),
(30, 'Dietary Trace Minerals', 'Elad Tako', 'Dietary Trace Minerals', 'Health', '2020', 'public/ebooks/2020_Dietary_Trace_Minerals.pdf', NULL, NULL),
(31, 'Early Life Nutrition and Future Health', 'Kristin Connor', 'Early Life Nutrition and Future Health', 'Health', '2020', 'public/ebooks/2020_Early_Life_Nutrition_and_Future_Health.pdf', NULL, NULL),
(32, 'Industry 4.0 and Regional Transformations', 'Lisa De Propris and David Bailey', 'Industry 4.0 and Regional Transformations', 'Culture', '2020', 'public/ebooks/2020_Industry4_RegionalTransformation.pdf', NULL, NULL),
(34, 'The Entrepreneurial Society', 'Mark Sanders Axel Marx Mikael Stenkula', 'The Entrepreneurial Society', 'Entrepreneurship', '2020', 'public/ebooks/2020_The_Entrepreneurial_Society.pdf', NULL, NULL),
(35, 'Micro, Small, and Medium Enterprises in Vietnam', 'JOHN RAND AND FINN TARP', 'Micro, Small, and Medium Enterprises in Vietnam', 'Business Economics', '2020', 'public/ebooks/2020_Micro_Small_Medium_Enterprises_Vietnam.pdf', NULL, NULL),
(36, 'The Entrepreneurial Society', 'Mark Sanders, Axel Marx, Mikael Stenkula ', 'The Entrepreneurial Society, Entrepreneur', 'Entrepreneurship', '2020', 'public/ebooks/2020_The_Entrepreneurial_Society.pdf', NULL, NULL),
(37, 'A Sensory Education', 'Anna Harris', 'A Sensory Education', 'Biology', '2021', 'public/ebooks/2021_ASensoryEducation.pdf', NULL, NULL),
(38, 'Chemical Youth', 'Anita Hardon', 'Chemical Youth, Anita Hardon', 'Chemistry', '2021', '2021_Book_Chemical_Youth.pdf', NULL, NULL),
(40, 'Teacher Transition into Innovative Learning Enviro', 'Wesley Imms · Thomas Kvan', 'Teacher Transition into Innovative Learning Environments', 'Education', '2021', 'public/ebooks/2021_Book_TeacherTransitionIntoInnovativ.pdf', NULL, NULL),
(41, 'Teaching Multiplication with Lesson Study', 'Masami Isoda · Raimundo Olfos', 'Teaching Multiplication with Lesson Study', 'Education', '2021', 'public/ebooks/2021_Book_TeachingMultiplicationWithLess (1).pdf', NULL, NULL),
(43, 'Improving a Country’s Education', 'Nuno Crato', 'Improving a Country’s Education', 'Psychology', '2021', 'public/ebooks/2021_Book_ImprovingACountrySEducation.pdf', NULL, NULL),
(44, 'Transnational Solidarity in Times of Crises', 'Christian Lahusen · Ulrike Zschache · Maria Kousis', 'Transnational Solidarity in Times of Crises', 'Political Sociology', '2021', 'public/ebooks/2021_Book_TransnationalSolidarityInTimes.pdf', NULL, NULL),
(45, 'Concept and Design Developments in School Improvem', 'Arnoud Oude Groote Beverborg Tobias Feldho Katharina Maag Merki Falk Radisch', 'Concept and Design Developments in School Improvement Research', 'Education', '2021', 'public/ebooks/2021_ConceptandDesignDevelopments.pdf', NULL, NULL),
(46, 'DIGITAL DISRUPTION IN TEACHING AND TESTING', 'Claire Wyatt-Smith, Bob Lingard, and Elizabeth Heck', 'DIGITAL DISRUPTION IN TEACHING AND TESTING', 'Education', '2021', 'public/ebooks/2021_DigitalDisruptioninTeachingandTesting.pdf', NULL, NULL),
(48, 'Education and Climate Change', 'Fernando M. Reimers ', 'Education and Climate Change', 'Environmental Education', '2021', 'public/ebooks/2021_EducationAndClimateChange.pdf', NULL, NULL),
(49, 'Empowering Teachers to Build a Better World', 'Fernando M. Reimers ', 'Empowering Teachers to Build a Better World', 'Education', '2021', 'public/ebooks/2021_Empowering_Teachers.pdf', NULL, NULL),
(51, 'Halal Development: Trends, Opportunities and Chall', 'Heri Pratikto & Ahmad Taufiq et al.', 'Halal Development: Trends, Opportunities and Challenges', 'Psychology', '2021', 'public/ebooks/2021_Halal Development-Trends, Opportunities and Challenges.pdf', NULL, NULL),
(52, 'Unsettling Responsibility in Science Education', 'Marc Higgins', 'Unsettling Responsibility in Science Education', 'Science', '2021', 'public/ebooks/2021_UnsettlingResponsibilityInScienceEducation.pdf', NULL, NULL),
(53, 'Active Methodologies for the Promotion of Mathemat', 'Francisco D. Fernández-Martín et al.', 'Active Methodologies for the Promotion of Mathematical Learning', 'Mathematics', '2022', 'public/ebooks/2022_Active_Methodologies_for_the_Promotion_of_Mathematical_Learning.pdf', NULL, NULL),
(54, 'Advancements in Biomonitoring and Remediation Trea', 'Elida Nora Ferri', 'Advancements in Biomonitoring and Remediation Treatments of Pollutants in Aquatic Environments', 'Applied Science', '2022', 'public/ebooks/2022_Advancements_in_Biomonitoring_and_Remediation_Treatments_of_Pollutants_in_Aquatic_Environments.pdf', NULL, NULL),
(55, 'Advances in Discrete Applied Mathematics and Graph', 'Janez Žerovnik and Darja Rupnik Poklukar', 'Advances in Discrete Applied Mathematics and Graph Theory', 'Mathematics', '2022', 'public/ebooks/2022_Advances_in_Discrete_Applied_Mathematics_and_Graph_Theory.pdf', NULL, NULL),
(56, 'Advances in Preterm Delivery', 'Eyal Sheiner', 'Advances in Preterm Delivery', 'Medicine', '2022', 'public/ebooks/2022_Advances_in_Preterm_Delivery.pdf', NULL, NULL),
(57, 'Advances in the Field of Electrical Machines and D', 'Athanasios Karlis', 'Advances in the Field of Electrical Machines and Drives', 'Technology', '2022', 'public/ebooks/2022_Advances_in_the_Field_of_Electrical_Machines_and_Drives.pdf', NULL, NULL),
(58, 'Advances of Accurate Quantification Methods in Foo', 'Xianjiang Li and Rui Weng', 'Advances of Accurate Quantification Methods in Food Analysis', 'Chemistry', '2022', 'public/ebooks/2022_Advances_of_Accurate_Quantification_Methods_in_Food_Analysis.pdf', NULL, NULL),
(60, 'Anti-aging Nutrients with Health Beneficial Effect', 'Yoshinori Katakura', 'Anti-aging Nutrients with Health Beneficial Effects', 'Health', '2022', 'public/ebooks/2022_Antiaging_Nutrients_with_Health_Beneficial_Effects.pdf', NULL, NULL),
(61, 'Applications of Instrumental Methods for Food and ', 'Agata Gorska', 'Applications of Instrumental Methods for Food and Food By-Products Analysis', 'Applied Science', '2022', 'public/ebooks/2022_Applications_of_Instrumental_Methods_for_Food_and_Food_ByProducts_Analysis.pdf', NULL, NULL),
(62, 'Applied Mathematics and Fractional Calculus', 'Francisco Martínez González and Mohammed K. A. Kaabar', 'Applied Mathematics and Fractional Calculus', 'Mathematics', '2022', 'public/ebooks/2022_Applied_Mathematics_and_Fractional_Calculus.pdf', NULL, NULL),
(63, 'Aquatic Insects Biodiversity, Ecology and Conserva', 'Marina Vilenica, Zohar Yanai and Laurent Vuataz', 'Aquatic Insects Biodiversity, Ecology and Conservation Challenges', 'Zoology', '2022', 'public/ebooks/2022_Aquatic_Insects.pdf', NULL, NULL),
(64, 'Assessing the Effects of Multiple Stressors on Aqu', 'Pedro Segurado, Paulo Branco and Maria Teresa Ferreira', 'Assessing the Effects of Multiple Stressors on Aquatic Systems across Temporal and Spatial Scales', 'Aquatic', '2022', 'public/ebooks/2022_Assessing_the_Effects_of_Multiple_Stressors_on_Aquatic_Systems_across_Temporal_and_Spatial_Scales_From_Measurement_to_Management.pdf', NULL, NULL),
(65, 'Beta-Glucan in Foods and Health Benefits', 'Seiichiro Aoe, Tatsuya Morita and Naohito Ohno', 'Beta-Glucan in Foods and Health Benefits', 'Health', '2022', 'public/ebooks/2022_BetaGlucan_in_Foods_and_Health_Benefits.pdf', NULL, NULL),
(66, 'Bioactives and Functional Ingredients in Foods', 'Severina Pacifico and Simona Piccolella', 'Bioactives and Functional Ingredients in Foods', 'Biology', '2022', 'public/ebooks/2022_Bioactives_and_Functional_Ingredients_in_Foods.pdf', NULL, NULL),
(67, 'By-Products Characterisation and Use as Food', 'Simona Grasso, Konstantinos Papoutsis, Claudia Ruiz-Capillas and Ana Herrero Herranz', 'By-Products Characterisation and Use as Food', 'Food Science', '2022', 'public/ebooks/2022_ByProducts_Characterisation_and_Use_as_Food.pdf', NULL, NULL),
(68, 'Cheese and Whey', 'Golfo Moatsou and Ekaterini Moschopoulou', 'Cheese and Whey', 'Food Science', '2022', 'public/ebooks/2022_Cheese_and_Whey.pdf', NULL, NULL),
(69, 'Clinical Nutrition Recent Advances and Remaining C', 'Ina Bergheim', 'Clinical Nutrition Recent Advances and Remaining Challenges', 'Health', '2022', 'public/ebooks/2022_Clinical_Nutrition_Recent_Advances_and_Remaining_Challenges.pdf', NULL, NULL),
(70, 'Computational Fluid Dynamics 2020', 'Mostafa Safdari Shadloo', 'Computational Fluid Dynamics 2020', 'Mathematics', '2022', 'public/ebooks/2022_Computational_Fluid_Dynamics_2020.pdf', NULL, NULL),
(71, 'Computational Heat Transfer and Fluid Mechanics', 'Pouyan Talebizadeh Sardari, Goodarz Ahmadi and Kiao Inthavong', 'Computational Heat Transfer and Fluid Mechanics', 'Technology', '2022', 'public/ebooks/2022_Computational_Heat_Transfer_and_Fluid_Mechanics.pdf', NULL, NULL),
(72, 'Cultural Competence in Healthcare and Healthcare E', 'Costas S Constantinou, Panayiota Andreou, Monica Nikitara and Alexia Papageorgiou', 'Cultural Competence in Healthcare and Healthcare Education', 'Societies', '2022', 'public/ebooks/2022_Cultural_Competence_in_Healthcare_and_Healthcare_Education.pdf', NULL, NULL),
(73, 'Dairy Products for Human Health', 'Dennis Savaiano', 'Dairy Products for Human Health', 'Health', '2022', 'public/ebooks/2022_Dairy_Products_for_Human_Health.pdf', NULL, NULL),
(74, 'Dairy Sector Opportunities and Sustainability Chal', 'Rajeev Bhat', 'Dairy Sector Opportunities and Sustainability Challenges', 'Food Science', '2022', 'public/ebooks/2022_Dairy_Sector_Opportunities_and_Sustainability_Challenges.pdf', NULL, NULL),
(75, 'Diagnostic or Therapeutic Strategies for Pregnancy', 'Alexander Heazell and Sylvie Girard', 'Diagnostic or Therapeutic Strategies for Pregnancy Complications', 'Medicine', '2022', 'public/ebooks/2022_Diagnostic_or_Therapeutic_Strategies_for_Pregnancy_Complications.pdf', NULL, NULL),
(76, 'Diet and Microbiome in Health and Aging', 'Sonia González, Nuria Salazar and Silvia Arboleya', 'Diet and Microbiome in Health and Aging', 'Food Science', '2022', 'public/ebooks/2022_Diet_and_Microbiome_in_Health_and_Aging.pdf', NULL, NULL),
(77, 'Dietary Nutrients Effects on Metabolic and Physiol', 'Anna M. Giudetti', 'Dietary Nutrients Effects on Metabolic and Physiological Adaptations', 'Health', '2022', 'public/ebooks/2022_Dietary_Nutrients_Effects_on_Metabolic_and_Physiological_Adaptations.pdf', NULL, NULL),
(78, 'Early Childhood Science Education Research Trends ', 'Konstantinos Ravanis', 'Early Childhood Science Education Research Trends in Learning and Teaching', 'Science', '2022', 'public/ebooks/2022_Early_Childhood_Science_Education_Research_Trends_in_Learning_and_Teaching.pdf', NULL, NULL),
(79, 'Ecology and Conservation of Freshwater Fishes Biod', 'Rafael Miranda', 'Ecology and Conservation of Freshwater Fishes Biodiversity', 'Aquatic', '2022', 'public/ebooks/2022_Ecology_and_Conservation_of_Freshwater_Fishes_Biodiversity.pdf', NULL, NULL),
(80, 'Educating Informal Educators', 'Pam Alldred and Frances Howard', 'Educating Informal Educators', 'Education', '2022', 'public/ebooks/2022_Educating_Informal_Educators.pdf', NULL, NULL),
(82, 'Education for Environmental Citizenship', 'Andreas Ch. Hadjichambis, Pedro Guilherme Rocha dos Reis, et al.', 'Education for Environmental Citizenship', 'Education', '2022', 'public/ebooks/2022_Education_for_Environmental_Citizenship.pdf', NULL, NULL),
(83, 'Effect of Diet and Physical Activity on Cancer Pre', 'Wendy Demark-Wahnefried and Christina Dieli-Conwright', 'Effect of Diet and Physical Activity on Cancer Prevention and Control', 'Food Science', '2022', 'public/ebooks/2022_Effect_of_Diet_and_Physical_Activity_on_Cancer_Prevention_and_Control.pdf', NULL, NULL),
(84, 'Effects and Implications of COVID-19 for the Human', 'Derek V. Byrne', 'Effects and Implications of COVID-19 for the Human Senses, Consumer Preferences, Appetite and Eating Behaviour', 'Food Science', '2022', 'public/ebooks/2022_Effects_and_Implications_of_COVID19_for_the_Human_Senses_Consumer_Preferences_Appetite_and_Eating_Behaviour.pdf', NULL, NULL),
(85, 'Engaging Students in Sustainable Science Education', 'Larry J. Grabau', 'Engaging Students in Sustainable Science Education', 'Science', '2022', 'public/ebooks/2022_Engaging_Students_in_Sustainable_Science_Education.pdf', NULL, NULL),
(86, 'Extraction and Fractionation Processes of Function', 'Juliana Maria Leite Nobrega De Moura Bell, Blanca Hernández-Ledesma and Roberta Claro da Silva', 'Extraction and Fractionation Processes of Functional Components in Food Engineering', 'Food Science', '2022', 'public/ebooks/2022_Extraction_and_Fractionation_Processes_of_Functional_Components_in_Food_Engineering.pdf', NULL, NULL),
(87, 'Finite-Time  Thermodynamics', 'R. Stephen Berry, Peter Salamon and Bjarne Andresen', 'Finite-Time  Thermodynamics', 'Physics', '2022', 'public/ebooks/2022_FiniteTime_Thermodynamics.pdf', NULL, NULL),
(88, 'Food Allergies in Modern Life', 'Sara Manti, Gian Luigi Marseglia and Salvatore Leonardi', 'Food Allergies in Modern Life', 'Food Science', '2022', 'public/ebooks/2022_Food_Allergies_in_Modern_Life.pdf', NULL, NULL),
(89, 'Food Bioactives Chemical Challenges and Bio-Opport', 'Severina Pacifico and Simona Piccolella', 'Food Bioactives Chemical Challenges and Bio-Opportunities', 'Food Science', '2022', 'public/ebooks/2022_Food_Bioactives.pdf', NULL, NULL),
(90, 'Advances in the Sociology of Trust and Cooperation', 'Vincent Buskens, Rense Corten and Chris Snijders', 'Advances in the Sociology of Trust and Cooperation', 'Sociology', '2020', '2020_Advances in the Sociology of Trust.pdf', NULL, NULL),
(91, 'Advances in Environmental, Economic and Social Ass', 'Diego Iribarren', 'Advances in Environmental, Economic and Social Assessment of Energy Systems', 'Technology', '2020', 'public/ebooks/2020_Advances_in_Environmental_Economic_and_Social_Assessment_of_Energy_Systems.pdf', NULL, NULL),
(92, 'Advances in Food and Non-Food Biomass Production, ', 'Daniel Callo-Concha Hannah Jaenicke Christine B. Schmitt Manfred Denich', 'Advances in Food and Non-Food Biomass Production, Processing and Use in Sub-Saharan Africa', 'Food Science', '2020', 'public/ebooks/2020_Advances_in_Food_and_NonFood_Biomass_Production_Processing_and_Use_in_SubSaharan_Africa.pdf', NULL, NULL),
(93, 'Advances in Marine Natural Product Characterisatio', 'Sylvia Urban', 'Advances in Marine Natural Product Characterisation and Separation Methodologies', 'Aquatic', '2020', 'public/ebooks/2020_Advances_in_Marine_Natural_Product_Characterisation_and_Separation_Methodologies.pdf', NULL, NULL),
(94, 'Food Bioactives Impact on Brain and  Cardiometabol', 'Nenad Naumovski and Domenico Sergi', 'Food Bioactives Impact on Brain and  Cardiometabolic Health – Findings  from In Vitro to Human Studies', 'Food Science', '2021', 'public/ebooks/2022_Food_Bioactives_Impact_on_Brain_and_Cardiometabolic_Health__Findings_from_In_Vitro_to_Human_Studies.pdf', NULL, NULL),
(95, 'Advancing Knowledge on Cyanobacterial Blooms in Fr', 'Elisabeth (Savi) Vardaka Konstantinos Ar. Kormas', 'Advancing Knowledge on Cyanobacterial Blooms in Freshwaters', 'Aquatic', '2020', 'public/ebooks/2020_Advancing_Knowledge_on_Cyanobacterial_Blooms_in_Freshwaters.pdf', NULL, NULL),
(96, 'Ageing and COVID-19 Making Sense of a Disrupted Wo', 'Maria Łuszczyńska and Marvin Formosa', 'Ageing and COVID-19 Making Sense of a Disrupted World', 'Health', '2020', 'public/ebooks/2020_Ageing and COVID-19.pdf', NULL, NULL),
(97, 'Food Processing and  Its Impact on Phenolic  and o', 'Jan Oszmianski and Sabina Lachowicz-Wiśniewska', 'Food Processing and  Its Impact on Phenolic  and other Bioactive  Constituents in Food', 'Food Science', '2021', 'public/ebooks/2022_Food_Processing_and_Its_Impact_on_Phenolic_and_other_Bioactive_Constituents_in_Food.pdf', NULL, NULL),
(98, 'Ageing and Nutrition through Lifespan', 'Stefanos Tyrovolas', 'Ageing and Nutrition through Lifespan', 'Health', '2020', 'public/ebooks/2020_Ageing_and_Nutrition_through_Lifespan.pdf', NULL, NULL),
(99, 'Agency and Causal Explanation in Economics', 'Peter Róna László Zsolnai ', 'Agency and Causal Explanation in Economics', 'Business Economics', '2020', 'public/ebooks/2020_Agency and Causal Explanation in Economics.pdf', NULL, NULL),
(100, 'Aging between Participation and Simulation', 'Joschka Haltaufderheide, Johanna Hovemann, Jochen Vollmann (Eds.)', 'Aging between Participation and Simulation', 'Applied Science', '2020', 'public/ebooks/2020_Aging between Participation and Simulation.pdf', NULL, NULL),
(101, 'Food Waste  Valorization', 'Giuseppa Di Bella and Alessia Tropea', 'Food Waste  Valorization', 'Food Science', '2021', 'public/ebooks/2022_Food_Waste_Valorization.pdf', NULL, NULL),
(102, 'Agricultural and Food Waste', 'Montserrat Dueñas Patón and Ignacio García-Estévez ', 'Agricultural and Food Waste', 'Agriculture', '2020', 'public/ebooks/2020_Agricultural_and_Food_Waste.pdf', NULL, NULL),
(103, 'Foodborne  Pathogens and  Food Safety', 'Antonio Afonso Lourenco, Catherine Burgess and Timothy Ells', 'Foodborne  Pathogens and  Food Safety', 'Food Science', '2021', 'public/ebooks/2022_Foodborne_Pathogens_and_Food_Safety.pdf', NULL, NULL),
(104, 'Air Pollution and Plant Ecosystems', 'Evgenios Agathokleous, Elisa Carrari and Pierre Sicard', 'Air Pollution and Plant Ecosystems', 'Biology', '2020', 'public/ebooks/2020_Air_Pollution_and_Plant_Ecosystems.pdf', NULL, NULL),
(105, 'Analytical Methods for Toxics Determination', 'Clinio Locatelli, Marcello Locatelli and Dora Melucci', 'Analytical Methods for Toxics Determination', 'Chemistry', '2020', 'public/ebooks/2020_Analytical_Methods_for_Toxics_Determination.pdf', NULL, NULL),
(106, 'Anticipating and Preparing for Emerging Skills and', 'Brajesh Panth  Rupert Maclean', 'Anticipating and Preparing for Emerging Skills and Jobs', 'Applied Science', '2020', 'public/ebooks/2020_AnticipatingAndPreparingForEme.pdf', NULL, NULL),
(107, 'Fractional  Calculus Theory and Applications', 'Jorge E. Macías Díaz', 'Fractional  Calculus Theory and Applications', 'Physics', '2021', 'public/ebooks/2022_Fractional_Calculus__Theory_and_Applications.pdf', NULL, NULL),
(108, 'Application of Analytical Chemistry to Foods and F', 'Daniele Naviglio and Monica Gallo', 'Application of Analytical Chemistry to Foods and Food Technology', 'Chemistry', '2020', 'public/ebooks/2020_Application_of_Analytical_Chemistry_to_Foods_and_Food_Technology.pdf', NULL, NULL),
(109, 'Application of Liquid Chromatography in Food Analy', 'Oscar Núñez and Paolo Lucci', 'Application of Liquid Chromatography in Food Analysis', 'Food Science', '2020', 'public/ebooks/2020_Application_of_Liquid_Chromatography_in_Food_Analysis.pdf', NULL, NULL),
(110, 'Frontier Research  on the Processing  Quality of C', 'Qiang Wang and Aimin Shi', 'Frontier Research  on the Processing  Quality of Cereal  and Oil Food', 'Food Science', '2021', 'public/ebooks/2022_Frontier_Research_on_the_Processing_Quality_of_Cereal_and_Oil_Food.pdf', NULL, NULL),
(111, 'Assessment of Different Contaminants in Freshwater', 'Diana M. P. Galassi, Tiziana Di Lorenzo and Grant Hose', 'Assessment of Different Contaminants in Freshwater', 'Aquatic', '2020', 'public/ebooks/2020_Assessment_of_Different_Contaminants_in_Freshwater.pdf', NULL, NULL),
(112, 'Frontiers in  Atmospheric Pressure  Plasma Technol', 'Andrei Vasile Nastut', 'Frontiers in  Atmospheric Pressure  Plasma Technology', 'Applied Science', '2021', 'public/ebooks/2022_Frontiers_in_Atmospheric_Pressure_Plasma_Technology.pdf', NULL, NULL),
(113, 'Asthma', 'Nikoletta Rovina', 'Asthma', 'Health', '2020', 'public/ebooks/2020_Asthma.pdf', NULL, NULL),
(114, 'Audacious Education Purposes', 'Fernando M. Reimers', 'Audacious Education Purposes', 'Education', '2020', 'public/ebooks/2020_AudaciousEducationPurposes.pdf', NULL, NULL),
(115, 'Autistic Community and the Neurodiversity Movement', 'Steven K. Kapp', 'Autistic Community and the Neurodiversity Movement', 'Research', '2020', 'public/ebooks/2020_Autistic Community and the Neurodiversity Movement.pdf', NULL, NULL),
(116, 'Frontiers of Asset Pricing', 'James W. Kolari and Syppo Pynnonen', 'Frontiers of Asset Pricing', 'Business Economics', '2021', 'public/ebooks/2022_Frontiers_of_Asset_Pricing.pdf', NULL, NULL),
(117, 'Autonomy, Rationality, and Contemporary Bioethics', 'Jonathan Pugh', 'Autonomy, Rationality, and Contemporary Bioethics', 'Bioethics', '2020', 'public/ebooks/2020_Autonomy, Bioethics.pdf', NULL, NULL),
(118, 'Bayesian Econometrics', 'Mauro Bernardi, Stefano Grassi and Francesco Ravazzolo', 'Bayesian Econometrics', 'Business Economics', '2020', 'public/ebooks/2020_Bayesian_Econometrics.pdf', NULL, NULL),
(119, 'Gifted Education,  Creativity and  Leadership  Dev', 'Dorothy Sisk', 'Gifted Education,  Creativity and  Leadership  Development', 'Education', '2021', 'public/ebooks/2022_Gifted_Education_Creativity_and_Leadership_Development.pdf', NULL, NULL),
(120, 'Becoming a Teacher', 'Josef de Beer, Neal Petersen & Herman J. van Vuuren', 'Becoming a Teacher', 'Education', '2020', 'public/ebooks/2020_Becoming a teacher.pdf', NULL, NULL),
(121, 'Behavioral Game Theory', 'Russell Golman', 'Behavioral Game Theory', 'Psychology', '2020', 'public/ebooks/2020_Behavioral_Game_Theory.pdf', NULL, NULL),
(122, 'Biocatalytic Synthesis of Bioactive Compounds', 'Josefina Aleu', 'Biocatalytic Synthesis of Bioactive Compounds', 'Biology', '2020', 'public/ebooks/2020_Biocatalytic_Synthesis_of_Bioactive_Compounds.pdf', NULL, NULL),
(123, 'Biochemical and Nutritional Changes during Food Pr', 'Vibeke Orlien and Tomas Bolumar', 'Biochemical and Nutritional Changes during Food Processing and Storage', 'Biochemistry', '2020', 'public/ebooks/2020_Biochemical_and_Nutritional_Changes_during_Food_Processing_and_Storage.pdf', NULL, NULL),
(124, 'Health Statistics The Australian Experience  and O', 'Richard Madden', 'Health Statistics The Australian Experience  and Opportunities', 'Research', '2021', 'public/ebooks/2022_Health_Statistics.pdf', NULL, NULL),
(125, 'Cyber Security', 'Wei Lu et al.', 'Cyber Security', 'Technology', '2020', 'public/ebooks/2020_Book_CyberSecurity.pdf', NULL, NULL),
(126, 'Innovations in  the Food System  Exploring the Fut', 'Maria Lisa Clodoveo', 'Innovations in  the Food System  Exploring the Future of Food', 'Food Science', '2021', 'public/ebooks/2022_Innovations_in_the_Food_System_Exploring_the_Future_of_Food.pdf', NULL, NULL),
(127, 'Managing Socio-ecological Production Landscapes an', 'Osamu Saito Suneetha M Subramanian Shizuka Hashimoto Kazuhiko Takeuchi ', 'Managing Socio-ecological Production Landscapes and Seascapes for Sustainable Communities in Asia', 'Sociology', '2020', 'public/ebooks/2020_Book_ManagingSocio-ecologicalProduc.pdf', NULL, NULL),
(128, 'Organic Waste Composting through Nexus Thinking', 'Hiroshan Hettiarachchi Serena Caucci Kai Schwärzel', 'Organic Waste Composting through Nexus Thinking', 'Societies ', '2020', 'public/ebooks/2020_Book_OrganicWasteCompostingThroughN.pdf', NULL, NULL),
(129, 'Integral Transformation,  Operational Calculus  an', 'Hari Mohan Srivastava', 'Integral Transformation,  Operational Calculus  and Their Applications', 'Calculus', '2021', 'public/ebooks/2022_Integral_Transformation_Operational_Calculus_and_Their_Applications.pdf', NULL, NULL),
(130, 'Clinical Research on Diabetic Complications', 'Didac Mauricio', 'Clinical Research on Diabetic Complications', 'Medicine', '2020', 'public/ebooks/2020_Clinical_Research_on_Diabetic_Complications.pdf', NULL, NULL),
(131, 'Learning Environment  Design and Use', 'Pamela Woolner and Paula Cardellino', 'Learning Environment  Design and Use', 'Environmental Education', '2021', 'public/ebooks/2022_Learning_Environment_Design_and_Use.pdf', NULL, NULL),
(132, 'Marine Fungus', 'Federico Baltar', 'Marine Fungus', 'Science', '2021', 'public/ebooks/2022_Marine_Fungus.pdf', NULL, NULL),
(137, 'Marine Glycomics', 'Yuki Fujii, Marco Gerdol and Yasuhiro Ozeki', 'Marine Glycomics', 'Science', '2021', 'public/ebooks/2022_Marine_Glycomics.pdf', NULL, NULL),
(138, 'Computational Methods for the Analysis of Genomic ', 'Francisco A. Gómez Vela, Federico Divina and Miguel García-Torres', 'Computational Methods for the Analysis of Genomic Data and Biological Processes', 'Biology', '2020', 'public/ebooks/2020_Computational_Methods_for_the_Analysis_of_Genomic_Data_and_Biological_Processes.pdf', NULL, NULL),
(139, 'Marine Nitrogen  Fixation and  Phytoplankton  Ecol', 'Sang Heon Lee, P.S. Bhavya and Bo Kyung Kim', 'Marine Nitrogen  Fixation and  Phytoplankton  Ecology', 'Science', '2022', 'public/ebooks/2022_Marine_Nitrogen_Fixation_and_Phytoplankton_Ecology.pdf', NULL, NULL),
(140, 'Consumer Preference and Acceptance of Food Product', 'Derek V. Byrne', 'Consumer Preference and Acceptance of Food Products', 'Food Science', '2020', 'public/ebooks/2020_Consumer_Preference_and_Acceptance_of_Food_Products.pdf', NULL, NULL),
(141, 'Mathematical  Methods,  Modelling and  Application', 'Lucas Jódar and Rafael Company', 'Mathematical  Methods,  Modelling and  Applications', 'Mathematics', '2021', 'public/ebooks/2022_Mathematical_Methods_Modelling_and_Applications.pdf', NULL, NULL),
(142, 'Mediterranean Diet  and Physical Activity  as Heal', 'Daniela Bonofiglio', 'Mediterranean Diet  and Physical Activity  as Healthy Lifestyles  for Human Health', 'Health', '2021', 'public/ebooks/2022_Mediterranean_Diet_and_Physical_Activity_as_Healthy_Lifestyles_for_Human_Health.pdf', NULL, NULL),
(143, 'Microplastics in  Aquatic Environments Occurrence,', 'Costanza Scopetani, Tania Martellini and Diana Campos', 'Microplastics in  Aquatic Environments Occurrence, Distribution and Effects', 'Science', '2021', 'public/ebooks/2022_Microplastics_in_Aquatic_Environments.pdf', NULL, NULL),
(144, 'Contextualizing Entrepreneurship Theory ', 'Ted Baker and Friederike Welter', 'Contextualizing Entrepreneurship Theory ', 'Entrepreneurship', '2020', 'public/ebooks/2020_Contextualizing Entrepreneurship Theory.pdf', NULL, NULL),
(145, 'Natural Additives  in Food', 'Lillian Barros and Isabel C.F.R. Ferreira', 'Natural Additives  in Food', 'Food Science', '2021', 'public/ebooks/2022_Natural_Additives_in_Food.pdf', NULL, NULL),
(146, 'Non-communicable  Diseases, Big Data and  Artifici', 'Youxin Wang and Ming Feng', 'Non-communicable  Diseases, Big Data and  Artificial Intelligence', 'Science', '2021', 'public/ebooks/2022_Noncommunicable_Diseases_Big_Data_and_Artificial_Intelligence.pdf', NULL, NULL),
(147, 'Novel Analytical  Methods in Food  Analysis', 'Philippe Delahaut and Riccardo Marega', 'Novel Analytical  Methods in Food  Analysis', 'Food Science', '2021', 'public/ebooks/2022_Novel_Analytical_Methods_in_Food_Analysis.pdf', NULL, NULL),
(148, 'Novel Processing  Technology of  Dairy Products', 'Ekaterini Moschopoulou', 'Novel Processing  Technology of  Dairy Products', 'Food Science', '2021', 'public/ebooks/2022_Novel_Processing_Technology_of_Dairy_Products.pdf', NULL, NULL),
(149, 'Nutrient Intake and Physical  Exercise as Modulato', 'Sílvia Rocha-Rodrigues, José Afonso and Monica Sousa', 'Nutrient Intake and Physical  Exercise as Modulators of  Healthy Women', 'Food Science', '2021', 'public/ebooks/2022_Nutrient_Intake_and_Physical_Exercise_as_Modulators_of_Healthy_Women.pdf', NULL, NULL),
(150, 'Eco-Novel Food and Feed', 'Isabel Maria Nunes De Sousa, Anabela Raymundo and María Dolores Torres', 'Eco-Novel Food and Feed', 'Applied Science', '2020', '2020_EcoNovel_Food_and_Feed.pdf', NULL, NULL),
(151, 'Edible Insects as Innovative Foods Nutritional, Fu', 'Chuleui Jung and Victor Benno Meyer-Rochow', 'Edible Insects as Innovative Foods Nutritional, Functional and Acceptability Assessments', 'Food Science', '2020', 'public/ebooks/2020_Edible_Insects_as_Innovative_Foods.pdf', NULL, NULL),
(152, 'Empowering Teachers to Build a Better World', 'Fernando M. Reimers', 'Empowering Teachers to Build a Better World', 'Education', '2020', 'public/ebooks/2020_Empowering Teachers.pdf', NULL, NULL),
(153, 'Nutrient Intake and Physical  Exercise as Modulato', 'Sílvia Rocha-Rodrigues, José Afonso and Monica Sousa', 'Nutrient Intake and Physical  Exercise as Modulators of  Healthy Women', 'Health', '2021', 'public/ebooks/2022_Nutrient_Intake_and_Physical_Exercise_as_Modulators_of_Healthy_Women.pdf', NULL, NULL),
(154, 'Entrepreneurial Finance at the Dawn of Industry 4.', 'Quan-Hoang Vuong', 'Entrepreneurial Finance at the Dawn of Industry 4.0', 'Entrepreneurship', '2020', 'public/ebooks/2020_Entrepreneurial_Finance_at_the_Dawn_of_Industry_40.pdf', NULL, NULL),
(155, 'Entrepreneurship and Intrapreneurship in Social, S', 'Sebastian Aparicio, Andreu Turro and Maria Noguera', 'Entrepreneurship and Intrapreneurship in Social, Sustainable, and Economic Development', 'Sociology', '2020', 'public/ebooks/2020_Entrepreneurship_and_Intrapreneurship_in_Social_Sustainable_and_Economic_Development.pdf', NULL, NULL),
(156, 'Enzyme Inhibitor from Marine Organisms', 'Dirk Tischler', 'Enzyme Inhibitor from Marine Organisms', 'Aquatic', '2020', 'public/ebooks/2020_Enzyme_Inhibitor_from_Marine_Organisms.pdf', NULL, NULL),
(157, 'Food Chains and Food Webs in Aquatic Ecosystems', 'Young-Seuk Park and Ihn-Sil Kwak', 'Food Chains and Food Webs in Aquatic Ecosystems', 'Food Science', '2020', 'public/ebooks/2020_Food_Chains_and_Food_Webs_in_Aquatic_Ecosystems.pdf', NULL, NULL),
(158, 'Freshwater Algal Toxins', 'Angeles Jos and Ana M. Cameán', 'Freshwater Algal Toxins', 'Aquatic', '2020', 'public/ebooks/2020_Freshwater_Algal_Toxins.pdf', NULL, NULL),
(159, 'Functional Statistics', 'Javier Martínez Torres', 'Functional Statistics', 'Mathematics', '2020', 'public/ebooks/2020_Functional_Statistics.pdf', NULL, NULL),
(160, 'Futures of the Study of Culture', 'Doris Bachmann-Medick, Horst Carl, Wolfgang Hallet and Ansgar Nünning', 'Futures of the Study of Culture', 'Sociology', '2020', 'public/ebooks/2020_Futures of the Study of Culture.pdf', NULL, NULL),
(161, 'Health-Promoting Effects of Traditional Foods', 'Marcello Iriti', 'Health-Promoting Effects of Traditional Foods', 'Health', '2020', 'public/ebooks/2020_HealthPromoting_Effects_of_Traditional_Foods.pdf', NULL, NULL),
(162, 'Human and Organisational Factors', 'Benoît Journé Hervé Laroche Corinne Bieder Claude Gilbert', 'Human and Organisational Factors', 'Humanities', '2020', 'public/ebooks/2020_HUman and Organizational Factors.pdf', NULL, NULL),
(163, 'MAPPING GOOD WORK', 'MARK WILLIAMS, YING ZHOU AND MIN ZOU', 'MAPPING GOOD WORK', 'Sociology', '2020', 'public/ebooks/2020_Mapping Good Work.pdf', NULL, NULL),
(164, 'Marine Algal Antioxidants', 'Christophe Brunet and Clementina Sansone', 'Marine Algal Antioxidants', 'Aquatic', '2020', 'public/ebooks/2020_Marine_Algal_Antioxidants.pdf', NULL, NULL),
(165, 'Marine Biologically Active Compounds as Feed Addit', 'Izabela Michalak', 'Marine Biologically Active Compounds as Feed Additives', 'Aquatic', '2020', 'public/ebooks/2020_Marine_Biologically_Active_Compounds_as_Feed_Additives.pdf', NULL, NULL),
(166, 'Marine Sediments', 'Marcello Di Risio, Donald F. Hayes and Davide Pasquali', 'Marine Sediments', 'Aquatic', '2020', 'public/ebooks/2020_Marine_Sediments.pdf', NULL, NULL),
(167, 'Marine Nitrogen  Fixation and  Phytoplankton  Ecol', 'Sang Heon Lee, P.S. Bhavya and Bo Kyung Kim', 'Marine Nitrogen  Fixation and  Phytoplankton  Ecology', 'Science', '2021', 'public/ebooks/2022_Marine_Nitrogen_Fixation_and_Phytoplankton_Ecology.pdf', NULL, NULL),
(168, 'Nutrition and  Athletic  Performance', 'Stephen Ives', 'Nutrition and  Athletic  Performance', 'Health', '2022', 'public/ebooks/2022_Nutrition_and_Athletic_Performance.pdf', NULL, NULL),
(169, 'Natural Alternatives against Bacterial Foodborne P', 'Adolfo J. Martinez-Rodriguez and Jose Manuel Silvan', 'Natural Alternatives against Bacterial Foodborne Pathogens', 'Bioethics', '2020', 'public/ebooks/2020_Natural_Alternatives_against_Bacterial_Foodborne_Pathogens.pdf', NULL, NULL),
(170, 'Organizational Network Analysis', 'Anna Ujwary-Gil', 'Organizational Network Analysis', 'Applied Science', '2020', 'public/ebooks/2020_Organizational Network Analysis.pdf', NULL, NULL),
(171, 'Quality and Safety of Meat Products', 'Begoña Panea and Guillermo Ripol', 'Quality and Safety of Meat Products', 'Food Science', '2020', 'public/ebooks/2020_Quality_and_Safety_of_Meat_Products.pdf', NULL, NULL),
(172, 'Rapid Methods for Assessing Food Safety and Qualit', 'Maria Schirone and Pierina Visciano', 'Rapid Methods for Assessing Food Safety and Quality', 'Food Science', '2020', 'public/ebooks/2020_Rapid_Methods_for_Assessing_Food_Safety_and_Quality.pdf', NULL, NULL),
(173, 'Seafood Sustainability', 'Naresh C. Pradhan Junning Cai Stephen M. Stohs', 'Seafood Sustainability', 'Aquatic', '2020', 'public/ebooks/2020_Seafood_Sustainability__Series_I.pdf', NULL, NULL),
(174, 'Understanding Values Work', 'Harald Askeland ∙ Gry Espedal ∙ Beate Jelstad Løvaas ∙ Stephen Sirris', 'Understanding Values Work', 'Humanities', '2020', 'public/ebooks/2020_UnderstandingValuesWork.pdf', NULL, NULL),
(175, 'Water Management for Sustainable Food Production', 'Narayanan Kannan and Aavudai Anandhi', 'Water Management for Sustainable Food Production', 'Agriculture', '2020', 'public/ebooks/2020_Water_Management_for_Sustainable_Food_Production.pdf', NULL, NULL),
(176, 'Nutrition and  Human Oral  Health', 'Kirstin Vach and Johan Peter Woelber', 'Nutrition and  Human Oral  Health', 'Health', '2022', 'public/ebooks/2022_Nutrition_and_Human_Oral_Health.pdf', NULL, NULL),
(177, 'Nutrition and  Women Bone Health', 'Nutrition and  Women Bone Health', 'Nutrition and  Women Bone Health', 'Health', '2022', 'public/ebooks/2022_Nutrition_and_Women_Bone_Health.pdf', NULL, NULL),
(178, 'Nutrition Challenges  for Middle-Aged and  Older W', 'Masakazu Terauchi', 'Nutrition Challenges  for Middle-Aged and  Older Women', 'Health', '2022', 'public/ebooks/2022_Nutrition_Challenges_for_MiddleAged_and_Older_Women.pdf', NULL, NULL),
(179, 'Nutrition, Diet and  Healthy Aging', 'Emiliana Giacomello and Luana Toniolo', 'Nutrition, Diet and  Healthy Aging', 'Health', '2022', 'public/ebooks/2022_Nutrition_Diet_and_Healthy_Aging.pdf', NULL, NULL),
(180, 'Advances in Food Processing', 'Theodoros Varzakas and Panagiotis Tsarouhas', 'Advances in Food Processing', 'Applied Science', '2021', 'public/ebooks/2021_Advances_in_Food_Processing_Food_Preservation.pdf', NULL, NULL),
(181, 'Nutrition, Diet and  Healthy Aging', 'Emiliana Giacomello and Luana Toniolo', 'Nutrition, Diet and  Healthy Aging', 'Health', '2022', 'public/ebooks/2022_Nutrition_Diet_and_Healthy_Aging.pdf', NULL, NULL),
(182, 'Advertising and the Transformation of Screen Cultu', 'Patrick Vonderau and Yvonne Zimmermann', 'Advertising and the Transformation of Screen Cultures', 'Humanities', '2021', 'public/ebooks/2021_Advertising.pdf', NULL, NULL),
(183, 'Nutritional  Deficiency in  Celiac Disease Current', 'Anil K. Verma', 'Nutritional  Deficiency in  Celiac Disease Current Perspective', 'Health', '2022', 'public/ebooks/2022_Nutritional_Deficiency_in_Celiac_Disease.pdf', NULL, NULL),
(184, 'Nutritional Habits  and Interventions  in Childhoo', 'Silvia Scaglioni, Alessandra Mazzocchi and Valentina De Cosmi', 'Nutritional Habits  and Interventions  in Childhood', 'Health', '2022', 'public/ebooks/2022_Nutritional_Habits_and_Interventions_in_Childhood.pdf', NULL, NULL),
(185, 'Applied Biomechanics', 'Enrique Navarro, Archit Navandar, Santiago Veiga and Alejandro San Juan Ferrer', 'Applied Biomechanics', 'Applied Science', '2021', 'public/ebooks/2021_Applied_Biomechanics_Sport_Performance_and_Injury_Prevention.pdf', NULL, NULL),
(186, 'Artificial Intelligence for a Better Future', 'Julian Kind', 'Artificial Intelligence for a Better Future', 'Technology', '2021', 'public/ebooks/2021_Artificial Intelligence for a Better Future.pdf', NULL, NULL),
(187, 'Omics  Technologies in  Food Science', 'Yelko Rodríguez-Carrasco and Bojan Šarkanj', 'Omics  Technologies in  Food Science', 'Food Science', '2022', 'public/ebooks/2022_Omics_Technologies_in_Food_Science.pdf', NULL, NULL),
(188, 'Arts and Health Promotion', 'J. Hope Corbin Mariana Sanmartino Emily Alden Hennessy Helga Bjørnøy Urke', 'Arts and Health Promotion', 'Health', '2021', 'public/ebooks/2021_Arts and Health Promotion.pdf', NULL, NULL),
(189, 'Online and Distance  Learning during  Lockdown Tim', 'Palitha Edirisingha', 'Online and Distance  Learning during  Lockdown Times COVID-19 Stories (Volume 1)', 'Societies', '2022', 'public/ebooks/2022_Online_and_Distance_Learning_during_Lockdown_Times_COVID19_Stories_Volume_1.pdf', NULL, NULL),
(190, 'Bioactive Compounds from Brown Algae', 'Roland Ulber', 'Bioactive Compounds from Brown Algae', 'Aquatic', '2021', 'public/ebooks/2021_Bioactive_Compounds_from_Brown_Algae.pdf', NULL, NULL),
(191, 'Online and Distance  Learning during  Lockdown Tim', 'Palitha Edirisingha', 'Online and Distance  Learning during  Lockdown Times COVID-19 Stories (Volume 2)', 'Societies', '2022', 'public/ebooks/2022_Online_and_Distance_Learning_during_Lockdown_Times_Volume 2.pdf', NULL, NULL),
(192, 'Bioactive Molecules from Marine Microorganisms', 'Hanna Mazur-Marzec and Anna Toruńska-Sitarz', 'Bioactive Molecules from Marine Microorganisms', 'Aquatic', '2021', 'public/ebooks/2021_Bioactive_Molecules_from_Marine_Microorganisms.pdf', NULL, NULL),
(193, 'Bioactive Molecules with Healthy Features to Food ', 'María Dolores Torres and Elena Falqué López', 'Bioactive Molecules with Healthy Features to Food and Non-food Applications', 'Food Science', '2021', 'public/ebooks/2021_Bioactive_Molecules_with_Healthy_Features_to_Food_and_Nonfood_Applications.pdf', NULL, NULL),
(194, 'Biological Activities of Plant Food Components', 'Carla Gentile', 'Biological Activities of Plant Food Components', 'Food Science', '2021', 'public/ebooks/2021_Biological_Activities_of_Plant_Food_Components_Implications_in_Human_Health_2021.pdf', NULL, NULL),
(195, 'Open Innovation  in Micro, Small  and MediumSized', 'João Leitão and Léo-Paul Dana', 'Open Innovation  in Micro, Small  and MediumSized Enterprises', 'Entrepreneurship', '2022', 'public/ebooks/2022_Open_Innovation_in_Micro_Small_and_MediumSized_Enterprises.pdf', NULL, NULL),
(196, 'Biology and Control of Invasive Fishes', 'Peter W. Sorensen', 'Biology and Control of Invasive Fishes', 'Aquatic', '2021', 'public/ebooks/2021_Biology_and_Control_of_Invasive_Fishes_2021.pdf', NULL, NULL),
(197, 'Orchid  Biochemistry 2.0', 'Jen-Tsung Chen', 'Orchid  Biochemistry 2.0', 'Biochemistry', '2022', 'public/ebooks/2022_Orchid_Biochemistry_20.pdf', NULL, NULL),
(198, 'Agroecology Now!', 'Colin Ray Anderson • Janneke Bruil M. Jahi Chappell • Csilla Kiss Michel Patrick Pimbert', 'Agroecology Now!', 'Food Science', '2021', 'public/ebooks/2021_Book_AgroecologyNow.pdf', NULL, NULL),
(199, 'Parenting in the 21st Century', 'Christy M. Buchanan and Terese Glatz', 'Parenting in the 21st Century', 'Psychology', '2022', 'public/ebooks/2022_Parenting_in_the_21st_Century.pdf', NULL, NULL),
(200, 'Physical Activity,  Nutritional Status,  Physical ', 'Andrzej Tomczak', 'Physical Activity,  Nutritional Status,  Physical Fitness', 'Health', '2022', 'public/ebooks/2022_Physical_Activity_Nutritional_Status_Physical_Fitness.pdf', NULL, NULL),
(201, 'Physicochemical and  Sensory Evaluation  of Grain-', 'Luca Serventi, Charles Brennan and Rana Mustafa', 'Physicochemical and  Sensory Evaluation  of Grain-Based Food', 'Food Science', '2022', 'public/ebooks/2022_Physicochemical_and_Sensory_Evaluation_of_GrainBased_Food.pdf', NULL, NULL),
(202, 'Applied Pedagogies for Higher Education', 'y Dawn A. Morley · Md Golam Jami', 'Applied Pedagogies for Higher Education', 'Education', '2021', 'public/ebooks/2021_Book_AppliedPedagogiesForHigherEduc.pdf', NULL, NULL),
(203, 'Connecting Mathematics and Mathematics Education', 'Erich Christian Wittmann', 'Connecting Mathematics and Mathematics Education', 'Mathematics', '2021', 'public/ebooks/2021_Book_ConnectingMathematicsAndMathem.pdf', NULL, NULL),
(204, 'Processing  Foods to Design  Structures  for Optim', 'Alejandra Acevedo-Fani and Harjinder Singh', 'Processing  Foods to Design  Structures  for Optimal  Functionality', 'Food Science', '2022', 'public/ebooks/2022_Processing_Foods_to_Design_Structures_for_Optimal_Functionality.pdf', NULL, NULL),
(205, 'Cultural Convergence', 'Ondřej Pilný · Ruud van den Beuken · Ian R. Walsh', 'Cultural Convergence', 'Humanities', '2021', 'public/ebooks/2021_Book_CulturalConvergence.pdf', NULL, NULL),
(206, 'Data Privacy and Trust in Cloud Computing', 'Theo Lynn · John G. Mooney Lisa van der Werff · Grace Fox', 'Data Privacy and Trust in Cloud Computing', 'Technology', '2021', 'public/ebooks/2021_Book_DataPrivacyAndTrustInCloudComp.pdf', NULL, NULL),
(207, 'Quantitative  Assessment of  Environmental/ Human ', 'Cheng Yan', 'Quantitative  Assessment of  Environmental/ Human Health Risks', 'Health', '2022', 'public/ebooks/2022_Quantitative_Assessment_of_EnvironmentalHuman_Health_Risks.pdf', NULL, NULL),
(208, 'Recent  Advances in  Nanomagnetism', 'David S. Schmool', 'Recent  Advances in  Nanomagnetism', 'Science', '2022', 'public/ebooks/2022_Recent_Advances_in_Nanomagnetism.pdf', NULL, NULL),
(209, 'Recovery, Isolation  and Characterization  on Food', 'Ute Schweiggert-Weisz and Emanuele Zannini', 'Recovery, Isolation  and Characterization  on Food Proteins', 'Food Science', '2022', 'public/ebooks/2022_Recovery_Isolation_and_Characterization_on_Food_Proteins.pdf', NULL, NULL),
(210, 'Renewable and  Sustainable Energy Current State an', 'Bartlomiej Iglinski and Michał Bernard Pietrzak', 'Renewable and  Sustainable Energy Current State and Prospects', 'Science', '2022', 'public/ebooks/2022_Renewable_and_Sustainable_Energy.pdf', NULL, NULL),
(211, 'Sensory and  Consumer Research  for a Sustainable ', 'Antti Knaapila', 'Sensory and  Consumer Research  for a Sustainable  Food System', 'Food Science', '2022', 'public/ebooks/2022_Sensory_and_Consumer_Research_for_a_Sustainable_Food_System.pdf', NULL, NULL),
(212, 'Decision Science for Future Earth', 'Tetsukazu Yahara ', 'Decision Science for Future Earth', 'Applied Science', '2021', 'public/ebooks/2021_Book_DecisionScienceForFutureEarth.pdf', NULL, NULL),
(213, 'Design Ethnography', 'Francis Müller', 'Design Ethnography', 'Humanities', '2021', 'public/ebooks/2021_Book_DesignEthnography.pdf', NULL, NULL),
(214, 'Digital Entrepreneurship', 'Mariusz Soltanifar Mathew Hughes Lutz Göcke', 'Digital Entrepreneurship', 'Entrepreneurship', '2021', 'public/ebooks/2021_Book_DigitalEntrepreneurship.pdf', NULL, NULL),
(215, 'Sustainability  in International  Business Talent ', 'Anna Visvizi', 'Sustainability  in International  Business Talent Management, Market  Entry Strategies, Competitiveness', 'Entrepreneurship', '2022', 'public/ebooks/2022_Sustainability_in_International_Business.pdf', NULL, NULL),
(216, 'Education and Climate Change', 'Fernando M. Reimers', 'Education and Climate Change', 'Environmental Education', '2021', 'public/ebooks/2021_Book_EducationAndClimateChange (1).pdf', NULL, NULL),
(217, 'Sustainable  Food Production  and Consumption', 'Ada Margarida Correia Nunes Da Rocha and  Belmira Almeida Ferreira Neto', 'Sustainable  Food Production  and Consumption', 'Food Science', '2022', 'public/ebooks/2022_Sustainable_Food_Production_and_Consumption.pdf', NULL, NULL),
(218, 'Environmental Valuation with Discrete Choice Exper', 'Petr Mariel · David Hoyos · et al.', 'Environmental Valuation with Discrete Choice Experiments', 'Environmental Education', '2021', 'public/ebooks/2021_Book_EnvironmentalValuationWithDisc.pdf', NULL, NULL),
(219, 'Sustainable  Functional Food  Processing', 'Danijela Bursać Kovačević and Predrag Putnik', 'Sustainable  Functional Food  Processing', 'Food Science', '2022', 'public/ebooks/2022_Sustainable_Functional_Food_Processing.pdf', NULL, NULL),
(220, 'Financial Crisis Management and Democracy', 'Bettina De Souza Guilherme Christian Ghymers Stephany Griffith-Jones Andrea Ribeiro Hoffmann', 'Financial Crisis Management and Democracy', 'Business Economics', '2021', 'public/ebooks/2021_Book_FinancialCrisisManagementAndDe.pdf', NULL, NULL),
(221, 'The Ethnobiology  of Wild Foods', 'Andrea Pieroni', 'The Ethnobiology  of Wild Foods', 'Food Science', '2022', 'public/ebooks/2022_The_Ethnobiology_of_Wild_Foods.pdf', NULL, NULL),
(222, 'The Guidelines for  Balanced Diet and  Healthy Lif', 'Megan E. Jensen', 'The Guidelines for  Balanced Diet and  Healthy Lifestyles  during Pregnancy The Management of Health and  Morbidity in Pregnancy', 'Food Science', '2022', 'public/ebooks/2022_The_Guidelines_for_Balanced_Diet_and_Healthy_Lifestyles_during_Pregnancy_The_Management_of_Health_and_Morbidity_in_Pregnancy.pdf', NULL, NULL),
(223, 'From Melancholia to Depression', 'Åsa Jansson', 'From Melancholia to Depression', 'Psychology', '2021', '2021_Book_FromMelancholiaToDepression.pdf', NULL, NULL),
(224, 'Human Challenge Studies in Endemic Settings', 'Euzebiusz Jamrozik Michael J. Selgelid ', 'Human Challenge Studies in Endemic Settings', 'Humanities', '2021', 'public/ebooks/2021_Book_HumanChallengeStudiesInEndemic.pdf', NULL, NULL),
(225, 'Implementing Deeper Learning and 21st Century Educ', 'Fernando M. Reimers', 'Implementing Deeper Learning and 21st Century Education Reforms', 'Education', '2021', 'public/ebooks/2021_Book_ImplementingDeeperLearningAnd2.pdf', NULL, NULL),
(226, 'The Healthiest Diet for You: Scientific Aspects', 'Artemis P. Simopoulos', 'The Healthiest Diet for You: Scientific Aspects', 'Food Science', '2022', 'public/ebooks/2022_The_Healthiest_Diet_for_You_Scientific_Aspects.pdf', NULL, NULL),
(227, 'The Impact of  Alcoholic Beverages  on Human Healt', 'Peter Anderson', 'The Impact of  Alcoholic Beverages  on Human Health', 'Food Science', '2022', 'public/ebooks/2022_The_Impact_of_Alcoholic_Beverages_on_Human_Health.pdf', NULL, NULL),
(228, 'Implementing Responsible Research and Innovation', 'Christian Wittrock · Ellen-Marie Forsberg · Auke Pols · Philip Macnaghten · David Ludwig', 'Implementing Responsible Research and Innovation', 'Technology', '2021', 'public/ebooks/2021_Book_ImplementingResponsibleResearc.pdf', NULL, NULL),
(229, 'The Multifaceted  Nature of Food and  Nutrition In', 'António Raposo and Heesup Han', 'The Multifaceted  Nature of Food and  Nutrition Insecurity  around the World and  Foodservice Business', 'Food Science', '2022', 'public/ebooks/2022_The_Multifaceted_Nature_of_Food_and_Nutrition_Insecurity_around_the_World_and_Foodservice_Business.pdf', NULL, NULL);
INSERT INTO `books` (`id`, `title`, `author`, `keywords`, `category`, `year`, `filePath`, `created_at`, `updated_at`) VALUES
(230, 'Improving a Country’s Education', 'Nuno Crato  ', 'Improving a Country’s Education', 'Education', '2021', 'public/ebooks/2021_Book_ImprovingACountrySEducation.pdf', NULL, NULL),
(231, 'The Potential of  Dietary Antioxidants', 'Irene Dini and Domenico Montesano', 'The Potential of  Dietary Antioxidants', 'Food Science', '2022', 'public/ebooks/2022_The_Potential_of_Dietary_Antioxidants.pdf', NULL, NULL),
(232, 'Internal Crowdsourcing in Companies', 'Hannah Ulbrich Marco Wedel Hans-Liudger Dienel ', 'Internal Crowdsourcing in Companies', 'Applied Science', '2021', 'public/ebooks/2021_Book_InternalCrowdsourcingInCompani.pdf', NULL, NULL),
(233, 'International Labour Organization and Global Socia', 'Tarja Halonen Ulla Liukkunen', 'International Labour Organization and Global Social Governance', 'Societies', '2021', 'public/ebooks/2021_Book_InternationalLabourOrganizatio.pdf', NULL, NULL),
(234, 'The Role of Nutrition  in Cardiometabolic  Health ', 'Abeer M. Mahmoud and Shane A. Phillips', 'The Role of Nutrition  in Cardiometabolic  Health Experimental, Clinical, and  Community-Based Evidence', 'Health', '2022', 'public/ebooks/2022_The_Role_of_Nutrition_in_Cardiometabolic_Health_Experimental_Clinical_and_CommunityBased_Evidence.pdf', NULL, NULL),
(235, 'International Perspectives in Values-Based Mental ', 'Drozdstoy Stoyanov Bill Fulford Giovanni Stanghellini Werdie Van Staden Michael TH Wong', 'International Perspectives in Values-Based Mental Health Practice', 'Health', '2021', 'public/ebooks/2021_Book_InternationalPerspectivesInVal.pdf', NULL, NULL),
(236, 'International Symposium on Mathematics, Quantum Th', 'Tsuyoshi Takagi · Masato Wakayama ·  et al.', 'International Symposium on Mathematics, Quantum Theory, and Cryptography', 'Mathematics', '2021', 'public/ebooks/2021_Book_InternationalSymposiumOnMathem.pdf', NULL, NULL),
(237, 'The Theory  Applications  of Finance and  Macroeco', 'The Theory  Applications  of Finance and  Macroeconomics', 'The Theory  Applications  of Finance and  Macroeconomics', 'Business Economics', '2022', 'public/ebooks/2022_The_Theory__Applications_of__Finance_and_Macroeconomics.pdf', NULL, NULL),
(238, 'Towards a Public  Health Wellness Psychosocial & P', 'Won Ju Hwang and Mi Jeong Kim', 'Towards a Public  Health Wellness Psychosocial & Physical  Health in Community', 'Health', '2022', 'public/ebooks/2022_Towards_a_Public_Health_Wellness_Psychosocial__Physical_Health_in_Community.pdf', NULL, NULL),
(239, 'Mesoscale Analysis of Hydraulics', 'Weilin Xu', 'Mesoscale Analysis of Hydraulics', 'Science', '2021', 'public/ebooks/2021_Book_MesoscaleAnalysisOfHydraulics.pdf', NULL, NULL),
(240, 'Multiscale Biomechanics and Tribology of Inorganic', 'Georg-Peter Ostermeyer Valentin L. Popov Evgeny V. Shilko Olga S. Vasiljeva', 'Multiscale Biomechanics and Tribology of Inorganic and Organic Systems', 'Science', '2021', 'public/ebooks/2021_Book_MultiscaleBiomechanicsAndTribo.pdf', NULL, NULL),
(241, 'Next Generation Supply Chains', 'Rosanna Fornasiero Saskia Sardesai Ana Cristina Barros Aristides Matopoulos', 'Next Generation Supply Chains', 'Science', '2021', 'public/ebooks/2021_Book_NextGenerationSupplyChains.pdf', NULL, NULL),
(242, 'Pluralistic Struggles in Gender, Sexuality and Col', 'Erika Alm · Linda Berg et al.', 'Pluralistic Struggles in Gender, Sexuality and Coloniality', 'Humanities', '2021', 'public/ebooks/2021_Book_PluralisticStrugglesInGenderSe.pdf', NULL, NULL),
(243, 'Skills in Rheumatology', 'Hani Almoallim Mohamed Cheikh Editors', 'Skills in Rheumatology', 'Health', '2021', 'public/ebooks/2021_Book_SkillsInRheumatology.pdf', NULL, NULL),
(244, 'Teacher Transition into Innovative Learning Enviro', 'Wesley Imms · Thomas Kvan', 'Teacher Transition into Innovative Learning Environments', 'Education', '2021', 'public/ebooks/2021_Book_TeacherTransitionIntoInnovativ.pdf', NULL, NULL),
(245, 'Teaching Multiplication with Lesson Study', 'Masami Isoda · Raimundo Olfos', 'Teaching Multiplication with Lesson Study', 'Education', '2021', 'public/ebooks/2021_Book_TeachingMultiplicationWithLess.pdf', NULL, NULL),
(246, 'Textbook of Patient Safety and Clinical Risk Manag', 'Liam Donaldson Walter Ricciardi Susan Sheridan Riccardo Tartaglia', 'Textbook of Patient Safety and Clinical Risk Management', 'Health', '2021', 'public/ebooks/2021_Book_TextbookOfPatientSafetyAndClin.pdf', NULL, NULL),
(247, 'The Demography of Disasters', 'Dávid Karácsonyi Andrew Taylor Deanne Bird', 'The Demography of Disasters', 'Environmental Education', '2021', 'public/ebooks/2021_Book_TheDemographyOfDisasters.pdf', NULL, NULL),
(248, 'The Innovation Revolution in Agriculture', 'Hugo Campos', 'The Innovation Revolution in Agriculture', 'Agriculture', '2021', 'public/ebooks/2021_Book_TheInnovationRevolutionInAgric.pdf', NULL, NULL),
(249, 'The Science of Citizen Science', 'Katrin Vohland · Anne Land-Zandstra et al.', 'The Science of Citizen Science', 'Sociology', '2021', 'public/ebooks/2021_Book_TheScienceOfCitizenScience.pdf', NULL, NULL),
(250, 'Transnational Solidarity in Times of Crises', 'Christian Lahusen · Ulrike Zschache · Maria Kousis', 'Transnational Solidarity in Times of Crises', 'Political Sociology', '2021', 'public/ebooks/2021_Book_TransnationalSolidarityInTimes.pdf', NULL, NULL),
(251, 'Unsettling Responsibility in Science Education', 'Marc Higgins', 'Unsettling Responsibility in Science Education', 'Education', '2021', 'public/ebooks/2021_Book_UnsettlingResponsibilityInScie.pdf', NULL, NULL),
(252, 'Transitioning to GOOD HEALTH  AND WELL-BEING', 'Antoine Flahault (Ed.)', 'Transitioning to GOOD HEALTH  AND WELL-BEING', 'Health', '2022', 'public/ebooks/2022_Transitioning_to_Good_Health_and_WellBeing.pdf', NULL, NULL),
(253, 'Update on  Nutrition and  Food Allergy', 'Nicolette W. de Jong and Harry J. Wichers', 'Update on  Nutrition and  Food Allergy', 'Food Science', '2022', 'public/ebooks/2022_Update_on_Nutrition_and_Food_Allergy.pdf', NULL, NULL),
(254, 'Updates in  Management  of SARS-CoV-2  Infection', 'Robert Flisiak', 'Updates in  Management  of SARS-CoV-2  Infection', 'Health', '2022', 'public/ebooks/2022_Updates_in_Management_of_SARSCoV2_Infection.pdf', NULL, NULL),
(255, 'Valorization of  Food Processing  By-Products', 'Marco Poiana, Francesco Caponio and Antonio Piga', 'Valorization of  Food Processing  By-Products', 'Food Science', '2022', 'public/ebooks/2022_Valorization_of_Food_Processing_ByProducts.pdf', NULL, NULL),
(256, 'Wine Sensory Faults Origin, Prevention and Removal', 'Fernando M. Nunes, Fernanda Cosme and Luís Filipe-Ribeiro', 'Wine Sensory Faults Origin, Prevention and Removal', 'Food Science', '2022', 'public/ebooks/2022_Wine_Sensory_Faults.pdf', NULL, NULL),
(257, 'Women in Artificial  intelligence (AI)', 'Aida Valls and Karina Gibert', 'Women in Artificial  intelligence (AI)', 'Technology', '2022', 'public/ebooks/2022_Women_in_Artificial_intelligence_AI.pdf', NULL, NULL),
(258, 'A Glimpse into  Future Research  on Microalgae  Di', 'Carmela Caroppo and Patrizia Pagliara', 'A Glimpse into  Future Research  on Microalgae  Diversity, Ecology and  Biotechnology', 'Science', '2023', 'public/ebooks/2023_A_Glimpse_into_Future_Research_on_Microalgae_Diversity_Ecology_and_Biotechnology.pdf', NULL, NULL),
(259, 'Advances in ComputerAided Technology', 'Marek Kočiško and Martin Pollák', 'Advances in ComputerAided Technology', 'Technology', '2023', '2023_Advances_in_ComputerAided_Technology.pdf', NULL, NULL),
(260, 'Chemical and Technological Characterization of Dai', 'Michele Faccia', 'Chemical and Technological Characterization of Dairy Products', 'Food Science', '2021', 'public/ebooks/2021_Chemical_and_Technological_Characterization_of_Dairy_Products.pdf', NULL, NULL),
(261, 'Advances of Spectrometric  Techniques in Food Anal', 'Daniel Cozzolino', 'Advances of Spectrometric  Techniques in Food Analysis  and Authentication ', 'Food Science', '2023', 'public/ebooks/2023_Advances_of_Spectrometric_Techniques_in_Food_Analysis_and_Authentication.pdf', NULL, NULL),
(262, 'Advantages and  Disadvantages of  Electronic Cigar', 'Andrzej Sobczak and Leon Kośmider', 'Advantages and  Disadvantages of  Electronic Cigarettes', 'Health', '2023', 'public/ebooks/2023_Advantages_and_Disadvantages_of_Electronic_Cigarettes.pdf', NULL, NULL),
(263, 'Applications of  Radio Frequency  Heating in Food ', 'Shaojin Wang and Rui Li', 'Applications of  Radio Frequency  Heating in Food  Processing', 'Food Science', '2023', 'public/ebooks/2023_Applications_of_Radio_Frequency_Heating_in_Food_Processing.pdf', NULL, NULL),
(264, 'Aquatic Emerging  Contaminants and  Their Ecotoxic', 'François Gagné, Stefano Magni and Valerio Matozzo', 'Aquatic Emerging  Contaminants and  Their Ecotoxicological  Consequences', 'Science', '2023', 'public/ebooks/2023_Aquatic_Emerging_Contaminants_and_Their_Ecotoxicological_Consequences.pdf', NULL, NULL),
(265, 'Arts Therapies  with Children  and Adolescents', 'Dafna Regev', 'Arts Therapies  with Children  and Adolescents', 'Psychology', '2023', 'public/ebooks/2023_Arts_Therapies_with_Children_and_Adolescents.pdf', NULL, NULL),
(266, 'Body Condition and  Productivity, Health  and Welf', 'María-Luz García and María-José Argente', 'Body Condition and  Productivity, Health  and Welfare', 'Health', '2023', 'public/ebooks/2023_Body_Condition_and_Productivity_Health_and_Welfare.pdf', NULL, NULL),
(267, 'Chemistry of  Essential Oils and  Food Flavours', 'Ian Southwell and Oscar Núñez', 'Chemistry of  Essential Oils and  Food Flavours', 'Food Science', '2023', 'public/ebooks/2023_Chemistry_of_Essential_Oils_and_Food_Flavours.pdf', NULL, NULL),
(268, 'Climate Change  and Food  Insecurity', 'Christopher Robin Bryant, Andrea Vitali and Azzeddine Madani', 'Climate Change  and Food  Insecurity', 'Humanities', '2023', 'public/ebooks/2023_Climate_Change_and_Food_Insecurity.pdf', NULL, NULL),
(269, 'Children, Human Rights and Temporary Labour Migrat', 'Rasika Ramburuth Jayasuriya', 'Children, Human Rights and Temporary Labour Migration', 'Humanities', '2021', 'public/ebooks/2021_Children, Human Rights.pdf', NULL, NULL),
(270, 'Clinical Pathways in Stroke Rehabilitation', 'Thomas Platz', 'Clinical Pathways in Stroke Rehabilitation', 'Health', '2021', 'public/ebooks/2021_Clinical Pathways in Stroke Rehabilitation.pdf', NULL, NULL),
(271, 'Coastal Geohazard and Offshore Geotechnics', 'Dong-Sheng Jeng, Jisheng Zhang and V.S. Ozgur Kirca', 'Coastal Geohazard and Offshore Geotechnics', 'Environmental Education', '2021', 'public/ebooks/2021_Coastal_Morphology_Assessment_and_Coastal_Protection.pdf', NULL, NULL),
(272, 'COMMUNICATING SCIENCE', 'TOSS GASCOIGNE, BERNARD SCHIELE et al.', 'COMMUNICATING SCIENCE', 'Science', '2021', 'public/ebooks/2021_Communicating Science.pdf', NULL, NULL),
(273, 'Concept and Design Developments in School Improvem', 'Arnoud Oude Groote Beverborg Tobias Feldho Katharina Maag Merki Falk Radisch', 'Concept and Design Developments in School Improvement Research', 'Education', '2021', 'public/ebooks/2021_Concept and Design Developments in School.pdf', NULL, NULL),
(274, 'Coral Reef Resilience', 'Loke Ming Chou and Danwei Huang', 'Coral Reef Resilience', 'Aquatic', '2021', 'public/ebooks/2021_Coral_Reef_Resilience.pdf', NULL, NULL),
(275, 'Corporate Finance', 'Ştefan Cristian Gherghina', 'Corporate Finance', 'Business Economics', '2021', 'public/ebooks/2021_Corporate_Finance.pdf', NULL, NULL),
(276, 'COVID-19 and Social Sciences', 'Carlos Miguel Ferreira and Sandro Serpa', 'COVID-19 and Social Sciences', 'Societies', '2021', 'public/ebooks/2021_COVID19_and_Social_Sciences.pdf', NULL, NULL),
(277, 'COVID-19: Impact on Public Health and Healthcare', 'Manoj Sharma and Kavita Batra', 'COVID-19: Impact on Public Health and Healthcare', 'Health', '2021', 'public/ebooks/2021_COVID19_Impact_on_Public_Health_and_Healthcare_vol1_2021.pdf', NULL, NULL),
(278, 'Cultivating Teacher Resilience', 'Caroline F. Mansfield', 'Cultivating Teacher Resilience', 'Education', '2021', 'public/ebooks/2021_CultivatingTeacherResilience.pdf', NULL, NULL),
(279, 'Cultures in Conflict', 'OLAF BLASCHKE et al.', 'Cultures in Conflict', 'Societies', '2021', 'public/ebooks/2021_Cultures in Conflict.pdf', NULL, NULL),
(280, 'Current Trends and Perspectives in the Application', 'Marta Otero and Ricardo N. Coimbra', 'Current Trends and Perspectives in the Application of Polymeric Materials for Wastewater Treatment', 'Technology', '2021', 'public/ebooks/2021_Current_Trends_and_Perspectives_in_the_Application_of_Polymeric_Materials_for_Wastewater_Treatment.pdf', NULL, NULL),
(281, 'Current Trends in Game-Based Learning', 'Margarida M. Marques and Lúcia Pombo', 'Current Trends in Game-Based Learning', 'Technology', '2021', 'public/ebooks/2021_Current_Trends_in_GameBased_Learning.pdf', NULL, NULL),
(282, 'Data Science for Economics and Finance', 'Sergio Consoli  Diego Reforgiato Recupero  Michaela Saisana', 'Data Science for Economics and Finance', 'Business Economics', '2021', 'public/ebooks/2021_Data Science for Economics and Finance.pdf', NULL, NULL),
(284, 'Design Ethnography', ' Anna Brailovsky', 'Design Ethnography', 'Anthropology', '2021', 'public/ebooks/2021_DesignEthnography.pdf', NULL, NULL),
(285, 'Designing Sustainability for All The Design of Sus', 'Carlo Vezzoli Brenda Garcia Parra Cindy Kohtala', 'Designing Sustainability for All The Design of Sustainable Product-Service Systems Applied to Distributed Economies', 'Engineering', '2021', 'public/ebooks/2021_Designing Sustainability for All.pdf', NULL, NULL),
(286, 'Dialogue for Intercultural Understanding Placing C', 'Fiona Maine Maria Vrikki', 'Dialogue for Intercultural Understanding Placing Cultural Literacy at the Heart of Learning', 'Humanities', '2021', 'public/ebooks/2021_Dialogue for Intercultural Understanding.pdf', NULL, NULL),
(287, 'Didaktik and Curriculum in Ongoing Dialogue ', 'Ellen Krogh, Ane Qvortrup, and Stefan Ting Graf', 'Didaktik and Curriculum in Ongoing Dialogue ', 'Humanities', '2021', 'public/ebooks/2021_Didaktik and Curriculum in Ongoing Dialogue.pdf', NULL, NULL),
(288, 'Differential/ Difference Equations Mathematical Mo', 'Ioannis Dassios, Omar Bazighifan and Osama Moaaz', 'Differential/ Difference Equations Mathematical Modeling, Oscillation and Applications', 'Mathematics', '2021', 'public/ebooks/2021_DifferentialDifference_Equations.pdf', NULL, NULL),
(289, 'Digital Transformation of Learning Organizations', 'Dirk Ifenthaler · Sandra Hofhues  Marc Egloffstein  Christian Helbig', 'Digital Transformation of Learning Organizations', 'Education', '2021', 'public/ebooks/2021_DigitalTransformationOfLearning.pdf', NULL, NULL),
(290, 'Drug Metabolism/ Transport and Pharmacokinetics', 'Im-Sook Song', 'Drug Metabolism/ Transport and Pharmacokinetics', 'Medicine', '2021', 'public/ebooks/2021_Drug_MetabolismTransport_and_Pharmacokinetics.pdf', NULL, NULL),
(291, 'Drug–Drug Interactions', 'Dong Hyun Kim and Sangkyu Lee', 'Drug–Drug Interactions', 'Medicine', '2021', 'public/ebooks/2021_DrugndashDrug_Interactions.pdf', NULL, NULL),
(292, 'Early Child Development From Measurement to Optima', 'Verónica Schiariti', 'Early Child Development From Measurement to Optimal Functioning and Evidence-Based Policy', 'Health', '2021', 'public/ebooks/2021_Early_Child_Development_From_Measurement_to_Optimal_Functioning_and_Evidencebased_Policy.pdf', NULL, NULL),
(293, 'Effort environnemental et équité', 'Peter Lang', 'Effort environnemental et équité', 'Environmental Education', '2021', 'public/ebooks/2021_Effort environnemental et équité.pdf', NULL, NULL),
(294, 'EMBODYING Contagion', 'SANDRA BECKER, MEGEN DE BRUIN-MOLÉ AND SARA POLAK', 'EMBODYING Contagion', 'Political Sociology', '2021', 'public/ebooks/2021_Embodying Contagion.pdf', NULL, NULL),
(295, 'Emerging Issues in Occupational Health Psychology', 'Jose M. León-Pérez, Mindy K. Shoss, Aristides I. Ferreira and Gabriele Giorgi', 'Emerging Issues in Occupational Health Psychology', 'Health', '2021', 'public/ebooks/2021_Emerging_Issues_in_Occupational_Health_Psychology.pdf', NULL, NULL),
(296, 'Emotion and Its Relationship to Acceptance, Food C', 'Witoon Prinyawiwatkul and Adriano Gomes da Cruz', 'Emotion and Its Relationship to Acceptance, Food Choice, and Consumption', 'Food Science', '2021', 'public/ebooks/2021_Emotion_and_Its_Relationship_to_Acceptance_Food_Choice_and_Consumption_The_New_Perspective.pdf', NULL, NULL),
(297, 'Ensuring Quality Education and Good Learning Envir', 'Ana B. Bernardo Adri ´an Castro-L ´opez Javier Puente Leandro S. Almeida', 'Ensuring Quality Education and Good Learning Environments for Students', 'Education', '2021', 'public/ebooks/2021_Ensuring_Quality_Education_and_Good_Learning_Environments_for_Students.pdf', NULL, NULL),
(298, 'Euthanasia: Searching for the Full Story', 'Timothy Devos', 'Euthanasia: Searching for the Full Story', 'Health', '2021', 'public/ebooks/2021_Euthanasia- Searching for the Full Story.pdf', NULL, NULL),
(299, 'Extra Virgin Olive Oil Quality, Safety, and Authen', 'Theodoros Varzakas', 'Extra Virgin Olive Oil Quality, Safety, and Authenticity', 'Food Science', '2021', 'public/ebooks/2021_Extra_Virgin_Olive_Oil_Quality_Safety_and_Authenticity.pdf', NULL, NULL),
(300, 'Finance 4.0—Towards a Socio-Ecological Finance Sys', 'Marcus M. Dapp Dirk Helbing Stefan Klauser', 'Finance 4.0—Towards a Socio-Ecological Finance System A Participatory Framework to Promote Sustainability', 'Mathematics', '2021', 'public/ebooks/2021_Finance 4.0 - Towards a Socio-Ecological Finance System.pdf', NULL, NULL),
(301, 'Firm Competitive Advantage Through Relationship Ma', 'Bartosz Deszczyński', 'Firm Competitive Advantage Through Relationship Management', 'Humanities', '2021', 'public/ebooks/2021_Firm Competitive Advantage Through Relationship Management.pdf', NULL, NULL),
(302, 'Flavor and Aroma Analysis as a Tool for Quality Co', 'Ángel Calín-Sánchez and Ángel A. Carbonell-Barrachina', 'Flavor and Aroma Analysis as a Tool for Quality Control of Foods', 'Food Science', '2021', 'public/ebooks/2021_Flavor_and_Aroma_Analysis_as_a_Tool_for_Quality_Control_of_Foods.pdf', NULL, NULL),
(303, 'Fluid Mechanics of Plankton', 'Hidekatsu Yamazaki and J. Rudi Strickler', 'Fluid Mechanics of Plankton', 'Aquatic', '2021', 'public/ebooks/2021_Fluid_Mechanics_of_Plankton.pdf', NULL, NULL),
(304, 'Food Innovation as a Means of Developing Healthier', 'Adrián Rabadán and Rodolfo Bernabéu', 'Food Innovation as a Means of Developing Healthier and More Sustainable Foods', 'Food Science', '2021', 'public/ebooks/2021_Food_Innovation_as_a_Means_of_Developing_Healthier_and_More_Sustainable_Foods.pdf', NULL, NULL),
(305, 'Forest, Foods and Nutrition', 'Alessandra Durazzo et al. ', 'Forest, Foods and Nutrition', 'Environmental Education', '2021', 'public/ebooks/2021_Forest_Foods_and_Nutrition (1).pdf', NULL, NULL),
(306, 'Freshwater Macroinvertebrates', 'Angela Boggero and Laura Garzoli', 'Freshwater Macroinvertebrates', 'Aquatic', '2021', 'public/ebooks/2021_Freshwater_Macroinvertebrates_Main_Gaps_and_Future_Trends_2021.pdf', NULL, NULL),
(307, 'From Melancholia to Depression Disordered Mood in ', 'Åsa Jansson', 'From Melancholia to Depression Disordered Mood in Nineteenth-Century Psychiatry', 'Health', '2021', 'public/ebooks/2021_FromMelancholiaToDepression.pdf', NULL, NULL),
(308, 'Guardians of Public Value', 'Arjen Boin · Lauren A. Fahy · Paul ‘t Hart', 'Guardians of Public Value', 'Aquatic', '2021', 'public/ebooks/2021_GuardiansOfPublicValue.pdf', NULL, NULL),
(309, 'HALAL DEVELOPMENT: TRENDS, OPPORTUNITIES AND CHALL', 'Heri Pratikto & Ahmad Taufiq et al.', 'HALAL DEVELOPMENT: TRENDS, OPPORTUNITIES AND CHALLENGES', 'Humanities', '2021', 'public/ebooks/2021_Halal Development.pdf', NULL, NULL),
(310, 'Health Care for Older Adults', 'Francisco José Tarazona Santabalbina et al. ', 'Health Care for Older Adults', 'Health', '2021', 'public/ebooks/2021_Health_Care_for_Older_Adults.pdf', NULL, NULL),
(311, 'Implementing Deeper Learning and 21st Education Re', 'Fernando M. Reimers', 'Implementing Deeper Learning and 21st Education Reforms', 'Education', '2021', 'public/ebooks/2021_ImplementingDeeperLearningAnd2 (1).pdf', NULL, NULL),
(312, 'Implementing Responsible Research and Innovation', 'Christian Wittrock · Ellen-Marie Forsberg · Auke Pols · Philip Macnaghten · David Ludwig', 'Implementing Responsible Research and Innovation', 'Research', '2021', 'public/ebooks/2021_ImplementingResponsibleResearch.pdf', NULL, NULL),
(313, 'Improving a Country’s Education', 'Nuno Crato  ', 'Improving a Country’s Education', 'Education', '2021', 'public/ebooks/2021_ImprovingACountrySEducation.pdf', NULL, NULL),
(314, 'Integral Equations Theories, Approximations and Ap', 'Samad Noeiaghdam and Denis N. Sidorov', 'Integral Equations Theories, Approximations and Applications', 'Mathematics', '2021', 'public/ebooks/2021_Integral_Equations.pdf', NULL, NULL),
(315, 'Internal Crowdsourcing in Companies', 'Hannah Ulbrich Marco Wedel Hans-Liudger Dienel', 'Internal Crowdsourcing in Companies', 'Humanities', '2021', 'public/ebooks/2021_InternalCrowdsourcingInCompani.pdf', NULL, NULL),
(316, 'International Perspectives in Values-Based Mental ', 'Drozdstoy Stoyanov et al. ', 'International Perspectives in Values-Based Mental Health Practice', 'Research', '2021', 'public/ebooks/2021_InternationalPerspectivesInVal.pdf', NULL, NULL),
(317, 'I N V E N T O R Y A N A LY T I C S', 'R O B E R T O R O S S I', 'I N V E N T O R Y A N A LY T I C S', 'Mathematics', '2021', 'public/ebooks/2021_Inventory Analytics.pdf', NULL, NULL),
(318, 'Leadership for Change', 'W.P. Wahl  René Pelser', 'Leadership for Change', 'Political Sociology', '2021', 'public/ebooks/2021_Leadership for change.pdf', NULL, NULL),
(319, 'Leading Transformative Change Collectively', 'Petra Kuenkel et al. ', 'Leading Transformative Change Collectively', 'Humanities', '2021', 'public/ebooks/2021_Leading Transformative Change Collectively.pdf', NULL, NULL),
(320, 'Leaving a Violent Relationship', 'Adele Jones ', 'Leaving a Violent Relationship', 'Humanities', '2021', 'public/ebooks/2021_Leaving_a_Violent_Relationship.pdf', NULL, NULL),
(321, 'Life Cycle Assessment of Energy Systems', 'Guillermo San Miguel and Sergio Alvarez', 'Life Cycle Assessment of Energy Systems', 'Technology', '2021', 'public/ebooks/2021_Life_Cycle_Assessment_of_Energy_Systems.pdf', NULL, NULL),
(322, 'Disaster Risk Reduction and Climate Change Adaptat', 'Mikio Ishiwatari and Daisuke Sasaki', 'Disaster Risk Reduction and Climate Change Adaptation', 'Science', '2023', 'public/ebooks/2023_Disaster_Risk_Reduction_and_Climate_Change_Adaptation.pdf', NULL, NULL),
(323, 'Dynamic Modelling and Simulation of Food Systems ', 'Carlos Vilas, Míriam R. García and Jose A. Egea', 'Dynamic Modelling and Simulation of Food Systems ', 'Physics', '2023', 'public/ebooks/2023_Dynamic_Modelling_and_Simulation_of_Food_Systems.pdf', NULL, NULL),
(324, 'Lipid Nutrition Guidelines', 'Harumi Okuyama et al. ', 'Lipid Nutrition Guidelines', 'Health', '2021', 'public/ebooks/2021_Lipid_Nutrition_Guidelines.pdf', NULL, NULL),
(325, 'Education and Sustainable Development Goals', 'Yuzhuo Cai and Lili-Ann Wolf', 'Education and Sustainable Development Goals', 'Education', '2023', 'public/ebooks/2023_Education_and_Sustainable_Development_Goals.pdf', NULL, NULL),
(326, 'MAKING RESEARCH MATTER', 'Tara Lamont', 'MAKING RESEARCH MATTER', 'Research', '2021', 'public/ebooks/2021_Making Research Matter.pdf', NULL, NULL),
(327, 'Education and Worklife in Times of Uncertainty Cha', 'Diego Monferrer, Alma Rodríguez Sánchez and Marta Estrada-Guillén', 'Education and Worklife in Times of Uncertainty Challenges Emerging from the COVID-19 Pandemic in the Field of Sustainable Development', 'Education', '2023', 'public/ebooks/2023_Education_and_Worklife_in_Times_of_Uncertainty_Challenges_Emerging_from_the_COVID19_Pandemic_in_the_Field_of_Sustainable_Development.pdf', NULL, NULL),
(328, 'Emerging Protein Sources for Food Production and H', 'Przemyslaw Lukasz Kowalczewski, Anubhav Pratap Singh and David Kitts', 'Emerging Protein Sources for Food Production and Human Nutrition', 'Food Science', '2023', 'public/ebooks/2023_Emerging_Protein_Sources_for_Food_Production_and_Human_Nutrition.pdf', NULL, NULL),
(329, 'Managerial and Entrepreneurial Decision Making', 'Matteo Cristofaro, Maria José Sousa, José Carlos Sánchez-García and Aron Larsson', 'Managerial and Entrepreneurial Decision Making', 'Entrepreneurship', '2021', 'public/ebooks/2021_Managerial_and_Entrepreneurial_Decision_Making.pdf', NULL, NULL),
(330, 'Maternal Perinatal Mental Health', 'M. Carmen Míguez Varela', 'Maternal Perinatal Mental Health', 'Health', '2021', 'public/ebooks/2021_Maternal_Perinatal_Mental_Health.pdf', NULL, NULL),
(331, 'Energy Transition and Environmental Sustainability', 'Prafula Pearce and Tina Soliman Hunter', 'Energy Transition and Environmental Sustainability ', 'Science', '2023', 'public/ebooks/2023_Energy_Transition_and_Environmental_Sustainability.pdf', NULL, NULL),
(332, 'Entrepreneurial Education Strengthening Resilience', 'Jaana Seikkula-Leino, Priti Verma, Maria Salomaa and  Mats Westerberg', 'Entrepreneurial Education Strengthening Resilience, Societal Change and Sustainability', 'Education', '2023', 'public/ebooks/2023_Entrepreneurial_Education_Strengthening_Resilience_Societal_Change_and_Sustainability.pdf', NULL, NULL),
(333, 'Measurement across the Sciences', 'Luca Mari Mark Wilson Andrew Maul', 'Measurement across the Sciences', 'Science', '2021', 'public/ebooks/2021_Measurement Across Sciences.pdf', NULL, NULL),
(334, 'Environmental Exposure to Toxic Chemicals and Huma', 'Virgínia Cruz Fernandes and Diogo Pestana', 'Environmental Exposure to Toxic Chemicals and Human Health', 'Environmental Education', '2023', 'public/ebooks/2023_Environmental_Exposure_to_Toxic_Chemicals_and_Human_Health.pdf', NULL, NULL),
(335, 'Measurement across the Sciences', 'Luca Mari Mark Wilson Andrew Maul', 'Measurement across the Sciences', 'Science', '2021', 'public/ebooks/2021_Measurement across the Sciences.pdf', NULL, NULL),
(336, 'Measuring Professional Competence for the Teaching', 'Raphael Wess Heiner Klock Hans-Stefan Siller Gilbert Greefrath', 'Measuring Professional Competence for the Teaching of Mathematical Modelling', 'Research', '2021', 'public/ebooks/2021_Measuring Professional Competence.pdf', NULL, NULL),
(337, 'Environmentally Friendly Manufacturing of Food Add', 'Fuping Lu and Wenjie Sui', 'Environmentally Friendly Manufacturing of Food Additives and Functional Ingredients', 'Environmental Education', '2023', 'public/ebooks/2023_Environmentally_Friendly_Manufacturing_of_Food_Additives_and_Functional_Ingredients.pdf', NULL, NULL),
(338, 'Measuring Professional Competence for the Teaching', 'Raphael Wess Heiner Klock Hans-Stefan Siller Gilbert Greefrath', 'Measuring Professional Competence for the Teaching of Mathematical Modelling', 'Research', '2021', 'public/ebooks/2021_Measuring Professional Competence.pdf', NULL, NULL),
(339, 'Medical Geology', 'Marina Cabral Pinto', 'Medical Geology', 'Geology', '2021', 'public/ebooks/2021_Medical_Geology.pdf', NULL, NULL),
(340, 'Membranes for Water and Wastewater Treatment', 'Asuncion Maria Hidalgo and Maria Dolores Murcia', 'Membranes for Water and Wastewater Treatment', 'Aquatic', '2021', 'public/ebooks/2021_Membranes_for_Water_and_Wastewater_Treatment.pdf', NULL, NULL),
(341, 'Filter-Feeding in Marine Invertebrates', 'Hans Ulrik Riisgård', 'Filter-Feeding in Marine Invertebrates', 'Agriculture', '2023', 'public/ebooks/2023_FilterFeeding_in_Marine_Invertebrates.pdf', NULL, NULL),
(342, 'Microbiology of Fermented Foods and Beverages', 'Theodoros Varzakas', 'Microbiology of Fermented Foods and Beverages', 'Food Science', '2021', 'public/ebooks/2021_Microbiology_of_Fermented_Foods_and_Beverages.pdf', NULL, NULL),
(343, 'Fish Nutrition and Feed Technology', 'Marina Paolucci and Shunsuke Koshio', 'Fish Nutrition and Feed Technology', 'Aquatic', '2023', 'public/ebooks/2023_Fish_Nutrition_and_Feed_Technology.pdf', NULL, NULL),
(344, 'Fish Nutrition and Feed Technology', 'Marina Paolucci and Shunsuke Koshio', 'Fish Nutrition and Feed Technology', 'Aquatic', '2023', 'public/ebooks/2023_Fish_Nutrition_and_Feed_Technology.pdf', NULL, NULL),
(345, 'Migrant Protest', 'Elias Steinhilper', 'Migrant Protest', 'Sociology', '2021', 'public/ebooks/2021_Migrant Protest.pdf', NULL, NULL),
(346, 'Food Bioactive Compounds Chemical Challenges and O', 'Smaoui Slim', 'Food Bioactive Compounds Chemical Challenges and Opportunities', 'Biology', '2023', 'public/ebooks/2023_Food_Bioactive_Compounds_Chemical_Challenges_and_Opportunities.pdf', NULL, NULL),
(347, 'Monitoring and Assessment of Environmental Quality', 'Sílvia C. Gonçalves', 'Monitoring and Assessment of Environmental Quality in Coastal Ecosystems', 'Environmental Education', '2021', 'public/ebooks/2021_Monitoring_and_Assessment_of_Environmental_Quality_in_Coastal_Ecosystems.pdf', NULL, NULL),
(348, 'Food Composition and Dedicated Databases ', 'Alessandra Durazzo and Massimo Lucarini', 'Food Composition and Dedicated Databases ', 'Food Science', '2023', 'public/ebooks/2023_Food_Composition_and_Dedicated_Databases_Key_Tools_for_Human_Health_and_Public_Nutrition.pdf', NULL, NULL),
(349, 'Fractional-Order System', 'Thach Ngoc Dinh, Shyam Kamal and Rajesh Kumar Pandey', 'Fractional-Order System', 'Applied Science', '2023', 'public/ebooks/2023_FractionalOrder_System_Control_Theory_and_Applications.pdf', NULL, NULL),
(350, 'Moral Ecology of a Forest', 'JosÉ E. MartÍnEZ-rEyEs', 'Moral Ecology of a Forest', 'Environmental Education', '2021', 'public/ebooks/2021_Moral Ecology of a Forest.pdf', NULL, NULL),
(351, 'Motivation in Organisations', 'Manuel Guillén', 'Motivation in Organisations', 'Research', '2021', 'public/ebooks/2021_Motivation in Organisations.pdf', NULL, NULL),
(352, 'NARROWED LIVES', 'Simo Vehmas Reetta Mietola', 'NARROWED LIVES', 'Health', '2021', 'public/ebooks/2021_Narrowed Lives.pdf', NULL, NULL),
(353, 'Human Biomonitoring in Health Risk Assessment Curr', 'Christophe Rousselle', 'Human Biomonitoring in Health Risk Assessment Current Practices and Recommendations for the Future ', 'Health', '2023', 'public/ebooks/2023_Human_Biomonitoring_in_Health_Risk_Assessment.pdf', NULL, NULL),
(354, 'Natural Antioxidants', 'Monica Rosa Loizzo and Ana Teresa Sanches-Silva', 'Natural Antioxidants', 'Biology', '2021', 'public/ebooks/2021_Natural_Antioxidants_Innovative_Extraction_and_Application_in_Foods.pdf', NULL, NULL),
(355, 'Implementation of Chemometrics and Other Technique', 'Theodoros Varzakas', 'Implementation of Chemometrics and Other Techniques as Means of Authenticity and Traceability to Detect Adulteration in Foods for the Protection of Human Health', 'Health', '2023', 'public/ebooks/2023_Implementation_of_Chemometrics_and_Other_Techniques_as_Means_of_Authenticity_and_Traceability_to_Detect_Adulteration_in_Foods_for_the_Protection_of_Human_Health.pdf', NULL, NULL),
(356, 'Innovation for Sustainable Business', 'Iwona Zdonek and Adam R. Szromek', 'Innovation for Sustainable Business', 'Business Economics', '2023', 'public/ebooks/2023_Innovation_for_Sustainable_Business.pdf', NULL, NULL),
(357, 'New Advances in the Research of Antioxidant Food P', 'Lourdes Amigo and Blanca Hernández-Ledesma', 'New Advances in the Research of Antioxidant Food Peptides', 'Research', '2021', 'public/ebooks/2021_New_Advances_in_the_Research_of_Antioxidant_Food_Peptides.pdf', NULL, NULL),
(358, 'Innovative Pasta with High Nutritional and Health ', 'Laura Gazza and Francesca Nocente', 'Innovative Pasta with High Nutritional and Health Potential', 'Food Science', '2023', 'public/ebooks/2023_Innovative_Pasta_with_High_Nutritional_and_Health_Potential.pdf', NULL, NULL),
(359, 'New Trends in Algebraic Geometry and Its Applicati', 'Sonia Pérez-Díaz', 'New Trends in Algebraic Geometry and Its Applications', 'Mathematics', '2021', 'public/ebooks/2021_New_Trends_in_Algebraic_Geometry_and_Its_Applications.pdf', NULL, NULL),
(360, 'New Trends in Sport and Exercise Medicine', 'Daniela Galli', 'New Trends in Sport and Exercise Medicine', 'Medicine', '2021', 'public/ebooks/2021_New_Trends_in_Sport_and_Exercise_Medicine.pdf', NULL, NULL),
(361, 'Innovative Robot Designs and Approaches', 'Giuseppe Carbone and Med Amine Laribi', 'Innovative Robot Designs and Approaches', 'Technology', '2023', 'public/ebooks/2023_Innovative_Robot_Designs_and_Approaches.pdf', NULL, NULL),
(362, 'Next Generation Supply Chains', 'Rosanna Fornasiero Saskia Sardesai Ana Cristina Barros Aristides Matopoulos', 'Next Generation Supply Chains', 'Technology', '2021', 'public/ebooks/2021_NextGenerationSupplyChains.pdf', NULL, NULL),
(363, 'International Financial Markets and Monetary Polic', 'Robert Czudaj', 'International Financial Markets and Monetary Policy ', 'Business Economics', '2023', 'public/ebooks/2023_International_Financial_Markets_and_Monetary_Policy.pdf', NULL, NULL),
(364, 'INVESTIGATING HUMAN INTERACTION THROUGH MATHEMATIC', 'Kurt T. Brintzenhof', 'INVESTIGATING HUMAN INTERACTION THROUGH MATHEMATICAL ANALYSIS', 'Humanities', '2023', 'public/ebooks/2023_InvestigatingHumanInteractionThroughMathematicalAnalysis.pdf', NULL, NULL),
(365, 'Novel Techniques to Measure the Sensory, Emotional', 'Damir Torrico', 'Novel Techniques to Measure the Sensory, Emotional, and Physiological (Biometric) Responses of Consumers toward Foods and Packaging', 'Technology', '2021', 'public/ebooks/2021_Novel_Techniques_to_Measure_the_Sensory_Emotional_and_Physiological_Biometric_Responses_of_Consumers_toward_Foods_and_Packaging.pdf', NULL, NULL),
(366, 'Numerical Linear Algebra and the Applications', 'Khalide Jbilou and Marilena Mitrouli', 'Numerical Linear Algebra and the Applications', 'Mathematics', '2021', 'public/ebooks/2021_Numerical_Linear_Algebra_and_the_Applicationsspan.pdf', NULL, NULL),
(367, 'Nursing and Society', 'Elena Fernández-Martínez, Lisa Alves Gomes and Cristina Liébana-Presa', 'Nursing and Society', 'Medicine', '2021', 'public/ebooks/2021_Nursing_and_Society.pdf', NULL, NULL),
(368, 'Language Practices in English Classrooms', 'Pia Sundqvist, Erica Sandlund, Marie Källkvist and  Henrik Gyllstad', 'Language Practices in English Classrooms', 'Education', '2023', 'public/ebooks/2023_Language_Practices_in_English_Classrooms.pdf', NULL, NULL),
(369, 'Latest Advances in Preservation Technology for Fre', 'Peng Jin', 'Latest Advances in Preservation Technology for Fresh Fruit and Vegetables', 'Food Science', '2023', 'public/ebooks/2023_Latest_Advances_in_Preservation_Technology_for_Fresh_Fruit_and_Vegetables.pdf', NULL, NULL),
(370, 'Orchid Biochemistry', 'Jen-Tsung Chen', 'Orchid Biochemistry', 'Biochemistry', '2021', 'public/ebooks/Orchid_Biochemistry.pdf', NULL, NULL),
(371, 'Organization and Education Development', 'Suresh Nanwani', 'Organization and Education Development', 'Education', '2021', 'public/ebooks/2021_Organization and Education Development.pdf', NULL, NULL),
(372, 'Making Presentation Math Computable A Context-Sens', 'André Greiner-Petter', 'Making Presentation Math Computable A Context-Sensitive Approach for Translating LaTeX to Computer Algebra Systems', 'Mathematics', '2023', 'public/ebooks/2023_MakingPresentationMathComputable.pdf', NULL, NULL),
(373, 'Marine Natural Product Chemistry A Themed Issue De', 'Bin-Gui Wang, RuAngelie Edrada-Ebel and Chang-Yun Wang', 'Marine Natural Product Chemistry A Themed Issue Dedicated to Prof. Dr. Peter Proksch on His Research Career ', 'Aquatic', '2023', 'public/ebooks/2023_Marine_Natural_Product_Chemistry.pdf', NULL, NULL),
(374, 'Organizing for Sustainability', 'Jan Jonker Niels Faber', 'Organizing for Sustainability', 'Research', '2021', 'public/ebooks/2021_Organizing for Sustainability.pdf', NULL, NULL),
(375, 'Marine Policy', 'Yui-yip Lau and Tomoya Kawasaki', 'Marine Policy', 'Aquatic', '2023', 'public/ebooks/2023_Marine_Policy.pdf', NULL, NULL),
(376, 'Orthogeriatrics', 'Paolo Falaschi David Marsh', 'Orthogeriatrics', 'Research', '2021', 'public/ebooks/2021_Orthogeriatrics.pdf', NULL, NULL),
(377, 'Mental Health Challenges during the COVID-19 Pande', 'Alfonso Troisi', 'Mental Health Challenges during the COVID-19 Pandemic', 'Health', '2023', 'public/ebooks/2023_Mental_Health_Challenges_during_the_COVID19_Pandemic.pdf', NULL, NULL),
(378, 'Method Development and Validation in Food and Phar', 'In-Soo Yoon and Hyun-Jong Cho', 'Method Development and Validation in Food and Pharmaceutical Analysis ', 'Food Science', '2023', 'public/ebooks/2023_Method_Development_and_Validation_in_Food_and_Pharmaceutical_Analysis.pdf', NULL, NULL),
(379, 'Outdoor Learning and Play', 'Liv Torunn Grindheim Hanne Værum Sørensen Angela Rekers', 'Outdoor Learning and Play', 'Societies', '2021', 'public/ebooks/2021_Outdoor Learning and Play.pdf', NULL, NULL),
(380, 'Microbial Diseases of Marine Organisms', 'Snježana Zrnčić', 'Microbial Diseases of Marine Organisms', 'Medicine', '2023', 'public/ebooks/2023_Microbial_Diseases_of_Marine_Organisms.pdf', NULL, NULL),
(381, 'Outdoor Adventure Education', 'Nina S. Roberts', 'Outdoor Adventure Education', 'Societies', '2021', 'public/ebooks/2021_Outdoor_Adventure_Education (1).pdf', NULL, NULL),
(382, 'Monitoring and Promoting Physical Activity, Physic', 'Georgian Badicu, Ana Filipa Silva and Hugo Miguel Borges Sarmento', 'Monitoring and Promoting Physical Activity, Physical Fitness and Motor Competence in Children', 'Health', '2023', 'public/ebooks/2023_Monitoring_and_Promoting_Physical_Activity_Physical_Fitness_and_Motor_Competence_in_Children.pdf', NULL, NULL),
(383, 'Outdoor Adventure Education', 'Nina S. Roberts', 'Outdoor Adventure Education', 'Societies', '2021', 'public/ebooks/2021_Outdoor_Adventure_Education.pdf', NULL, NULL),
(384, 'Partial Differential Equations in Ecology', 'Sergei Petrovski', 'Partial Differential Equations in Ecology', 'Mathematics', '2021', 'public/ebooks/2021_Partial_Differential_Equations_in_Ecology.pdf', NULL, NULL),
(385, 'Monitoring Biodiversity', 'E. Carina H. Keskitalo', 'Monitoring Biodiversity', 'Biology', '2023', 'public/ebooks/2023_Monitoring_Biodiversity.pdf', NULL, NULL),
(386, 'New Developments in Geometric Function Theory', 'Georgia Irina Oros', 'New Developments in Geometric Function Theory', 'Science', '2023', 'public/ebooks/2023_New_Developments_in_Geometric_Function_Theory.pdf', NULL, NULL),
(387, 'Physical Activity, Physical Fitness, and Exercise ', 'Alberto Soriano-Maldonado', 'Physical Activity, Physical Fitness, and Exercise Interventions for Preserving Human Health and Preventing and Treating Chronic Conditions across the Lifespan', 'Health', '2021', 'public/ebooks/2021_Physical_Activity_Physical_Fitness_and_Exercise_Interventions_for_Preserving_Human_Health_and_Preventing_and_Treating_Chronic_Conditions_across_the_Lifespan.pdf', NULL, NULL),
(388, 'Physicochemical, Sensory and Nutritional Propertie', 'Sidonia Martinez and Javier Carballo', 'Physicochemical, Sensory and Nutritional Properties of Foods Affected by Processing and Storage', 'Health', '2021', 'public/ebooks/2021_Physicochemical_Sensory_and_Nutritional_Properties_of_Foods_Affected_by_Processing_and_Storage.pdf', NULL, NULL),
(389, 'Post-Digital, Post-Internet Art and Education', 'Kevin Tavin · Gila Kolb · Juuso Tervo', 'Post-Digital, Post-Internet Art and Education', 'Applied Science', '2021', 'public/ebooks/2021_Post-Digital, Post-Internet Art and Education.pdf', NULL, NULL),
(390, 'Powering a Learning Society During an Age of Disru', 'Sungsup Ra Shanti Jagannathan Rupert Maclean', 'Powering a Learning Society During an Age of Disruption', 'Societies', '2021', 'public/ebooks/2021_Powering a Learning Society.pdf', NULL, NULL),
(391, 'Proteomics and Food Analysis', 'Mónica Carrera Printed Edition of the Special Issue Published in Foods', 'Proteomics and Food Analysis', 'Food Science', '2021', 'public/ebooks/2021_Proteomics_and_Food_Analysis_Principles_Techniques_and_Applications.pdf', NULL, NULL),
(392, 'New Research in Dietary Supplements and Healthy Fo', 'Antonella Amato', 'New Research in Dietary Supplements and Healthy Foods', 'Health', '2023', 'public/ebooks/2023_New_Research_in_Dietary_Supplements_and_Healthy_Foods.pdf', NULL, NULL),
(393, 'Putting Purpose Into Practice', 'Colin Mayer and Bruno Roche', 'Putting Purpose Into Practice', 'Business Economics', '2021', 'public/ebooks/2021_Putting Purpose Into Practice.pdf', NULL, NULL),
(394, 'Nutrition at the Interface of Sleep and Circadian ', 'Egeria Scoditti and Sergio Garbarino', 'Nutrition at the Interface of Sleep and Circadian Rhythms Implications for Health', 'Health', '2023', 'public/ebooks/2023_Nutrition_at_the_Interface_of_Sleep_and_Circadian_Rhythms_Implications_for_Health.pdf', NULL, NULL),
(395, 'Nutrition, Diet and Food Allergy', 'Carla Mastrorilli', 'Nutrition, Diet and Food Allergy', 'Food Science', '2023', 'public/ebooks/2023_Nutrition_Diet_and_Food_Allergy.pdf', NULL, NULL),
(396, 'Nutrition, Diet Quality, Aging and Frailty', 'Cristiano Capurso and Catherine Féart', 'Nutrition, Diet Quality, Aging and Frailty', 'Health', '2023', 'public/ebooks/2023_Nutrition_Diet_Quality_Aging_and_Frailty.pdf', NULL, NULL),
(397, 'Nutrition in Chronic Conditions', 'Omorogieva Ojo and Amanda Rodrigues Amorim Adegboye', 'Nutrition in Chronic Conditions', 'Health', '2023', 'public/ebooks/2023_Nutrition_in_Chronic_Conditions.pdf', NULL, NULL),
(398, 'Nutritional Support for Chronic Disease', 'Sareen Gropper', 'Nutritional Support for Chronic Disease', 'Health', '2023', 'public/ebooks/2023_Nutritional_Support_for_Chronic_Disease.pdf', NULL, NULL),
(399, 'Qualitative Analysis of Food Products', 'Theodoros Varzakas', 'Qualitative Analysis of Food Products', 'Food Science', '2021', 'public/ebooks/2021_Qualitative_Analysis_of_Food_Products.pdf', NULL, NULL),
(400, 'Qualitative and Nutritional Improvement of Cereal-', 'Antonella Pasqualone and Carmine Summo', 'Qualitative and Nutritional Improvement of Cereal-Based Foods and Beverages', 'Food Science', '2021', 'public/ebooks/2021_Qualitative_and_Nutritional_Improvement_of_CerealBased_Foods_and_Beverages.pdf', NULL, NULL),
(401, 'Personalized Nursing and Health Care', 'Riitta Suhonen, Minna Stolt and David Edvardsson', 'Personalized Nursing and Health Care', 'Health', '2023', 'public/ebooks/2023_Personalized_Nursing_and_Health_Care.pdf', NULL, NULL),
(402, 'Quantitative Methods for Economics and Finance', 'J.E. Trinidad-Segovia and Miguel Ángel Sánchez-Granero', 'Quantitative Methods for Economics and Finance', 'Business Economics', '2021', 'public/ebooks/2021_Quantitative_Methods_for_Economics_and_Finance.pdf', NULL, NULL),
(403, 'Phenolic Compounds in FoodCharacterization and Hea', 'Mirella Nardini', 'Characterization and Health Benefits', 'Food Science', '2023', 'public/ebooks/2023_Phenolic_Compounds_in_Food.pdf', NULL, NULL),
(404, 'Regulating Transitions from School to Work', 'Stephan Dahmen', 'Regulating Transitions from School to Work', 'Business Economics', '2021', 'public/ebooks/2021_Regulating Transitions from School to Work.pdf', NULL, NULL),
(405, 'Processing and Properties Analysis of Grain Foods ', 'Yonghui Li and Xiaorong (Shawn) Wu', 'Processing and Properties Analysis of Grain Foods', 'Food Science', '2023', 'public/ebooks/2023_Processing_and_Properties_Analysis_of_Grain_Foods.pdf', NULL, NULL),
(406, 'Progress in Community Nutrition Dietary Patterns a', 'Colin Bell and Penny Love', 'Progress in Community Nutrition Dietary Patterns and Planetary Health', 'Health', '2023', 'public/ebooks/2023_Progress_in_Community_Nutrition.pdf', NULL, NULL),
(407, 'Rethinking Sustainability Towards a Regenerative E', 'Maria Beatrice Andreucci Antonino Marvuglia Milen Baltov · Preben Hansen ', 'Rethinking Sustainability Towards a Regenerative Economy', 'Technology', '2021', 'public/ebooks/2021_Rethinking Sustainability Towards.pdf', NULL, NULL),
(408, 'Recent Advances in Applied Microbiology and Food S', 'Marek Kieliszek and Przemyslaw Lukasz Kowalczewski', 'Recent Advances in Applied Microbiology and Food Sciences', 'Food Science', '2023', 'public/ebooks/2023_Recent_Advances_in_Applied_Microbiology_and_Food_Sciences.pdf', NULL, NULL),
(409, 'Recent Advances in Child and Adolescent Psychiatry', 'Matteo Chiappedi', 'Recent Advances in Child and Adolescent Psychiatry', 'Health', '2023', 'public/ebooks/2023_Recent_Advances_in_Child_and_Adolescent_Psychiatry.pdf', NULL, NULL),
(410, 'The Routledge Handbook of Research Methods for Soc', 'Reinette Biggs et al.', 'The Routledge Handbook of Research Methods for Social-Ecological Systems', 'Research', '2021', 'public/ebooks/2021_Routlege Handbook on Research.pdf', NULL, NULL),
(411, 'Screening, Identification, and Quantification of N', 'Dario Donno', 'Screening, Identification, and Quantification of Nutritional Components and Phytochemicals in Foodstuffs', 'Food Science', '2021', 'public/ebooks/2021_Screening_Identification_and_Quantification.pdf', NULL, NULL),
(412, 'Sex Work, Health, and Human Rights', 'Shira M. Goldenberg Ruth Morgan Thomas Anna Forbes', 'Sex Work, Health, and Human Rights', 'Humanities', '2021', 'public/ebooks/2021_Sex Work, Health, and Human Rights.pdf', NULL, NULL),
(413, 'Sex, Gender and Substance Use', 'Lorraine Greaves', 'Sex, Gender and Substance Use', 'Health', '2021', 'public/ebooks/2021_Sex_Gender_and_Substance_Use.pdf', NULL, NULL),
(414, 'Recent Advances in Child and Adolescent Psychiatry', 'Matteo Chiappedi', 'Recent Advances in Child and Adolescent Psychiatry', 'Health', '2023', 'public/ebooks/2023_Recent_Advances_in_Child_and_Adolescent_Psychiatry.pdf', NULL, NULL),
(415, 'Shared Physical Custody', 'Laura Bernardi Dimitri Mortelmans ', 'Shared Physical Custody', 'Humanities', '2021', 'public/ebooks/2021_Shared Physical Custody.pdf', NULL, NULL),
(416, 'Social Work, Sociometry, and Psychodrama', 'Scott Giacomucci', 'Social Work, Sociometry, and Psychodrama', 'Sociology', '2021', 'public/ebooks/2021_Social Work, Sociometry, and Psychodrama.pdf', NULL, NULL),
(417, 'Socio-Hydrology The New Paradigm in Resilient Wate', 'Tamim Younos et al.', 'Socio-Hydrology The New Paradigm in Resilient Water Management', 'Aquatic', '2021', 'public/ebooks/2021_SocioHydrology_The_New_Paradigm_in_Resilient_Water_Management.pdf', NULL, NULL),
(418, 'Scientific Insights and Technological Advances in ', 'Maria Papageorgiou and Theodoros Varzakas', 'Scientific Insights and Technological Advances in Gluten Free Products Development', 'Science', '2023', 'public/ebooks/2023_Scientific_Insights_and_Technological_Advances_in_Gluten_Free_Products_Development.pdf', NULL, NULL),
(419, 'Solar Energetic Particles', 'Donald V. Reames', 'Solar Energetic Particles', 'Technology', '2021', 'public/ebooks/2021_Solar Energetic Particles.pdf', NULL, NULL),
(420, 'Stability Problems for Stochastic Models', 'Alexander Zeifman, Victor Korolev and Alexander Sipin', 'Stability Problems for Stochastic Models', 'Mathematics', '2021', 'public/ebooks/2021_Stability_Problems_for_Stochastic_Models_Theory_and_Applications.pdf', NULL, NULL),
(421, 'Stress and Health Understanding the Effects and Ex', 'Alyx Taylor', 'Stress and Health Understanding the Effects and Examining Interventions', 'Health', '2021', 'public/ebooks/2021_Stress_and_Health.pdf', NULL, NULL),
(422, 'Stabilization and Resuscitation of Newborns', 'Bernhard Schwaberger', 'Stabilization and Resuscitation of Newborns', 'Health', '2023', 'public/ebooks/2023_Stabilization_and_Resuscitation_of_Newborns.pdf', NULL, NULL),
(423, 'Structure-Seabed Interactions in Marine Environmen', 'Zhen Guo, Yi Hong and Dong-Sheng Jeng', 'Structure-Seabed Interactions in Marine Environments', 'Engineering', '2021', 'public/ebooks/2021_StructureSeabed_Interactions_in_Marine_Environments.pdf', NULL, NULL),
(424, 'Supply Chain 4.0 New Generation of Supply Chain Ma', 'Xue-Ming Yuan and Anrong Xue', 'Supply Chain 4.0 New Generation of Supply Chain Management ', 'Business Economics', '2023', 'public/ebooks/2023_Supply_Chain_40_New_Generation_of_Supply_Chain_Management.pdf', NULL, NULL),
(425, 'Sustainable Education and Social Networks', 'Alfonso Chaves-Montero', 'Sustainable Education and Social Networks', 'Humanities', '2023', 'public/ebooks/2023_Sustainable_Education_and_Social_Networks.pdf', NULL, NULL),
(426, 'Sulfur-Containing Marine Bioactives', 'Anna Palumbo', 'Sulfur-Containing Marine Bioactives', 'Aquatic', '2021', 'public/ebooks/2021_SulfurContaining_Marine_Bioactives.pdf', NULL, NULL),
(427, 'Sustainable Food Supply Chain Research', 'Fred Amofa Yamoah and David Eshun Yawson', 'Sustainable Food Supply Chain Research', 'Food Science', '2023', 'public/ebooks/2023_Sustainable_Food_Supply_Chain_Research.pdf', NULL, NULL),
(428, 'Sustainable Healthy Working Life for All Ages', 'Kerstin Nilsson, Clas-Håkan Nygård, Tove Midtsundstad,  Peter Lundqvist and Joanne Crawford', 'Sustainable Healthy Working Life for All Ages', 'Health', '2023', 'public/ebooks/2023_Sustainable_Healthy_Working_Life_for_All_AgesWork_Environment_Age_Management_and_Employability.pdf', NULL, NULL),
(429, 'Sustainable Development and Resource Productivity ', 'y Harry Lehmann ', 'Sustainable Development and Resource Productivity ', 'Technology', '2021', 'public/ebooks/2021_Sustainable Development and Resource Productivity.pdf', NULL, NULL),
(430, 'Sustainable Marketing, Branding and CSR in the Dig', 'Wilson Ozuem and Silvia Ranfagni', 'Sustainable Marketing, Branding and CSR in the Digital Economy ', 'Business Economics', '2023', 'public/ebooks/2023_Sustainable_Marketing_Branding_and_CSR_in_the_Digital_Economy.pdf', NULL, NULL),
(431, 'Sustainable Consumer Behavior and Food Marketing', 'Oliver Meixner, Petra Riefler and Karin Schanes', 'Sustainable Consumer Behavior and Food Marketing', 'Food Science', '2021', 'public/ebooks/2021_Sustainable_Consumer_Behavior_and_Food_Marketing.pdf', NULL, NULL),
(432, 'Symmetry in Many-Body Physics', 'V.I. Yukalov, V. S. Bagnato and Rashid G. Nazmitdinov', 'Symmetry in Many-Body Physics', 'Physics', '2023', 'public/ebooks/2023_Symmetry_in_ManyBody_Physics.pdf', NULL, NULL);
INSERT INTO `books` (`id`, `title`, `author`, `keywords`, `category`, `year`, `filePath`, `created_at`, `updated_at`) VALUES
(433, 'Sustainable Environmental Solutions', 'Sergio Ferro and Marco Vocciante', 'Sustainable Environmental Solutions', 'Environmental Education', '2021', 'public/ebooks/2021_Sustainable_Environmental_Solutions.pdf', NULL, NULL),
(434, 'Symmetry in Mathematical Analysis and Functional A', 'Octav Olteanu and Savin Treanta', 'Symmetry in Mathematical Analysis and Functional Analysis', 'Mathematics', '2023', 'public/ebooks/2023_Symmetry_in_Mathematical_Analysis_and_Functional_Analysis.pdf', NULL, NULL),
(435, 'Teacher Transition into Innovative Learning Enviro', 'Wesley Imms · Thomas Kvan', 'Teacher Transition into Innovative Learning Environments', 'Education', '2021', 'public/ebooks/2021_TeacherTransitionIntoInnovativ.pdf', NULL, NULL),
(436, 'The Effects of the COVID-19 Pandemic on the Digita', 'Boni García, Carlos Alario-Hoyos, Mar Pérez-Sanagustín,  Miguel Morales and Oscar Jerez', 'The Effects of the COVID-19 Pandemic on the Digital Competence of Educators ', 'Health', '2023', 'public/ebooks/2023_The_Effects_of_the_COVID19_Pandemic_on_the_Digital_Competence_of_Educators.pdf', NULL, NULL),
(437, 'Teaching Sustainable Development Goals in Science ', 'Kerstin Kremer and Deidre Bauer', 'Teaching Sustainable Development Goals in Science Education', 'Technology', '2021', 'public/ebooks/2021_TeacherTransitionIntoInnovativeLearning.pdf', NULL, NULL),
(438, 'The IX Iberian Congress of Ichthyology', 'Alberto Teodorico Correia', 'The IX Iberian Congress of Ichthyology', 'Political Sociology', '2023', 'public/ebooks/2023_The_IX_Iberian_Congress_of_Ichthyology.pdf', NULL, NULL),
(439, 'Technology, Media Literacy, and the Human Subject', 'RICHARD S. LEWIS', 'Technology, Media Literacy, and the Human Subject', 'Technology', '2021', 'public/ebooks/2021_Technology, Media Literacy, and the Human Subject.pdf', NULL, NULL),
(440, 'The Perspectives of Plant Natural Products for Mit', 'Fang Chen', 'The Perspectives of Plant Natural Products for Mitigation of Obesity', 'Biology', '2023', 'public/ebooks/2023_The_Perspectives_of_Plant_Natural_Products_for_Mitigation_of_Obesity.pdf', NULL, NULL),
(441, 'Textbook of Patient Safety and Clinical Risk Manag', 'Liam Donaldson Walter Ricciardi Susan Sheridan Riccardo Tartaglia', 'Textbook of Patient Safety and Clinical Risk Management', 'Health', '2021', 'public/ebooks/2021_TextbookOfPatientSafetyAndClin.pdf', NULL, NULL),
(442, 'The Potential of Food By-Products Bioprocessing, B', 'Michela Verni and Federico Casanova', 'The Potential of Food By-Products Bioprocessing, Bioactive Compounds Extraction and Functional Ingredients Utilization ', 'Food Science', '2023', 'public/ebooks/2023_The_Potential_of_Food_ByProducts_Bioprocessing_Bioactive_Compounds_Extraction_and_Functional_Ingredients_Utilization.pdf', NULL, NULL),
(443, 'THE CHILDREN OF LOOKED AFTER CHILDREN', 'Louise Roberts', 'THE CHILDREN OF LOOKED AFTER CHILDREN', 'Health', '2021', 'public/ebooks/2021_The Children of Looked After Children.pdf', NULL, NULL),
(444, 'The Data Shake Opportunities and Obstacles for Urb', 'Grazia Concilio · Paola Pucci · Lieven Raes · Geert Mareels', 'The Data Shake Opportunities and Obstacles for Urban Policy Making', 'Applied Science', '2021', 'public/ebooks/2021_The Data Shake.pdf', NULL, NULL),
(445, 'The freedom of scientific research', 'Simona Giordano et al.', 'The freedom of scientific research', 'Research', '2021', 'public/ebooks/2021_The Freedom of Scientific Research.pdf', NULL, NULL),
(446, 'The Fundamental Elements of Strategy', 'Xiu-bao Yu', 'The Fundamental Elements of Strategy', 'Business Economics', '2021', 'public/ebooks/2021_The Fundamental Elements of Strategy.pdf', NULL, NULL),
(447, 'The Impact of Individual Expertise and Public Info', 'Ulrich G. Strunz ', 'The Impact of Individual Expertise and Public Information on Group Decision-Making ', 'Business Economics', '2021', 'public/ebooks/2021_The Impact of Individual Expertise.pdf', NULL, NULL),
(448, 'The New Common', 'Emile Aarts • Hein Fleuren Margriet Sitskoorn • Ton Wilthagen', 'The New Common', 'Societies', '2021', 'public/ebooks/2021_The New Common.pdf', NULL, NULL),
(449, 'The Psychodynamics of Enlightened Leadership', 'Ian I. Mitroff Ralph H. Kilmann', 'The Psychodynamics of Enlightened Leadership', 'Political Sociology', '2021', 'public/ebooks/2021_The Psychodynamics of Enlightened Leadership.pdf', NULL, NULL),
(450, 'The Routledge Handbook of Research Methods for Soc', 'Reinette Biggs et al.', 'The Routledge Handbook of Research Methods for Social-Ecological Systems', 'Research', '2021', 'public/ebooks/2021_The Routledge Handbook of Research Methods.pdf', NULL, NULL),
(451, 'The Routledge Handbook of Research Methods for Soc', 'Reinette Biggs et al.', 'The Routledge Handbook of Research Methods for Social-Ecological Systems', 'Research', '2021', 'public/ebooks/2021_The Routledge Handbook of Research Methods.pdf', NULL, NULL),
(452, 'The Acquisition of French as a Second Language', 'Martin Howard', 'The Acquisition of French as a Second Language', 'Research', '2021', 'public/ebooks/2021_The_Acquisition_of_French_as_a_Second_Language.pdf', NULL, NULL),
(453, 'The Alcohol Hangover Causes, Consequences, and Tre', 'Joris C. Verster et al.', 'The Alcohol Hangover Causes, Consequences, and Treatment', 'Medicine', '2021', 'public/ebooks/2021_The_Alcohol_Hangover.pdf', NULL, NULL),
(454, 'The Demography of Disasters', 'Dávid Karácsonyi Andrew Taylor Deanne Bird', 'The Demography of Disasters', 'Humanities', '2021', 'public/ebooks/2021_TheDemographyOfDisasters.pdf', NULL, NULL),
(455, 'Towards a Natural Social Contract', 'Patrick Huntjens', 'Towards a Natural Social Contract', 'Sociology', '2021', 'public/ebooks/2021_Towards a Natural Social Contract.pdf', NULL, NULL),
(456, 'Towards a New Paradigm for Statistical Evidence', 'Jae H. (Paul) Kim and Muhammad Ishaq Bhatti', 'Towards a New Paradigm for Statistical Evidence', 'Business Economics', '2021', 'public/ebooks/2021_Towards_a_New_Paradigm_for_Statistical_Evidence.pdf', NULL, NULL),
(457, 'Training, Education and Research in COVID-19 Times', 'Miltiadis D. Lytras, Abdulrahman Housawi and Basim Alsaywid', 'Training, Education and Research in COVID-19 Times', 'Research', '2021', '2public/ebooks/021_Training_Education_and_Research_in_COVID19.pdf', NULL, NULL),
(458, 'Transitioning to GENDER EQUALITY', 'Christa Binswanger and Andrea Zimmermann (Eds.)', 'Transitioning to GENDER EQUALITY', 'Humanities', '2021', 'public/ebooks/2021_Transitioning_to_Gender_Equality.pdf', NULL, NULL),
(459, 'True Cost Accounting for Food', 'Barbara Gemmill-Herren et al.', 'True Cost Accounting for Food', 'Food Science', '2021', 'public/ebooks/2021_True Cost Accounting for Food.pdf', NULL, NULL),
(460, 'Understanding Exploitation in Consensual Sex Work ', 'Cecilia M. Benoit', 'Understanding Exploitation in Consensual Sex Work to Inform Occupational Health & Safety Regulation', 'Sociology', '2021', 'public/ebooks/2021_Understanding_Exploitation_in_Consensual_Sex_Work.pdf', NULL, NULL),
(461, 'Water and Earthquakes', 'Chi-Yuen Wang Michael Manga', 'Water and Earthquakes', 'Environmental Education', '2021', 'public/ebooks/2021_Water and Earthquakes.pdf', NULL, NULL),
(462, 'Woody Biomass for Bioenergy Production', 'Jaya Shankar Tumuluru', 'Woody Biomass for Bioenergy Production', 'Technology', '2021', 'public/ebooks/2021_Woody_Biomass_for_Bioenergy_Production.pdf', NULL, NULL),
(463, 'Young Adults and Active Citizenship', 'Natasha Kersh Hanna Toiviainen Pirkko Pitkänen George K. Zari s ', 'Young Adults and Active Citizenship', 'Humanities', '2021', 'public/ebooks/2021_Young Adults and Active Citizenship.pdf', NULL, NULL),
(464, 'A HANDBOOK OF MANAGEMENT THEORIES AND MODELS FOR O', 'Vitalija Danivska and Rianne Appel-Meulenbroek', 'A HANDBOOK OF MANAGEMENT THEORIES AND MODELS FOR OFFICE ENVIRONMENTS AND SERVICES', 'Entrepreneurship', '2021', 'public/ebooks/2022_A Handbook of Management Theories.pdf', NULL, NULL),
(465, 'Advanced Research on Glucosinolates in Food Produc', 'Franziska S. Hanschen and Sascha Rohn', 'Advanced Research on Glucosinolates in Food Products', 'Food Science', '2022', 'public/ebooks/2022_Advanced_Research_on_Glucosinolates_in_Food_Products.pdf', NULL, NULL),
(466, 'Advances in Aquatic Invertebrate Stem Cell Researc', 'Loriano Ballarin Baruch Rinkevich Bert Hobmayer', 'Advances in Aquatic Invertebrate Stem Cell Research', 'Aquatic', '2021', 'public/ebooks/2022_Advances_in_Aquatic_Invertebrate_Stem_Cell_Research.pdf', NULL, NULL),
(467, 'Agricultural and Food Systems Sustainability', 'Alessandro Suardi and Nadia Palmieri', 'Agricultural and Food Systems Sustainability', 'Agriculture', '2022', 'public/ebooks/2022_Agricultural_and_Food_Systems_Sustainability_The_Complex_Challenge_of_Losses_and_Waste.pdf', NULL, NULL),
(468, 'Application of Novel Thermal Technology in Foods P', 'Indrawati Oey and Sze Ying Leong', 'Application of Novel Thermal Technology in Foods Processing', 'Food Science', '2022', 'public/ebooks/2022_Application_of_Novel_Thermal_Technology_in_Foods_Processing.pdf', NULL, NULL),
(469, 'Approaches and Methods of Science Teaching and Sus', 'David González-Gómez and Jin Su Jeong', 'Approaches and Methods of Science Teaching and Sustainable Development', 'Science', '2022', 'public/ebooks/2022_Approaches_and_Methods_of_Science_Teaching_and_Sustainable_Development.pdf', NULL, NULL),
(470, 'Bank Management, Finance and Sustainability', 'David Aristei and Manuela Gallo', 'Bank Management, Finance and Sustainability', 'Business Economics', '2022', 'public/ebooks/2022_Bank_Management_Finance_and_Sustainability.pdf', NULL, NULL),
(471, 'BIG AND LITTLE HISTORIES', 'Marnie Hughes-Warrington et al.', 'BIG AND LITTLE HISTORIES', 'Humanities', '2022', 'public/ebooks/2022_Big and Little Histories.pdf', NULL, NULL),
(472, 'Corporate Social Responsibility', 'Byung Il Park and Shufeng Xiao', 'Corporate Social Responsibility', 'Research', '2022', 'public/ebooks/2022_Corporate_Social_Responsibility_Organizational_Strategy_for_Sustainable_Growth.pdf', NULL, NULL),
(473, 'COVID-19 Current Challenges and Future Perspective', 'Peter A. Leggat, John Frean and Lucille Blumberg', 'COVID-19 Current Challenges and Future Perspectives', 'Research', '2022', 'public/ebooks/2022_COVID19_Current_Challenges_and_Future_Perspectives.pdf', NULL, NULL),
(474, 'COVID-19: Impact on Public Health and Healthcare', 'Kavita Batra and Manoj Sharma', 'COVID-19: Impact on Public Health and Healthcare', 'Health', '2022', 'public/ebooks/2022_COVID19_Impact_on_Public_Health_and_Healthcare_VolII.pdf', NULL, NULL),
(475, 'COVID-19 Outbreak and Beyond', 'Paolo Roma, Merylin Monaro, Cristina Mazza', 'COVID-19 Outbreak and Beyond', 'Health', '2022', 'public/ebooks/2022_COVID19_Outbreak_and_Beyond_Psychological_and_Behavioral_Responses_and_Future_Perspectives.pdf', NULL, NULL),
(476, 'COVID-2019 Impacts on Education Systems and Future', 'Kelum A.A. Gamage', 'COVID-2019 Impacts on Education Systems and Future of Higher Education', 'Health', '2022', 'public/ebooks/2022_COVID2019_Impacts_on_Education_Systems_and_Future_of_Higher_Education.pdf', NULL, NULL),
(477, 'Dairy Sector Opportunities and Sustainability Chal', 'Rajeev Bhat', 'Dairy Sector Opportunities and Sustainability Challenges', 'Research', '2022', 'public/ebooks/2022_Dairy_Sector_Opportunities_and_Sustainability_Challenges.pdf', NULL, NULL),
(478, 'Developing (Transformative) Environmental and Sust', 'Nicola Walshe and Louise Sund', 'Developing (Transformative) Environmental and Sustainability Education in Classroom Practice', 'Environmental Education', '2022', 'public/ebooks/2022_Developing_Transformative_Environmental_and_Sustainability_Education_in_Classroom_Practice.pdf', NULL, NULL),
(479, 'Differential Equation Models in Applied Mathematic', 'Fasma Diele', 'Differential Equation Models in Applied Mathematics', 'Mathematics', '2001', 'public/ebooks/2022_Differential_Equation_Models_in_Applied_Mathematics_Theoretical_and_Numerical_Challenges.pdf', NULL, NULL),
(480, 'Distributed Systems and Mobile Computing', 'Giovanni Viglietta', 'Distributed Systems and Mobile Computing', 'Technology', '2022', 'public/ebooks/2022_Distributed_Systems_and_Mobile_Computing.pdf', NULL, NULL),
(481, 'Drought Risk Management in Reflect Changing of Met', 'Andrzej Wałęga and Agnieszka Ziernicka-Wojtaszek', 'Drought Risk Management in Reflect Changing of Meteorological Conditions', 'Environmental Education', '2022', 'public/ebooks/2022_Drought_Risk_Management_in_Reflect_Changing_of_Meteorological_Conditions.pdf', NULL, NULL),
(482, 'Drugs from Marine Sources', 'Genoveffa Nuzzo and Carmela Gallo', 'Drugs from Marine Sources', 'Applied Science', '2022', 'public/ebooks/2022_Drugs_from_Marine_Sources.pdf', NULL, NULL),
(483, 'eHealth in Chronic Diseases', 'Irene Torres-Sanchez and Marie Carmen Valenza', 'eHealth in Chronic Diseases', 'Health', '2022', 'public/ebooks/2022_eHealth_in_Chronic_Diseases.pdf', NULL, NULL),
(484, 'E-learning and Digital Training in Healthcare Educ', 'Luís Proença', 'E-learning and Digital Training in Healthcare Education', 'Health', '2022', 'public/ebooks/2022_Elearning_and_Digital_Training_in_Healthcare_Education_Current_Trends_and_New_Challenges.pdf', NULL, NULL),
(485, 'Emerging Trends in Beverage Processing', 'Antonio Morata', 'Emerging Trends in Beverage Processing', 'Technology', '2022', 'public/ebooks/2022_Emerging_Trends_in_Beverage_Processing.pdf', NULL, NULL),
(486, 'Environmental Disasters and Individuals’ Emergency', 'Yuxiang Hong', 'Environmental Disasters and Individuals’ Emergency Preparedness', 'Environmental Education', '2022', 'public/ebooks/2022_Environmental_Disasters_and_Individuals_Emergency_Preparedness.pdf', NULL, NULL),
(487, 'Extraction and Fractionation Processes of Function', 'Juliana Maria Leite Nobrega De Moura Bell', 'Extraction and Fractionation Processes of Functional Components in Food Engineering', 'Engineering', '2022', 'public/ebooks/2022_Extraction_and_Fractionation_Processes_of_Functional_Components_in_Food_Engineering.pdf', NULL, NULL),
(488, 'Flavour Volatiles of Wine', 'Fulvio Mattivi and Matteo Bordiga', 'Flavour Volatiles of Wine', 'Food Science', '2022', 'public/ebooks/2022_Flavour_Volatiles_of_Wine.pdf', NULL, NULL),
(489, 'Fuzzy Sets in Business Management, Finance, and Ec', 'Jorge de Andrés-Sánchez and Laura González-Vila Puchades', 'Fuzzy Sets in Business Management, Finance, and Economics', 'Business Economics', '2022', 'public/ebooks/2022_Fuzzy_Sets_in_Business_Management_Finance_and_Economics.pdf', NULL, NULL),
(490, 'Gender Equity in STEM in Higher Education', 'Hyun Kyoung et al,', 'Gender Equity in STEM in Higher Education', 'Education', '2022', 'public/ebooks/2022_Gender Equity in STEM in Higher Education.pdf', NULL, NULL),
(491, 'Geometrical Theory of Analytic Functions', 'Georgia Irina Oros', 'Geometrical Theory of Analytic Functions', 'Geology', '2022', 'public/ebooks/2022_Geometrical_Theory_of_Analytic_Functions.pdf', NULL, NULL),
(492, 'Gifted Education, Creativity and Leadership Develo', 'Dorothy Sisk', 'Gifted Education, Creativity and Leadership Development', 'Education', '2022', 'public/ebooks/2022_Gifted_Education_Creativity_and_Leadership_Development.pdf', NULL, NULL),
(493, 'Growth, Somatic Maturation and Their Impact on Phy', 'Francesco Campa and Gianpiero Greco', 'Growth, Somatic Maturation and Their Impact on Physical Health and Sports Performance', 'Health', '2022', 'public/ebooks/2022_Growth_Somatic_Maturation_and_Their_Impact_on_Physical_Health_and_Sports_Performance.pdf', NULL, NULL),
(494, 'Impact of PreMortem Factors on Meat Quality', 'Gen Kaneko', 'Impact of PreMortem Factors on Meat Quality', 'Food Science', '2022', 'public/ebooks/2022_Impact_of_PreMortem_Factors_on_Meat_Quality.pdf', NULL, NULL),
(495, 'Integrated STEM and STEM Partnerships', 'Andrea C. Burrows and Mike Borowczak', 'Integrated STEM and STEM Partnerships', 'Science', '2022', 'public/ebooks/2022_Integrated_STEM_and_STEM_Partnerships_Teaching_and_Learning.pdf', NULL, NULL),
(496, 'Kinematics and Robot Design II (KaRD2019) and III ', 'Raffaele Di Gregorio', 'Kinematics and Robot Design II (KaRD2019) and III (KaRD2020)', 'Science', '2022', 'public/ebooks/2022_Kinematics_and_Robot_Design_II_KaRD2019_and_III_KaRD2020.pdf', NULL, NULL),
(497, 'Lifestyle and Chronic Pain', 'Jo Nijs and Felipe J J Reis', 'Lifestyle and Chronic Pain', 'Health', '2022', 'public/ebooks/2022_Lifestyle_and_Chronic_Pain.pdf', NULL, NULL),
(498, 'Marine Mammals in a Changing World', 'Alexander Werth', 'Marine Mammals in a Changing World', 'Aquatic', '2022', 'public/ebooks/2022_Marine_Mammals_in_a_Changing_World.pdf', NULL, NULL),
(499, 'Marine Power Systems', 'Igor Poljak', 'Marine Power Systems', 'Aquatic', '2022', 'public/ebooks/2022_Marine_Power_Systems.pdf', NULL, NULL),
(500, 'Microbial Secondary Metabolites and Biotechnology', 'Mireille Fouillaud and Laurent DufosséMireille Fouillaud and Laurent Dufossé', 'Microbial Secondary Metabolites and Biotechnology', 'Biochemistry', '2022', 'public/ebooks/2022_Microbial_Secondary_Metabolites_and_Biotechnology.pdf', NULL, NULL),
(501, 'Monoclonal Antibody-Directed Therapy', 'Veysel Kayser and Amita Datta-Mannan', 'Monoclonal Antibody-Directed Therapy', 'Health', '2022', 'public/ebooks/2022_Monoclonal_AntibodyDirected_Therapy.pdf', NULL, NULL),
(502, 'Motor Control and Learning in Childhood and Adoles', 'Filipe Manuel Clemente and Ana Filipa Silva', 'Motor Control and Learning in Childhood and Adolescence', 'Technology', '2022', 'public/ebooks/2022_Motor_Control_and_Learning_in_Childhood.pdf', NULL, NULL),
(503, 'Multiple-Criteria Decision Making', 'Goran Ćirović and Dragan Pamučar', 'Multiple-Criteria Decision Making', 'Humanities', '2022', 'public/ebooks/2022_MultipleCriteria_Decision_Making.pdf', NULL, NULL),
(504, 'Multiscale, Multiphysics Modelling of Coastal Ocea', 'Hansong Tang, Reid Nichols, Donald T. Resio and Don Wright', 'Multiscale, Multiphysics Modelling of Coastal Ocean Processes', 'Physics', '2022', 'public/ebooks/2022_Multiscale_Multiphysics_Modelling_of_Coastal_Ocean_Processes_Paradigms_and_Approaches.pdf', NULL, NULL),
(505, 'Natural Product Genomics and Metabolomics of Marin', 'Max Crüsemann', 'Natural Product Genomics and Metabolomics of Marine Bacteria', 'Geology', '2022', 'public/ebooks/2022_Natural_Product_Genomics_and_Metabolomics_of_Marine_Bacteria.pdf', NULL, NULL),
(506, 'Non-covalent Interactions in Coordination and Orga', 'Alexander S. Novikov', 'Non-covalent Interactions in Coordination and Organometallic Chemistry', 'Chemistry', '2022', 'public/ebooks/2022_Noncovalent_Interactions_in_Coordination_and_Organometallic_Chemistry.pdf', NULL, NULL),
(507, 'Novel Analytical Methods in Food Analysis', 'Philippe Delahaut and Riccardo Marega', 'Novel Analytical Methods in Food Analysis', 'Food Science', '2022', 'public/ebooks/2022_Novel_Analytical_Methods_in_Food_Analysis.pdf', NULL, NULL),
(508, 'Novel Strategies for the Development of Healthier ', 'Claudia Ruiz-Capillas and Ana Herrero Herranz', 'Novel Strategies for the Development of Healthier Meat and Meat Products and Determination of Their Quality Characteristics', 'Food Science', '2022', 'public/ebooks/2022_Novel_Strategies_for_the_Development_of_Healthier_Meat_and_Meat_Products_and_Determination_of_Their_Quality_Characteristics.pdf', NULL, NULL),
(509, 'Numerical Analysis and Computational Mathematics', 'Jesús Martín Vaquero et al ', 'Numerical Analysis and Computational Mathematics', 'Mathematics', '2022', 'public/ebooks/2022_Numerical_Analysis_and_Computational_Mathematics.pdf', NULL, NULL),
(510, 'NutraCosmeceuticals from Algae for Health and Well', 'María Lourdes Mourelle, Herminia Domínguez and Jose Luis Legido', 'NutraCosmeceuticals from Algae for Health and Wellness', 'Aquatic', '2022', 'public/ebooks/2022_NutraCosmeceuticals_from_Algae_for_Health_and_Wellness.pdf', NULL, NULL),
(511, 'Nutrition in Gynecologic Disease', 'Pasquapina Ciarmela', 'Nutrition in Gynecologic Disease', 'Health', '2022', 'public/ebooks/2022_Nutrition_in_Gynecologic_Disease.pdf', NULL, NULL),
(512, 'Open Innovation in Micro, Small and MediumSized En', 'João Leitão and Léo-Paul Dana', 'Open Innovation in Micro, Small and MediumSized Enterprises', 'Applied Science', '2022', 'public/ebooks/2022_Open_Innovation_in_Micro_Small_and_MediumSized_Enterprises.pdf', NULL, NULL),
(513, 'Parenting in the 21st Century', 'Christy M. Buchanan and Terese Glatz', 'Parenting in the 21st Century', 'Humanities', '2022', 'public/ebooks/2022_Parenting_in_the_21st_Century.pdf', NULL, NULL),
(514, 'Personalized Medicine in Oncology', 'Ari VanderWalde Printed Edition of the Special Issue Published in', 'Personalized Medicine in Oncology', 'Medicine', '2022', 'public/ebooks/2022_Personalized_Medicine_in_Oncology.pdf', NULL, NULL),
(515, 'Pharmacogenomics From Basic Research to Clinical I', 'Laura B. Scheinfeldt', 'Pharmacogenomics From Basic Research to Clinical Implementation', 'Health', '2023', 'public/ebooks/2022_Pharmacogenomics.pdf', NULL, NULL),
(516, 'Photovoltaics and Electrification in Agriculture', 'Miguel-Ángel Muñoz-García and Luis Hernández-Callejo', 'Photovoltaics and Electrification in Agriculture', 'Biology', '2022', 'public/ebooks/2022_Photovoltaics_and_Electrification_in_Agriculture.pdf', NULL, NULL),
(517, 'Postharvest Handling of Horticultural Crops', 'Maria Dulce Carlos Antunes, Custódia Maria Luís Gago and Adriana Guerreiro', 'Postharvest Handling of Horticultural Crops', 'Agriculture', '2022', 'public/ebooks/2022_Postharvest_Handling_of_Horticultural_Crops.pdf', NULL, NULL),
(518, 'Preserving Community Interests in Ocean Governance', 'Keyuan Zou and Yen-Chiang Chang', 'Preserving Community Interests in Ocean Governance towards Sustainability', 'Aquatic', '2022', 'public/ebooks/2022_Preserving_Community_Interests_in_Ocean_Governance_towards_Sustainability.pdf', NULL, NULL),
(519, 'A Consumer Food Data System for 2030 and Beyond (2', 'THE NATIONAL ACADEMIES PRESS', 'A Consumer Food Data System for 2030 and Beyond (2020)', 'Research', '2020', 'public/ebooks/A Consumer Food Data System for 2030 and Beyond.pdf', NULL, NULL),
(520, 'Protection of Future Electricity Systems', 'Adam Dyśko and Dimitrios Tzelepis', 'Protection of Future Electricity Systems', 'Science', '2022', 'public/ebooks/2022_Protection_of_Future_Electricity_Systems.pdf', NULL, NULL),
(521, 'Quality Evaluation of Plant-Derived Foods II', 'Ivo Vaz de Oliveira', 'Quality Evaluation of Plant-Derived Foods II', 'Biology', '2022', 'public/ebooks/2022_Quality_Evaluation_of_PlantDerived_Foods_vol2.pdf', NULL, NULL),
(522, 'A Design Thinking, Systems Approach to Well-Being ', 'Patricia A. Cuff and Erin Hammers Forstag, Rapporteurs', 'A Design Thinking, Systems Approach to Well-Being Within Education and Practice: Proceedings of a Workshop (2019)', 'Education', '2019', 'public/ebooks/A Design Thinking, Systems Approach to Well-Being Within Education and Practice.pdf', NULL, NULL),
(523, 'A National Strategy to Reduce Food Waste at the Co', 'Barbara O. Schneeman and Maria Oria,', 'A National Strategy to Reduce Food Waste at the Consumer Level (2020)', 'Food Science', '2020', 'public/ebooks/A National Strategy to Reduce Food Waste at the Consumer Level.pdf', NULL, NULL),
(524, 'Research on the Regulatory Mechanism of Algae Repr', 'Koji Mikami', 'Research on the Regulatory Mechanism of Algae Reproduction under Abiotic Stress Conditions', 'Biology', '2022', 'public/ebooks/2022_Research_on_the_Regulatory_Mechanism_of_Algae_Reproduction_under_Abiotic_Stress_Conditions.pdf', NULL, NULL),
(525, 'Advanced Materials in Drug Release and Drug Delive', 'Katarzyna Winnicka', 'Advanced Materials in Drug Release and Drug Delivery Systems', 'Medicine', '2021', 'public/ebooks/Advanced_Materials_in_Drug_Release_and_Drug_Delivery_Systems.pdf', NULL, NULL),
(526, 'Role of Impact Assessment in Sustainable Developme', 'Paolo Biancone and Silvana Secinaro', 'Role of Impact Assessment in Sustainable Development', 'Biology', '2022', 'public/ebooks/2022_Role_of_Impact_Assessment_in_Sustainable_Development.pdf', NULL, NULL),
(529, 'Sport Modalities, Performance and Health', 'José Alberto Frade Martins Parraca, Diego Muñoz Marín and Bernardino Javier Sánchez-Alcaraz Martínez', 'Sport Modalities, Performance and Health', 'Health', '2022', 'public/ebooks/2022_Sport_Modalities_Performance_and_Health.pdf', NULL, NULL),
(531, 'Advancing Nutrition and Food Science: 80th Anniver', 'Ann L. Yaktine, Rapporteur; et al.', 'Advancing Nutrition and Food Science: 80th Anniversary of the Food and Nutrition Board: Proceedings of a Symposium (2020)', 'Food Science', '2020', 'public/ebooks/Advancing Nutrition and Food Science.pdf', NULL, NULL),
(532, 'Sports Medicine and Physical Fitness', 'Ewan Thomas, Ivan Chulvi-Medrano and Elvira Padua', 'Sports Medicine and Physical Fitness', 'Health', '2022', 'public/ebooks/2022_Sports_Medicine_and_Physical_Fitness.pdf', NULL, NULL),
(533, 'An Introduction to Philosophy', 'W. Russ Payne Bellevue College', 'An Introduction to Philosophy', 'Philosophy', '2015', 'public/ebooks/An Introduction to Philosophy.pdf', NULL, NULL),
(534, 'Symmetry and Mesoscopic Physics', 'Rashid G. Nazmitdinov and Vyacheslav Yukalov', 'Symmetry and Mesoscopic Physics', 'Physics', '2022', 'public/ebooks/2022_Symmetry_and_Mesoscopic_Physics.pdf', NULL, NULL),
(535, 'Anatomical Variation and Clinical Diagnosis', 'Heather F. Smith', 'Anatomical Variation and Clinical Diagnosis', 'Health', '2021', 'public/ebooks/Anatomical_Variation_and_Clinical_Diagnosis.pdf', NULL, NULL),
(536, 'Animal Models for Microbiome Research: Advancing B', 'Joe Alper et al.', 'Animal Models for Microbiome Research: Advancing Basic and Translational Science: Proceedings of a Workshop (2018)', 'Research', '2018', 'public/ebooks/Animal Models for Microbiome.pdf', NULL, NULL),
(537, 'THE POLITICS AND ETHICS OF REPRESENTATION IN QUALI', 'The Critical Methodologies Collective', 'THE POLITICS AND ETHICS OF REPRESENTATION IN QUALITATIVE RESEARCH', 'Research', '2022', 'public/ebooks/2022_The Politics and Ethics of Representation in Qualitative Research.pdf', NULL, NULL),
(538, 'The End-Purpose of Teaching Social Sciences and th', 'Delfín Ortega-Sánchez', 'The End-Purpose of Teaching Social Sciences and the Curricular Inclusion of Social Problems', 'Sociology', '2022', 'public/ebooks/2022_The_EndPurpose_of_Teaching_Social_Sciences_and_the_Curricular_Inclusion_of_Social_Problems.pdf', NULL, NULL),
(539, 'Anorexia Nervosa', 'Stephan Zipfel, Andreas Stengel and Katrin Giel', 'Anorexia Nervosa', 'Medicine', '2019', 'public/ebooks/Anorexia_Nervosa.pdf', NULL, NULL),
(540, 'The Role of Nutrition in ADHD, Psychiatric, and Me', 'Roser Granero and Diego Redolar-Ripoll', 'The Role of Nutrition in ADHD, Psychiatric, and Mental Disorders Treatment', 'Food Science', '2022', 'public/ebooks/2022_The_Role_of_Nutrition_in_ADHD_Psychiatric_and_Mental_Disorders_Treatment.pdf', NULL, NULL),
(541, 'Antioxidants in Foods', 'Isabel Seiquer and José M. Palma', 'Antioxidants in Foods', 'Food Science', '2020', 'public/ebooks/Antioxidants_in_Foods.pdf', NULL, NULL),
(542, 'Theoretical Computer Science and Discrete Mathemat', 'Juan Alberto Rodríguez Velázquez and Alejandro Estrada-Moreno', 'Theoretical Computer Science and Discrete Mathematics', 'Mathematics', '2022', 'public/ebooks/2022_Theoretical_Computer_Science_and_Discrete_Mathematics.pdf', NULL, NULL),
(543, 'Applications of Internet of Things', 'Chi-Hua Chen and Kuen-Rong Lo', 'Applications of Internet of Things', 'Technology', '2020', 'public/ebooks/Applications_of_Internet_of_Things.pdf', NULL, NULL),
(544, 'Training Methods to Improve Sports Performance and', 'Bruno Gonçalves, Jorge Bravo and Hugo Folgado', 'Training Methods to Improve Sports Performance and Health', 'Environmental Education', '2022', 'public/ebooks/2022_Training_Methods_to_Improve_Sports_Performance_and_Health.pdf', NULL, NULL),
(545, 'Tropical Cyclone Future Projections', 'Hiroyuki Murakami', 'Tropical Cyclone Future Projections', 'Science', '2022', 'public/ebooks/2022_Tropical_Cyclone_Future_Projections.pdf', NULL, NULL),
(546, 'Wastewater Treatment Current and Future Techniques', 'Amin Mojiri and Mohammed J.K. Bashir', 'Wastewater Treatment Current and Future Techniques', 'Science', '2022', 'public/ebooks/2022_Wastewater_Treatment_Current_and_Future_Techniques.pdf', NULL, NULL),
(547, 'Approaches to Understanding the Cumulative Effects', 'The National Academy of Science et al.', 'Approaches to Understanding the Cumulative Effects of Stressors on Marine Mammals (2017)', 'Zoology', '2017', 'public/ebooks/Approaches to Understanding the Cumulative Effects of Stressors on Marine Mammals.pdf', NULL, NULL),
(548, 'Attracting, Retaining, and Advancing Women in Tran', 'ICF Allison Alexanderet al.', 'Attracting, Retaining, and Advancing Women in Transit (2020)', 'Humanities', '2020', 'public/ebooks/Attracting, Retraining, and Advancing Women.pdf', NULL, NULL),
(549, 'Biodiversity of Marine Microbes', 'Savvas Genitsaris', 'Biodiversity of Marine Microbes', 'Aquatic', '2020', 'Biodiversity_of_Marine_Microbes.pdf', NULL, NULL),
(550, 'Water Quality Engineering and Wastewater Treatment', 'Yung-Tse Hung, Hamidi Abdul Aziz, Issam A. Al-Khatib, Rehab O. Abdel Rahman and Mario GR Cora-Hernan', 'Water Quality Engineering and Wastewater Treatment', 'Aquatic', '2021', 'public/ebooks/Water_Quality_Engineering_and_Wastewater_Treatment.pdf', NULL, NULL),
(551, 'Waste Management Practices in Developing Countries', 'Linda Godfrey', 'Waste Management Practices in Developing Countries', 'Health', '2018', 'public/ebooks/Waste_Management_Practices_in_Developing_Countries.pdf', NULL, NULL),
(552, 'Biofiltration and Physicochemical Filtration for W', 'Francisco Osorio', 'Biofiltration and Physicochemical Filtration for Water Treatment', 'Aquatic', '2020', 'public/ebooks/Biofiltration_and_Physicochemical_Filtration_for_Water_Treatment.pdf', NULL, NULL),
(553, 'Urban Food Deserts Perspectives from the Global So', 'Jonathan Crush and Zhenzhong Si', 'Urban Food Deserts Perspectives from the Global South', 'Food Science', '2019', 'public/ebooks/Urban_Food_Deserts_Perspectives_from_the_Global_South.pdf', NULL, NULL),
(554, 'Biogenic Amines and Food Safety', 'Maria Martuscelli and Dino Mastrocola', 'Biogenic Amines and Food Safety', 'Food Science', '2020', 'public/ebooks/Biogenic_Amines_and_Food_Safety.pdf', NULL, NULL),
(555, 'Biopolymers in Drug Delivery and Regenerative Medi', 'Carlos A. García-González, Pasquale Del Gaudio and Ricardo Starbird', 'Biopolymers in Drug Delivery and Regenerative Medicine', 'Medicine', '2020', 'public/ebooks/Biopolymers_in_Drug_Delivery_and_Regenerative_Medicine.pdf', NULL, NULL),
(556, 'Understanding the Well-Being of LGBTQ', 'Charlotte P. Patterson', 'Understanding the Well-Being of LGBTQ', 'Humanities', '2020', 'public/ebooks/Understanding the Well-Being of LGBTQ.pdf', NULL, NULL),
(557, 'Biotechnology for Sustainability and Social Well B', 'Pau Loke Show, Chiaki Ogino and Mohamad Faizal Ibrahim', 'Biotechnology for Sustainability and Social Well Being', 'Technology', '2020', 'public/ebooks/Biotechnology_for_Sustainability_and_Social_Well_Being.pdf', NULL, NULL),
(558, 'Understanding Nursing Home', 'Rose Li et al. ', 'Understanding Nursing Home', 'Health', '2020', 'public/ebooks/Understanding Nursing Home.pdf', NULL, NULL),
(559, 'Building a More Sustainable, Resilient, Equitable,', 'Melissa Maitin-Shepard et al.', 'Building a More Sustainable, Resilient, Equitable, and Nourishing Food System: Proceedings of a Workshop in Brief (2020)', 'Food Science', '2020', 'public/ebooks/Building a More Sustainable, Resilient, Equitable, and Nourishing Food System.pdf', NULL, NULL),
(560, 'Cares in the Age of Communication Health Education', 'Iván Herrera-Peco and Julio C. de la Torre-Montero', 'Cares in the Age of Communication Health Education and Healthy Lifestyles', 'Health', '2020', 'public/ebooks/Cares_in_the_Age_of_Communication_Health_Education_and_Healthy_Lifestyles.pdf', NULL, NULL),
(561, 'Ubiquitous Technologies for Emotion Recognition', 'Oresti Banos, Luis A. Castro and Claudia Villalonga', 'Ubiquitous Technologies for Emotion Recognition', 'Health', '2021', 'public/ebooks/Ubiquitous_Technologies_for_Emotion_Recognition.pdf', NULL, NULL),
(562, 'Challenging Academia A Critical Space for Controve', 'Heather Piper and Else-Marie Buch Leander', 'Challenging Academia A Critical Space for Controversial Social Issues', 'Societies', '2020', 'public/ebooks/Challenging_Academia_A_Critical_Space_for_Controversial_Social_Issues.pdf', NULL, NULL),
(563, 'Travel and Tropical Medicine', 'Harunor Rashid and Ameneh Khatami', 'Travel and Tropical Medicine', 'Medicine', '2020', 'public/ebooks/Travel_and_Tropical_Medicine.pdf', NULL, NULL),
(564, 'Child Obesity and Nutrition Promotion Intervention', 'Ana Isabel Rito', 'Child Obesity and Nutrition Promotion Intervention', 'Health', '2021', 'public/ebooks/Child_Obesity_and_Nutrition_Promotion_Intervention.pdf', NULL, NULL),
(565, 'Transitioning to QUALITY EDUCATION', 'Eila Jeronen (Ed.)', 'Transitioning to QUALITY EDUCATION', 'Education', '2021', 'public/ebooks/Transitioning_to_Quality_Education.pdf', NULL, NULL),
(566, 'Towards a New Paradigm for Statistical Evidence', 'Jae H. (Paul) Kim and Muhammad Ishaq Bhatti', 'Towards a New Paradigm for Statistical Evidence', 'Research', '2021', 'public/ebooks/Towards_a_New_Paradigm_for_Statistical_Evidence.pdf', NULL, NULL),
(567, 'Together: The Science of Social Psychology', 'R. Biswas-Diener & E. Diener', 'Together: The Science of Social Psychology', 'Science', '2020', 'public/ebooks/Together -  The Science of Social Psychology.pdf', NULL, NULL),
(568, 'The Significance of Touch in Psychiatry', 'Bruno Müller-Oerlinghausen and Michael Eggart', 'The Significance of Touch in Psychiatry', 'Technology', '2021', 'public/ebooks/The_Significance_of_Touch_in_Psychiatry.pdf', NULL, NULL),
(569, 'The Design, Synthesis and Biological Evaluation of', 'Maria Stefania Sinicrop', 'The Design, Synthesis and Biological Evaluation of Compounds with Medicinal Value', 'Technology', '2021', 'public/ebooks/The_Design_Synthesis_and_Biological_Evaluation_of_Compounds_with_Medicinal_Value.pdf', NULL, NULL),
(570, 'The Clinical Utility of Food Addiction and Eating ', 'Stephanie Cassin and Sanjeev Sockalingam', 'The Clinical Utility of Food Addiction and Eating Addiction', 'Food Science', '2021', 'public/ebooks/The_Clinical_Utility_of_Food_Addiction_and_Eating_Addiction.pdf', NULL, NULL),
(571, 'Coastal Fish Research', 'Francesco Tiralongo', 'Coastal Fish Research', 'Engineering', '2021', 'public/ebooks/Coastal_Fish_Research.pdf', NULL, NULL),
(572, 'College Mathematics for Everyday Life', 'y Maxie Inigo et al.', 'College Mathematics for Everyday Life', 'Mathematics', '2020', 'public/ebooks/College-Mathematics-for-Everyday-Life.pdf', NULL, NULL),
(573, 'The Use of Limited Access Privilege Programs in Mi', 'The National Academic Pres', 'The Use of Limited Access Privilege Programs in Mixed-Use Fisheries', 'Aquatic', '2021', 'public/ebooks/The Use of Limited Access Privilege Programs in Mixed-Use Fisheries.pdf', NULL, NULL),
(574, 'The Routledge Handbook of Research Methods for Soc', 'Reinette Biggs et al. ', 'The Routledge Handbook of Research Methods for Social-Ecological Systems', 'Technology', '2022', 'public/ebooks/The Rutledge Handbook of Reaseach Methods.pdf', NULL, NULL),
(575, 'Contemporary Teacher Education A Global Perspectiv', 'Kirsi Tirri', 'Contemporary Teacher Education A Global Perspective', 'Education', '2020', 'public/ebooks/Contemporary_Teacher_Education_A_Global_Perspective.pdf', NULL, NULL),
(576, 'Coral Reef Resilience', 'Loke Ming Chou and Danwei Huang', 'Coral Reef Resilience', 'Engineering', '2020', 'public/ebooks/Coral_Reef_Resilience.pdf', NULL, NULL),
(577, 'The Effects of Incarceration and Reentry on Commun', 'Steve Olson', 'The Effects of Incarceration and Reentry on Community Health and Well-Being: Proceedings of a Workshop', 'Health', '2020', 'public/ebooks/The Effects of Incarceration and Reentry.pdf', NULL, NULL),
(578, 'Introducing Marketing', 'John Burnett', 'Introducing Marketing', 'Entrepreneurship', '2011', 'public/ebooks/Core Concepts of Marketing.pdf', NULL, NULL),
(579, 'Corporate Finance', 'Ştefan Cristian Gherghina', 'Corporate Finance', 'Business Economics', '2020', 'public/ebooks/Corporate_Finance.pdf', NULL, NULL),
(580, 'Taking Action Against Clinician Burnout: A Systems', 'The National Academic Pres', 'Taking Action Against Clinician Burnout: A Systems Approach to Professional Well-Being', 'Humanities', '2020', 'public/ebooks/Taking Action Against Clinician Burnout.pdf', NULL, NULL),
(581, 'Crowds Ethnographic Encounters ', 'Megan Stefen', 'Crowds Ethnographic Encounters ', 'Humanities', '2021', 'public/ebooks/Crowds, Ethnographic Encounters.pdf', NULL, NULL),
(582, 'Synthesis of Marine Natural Products and Molecules', 'Emiliano Manzo', 'Synthesis of Marine Natural Products and Molecules Inspired by Marine Substances', 'Aquatic', '2021', 'public/ebooks/Synthesis_of_Marine_Natural_Products_and_Molecules_Inspired_by_Marine_Substances.pdf', NULL, NULL),
(583, 'Data and Research to Improve the U.S. Food Availab', 'Nancy J. Kirkendall et al.', 'Data and Research to Improve the U.S. Food Availability System and Estimates of Food Loss: A Workshop Summary', 'Research', '2015', 'public/ebooks/Data and Research, US Food.pdf', NULL, NULL),
(584, 'Synthesis of Marine Natural Products and Molecules', 'Emiliano Manzo', 'Synthesis of Marine Natural Products and Molecules Inspired by Marine Substances', 'Aquatic', '2020', 'public/ebooks/Synthesis_of_Marine_Natural_Products_and_Molecules_Inspired_by_Marine_Substances (1).pdf', NULL, NULL),
(585, 'Data Science for Undergraduates: Opportunities and', 't National Academy of Sciences et al.', 'Data Science for Undergraduates: Opportunities and Options (2018)', 'Technology', '2018', 'Data Science for Undergraduates.pdf', NULL, NULL),
(586, 'Design and Management of Manufacturing Systems', 'Arkadiusz Gola', 'Design and Management of Manufacturing Systems', 'Applied Science', '2020', 'public/ebooks/Design_and_Management_of_Manufacturing_Systems.pdf', NULL, NULL),
(587, 'Symmetry in Particle Physics', 'Michal Hnatič, Jaroslav Antoš and Juha Honkonen', 'Symmetry in Particle Physics', 'Physics', '2020', 'public/ebooks/Symmetry_in_Particle_Physics.pdf', NULL, NULL),
(588, 'Sustaining Ocean Observations: Proceedings of a Wo', 'Emily Twig et al', 'Sustaining Ocean Observations: Proceedings of a Workshop in Brief', 'Aquatic', '2020', 'public/ebooks/Sustaining Ocean Observations.pdf', NULL, NULL),
(589, 'Developing and Sustaining an Effective and Resilie', 'Erin Balogh et al.', 'Developing and Sustaining an Effective and Resilient Oncology Careforce: Proceedings of a Workshop', 'Research', '2019', 'public/ebooks/Developing and Sustaining an Effective and Resilient Oncology Careforce.pdf', NULL, NULL),
(590, 'Sustainable Rural Development Strategies, Good Pra', 'Ana Nieto Masot and José Luis Gurría Gascón', 'Sustainable Rural Development Strategies, Good Practices and Opportunities', 'Humanities', '2020', 'public/ebooks/Sustainable_Rural_Development_Strategies_Good_Practices_and_Opportunities.pdf', NULL, NULL),
(591, 'Diets, Foods and Food Components Effect on Dyslipi', 'Federica Fogacci, Arrigo Cicero and Claudio Borghi', 'Diets, Foods and Food Components Effect on Dyslipidemia', 'Food Science', '2020', 'public/ebooks/Diets_Foods_and_Food_Components_Effect_on_Dyslipidemia.pdf', NULL, NULL),
(592, 'Sustainable Food Consumption Practices', 'Giuseppina Migliore', 'Sustainable Food Consumption Practices', 'Food Science', '2020', 'Sustainable_Food_Consumption_Practices_Insights_into_Consumer_Experience.pdf', NULL, NULL),
(593, 'D I F F E R E N T I A L C A L C U - L U S F O R T ', 'L E A H E D E L S T E I N - K E S H E T', 'D I F F E R E N T I A L C A L C U - L U S F O R T H E L I F E S C I - E N C E S', 'Mathematics', '2007', 'public/ebooks/Differential Calculus for the Life Sciences.pdf', NULL, NULL),
(594, 'Sustainable | Sustaining City Streets', 'Ken Tamminga and Thomas Knüvener', 'Sustainable | Sustaining City Streets', 'Humanities', '2020', 'public/ebooks/Sustainable__Sustaining_City_Streets.pdf', NULL, NULL),
(595, 'Dynamic Changes in Marine Ecosystems: Fishing, Foo', 'National Research Council', 'Dynamic Changes in Marine Ecosystems: Fishing, Food Webs, and Future Options', 'Aquatic', '2006', 'public/ebooks/Dynamic Changes in Marine Ecosystems.pdf', NULL, NULL),
(596, 'A Sustainability Challenge: Food Security for All:', 'The National Academic Pres', 'A Sustainability Challenge: Food Security for All: Report of Two Workshops', 'Food Science', '2012', 'public/ebooks/Sustainability Challenge, Food Security.pdf', NULL, NULL),
(597, 'Economics of Education and Sustainable Development', 'Tin-Chun Lin', 'Economics of Education and Sustainable Development', 'Business Economics', '2020', 'public/ebooks/Economics_of_Education_and_Sustainable_Development.pdf', NULL, NULL),
(598, 'Stress and Health Understanding the Effects and Ex', 'Alyx Taylor', 'Stress and Health Understanding the Effects and Examining Interventions', 'Health', '2020', 'public/ebooks/Stress_and_Health.pdf', NULL, NULL),
(599, 'Ecosystem Concepts for Sustainable Bivalve Maricul', 'National Research Council et al.', 'Ecosystem Concepts for Sustainable Bivalve Mariculture', 'Aquatic', '2010', 'public/ebooks/Ecosystem Concepts for Sustainable Bivalve.pdf', NULL, NULL),
(600, 'Effects of Mineral Elements on the Environment', 'Marina Cabral Pinto and Amit Kumar', 'Effects of Mineral Elements on the Environment', 'Applied Science', '2020', 'public/ebooks/Effects_of_Mineral_Elements_on_the_Environment.pdf', NULL, NULL),
(601, 'Sports Performance and Health', 'Matej Supej and Jörg Spörri', 'Sports Performance and Health', 'Health', '2021', 'public/ebooks/Sports_Performance_and_Health.pdf', NULL, NULL),
(602, 'eHealth in Chronic Diseases', 'Irene Torres-Sanchez and Marie Carmen Valenza', 'eHealth in Chronic Diseases', 'Health', '2022', 'public/ebooks/eHealth_in_Chronic_Diseases_2022.pdf', NULL, NULL),
(603, 'Shellfish Mariculture in Drakes Estero, Point Reye', 'The National Academic Pres', 'Shellfish Mariculture in Drakes Estero, Point Reyes National Seashore, California', 'Aquatic', '2009', 'public/ebooks/Shellfish mariculture.pdf', NULL, NULL),
(604, 'Elementary Differential Equations with Boundary Va', 'William F. Trench', 'Elementary Differential Equations with Boundary Value Problems', 'Mathematics', '2013', 'public/ebooks/Elementary Differential Equations with Boundary Value Problems.pdf', NULL, NULL),
(605, 'Sex, Gender and Substance Use', 'Lorraine Greaves', 'Sex, Gender and Substance Use', 'Health', '2021', 'public/ebooks/Sex_Gender_and_Substance_Use.pdf', NULL, NULL),
(606, 'Sensory Analysis and Consumer Research in New Prod', 'Claudia Ruiz-Capillas and Ana Herrero Herranz', 'Sensory Analysis and Consumer Research in New Product Development', 'Research', '2021', 'public/ebooks/Sensory_Analysis_and_Consumer_Research_in_New_Product_Development.pdf', NULL, NULL),
(607, 'Sensors for Vital Signs Monitoring', 'Jong-Ryul Yang, Eugin Hyun and Sun Kwon Kim', 'Sensors for Vital Signs Monitoring', 'Health', '2021', 'public/ebooks/Sensors_for_Vital_Signs_Monitoring.pdf', NULL, NULL),
(608, 'Selected Papers from the First International Sympo', 'Giovanni Pau, Hsing-Chung Chen, Fang-Yie Leu and Ilsun You', 'Selected Papers from the First International Symposium on Future ICT (Future-ICT 2019)', 'Research', '2019', 'public/ebooks/Selected_Papers_from_the_First_International_Symposium_on_Future_ICT_FutureICT_2019_in_Conjunction_with_4th_International_Symposium_on_Mobile_Internet_Security_MobiSec_2019.pdf', NULL, NULL),
(609, 'Introduction to eMarketing', 'The Saylor Foundation', 'Introduction to eMarketing', 'Research', '2015', 'public/ebooks/eMarketing - The Essential Guide to Online Marketing.pdf', NULL, NULL),
(610, 'Embedded Pharmacists in Primary Care', 'George E. MacKinnon III and Nathan Lamberton', 'Embedded Pharmacists in Primary Care', 'Medicine', '2020', 'public/ebooks/Embedded_Pharmacists_in_Primary_Care.pdf', NULL, NULL),
(611, 'Scientific Inquiry in Social Work', 'MATTHEW DECARLO', 'Scientific Inquiry in Social Work', 'Science', '2020', 'public/ebooks/Scientific inquiry in social work.pdf', NULL, NULL),
(612, 'Sausages Nutrition, Safety, Processing and Quality', 'Javier Carballo', 'Sausages Nutrition, Safety, Processing and Quality Improvement', 'Health', '2021', 'public/ebooks/Sausages_Nutrition_Safety_Processing_and_Quality_Improvement.pdf', NULL, NULL),
(613, 'Saliva and Oral Diseases', 'Pia Lopez-Jornet', 'Saliva and Oral Diseases', 'Health', '2020', 'public/ebooks/Saliva_and_Oral_Diseases.pdf', NULL, NULL),
(614, 'Crocus sativus L. Extract and Its Constituents Che', 'Nikolaos Pitsikas and Konstantinos Dimas', 'Crocus sativus L. Extract and Its Constituents Chemistry, Pharmacology and Therapeutic Potential', 'Chemistry', '2020', 'public/ebooks/emCrocus_sativus_Lem_Extract_and_Its_Constituents_Chemistry_Pharmacology_and_Therapeutic_Potential.pdf', NULL, NULL),
(615, 'Robust Methods for the Analysis of Images and Vide', 'THE NATIONAL ACADEMIES PRESS', 'Robust Methods for the Analysis of Images and Videos for Fisheries Stock Assessment: Summary of a Workshop', 'Technology', '2015', 'public/ebooks/Robust Methods for the Analysis of Fish Stock Assessment.pdf', NULL, NULL),
(616, 'Emotion and Stress Recognition Related Sensors and', 'Kyandoghere Kyamakya et al.', 'Emotion and Stress Recognition Related Sensors and Machine Learning Technologies', 'Psychology', '2020', 'public/ebooks/Emotion_and_Stress_Recognition_Related_Sensors_and_Machine_Learning_Technologies.pdf', NULL, NULL),
(617, 'Risks', 'Mogens Steffensen', 'Risks', 'Research', '2020', 'public/ebooks/Risks.pdf', NULL, NULL),
(618, 'Exploring Health and Environmental Costs of Food: ', 'Leslie Pray et al.', 'Exploring Health and Environmental Costs of Food: Workshop Summary', 'Food Science', '2012', 'public/ebooks/Environmental Costs of Foods.pdf', NULL, NULL),
(619, 'Rheology and Quality Research of Cereal-Based Food', 'Anabela Raymundo, María Dolores Torres and Isabel Sousa', 'Rheology and Quality Research of Cereal-Based Food', 'Research', '2021', 'public/ebooks/Rheology_and_Quality_Research_of_CerealBased_Food.pdf', NULL, NULL),
(620, 'Evaluating the Effectiveness of Fish Stock Rebuild', 'National Research Council', 'Evaluating the Effectiveness of Fish Stock Rebuilding Plans in the United States (2014)', 'Aquatic', '2014', 'public/ebooks/Evaluating the Effectiveness of Fish Stock.pdf', NULL, NULL),
(621, 'Review of Recreational Fisheries Survey Methods', 'THE NATIONAL ACADEMIES PRESS', 'Review of Recreational Fisheries Survey Methods', 'Research', '2006', 'public/ebooks/Review of Recreational Fisheries.pdf', NULL, NULL),
(622, 'Exploring Medical and Public Health Preparedness f', 'Leslie Pray et al.', 'Exploring Medical and Public Health Preparedness for a Nuclear Incident: Proceedings of a Workshop (2019)', 'Health', '2019', 'public/ebooks/Exploring Medical and Public Health Preparedness for a Nuclear Incident.pdf', NULL, NULL),
(623, 'Research on Gang-Related Violence in the 21st Cent', 'Matthew Valasik and Shannon E. Reid', 'Research on Gang-Related Violence in the 21st Century', 'Research', '2021', 'public/ebooks/Research_on_GangRelated_Violence_in_the_21st_Century.pdf', NULL, NULL),
(624, 'Remote Sensing of the Oceans Blue Economy and Mari', 'Andrea Buono, Yu Li and Rafael Lemos Paes', 'Remote Sensing of the Oceans Blue Economy and Marine Pollution', 'Aquatic', '2020', 'public/ebooks/Remote_Sensing_of_the_Oceans.pdf', NULL, NULL),
(625, 'Recent Trends in Pharmaceutical Analytical Chemist', 'Constantinos K. Zacharis and Aikaterini Markopoulou', 'Recent Trends in Pharmaceutical Analytical Chemistry', 'Medicine', '2021', 'public/ebooks/Recent_Trends_in_Pharmaceutical_Analytical_Chemistry.pdf', NULL, NULL),
(626, 'Feature Papers of Forecasting', 'Sonia Leva', 'Feature Papers of Forecasting', 'Science', '2020', 'public/ebooks/Feature_Papers_of_Forecasting.pdf', NULL, NULL),
(627, 'Feeding Infants and Children from Birth to 24 Mont', 'Kathryn Dewey et al.', 'Feeding Infants and Children from Birth to 24 Months: Summarizing Existing Guidance', 'Health', '2020', 'public/ebooks/Feeding Infants and Children from Birth to 24 Months.pdf', NULL, NULL),
(628, 'Recent Advances in Gestational Diabetes Mellitus', 'Katrien Benhalima', 'Recent Advances in Gestational Diabetes Mellitus', 'Health', '2021', 'public/ebooks/Recent_Advances_in_Gestational_Diabetes_Mellitus.pdf', NULL, NULL),
(629, 'Recent Advances in Genetics and Breeding of Major ', 'Joong Hyoun Chin, B.P. Mallikarjuna Swamy and Yeisoo Yu', 'Recent Advances in Genetics and Breeding of Major Staple Food Crops', 'Food Science', '2020', 'public/ebooks/Recent_Advances_in_Genetics_and_Breeding_of_Major_Staple_Food_Crops.pdf', NULL, NULL),
(630, 'Field Guidebook on Philippine Fishing Gears', 'Harold Monteclaro Kazuhiko Anraku Satoshi Ishikawa', 'Field Guidebook on Philippine Fishing Gears', 'Research', '2017', 'public/ebooks/FieldGuidebook_on_PhilippineFishingGears.pdf', NULL, NULL),
(631, 'Quantitative Methods in Economics and Finance', 'Tomas Kliestik, Katarina Valaskova and Maria Kovacova', 'Quantitative Methods in Economics and Finance', 'Research', '2020', 'public/ebooks/Quantitative_Methods_in_Economics_and_Finance.pdf', NULL, NULL),
(632, 'Food, Health and Safety in Cross Cultural Consumer', 'Derek V. Byrne', 'Food, Health and Safety in Cross Cultural Consumer Contexts', 'Food Science', '2020', 'public/ebooks/Food_Health_and_Safety_in_Cross_Cultural_Consumer_Contexts.pdf', NULL, NULL),
(633, 'Food Legumes Physicochemical and Nutritional Prope', 'Ryszard Amarowicz', 'Food Legumes Physicochemical and Nutritional Properties', 'Food Science', '2020', 'public/ebooks/Food_Legumes_Physicochemical_and_Nutritional_Properties.pdf', NULL, NULL);
INSERT INTO `books` (`id`, `title`, `author`, `keywords`, `category`, `year`, `filePath`, `created_at`, `updated_at`) VALUES
(634, 'Quality Evaluation of Plant-Derived Foods', 'Ivo Vaz de Oliveira', 'Quality Evaluation of Plant-Derived Foods', 'Food Science', '2020', 'public/ebooks/Quality_Evaluation_of_PlantDerived_Foods.pdf', NULL, NULL),
(635, 'Freeze-Drying Technology in Foods', 'Valentina Prosapio and Estefania Lopez-Quiroga', 'Freeze-Drying Technology in Foods', 'Food Science', '2020', 'public/ebooks/FreezeDrying_Technology_in_Foods.pdf', NULL, NULL),
(636, 'Game Theory', 'Leon Petrosyan', 'Game Theory', 'Mathematics', '2020', 'public/ebooks/Game_Theory.pdf', NULL, NULL),
(637, 'Qualitative and Nutritional Improvement of Cereal-', 'Antonella Pasqualone and Carmine Summo', 'Qualitative and Nutritional Improvement of Cereal-Based Foods and Beverages', 'Food Science', '2020', 'public/ebooks/Qualitative_and_Nutritional_Improvement_of_CerealBased_Foods_and_Beverages.pdf', NULL, NULL),
(638, 'Promoting Positive Adolescent Health Behaviors and', 'Robert Graham et al.', 'Promoting Positive Adolescent Health Behaviors and Outcomes: Thriving in the 21st Century', 'Health', '2020', 'public/ebooks/Promoting Positive Adolescent Health Behavior.pdf', NULL, NULL),
(639, 'Physiology, Biochemistry, and Pharmacology of Tran', 'Giuliano Ciarimboli', 'Physiology, Biochemistry, and Pharmacology of Transporters for Organic Cations', 'Psychology', '2021', 'public/ebooks/Physiology_Biochemistry_and_Pharmacology_of_Transporters_for_Organic_Cations.pdf', NULL, NULL),
(640, 'Perioperative Care', 'Richard H. Parrish II and John Kortbeek', 'Perioperative Care', 'Health', '2021', 'public/ebooks/Perioperative_Care.pdf', NULL, NULL),
(641, 'Participation and Well Being Among Children and Yo', 'Dana Anaby and Mats Granlund', 'Participation and Well Being Among Children and Youth With Childhood Onset Disabilities', 'Environmental Education', '2021', 'public/ebooks/Participation_and_Well_Being_Among_Children_and_Youth_With_Childhood_Onset_Disabilities.pdf', NULL, NULL),
(642, 'Oxidative Stress Modulators and Functional Foods', 'Junsei Taira', 'Oxidative Stress Modulators and Functional Foods', 'Health', '2021', 'public/ebooks/Oxidative_Stress_Modulators_and_Functional_Foods.pdf', NULL, NULL),
(643, 'Genome Mining and Synthetic Biology in Marine Natu', 'Maria Costantini', 'Genome Mining and Synthetic Biology in Marine Natural Products Discovery', 'Aquatic', '2020', 'public/ebooks/Genome_Mining_and_Synthetic_Biology_in_Marine_Natural_Products_Discovery.pdf', NULL, NULL),
(644, 'Health Promotion in Children and Adolescents throu', 'Antonino Bianco', 'Health Promotion in Children and Adolescents through Sport and Physical Activities', 'Health', '2020', 'public/ebooks/Health_Promotion_in_Children_and_Adolescents_through_Sport_and_Physical_Activities2nd_Edition.pdf', NULL, NULL),
(645, 'Historical and Current Diversity Patterns of Medit', 'Sabrina Lo Brutto', 'Historical and Current Diversity Patterns of Mediterranean Marine Species', 'Aquatic', '2020', 'public/ebooks/Historical_and_Current_Diversity_Patterns_of_Mediterranean_Marine_Species.pdf', NULL, NULL),
(646, 'Human Resources in the Food Service and Hospitalit', 'The BC Cook Articulation Committee', 'Human Resources in the Food Service and Hospitality Industr', 'Food Science', '2015', 'public/ebooks/Human-Resources-in-the-Food-Service-and-Hospitality-Industry.pdf', NULL, NULL),
(647, 'Improving the Sensory, Nutritional and Technologic', 'Barbara Simonato', 'Improving the Sensory, Nutritional and Technological Profile of Conventional and Gluten-Free Pasta and Bakery Products ', 'Food Science', '2020', 'public/ebooks/Improving_the_Sensory_Nutritional_and_Technological_Profile_of_Conventional_and_GlutenFree_Pasta_and_Bakery_Products.pdf', NULL, NULL),
(648, 'Ovarian Cancers Evolving Paradigms in Research and', 'THE NATIONAL ACADEMIES PRESS', 'Ovarian Cancers Evolving Paradigms in Research and Care', 'Research', '2021', 'public/ebooks/Ovarian Cancers.pdf', NULL, NULL),
(649, 'Innovation, Internationalization and Entrepreneurs', 'Renata Korsakienė, Hasan Dinçer and Serhat Yüksel', 'Innovation, Internationalization and Entrepreneurship', 'Entrepreneurship', '2020', 'public/ebooks/Innovation_Internationalization_and_Entrepreneurship.pdf', NULL, NULL),
(650, 'Innovations in the Food System: Exploring the Futu', 'Melissa Maitin-Shepard et al.', 'Innovations in the Food System: Exploring the Future of Food: Proceedings of a Workshop', 'Food Science', '2020', 'public/ebooks/Innovations in the Food System.pdf', NULL, NULL),
(651, 'Integrating Health Care and Social Services for Pe', 'Laurene Graig et al.', 'Integrating Health Care and Social Services for People with Serious Illness: Proceedings of a Workshop', 'Health', '2019', 'public/ebooks/Integrating Health.pdf', NULL, NULL),
(652, 'Outdoor Adventure Education Trends and New Directi', 'Nina S. Roberts', 'Outdoor Adventure Education Trends and New Directions Printed Edition of the Special Issue Published in Education Sciences', 'Education', '2021', 'public/ebooks/Outdoor_Adventure_Education.pdf', NULL, NULL),
(653, 'Internet and Smartphone UseRelated Addiction Healt', 'Olatz Lopez-Fernandez', 'Internet and Smartphone UseRelated Addiction Health Problems Treatment, Education and Research', 'Health', '2021', 'public/ebooks/Internet_and_Smartphone_UseRelated_Addiction_Health_Problems_Treatment_Education_and_Research.pdf', NULL, NULL),
(654, 'Orchid Biochemistry', 'Jen-Tsung Chen', 'Orchid Biochemistry', 'Biology', '2021', 'public/ebooks/Orchid_Biochemistry.pdf', NULL, NULL),
(655, 'Introduction to Psychology', 'Charles Stangor', 'Introduction to Psychology', 'Psychology', '2020', 'public/ebooks/Introduction to Psychology - Attributed.pdf', NULL, NULL),
(656, 'Nutrition During Pregnancy and Lactation: Explorin', 'Meghan Harrison, Rapporteur; Food and Nutrition Board; Health and Medicine Division; National Academ', 'Nutrition During Pregnancy and Lactation: Exploring New Evidence: Proceedings of a Workshop', 'Research', '2020', 'public/ebooks/Nutrition During Pregnancy and Lactation.pdf', NULL, NULL),
(657, 'Introduction to Consumer Behaviour', 'Andrea Niosi', 'Introduction to Consumer Behaviour', 'Entrepreneurship', '2021', 'public/ebooks/Introduction-to-Consumer-Behaviour.pdf', NULL, NULL),
(658, 'Nutraceuticals and Human Health', 'Anna Scotto d’Abusco', 'Nutraceuticals and Human Health', 'Health', '2021', 'public/ebooks/Nutraceuticals_and_Human_Health.pdf', NULL, NULL),
(659, 'Novel Analysis on Aroma Compounds of Wine, Vinegar', 'Enrique Durán-Guerrero and Remedios Castro-Mejías', 'Novel Analysis on Aroma Compounds of Wine, Vinegar and Derived Products', 'Food Science', '2021', 'public/ebooks/Novel_Analysis_on_Aroma_Compounds_of_Wine_Vinegar_and_Derived_Products.pdf', NULL, NULL),
(660, 'Introduction to Philosophy: Ethics ', 'FRANK ARAGBONFOH ABUMERE et al.', 'Introduction to Philosophy: Ethics ', 'Philosophy', '2019', 'public/ebooks/Introduction-to-Philosophy-Ethics.pdf', NULL, NULL),
(661, 'Introduction to Philosophy: Logic ', 'BAHRAM ASSADIAN et al.', 'Introduction to Philosophy: Logic ', 'Philosophy', '2020', 'public/ebooks/Introduction-to-Philosophy-Logic.pdf', NULL, NULL),
(662, 'New Developments in Functional and Fractional Diff', 'Ioannis P. Stavroulakis and Hossein Jafari', 'New Developments in Functional and Fractional Differential Equations and in Lie Symmetry', 'Mathematics', '2021', 'public/ebooks/New_developments_in_Functional_and_Fractional_Differential_Equations_and_in_Lie_Symmetry.pdf', NULL, NULL),
(663, 'Introductory Business Statistics', 'Thomas K. Tiemann', 'Introductory Business Statistics', 'Business Economics', '2010', 'public/ebooks/Introductory Business Statistics.pdf', NULL, NULL),
(664, 'Ioannis P. Stavroulakis and Hossein Jafari', 'Andras Farago', 'Ioannis P. Stavroulakis and Hossein Jafari', 'Technology', '2021', 'public/ebooks/Neonatal_Health_Care.pdf', NULL, NULL),
(665, 'Introductory Business Statistics with Interactive ', 'Mohammad Mahbobi and Thomas K. Tiemann', 'Introductory Business Statistics with Interactive Spreadsheets - 1st Canadian Edition', 'Business Economics', '2019', 'public/ebooks/Introductory-Business-Statistics-with-Interactive-Spreadsheets.pdf', NULL, NULL),
(666, 'Neonatal Health Care', 'Henry C. Lee', 'Neonatal Health Care', 'Health', '2021', 'public/ebooks/Neonatal_Health_Care.pdf', NULL, NULL),
(667, 'Leaving a Violent Relationship', 'Adele Jones', 'Leaving a Violent Relationship', 'Societies', '2020', 'public/ebooks/Leaving_a_Violent_Relationship.pdf', NULL, NULL),
(668, 'Legumes as Food Ingredient Characterization, Proce', 'Alfonso Clemente and Jose C. Jimenez-Lopez', 'Legumes as Food Ingredient Characterization, Processing, and Applications', 'Food Science', '2020', 'public/ebooks/Legumes_as_Food_Ingredient.pdf', NULL, NULL),
(669, 'Managerial and Entrepreneurial Decision Making Eme', 'Matteo Cristofaro, et al.', 'Managerial and Entrepreneurial Decision Making Emerging Issues', 'Entrepreneurship', '2020', 'public/ebooks/Managerial_and_Entrepreneurial_Decision_Making.pdf', NULL, NULL),
(670, 'Managing Food Safety Practices from Farm to Table:', 'Leslie Pray and Ann Yaktine et al.', 'Managing Food Safety Practices from Farm to Table: Workshop Summary', 'Food Science', '2009', 'public/ebooks/Managing Food Safety Practices.pdf', NULL, NULL),
(671, 'Nanoscale Thermodynamics', 'Signe Kjelstrup', 'Nanoscale Thermodynamics', 'Physics', '2021', 'public/ebooks/Nanoscale_Thermodynamics.pdf', NULL, NULL),
(672, 'Marine Engines Performance and Emissions', 'María Isabel Lamas Galdo', 'Marine Engines Performance and Emissions', 'Engineering', '2021', 'public/ebooks/Marine_Engines_Performance_and_Emissions.pdf', NULL, NULL),
(673, 'Marine Natural Products as Anticancer Agents', 'Celso Alves and Marc Diederich', 'Marine Natural Products as Anticancer Agents', 'Medicine', '2021', 'public/ebooks/Marine_Natural_Products_as_Anticancer_Agents.pdf', NULL, NULL),
(674, 'Marine Phenolics Extraction and Purification, Iden', 'Herminia Domínguez and José Ricardo Pérez-Correa', 'Marine Phenolics Extraction and Purification, Identification, Characterization and Applications', 'Medicine', '2021', 'public/ebooks/Marine_Phenolics.pdf', NULL, NULL),
(675, 'Musculoskeletal Models in a Clinical Perspective', 'Carlo Albino Frigo', 'Musculoskeletal Models in a Clinical Perspective', 'Health', '2021', 'public/ebooks/Musculoskeletal_Models_in_a_Clinical_Perspective.pdf', NULL, NULL),
(676, 'Maternal DHA Impact on Child Neurodevelopment', 'Asim K. Duttaroy', 'Maternal DHA Impact on Child Neurodevelopment', 'Health', '2020', 'public/ebooks/Maternal_DHA_Impact_on_Child_Neurodevelopment.pdf', NULL, NULL),
(677, 'Mathematical Analysis and Analytic Number Theory 2', 'Rekha Srivastava', 'Mathematical Analysis and Analytic Number Theory 2019', 'Mathematics', '2019', 'public/ebooks/Mathematical_Analysis_and_Analytic_Number_Theory_2019.pdf', NULL, NULL),
(678, 'Mathematical Logic and Its Applications', 'Vassily Lyubetsky and Vladimir Kanovei', 'Mathematical Logic and Its Applications', 'Mathematics', '2020', 'public/ebooks/Mathematical_Logic_and_Its_Applications_2020.pdf', NULL, NULL),
(679, 'Municipal Wastewater Management', 'Charikleia Prochaska', 'Municipal Wastewater Management', 'Humanities', '2021', 'public/ebooks/Municipal_Wastewater_Management.pdf', NULL, NULL),
(680, 'Mitigating the Nutritional Impacts of the Global F', 'Elizabeth Haytmanek et. al', 'Mitigating the Nutritional Impacts of the Global Food Price Crisis: Workshop Summary', 'Food Science', '2010', 'public/ebooks/Mitigating the Nutritional Impacts.pdf', NULL, NULL),
(681, 'Models of Delay Differential Equations', 'Francisco Rodríguez, Juan Carlos Cortés López and María Ángeles Castro', 'Models of Delay Differential Equations', 'Mathematics', '2021', 'public/ebooks/Models_of_Delay_Differential_Equations.pdf', NULL, NULL),
(682, 'Models of Delay Differential Equations', 'Francisco Rodríguez, Juan Carlos Cortés López and María Ángeles Castro', 'Models of Delay Differential Equations', 'Mathematics', '2021', 'public/ebooks/Models_of_Delay_Differential_Equations.pdf', NULL, NULL),
(683, 'Motivations Associated with Food Choices and Eatin', 'Raquel P. F. Guiné', 'Motivations Associated with Food Choices and Eating Practices', 'Food Science', '2021', 'public/ebooks/Motivations_Associated_with_Food_Choices_and_Eating_Practices.pdf', NULL, NULL),
(684, 'Motivating Local Climate Adaptation and Strengthen', 'Committee on Applied Research Topics for Hazard Mitigation and Resilience; Policy and Global Affairs', 'Motivating Local Climate Adaptation and Strengthening Resilience: Making Local Data Trusted, Useful, and Used', 'Research', '2021', 'public/ebooks/Motivating Local Climate Adaptation and Strengthening Resilience.pdf', NULL, NULL),
(685, 'Women and Inequality in a Changing World Exploring', 'Jane Parpart', 'Women; Gender', 'Gender', '2024', 'public/ebooks/2024_WomenandInequalityinaChangingWorld.pdf', NULL, NULL),
(686, 'Study on Physicochemical Properties of Food Protei', 'Shudong He Wei Xu Muhammad H. Aludatt', 'Food; Proteins; Physicochemical', 'Food Science', '2024', 'public/ebooks/2024_Study_on_Physicochemical_Properties_of_Food_Protein.pdf', NULL, NULL),
(687, 'Nursing Care for Cancer Patients', 'Qiuping Li', 'Nursing; Nursing Care', 'Nursing', '2024', 'public/ebooks/2024_Nursing_Care_for_Cancer_Patients.pdf', NULL, NULL),
(688, 'Metabolic Research in Aquatic Animal Nutrition, Ph', 'Qingchao Wang Yan He Qingsong Tan', 'Aquatic Animal; Nutrition; Physiology; Diseases, Aquatic Animal', 'Aquatic', '2024', 'public/ebooks/2024_Metabolic_Research_in_Aquatic_Animal_Nutrition_Physiology_and_Disease.pdf', NULL, NULL),
(689, 'Marine Drug Discovery through Computer-Aided Appro', 'Susana P. Gaudencio Florbela Pereira', 'Marine Drug; Marine Products', 'Aquatic', '2024', 'public/ebooks/2024_Marine_Drug_Discovery_through_ComputerAided_Approaches.pdf', NULL, NULL),
(690, 'Law, Migration, and Human Mobility', 'Magdalena Kmak', 'Migration; Sociology; Human Mobility; Anthropology', 'Sociology', '2024', 'public/ebooks/2024_Law,Migration,andHumanMobility.pdf', NULL, NULL),
(691, 'Iron Intake and Human Health', 'Gladys Oluyemisi Latunde-Dada', 'Human Health; Iron; Minerals', 'Health', '2024', 'public/ebooks/2024_Iron_Intake_and_Human_Health.pdf', NULL, NULL),
(692, 'Impact of Globalization on Healthcare', 'Joachim G. Voss Sandul Yasobant', 'Health Care; Medicine; Nursing Care; ', 'Health', '2024', 'public/ebooks/2024_Impact_of_Globalization_on_Healthcare.pdf', NULL, NULL),
(693, 'Food Components in Health Promotion and Disease Pr', 'Luigi Brunetti Annalisa Chiavaroli', 'Food Components; Health Promotion; Disease Prevention; Nutrients', 'Food Science', '2024', 'public/ebooks/2024_Food_Components_in_Health_Promotion_and_Disease_Prevention.pdf', NULL, NULL),
(694, 'EU Trade Mark Law and Product Protection A Compara', 'Lavinia Brancusi', 'European Intellectual Property Law; European Trademark Law ', 'Intellectual Property Law', '2024', 'public/ebooks/2024_EU Trade Mark Law and  Product Protection.pdf', NULL, NULL),
(695, 'Emerging Non-Thermal Food Processing Technologies', 'Asgar Farahnaky Mahsa Majzoobi Mohsen Gavahian', 'Food Processing; Food Technologies; Food Science', 'Food Science', '2024', 'public/ebooks/2024_Emerging_NonThermal_Food_Processing_Technologies.pdf', NULL, NULL),
(696, 'Ecology of Marine Zooplankton', 'Marco Uttieri Ylenia Carotenuto Iole Di Capua Vittoria Roncalli', 'Marine zooplankton; Ecology', 'Aquatic', '2024', 'public/ebooks/2024_Ecology_of_Marine_Zooplankton.pdf', NULL, NULL),
(700, '10th anniversary of axioms logic', 'Oscar castillo', NULL, 'Bsedmath', '2023', 'public/ebooks/A0ntY460t3N0BNBSYTeVf5yw4vTbgpaS2YvZoUhF.pdf', '2025-03-19 17:46:21', '2025-03-19 18:31:53'),
(701, 'A coupled system of differential-algebraic equation and hyperbolic partial differential equation', 'Dennis groh', NULL, 'Bsedmath', '2024', 'public/ebooks/HURGX32T5nKs07L8nnhwpPgXso0Wi9FTsByZ6kCu.pdf', '2025-03-19 17:59:58', '2025-03-19 18:32:47'),
(702, 'A themed issue on mathematical inequalities, analytic combinatorics and related topics in honor of professor feng qi', 'Wei-shih du, ravi p. agarwal, erdal karapinar, marko kostić and jian cao', NULL, 'Mathematical inequalities, analytic combinatorics', '2023', 'public/ebooks/gNOII1vGdJBPChTFnrvNxG4UK6O1ctRdeYsrtCz7.pdf', '2025-03-19 18:05:43', '2025-03-19 18:05:43'),
(703, 'A comprehensive guide to advanced business statistics', 'Dr.r.s.thangeswari, m.com, m.phil, b.ed., ph.d', NULL, 'Bsedmath', '2022', 'public/ebooks/c6aKi6DSAzzxPnfC6N3d3eZaTm9AGbPth72G2Ygu.pdf', '2025-03-19 18:16:22', '2025-03-19 18:30:53'),
(704, 'Active methodologies for the promotion of mathematical learning', 'Francisco d. fernández-martín, josé-maría romero-rodríguez, gerardo gómez-garcía and magdalena ramos navas-parejo', NULL, 'Bsedmath', '2022', 'public/ebooks/K1iy3OGc08UQ3ADdrb6Cn36Caxx27exoiWYrhdec.pdf', '2025-03-19 18:29:12', '2025-03-19 18:29:12'),
(705, 'Advanced mathematical methods theory and applications', 'Francesco mainardi, andrea giusti', NULL, 'Bsedmath', '2020', 'public/ebooks/r2xePkVbfhctmTtOGvaSvQPB6PISPIJwQYUHYfgP.pdf', '2025-03-19 18:33:51', '2025-03-19 18:33:51'),
(706, 'Advances in discrete applied mathematics and graph theory', 'Janez Žerovnik, darja rupnik poklukar', NULL, 'Bsedmath', '2022', 'public/ebooks/TI6diaFs0JUFFu0wWpzQgGrZ8QGL1wvxZ1DJnX73.pdf', '2025-03-19 18:36:19', '2025-03-19 18:36:19'),
(707, 'Advances in fuzzy logic and artificial neural networks', 'Francisco rodrigues lima-junio', NULL, 'Bsedmath', '2024', 'public/ebooks/i5eyOEAFg4VToyKjuPeHsPY7Zn3KJ0yKbevCTj9M.pdf', '2025-03-27 00:15:47', '2025-03-27 00:15:47'),
(708, 'Advances in fuzzy logic systems', 'Elmer dadios', NULL, 'Bsedmath', '2023', 'public/ebooks/otMtUHe6tqGuKXyMBinN5Jv3c6SprCmNkZC1fqtY.pdf', '2025-03-27 18:57:33', '2025-03-27 18:57:33'),
(709, 'Advances in machine learning and mathematical modeling for optimization problems', 'Francois rivest & d abdellah chehri', NULL, 'Bsedmath', '2023', 'public/ebooks/tvuTawYlhGhff0wPQjFFERuETu9vW9lDZAYj27yC.pdf', '2025-03-27 22:49:03', '2025-03-27 22:49:03'),
(710, 'Algebraic, analytic, and computational number theory and its applications', 'Diana savin, nicusor minculete, vincenzo acciaro', NULL, 'Bsedmath', '2024', 'public/ebooks/hQzXPJESWueAHMoNmCRfFur2h46q1A7vdJDRMpA7.pdf', '2025-03-27 22:56:24', '2025-03-27 22:56:24'),
(711, 'Algebraic structures and graph theory', 'Irina cristea, hashem bordbar', NULL, 'Bsedmath', '2023', 'public/ebooks/yAf5CFFRvhQZJxmXxUKT8sSs5GeaXWiQArzilPQR.pdf', '2025-03-27 23:01:44', '2025-03-27 23:01:44'),
(712, 'Algebra and trigonometry 2e', 'Jay abramson', NULL, 'Bsedmath', '2021', 'public/ebooks/m58ndrTcnbD8vvns6HuK7bD0zlDZLC1HnPI2wHCF.pdf', '2025-03-27 23:26:42', '2025-03-27 23:26:42'),
(713, 'Algebraic structures and graph theory, 2nd edition', 'Irina cristea, alessandro linzi', NULL, 'Bsedmath', '2025', 'public/ebooks/fKaKSHOlw5lb92MLKBHwSsij7gSlmKUvuXa2lpQ6.pdf', '2025-03-27 23:32:44', '2025-03-27 23:32:44'),
(714, 'Algorithms for sparse linear systems', 'Jennifer scott, miroslav tůma', NULL, 'Bsedmath', '2023', 'public/ebooks/yhvkYE2Wg1fwlYNznEuDCjv4YZZjUQZ5Zf269hMh.pdf', '2025-03-27 23:45:05', '2025-03-27 23:45:05'),
(715, 'An introduction to infinite-dimensional differential geometry', 'Alexander schmeding', NULL, 'Bsedmath', '2025', 'public/ebooks/IvGoqJgwHHzmCy3T9vbxA81Tkp0pAHgcbl0y4xcO.pdf', '2025-03-27 23:47:07', '2025-03-27 23:47:07'),
(716, 'Analytical and computational methods in differential equations, special functions, transmutations and integral transforms', 'Sergei sitnik', NULL, 'Bsedmath', '2023', 'public/ebooks/YtfPOoRAQKbSHogyIm89e4KYgH5PY34wNRwxFVqQ.pdf', '2025-03-27 23:48:08', '2025-03-27 23:48:08'),
(717, 'Application of optimization in production, logistics, inventory, supply chain management and block chain', 'Biswajit sarkar, mitali sarkar', NULL, 'Bsedmath', '2020', 'public/ebooks/G81SdznQrWkJWaidAtlPyTJMy4OxI2IHiqAbmywh.pdf', '2025-03-27 23:52:36', '2025-03-27 23:52:36'),
(718, 'Access and benifit-sharing in global aquaculture', 'Fran humphries, charles lawson, john a.h. benzie, clare morrison', NULL, 'Msfisheries', '2024', 'public/ebooks/aidFtA5ol6JReauPXW7ZOSS0D6DdgJ3FgMT3mPHk.pdf', '2025-03-27 23:58:16', '2025-03-27 23:58:16'),
(719, 'A comprehensive guide to advanced business statistics', 'DR.R.S.THANGESWARI, M.COM, M.PHIL, B.ED., PH.D,', NULL, 'Msfisheries', '2020', 'public/ebooks/WNooEL7hdxWb4VuIQTFCeDdp1o2OFleSf88DEMtk.pdf', '2025-03-28 00:02:11', '2025-03-28 00:02:11'),
(720, 'Advance in recovery and application of bioactive compounds from seafood', 'CHARLOTTE JACOBSEN, SUSAN LøVSTAD HOLDT', NULL, 'Msfisheries', '2022', 'public/ebooks/o53xl9pJKuSoCgaDwIlJxV8DIt19QJ66IIFpjyw4.pdf', '2025-03-28 00:03:25', '2025-03-28 00:03:25'),
(721, 'Advances in aquaculture ecology research', 'XIANGLI TIAN, LI LI', NULL, 'Msfisheries', '2023', 'public/ebooks/RRLs76LdemiRmcUS6v1kuNC30v4RkXfUc8B3GOIi.pdf', '2025-03-28 00:15:35', '2025-03-28 00:15:35'),
(722, 'Application of the systems approach to the management of complex water systems', 'SLOBODAN P. SIMONOVIC', NULL, 'Msfisheries', '2020', 'public/ebooks/n8RNliCMHNhmyQBWDvZrimsYkK4nEd9kfiXSLbmp.pdf', '2025-04-01 16:58:15', '2025-04-01 16:58:15'),
(723, 'Applied and computational statistics', 'SORANA D. BOLBOACă', NULL, 'Msfisheries', '2020', 'public/ebooks/ZI2ajAt3qCPljX0Qzr4qpwV7zTjksOxCPsd6dnmJ.pdf', '2025-04-01 17:00:40', '2025-04-01 17:00:40'),
(724, 'Applied statistical modeling and data mining', 'JOSé ANTONIO SáEZ MUñOZ, JOSé LUIS ROMERO BéJAR', NULL, 'Msfisheries', '2024', 'public/ebooks/Mp0MTD3aujYyRSa0jtZZd9gDlCwr0cnUsw5S0C4J.pdf', '2025-04-01 17:02:42', '2025-04-01 17:02:42'),
(725, 'Aquaculture', 'ZAINAL ABIDIN MUCHLISIN', NULL, 'Msfisheries', '2012', 'public/ebooks/EPjWhRk2Rpqbz5sJ4nrXKdlLgtm9FN0QzgX1xiSI.pdf', '2025-04-01 17:03:37', '2025-04-01 17:03:37'),
(726, 'Aquatic organisms research with dna barcodes', 'MANUEL ELIAS-GUTIERREZ', NULL, 'Msfisheries', '2023', 'public/ebooks/s1uLrzXkJJUd58jVS12bnPHOd1JY2LXDjlSjRFPI.pdf', '2025-04-01 17:06:40', '2025-04-01 17:06:40'),
(727, 'Assessing the effects of multiple stressors on aquatic systems across temporal and spatial scales', 'PEDRO SEGURADO, PAULO BRANCO,MARIA TERESA FERREIRA', NULL, 'Msfisheries', '2022', 'public/ebooks/Ht8WDR9qLYwEa8HVjSh1SByZDszuHUFSUExGdeCU.pdf', '2025-04-01 17:11:58', '2025-04-01 17:11:58'),
(728, 'Assessment for experimental learning', 'CECILAI KA YUK CHAN', NULL, 'Msfisheries', '2023', 'public/ebooks/cY68sytJDrbxhrE7Bk6Wl6QOgDRXw0U4MPh5UfQf.pdf', '2025-04-01 17:13:55', '2025-04-01 17:13:55'),
(729, 'Assessment of climate change impacts on water quantity and quality at small scale watersheds', 'YING OUYANG, SUDHANSHU SEKHAR PANDA, GARY FENG', NULL, 'Msfisheries', '2022', 'public/ebooks/DzxRPGCfgGKhLcnesbDuyYBWsS0pJEQmiqYHpFUN.pdf', '2025-04-01 17:15:00', '2025-04-01 17:15:00'),
(730, 'Bioanalytical tools in water quality assessment', 'BEATE ESCHER, PETA NEALE, FREDERIC LEUSCH', NULL, 'Msfisheries', '2021', 'public/ebooks/RGCYtkdygmidfoUvQyd80sB8TL0CRD7KCG0muVOJ.pdf', '2025-04-01 17:16:12', '2025-04-01 17:16:12'),
(731, 'Biodiversity and spatial distribution of fishes', 'HENG ZHANG, YING XUE, YUNZHI YAN, LUOLIANG XU', NULL, 'Msfisheries', '2024', 'public/ebooks/OA4phUlDPyvCaEpWCSVF8zC0NU1oSRUPlOfUKIBq.pdf', '2025-04-01 17:17:23', '2025-04-01 17:17:23'),
(732, 'Biology and control of invasive fishes', 'PETER W. SORENSEN', NULL, 'Msfisheries', '2021', 'public/ebooks/cVjtVsPTDyIAMyfHmhTBhgRUSgG5p9zgYNcamHAf.pdf', '2025-04-01 23:12:09', '2025-04-01 23:12:09'),
(733, 'Biology and ecology of eels', 'JOSE MARTIN PUJOLAR', NULL, 'Msfisheries', '2024', 'public/ebooks/iXJfrWeL0JebraES0sSXmfHSfyJJvt8MPerDiz3O.pdf', '2025-04-01 23:13:01', '2025-04-01 23:13:01'),
(734, 'Business research methods', 'DR. J. MEXON, M.COM., M.PHIL., B.ED., PH.D., DR. A. ANANDA KUMAR, MBA., MHRM., M.PHIL., B.ED., PH.D.,', NULL, 'Msfisheries', '2020', 'public/ebooks/hPhiCfV4wchOPTbRDJR2pdsud7czFVNG6hOCGw5b.pdf', '2025-04-01 23:14:16', '2025-04-01 23:14:16'),
(735, 'Challenges in research policy evidence-based policy briefs with recommendations', 'GUNNAR SIVERTSEN, LIV LANGFELDT', NULL, 'Msfisheries', '2025', 'public/ebooks/t7NuQTez1sbjNmDYUmqiJJUZZCZnMBTRuUXfNRrY.pdf', '2025-04-01 23:15:30', '2025-04-01 23:15:30'),
(736, 'Classification and data science in the digital age', 'PAULA BRITO,  JOSé G. DIAS, BERTHOLD LAUSEN, ANGELA MONTANARI, REBECCA NUGENT', NULL, 'Msfisheries', '2023', 'public/ebooks/9vtO1h1Iz5rXJ5MyBbByEVpymxy0xrYgCEq9YaNt.pdf', '2025-04-01 23:16:54', '2025-04-01 23:16:54'),
(737, 'Coastal fish research', 'FRANCESCO TIRALONGO', NULL, 'Msfisheries', '2021', 'public/ebooks/nBceoXcu4TVyjmetc9BRLOAvaARSzLqCEYI8h1Sy.pdf', '2025-04-01 23:17:45', '2025-04-01 23:17:45'),
(738, 'Collagen and chitin from marine resources and their interdisciplinary applications', 'AZIZUR RAHMAN', NULL, 'Msfisheries', '2024', 'public/ebooks/b6fD4I4TEcsj7NXZWLmH1jiRGIhNVRHV3mhCAgCH.pdf', '2025-04-01 23:19:01', '2025-04-01 23:19:01'),
(739, 'Computational mathematics and applied statistics', 'SANDRA FERREIRA', NULL, 'Msfisheries', '2023', 'public/ebooks/FI6MxOEhGkKPs5sASyU8ED9k60yc7lG02bdvI7O0.pdf', '2025-04-06 17:52:26', '2025-04-06 17:52:26'),
(740, 'Computational statistics and applications', 'RICARDO LóPEZ-RUIZ', NULL, 'Msfisheries', '2022', 'public/ebooks/h1Iqn4w3YAgSaSn15AYrjwghSoGJyVQ1oJhuvyYl.pdf', '2025-04-06 17:53:46', '2025-04-06 17:53:46'),
(741, 'Current advances and challenges in fisheries and aquaculture science', 'MARIA ANGELES ESTEBAN, BERNARDO BALDISSEROTTO, ERIC HALLERMAN', NULL, 'Msfisheries', '2022', 'public/ebooks/Mr87j1cpnSGxwLLZSYPZ11nZvzrELxJvN8lO6hIU.pdf', '2025-04-06 17:54:54', '2025-04-06 17:54:54'),
(742, 'Current advances and challenges in ocean science', 'ANTONIO BODE, MICHAEL W. LOMAS, PERE MASQUé , DIEGO MACíAS', NULL, 'Msfisheries', '2021', 'public/ebooks/lrIAwElerzdHMfXj3JEzZnpJvQqLOTut85ZZZU4J.pdf', '2025-04-06 18:03:00', '2025-04-06 18:03:00'),
(743, 'Decision support tools for water quality management', 'NIGEL W. T. QUINN, ARIEL DINAR, IDDO KAN, VAMSI KRISHNA SRIDHARAN', NULL, 'Msfisheries', '2023', 'public/ebooks/JWAdkBlMZb1rn05X79LoLLQ1bPG6eJ6QVcvombfE.pdf', '2025-04-06 18:12:12', '2025-04-06 18:12:12'),
(744, 'Diversity of coralassociated fauna ii', 'SIMONE MONTANO', NULL, 'Msfisheries', '2022', 'public/ebooks/gCNpc1qhQn7jeN71NeAp3fC4ktW3grhtpDMLljVQ.pdf', '2025-04-06 18:17:46', '2025-04-06 18:17:46'),
(745, 'Ecology and conservation of freshwater fishes biodiversity', 'RAFAEL MIRANDA', NULL, 'Msfisheries', '2022', 'public/ebooks/XbNi3k5pvw0BbYit203MxZLTC2BfaHLj0MYhG5iR.pdf', '2025-04-06 18:18:51', '2025-04-06 18:18:51'),
(746, 'Ecosystem approach to fisheries in the mediterranean and black seas - advances in research and technologies', 'VIOLIN STOYANOV RAYKOV, PETYA PAVLOVA IVANOVA, CEMAL TURAN, ERTUG DUZGUNES', NULL, 'Msfisheries', '2020', 'public/ebooks/8not8fqvjRzhhd0if4GTz51D5N3Nx9ocrUSSKvmj.pdf', '2025-04-06 18:21:35', '2025-04-06 18:21:35'),
(747, 'Effect of climate change on salmonid fishes in rivers', 'BROR JONSSON', NULL, 'Msfisheries', '2024', 'public/ebooks/OXBxq129pcBhH1Dsk0R629OJUF7jrxz4p0qPFm4t.pdf', '2025-04-06 18:25:05', '2025-04-06 18:25:05'),
(748, 'Effect of dietary supplementation on the growth and immunity of fish and shellfish', 'QIYOU XU, JIANHUA MING, FEI SONG, CHANGLE QI, CHUANPENG ZHOU', NULL, 'Msfisheries', '2024', 'public/ebooks/Jy0M1nESST3inrfuLYchxFXpZ45OrPT6tbegKi0L.pdf', '2025-04-06 18:30:48', '2025-04-06 18:30:48'),
(749, 'Effects of species introduction on aquatic communities', 'FRéDéRIC SANTOUL, STéPHANIE BOULêTREAU', NULL, 'Msfisheries', '2022', 'public/ebooks/xAZBKwaAJ3IDJA1ISYZ6imFoSEoaNgXJ2z248kRu.pdf', '2025-04-06 18:33:03', '2025-04-06 18:33:03'),
(750, 'Emerging technologies, environment and research for sustainable aquaculture', 'QIAN LU, MOHAMMAD SERAJUDDIN', NULL, 'Msfisheries', '2020', 'public/ebooks/dycWzrcYXchKhMe0qY6dEQ0EKZxpjP7i0J1aKP82.pdf', '2025-04-06 18:34:32', '2025-04-06 18:34:32'),
(751, 'Environmental impacts of seaweed cultivation: kelp farming and preservation', 'JEAN-BAPTISTE THOMAS, JOSé POTTING, FREDRIK GRöNDAHL', NULL, 'Msfisheries', '2021', 'public/ebooks/zxgWZIAxDOpOXeYrJltCbHtWNWyJpT3eq6jM4Y9u.pdf', '2025-04-06 18:36:11', '2025-04-06 18:36:11'),
(752, 'Eu trade-related measures against illegal fishing', 'ALIN KADFAK, KATE BARCLAY, ANDREW M. SONG', NULL, 'Msfisheries', '2023', 'public/ebooks/Y9VVXA0PCZHS3PYt7GeR4N25hTePvpxszCxGTR29.pdf', '2025-04-06 18:37:02', '2025-04-06 18:37:02'),
(753, 'Fatty acids in natural ecosystems and human nutrition', 'MICHAIL I. GLADYSHEV', NULL, 'Msfisheries', '2020', 'public/ebooks/PVjitDaqQautB5LItmZF1gDoE0fcO9fXQRQV78h6.pdf', '2025-04-06 23:19:26', '2025-04-06 23:19:26'),
(754, 'Fish, fishing and community in north korea and neighbours', 'ROBERT WINSTANLEY-CHESTERS', NULL, 'Msfisheries', '2020', 'public/ebooks/8tY1tZHrnJMWTmp5ZrgPuQNHGq5SyoAcQrN8W6dc.pdf', '2025-04-06 23:20:56', '2025-04-06 23:20:56'),
(755, 'Fish nutrition and feed technology', 'MARINA PAOLUCCI AND SHUNSUKE KOSHIO', NULL, 'Msfisheries', '2023', 'public/ebooks/VqKhlgQR69q2GA7YLT46LeOcUQQPnkGk98kzkZCS.pdf', '2025-04-06 23:21:58', '2025-04-06 23:21:58'),
(756, 'Fisheries and the law in europe', 'JONATAN ECHEBARRIA FERNáNDEZ, TAFSIR MATIN JOHANSSON, JON A. SKINNER, MITCHELL LENNAN', NULL, 'Msfisheries', '2022', 'public/ebooks/Ga4HCCxMtiw3mwCkuSfUdAlMHQp7CmLZB9ImIUF0.pdf', '2025-04-06 23:24:08', '2025-04-06 23:24:08'),
(757, 'Foundations of statistical mechanics', 'ROMAN FRIGG, CHARLOTTE WERNDL', NULL, 'Msfisheries', '2023', 'public/ebooks/KZazt3nx7FQP3keaELkfkyB2yYsUEqypL4I1Rqua.pdf', '2025-04-07 00:19:36', '2025-04-07 00:19:36'),
(758, 'Functional statistics outliers detection and quality control', 'JAVIER MARTíNEZ TORRES', NULL, 'Msfisheries', '2020', 'public/ebooks/CVCXd4rLt1kONOQxFyIbISkGGGwmTRt3JPfiA153.pdf', '2025-04-07 00:20:32', '2025-04-07 00:20:32'),
(759, 'The fundamentals of people analytics', 'CRAIG STARBUCK', NULL, 'Msfisheries', '2023', 'public/ebooks/kBYLjWQA2h8Yx5jx1MGEhopdtlGBd2o8542gXM60.pdf', '2025-04-07 00:23:04', '2025-04-07 00:23:04'),
(760, 'The future of software quality assurance', 'STEPHAN GOERICKE', NULL, 'Msfisheries', '2022', 'public/ebooks/HnkKx6qNIXqp9wh5KYvnP79S9GC0Rlx0rvoumLSS.pdf', '2025-04-07 00:24:03', '2025-04-07 00:24:03'),
(761, 'Genetic dissection of important traits in aquaculture: genome-scale tools development, trait localization and regulatory mechanism exploration', 'PENG XU, LIOR DAVID, PAULINO MARTíNEZ, GEN HUA YUE', NULL, 'Msfisheries', '2020', 'public/ebooks/NibyFRsWmYxxs2gNa4aDQlxi62EGRXHzyNfHsvA0.pdf', '2025-04-07 00:30:39', '2025-04-07 00:30:39'),
(762, 'Governing integrated water resources management', 'OLIVER FRITSCH, DAVID BENSON', NULL, 'Msfisheries', '2020', 'public/ebooks/g0ykvyadFlCJxzMDpXGr5u2RM1vxPhAZdmE9i8rQ.pdf', '2025-04-07 00:31:50', '2025-04-07 00:31:50'),
(763, 'How to design, implement, and analyse a survey', 'ANTHONY ARUNDEL', NULL, 'Msfisheries', '2023', 'public/ebooks/6kYJV23HuAjyQ4Ae0FbXW2OZl8yy3ZelCqiv02XG.pdf', '2025-04-07 00:33:24', '2025-04-07 00:33:24'),
(764, 'Inclusive research is the road more or less well travelled?', 'PATRICIA O’BRIEN', NULL, 'Msfisheries', '2023', 'public/ebooks/h6hZRupGpzaVNd5KWwCVU2EklQr39erehEVRiMn9.pdf', '2025-04-07 17:07:13', '2025-04-07 17:07:13'),
(765, 'Indigenous research methodologies in sámi and global contexts', 'PIRJO KRISTIINA VIRTANEN, PIGGA KESKITALO, TORJER OLSEN', NULL, 'Msfisheries', '2021', 'public/ebooks/6pAVU6NerNdx1IgYZcXycgUQ7bzXEcXAN9JaApvh.pdf', '2025-04-07 17:08:27', '2025-04-07 17:08:27'),
(766, 'Integrated ecosystem assessments for fisheries management in the yellow sea, the east china sea, and the east/japan sea', 'SANG HEON LEE AND SEOK-HYUN YOUN', NULL, 'Msfisheries', '2023', 'public/ebooks/36j2JZSLgm473D8b1QcSMsqFPZ32U8b9NrCP8FpN.pdf', '2025-04-07 17:09:41', '2025-04-07 17:09:41'),
(767, 'Integrated water resources research advancements in understanding to improve future sustainability', 'JASON A. HUBBART', NULL, 'Msfisheries', '2021', 'public/ebooks/85hrwqyzFGuCe55WdsmCmdeihENHQgp1B0QmeKyb.pdf', '2025-04-07 17:29:09', '2025-04-07 17:29:09'),
(768, 'International organizations and research methods', 'FANNY BADACHE, LEAH R. KIMBER, LUCILE MAERTENS', NULL, 'Msfisheries', '2023', 'public/ebooks/R6f9No0sT4deUBXacBISXArfEOKkMfsG9rlUIwdn.pdf', '2025-04-07 17:33:45', '2025-04-07 17:33:45'),
(769, 'Intersectional feminist research methodologies', 'JENNIFER COOKE, LINE NYHAGEN', NULL, 'Msfisheries', '2025', 'public/ebooks/gxV0flulHcomplvo3MT0VCHeg8dJPiPcgWn699ef.pdf', '2025-04-07 17:35:05', '2025-04-07 17:35:05'),
(770, 'Life history in qualitative research: the case of beatriz', 'ANA PAULA RIBEIRO ALVES, NILSON ROGéRIO DA SILVA', NULL, 'Msfisheries', '2023', 'public/ebooks/wuvLbtXiDJa6HJiCP3J4k9Slvdpj47ixTCipP3fB.pdf', '2025-04-07 17:36:51', '2025-04-07 17:36:51'),
(771, 'Making research matter', 'TARALAMONT', NULL, 'Msfisheries', '2021', 'public/ebooks/iiERM1CqiHXk5cc6X1uMpjJ0UkRxnYg5yEf8ig0P.pdf', '2025-04-07 22:57:55', '2025-04-07 22:57:55'),
(772, 'Managed aquifer recharge for water resilience', 'PETER DILLON, ENRIQUE FERNáNDEZ ESCALANTE, SHARON B. MEGDAL, GUDRUN MASSMANN', NULL, 'Msfisheries', '2021', 'public/ebooks/xzKcI7PFkojyCF6IXoixbPZ2tyIf0BvIQyP6mJyL.pdf', '2025-04-07 22:58:57', '2025-04-07 22:58:57'),
(773, 'Marine biotechnology for sustainability of ecologically significant resources', 'KIM LEE CHANG, PETER D. NICHOLS', NULL, 'Msfisheries', '2025', 'public/ebooks/7rkPHsckpmYneWI0XW8RYIpwTmzSD9ZQHKjU77iZ.pdf', '2025-04-07 23:00:05', '2025-04-07 23:00:05'),
(774, 'Marine policy', 'YUI-YIP LAU, TOMOYA KAWASAKI', NULL, 'Msfisheries', '2023', 'public/ebooks/KuKJ6yb949l7K6V0ij0dAcibsDK4En0CfnZkbbpg.pdf', '2025-04-07 23:01:31', '2025-04-07 23:01:31'),
(775, 'Marine resource climate change', 'OLAV SCHRAM STOKKE ANDREAS ØSTHAGEN, ANDREAS RASPOTNIK', NULL, 'Msfisheries', '2022', 'public/ebooks/9Uy1Rq40TSA7TlZu9bQWBkPBBC8jroN8YVG0rCkk.pdf', '2025-04-07 23:02:29', '2025-04-07 23:02:29'),
(776, 'Marine-derived products for biomedicine', 'MARCO GIOVINE', NULL, 'Msfisheries', '2020', 'public/ebooks/l3MjEUxXEWZQAZ18CwERhPiikBHjATuBUYnk1rEp.pdf', '2025-04-07 23:03:29', '2025-04-07 23:03:29'),
(777, 'Maritime autonomous vessels', 'HAITONG XU, LúCIA MOREIRA, CARLOS GUEDES SOARES', NULL, 'Msfisheries', '2023', 'public/ebooks/JCdSnMHNhW4rnz8gQ3iQ37j9pH1dWZn5YhmvlXtA.pdf', '2025-04-07 23:08:17', '2025-04-07 23:08:17'),
(778, 'Mathematics in software reliability and quality assurance', 'TADASHI DOHI, SHAOYING LIU', NULL, 'Msfisheries', '2022', 'public/ebooks/O3fu2YKrYkHW2cROzrUzj2ba73ia7ZNOOg7zcZ18.pdf', '2025-04-07 23:13:00', '2025-04-07 23:13:00'),
(779, 'Mechanisms driving karyotype evolution and genomic architecture', 'AURORA RUIZ-HERRERA AND MARTA FARRE-BELMONTE', NULL, 'Msfisheries', '2020', 'public/ebooks/lIvKQyAJAszp1MTy6Y7e5Qz2VK1OhYbgBISgyqHR.pdf', '2025-04-07 23:18:08', '2025-04-07 23:18:08'),
(780, 'Metabolic research in aquatic animal nutrition, physiology and disease', 'QINGCHAO WANG, YAN HE, QINGSONG TAN', NULL, 'Msfisheries', '2024', 'public/ebooks/CKxqOH43fZLlzQ9L7qyhPnwGE2ItMYvXttfRjqlN.pdf', '2025-04-09 22:09:11', '2025-04-09 22:09:11'),
(781, 'Method, methodology and research design in artistic research', 'FALK HüBNER', NULL, 'Msfisheries', '2024', 'public/ebooks/sZVa0giErrRIzGqxLJbgpc6Knik7DvF1ppKGCyzH.pdf', '2025-04-09 22:11:35', '2025-04-09 22:11:35'),
(782, 'Monitoring, modelling and management of water quality', 'MATTHIAS ZESSNER', NULL, 'Msfisheries', '2021', 'public/ebooks/NcKLtdBH42DHwFERrsvpr1LeZiSOvHRf6ftREE1D.pdf', '2025-04-09 22:12:47', '2025-04-09 22:12:47'),
(783, 'Multivariate statistical machine learning methods for genomic prediction', 'OSVAL ANTONIO MONTESINOS LóPEZ , ABELARDO MONTESINOS LóPEZ , JOSé CROSSA', NULL, 'Msfisheries', '2022', 'public/ebooks/hC2VTmJkIdnKUecmjzi8K47PYqGo4zmt2Z2cjDf7.pdf', '2025-04-09 22:14:21', '2025-04-09 22:14:21'),
(784, 'New challenges in water systems', 'HELENA M. RAMOS, ARMANDO CARRAVETTA, AONGHUS MC NABOLA', NULL, 'Msfisheries', '2020', 'public/ebooks/yaCb71zBxZDiKWtgdo4pNReJE2yQ4gXQzomrHkdi.pdf', '2025-04-09 22:15:37', '2025-04-09 22:15:37'),
(785, 'New techniques and equipment in large offshore aquaculture platform', 'ZHENHUA MA, JIANGUANG QIN', NULL, 'Msfisheries', '2024', 'public/ebooks/vAlKaHB4fj21I6HEPB27DlCJb2tXuiJFXebg0Oai.pdf', '2025-04-09 22:17:05', '2025-04-09 22:17:05'),
(786, 'New techniques in marine aquaculture', 'ZHENHUA MA, JIANGUANG QIN', NULL, 'Msfisheries', '2023', 'public/ebooks/eBsijOHoskmHTNtpj0e4GLrlhoVxAh7nk7SBZd2S.pdf', '2025-04-09 22:18:18', '2025-04-09 22:18:18'),
(787, 'Otoliths and their applications in fishery science', 'JOSIPA FERRI', NULL, 'Msfisheries', '2023', 'public/ebooks/tiTAsXyKtRZwp3QYKPncQz77C8fJ32AWOTPaSqpO.pdf', '2025-04-09 22:20:05', '2025-04-09 22:20:05'),
(788, 'Oxidative stress in aquatic organisms', 'BO LIU, CHANGYOU SONG, CUNXIN SUN', NULL, 'Msfisheries', '2023', 'public/ebooks/VpaAqyJWLH7SHDtv5Ag0K8JZJh5FWrUfk69PU7oc.pdf', '2025-04-09 22:21:13', '2025-04-09 22:21:13'),
(789, 'Pertinent and traditional approaches towards fishery', 'NOOR US SAHER', NULL, 'Msfisheries', '2023', 'public/ebooks/lwAvgEP9qEDdgauSO0usjLuJefVOaY7cNywkRFfJ.pdf', '2025-04-10 22:07:13', '2025-04-10 22:07:13'),
(790, 'Present-day turkish aquaculture and trends in international research', 'DR. MUSTAFA YıLDıZ, DR. SüHEYLA KARATAş', NULL, 'Msfisheries', '2023', 'public/ebooks/hM32r8XY4CJhkGByJywX2PcgJwi8cXVLHI04GKXN.pdf', '2025-04-10 22:08:40', '2025-04-10 22:08:40'),
(791, 'Preserving community interests in ocean governance towards sustainability 2nd edition', 'KEYUAN ZOU, YEN-CHIANG CHANG', NULL, 'Msfisheries', '2023', 'public/ebooks/rfAoiR7ShVJ7lsGJENDooklZWod6DKCAB3wcEg4x.pdf', '2025-04-10 22:12:10', '2025-04-10 22:12:10'),
(792, 'Processing and preservation of aquatic products', 'TAO YIN AND LIU SHI', NULL, 'Msfisheries', '2023', 'public/ebooks/UXE5uOEDMVDGKHp1IVc6GGYUkQ0aPc1DEj6Z3AGw.pdf', '2025-04-10 22:14:24', '2025-04-10 22:14:24'),
(793, 'Qualitative analysis of food products', 'THEODOROS VARZAKAS', NULL, 'Msfisheries', '2021', 'public/ebooks/Kr4NB0gMgWMqhMA4RWr2r5bFVe2ciPBvypmawHvK.pdf', '2025-04-10 22:15:30', '2025-04-10 22:15:30'),
(794, 'Quality control an anthology of cases', 'LEO D. KOUNIS', NULL, 'Msfisheries', '2023', 'public/ebooks/BmyuPSJDvw33JcbYm8iE93uEyPKzw69XphNwSU6Q.pdf', '2025-04-10 22:17:05', '2025-04-10 22:17:05'),
(795, 'Quality control and quality assurance techniques and applications', 'SAYYAD ZAHID QAMAR, NASR AL-HINAI', NULL, 'Msfisheries', '2024', 'public/ebooks/8REz3yFFidovVOik1SBWMMmOvyM3Tj5yW7z3FAiL.pdf', '2025-04-10 22:18:53', '2025-04-10 22:18:53'),
(796, 'Remote sensing of the aquatic environments', 'GIACOMO DE CAROLIS, FRANCESCA DE SANTI', NULL, 'Msfisheries', '2021', 'public/ebooks/chlBttOL4brM25ZzBjJpbMzAw9yX7lOJBLq4ljMP.pdf', '2025-04-10 22:20:14', '2025-04-10 22:20:14'),
(797, 'Research with international students', 'JENNA MITTELMEIER, SYLVIE LOMER, KALYANI UNKULE', NULL, 'Msfisheries', '2024', 'public/ebooks/ijMF4rt5HzKwLECNm3udkkB2oGYPA3KZU7KIz5wp.pdf', '2025-04-10 22:22:06', '2025-04-10 22:22:06'),
(798, 'Research methodology for beginners', 'DR. V. STEPHEN. B.A., M.S.W., PH.D., MR. T. VELMURUGAN. M.S.W.,', NULL, 'Msfisheries', '2020', 'public/ebooks/nZCbGCYyVUCva8bHAKTHR0CybxdKORUExpOsWuYC.pdf', '2025-04-10 22:23:14', '2025-04-10 22:23:14'),
(799, 'Right research modelling sustainable research practices in the anthropocene', 'CHELSEA MIYA, OLIVER ROSSIER, GEOFFREY ROCKWELL', NULL, 'Msfisheries', '2021', 'public/ebooks/giniVDegO5OyqPfT1q8JA7Ny5S3YiST1frXM6rxg.pdf', '2025-04-10 22:25:14', '2025-04-10 22:25:14'),
(800, 'Rule of law in the progress of sustainable fishery governance', 'YEN-CHIANG CHANG', NULL, 'Msfisheries', '2023', 'public/ebooks/A3hEHp5iuTUl1wQeUarotkU7lYKUl9dstD1nuFaa.pdf', '2025-04-10 22:26:05', '2025-04-10 22:26:05'),
(801, 'Salmon aquaculture', 'QIAN LU', NULL, 'Msfisheries', '2022', 'public/ebooks/aZ28ima8u9besCXQfff4ONNsjnPsGlHI1351TeJb.pdf', '2025-04-10 22:28:45', '2025-04-10 22:28:45'),
(802, 'Seafood sustainability series i', 'NARESH C. PRADHAN, JUNNING CAI, STEPHEN M. STOHS', NULL, 'Msfisheries', '2020', 'public/ebooks/q1rQJycwLVDgh7ZHe2xQcpJeBImHUbAMsC8kkYhM.pdf', '2025-04-10 22:29:41', '2025-04-10 22:29:41'),
(803, 'Selected papers from the 7th world conference on qualitative research', 'GIANINA-ESTERA PETRE AND ANTóNIO PEDRO COSTA', NULL, 'Msfisheries', '2024', 'public/ebooks/UKQo0uXot3Pv5ePTyn4b7zcjbJgWg3RpciGb3ZNK.pdf', '2025-04-10 22:30:35', '2025-04-10 22:30:35'),
(804, 'Sharks and skates ecology, distribution and conservation', 'MARTINA FRANCESCA MARONGIU', NULL, 'Msfisheries', '2023', 'public/ebooks/ebjLTUGKxtR8VvdWRt0KmIfLMt06SHNgWTNIDAXX.pdf', '2025-04-10 22:31:57', '2025-04-10 22:31:57'),
(805, 'Ship dynamics for performance based design and risk averse operations', 'SPYROS HIRDARIS AND TOMMI KRISTIAN MIKKOLA', NULL, 'Msfisheries', '2021', 'public/ebooks/FVPVT893ZjmCIk3DYDQZbNCXvsZwK5SSmnLsYFAO.pdf', '2025-04-10 22:33:11', '2025-04-10 22:33:11'),
(806, 'Six sigma and quality management', 'PAULO PEREIRA', NULL, 'Msfisheries', '2024', 'public/ebooks/LLdT6Ts2sX49TCydO0CdZ5n4riLHemiInIdtf6J2.pdf', '2025-04-10 22:33:51', '2025-04-10 22:33:51'),
(807, 'Social research for our times', 'CLAIRE CAMERON, ALISON KOSLOWSKI, ALISON LAMONT, PETER MOSS', NULL, 'Msfisheries', '2024', 'public/ebooks/ztNuolUk82Bl8NALkttY4AcqMmcd4M6ZcZhqU3yH.pdf', '2025-04-10 22:34:40', '2025-04-10 22:34:40'),
(808, 'Statistical analysis of networks', 'KONSTANTIN AVRACHENKOV, MAXIMILIEN DREVETON', NULL, 'Msfisheries', '2022', 'public/ebooks/vzYmLHKovqQzAsPH022JvfnM7XHU4t9kRAzSt3TB.pdf', '2025-04-10 22:35:59', '2025-04-10 22:35:59'),
(809, 'Statistical inference in linear models', 'SANDRA FERREIRA', NULL, 'Msfisheries', '2024', 'public/ebooks/i96UhgA91TJ3WF5SCtIewrnb5vki2XrCW1rBShbm.pdf', '2025-04-10 22:36:36', '2025-04-10 22:36:36'),
(810, 'Statistical methodologies', 'JAN PETER HESSLING', NULL, 'Msfisheries', '2020', 'public/ebooks/IwuEABUiaAgyQlhcEAGpl8WBXl5zUqHcj4niGP73.pdf', '2025-04-10 22:37:12', '2025-04-10 22:37:12'),
(811, 'Structure-seabed interactions in marine environments', 'ZHEN GUO, YI HONG, DONG-SHENG JENG', NULL, 'Msfisheries', '2021', 'public/ebooks/RnC8F3rn97Ac4LBFJ1V3l5HkrE7SLAOEtl6MNcph.pdf', '2025-04-10 22:38:08', '2025-04-10 22:38:08'),
(812, 'Studying the biology of aquatic animals through calcified structures', 'ESTEBAN AVIGLIANO, ALEJANDRA VANINA VOLPEDO AND BENJAMIN D. WALTHER', NULL, 'Msfisheries', '2020', 'public/ebooks/LyROWNjBZeFK24H3y7hWsiR3Ramfn1YG5w21EWRi.pdf', '2025-04-10 22:39:45', '2025-04-10 22:39:45'),
(813, 'Surface water quality modelling', 'KARL-ERICH LINDENSCHMIDT', NULL, 'Msfisheries', '2023', 'public/ebooks/mBGPy9LRJKvlhhxcOXW7OH1ZVP1QB92AIu08swM4.pdf', '2025-04-10 22:40:32', '2025-04-10 22:40:32'),
(814, 'Sustainable resource development in the 21stcentury', 'DAVID ZILBERMAN,  JEFFREY M. PERLOFF, CYNDI SPINDELL BERCK', NULL, 'Msfisheries', '2023', 'public/ebooks/9k6LhrflLD8lVUJfBAJelh0XCTN3IYLhfn2VaBxL.pdf', '2025-04-10 22:41:21', '2025-04-10 22:41:21'),
(815, 'The ix iberian congress of ichthyology', 'ALBERTO TEODORICO CORREIA', NULL, 'Msfisheries', '2023', 'public/ebooks/eS3nJmrGinKON1QMBOkXRUgp3RfVUMzHVz1GbORk.pdf', '2025-04-13 17:31:18', '2025-04-13 17:31:18'),
(816, 'Towards a new paradigm for statistical evidence', 'JAE H. (PAUL) KIM, MUHAMMAD ISHAQ BHATTI', NULL, 'Msfisheries', '2021', 'public/ebooks/ksGBJPbWeuK1MfwTMBiXBnwCt8WFomU6oI8ueOqt.pdf', '2025-04-13 17:32:00', '2025-04-13 17:32:00'),
(817, 'Transcriptome and genome analyses applied to aquaculture research', 'PATRICIA PEREIRO', NULL, 'Msfisheries', '2022', 'public/ebooks/lEgrSAGtyAuTZRtaSK6EgyAog8Dn46PH4Z8ZpDd4.pdf', '2025-04-13 17:33:26', '2025-04-13 17:33:26'),
(818, 'Water management for sustainable food production', 'NARAYANAN KANNAN, AAVUDAI ANANDHI', NULL, 'Msfisheries', '2020', 'public/ebooks/TNOgKM3tuIak4r5Eq83DYH3sfh7JR7K8Gtt1Ppxg.pdf', '2025-04-13 18:20:52', '2025-04-13 18:20:52'),
(819, 'Water quality factors and impacts', 'DANIEL DUNEA', NULL, 'Msfisheries', '2022', 'public/ebooks/7YFTSNhBzFxGPIi916gg4cD1oQ3ajPlGi3Fcccza.pdf', '2025-04-13 18:21:45', '2025-04-13 18:21:45'),
(820, 'Water quality assessments for urban water environment', 'PANKAJ KUMAR', NULL, 'Msfisheries', '2021', 'public/ebooks/ab1VEtNdZKqDfjI45QzXdg2bqKlHdD41Po6uMOmy.pdf', '2025-04-13 18:22:27', '2025-04-13 18:22:27'),
(821, 'Water resources and sustainable development', 'PEIYUE LI, JIANHUA WU', NULL, 'Msfisheries', '2024', 'public/ebooks/8X6s9yLPuXYnLr1wvXofmwkEQ9IFEQBn4fD3k4Cr.pdf', '2025-04-13 18:23:36', '2025-04-13 18:23:36'),
(822, 'Water resources management models for policy assessment', 'LUIS GARROTE', NULL, 'Msfisheries', '2022', 'public/ebooks/NdyZ6KxoVliJb5MMGKAVK9pFp12n7zY5BPZMqk8X.pdf', '2025-04-13 18:32:11', '2025-04-13 18:32:11'),
(823, 'Water supply and water scarcity', 'VASILEIOS A. TZANAKAKIS, NIKOLAOS V. PARANYCHIANAKIS,ANDREAS N. ANGELAKIS', NULL, 'Msfisheries', '2020', 'public/ebooks/s5aIGFvH6OCrWpf8DK5tynnMg1G0uJBcfFPLLvHb.pdf', '2025-04-13 18:33:18', '2025-04-13 18:33:18'),
(824, 'Welfare and stressors in fish: challenges facing aquaculture', 'LEONARDO JULIáN MAGNONI, JUAN ANTONIO MARTOS-SITCHA, PATRICK PRUNET, JUAN MIGUEL MANCERA', NULL, 'Msfisheries', '2020', 'public/ebooks/8AfsuvJVlK98qeBIfLR9SVREGZicCMnp9M0VgXQ6.pdf', '2025-04-13 18:35:06', '2025-04-13 18:35:06'),
(825, 'What makes academic writing', 'JULIA MOLINARI', NULL, 'Msfisheries', '2022', 'public/ebooks/4f6xf43eo1fKsqxko9BdaExvbz9iAZ3CpjtTrKht.pdf', '2025-04-13 18:36:02', '2025-04-13 18:36:02'),
(826, 'Wildlife conservation managing resources for a sustainable world', 'VASILIOS LIORDOS', NULL, 'Msfisheries', '2024', 'public/ebooks/TUI0jvKwntT8n3zihvdsRdNPG7sLANOyD3ptHVtR.pdf', '2025-04-13 18:36:42', '2025-04-13 18:36:42'),
(827, 'Zooplankton diversity and pelagic food webs investigating present and past with different techniques', 'ROBERTA PISCIA, ROBERTA BETTINETTI, BARBARA LEONI, MARINA MARCELLA MANCA', NULL, 'Msfisheries', '2021', 'public/ebooks/QIBnXLYlliWRAHR7Nf5KA3B8Nz7GbxeqDaXRqTDz.pdf', '2025-04-13 18:37:40', '2025-04-13 18:37:40'),
(828, 'A burdensome Experiment', 'CHRISTIEN PHILMARC TOMPKINS', NULL, 'Education', '2024', 'public/ebooks/sCZ8wfsCALh2BlJLOvsVxRaKJIJ3GFmHdW0zW439.pdf', '2025-04-20 21:51:20', '2025-04-20 21:51:20'),
(829, 'Academic performance students, teachers and institutions on the stage', 'DIANA DIAS, TERESA CANDEIAS', NULL, 'Education', '2024', 'public/ebooks/dwiiCg2UaTi0dNwECCggUuo1LY8VNnhvIULdrHM4.pdf', '2025-04-21 23:23:57', '2025-04-21 23:23:57'),
(830, 'Active methodologies for the promotion of mathematical learning', 'FRANCISCO D. FERNáNDEZ-MARTíN, JOSé-MARíA ROMERO-RODRíGUEZ, GERARDO GóMEZ-GARCíA, MAGDALENA RAMOS NAVAS-PAREJO', NULL, 'Education', '2024', 'public/ebooks/xJAd6KTmIkHL05GiCY0u1IQ2aIWTnf8gbU5YqzLf.pdf', '2025-04-21 23:25:33', '2025-04-21 23:25:33'),
(831, 'Applied pedagogies for higher education real world learning and innovation across the curriculum', 'DAWN A. MORLEY, MD GOLAM JAMIL', NULL, 'Education', '2021', 'public/ebooks/mVx5Kcd4aQFxvZ93ETVUGsOzSOeUqDnO220Ane1w.pdf', '2025-04-21 23:27:12', '2025-04-21 23:27:12'),
(832, 'Approach and policy in higher education for sustainability', 'GAZI MAHABUBUL ALAM', NULL, 'Education', '2024', 'public/ebooks/iXqisyxl8iOOU8L3Phn2WoXV0ORxqJPG9n8uYdFY.pdf', '2025-04-21 23:28:18', '2025-04-21 23:28:18'),
(833, 'Approaches and methods of science teaching and sustainable development', 'DAVID GONZáLEZ-GóMEZ, JIN SU JEONG', NULL, 'Education', '2022', 'public/ebooks/wGdmU9Tp5TbDWeL9AaSxggRtiRNtt8t6kfwMqU9X.pdf', '2025-04-21 23:30:14', '2025-04-21 23:30:14'),
(834, 'Assessing interactional competence', 'DAVID WEI DAI', NULL, 'Education', '2024', 'public/ebooks/dWgKSXE0gMx0ei6M30iYJG59gtK96rUvR42A8OCV.pdf', '2025-04-21 23:34:40', '2025-04-21 23:34:40'),
(835, 'Assessment and evaluation in higher education', 'UEL GONçALVES FERNANDES,  MARTA ABELHA, ANA T', NULL, 'Education', '2023', 'public/ebooks/7K5E0BrdPGQKnU74Z5pjpKLwgmfzQyHPpNoncwtz.pdf', '2025-04-21 23:35:53', '2025-04-21 23:35:53'),
(836, 'Assessment for experimental learning', 'CECILIA KA YUK CHAN', NULL, 'Education', '2023', 'public/ebooks/Bdw20ZEkLbHSOqy1GKWewRbqDeOsrqWCUazB3NCg.pdf', '2025-04-21 23:36:53', '2025-04-21 23:36:53'),
(837, 'Assessment for inclusion in higher education', 'ROLA AJJAWI, JOANNA TAI, DAVUD BOUDM TRINA JORRE DE ST JORRE', NULL, 'Education', '2023', 'public/ebooks/GXTrT6td9V6zJUJGkr6CSmeuVmUa5vF44ts0DbUm.pdf', '2025-04-21 23:38:30', '2025-04-21 23:38:30'),
(838, 'Becoming a teacher research on the work-integrated learning of student teachers', 'JOSEF DE BEER, NEAL PETERSEN, HERMAN J. VAN VUUREN', NULL, 'Education', '2020', 'public/ebooks/EEeKu9lsgMUTYeZGpmoGzDdHGIoaO4hMEGOgCuQH.pdf', '2025-04-21 23:40:06', '2025-04-21 23:40:06'),
(839, 'Blended learning and teaching in higher education an international perspective', 'MARIA BEATRICE LIGORIO, FRANCESCA AMENDUNI', NULL, 'Education', '2022', 'public/ebooks/iGb5TJDVTNamyGZuPfCsQfoUiVyaXhHO0xkF4E5K.pdf', '2025-04-21 23:41:33', '2025-04-21 23:41:33'),
(840, 'Blended learning and the global south: virtual exchanges in higher education', 'GIOVANNA CARLONI, CHRISTOPHER FOTHERINGHAM, ANITA VIRGA, BRIAN ZUCCALA', NULL, 'Education', '2021', 'public/ebooks/t0aAUP49oncTlvmogyTyN1yT2SjDcOUxYrgQTFit.pdf', '2025-04-21 23:42:18', '2025-04-21 23:42:18'),
(841, 'Building university schools in teacher education programmes guidelines', 'BOHUMíRA LAZAROVá, MILAN POL, VLADIMíR MOšKVAN, KARL-HEINZ GERHOLZ, JöRG NEUBAUER, HANNES REINKE, ANNE WAGNER, NILS MARKO, JOHANNES SEITLE, KARL WILBERS, BJORN IVAR MIDJO, KARI SMITH, INGRID STENøIEN, LUIS TINOCA, TIAGO TEMPERA', NULL, 'Education', '2021', 'public/ebooks/Uh6pt2vlFrnJ4z4DVGXKg0mtDLK4CRau1jkOjEle.pdf', '2025-04-21 23:45:23', '2025-04-21 23:45:23');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('bupms-admin@bicol-u.edu.ph|127.0.0.1', 'i:1;', 1741244326),
('bupms-admin@bicol-u.edu.ph|127.0.0.1:timer', 'i:1741244326;', 1741244326),
('bupms-admin@gmail.com|192.168.0.115', 'i:1;', 1741156623),
('bupms-admin@gmail.com|192.168.0.115:timer', 'i:1741156623;', 1741156623),
('hanscestina@gmail.com|127.0.0.1', 'i:1;', 1740548250),
('hanscestina@gmail.com|127.0.0.1:timer', 'i:1740548249;', 1740548250),
('random@mail.com|127.0.0.1', 'i:1;', 1741931183),
('random@mail.com|127.0.0.1:timer', 'i:1741931183;', 1741931183),
('random@mail.com|192.168.0.130', 'i:2;', 1741764294),
('random@mail.com|192.168.0.130:timer', 'i:1741764294;', 1741764294);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_02_13_081830_books', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('CpYHDQL9RiiDryPaTYqLxPHGKTeMt6PvvdBVRKLY', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNkJFODd6NWNZUGxobTBkYU5EYjRWRHJQS0YySWZuaHBQeGJ1cnJXcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1745458419);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Hans', '$2y$12$iYtxV4xPZTTmSducwM/TJu1CAnFtVE8W6n1Fj6scxTfUuddRQdJya', 'bupms-admin@mail.com', 'admin', '2025-02-25 18:54:48', '2025-02-25 18:54:48'),
(3, 'admin', '$2y$12$VQZHxZmJ9nVS.jbpT0qqTusYbYdtI3yhZ9cWaB1YKMAcUXYb6nZFW', 'admin@mail.com', 'admin', '2025-03-11 23:22:41', '2025-03-11 23:22:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_id_unique` (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_id_unique` (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=842;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
