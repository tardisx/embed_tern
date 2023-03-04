ALTER TABLE jokes ADD COLUMN up_votes INT NOT NULL DEFAULT 0;
ALTER TABLE jokes ADD COLUMN down_votes INT NOT NULL DEFAULT 0;

---- create above / drop below ----

ALTER TABLE jokes DROP COLUMN up_votes;
ALTER TABLE jokes DROP COLUMN down_votes;