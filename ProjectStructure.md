# Spring WebFlow Wizard project folder structure

This document describes the project folder structure.

## Project package structure

The following section describes every package.

### Flow package (net.tjeerd.springwebflowwizard.flow)

Contains classes used for showing the breadcrumb and handling specific actions called from the webflow.

### Model package (net.tjeerd.springwebflowwizard.model)

Contains class holding the details filled in in the wizard.

### Validator package (net.tjeerd.springwebflowwizard.validator)

Contains class used for validating the details filled in in the wizard. Validators always are a concatenation of the
model and 'Validator'. So if your model is called 'Car' then your validator should be called 'CarValidator'.

## Project resources folder structure

Contains the resources for this project.

### i8n

Contains internationalisation (i8n) resource bundle messages used for automatically applying the correct language
to Spring messages.

### log4j

Contains the logging configuration file to send log messages to the console.

## Web application folder structure

Contains the files necessary to run this web application.

### Meta information (META-INF/context.xml)

Used if you want to specifically configure your own context, is not used.

### Resources

Contains (static) files which are used by the web application, consisting of a decorator.css for SiteMesh, wizard.css
for the WebFlow Wizard. Images for the breadcrumb trail and a minified jQuery JavaScript for handling form submission.

## Web information (WEB-INF)

Contains files required for initializing the application, specifying the webflow and views (JSP) for the end user.

### Decorators

The application is configured to look for page decorators in this folder which are used by SiteMesh. This gives you
a nice consistent header and footer and overall layout to every page.

### Flows

This folder contains the JSP views used for every step in the wizard. Also the XML webflow configuration file can be found
here (wizard-flow.xml) which describes the wizard flow in XML format. This file is the most important one to be
editing in around probably.

### JSP folder

Contains a page not found (404) JSP and an exception page which can be changed.

### Tags folder

Contains the breadcrumb and the wizard tag libraries which should be used in the JSP views found in the Flows folder.

### Application context configuration file (applicationContext.xml)

Set up the web application to be able to handle JSP pages.

### Decorators XML configuration file (decorators.xml)

This configuration file specifies where SiteMesh can find its decorator JSP pages.

### Web XML configuration file (web.xml)

Filter for SiteMesh configured, error page handling and servlet name.

### Wizard servlet configuration file (wizard-servlet.xml)

Configuration file required for setting up support for Spring annotation and webflow handling.

### Index page (index.jsp)

Default page shown when the web application is launched.