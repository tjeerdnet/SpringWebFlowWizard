# Spring WebFlow Wizard tutorial

This tutorial explains more on how to use the Spring WebFlow Wizard.

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

Contains the
