CREATE TABLE IF NOT EXISTS analytics.dim_status (
  status_key    SERIAL PRIMARY KEY,
  status_code   TEXT UNIQUE NOT NULL,
  description   TEXT
);

CREATE TABLE IF NOT EXISTS analytics.dim_currency (
  currency_key  SERIAL PRIMARY KEY,
  currency_code TEXT UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS analytics.dim_date (
  date_key    INT PRIMARY KEY,
  date_value  DATE NOT NULL,
  year        INT NOT NULL,
  month       INT NOT NULL,
  day         INT NOT NULL
);
