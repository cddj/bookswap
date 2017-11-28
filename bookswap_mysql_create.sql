CREATE TABLE `user` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`email` varchar NOT NULL,
	`password_hash` varchar NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `book` (
	`isbn` bigint NOT NULL,
	`title` varchar NOT NULL,
	`author` varchar NOT NULL,
	`publisher` varchar NOT NULL,
	`condition` varchar NOT NULL,
	`type` enum,
	PRIMARY KEY (`isbn`)
);

CREATE TABLE `inventory` (
	`user_id` bigint NOT NULL,
	`book_isbn` bigint NOT NULL
);

CREATE TABLE `wishlist` (
	`user_id` bigint NOT NULL,
	`book_isbn` bigint NOT NULL
);

CREATE TABLE `match` (
	`owner_id` bigint NOT NULL,
	`recipient_id` bigint NOT NULL,
	`book_isbn` bigint NOT NULL,
	`owner_agreed` bool NOT NULL,
	`recipient_agreed` bool NOT NULL
);

ALTER TABLE `inventory` ADD CONSTRAINT `inventory_fk0` FOREIGN KEY (`user_id`) REFERENCES `user`(`id`);

ALTER TABLE `inventory` ADD CONSTRAINT `inventory_fk1` FOREIGN KEY (`book_isbn`) REFERENCES `book`(`isbn`);

ALTER TABLE `wishlist` ADD CONSTRAINT `wishlist_fk0` FOREIGN KEY (`user_id`) REFERENCES `user`(`id`);

ALTER TABLE `wishlist` ADD CONSTRAINT `wishlist_fk1` FOREIGN KEY (`book_isbn`) REFERENCES `book`(`isbn`);

ALTER TABLE `match` ADD CONSTRAINT `match_fk0` FOREIGN KEY (`owner_id`) REFERENCES `user`(`id`);

ALTER TABLE `match` ADD CONSTRAINT `match_fk1` FOREIGN KEY (`recipient_id`) REFERENCES `user`(`id`);

ALTER TABLE `match` ADD CONSTRAINT `match_fk2` FOREIGN KEY (`book_isbn`) REFERENCES `book`(`isbn`);

ALTER TABLE `match` ADD CONSTRAINT `match_fk3` FOREIGN KEY (`recipient_agreed`) REFERENCES `user`(`id`);

