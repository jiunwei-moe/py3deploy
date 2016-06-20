set installer="%~dp0python-3.5.1-amd64.exe"
set targetdir=%ProgramFiles%\Python35
set pipargs=install --no-index -f "%~dp0."
%installer% /quiet /uninstall
%installer% /quiet InstallAllUsers=1 PrependPath=1 DefaultAllUsersTargetDir="%targetdir%"
"%targetdir%\python.exe" -m pip %pipargs% -U pip
"%targetdir%\Scripts\pip.exe" %pipargs% -r "%~dp0requirements.txt"
"%targetdir%\Scripts\pip.exe" %pipargs% -r "%~dp0requirements-workaround.txt"
