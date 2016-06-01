set targetdir=%ProgramFiles%\Python35
set pipargs=install --no-index -f %~dp0
python-3.5.1-amd64 /quiet InstallAllUsers=1 PrependPath=1 DefaultAllUsersTargetDir="%targetdir%"
"%targetdir%\python" -m pip %pipargs% -U pip
"%targetdir%\Scripts\pip" %pipargs% -r requirements.txt
