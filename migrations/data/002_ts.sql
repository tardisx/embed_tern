ALTER TABLE jokes ADD COLUMN ts TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW();

---- create above / drop below ----

ALTER TABLE jokes DROP COLUMN ts;