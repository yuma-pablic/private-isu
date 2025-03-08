-- Create "atlas_schema_revisions" table
CREATE TABLE `atlas_schema_revisions` (`version` varchar(255) NOT NULL, `description` varchar(255) NOT NULL, `type` bigint unsigned NOT NULL DEFAULT 2, `applied` bigint NOT NULL DEFAULT 0, `total` bigint NOT NULL DEFAULT 0, `executed_at` timestamp NOT NULL, `execution_time` bigint NOT NULL, `error` longtext NULL, `error_stmt` longtext NULL, `hash` varchar(255) NOT NULL, `partial_hashes` json NULL, `operator_version` varchar(255) NOT NULL, PRIMARY KEY (`version`)) CHARSET utf8mb4 COLLATE utf8mb4_bin;
-- Create "comments" table
CREATE TABLE `comments` (`id` int NOT NULL AUTO_INCREMENT, `post_id` int NOT NULL, `user_id` int NOT NULL, `comment` text NOT NULL, `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP, PRIMARY KEY (`id`), INDEX `idx_comment_id` (`id`)) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
-- Create "posts" table
CREATE TABLE `posts` (`id` int NOT NULL AUTO_INCREMENT, `user_id` int NOT NULL, `mime` varchar(64) NOT NULL, `imgdata` mediumblob NOT NULL, `body` text NOT NULL, `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP, PRIMARY KEY (`id`)) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
-- Create "users" table
CREATE TABLE `users` (`id` int NOT NULL AUTO_INCREMENT, `account_name` varchar(64) NOT NULL, `passhash` varchar(128) NOT NULL, `authority` bool NOT NULL DEFAULT 0, `del_flg` bool NOT NULL DEFAULT 0, `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP, PRIMARY KEY (`id`), UNIQUE INDEX `account_name` (`account_name`)) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
