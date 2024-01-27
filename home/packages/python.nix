{
  pkgs,
  ...
}: let
  name = "hervyqa";
in {
  home-manager = {
    users.${name} = {
      home = {
        packages = with pkgs; [
          (
            python3.withPackages ( ps:
              with ps; [
                appdirs
                astroid
                beautifulsoup4
                bokeh
                cairosvg
                catboost
                chispa
                cycler
                cython
                dash
                dask
                django
                fastapi
                flask
                gensim
                glueviz
                graphviz
                h5py
                hiredis
                imbalanced-learn
                ipython
                jedi
                jupyter-lsp
                jupyterlab
                jupyterlab-git
                jupyterlab-lsp
                jupyterlab-pygments
                jupyterlab-widgets
                kaggle
                keras
                mahotas
                matplotlib
                mido
                mkdocs
                mkdocs-material
                mkdocs-material-extensions
                mkdocs-minify
                mutagen
                nltk
                nose
                notebook
                numpy
                opencv4
                orange3
                pandas
                pendulum
                pillow
                pip
                pipenv
                plotly
                pydot
                pygobject3
                pymongo
                pyspark
                pytest
                python-lsp-black
                pytorch
                redis
                requests
                robotframework
                scikit-learn
                scikitimage
                scipy
                scrapy
                seaborn
                selenium
                simpleitk
                six
                sphinx
                spyder
                statsmodels
                sympy
                torch
                torchaudio
                torchvision
                tox
                tqdm
                transformers
                virtualenv
                wheel
                xarray
                xgboost
                yt-dlp
              ]
            )
          )
        ];
      };
    };
  };
}
