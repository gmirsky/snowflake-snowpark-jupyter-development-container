FROM jupyter/minimal-notebook:latest
RUN conda create \
--name snowpark \
--override-channels \
-c https://repo.anaconda.com/pkgs/snowflake \
python=3.8 \
numpy \
pandas
SHELL ["conda", "run", "-n", "snowpark", "/bin/bash", "-c"]
RUN pip install jupyter ipython && \
ipython kernel install --name "snowpark" --user
