CREATE INDEX IF NOT EXISTS fact_trx_created_at_brin
  ON analytics.fact_transactions USING BRIN(created_at);
