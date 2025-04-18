CREATE SEQUENCE SEQ_COURSE;
CREATE TABLE TBL_COURSE(
   ID NUMBER CONSTRAINT PK_COURSE PRIMARY KEY,
   COURSE_ADD_DATE DATE DEFAULT SYSDATE,
   COURSE_NAME VARCHAR2(1000) NOT NULL,
   COURSE_TYPE VARCHAR2(1000) NOT NULL,
   COURSE_DISTANCE VARCHAR2(1000),
   COURSE_SCHEDULE VARCHAR2(1000) NOT NULL,
   COURSE_THEME VARCHAR2(1000) NOT NULL,
   COURSE_CONTENTS VARCHAR2(1000) NOT NULL,
   COURSE_IMG_PATH VARCHAR2(1000) NOT NULL,	
   COURSE_IMG_SIZE VARCHAR2(1000) NOT NULL,
   COURSE_IMG_NAME VARCHAR2(1000) NOT NULL,
   COURSE_DATE DATE DEFAULT SYSDATE,
   VOLUNTEER_STATUS CHAR(1) DEFAULT 'F',
   ADMIN_ID NUMBER NOT NULL,
   CONSTRAINT FK_COURSE_ADMIN FOREIGN KEY(ADMIN_ID)
   REFERENCES TBL_ADMIN(ID)   	
);

DROP TABLE TBL_COURSE;

CREATE SEQUENCE SEQ_ADMIN;
CREATE TABLE TBL_ADMIN(
   ID NUMBER CONSTRAINT PK_ADMIN PRIMARY KEY,
   ADMIN_ACCOUNT VARCHAR2(1000) CONSTRAINT UK_ACCOUNT UNIQUE NOT NULL,
   ADMIN_PASSWORD VARCHAR2(1000) DEFAULT '1234',
   ADMIN_NAME VARCHAR2(1000) NOT NULL,
   ADMIN_PHONE VARCHAR2(1000) NOT NULL,
   ADMIN_EMAIL VARCHAR2(1000) NOT NULL
);