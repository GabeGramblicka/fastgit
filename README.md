# Welcome to Fastgit!
Fastgit is a small shell script that makes committing to your git repository much faster. 
It is designed for small or individual projects in mind

## Setup / Installation
Clone the repository:
```
git clone https://github.com/GabeGramblicka/fastgit.git
```

### Linux:
Make the script executable:
```
chmod +x fastgit.sh
```

Copy it to your PATH (optional):
```
sudo cp fastgit.sh /usr/local/bin/fastgit
```

### Windows:
#### Powershell:
Create the bin directory if it doesn't exist:
```
New-Item -ItemType Directory -Force -Path $env:USERPROFILE\bin
```
Copy the ps1 file:
```
Copy-Item fastgit.ps1 $env:USERPROFILE\bin\fastgit.ps1
```
Add to PATH (Make sure to run PowerShell as Admin)
```
[Environment]::SetEnvironmentVariable("Path", $env:Path + ";$env:USERPROFILE\bin", "User")
```

#### Batch File:
Create a custom bin folder in your PATH
```
mkdir %USERPROFILE%\bin
```
Copy the script
```
copy fastgit.bat %USERPROFILE%\bin\fastgit.bat
```
Add to PATH:
  1. Press Win + X and select "System"
  2. Click "Advanced system settings"
  3. Click "Environment Variables"
  4. Under "User variables", select "Path" and click "Edit"
  5. Click "New" and add: %USERPROFILE%\bin
  6. Click "OK" on all dialogs

Now you can type `fastgit` from any git directory and add, commit, and push in a much more streamlined way
