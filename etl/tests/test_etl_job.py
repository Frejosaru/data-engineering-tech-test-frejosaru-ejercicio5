import pandas as pd
from pathlib import Path
from etl.src.etl_job import run

def test_run(tmp_path):
    src = tmp_path / "in.csv"
    out = tmp_path / "out.parquet"
    pd.DataFrame({"amount":[1,2,3]}).to_csv(src, index=False)
    run(str(src), str(out))
    assert out.exists()
    df = pd.read_parquet(out)
    assert "amount_usd" in df.columns
