create table acct_user(
 id bigint not null auto_increment,
 email varchar(255),
 login_name varchar(255) not null unique,
 name varchar(255),
 password varchar(255),
 salt varchar(64),
 status varchar(32),
 primary key (id)
)ENGINE=InnoDB;