#### my_store_automation_practice

This project contains some automation scripts for testing http://automationpractice.com/index.php. The scripts are developed using the following technologies:
Python 2.7
Selenium 3.1
Robot Framework 3.1.2

---

## The Project Architecture

At the most basic level, the architecture of this project is as follows:

master
	/test_suites
	/assets
	/libraries
	/resources
		/components
		main.txt
		/poms
		setups.txt

master: my_store_automation_practice
* /test_suites: contains all suite files of the project. A suite file contains a set of test cases to test a specific page or feature of the application. If TestRail is used in conjunction, a suite file corresponds to section or subsection on TestRail.
* /assets: contains anything you need as input for your tests (json files, text files, csv files, templates...). You should include subfolders for each component.
* /libraries: any other libraries (python, javascript...) needed to run tests can be installed here.
* /resources: all reusable elements of your project should be included here, for example: the basic test set up, the basic test teardown, keywords that can be used across different test cases, etc. Resources should be a useful library for all the test cases to call upon!
	/poms: a Page Object Model, or POM, is a file that represents a page of the application. It contains locators and keywords used to test the elements of the page (buttons, links, fields, etc). It's meant to organize code for pages to be manageable and maintainable.
	/components: a component is a file that represents any other parts of the application that are not pages, for example: modals, pop-ups, widgets, menus, navigational bars, etc. A component file is also composed of locators and keywords to test the elements of the component.

---


