# psql控制台链接数据库
psql -U dbuser -d exampledb -h 127.0.0.1 -p 5432

# 
\h：查看SQL命令的解释，比如\h select。
\q: 退出控制台 
\?：查看psql命令列表。
\l：列出所有数据库。
\c [database_name]：连接其他数据库。
\d：列出当前数据库的所有表格。
\d [table_name]：列出某一张表格的结构。
\du：列出所有用户。
\e：打开文本编辑器。
\conninfo：列出当前数据库和连接的信息。


# DBA操作

> 创建用户

		CREATE USER dbuser WITH PASSWORD 'password';

> 创建数据库

		CREATE DATABASE exampledb OWNER dbuser;

> 授权

		GRANT ALL PRIVILEGES ON DATABASE exampledb to dbuser;

# 常用数据库操作

	# 创建新表 
	CREATE TABLE user_tbl(name VARCHAR(20), signup_date DATE);
	# 插入数据 
	INSERT INTO user_tbl(name, signup_date) VALUES('张三', '2013-12-22');
	# 选择记录 
	SELECT * FROM user_tbl;
	# 更新数据 
	UPDATE user_tbl set name = '李四' WHERE name = '张三';
	# 删除记录 
	DELETE FROM user_tbl WHERE name = '李四' ;
	# 添加栏位 
	ALTER TABLE user_tbl ADD email VARCHAR(40);
	# 更新结构 
	ALTER TABLE user_tbl ALTER COLUMN signup_date SET NOT NULL;
	# 更名栏位 
	ALTER TABLE user_tbl RENAME COLUMN signup_date TO signup;
	# 删除栏位 
	ALTER TABLE user_tbl DROP COLUMN email;
	# 表格更名 
	ALTER TABLE user_tbl RENAME TO backup_tbl;
	# 删除表格 
	DROP TABLE IF EXISTS backup_tbl;