# Spring WebFlow Wizard

This project is a skeleton for those who want to build a wizard based on Spring WebFlow. It contains
the minimal (example with five wizard steps) code and configuration to help you in building a nice wizard containing the following features:

* navigation (forward, backwarde, cancel and finish)
* usage of JSP 2.0 tags to build up the wizard (keeps your pages clean)
* support for internationalisation (i8n) integrated
* form validation
* SiteMesh decorator integrated for consistent decoration on all your pages
* friendly exception handling when something goes wrong in the wizard

The project is based on and uses Maven to fetch all the required libraries (mostly Spring).

## Installation and running

Download the project to your local computer and import the project in your favorite IDE (import it as Maven project) and
generate a WAR file. Put the WAR file in your favorite servlet container (e.g. Jetty, Apache Tomcat) and let the
servlet container deploy it for you. Use the path configured in your servlet container context to visit the wizard, this
could be something like http://localhost:8080/springwebflowwizard. There you will see an index page which allows
you to start the wizard.

## Why this project?

When I started developing with Spring WebFlow I found it difficult to find good and clear examples of how to use it.
Also there were no good implementations available of wizard like webflows or it was poorly worked out. I hope by putting
this wizard online I can help other people out there to get started.

## About me

My background since a few years is mostly Java oriented (Swing, Spring, Hibernate) and in my previous job (and now for hobby)
I also develop(ed) in the Grails framework. My personal site can be found at http://www.tjeerd.net.