FROM continuumio/miniconda3:4.10.3

# Allow statements and log messages to immediately appear in the Knative logs on Google Cloud.
ENV PYTHONUNBUFFERED True

ENV PROJECT_ROOT=/app
WORKDIR $PROJECT_ROOT

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# Install openfast.
RUN conda config --add channels conda-forge && conda config --set channel_priority strict && conda install -c "conda-forge/label/openfast_dev" openfast=3.1.0

# Install the useful extra OpenFAST/python-toolbox in the recommended way.
RUN git clone https://github.com/OpenFAST/python-toolbox && cd python-toolbox && python3 -m pip install -e .
