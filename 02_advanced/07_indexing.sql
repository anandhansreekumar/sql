CREATE INDEX idx_title ON titles(title);
DROP INDEX idx_title;
-- CREATE UNIQUE INDEX 
-- Partial index 
CREATE INDEX idx_title ON titles(title)
WHERE title IN ('Senior Engineer', 'Assistant Engineer')