FROM python:3.11-slim
WORKDIR /app
COPY etl/pyproject.toml /app/etl/
RUN pip install -r /app/etl/pyproject.toml
COPY etl/src /app/etl/src
ENTRYPOINT ["python", "-m", "etl.src.etl_job"]
