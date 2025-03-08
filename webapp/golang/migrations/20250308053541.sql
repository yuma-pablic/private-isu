-- Modify "comments" table
ALTER TABLE `comments` DROP INDEX `idx_comment_id`;
-- Modify "posts" table
ALTER TABLE `posts` DROP INDEX `idx_posts_id`;
-- Modify "users" table
ALTER TABLE `users` DROP INDEX `idx_users_id`;
