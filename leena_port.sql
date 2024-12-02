-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2024 at 02:33 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leena_port`
--

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `awards_id` char(36) NOT NULL DEFAULT uuid(),
  `awards_citation` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`awards_id`, `awards_citation`) VALUES
('a1cca92d-b08d-11ef-bd13-346f24122a96', 'Director, DRISHTI Foundations, Technology Innovation Hub at IIT Indore, April 2022 - April 2025.'),
('a1ccb237-b08d-11ef-bd13-346f24122a96', 'Member, Technical Program Committee (TPC), Premium international aerospace conference of SAE INDIA, AeroCon 2022.'),
('a1ccb2c1-b08d-11ef-bd13-346f24122a96', 'Member, National Organizing Committee (NOC), 22nd IFAC International Symposium on Automatic Control in Aerospace ACA 2022.'),
('a1ccb2e8-b08d-11ef-bd13-346f24122a96', 'Reviewer and Advisor, Nano Heli Project, DYSL, DRDO Lab.'),
('a1ccb307-b08d-11ef-bd13-346f24122a96', 'Professor-in-Charge, Technology Innovation Hub, Sept 2020- Sept 2023.'),
('a1ccb325-b08d-11ef-bd13-346f24122a96', 'Research Council (RC) member of CSIR-CMERI, Durgapur 2020-2023.'),
('a1ccb34a-b08d-11ef-bd13-346f24122a96', 'Rahul Pari, Anirban Guha and Leena Vachhani jointly received the NRDC2019 national award for the design Novel Folding Mechanism for Rail Inspection (Autonomous). The award constitutes a citation and prize amount of INR 1 lakh.'),
('a1ccb371-b08d-11ef-bd13-346f24122a96', 'Expert committee member of “Space Robotics Experiment for Gaganyaan programme”, ISRO Inertial Systems Unit, Jan 2019.'),
('a1ccb38f-b08d-11ef-bd13-346f24122a96', 'Member, Post Graduate Program Committee, 2019-2020.'),
('a1ccb3b2-b08d-11ef-bd13-346f24122a96', 'Member, Institute Scholarship Committee, 2018-2019.'),
('a1ccb3d5-b08d-11ef-bd13-346f24122a96', 'Core member, Maker space committee since 2018.'),
('a1ccb3f2-b08d-11ef-bd13-346f24122a96', 'Faculty advisor, IITB-AUV students’ team since 2010.'),
('a1ccb435-b08d-11ef-bd13-346f24122a96', 'AUV-IITB Team won second runners-up in RoboSub2016.'),
('a1ccb453-b08d-11ef-bd13-346f24122a96', 'Expert member of the “Design Review Committee” for the “Torpedo Electrical Actuation System”, NSTL, October 2016.'),
('a1ccb493-b08d-11ef-bd13-346f24122a96', 'Member, IEEE.'),
('a1ccb4ab-b08d-11ef-bd13-346f24122a96', 'DST Young Scientist Award under Fast Track scheme in 2013.'),
('a1ccb4c4-b08d-11ef-bd13-346f24122a96', '1st in Masters and 2nd in Bachelors at University levels.');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `cour_id` char(36) NOT NULL DEFAULT uuid(),
  `cour_code` varchar(50) DEFAULT NULL,
  `cour_name` text DEFAULT NULL,
  `cour_link` text DEFAULT NULL,
  `cour_sem` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`cour_id`, `cour_code`, `cour_name`, `cour_link`, `cour_sem`) VALUES
('56fa4452-b09a-11ef-bd13-346f24122a96', 'SC634', 'Introduction to wheeled robotics', NULL, NULL),
('56fa4d28-b09a-11ef-bd13-346f24122a96', 'SC635', 'Advanced topics in mobile robotics', NULL, NULL),
('56fa4d6b-b09a-11ef-bd13-346f24122a96', 'SC700', 'Embedded Control Systems', NULL, NULL),
('56fa4d90-b09a-11ef-bd13-346f24122a96', 'SC627', 'Motion planning and Coordination of Autonomous Vehicles', NULL, NULL),
('56fa4db4-b09a-11ef-bd13-346f24122a96', 'SC804', 'Advanced Topics in Systems and Control', NULL, NULL),
('ff56bacc-b08c-11ef-bd13-346f24122a96', 'SC645', 'Intelligent Feedback and Control ', NULL, NULL),
('ff56c320-b08c-11ef-bd13-346f24122a96', 'SC620', 'Automation and Feedback Control', NULL, NULL),
('ff56c38f-b08c-11ef-bd13-346f24122a96', 'SC626', 'Systems and Control Engineering Laboratory', NULL, NULL),
('ff56c3b1-b08c-11ef-bd13-346f24122a96', 'SC301', 'Linear and Nonlinear Systems', NULL, NULL),
('ff56c3c9-b08c-11ef-bd13-346f24122a96', 'SC 620', 'Automation and Feedback Control', NULL, NULL),
('ff56c3df-b08c-11ef-bd13-346f24122a96', 'SC202', 'Signals and Feedback Systems', NULL, NULL),
('ff56c3f4-b08c-11ef-bd13-346f24122a96', 'SC625', 'Systems Theory', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `proj_id` char(36) NOT NULL DEFAULT uuid(),
  `proj_name` text DEFAULT NULL,
  `proj_sponsor` text DEFAULT NULL,
  `proj_start_date` date DEFAULT NULL,
  `proj_end_date` date DEFAULT NULL,
  `proj_status` enum('Ongoing','Completed') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`proj_id`, `proj_name`, `proj_sponsor`, `proj_start_date`, `proj_end_date`, `proj_status`) VALUES
('d8f4f8ca-b07a-11ef-bd13-346f24122a96', 'Software development for Data Acquisition System of Pipeline Inspection Robot', 'IOCL through CoE-OGE', '2024-09-01', '2025-03-01', 'Ongoing'),
('d8f4fa7c-b07a-11ef-bd13-346f24122a96', 'Determining GPS coordinates at odometer locations', 'IOCL through CoE-OGE', '2023-07-01', '2025-01-01', 'Ongoing'),
('d8f4fad9-b07a-11ef-bd13-346f24122a96', '3D Autonomous Navigation of Underwater Vehicle', 'DRDO-CARS', '2023-03-01', '2025-03-01', 'Ongoing'),
('d8f4fafe-b07a-11ef-bd13-346f24122a96', 'Design & Development of IoT Solution for Underwater Pipeline Inspection', 'IOCL & HPCL through CoE-OGE and TIH-IoT', '2022-06-01', '2024-12-01', 'Ongoing'),
('d8f4fb1d-b07a-11ef-bd13-346f24122a96', 'Hardware Implementation & Validation of Swarming Algorithm', 'L&T Pvt. Ltd.', '2023-02-01', '2024-02-01', 'Ongoing'),
('d8f4fb3e-b07a-11ef-bd13-346f24122a96', 'Technology Innovation Hub under National Mission on Interdisciplinary Cyber Physical Systems', 'Department of Science & Technology (DST)', '2020-12-01', '2025-12-01', 'Ongoing'),
('d8f4fb5c-b07a-11ef-bd13-346f24122a96', 'Design & Development of Underwater Remotely Operated Vehicle (ROV) for Inspection and Surveillance', 'DST - IMPRINT II.C', '2019-01-01', '2021-01-01', 'Completed'),
('d8f4fb7b-b07a-11ef-bd13-346f24122a96', 'IoT using Android Apps for autonomous small size robots', 'DST - ICPS', '2019-01-01', '2022-01-01', 'Completed'),
('d8f4fba9-b07a-11ef-bd13-346f24122a96', 'Search and Reconnaissance using spherical robots (sub-project of NCETIS)', 'Internal project of DIT', '2017-04-01', '2020-04-01', 'Completed'),
('d8f4fbc6-b07a-11ef-bd13-346f24122a96', 'Vision Based Localization For Autonomous And Semi-Autonomous Navigation Of A Quadcopter', 'Flipkart Internet Pvt. Ltd.', '2015-10-01', '2017-10-01', 'Completed'),
('d8f4fbf0-b07a-11ef-bd13-346f24122a96', 'Vision based motion planning for a 3D crane', 'Konecranes Pvt. Ltd.', '2015-07-01', '2017-07-01', 'Completed'),
('d8f4fc0b-b07a-11ef-bd13-346f24122a96', 'Doppler Velocity Log (DVL) based Autonomous Underwater Vehicle (AUV) localization and navigation for detecting underwater acoustic sources', 'Naval Research Board (NRB)', '2014-11-01', '2016-06-01', 'Completed'),
('d8f4fc2a-b07a-11ef-bd13-346f24122a96', 'Undergraduate student competition, AUVSI’ ROBOSUB', 'IRCC, IITB and other sponsors', '2012-12-01', NULL, 'Ongoing'),
('d8f4fc47-b07a-11ef-bd13-346f24122a96', 'Localizing and following a predefined path by an autonomous mobile vehicle using panoramic image formation', 'DST', '2013-07-01', '2015-07-01', 'Completed'),
('d8f4fc60-b07a-11ef-bd13-346f24122a96', 'Path planning of an autonomous vehicle using omni-directional camera', 'IRCC, IITB', '2010-07-01', '2013-12-01', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `publications`
--

CREATE TABLE `publications` (
  `pub_id` char(36) NOT NULL DEFAULT uuid(),
  `pub_citation` text DEFAULT NULL,
  `pub_type` enum('Journal','Conference','Book','Patent','Other') DEFAULT NULL,
  `pub_links` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `publications`
--

INSERT INTO `publications` (`pub_id`, `pub_citation`, `pub_type`, `pub_links`) VALUES
('1a260925-b07d-11ef-bd13-346f24122a96', 'Methods and Systems for Automating Learnings in Robot-Assisted Minimally Invasive Surgery, Shubhangi Nema and Leena Vachhani, Application No. 202321006769 filed on 2nd Feb 2023', 'Patent', NULL),
('1a2611a5-b07d-11ef-bd13-346f24122a96', 'ROBOT FOR CAPTURING VIDEOS: Design No.: 375285-001, filed on 8th December, 2022, Granted on 20th Feb 2024', 'Patent', NULL),
('1a261215-b07d-11ef-bd13-346f24122a96', 'A robot system with an upwards-facing camera, Leena Vachhani, Abhishek Gupta, Kaustubh Prashant Sadekar, Vaibhav Nandkumar Kadam and Animesh Singhal, Application No.: 202221067357, filed on 23rd November, 2022', 'Patent', NULL),
('1a26125c-b07d-11ef-bd13-346f24122a96', 'Methods for scaling a spherical robot, Leena Vachhani, Abhishek Gupta, Vaibhav Nandkumar Kadam, Kaustubh Prashant Sadekar, Animesh Singhal, Application No.: 202221063295, filed on 5th November, 2022', 'Patent', NULL),
('1a261287-b07d-11ef-bd13-346f24122a96', 'A Spherical Robot, Leena Vachhani, Abhishek Gupta, Vaibhav Nandkumar Kadam, Kaustubh Prashant Sadekar, Animesh Singhal, Application No.: 202223063422, filed on 7th November, 2022', 'Patent', NULL),
('1a2612a9-b07d-11ef-bd13-346f24122a96', 'Multifunctional Ultraviolet Disinfected Robot, Ambarish Kunwar, Kiran Kondabagil, Leena Vachhani, Monika, Saumya Yadav, Hrushikesh Mahindranath Nagwekar, Application No. 202121049152, filed on 27th Oct, 2021', 'Patent', NULL),
('1a2612ca-b07d-11ef-bd13-346f24122a96', 'Leena Vachhani, Shantanu Thakar, Vikranth Reddy D., Dhiraj Gandhi and Akshay Khatri, “Design and development of a gearless spherical robot”, IPA No. 4717/MUM/2015, filed on 16th December, 2015, Patent No. 501072 granted on 19th Jan 2024', 'Patent', NULL),
('1a2612f0-b07d-11ef-bd13-346f24122a96', 'Rahul Pari, Anirban Guha and Leena Vachhani, “An Apparatus for Inspection of Rail Tracks, IPA No. 201921024615, filed on 20 June 2019, Patent No. 467978 granted on 10th Nov, 2023', 'Patent', NULL),
('1a26130f-b07d-11ef-bd13-346f24122a96', 'Ambarish Kunwar, Anirban Guha, Leena Vachhani, P Kumaresan, Kiran Kondabagil, Monika, Mohit Dadlani, Arunkumar G K, Saumya Yadav, Khushnandan Rai, Shrawan Kumar Choudhary, Brajesh Kumar Meena, and Hrushikesh Mahindranath Nagwekar, “A Robotic Disinfection System”, IPA No. 202121050239, filed on 2nd Nov, 2021, Patent No. 401487 granted on 18th July, 2022', 'Patent', NULL),
('1a261332-b07d-11ef-bd13-346f24122a96', 'Anupa Sabnis and Leena Vachhani, “Method of capturing a full 360 degree view using panoramic imaging systems”, IPA No. 1867/MUM/2012 filed on 27th June 2012, Patent No. 399771 granted on 22nd, June, 2022', 'Patent', NULL),
('2eedfcbf-b07d-11ef-bd13-346f24122a96', 'Leena Vachhani, Pranjal Vyas and ArunKumar G.K., “Embedded Control for Robotic Applications”, IEEE-Wiley Press Series on Control Systems Theory and Application, August 2022', 'Book', 'https://doi.org/10.1002/9781119812418'),
('2eee06f9-b07d-11ef-bd13-346f24122a96', 'Leena Vachhani, Rajesh Kumar Panakala and K. Sridharan, “Advances in Mapless and Map-Based Strategies for Robot Navigation - A Review”, A Chapter in Robotic Navigation: New Research, Nova publications 2009', 'Book', 'https://www.researchgate.net/publication/326244558_Advances_in_mapless_and_map-based_strategies_for_robot_navigation_-_A_review'),
('615fc631-b07d-11ef-bd13-346f24122a96', '(Industrial Collaboration) Larsen & Toubro Pvt. Ltd., India: Transferring the technology of designing and developing small size Underwater Remotely Operated Vehicles through the DST IMPRINT project', 'Other', NULL),
('615fce9d-b07d-11ef-bd13-346f24122a96', '(Industrial Collaboration) Autonomous Underwater Vehicle (AUV)− Matsya: Leading the development of IITB-Matsya vehicle. This vehicle has been identified as a research platform for exploring underwater applications by the Naval Research Board (NRB). The AUV Lab of NSTL (Naval Science and Technological Laboratory) collaborated on solving research problems using Matsya vehicle', 'Other', NULL),
('615fcef2-b07d-11ef-bd13-346f24122a96', '(Industrial Collaboration) Konecranes Lifting Solutions, Finland: Working on a technology development on “autonomous motion planning of cranes using vision sensor” for Konecranes with the help of MTech sponsored projects for next two years. Masters’ students would receive scholarship, if selected under this project', 'Other', NULL),
('615fcf26-b07d-11ef-bd13-346f24122a96', '(Industrial Collaboration) Flipkart Internet Pvt. Ltd.: Developed novel technique for autonomous maneuvering of a quadcopter in a warehouse like environment. This technique was developed for a sub-problem towards warehouse automation', 'Other', NULL),
('64dfe096-b07c-11ef-bd13-346f24122a96', 'J. Veejay Karthik, Leena Vachhani, “Guaranteed safe navigation via state-constraints induced by feedback control”, Mechatronics, Volume 102, 2024', 'Journal', 'https://doi.org/10.1016/j.mechatronics.2024.103221'),
('64dfe276-b07c-11ef-bd13-346f24122a96', 'Adwaith Vijayakumar, Leena Vachhani, Abhishek Gupta, “Lightweight digital video stabilization for small-size robot”, Mechatronics, Volume 94, 2023', 'Journal', 'https://doi.org/10.1016/j.mechatronics.2023.103033'),
('64dfe2e9-b07c-11ef-bd13-346f24122a96', 'Anindya Harchowdhury, Lindsay Kleeman, and Leena Vachhani, “High density 3D sensing using a nodding 2D LIDAR and reconfigurable mirrors”, Mechatronics, Volume 92, 2023', 'Journal', 'https://doi.org/10.1016/j.mechatronics.2023.102968'),
('64dfe319-b07c-11ef-bd13-346f24122a96', 'Deepak Mallya, Arpita Sinha and Leena Vachhani, “Priority Patrol With a Single Agent: Bounds and Approximations,” IEEE Control Systems Letters, vol. 7, pp. 1321-1326, 2023', 'Journal', 'https://doi.org/10.1109/LCSYS.2022.3232773'),
('64dfe345-b07c-11ef-bd13-346f24122a96', 'Shubhangi Nema, and Leena Vachhani, “Unpaired deep adversarial learning for multi-class segmentation of instruments in robot-assisted surgical videos”, International Journal of Medical Robotics and Computer Assisted Surgery, March 2023', 'Journal', 'https://doi.org/10.1002/rcs.2514\n'),
('64dfe36f-b07c-11ef-bd13-346f24122a96', 'Prashant V. Patil, Leena Vachhani, S. Ravitharan, and Sunita Chauhan, “Sequential state and unknown parameter estimation strategy and its application to a sensor fusion problem”, IEEE Sensors, vol. 22, no. 21, pp. 20665-20675, 1 Nov. 2022', 'Journal', 'https://doi.org/10.1109/JSEN.2022.3199214'),
('64dfe393-b07c-11ef-bd13-346f24122a96', 'Prashant Patil, Leena Vachhani, Sivapragasam Ravitharan, and Sunita Chauhan, “Robust state and unknown input estimator and its application to robot localization”, IEEE/ASME Transaction on Mechatronics, vol. 27, no. 6, pp. 5147-5158, Dec. 2022', 'Journal', 'https://doi.org/10.1109/TMECH.2022.3166030'),
('64dfe3b3-b07c-11ef-bd13-346f24122a96', 'Shubhangi Nema, and Leena Vachhani, “Surgical instrument detection and tracking technologies: Automating dataset labeling for surgical skill assessment”, Frontiers in Robotics and AI, November 2022', 'Journal', 'https://doi.org/10.3389/frobt.2022.1030846'),
('64dfe3da-b07c-11ef-bd13-346f24122a96', 'Meghdeep Jena, Leena Vachhani and Arpita Sinha, “A Deep Reinforcement Learning Approach for Multi-Agent Mobile Robot Patrolling, International Journal of Intelligent Robotics and Applications, Springer, 6, 724-745 (2022)', 'Journal', 'https://doi.org/10.1007/s41315-022-00235-1'),
('64dfe402-b07c-11ef-bd13-346f24122a96', 'Leena Vachhani, Matsya: Design and Validation, Presentation at TechSem 2022 on Marine Engineering 2030- IN Readiness Towards Combat Effectiveness, Self-Reliance/Atma Nirbhar Bharat- Ideas for Standardization in New Generation Ships, INS Shivaji, Lonavala, 15th March, 2022', 'Journal', NULL),
('64dfe426-b07c-11ef-bd13-346f24122a96', 'M. Thomas, B. Bandyopadhyay and L. Vachhani, “Discrete-Time Sliding Mode Control Design for Unicycle Robot With Bounded Inputs,” IEEE Transactions on Circuits and Systems II: Express Briefs, vol. 68, no. 8, pp. 2912-2916, Aug. 2021', 'Journal', 'https://doi.org/10.1109/TCSII.2021.3059890'),
('64dfe46e-b07c-11ef-bd13-346f24122a96', 'Vachhani L., “Quality Assurance of Autonomous/Unmanned Underwater Vehicle”, Invited paper, Journal of the Annual Technology Update Workshop (ATUW), Dte. of Quality Assurance (Naval), Ministry of Defence (DGQA), Dec 2020', 'Journal', NULL),
('64dfe48d-b07c-11ef-bd13-346f24122a96', 'Arunkumar G.K. and Vachhani L., “3-D Acoustic Homing using 2-D Asymptotes”, Mechatronics, Elsevier, Volume 70, October 2020', 'Journal', 'https://doi.org/10.1016/j.mechatronics.2020.102407'),
('64dfe4ae-b07c-11ef-bd13-346f24122a96', 'Vyas P., Vachhani L. and Sridharan K., “Interval Analysis Technique for Versatile and Parallel Multi-Agent Collision Detection and Avoidance”, Journal of Intelligent & Robotic Systems, volume 98, pages 705-720, April 2020', 'Journal', 'https://link.springer.com/article/10.1007/s41315-022-00235-1'),
('64dfe4cc-b07c-11ef-bd13-346f24122a96', 'Nagavarapu S.C., Vachhani L., Sinha A. and Buruily S., “Generalizing Multi-agent Graph Exploration Techniques”, International Journal of Control, Automation and Systems, Springer, 2020', 'Journal', 'https://doi.org/10.1007/s12555-019-0067-8'),
('80b46e5d-b07c-11ef-bd13-346f24122a96', 'Borkar A. V., Sinha, A., Vachhani, L., and Arya, H., “Application of Lissajous curves in trajectory planning of multiple agents, Autonomous Robots, Issue 2/2020', 'Journal', 'https://doi.org/10.1007/s10514-019-09888-7'),
('80b47046-b07c-11ef-bd13-346f24122a96', 'Borkar A.V., Hangal S., Arya H., Sinha A., and Vachhani L.: “Reconfigurable formations of quadrotors on Lissajous curves for surveillance applications, European Journal of Control, Volume 56, 2020, Pages 274-288', 'Journal', 'https://arxiv.org/abs/1812.04904'),
('80b47082-b07c-11ef-bd13-346f24122a96', 'Vachhani L., “CORDIC as a switched nonlinear system, Circuits, Systems and Signal Processing, Springer, 39, pages 3234-3249, 2020', 'Journal', 'https://link.springer.com/article/10.1007/s00034-019-01295-8'),
('80b470e4-b07c-11ef-bd13-346f24122a96', 'Vyas, P., Vachhani, L., and Sridharan, K. “Hardware-efficient interval analysis based collision detection and avoidance for mobile robots, Mechatronics, 62, 2019', 'Journal', 'https://doi.org/10.1016/j.mechatronics.2019.102258'),
('80b4710d-b07c-11ef-bd13-346f24122a96', 'Dwaracherla, V., Thakar, S., Vachhani, L., Gupta, A., Yadav, A., and Modi, S., “Motion planning for point-to-point navigation of spherical robot using position feedback, IEEE/ASME Transactions on Mechatronics, 24(5), 2416-2426, 2019', 'Journal', 'https://ieeexplore.ieee.org/document/8794742'),
('80b47140-b07c-11ef-bd13-346f24122a96', 'Gupta S, Duttagupta SP, Vachhani L and Mitra M., “Attitude control of LTA platform for generation of a non-oscillatory solar power, Sol Energy, 189:131-50, 2019', 'Journal', 'https://doi.org/10.1016/j.solener.2019.07.017'),
('80b47161-b07c-11ef-bd13-346f24122a96', 'Shah D. and Vachhani L., “Swarm Aggregation without Communication and Global Positioning, IEEE Robotics and Automation Letters, VOL. 4, NO. 2, pp 886-893, April, 2019', 'Journal', 'https://doi.org/10.1109/LRA.2019.2893413'),
('80b4718d-b07c-11ef-bd13-346f24122a96', 'Thomas M., Bandyopadhyay B. and Vachhani L., “Finite-time posture stabilization of the unicycle mobile robot using only position information: A discrete-time sliding mode approach, International Journal of Robust and Nonlinear Systems, Wiley publications, 29(6), pp. 1990-2006, 2019', 'Journal', 'https://doi.org/10.1002/rnc.4480'),
('80b471ce-b07c-11ef-bd13-346f24122a96', 'Harchowdhury A., Kleeman L. and Vachhani L., “Coordinated Nodding of a 2D Lidar for Dense 3D Range Measurements, Joint publication in IEEE Robotics and Automation Letters, vol. 3, No. 4, pp 4108-4115, Oct, 2018', 'Journal', 'https://doi.org/10.1109/LRA.2018.2852781'),
('80b471f3-b07c-11ef-bd13-346f24122a96', 'Arunkumar G.K., Sabnis A. and Vachhani L., “Robust steering control for autonomous homing and its application in visual homing under practical conditions”, Journal of Intelligent and Robotic Systems, Springer, Vol. 89 (3-4), pp 403-419, March 2018', 'Journal', 'https://doi.org/10.1007/s10846-017-0561-2'),
('80b47246-b07c-11ef-bd13-346f24122a96', 'Thomas M., Kamal S., Bandyopadhyay B. and Vachhani L., “Continuous higher order sliding mode control for a class of uncertain MIMO nonlinear systems: An ISS approach”, European Journal of Control, Vol. 41, pp 1-7, May, 2018', 'Journal', 'https://doi.org/10.1016/j.ejcon.2018.01.005'),
('80b47274-b07c-11ef-bd13-346f24122a96', 'Vyas P., Vachhani L., Sridharan K. and Pudi V., “CORDIC-based Azimuth Calculation and Obstacle Tracing via Optimal Sensor Placement on a Mobile Robot”, IEEE/ASME Transactions on Mechatronics, Vol. 21, No. 5, pp 2317-2329, Oct 2016', 'Journal', 'https://doi.org/10.1109/TMECH.2015.2502622'),
('80b47298-b07c-11ef-bd13-346f24122a96', 'Sabnis A., Arunkumar G.K, Vikrant Reddy D. and Vachhani L., “Probabilistic Approach for Visual Homing of a Mobile Robot in the Presence of Dynamic Obstacles”, IEEE Transactions on Industrial Electronics, Vol. 63, No. 9, pp 5523-5533, 2016', 'Journal', 'https://doi.org/10.1109/TIE.2016.2569496'),
('80b472be-b07c-11ef-bd13-346f24122a96', 'Sarat Chandra N., Vachhani L. and Sinha A., “Multi-robot Graph Exploration and Map Building with Collision Avoidance: A Decentralized Approach”, Journal of Intelligent and Robotic Systems, Springer, vol. 83(3-4), pp 503-523, 2016', 'Journal', 'https://doi.org/10.1007/s10846-015-0309-9'),
('80b472e1-b07c-11ef-bd13-346f24122a96', 'Vachhani L., Mahindrakar A.D. and Sridharan K., “Mobile Robot Navigation Through a Hardware Efficient Implementation for Control Law Based Construction of Generalized Voronoi Diagram”, IEEE/ASME Transactions on Mechatronics, Vol. 16, No. 6, pp 1083-1095, Dec. 2011', 'Journal', 'https://doi.org/10.1109/TMECH.2010.2076825'),
('80b47302-b07c-11ef-bd13-346f24122a96', 'Vachhani L., Sridharan K. and Meher P.K., “Efficient FPGA Realization of CORDIC with Application to Robotic Exploration”, IEEE Transactions on Industrial Electronics, pp 4915-4929, Vol. 56, No.12, December 2009', 'Journal', 'https://doi.org/10.1109/TIE.2009.2026225'),
('80b47325-b07c-11ef-bd13-346f24122a96', 'Vachhani L., Sridharan K. and Meher P.K., “Efficient CORDIC Algorithms and Architectures for Low Area and High Throughput Implementation”, IEEE Transactions on Circuits and Systems-II: Express Briefs, pp 61-65, Vol.56, No.1, January 2009', 'Journal', 'https://doi.org/10.1109/TCSII.2008.2010169'),
('80b47347-b07c-11ef-bd13-346f24122a96', 'Vachhani L. and Sridharan K., “Hardware-Efficient Prediction-Correction Based Generalized-Voronoi-Diagram Construction and FPGA Implementation”, IEEE Transactions on Industrial Electronics, pp 1558-1569, Vol. 55, No. 4, April 2008', 'Journal', 'https://doi.org/10.1109/TIE.2008.917161'),
('aee453a3-b07c-11ef-bd13-346f24122a96', 'Pooja Banerjee, and others, “Performance Analysis of Soil Sensors: Accuracy, Variability, and Repeatability”, IEEE Applied Sensing Conference 2025', 'Conference', NULL),
('aee45563-b07c-11ef-bd13-346f24122a96', 'Sweksha Jain, and Leena Vachhani, “Guided Swarm Self-Clustering in Safe Area”, Accepted in IEEE/SICE International Symposium on System Integration (SII), 2025, Germany', 'Conference', NULL),
('aee4559a-b07c-11ef-bd13-346f24122a96', 'Arunkumar G K, Samadhan Devkar, Leena Vachhani, and Ambarish Kunwar, “An omnidirectional asymmetric mobile robot for narrow aisle spaces”, Accepted in Proceedings of Tenth Indian Control Conference ICC, 2024', 'Conference', NULL),
('aee455c7-b07c-11ef-bd13-346f24122a96', 'Somnath Buriuly, and Leena Vachhani, “Self-calibrating Offline Trajectory Estimation Technique for Sporadically Observable Systems”, Accepted in Proceedings of Tenth Indian Control Conference ICC, 2024', 'Conference', NULL),
('aee455e8-b07c-11ef-bd13-346f24122a96', 'Archit Gupta, Ajay Tak, Shashi Ranjan Kumar, and Leena Vachhani, “Inter-Agent Collision Avoidance Using Decentralized 3D Fixed-Wing Flocking Algorithm”, Accepted in Proceedings of Tenth Indian Control Conference ICC, 2024', 'Conference', NULL),
('aee45646-b07c-11ef-bd13-346f24122a96', 'Veejay Karthik J, Anoushka Verma, and Leena Vachhani, “Choreographing Safety: Planning via Ice-cone-Inspired Motion Sets of Feedback Controllers for Car-like Robots”, Accepted for publication at International Workshop on Robot Motion and Control, July 2024, Poland', 'Conference', NULL),
('aee4566a-b07c-11ef-bd13-346f24122a96', 'Tejas Vibhakar Shintre, Abhishek Gupta, and Leena Vachhani, “Tri-Sphero Bot: A modular compliant unit with spherical wheels”, Accepted for the presentation in the 6th International Conference on Reconfigurable Mechanisms and Robots (ReMAR), June 2024, Chicago', 'Conference', 'https://doi.org/10.1109/ReMAR61031.2024.10617698'),
('aee4568a-b07c-11ef-bd13-346f24122a96', 'Gauravi Pore, M. Patil and Leena Vachhani, “Sliding Mode Control of Non-Minimum Phase Autonomous Underwater Vehicles in the Dive Plane,” OCEANS 2023 - MTS/IEEE U.S. Gulf Coast, Biloxi, MS, USA, 2023, pp. 1-7', 'Conference', 'https://ieeexplore.ieee.org/document/10337242'),
('aee456a7-b07c-11ef-bd13-346f24122a96', 'Animesh Singhal, Abhishek Gupta and Leena Vachhani, “Pendulum Actuated Spherical Robot: Dynamic Modeling & Analysis for Wobble & Precession”, in proceedings of 22nd IFAC Symposium on Automatic Control in Aerospace (ACA 2022)', 'Conference', 'https://doi.org/10.48550/arXiv.2301.05859\n'),
('aee456cd-b07c-11ef-bd13-346f24122a96', 'Somnath Buriuly, Leena Vachhani, Arpita Sinha, Sivapragasam Ravitharan, and Sunita Chauhan, “Route planning for capacity restricted agents over railway network, without disrupting train schedules”, in Proceedings of the IFAC International Conference on Advances in Control and Optimization of Dynamical Systems (ACODS), 2022', 'Conference', 'https://doi.org/10.1016/j.ifacol.2022.04.007'),
('aee456ef-b07c-11ef-bd13-346f24122a96', 'J Veejay Karthik, Arunkumar G K, Maria Thomas, and Leena Vachhani, “Mobile Robot Navigation using State-Constrained Sliding Mode Control”, in Proceedings of Indian Control Conference (ICC), IIT Bombay, India, Dec, 2021', 'Conference', 'https://doi.org/10.1109/ICC54714.2021.9703148'),
('aee45714-b07c-11ef-bd13-346f24122a96', 'Shubhangi Nema and Leena Vachhani, ”Safe and Fast Path Planner for Minimally Invasive Surgery”, in Proceedings of the IEEE/RSJ International Conference on Intelligent Robots and Systems 2021 (IROS’2021) Sept, 2021, Czech Republic', 'Conference', 'https://doi.org/10.1109/IROS51168.2021.9636268'),
('aee45733-b07c-11ef-bd13-346f24122a96', 'Deepak Mallya, Sumanth Kandala, Leena Vachhani, and Arpita Sinha. “Priority Patrolling using Multiple Agents”, in Proceedings of the International Conference on Robotics and Automation (ICRA), 2021, Xi’an, China', 'Conference', 'https://doi.org/10.1109/ICRA48506.2021.9561785'),
('aee45751-b07c-11ef-bd13-346f24122a96', 'Pranav Thakkar, Prashant Patil, and Leena Vachhani, “Unobservable Spaces for Bearing-Only Localization”, in Proceedings of the American Control Conference, 2021, New Orleans, USA', 'Conference', 'https://doi.org/10.23919/ACC50511.2021.9483124'),
('aee45789-b07c-11ef-bd13-346f24122a96', 'Vivek Yogi and Leena Vachhani, “Commercial-Off-The-Shelf (COTS) Solution for Robot Sensing and Control, in Proceedings of Indian Control Conference (ICC), Jan 2020', 'Conference', 'https://doi.org/10.1109/ICC47138.2019.9123174'),
('cd90b54a-b07c-11ef-bd13-346f24122a96', 'Vaibhav Kadam, Leena Vachhani and Abhishek Gupta, “Control of an Omnidirectional Mobile Base with Multiple Spherical Robots”, in Proceedings of Indian Control Conference (ICC), Jan 2020', 'Conference', 'https://doi.org/10.1109/ICC47138.2019.9123198'),
('cd90b6e4-b07c-11ef-bd13-346f24122a96', 'Pranav Thakkar and Leena Vachhani, “Optimal Landmark Selection for Bearing-Only Navigation”, in Proceedings of Advances in Robotics (AIR19), 2019', 'Conference', 'https://doi.org/10.1145/3352593.3352650'),
('cd90b719-b07c-11ef-bd13-346f24122a96', 'Adwaith Vijaykumar, Leena Vachhani and Abhishek Gupta, “Real-time depth estimation using camera and IMU on the unstabilized platform of a spherical robot”, in Proceedings of Advances in Robotics (AIR19), 2019', 'Conference', 'https://doi.org/10.1145/3352593.3352599'),
('cd90b740-b07c-11ef-bd13-346f24122a96', 'Dhruv Shah and Leena Vachhani, “Swarm Aggregation without Communication and Global Positioning”, in Proceedings of International Conference on Robotics and Automation (ICRA) 2019, Montreal, Canada', 'Conference', 'https://doi.org/10.1109/LRA.2019.2893413'),
('cd90b766-b07c-11ef-bd13-346f24122a96', 'Arunkumar G.K. and Leena Vachhani, “Autonomous homing in 3D using partial state feedback on a novel sliding surface”, in Proceedings of European Control Conference 2019, June 2019, Naples, Italy', 'Conference', 'https://doi.org/10.23919/ECC.2019.8796003'),
('cd90b785-b07c-11ef-bd13-346f24122a96', 'Anindya Harchowdhury, Lindsay Kleeman, Leena Vachhani, “Simultaneous Obstacle Tracking and Shape Reconstruction of a Dynamic Obstacle using Sparse Depth Data”, 3rd Cyber-Physical Systems Symposium (CyPhySS 2019), Indian Institute of Science, Bangalore', 'Conference', NULL),
('cd90b7ac-b07c-11ef-bd13-346f24122a96', 'Sowmya Gupta, Mira Mitra, Leena Vachhani and Siddhartha Duttagupta, “Position Control of Solar Powered Aerostat for Reliable Power Generation in the Presence of Clouds”, in Proceedings of International Conference on Nascent Technologies in Engineering (ICNTE), January 2019', 'Conference', 'https://doi.org/10.1109/ICNTE44896.2019.8946090'),
('cd90b7fe-b07c-11ef-bd13-346f24122a96', 'Anindya Harchowdhury, Lindsay Kleeman and Leena Vachhani, “Coordinated Nodding of a 2D Lidar for Dense 3D Range Measurements”, in Proceedings of IEEE/RSJ International Conference on Intelligent Robots and Systems, Oct, 2018, Madrid, Spain', 'Conference', 'https://doi.org/10.1109/LRA.2018.2852781'),
('cd90d290-b07c-11ef-bd13-346f24122a96', 'Maria Thomas, Bijnan Bandyopadhyay and Leena Vachhani, “A Finite-time Sliding Mode Observer for a Class of Perturbed Nonholonomic Systems”, in Proceedings of 44th Annual Conference of IEEE Industrial Electronics Society (IECON), Oct, 2018, Washington DC, USA', 'Conference', 'https://doi.org/10.1109/IECON.2018.8591637'),
('cd90d2ed-b07c-11ef-bd13-346f24122a96', 'Abhisha Chauhan, Pranjal Vyas, Leena Vachhani and Arnab Maity, ”Optimal path planning for a non-holonomic robot using interval analysis”, In Proceedings of Indian Control Conference (ICC), Jan 2018', 'Conference', 'https://doi.org/10.1109/INDIANCC.2018.8307975'),
('cd90d31d-b07c-11ef-bd13-346f24122a96', 'Misha Gupta, Arunkumar G.K. and Leena Vachhani, “Bearing only visual homing: Observer based approach”, In Proceedings of the 25th Mediterranean Conference on Control and Automation (MED), July 2017, Malta', 'Conference', 'https://doi.org/10.1109/MED.2017.7984144'),
('cd90d344-b07c-11ef-bd13-346f24122a96', 'Sidhharth Nair, Arpita Sinha and Leena Vachhani, “Hilbert’s space-filling curve for regions with holes”, In Proceedings of the 56th IEEE Annual Conference on Decision and Control (CDC), Dec 2017, Melbourne, Australia', 'Conference', 'https://doi.org/10.1109/CDC.2017.8263684'),
('cd90d36d-b07c-11ef-bd13-346f24122a96', 'Nikunj Kothari, Misha Gupta, Leena Vachhani and Hemendra Arya, “Novel technique for position estimation for an autonomous vehicle using Monocular Vision”, In Proceedings of Indian Control Conference (ICC), 2017', 'Conference', 'https://doi.org/10.1109/INDIANCC.2017.7846512'),
('cd90d391-b07c-11ef-bd13-346f24122a96', 'Aseem Borkar, Arpita Sinha, Leena Vachhani and Hemendra Arya, “Collision-free trajectory planning on Lissajous curves for repeated multi-agent coverage and target detection”, in Proceedings of IEEE/RSJ International Conference on Intelligent Robots and Systems (IROS), Oct, 2016, Daejon, Korea', 'Conference', 'https://doi.org/10.1109/IROS.2016.7759231'),
('cd90d3cb-b07c-11ef-bd13-346f24122a96', 'Vikranth Reddy D., Shantanu Thakar, Arun Kumar G.K. and Leena Vachhani, “Discrete time position feedback based steering control for autonomous homing of a mobile robot”, In Proceedings of IEEE International Conference on Control & Automation, Kathmandu, Nepal, 2016', 'Conference', 'https://doi.org/10.1109/ICCA.2016.7505372'),
('ff74d560-b07c-11ef-bd13-346f24122a96', 'Maria Thomas, Bijnan Bandyopadhyay and Leena Vachhani, “Posture Stabilization of Unicycle Type Mobile Robot using Finite Time Control Techniques”, In proceedings of IFAC International Conference on Advances in Control and Optimization of Dynamical Systems (ACODS), NIT Trichy, India, 2016', 'Conference', 'https://doi.org/10.1016/j.ifacol.2016.03.083'),
('ff74dc73-b07c-11ef-bd13-346f24122a96', 'Mohit Chachada, Leena Vachhani and V. Kartik, “Empirical Waypoint Navigator for Overactuated Autonomous Underwater Vehicle using Novel Kinematic-Dynamic Controller Pair and Control Allocation Techniques”, In Proceedings of Indian Control Conference (ICC), Hyderabad, India, 2016', 'Conference', 'https://doi.org/10.1109/INDIANCC.2016.7441159'),
('ff74dcb0-b07c-11ef-bd13-346f24122a96', 'Prabhat K. Mishra, Leena Vachhani and Debasish Chatterjee, “Event-triggered Green Control for Discrete Time Dynamical Systems”, In Proceedings of European Control Conference, Linz, Switzerland, 2015', 'Conference', 'https://doi.org/10.1109/ECC.2015.7330742'),
('ff74dcd6-b07c-11ef-bd13-346f24122a96', 'Sarat Chandra N., Leena Vachhani and Arpita Sinha, “A Decentralized Approach for Autonomous Multi-Robot Exploration and Map Building”, in Proceedings of Indian Control Conference, Dec, 2014', 'Conference', 'https://www.researchgate.net/publication/303814984_A_Decentralized_Approach_for_Autonomous_Multi-Robot_Exploration_and_Map_Building_for_Tree_Structures'),
('ff74dcf7-b07c-11ef-bd13-346f24122a96', 'Anupa Sabnis and Leena Vachhani, “Lyapunov based Steering Control for Visual Homing of a Mobile Robot”, in Proceedings of 22nd Mediterranean Conference on Control and Automation (MED), Palermo, Italy, 2014', 'Conference', 'https://doi.org/10.1109/MED.2014.6961580'),
('ff74dd17-b07c-11ef-bd13-346f24122a96', 'Manas Chaudhary, Leena Vachhani and Rangan Banerjee, “Towards Optimal Computation of Energy Optimal Trajectory for Mobile Robots”, in Proceedings of Third IFAC International Conference on Advances in Control and Optimization of Dynamical Systems (ACODS), IIT Kanpur, India, Volume 3, Issue PART 1, pp 82-87, 2014', 'Conference', 'https://doi.org/10.3182/20140313-3-IN-3024.00109'),
('ff74dd64-b07c-11ef-bd13-346f24122a96', 'Arun Kumar G.K., Srikant Sukumar and Leena Vachhani, “Lyapunov Function Based Steering Law for Generalized Voronoi Diagram (GVD) Construction by a Mobile Robot”, in Proceedings of Third IFAC International Conference on Advances in Control and Optimization of Dynamical Systems (ACODS), IIT Kanpur, India, Volume 3, Issue PART 1, pp 103-108, 2014', 'Conference', 'https://doi.org/10.3182/20140313-3-IN-3024.00137'),
('ff74dd8d-b07c-11ef-bd13-346f24122a96', 'Chintan Raikar, Mihir Gupta, Mohit Chachada, Leena Vachhani and S. Krishna Savant, “Modeling and Experimental Verification of Dynamics of an Autonomous Underwater Vehicle (AUV)”, NIOT, IEEE International Underwater Technology Symposium 2013 Workshop, 2013 (ranked 2nd at Research Expo for Design and Development of Autonomous Underwater Vehicle, Matsya 2.0)', 'Conference', NULL),
('ff74ddae-b07c-11ef-bd13-346f24122a96', 'Pranjal Vyas, Neeraj Bankey and Leena Vachhani, “Efficient Techniques for Parallel Visual Compass Implementation for a Mobile Robot”, in Proceedings of International Conference on Robotics, Automation and Manufacturing (IRAM), IIT Indore, India, 2013', 'Conference', 'https://doi.org/'),
('ff74ddcb-b07c-11ef-bd13-346f24122a96', 'Leena Vachhani, “Education on Architecture Development for Embedded Controllers”, in Proceedings of Tenth IFAC Symposium on Advances in Control Education (ACE), Sheffield(s), UK, Volume 10, Issue PART 1, pp 61-65, 2013', 'Conference', 'https://doi.org/10.3182/20130828-3-UK-2039.00059'),
('ff74ddea-b07c-11ef-bd13-346f24122a96', 'Kinjal Patel and Leena Vachhani, “A Novel Visual Odometry Correction Using Sensor Fusion Technique on Multiple Cameras”, In Proceedings of IEEE Multi Conference on Systems and Control (MSC), Hyderabad, India, August, 2013', 'Conference', 'https://doi.org/10.1109/ISIC.2013.6658621'),
('ff74de04-b07c-11ef-bd13-346f24122a96', 'Anupa Sabnis and Leena Vachhani, “A Multiple Camera based Visual Compass for a Mobile Robot in Dynamic Environment”, In Proceedings of IEEE Multi Conference on Systems and Control (MSC), Hyderabad, India, August, 2013', 'Conference', 'https://doi.org/10.1109/CCA.2013.6662817'),
('ff74de20-b07c-11ef-bd13-346f24122a96', 'Pranjal Vyas, Swaroop Hangal and Leena Vachhani, “Methods for equitable distribution of bus access among nodes of Controller Area Network”, In Proceedings of 7th IEEE International Conference on Industrial and Information Systems (ICIIS), Chennai, India, 2012', 'Conference', 'https://doi.org/10.1109/ICIInfS.2012.6304831'),
('ff74de3a-b07c-11ef-bd13-346f24122a96', 'Shreyas, S.G. and Leena Vachhani, “Area efficient reconfigurable architecture for current control loop of a servo controller”, In Proceedings of 7th IEEE International Conference on Industrial and Information Systems (ICIIS), Chennai, India, 2012', 'Conference', 'https://doi.org/10.1109/ICIInfS.2012.6304826'),
('ff74de54-b07c-11ef-bd13-346f24122a96', 'Mukesh Agarwal and Leena Vachhani, “Development of simulation environment for controllers based on FPGA”, In Proceedings of 7th IEEE Conference on Industrial Electronics and Applications (ICIEA), 2012', 'Conference', 'https://doi.org/10.1109/ICIEA.2012.6360751'),
('ff74de6c-b07c-11ef-bd13-346f24122a96', 'Leena Vachhani and Anupa Sabnis, “Simple and Robust Correlation based Visual Compass using Omnidirectional View”, In Proceedings of IEEE TenCon’2011, Indonesia, pp 1180-1184, 2012', 'Conference', 'https://doi.org/10.1109/TENCON.2011.6129298'),
('ff74f1f5-b07c-11ef-bd13-346f24122a96', 'Anupa Sabnis and Leena Vachhani, “Single Image based Depth Estimation for Robotic applications”, In Proceedings of IEEE Recent Advances in Intelligent Computation Systems, Kerala, India, 2011', 'Conference', 'https://doi.org/10.1109/RAICS.2011.6069281'),
('ff74f238-b07c-11ef-bd13-346f24122a96', 'Leena Vachhani and K. Sridharan, “Robotic Mapping with Simple Sensing and Processing Hardware - Algorithm and Architecture”, In proceedings of 11th International Conference on Control, Automation, Robotics and Vision, ICARCV 2010, Singapore, pp 1012-1017, December 2010', 'Conference', 'https://doi.org/10.1109/ICARCV.2010.5707929'),
('ff74f263-b07c-11ef-bd13-346f24122a96', 'Narendra K. Babu, Leena Vachhani, V. Rajarao and K. Sridharan, “Performing High Level Tasks with a Sole Microcontroller-Based Mobile Robot”, In proceedings of the IEEE Symposium on Industrial Electronics and Applications, Kuala Lumpur, pp 620-625, October 2009', 'Conference', 'https://doi.org/10.1109/ISIEA.2009.5356394'),
('ff74f281-b07c-11ef-bd13-346f24122a96', 'K. Sridharan, R. K. Panakala, N. Sudha and Leena Vachhani, “A novel CAM based robotic indoor exploration algorithm and its area-efficient implementation”, In proceedings of 34th Annual Conference of the IEEE Industrial Electronics Society, November 2008', 'Conference', 'https://doi.org/10.1109/IECON.2008.4758336'),
('ff74f29d-b07c-11ef-bd13-346f24122a96', 'Leena Vachhani, Arun Mahindrakar and K. Sridharan, “A Hardware Architecture for Control-Law Based Voronoi Diagram Computation and FPGA Implementation”, In proceedings of IEEE Tencon 2008, November 2008', 'Conference', 'https://doi.org/10.1109/TENCON.2008.4766579'),
('ff74f2ba-b07c-11ef-bd13-346f24122a96', 'Leena Vachhani and K. Sridharan, “Hardware-Efficient Prediction-Correction Based Generalized-Voronoi-Diagram Construction and FPGA Implementation”, IEEE Transactions on Industrial Electronics, pp 1558-1569, Vol. 55, No. 4, April 2008', 'Conference', 'https://doi.org/10.1109/TIE.2008.917161'),
('ff74f2d7-b07c-11ef-bd13-346f24122a96', 'Leena Vachhani and K. Sridharan, “Hardware-Efficient Architecture for Generalized Voronoi Diagram Construction Using a Prediction-Correction Approach”, In Proceedings of the International Conference on Advanced Computing and Communications (ADCOM), pp 321-326, 2007', 'Conference', 'https://doi.org/10.1109/ADCOM.2007.42');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `stud_id` char(36) NOT NULL DEFAULT uuid(),
  `stud_name` text DEFAULT NULL,
  `stud_guide` text DEFAULT NULL,
  `stud_coguide` text DEFAULT NULL,
  `stud_proj` text DEFAULT NULL,
  `stud_degree` enum('B. Tech','M. Tech','PhD') DEFAULT NULL,
  `stud_passing_year` text DEFAULT NULL,
  `stud_link` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`stud_id`, `stud_name`, `stud_guide`, `stud_coguide`, `stud_proj`, `stud_degree`, `stud_passing_year`, `stud_link`) VALUES
('0fe6f548-b088-11ef-bd13-346f24122a96', 'Vivek Yogi', 'Leena Vachhani', 'Arpita Sinha (SysCon)', 'Mapping with limited resources', 'PhD', 'Ongoing', 'https://www.linkedin.com/in/vivekyogi/'),
('0fe6fe58-b088-11ef-bd13-346f24122a96', 'J. Veejay Karthik', 'Leena Vachhani', NULL, 'Integrated Planning and Control', 'PhD', 'Ongoing', 'https://www.linkedin.com/in/veejay-karthik/'),
('0fe6fec3-b088-11ef-bd13-346f24122a96', 'Sweksha Jain', 'Leena Vachhani', NULL, 'Learning Swarm Aggregation', 'PhD', 'Ongoing', 'https://in.linkedin.com/in/sweksha-jain-19b893192'),
('0fe6fef4-b088-11ef-bd13-346f24122a96', 'Gauravi Pore', 'Leena Vachhani', NULL, 'Minimum Phase identification and Control of Autonomous Underwater Vehicle', 'PhD', 'Ongoing', 'https://in.linkedin.com/in/gauravi-pore'),
('0fe6ff11-b088-11ef-bd13-346f24122a96', 'Kritarth Trivedi', 'Leena Vachhani', NULL, 'Navigation in crowds', 'PhD', 'Ongoing', 'https://in.linkedin.com/in/krutarth-trivedi-029211183'),
('0fe6ff30-b088-11ef-bd13-346f24122a96', 'Somnath Buriuly', 'Leena Vachhani', 'Sunita Chauhan (Monash Univ.), Arpita Sinha (SysCon)', 'Coordinated inspection scheduling of railway tracks using multiple robots', 'PhD', '2024', 'https://in.linkedin.com/in/somnath-buriuly'),
('0fe6ff51-b088-11ef-bd13-346f24122a96', 'Shubhangi Nema', 'Leena Vachhani', NULL, 'Robotic path planning for Minimally Invasive Surgery (MIS)', 'PhD', '2024', NULL),
('0fe6ff79-b088-11ef-bd13-346f24122a96', 'Adwaith Vijaykumar', 'Leena Vachhani', 'Abhishek Gupta (Mech)', 'Video stabilization and depth estimation using observer approach', 'PhD', '2024', NULL),
('0fe6ffbf-b088-11ef-bd13-346f24122a96', 'Arunkumar G.K.', 'Leena Vachhani', 'Hemendra Arya (Aerospace)', 'Sliding mode controller for 3-dim autonomous homing', 'PhD', '2023', 'https://in.linkedin.com/in/arunkumar-g-k-a8694280'),
('0fe6ffed-b088-11ef-bd13-346f24122a96', 'Prashant Vivek Patil', 'Leena Vachhani', 'Sunita Chauhan (Monash Univ.)', 'Integrated robotic system for inspection of railway infrastructure', 'PhD', '2023', 'https://in.linkedin.com/in/prashant-patil-318842119'),
('0fe7000c-b088-11ef-bd13-346f24122a96', 'Anindya Harchowdhury', 'Leena Vachhani', 'Lindsay Kleeman (Monash)', 'Sparse 3D Sensing and Motion Planning using Nodding LiDaR in Dynamic Environments', 'PhD', '2021', 'https://in.linkedin.com/in/anindya-harchowdhury'),
('0fe70025-b088-11ef-bd13-346f24122a96', 'Anupa Sabnis', 'Leena Vachhani', NULL, 'Visual homing in changing environment conditions using minimal resource', 'PhD', '2016', NULL),
('0fe70042-b088-11ef-bd13-346f24122a96', 'Pranjal Vyas', 'Leena Vachhani', NULL, 'Interval Analysis Methods for Hardware-Efficient Implementation of High Level Robotic Tasks', 'PhD', '2016', 'https://sg.linkedin.com/in/pranjal-vyas-82770a21'),
('0fe70069-b088-11ef-bd13-346f24122a96', 'Sarat Chandra Nagavarapu', 'Leena Vachhani', 'Arpita Sinha (SysCon)', 'Multi Robot Exploration and Map Building with Assured Collision Avoidance', 'PhD', '2016', 'https://sg.linkedin.com/in/saratcn'),
('3b6be980-b08c-11ef-bd13-346f24122a96', 'Vishwajeet Balasaheb Bhagyawan', 'Acted as Main role', NULL, 'Interconnecting vehicles using IoT Framework for Multi-Agent Patrolling of pipeline network', 'M. Tech', '2023', NULL),
('3b6bf2da-b08c-11ef-bd13-346f24122a96', 'Rahul Pari', 'Acted as Main role', NULL, 'Reconfigurable mechanism for rail inspection without disrupting train schedule', 'M. Tech', '2020', NULL),
('3b6bf348-b08c-11ef-bd13-346f24122a96', 'Pranav Thakkar', 'Acted as Main role', NULL, 'Bearing-Only Localization in Uncertain Environments', 'M. Tech', '2020', NULL),
('3b6bf397-b08c-11ef-bd13-346f24122a96', 'Deepak Mohapatra', 'Acted as Main role', NULL, 'Towards implementing multi robot aggregation and autonomous tracking of static and mobile objects by quadcopter', 'M. Tech', '2020', NULL),
('3b6bf3dd-b08c-11ef-bd13-346f24122a96', 'Sahil Santosh Modi', 'Acted as Main role', NULL, 'Pendulum Actuated Spherical Robot: Dynamic Modeling and Control', 'M. Tech', '2019', NULL),
('3b6bf428-b08c-11ef-bd13-346f24122a96', 'Harsh Tamrakar', 'Acted as Main role', NULL, 'Pose Estimation of a Robot using Artificial Intelligence Techniques', 'M. Tech', '2018', NULL),
('3b6bf458-b08c-11ef-bd13-346f24122a96', 'Abhisha Chauhan', 'Acted as Main role', NULL, 'Optimal Path Planning for a Non Holonomic Robot', 'M. Tech', '2017', NULL),
('3b6bf4b2-b08c-11ef-bd13-346f24122a96', 'Siddhesh V Wani', 'Acted as Main role', NULL, 'Development of open source Scilab to C converter and its application in 3-D crane control', 'M. Tech', '2017', NULL),
('3b6bf4da-b08c-11ef-bd13-346f24122a96', 'Aayush Yadav', 'Acted as Main role', NULL, 'Motion Planning for Spherical Bot', 'M. Tech', '2017', NULL),
('3b6bf4ff-b08c-11ef-bd13-346f24122a96', 'Kunal Tyagi', 'Acted as Main role', NULL, 'Handling Dynamic Objects in Sensor Agnostic 3D Map', 'M. Tech', '2017', NULL),
('3b6bf520-b08c-11ef-bd13-346f24122a96', 'Nikunj Kothari', 'Acted as Main role', NULL, 'Pose Estimation using Monocular Vision in Autonomous Vehicle', 'M. Tech', '2016', NULL),
('3b6bf541-b08c-11ef-bd13-346f24122a96', 'Rahul Shenoy', 'Acted as Main role', NULL, 'Vision based motion planning for 3-D crane', 'M. Tech', '2016', NULL),
('3b6bf560-b08c-11ef-bd13-346f24122a96', 'Shantanu Thakkar', 'Acted as Main role', NULL, 'Controller design and implementation for spherical robot', 'M. Tech', '2015', NULL),
('3b6bf57f-b08c-11ef-bd13-346f24122a96', 'Mohit Chachada', 'Acted as Main role', NULL, 'Multi variable controller design for trajectory tracking of an Autonomous Underwater Vehicle (AUV)', 'M. Tech', '2015', NULL),
('3b6bf59f-b08c-11ef-bd13-346f24122a96', 'Sandesh Pati', 'Acted as Co-guide role', NULL, 'Vision based configuration estimation of a Micro Aerial Vehicle (MAV)', 'M. Tech', '2015', NULL),
('3b6bf5bf-b08c-11ef-bd13-346f24122a96', 'Arun Kumar G.K.', 'Acted as Main role', NULL, 'Lyapunov function based algorithms for Generalized Voronoi Diagram (GVD) Node homing by an omni-directional mobile robot', 'M. Tech', '2014', NULL),
('3b6bf5ee-b08c-11ef-bd13-346f24122a96', 'Manas Chaudhari', 'Acted as Main role', NULL, 'Energy optimal path planning for mobile robots.', 'M. Tech', '2014', NULL),
('3b6bf60d-b08c-11ef-bd13-346f24122a96', 'Avnish Kumar', 'Acted as Co-guide role', NULL, 'Localization of mobile robot using optic flow sensor', 'M. Tech', '2014', NULL),
('3b6bf62e-b08c-11ef-bd13-346f24122a96', 'Sneh Vaswani', 'Acted as Main role', NULL, 'Improvement in acoustic localization accuracy of autonomous underwater vehicle', 'M. Tech', '2013', NULL),
('3b6bf650-b08c-11ef-bd13-346f24122a96', 'Chintan Raikar', 'Acted as Main role', NULL, 'Dynamic modelling and control of an autonomous underwater vehicle (AUV)', 'M. Tech', '2013', NULL),
('3b6bf685-b08c-11ef-bd13-346f24122a96', 'A.V. Vivek', 'Acted as Co-guide role', NULL, 'Embedded system design for anti-theft feature in automobiles', 'M. Tech', '2012', NULL),
('8a7a9e19-b08a-11ef-bd13-346f24122a96', 'Deepak Mallya', 'Arpita Sinha (SysCon)', 'Leena Vachhani', 'Path planning and patrolling of urban environment using multiple car-like vehicles', 'PhD', 'Ongoing', NULL),
('8a7aa9cc-b08a-11ef-bd13-346f24122a96', 'Yugandhara Bhosale', 'Abhishek Gupta (Mechanical)', 'Leena Vachhani', 'Optimal design of towfish for geo-tagging of underwater sonar images', 'PhD', 'Ongoing', 'https://in.linkedin.com/in/yugandhara-bhosale-972b2261'),
('8a7aaa31-b08a-11ef-bd13-346f24122a96', 'Sowmya Gupta', 'Siddhartha Duttagupta (Electrical)', 'Leena Vachhani', 'Prediction and Mitigation of Dynamic Non Uniform Illumination (NUI) Induced Instabilities in Solar Power for Lighter Than Air (LTA) System', 'PhD', '2020', NULL),
('8a7aaa6a-b08a-11ef-bd13-346f24122a96', 'Maria Thomas', 'B. Bandyopadhyay (SysCon)', 'Leena Vachhani', 'Stabilization of Nonholonomic Systems using Sliding Modes: Control and Observation', 'PhD', '2020', 'https://ae.linkedin.com/in/maria-thomas-ph-d-a8303253'),
('8a7aaa95-b08a-11ef-bd13-346f24122a96', 'Aseem Borkar', 'Arpita Sinha (SysCon), Hemendra Arya (Aerospace)', 'Leena Vachhani', 'Surveillance and Monitoring Strategies for Autonomous Mobile Agents', 'PhD', '2019', 'https://in.linkedin.com/in/aseem-borkar-4a6565179'),
('94fd516b-b08b-11ef-bd13-346f24122a96', 'Rohan Appaso More', 'Leena Vachhani', NULL, 'Interconnected Vehicles using RL for multi agent patrolling', 'M. Tech', '2023', NULL),
('94fd5d64-b08b-11ef-bd13-346f24122a96', 'Shashwat Shukla', 'Leena Vachhani', NULL, 'State Constrained Controller Design for Mobile Robots', 'M. Tech', '2023', NULL),
('94fd5dc4-b08b-11ef-bd13-346f24122a96', 'Sushant Suryawanshi', 'Leena Vachhani', NULL, 'Autonomous Driving at an Unsignalised Intersection: A Decision-making Scheme', 'M. Tech', '2022', NULL),
('94fd5dfc-b08b-11ef-bd13-346f24122a96', 'Aakansha Dhindi', 'Leena Vachhani', NULL, 'Visual Question Answering using Deep Learning', 'M. Tech', '2022', NULL),
('94fd5e28-b08b-11ef-bd13-346f24122a96', 'Harsha Priyank Guntaka', 'Leena Vachhani', NULL, 'Active Acoustic based Recognition using Smartphones: Towards Mobile Robot Localization', 'M. Tech', '2022', NULL),
('94fd5e54-b08b-11ef-bd13-346f24122a96', 'Ravindra Kumar Panda', 'Leena Vachhani', NULL, 'Towards acoustic SLAM: Obtaining odometry using acoustic data and machine learning', 'M. Tech', '2021', NULL),
('94fd5e76-b08b-11ef-bd13-346f24122a96', 'Girish Prakash Maske', 'Leena Vachhani', NULL, 'ML methods for identifying unique location', 'M. Tech', '2021', NULL),
('94fd5ed5-b08b-11ef-bd13-346f24122a96', 'Neelam Patwardhan', 'Leena Vachhani', NULL, 'Work-state estimation of off-road vehicles', 'M. Tech', '2021', NULL),
('94fd5f1f-b08b-11ef-bd13-346f24122a96', 'Pooja N. Satelkar', 'Leena Vachhani', NULL, 'Sensor fault detection in engine cooling system using Extended Kalman Filter', 'M. Tech', '2021', NULL),
('94fd5f4b-b08b-11ef-bd13-346f24122a96', 'Ponala Venkata Eswara Srisai', 'Leena Vachhani', NULL, 'Android App for an Audioveillance method', 'M. Tech', '2020', NULL),
('94fd5f79-b08b-11ef-bd13-346f24122a96', 'Shishir Kumud', 'Leena Vachhani', NULL, 'Machine learning method for Audioveillance', 'M. Tech', '2020', NULL),
('94fd5f98-b08b-11ef-bd13-346f24122a96', 'Omkar Sangar', 'Leena Vachhani', NULL, 'Embedded Image Processing for Position and Swing Control of 3-D Overhead Crane', 'M. Tech', '2019', NULL),
('94fd5fba-b08b-11ef-bd13-346f24122a96', 'Kadam Kshitij Ankush Mrunmayee', 'Leena Vachhani', NULL, 'Octomap in the presence of dynamic obstacles', 'M. Tech', '2019', NULL),
('94fd5fe7-b08b-11ef-bd13-346f24122a96', 'P hari krishna', 'Leena Vachhani', NULL, 'Visual homing in Indoor environments by Omnidirectional vision', 'M. Tech', '2018', NULL),
('94fd6005-b08b-11ef-bd13-346f24122a96', 'Misha Gupta', 'Leena Vachhani', NULL, 'Bearing only visual homing: Observer based approach', 'M. Tech', '2017', NULL),
('94fd6021-b08b-11ef-bd13-346f24122a96', 'Nipun Agarwal', 'Leena Vachhani', NULL, 'Vision based Control of 3D Overhead Crane', 'M. Tech', '2017', NULL),
('94fd6042-b08b-11ef-bd13-346f24122a96', 'Mandar Narvekar', 'Leena Vachhani', NULL, 'Embedded Controller design for 3-D crane', 'M. Tech', '2015', NULL),
('94fd6061-b08b-11ef-bd13-346f24122a96', 'Atman Kulkarni', 'Leena Vachhani', NULL, 'Study of event triggering functions, quantization and disturbance characteristics for event based PID controllers', 'M. Tech', '2014', NULL),
('94fd6092-b08b-11ef-bd13-346f24122a96', 'Kinjal Patel', 'Leena Vachhani', NULL, 'Self localization using image data', 'M. Tech', '2013', NULL),
('94fd60b4-b08b-11ef-bd13-346f24122a96', 'Gagandeep Gawadia', 'Leena Vachhani', NULL, 'Implementation of embedded controllers on real-time linux', 'M. Tech', '2013', NULL),
('94fd60d4-b08b-11ef-bd13-346f24122a96', 'Neeraj Bankey', 'Leena Vachhani', NULL, 'Visual homing and compass techniques for a mobile robot using multiple cameras and embedded linux', 'M. Tech', '2013', NULL),
('94fd60f3-b08b-11ef-bd13-346f24122a96', 'Balaji Guggulothu', 'Leena Vachhani', NULL, 'Localization of autonomous robot using correlation of panoramic images', 'M. Tech', '2012', NULL),
('94fd6110-b08b-11ef-bd13-346f24122a96', 'Shreyas S.G.', 'Leena Vachhani', NULL, 'An area efficient implementation of speed and current loops of servo-controller on FPGA', 'M. Tech', '2012', NULL),
('94fd612e-b08b-11ef-bd13-346f24122a96', 'Mukesh Agarwal', 'Leena Vachhani', NULL, 'Development of simulation environment for analyzing the performance of FPGA based controllers', 'M. Tech', '2012', NULL),
('94fd614a-b08b-11ef-bd13-346f24122a96', 'Gaurav Chawla', 'Leena Vachhani', NULL, 'FPGA based data recorder', 'M. Tech', '2012', NULL),
('94fd616a-b08b-11ef-bd13-346f24122a96', 'Debasubhra Chakraborty', 'Leena Vachhani', NULL, 'Development of omni-direction vision for mobile robot', 'M. Tech', '2011', NULL),
('94fd6187-b08b-11ef-bd13-346f24122a96', 'Deepak Yadav', 'Leena Vachhani', NULL, 'Camera stabilization technique for autonomous mobile vehicle', 'M. Tech', '2011', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`awards_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`cour_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`proj_id`);

--
-- Indexes for table `publications`
--
ALTER TABLE `publications`
  ADD PRIMARY KEY (`pub_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`stud_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
