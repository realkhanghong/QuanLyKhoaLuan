-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th6 29, 2023 lúc 10:01 AM
-- Phiên bản máy phục vụ: 8.0.33-cll-lve
-- Phiên bản PHP: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `vxwxjdjf_quanlykhoaluan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attendance`
--

CREATE TABLE `attendance` (
  `stt` int NOT NULL,
  `date_attendance` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `student_fullname` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `mssv` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `attendance`
--

INSERT INTO `attendance` (`stt`, `date_attendance`, `student_fullname`, `mssv`, `gender`, `address`, `phone`, `email`) VALUES
(8, '24-05-2023', 'Phạm Hồng Khang', '19446151', 'Nam', 'IUH, Phường 4, Gò Vấp, Thành phố Hồ Chí Minh', '0123456789', 'khang@gmail.com'),
(10, '25-05-2023', 'Ngô Thị Thúy Hằng', '19443311', 'Nữ', 'IUH, Phường 4, Gò Vấp, Thành phố Hồ Chí Minh', '0123456789', 'hang@gmail.com'),
(11, '25-05-2023', 'Phạm Hồng Khang', '19446151', 'Nam', 'IUH, Phường 4, Gò Vấp, Thành phố Hồ Chí Minh', '0123456789', 'khang@gmail.com'),
(12, '26-05-2023', 'Phạm Hồng Khang', '19446151', 'Nam', 'IUH, Phường 4, Gò Vấp, Thành phố Hồ Chí Minh', '0123456789', 'khang@gmail.com'),
(13, '31-05-2023', 'Phạm Hồng Khang', '19446151', 'Nam', 'IUH, Phường 4, Gò Vấp, Thành phố Hồ Chí Minh', '0123456789', 'khang@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attendancecondition`
--

CREATE TABLE `attendancecondition` (
  `ID` int NOT NULL,
  `pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `attendance_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `start` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `expire` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `attendancecondition`
--

INSERT INTO `attendancecondition` (`ID`, `pass`, `attendance_time`, `start`, `expire`) VALUES
(1, '1654', '5', '1685551794', '1685552094');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `ID` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tableid` int DEFAULT NULL,
  `parentid` int NOT NULL,
  `orders` int NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int DEFAULT NULL,
  `status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post`
--

CREATE TABLE `post` (
  `ID` int NOT NULL,
  `topid` int DEFAULT NULL,
  `title` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `detail` longtext COLLATE utf8mb4_general_ci,
  `img` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int NOT NULL,
  `status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `registertopic`
--

CREATE TABLE `registertopic` (
  `ID` int NOT NULL,
  `Name` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `StudentID` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ClassRoom` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `StudentName` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `GroupName` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Process` int DEFAULT NULL,
  `TopicType` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `TopicName` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `TeacherID` int DEFAULT NULL,
  `TeacherName` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Subject` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Type` int DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `GuidePoints` float DEFAULT NULL,
  `PointProcess` float DEFAULT NULL,
  `Commnet` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Commentcounter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ThesisTopicID` int DEFAULT NULL,
  `SupervisingTeacherID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `registertopic`
--

INSERT INTO `registertopic` (`ID`, `Name`, `StudentID`, `ClassRoom`, `username`, `StudentName`, `GroupName`, `Process`, `TopicType`, `TopicName`, `TeacherID`, `TeacherName`, `Subject`, `Type`, `Status`, `GuidePoints`, `PointProcess`, `Commnet`, `Commentcounter`, `ThesisTopicID`, `SupervisingTeacherID`) VALUES
(1, 'Xây dựng Phần mềm hay Website Quản Lý khoá luận tốt nghiệp và thực tập doanh nghiệp.', '3', 'DHHTTT15', '19446151', 'Phạm Hồng Khang', '1', 0, 'Khóa luận tốt nghiệp.', 'Xây dựng Phần mềm hay Website Quản Lý khoá luận tốt nghiệp và thực tập doanh nghiệp.', 11, 'Trần Thị Kim Chi', 'IS', 1, 1, 10, 10, 'Đánh giá tốt', 'Đánh giá tốt', 29, 11),
(4, 'Tìm hiểu QR Code để truy xuất nguồn gốc và áp dụng xây dựng hệ thống phân phối nông sản sạch', '7', 'DHHTTT15', 'SinhVien1', 'Sinh Viên 1', '4', 0, 'Khóa luận tốt nghiệp.', 'Tìm hiểu QR Code để truy xuất nguồn gốc và áp dụng xây dựng hệ thống phân phối nông sản sạch', 11, 'Trần Thị Kim Chi', 'IS', 1, 1, 10, 10, '', '', 32, 10),
(5, 'Tìm hiểu QR Code để truy xuất nguồn gốc và áp dụng xây dựng hệ thống phân phối nông sản sạch', '8', 'DHHTTT15', 'SinhVien2', 'Sinh Viên 2', '4', 0, 'Khóa luận tốt nghiệp.', 'Tìm hiểu QR Code để truy xuất nguồn gốc và áp dụng xây dựng hệ thống phân phối nông sản sạch', 11, 'Trần Thị Kim Chi', 'IS', 1, 1, 10, 10, '', '', 32, 10),
(6, 'Xây dựng Phần mềm hay Website Quản Lý khoá luận tốt nghiệp và thực tập doanh nghiệp.', '4', 'DHHTTT15', '19443311', 'Ngô Thị Thúy Hằng', '1', 0, 'Khóa luận tốt nghiệp.', 'Xây dựng Phần mềm hay Website Quản Lý khoá luận tốt nghiệp và thực tập doanh nghiệp.', 11, 'Trần Thị Kim Chi', 'IS', 1, 1, 10, 10, '', '', 29, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `ID` int NOT NULL,
  `parentId` int NOT NULL,
  `accessName` varchar(255) NOT NULL,
  `description` varchar(225) DEFAULT NULL,
  `GropID` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`ID`, `parentId`, `accessName`, `description`, `GropID`) VALUES
(1, 0, 'ADMIN', 'Quản trị viên Full quyền', 'ADMIN'),
(9, 6, 'SINH VIÊN', 'Sinh Viên', 'STUDENT'),
(11, 7, 'GIẢNG VIÊN', 'Giảng viên', 'TEACHER'),
(12, 8, 'TRƯỞNG BỘ MÔN', 'Trưởng bộ môn', 'HEADOFSECTION');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `studentgroup`
--

CREATE TABLE `studentgroup` (
  `ID` int NOT NULL,
  `ID1` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `FullName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci DEFAULT NULL,
  `ClassRoom` varchar(252) CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci NOT NULL,
  `ThesisTopicID` int NOT NULL,
  `TeacherID` int NOT NULL,
  `TeacherName` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `SubGroupID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `studentgroup`
--

INSERT INTO `studentgroup` (`ID`, `ID1`, `username`, `FullName`, `ClassRoom`, `ThesisTopicID`, `TeacherID`, `TeacherName`, `SubGroupID`) VALUES
(1, '3', '19446151', 'Phạm Hồng Khang', 'DHHTTT15', 29, 11, 'Trần Thị Kim Chi', 1),
(4, '7', 'SinhVien1', 'Sinh Viên 1', 'DHHTTT15', 32, 11, 'Trần Thị Kim Chi', 4),
(5, '8', 'SinhVien2', 'Sinh Viên 2', 'DHHTTT15', 32, 11, 'Trần Thị Kim Chi', 4),
(6, '4', '19443311', 'Ngô Thị Thúy Hằng', 'DHHTTT15', 29, 11, 'Trần Thị Kim Chi', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `teacher`
--

CREATE TABLE `teacher` (
  `ID` int NOT NULL,
  `Name` varchar(110) DEFAULT NULL,
  `Department` varchar(110) DEFAULT NULL,
  `UserID` int DEFAULT NULL,
  `Subject` varchar(200) DEFAULT NULL,
  `MSGV` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `teacher`
--

INSERT INTO `teacher` (`ID`, `Name`, `Department`, `UserID`, `Subject`, `MSGV`) VALUES
(1, 'Lê Thị Kim An', 'CÔNG NGHỆ THÔNG TIN', 1, 'Cơ sở dữ liệu, Lập trình C++', 'LTKN012312');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thesistopic`
--

CREATE TABLE `thesistopic` (
  `ID` int NOT NULL,
  `Name` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Instructors` varchar(200) DEFAULT NULL,
  `InstructorsID` int DEFAULT NULL,
  `Subject` varchar(220) DEFAULT NULL,
  `SubjectID` int DEFAULT NULL,
  `ThesisTopicType` varchar(220) DEFAULT NULL,
  `Description` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci DEFAULT NULL,
  `Requirement` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `SkillKnowledge` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ThesisTopicTypeID` int DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `SupervisingTeacher` varchar(220) DEFAULT NULL,
  `SupervisingTeacherID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `thesistopic`
--

INSERT INTO `thesistopic` (`ID`, `Name`, `Instructors`, `InstructorsID`, `Subject`, `SubjectID`, `ThesisTopicType`, `Description`, `Requirement`, `SkillKnowledge`, `ThesisTopicTypeID`, `Status`, `SupervisingTeacher`, `SupervisingTeacherID`) VALUES
(29, 'Xây dựng Phần mềm hay Website Quản Lý khoá luận tốt nghiệp và thực tập doanh nghiệp.', 'Trần Thị Kim Chi', 11, 'IS', 0, 'Đại học (KLTN)', 'Tìm hiểu các công nghệ mới hiện nay đang được sử dung trong việc xây dựng Website Xây dựng Phần mềm hay Website quản lý khoá luận tốt nghiệp và thực tập doanh nghiệp Áp dung công nghệ mới đã tìm hiểu vào Phần mềm hay Website đã xây dựng', 'Hoàn thành phần mềm hay Website theo yêu cầu đã mô tả', '- Khả năng giao tiếp, phỏng vần, thu thập dữ liệu.</br>\r\n- Kỹ năng phân tích hệ thống.</br>\r\n- Có kiến thức về lập trình web/di động.</br>\r\n- Kỹ năng phân tích dữ liệu và tổng hợp dữ liệu.\r\n- Kỹ năng viết báo cáo, thuyết trình, đọc và hiểu các tài liệu liên quan đề đề tài, kỹ năng làm việc nhóm.', 1, 1, NULL, NULL),
(32, 'Tìm hiểu QR Code để truy xuất nguồn gốc và áp dụng xây dựng hệ thống phân phối nông sản sạch', 'Trần Thị Kim Chi', 11, 'IS', 0, 'Đại học (KLTN)', 'Sinh viên tìm hiểu các chính sách, quy định, quy trình phân phói nông sản sạch thừ nông dân đến doanh nghiệp, sau đó từ doanh nghiệp/nông dân đến người tiêu dùng. Tìm hiểu các tiêu chí nào đánh giá được thế nào là một nông sản sạch. Xây dựng hệ thống phân phối nông sản sạch giúp doang nghiệp, nông dân và người tiêu dung có thể lien kết, trao đổi, mua bán nông sản sạch. Sinh viên tìm hiểu được QR Code, cách tạo và áp dụng mã QR để truy xuất nguồn gốc nông sản sạch vào hệ thống phân phối nông sản sạch mà sinh viên đã xây dựng Ngoài ra sinh viên có thể áp dung một số kỹ thuật bảo mật để tạo độ tin cậy cho người khi sử dung hệ thống mà sinh viên đã tạo', 'Xây dựng được hệ thống phân phối nông sản sạch có áp dung mã QR để truy xuất nguồn gốc', '- Sinh viên có khả năng nghiên cứu, đọc và hiểu được các tài liệu liên quan đến đề tài - Kỹ năng phân tích và thiết kế hệ thống, - Có kiến thức về lập trình. - Kỷ năng phân tích dữ liệu qua khảo sát để cập nhập ứng dụng đáp ứng yêu cầu người học - Hiểu và áp dụng được QR code vào ứng dụng đã xây dựng. - Kỹ năng viết báo cáo, làm việc nhóm, thuyết trình.', 1, 0, NULL, NULL),
(33, 'Nghiên cứu bảo mật áp dụng xây dựng website bán điện thoại di động', 'Võ Ngọc Tấn Phước', 10, 'Hệ thống thông tin', 0, 'Đại học (KLTN)', 'Tìm hiểu về bảo mật trong việc xây dựng website . \r\nGiải thích và áp dụng bảo mật vào website ', 'Hoàn thiện website với đầy đủ các chức năng và áp dụng bảo mật vào hệ thống', 'Khả năng giao tiếp tốt, phỏng vấn, thu thập dữ liệu\r\nKhả năng viết báo cáo tốt \r\nCó kiến thức tốt về các ngôn ngữ lập trình', 1, 1, NULL, NULL),
(35, 'Tìm hiểu QRCode, VNPay và xây dựng Website phòng khám đa khoa', 'Nguyễn Văn Nam', 6, 'Hệ thống thông tin', 0, 'Đại học (KLTN)', 'Tìm hiểu  đang được sử dung trong việc xây dựng  Website quản lý \r\n Áp dung công nghệ mới đã tìm hiểu vào Phần mềm hay Website đã xây dựng.', 'Hoàn thành phần mềm hay Website theo yêu cầu đã mô tả\r\nÁp dụng được các công nghệ mới', ' Kỹ năng phân tích hệ thống.\r\n- Có kiến thức về lập trình web/di động.\r\n- Kỹ năng phân tích dữ liệu và tổng hợp dữ liệu. - Kỹ năng viết báo cáo, thuyết trình, đọc và hiểu các tài liệu liên quan đề đề tài, kỹ năng làm việc nhóm.	', 1, 1, NULL, NULL),
(36, 'Xây dựng website quản lý chất lượng giáo dục theo chuẩn Abet', 'Nguyễn Văn Nam', 6, 'Hệ thống thông tin', 0, 'Đại học (KLTN)', 'Sinh viên có khả năng nghiên cứu, đọc, áp dụng xậy website quản lý chất lượng giáo dục theo chuẩn Abet\r\n ', 'Phân tích yêu cầu (hiện trạng, nghiệp vụ) và mô hình hóa được yêu cầu của đề tài.\r\nThiết kế một hệ thống thông tin/đưa ra giải pháp đáp ứng được yêu cầu của đề tài\r\nHiện thực hóa hệ thống thông tin theo thiết kế đã đưa ra/Hiện thực giải pháp đã đưa ra', 'Kỹ năng phân tích và thiết kế hệ thống\r\nCó kiến thức về lập trình\r\nKỷ năng phân tích dữ liệu qua khảo sát để cập nhập ứng dụng đáp ứng yêu cầu người học\r\nHiểu và áp dụng được QR code vào ứng dụng đã xây dựng\r\nKỹ năng viết báo cáo, làm việc nhóm, thuyết trình.', 1, 1, NULL, NULL),
(37, 'Tìm hiểu QR Code để truy xuất nguồn gốc và áp dụng xây dựng hệ thống phân phối nông sản sạch', 'Võ Ngọc Tấn Phước', 10, 'IS', 0, 'Đại học (KLTN)', 'Tìm hiểu QR Code để truy xuất nguồn gốc và áp dụng xây dựng hệ thống phân phối nông sản sạch', 'Tìm hiểu QR Code để truy xuất nguồn gốc và áp dụng xây dựng hệ thống phân phối nông sản sạch', 'Tìm hiểu QR Code để truy xuất nguồn gốc và áp dụng xây dựng hệ thống phân phối nông sản sạch', 1, 1, NULL, NULL),
(38, 'Tìm hiểu công nghệ mới và xây dựng website bán giày', 'Nguyễn Ngọc Dung', 13, 'IS', 0, 'Đại học (KLTN)', 'Tìm hiểu công nghệ mới và xây dựng website bán giày', 'Áp dụng các ngôn ngữ lập trình đã học: PHP, JS, HTML', 'PHP,JS,HTML', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `ID` int NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(225) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `gender` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_general_ci,
  `phone` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `img` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `access` int NOT NULL,
  `status` int NOT NULL,
  `StudentID` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Department` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Subject` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `MSGVMSGV` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`ID`, `fullname`, `username`, `password`, `email`, `gender`, `address`, `phone`, `img`, `access`, `status`, `StudentID`, `Department`, `Subject`, `MSGVMSGV`) VALUES
(1, 'ADMIN', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'admin@gmail.com1', 'Nam', 'IUH, Phường 4, Gò Vấp, Thành phố Hồ Chí Minh', '0123456789', '', 0, 1, '', '', '', ''),
(2, 'Lê Thị Kim An', 'GiaoVien1', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'giaovien1@gmail.com', 'Nữ', 'IUH, Phường 4, Gò Vấp, Thành phố Hồ Chí Minh', '0123456789', '', 7, 1, '', '', '', ''),
(3, 'Phạm Hồng Khang', '19446151', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'khang@gmail.com', 'Nam', 'IUH, Phường 4, Gò Vấp, Thành phố Hồ Chí Minh', '0123456789', '', 6, 1, '', '', '', ''),
(4, 'Ngô Thị Thúy Hằng', '19443311', '908f704ccaadfd86a74407d234c7bde30f2744fe', 'hang@gmail.com', 'Nữ', 'IUH, Phường 4, Gò Vấp, Thành phố Hồ Chí Minh', '0123456789', '', 6, 1, '', '', '', ''),
(5, 'Nguyễn Văn An', 'GiaoVien2', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'an@gmail.com', 'Nam', 'IUH, Phường 4, Gò Vấp, Thành phố Hồ Chí Minh', '0123456789', '', 7, 1, '', '', '', ''),
(6, 'Nguyễn Văn Nam', 'TruongBoMon', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'nam@gmail.com', 'Nam', 'IUH, Phường 4, Gò Vấp, Thành phố Hồ Chí Minh', '0123456789', '', 8, 1, '', '', '', ''),
(7, 'Sinh Viên 1', 'SinhVien1', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'sinhvien1@gmail.com', 'Nữ', 'IUH, Phường 4, Gò Vấp, Thành phố Hồ Chí Minh', '0123456789', '', 6, 1, '', '', '', ''),
(8, 'Sinh Viên 2', 'SinhVien2', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'sinhvien2@gmail.com', 'Nam', 'IUH, Phường 4, Gò Vấp, Thành phố Hồ Chí Minh', '0123456789', '', 6, 1, '', '', '', ''),
(9, 'Sinh Viên 3', 'SinhVien3', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'sinhvien3@gmail.com', 'Nam', 'IUH, Phường 4, Gò Vấp, Thành phố Hồ Chí Minh', '0123456789', '', 6, 0, '', '', '', ''),
(10, 'Võ Ngọc Tấn Phước', 'vongoctanphuoc', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'abc@gmail.com', 'Nam', 'IUH, phường 4, quận Gò Vấp, thành phố Hồ Chí Minh', '0123456789', '', 7, 1, '', '', '', ''),
(11, 'Trần Thị Kim Chi', 'tranthikimchi', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'abc123@gmail.com', 'Nữ', 'IUH, phường 4, quận Gò Vấp, thành phố Hồ Chí Minh', '0123456789', '', 7, 1, '', '', '', ''),
(13, 'Nguyễn Ngọc Dung', 'nguyenngocdung', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'abc123@gmail.com', 'Nữ', 'IUH, phường 4, quận Gò Vấp, thành phố Hồ Chí Minh', '0123456789', '', 7, 1, '', '', '', ''),
(14, 'Phạm Thị Thu Hien', '19441115', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'thuhien@gmail.com', 'Nữ', '3 Lê Lợi', '0667799412', '', 6, 1, '', '', '', ''),
(16, 'Dương Cẩm Tú', '19442211', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'tu@gmail.com', 'Nữ', '3 Lê Lợi', '0987545321', '', 6, 1, '', '', '', ''),
(18, 'Phạm Thị Thu Hien', '19445522', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'hien@gmail.com', 'Nữ', '3 Lê Lợi', '0987654321', '', 6, 1, '', '', '', ''),
(20, 'Võ Ngọc Tấn Phước', 'vongoctanphuoc', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'abc123@gmail.com', 'Nữ', 'IUH, phường 4, quận Gò Vấp, thành phố Hồ Chí Minh', '0123456789', NULL, 0, 1, NULL, NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`stt`);

--
-- Chỉ mục cho bảng `attendancecondition`
--
ALTER TABLE `attendancecondition`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`ID`);
ALTER TABLE `post` ADD FULLTEXT KEY `title` (`title`,`detail`);

--
-- Chỉ mục cho bảng `registertopic`
--
ALTER TABLE `registertopic`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `studentgroup`
--
ALTER TABLE `studentgroup`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `thesistopic`
--
ALTER TABLE `thesistopic`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `attendance`
--
ALTER TABLE `attendance`
  MODIFY `stt` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `attendancecondition`
--
ALTER TABLE `attendancecondition`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `post`
--
ALTER TABLE `post`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `registertopic`
--
ALTER TABLE `registertopic`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `studentgroup`
--
ALTER TABLE `studentgroup`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `teacher`
--
ALTER TABLE `teacher`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `thesistopic`
--
ALTER TABLE `thesistopic`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
