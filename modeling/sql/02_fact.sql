CREATE TABLE IF NOT EXISTS analytics.fact_transactions (
  transaction_id BIGINT PRIMARY KEY,
  user_key       BIGINT NOT NULL,
  merchant_key   BIGINT NOT NULL,
  status_key     INT    NOT NULL,
  currency_key   INT    NOT NULL,
  date_key       INT    NOT NULL,
  created_at     TIMESTAMP NOT NULL,
  amount         NUMERIC(18,2) NOT NULL
) PARTITION BY RANGE (created_at);
