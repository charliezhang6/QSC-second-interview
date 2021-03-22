
create table students(
    id serial primary key,
    name varchar(50) not null,
    age int not null,
    gender int not null,
    current_class VARCHAR(255) not null,
    freshman_class VARCHAR(255),
    zju_id BIGINT unique not null
);

insert into students(name,age,gender,current_class,freshman_class,zju_id)
values('小张',20,2,'计科1901','工信1918',3190101234);
insert into students(name,age,gender,current_class,freshman_class,zju_id)
values('小胡',19,1,'工信2017',null,3200105678);
insert into students(name,age,gender,current_class,freshman_class,zju_id)
values('小王',21,2,'机械1802','机材1801',3180109012);