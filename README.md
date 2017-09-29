# About

Jupyter notebook without security token in a box!

# Build

```
docker build -t "crazycapivara/miniconda3-jupyter-notebook-insecure" .
```

# Run

```
docker run -p 8888:8888 -d crazycapivara/miniconda3-jupyter-notebook-insecure
```

