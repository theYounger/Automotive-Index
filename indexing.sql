\c indexed_cars;
\timing;

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
\i scripts/car_model_data.sql;


--1
SELECT DISTINCT make_title FROM car_models WHERE make_code = 'LAM';

--2

-- \d+ car_models;
-- SELECT * FROM car_models;

\timing
\c indexed_cars;