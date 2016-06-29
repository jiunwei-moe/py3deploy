"%~dp0python-3.5.2-amd64.exe" /quiet /uninstall
ping 127.0.0.1 -n 20
"%~dp0python-3.5.2-amd64.exe" /quiet InstallAllUsers=1 PrependPath=1 DefaultAllUsersTargetDir="%ProgramFiles%\Python35"
ping 127.0.0.1 -n 100
"%ProgramFiles%\Python35\python.exe" -m pip install --no-index -f "%~dp0." -U pip
ping 127.0.0.1 -n 20
"%ProgramFiles%\Python35\Scripts\pip.exe" install --no-index -f "%~dp0." -r "%~dp0requirements.txt"
ping 127.0.0.1 -n 100
"%ProgramFiles%\Python35\Scripts\pip.exe" install --no-index -f "%~dp0." -r "%~dp0requirements-workaround.txt"
ping 127.0.0.1 -n 20
