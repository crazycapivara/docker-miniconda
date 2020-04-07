# About

Miniconda with Jupyter Notebook a box!

# Build

```
docker build -t "crazycapivara/miniconda3:jupyter" .
```

# Run

```
docker run -p 8888:8888 -d crazycapivara/miniconda3:jupyter
```

