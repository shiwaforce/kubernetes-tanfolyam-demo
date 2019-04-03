ALTER DATABASE test
	DEFAULT CHARACTER SET utf8
	DEFAULT COLLATE utf8_general_ci;

CREATE TABLE  news ( id INT NOT NULL , title VARCHAR(200) NOT NULL , content TEXT NOT NULL ) ENGINE = InnoDB;
INSERT INTO news (id, title,content) VALUES ('1', 'Elso hir', 'Szia, ez az elso hir'), ('2', 'Masodik hir', 'Elindult a Docker tanfolyam!');