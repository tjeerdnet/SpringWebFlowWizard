# Spring WebFlow Wizard

This project is a skeleton for those who want to build a wizard based on Spring WebFlow. It contains
the minimal code and configuration to help you in building a nice wizard. The project is based on and uses Maven to
fetch all the required libraries (mostly Spring).

## Installation and running

Download the project to your local computer and import the project in your favorite IDE (import it as Maven project) and
generate a WAR file. Put the WAR file in your favorite servlet container (e.g. Jetty, Apache Tomcat) and let the
servlet container deploy it for you. Use the path configured in your servlet container context to visit the wizard, this
could be something like http://localhost:8080/springwebflowwizard. There you will see an index page which allows
you to start the wizard.