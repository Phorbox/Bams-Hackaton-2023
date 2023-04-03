CREATE TABLE `Passwords` (
  `autoId` int NOT NULL,
  `userId` int NOT NULL,
  `User` varchar(64) NOT NULL,
  `Password` varchar(64) NOT NULL,
  `Domain` varchar(128) NOT NULL,
  `Description` varchar(1028) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf16;


INSERT INTO
  `Passwords` (
    `autoId`,
    `userId`,
    `User`,
    `Password`,
    `Domain`,
    `Description`
  )
VALUES
  (1, 0, 'Mark', 'GSaGWQ==', '2', 'N/A'),
  (21, 5, 'test', 'GSaGWXo=', 'insta', 'pain'),
  (
    22,
    5,
    'atleib2001',
    'GyWHWHk=',
    'efwfds',
    'fqreg'
  ),
  (23, 7, 'dfsg', 'SWfTCSk=', 'sdfa', 'asfdf'),
  (24, 7, 'dvssaf', 'TGfUCyk=', 'sdafa', 'asdf'),
  (
    25,
    10,
    'fairy',
    'aV/UC3+KWJz8q75G8rHFiMKA9Nc=',
    'www.wwe.com',
    'Shes gonna fight'
  ),
  (
    26,
    10,
    'dairy',
    'aTXUWn+hWKi+l4xAoJin45765Z0=',
    'www.wwe.com',
    'Shes not gonna fight'
  ),
  (
    27,
    11,
    'dodo2',
    'THvRAn7qSg==',
    'www.dodo.com',
    'Main account'
  ),
  (
    28,
    11,
    'daboxmasta',
    'aW3UJH++WKvKro5e/KXy/5vC/cQ=',
    'www.dodo.com',
    'Second account'
  ),
  (
    30,
    13,
    'School_Project',
    'aUHUKH+zWLfBl6Zq24KzwdbU7s4=',
    'www.dodo.com',
    'Dodo'
  ),
  (
    31,
    13,
    'asdfg',
    'aXjUH3+PWJLFl9Fe/IPgn9nE8Mc=',
    'www.facebook.com',
    'facebook1'
  ),
  (
    32,
    13,
    'Bams book',
    'aTXUWn++WKDasaxW/6fQkuT40f0=',
    'www.facebook.com',
    'facebook Business'
  ),
  (
    33,
    13,
    'PhorBox',
    'aSLUWn+0WIHb98JD5I7A8sXh7P4=',
    'www.twitter.com',
    'Main account'
  ),
  (
    34,
    13,
    'howdy howdy',
    'aXLUK3+ZWNC6icJQrpLWjsGV/Ig=',
    'www.myspace.com',
    'Myspace'
  ),
  (
    35,
    13,
    'School_Project',
    'aUDUCn+RWILupt954JD0/+vV+MQ=',
    'ec2-3-142-121-167.us-east-2.compute.amazonaws.com',
    'Advanced Software Project'
  ),
  (
    36,
    14,
    'john2',
    'GSaG',
    'www.facebook.com',
    'Main account'
  ),
  (
    38,
    15,
    'john2',
    'QnvdAw==',
    'www.instagram.com',
    'Main account'
  ),
  (
    40,
    16,
    'john',
    'QnvdAw==',
    'www.instagram.com',
    'Main account'
  ),
  (
    42,
    18,
    'atleib',
    'SWfQ',
    'www.facebook.com',
    'Main account'
  ),
  (
    43,
    18,
    'atleib',
    'aW7UWn+3WL7JtscH77jb2vHl5fg=',
    'www.instagram.com',
    'Main account'
  );

ALTER TABLE
  `Passwords`
ADD
  PRIMARY KEY (`autoId`),
ADD
  KEY `userId` (`userId`);

ALTER TABLE
  `Passwords`
MODIFY
  `autoId` int NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 45;

COMMIT;