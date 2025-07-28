# ETL package

Ejecutar local:
```bash
cd etl
pip install -e .[dev]
python -m src.etl_job --input ../data/raw/sample.csv --out ../data/processed/out.parquet
```

Ejecutar tests:
```bash
pytest -q
```
