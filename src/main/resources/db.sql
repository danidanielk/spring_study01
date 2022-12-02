select * from tab;
select * from DANI_10_24_MEMBER;
select * from DANI_10_24_talk;
drop table dani_10_24_member cascade constraint purge;
drop sequence dani_10_24_member_seq;
drop table dani_10_24_talk cascade constraint purge;
drop sequence dani_10_24_talk_seq;
select * from SEARCH_LOCATION

create table dani_10_24_member(
n number(12) primary key,
name varchar2(12char) not null,
id varchar2(12char) not null,
pw varchar2(12char) not null
);
create sequence dani_10_24_member_seq;


create table dani_10_24_talk(
t_n number(20) primary key,
t_id varchar2(12char)not null,
t_title varchar2(150char) not null,
t_content varchar2(1000char) not null,
t_name varchar2(12char)not null,
t_date date not null,
t_count number(30) default 0 not null
);

create sequence dani_10_24_talk_seq;

create table yoseb(
y_no number(20) primary key,
y_name varchar2(10char) not null,
y_age number(4) not null
); 

select * from yoseb;

insert into values ()