:: Name:		installrobotframework.cmd
:: Description:	Batch Script to install Python packages 
::				needed for Robot Framework.
:: Author: 		Thayse Maia Alencar
:: Revision: 	11/12/2019
::

:: To run the batch script without exiting cmd
:: %COMSPEC% /c installrobotframework.cmd 

:: Global Variables for error and function names
@echo off
SETLOCAL ENABLEEXTENSIONS
SET me=%~n0
SET parent=%~dp0

:: Makes sure pip is installed and updated
python -m pip install --upgrade pip
:: installed with the latest version in python3.7

:: 1) Robot framework and Ride IDE
pip install robotframework
:: pip install robotframework-ride==1.7.4b2
pip install robotframework-ride

:: 2) Selenium packages
pip install selenium
pip install --upgrade robotframework-seleniumlibrary

:: 3) Web driver package
pip install webdrivermanager
webdrivermanager firefox chrome --linkpath C:\Python37\Scripts

:: 4) Download extra packages
pip install mysql-connector
pip install grep
pip install html5lib
pip install lxml
pip install eyes-selenium
pip install cx_oracle
pip install beautifulsoup4
pip install requests
pip install setuptools
pip install robotframework-faker
:: pip install pyyaml

echo All packages downloaded for robot framework
echo To Start Ride IDE, type:
echo python -c "from robotide import main; main()"
:END
EXIT \B 0