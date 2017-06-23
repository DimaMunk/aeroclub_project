
-- Table: calendar

DROP TABLE IF EXISTS calendar CASCADE;

CREATE TABLE calendar
(
  date date NOT NULL,
  year double precision,
  month double precision,
  monthname text,
  day double precision,
  dayofyear double precision,
  weekdayname text,
  calendarweek double precision,
  quartal text,
  half text,
  CONSTRAINT calendar_pkey PRIMARY KEY (date)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE calendar
  OWNER TO postgres;

SET lc_time TO 'ru_RU.UTF-8';

INSERT INTO calendar
SELECT
	datum AS DATE,
	EXTRACT(YEAR FROM datum) AS YEAR,
	EXTRACT(MONTH FROM datum) AS MONTH,
	-- Localized month name
	to_char(datum, 'TMMonth') AS MonthName,
	EXTRACT(DAY FROM datum) AS DAY,
	EXTRACT(doy FROM datum) AS DayOfYear,
	-- Localized weekday
	to_char(datum, 'TMDay') AS WeekdayName,
	-- ISO calendar week
	EXTRACT(week FROM datum) AS CalendarWeek,
	to_char(datum, 'Q')  || ' Квартал'  AS Quartal,
	CASE WHEN to_char(datum, 'Q') in ('1','2') THEN '1 Полугодие' ELSE '2 полугодие' END as half
FROM (
	SELECT '1990-01-01'::DATE + SEQUENCE.DAY AS datum
	FROM generate_series(0,14000) AS SEQUENCE(DAY)
	GROUP BY SEQUENCE.DAY
     ) DQ
ORDER BY 1;
