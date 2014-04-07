CREATE DATABASE IF NOT EXISTS bukh
  DEFAULT CHARSET utf8
  COLLATE utf8_general_ci;

USE bukh;

CREATE TABLE ss_user (
  id            BIGINT       NOT NULL AUTO_INCREMENT,
  email         VARCHAR(255),
  login_name    VARCHAR(255) NOT NULL UNIQUE,
  name          VARCHAR(255),
  password      VARCHAR(255),
  salt          VARCHAR(64),
  status        VARCHAR(32)  NOT NULL DEFAULT 0,
  register_date TIMESTAMP    NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
)
  ENGINE =InnoDB;

CREATE TABLE tt_category (
  id     BIGINT NOT NULL AUTO_INCREMENT,
  name   VARCHAR(35),
  code   VARCHAR(35),
  sort   INT,
  status VARCHAR(32),
  PRIMARY KEY (id)
)
  ENGINE =InnoDB;

CREATE TABLE tt_side_pic (
  id          BIGINT NOT NULL AUTO_INCREMENT,
  name        VARCHAR(35),
  dir_path    VARCHAR(100),
  link        VARCHAR(100),
  description VARCHAR(100),
  sort        INT,
  PRIMARY KEY (id)
)
  ENGINE =InnoDB;

CREATE TABLE tt_carousel_pic (
  id       BIGINT NOT NULL AUTO_INCREMENT,
  dir_path VARCHAR(100),
  sort     INT,
  PRIMARY KEY (id)
)
  ENGINE =InnoDB;

CREATE TABLE tt_item (
  id                BIGINT NOT NULL AUTO_INCREMENT,
  name              VARCHAR(35),
  title             VARCHAR(200),
  short_title       VARCHAR(100),
  content           TEXT,
  product_brochure  VARCHAR(100),
  technical_drawing VARCHAR(100),
  torque_curves     VARCHAR(100),
  category_id       INT,
  PRIMARY KEY (id)
)
  ENGINE =InnoDB;

CREATE TABLE tt_item_carousel (
  id              BIGINT NOT NULL AUTO_INCREMENT,
  item_id         INT,
  small_size_path VARCHAR(100),
  large_size_path VARCHAR(100),
  status          VARCHAR(1),
  PRIMARY KEY (id)
)
  ENGINE =InnoDB;

CREATE TABLE tt_region (
  id    BIGINT NOT NULL AUTO_INCREMENT,
  name  VARCHAR(35),
  value VARCHAR(35),
  PRIMARY KEY (id)
)
  ENGINE =InnoDB;

CREATE TABLE tt_country (
  id        BIGINT NOT NULL AUTO_INCREMENT,
  name      VARCHAR(35),
  value     VARCHAR(35),
  region_id INT,
  PRIMARY KEY (id)
)
  ENGINE =InnoDB;

CREATE TABLE tt_dist (
  id         BIGINT NOT NULL AUTO_INCREMENT,
  name       VARCHAR(100),
  province   VARCHAR(35),
  zip_code   VARCHAR(35),
  address    VARCHAR(100),
  telephone  VARCHAR(35),
  fax        VARCHAR(35),
  email      VARCHAR(50),
  website    VARCHAR(100),
  country_id INT,
  PRIMARY KEY (id)
)
  ENGINE =InnoDB;

CREATE TABLE tt_contact (
  id           BIGINT NOT NULL AUTO_INCREMENT,
  company_name VARCHAR(50),
  name         VARCHAR(50),
  address      VARCHAR(100),
  post_code    VARCHAR(35),
  city         VARCHAR(35),
  telephone    VARCHAR(20),
  email        VARCHAR(35),
  subject      VARCHAR(35),
  find_way     VARCHAR(35),
  message      VARCHAR(255),
  status       VARCHAR(10),
  create_date  VARCHAR(25),
  PRIMARY KEY (id)
)
  ENGINE =InnoDB;
