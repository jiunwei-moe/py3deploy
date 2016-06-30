pip install --user --no-index -f "%~dp0." -U pip
pip install --user --no-index -f "%~dp0." -r "%~dp0requirements.txt"
pip install --user --no-index -f "%~dp0." -r "%~dp0requirements-workaround.txt"
