# Spring WebFlow Wizard tutorial

This document explains how to use the Spring WebFlow Wizard.

## Wizard pages
Every step in the wizard is built in a separate JSP page. These steps (JSP pages) can be found in WEB-INF/flows/views. In
the example wizard you will find the following pages:

### Cancel (cancel.jsp)
Page which is shown when the user cancels the wizard at any step.

### Exception (exception.jsp)
Page which is shown when there occurs any exception in the wizard.

### Finished (finished.jsp)
Page which is shown when the wizard has finished.

### Steps (stepN.jsp)
Pages which represent steps in the wizard, where N is the step number. This can be as many pages as you wish, as long as
you define them in the wizard flow file (wizard-flow.xml).

### Wizard flow (wizard-flow.xml)
XML file which describes in a format which Spring WebFlow will parse how the webflow will be. This is explained in the
next section.

## Wizard flow XML

### Scope session variables
To use class objects to hold information inside the webflow you can define your variables on top, in the example flow
XML file you will find:
  <var name="person" class="net.tjeerd.springwebflowwizard.model.Person"/>

This means that the variable will be put in the session scope, so anywhere in your flow view you can access this variable
 by using ${person} in your JSP page.

### View states
Every step in the wizard is defined as a view state. Your view state should have a unique identifier (id attribute), the JSP page
to show (view attribute) and optionally a model which you want to use (model attribute). Next you can give every view state
a description with a value which is shown in the breadcrumb trail. The transition determines what should be the next
view state (step) after the current view state. The boolean bind attribute determines whether the model should be binded (true) to
this step. Finally the booolean validation attribute can be used to call the validator (true) class (PersonValidator). A validator
is placed in the validation package (net.tjeerd.springwebflowwizard.validation) and named by convention by concatenating
the model name (Person) and the string "Validator" which gives PersonValidator. Spring then automatically knows how to find
and use the validator.

    <view-state id="step1" view="views/step1.jsp" model="person">
        <attribute name="description" value="First step"/>
        <transition on="submitNext" to="step2" bind="true" validate="true" />
    </view-state>

### Action states
It is possible to define action states, which you can see as a kind of subroutine to be executed. The action state should
be given a unique identifier. Inside the action state you can call any flow action class which is defined in the wizard-servlet.xml
(<bean id="wizardFlowActions" class="net.tjeerd.springwebflowwizard.flow.WizardFlowActions"/>). This way you can perform
data manipulation or similar functonality inside your flow. At the end of the action state you can define to transition (or
next step) the flow should go.

    <action-state id="reversePlace">
        <set name="person" value="wizardFlowActions.reversePlace(person)"/>
        <transition to="step5"/>
    </action-state>

### Transitions
There are default transitions available in the wizard which are:

* submitNext (the "next" button is pressed)
* submitPrevious (the "previous" button is pressed)
* submitCancel (the "cancel" button is pressed)

Any of these transitions can be handled. The cancel button is always present.

## Wizard form tags
Every step is built around a form which contains the input fields of a model. This has been made easier by using the
wizard form tag, which automatically generates and handles the navigation buttons. The wizard form tag should be included
at the top of a step page:

<%@ taglib prefix="wizard" tagdir="/WEB-INF/tags/wizard" %>

To create a minimal wizard form for the first step:

    <wizard:wizardform previous="false" modelAttribute="person">
        <table>
            <tbody>
                <tr>
                    <td>
                        <label for="name"><spring:message code="person.name"/></label></td>
                    <td>
                        <form:input path="name" id="name" cssErrorClass="validationErrorField" />
                </td
            </tr>
            </tbody>
        </table>
    </wizard:wizardform>

The follow attributes are available:

* previous (boolean, true shows the previous button)
* next (boolean, true shows the next button)
* finish (boolean, true shows the finish button)
* modelAttribute (object containing the model, just like normal Spring forms)
* showValidationErrors (boolean, true shows the validation errors)