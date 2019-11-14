#### Environment setup with Selenium and Robot Framework

---

## Steps for installation on Windows

1 - Download and install the latest version of Python 3.7x  from https://www.python.org/downloads/
	1.1 - On the setup pop-up window,  choose "Customize Installation" and set C:\ as the location  
	1.2 - Select the checkbox "Add Python 3.7 to PATH"
	
2 - Open the terminal and verify if you have PIP (python package manager) already installed:	
	pip --version
	
	Note: Pip is already installed if you are using Python 2 >=2.7.9 or Python 3 >=3.4 downloaded from https://www.python.org/

	2.1 - if not installed yet, try to bootstrap it from the standard library:

		python -m ensurepip --default-pip

		In case you still cannot run pip, try:

		curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py

		python get-pip.py

		Having issues? 
		Check https://packaging.python.org/tutorials/installing-packages/#ensure-you-can-run-pip-from-the-command-line
		
3 - Before continuing, make sure you have the Python37\ and Python37\Scripts\ folders in your Path (system variable):
	3.1 - On Windows, go to Advanced System Settings >> Advanced tab >> Environment Variables.
	3.2 - Under System Variables, search for Path and click on Edit.
	3.3 - If you don't see the Python folders in your Path variable, add two new variables, one for each folder:
		 C:\Python37 and 
		 C:\Python37\Scripts
		You can use the Browser button to find these folders in your computer.
	3.4 - Save your changes before continuing. Open a new terminal window.
	
4 - Now, install all other required packages listed bellow (see Required Programs and Packages section) OR download the batch file 
"RobotFramework Installer" on your Desktop. 	
	4.1 - After downloading this file, Windows might have changed the file extension to .txt. In order to proceed with the installation, 
	check the file extension and change it to .cmd. 
	4.2 - To run RobotFramework Installer, open the terminal and:
		4.2.a - On the terminal window, change your current directory to \Desktop (or to the same directory you downloaded the 
		"RobotFramework Installer".
		4.2.b - Copy and run the following command: %COMSPEC% /c installrobotframework.cmd 
	4.3 - Once the installation of all packages is completed, verify if Robot framework has been properly installed:
		robot --version
		rebot --version
		
5 - Close the terminal window and reopen it so that the changes will take effect.

6 - Now let's open RIDE IDE from the terminal window:
	ride.py (if the IDE does not open, try option b instead)
	python -c "from robotide import main; main()"

7 - Once the IDE opens, you are ready to create your scripts. Have fun!

---

## Required Programs and Packages


<IN PROGRESS>
