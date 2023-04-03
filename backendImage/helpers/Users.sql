CREATE TABLE `Users` (
  `autoId` int NOT NULL,
  `User` varchar(64) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL,
  `Password` varchar(256) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL,
  `Email` varchar(128) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf16;

INSERT INTO
  `Users` (`autoId`, `User`, `Password`, `Email`)
VALUES
  (5, 'admin', 'GSbEGm6YKLOjoIlf', '12qw!@QW.com'),
  (
    7,
    'At71!345',
    'aWCCXG7rTdE=',
    'atleib2001@gmail.com'
  ),
  (
    8,
    'MarkN',
    'ZXvdCC3pS9e54g==',
    'marknagieb@gmail.com'
  ),
  (
    9,
    '12qw!@QW',
    'GSbEGm6YKLM=',
    'Hiyapapaya@gmail.com'
  ),
  (
    10,
    'fairy',
    'bnXcHzacGI3/uqYApg==',
    'fairydairy@diary.fairy.com'
  ),
  (11, 'dodo', 'bHvRAg/pS9c=', 'dodo@gmail.com'),
  (13, 'atleib', 'aXjFBS6YS9U=', 'bams@bams.com'),
  (16, 'john', 'YnvdAw/pS9c=', 'john@gmq.com'),
  (
    17,
    'altimerch',
    'aXjBBBDoQNW58t4Ksw==',
    'altamish.prime14@gmail.com'
  ),
  (
    18,
    'atleib2001',
    'aWfQLX7qStA=',
    'atleib2001@gmail.com'
  ),
  (19, 'ase', 'aWfQLX7qStA=', 'ase@gmail.com');

ALTER TABLE
  `Users`
ADD
  PRIMARY KEY (`autoId`),
ADD
  KEY `User` (`User`);

ALTER TABLE
  `Users`
MODIFY
  `autoId` int NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 20;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;