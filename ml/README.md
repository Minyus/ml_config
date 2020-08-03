## [ml](https://github.com/Minyus/ml_config/tree/master/ml)
Environment for ML model training and prototyping


### `Dockerfile`
  - OS: Ubuntu 18.04
  - Miniconda
  - Python Packages of large size are installed in separate RUN steps so you can easily remove if the image size matters.

### `docker-compose.yml`
  - Expose ports for ML
