-- Domain is an alias for an existing type and can have constraints
CREATE DOMAIN Rating SMALLINT CHECK (
    VALUE > 0
    AND VALUE <= 5
);
-- Independent type
CREATE TYPE Feedback AS (student_id UUID, rating Rating, feedback TEXT);