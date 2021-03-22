create table students(
    id serial primary key
);
ALTER TABLE students ADD COLUMN name VARCHAR(50) not null;
ALTER TABLE students ADD COLUMN age int not null;
ALTER TABLE students ADD COLUMN gender int not null;
ALTER TABLE students ADD COLUMN current_class VARCHAR(255) not null;
ALTER TABLE students ADD COLUMN freshman_class VARCHAR(255);
ALTER TABLE students ADD COLUMN zju_id BIGINT unique not null;
insert into students(name,age,gender,current_class,freshman_class,zju_id)
values('小张',20,2,'计科1901','工信1918',3190101234);
insert into students(name,age,gender,current_class,freshman_class,zju_id)
values('小胡',19,1,'工信2017',null,3200105678);
insert into students(name,age,gender,current_class,freshman_class,zju_id)
values('小王',21,2,'机械1802','机材1801',3180109012);