ALTER TABLE jokes ADD COLUMN nsfw BOOLEAN NOT NULL DEFAULT 'f';

---- create above / drop below ----

ALTER TABLE jokes DROP COLUMN nsfw;