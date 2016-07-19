\c indexed_cars;

\i scripts/car_models.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;

-- TIMING SELECT STATEMENTS
-- 1 Time: 36 ms
-- SELECT DISTINCT make_title
--   FROM car_models
--   WHERE make_code = 'LAM';
-- --2 Time: 22 ms
-- SELECT DISTINCT model_title
--   FROM car_models
--   WHERE make_code = 'NISSAN'
--   AND model_code = 'GT-R';
-- --3 Time: 27 ms
-- SELECT make_code, model_code, model_title, year
--   FROM car_models
--   WHERE make_code = 'LAM';
-- --4 Time: 94 ms
-- SELECT *
--   FROM car_models
--   WHERE year < 2015
--   AND year > 2010;
-- --5 Time: 37 ms
-- SELECT *
--   FROM car_models
--   WHERE year = 2010;

-- INDEXING
-- 1
  DROP INDEX IF EXISTS make_title;
  DROP INDEX IF EXISTS model_title;
  DROP INDEX IF EXISTS make_code;

  CREATE INDEX make_title ON car_models(make_title);
  CREATE INDEX model_title ON car_models(model_title);
  CREATE INDEX make_code ON car_models(make_code);
-- 1 Time: 5 ms
  SELECT DISTINCT make_title
    FROM car_models
    WHERE make_code = 'LAM';
-- 2 Time: 6 ms
  SELECT DISTINCT model_title
    FROM car_models
    WHERE make_code = 'NISSAN'
    AND model_code = 'GT-R';
-- 3 Time: 5 ms
  SELECT make_code, model_code, model_title, year
    FROM car_models
    WHERE make_code = 'LAM';
-- 4 Time: 109 ms
  SELECT * FROM car_models
    WHERE year <= 2015
    AND year >= 2010;
-- 5 Time: 33 ms
  SELECT * FROM car_models
    WHERE year = 2010;

-- \d+ car_models;
-- SELECT * FROM car_models;

\c indexed_cars;