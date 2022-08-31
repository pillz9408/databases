
CREATE TABLE city_me
(
  ID          int AIPK     NOT NULL COMMENT '도시ID',
  Name        VARCHAR(200) NULL     COMMENT '도시 이름',
  CountryCode VARCHAR(200) NULL     COMMENT '국가코드',
  District    VARCHAR(200) NULL     COMMENT '지역',
  Population  INT          NULL     COMMENT '인구수',
  Code        VARCHAR(200) NOT NULL COMMENT '코드',
  PRIMARY KEY (ID)
) COMMENT '도시';

CREATE TABLE Country_me
(
  Code           VARCHAR(200) NOT NULL COMMENT '코드',
  Name           VARCHAR(200) NULL     COMMENT '국가이름',
  Continent      ENUM         NULL     COMMENT '대륙',
  Region         VARCHAR(200) NULL     COMMENT '종교',
  SurfaceArea    DECIMAL      NULL     COMMENT '면적',
  IndepYear      SMALLINT     NULL    ,
  Population     INT          NULL     COMMENT '인구수',
  LifeExpectancy DECIMAL      NULL     COMMENT '기대수명',
  GNP            DECIMAL      NULL     COMMENT 'GNP',
  GNPOld         DECIMAL      NULL     COMMENT '과거GNP',
  LocalName      VARCHAR(200) NULL     COMMENT '지역명',
  GovermentForm  VARCHAR(200) NULL     COMMENT '정부타입',
  HeadOfState    VARCHAR(200) NULL     COMMENT '국가원수',
  Capital        INT          NULL    ,
  Code2          VARCHAR(200) NULL    ,
  CountryCode    VARCHAR(200) NOT NULL COMMENT '국가코드',
  PRIMARY KEY (Code)
) COMMENT '국가';

CREATE TABLE Countrylanguage_me
(
  CountryCode VARCHAR(200) NOT NULL COMMENT '국가코드',
  Language    VARCHAR(200) NULL     COMMENT '언어',
  IsOffical   ENUM         NULL     COMMENT '공통어인가',
  Percentage  DECIMAL      NULL     COMMENT '사용퍼센티지',
  PRIMARY KEY (CountryCode)
) COMMENT '국가언어';

ALTER TABLE Country_me
  ADD CONSTRAINT FK_Countrylanguage_me_TO_Country_me
    FOREIGN KEY (CountryCode)
    REFERENCES Countrylanguage_me (CountryCode);

ALTER TABLE city_me
  ADD CONSTRAINT FK_Country_me_TO_city_me
    FOREIGN KEY (Code)
    REFERENCES Country_me (Code);
