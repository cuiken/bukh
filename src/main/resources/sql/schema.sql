create table ss_user(
 id bigint not null auto_increment,
 email varchar(255),
 login_name varchar(255) not null unique,
 name varchar(255),
 password varchar(255),
 salt varchar(64),
 status varchar(32) not null default 0,
 register_date timestamp not null default 0,
 primary key (id)
)ENGINE=InnoDB;

create table tt_category(
  id bigint not null auto_increment,
  name varchar(35),
  code varchar(35),
  sort int,
  status varchar(32) ,
  primary key (id)
)ENGINE=InnoDB;

create table tt_side_pic(
  id bigint not null auto_increment,
  name varchar(35),
  dir_path varchar (100),
  link varchar (100),
  description varchar (100),
  sort int,
  primary  key (id)
)ENGINE=InnoDB;

create table tt_carousel_pic(
  id bigint not null auto_increment,
  dir_path varchar (100),
  sort int ,
  primary key(id)
)ENGINE=InnoDB;

create table tt_item(
  id bigint not null auto_increment,
  name varchar (35),
  title varchar (200),
  short_title varchar (100),
  content text,
  product_brochure varchar (100),
  technical_drawing varchar (100),
  torque_curves varchar (100),
  category_id int,
  primary key (id)
)ENGINE=InnoDB;

create table tt_item_carousel(
  id bigint not null auto_increment,
  item_id int,
  small_size_path varchar (100),
  large_size_path varchar (100),
  status varchar (1),
  primary key (id)
)ENGINE=InnoDB;

create table tt_region(
  id bigint not null auto_increment,
  name varchar (35),
  value varchar (35),
  primary key (id)
)ENGINE=InnoDB;

create table tt_country(
  id bigint not null auto_increment,
  name varchar (35),
  value varchar (35),
  region_id int,
  primary key (id)
)ENGINE=InnoDB;

create table tt_dist(
  id bigint not null auto_increment ,
  name varchar (100),
  province varchar (35),
  zip_code varchar (35),
  address varchar (100),
  telephone varchar (35),
  fax varchar(35),
  email varchar (50),
  website varchar (100),
  country_id int,
  primary key (id)
)ENGINE=InnoDB;
