"%~dp0python-3.5.2-amd64.exe" /quiet /uninstall
"%~dp0python-3.5.2-amd64.exe" /quiet InstallAllUsers=1 PrependPath=1 DefaultAllUsersTargetDir="%ProgramFiles%\Python35"
"%ProgramFiles%\Python35\python.exe" -m pip install --no-index -f "%~dp0." -U pip
"%ProgramFiles%\Python35\Scripts\pip.exe" install --no-index -f "%~dp0." -r "%~dp0requirements.txt"
"%ProgramFiles%\Python35\Scripts\pip.exe" install --no-index -f "%~dp0." -r "%~dp0requirements-workaround.txt"
