ALTER DATABASE `spring-data-rest-example`
	DEFAULT CHARACTER SET utf8
	DEFAULT COLLATE utf8_general_ci;

CREATE TABLE `customer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `street` varchar(255) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_address_customer_id` (`customer_id`),
  CONSTRAINT `fk_address_to_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

	
CREATE TABLE  news ( id INT NOT NULL , title VARCHAR(200) NOT NULL , content TEXT NOT NULL ) ENGINE = InnoDB;
INSERT INTO news (id, title,content) VALUES ('1', 'Első hír', 'Szia, ez az első hír'), ('2', 'Második hír', 'Elindult a Docker tanfolyam!');