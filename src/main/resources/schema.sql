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