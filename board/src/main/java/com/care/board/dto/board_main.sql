create table board(
	board_num int auto_increment primary key, 
	title char(255), 
	content text null, 
	writer_id varchar(100), 
	reg_date datetime default now(), 
	view_count int default 0, 
	recommend int default 0, 
	unrecommend int default 0
);

