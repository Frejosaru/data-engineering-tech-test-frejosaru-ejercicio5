import argparse
from loguru import logger
import pandas as pd
from pathlib import Path

def run(input_path: str, out_path: str):
    logger.info(f"Reading input: {input_path}")
    df = pd.read_csv(input_path)
    # trivial transform
    df["amount_usd"] = df["amount"]  # ejemplo: conversión si existiera fx
    out_path = Path(out_path)
    out_path.parent.mkdir(parents=True, exist_ok=True)
    df.to_parquet(out_path, index=False)
    logger.info(f"Wrote: {out_path}")

def parse_args():
    p = argparse.ArgumentParser()
    p.add_argument("--input", required=True)
    p.add_argument("--out", required=True)
    return p.parse_args()

if __name__ == "__main__":
    args = parse_args()
    run(args.input, args.out)
