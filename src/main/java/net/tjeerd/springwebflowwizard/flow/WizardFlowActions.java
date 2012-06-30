/* ====================================================================
 *  Copyright (c) 2012, www.tjeerd.net
 * 	All rights reserved.
 *  ====================================================================
 */

package net.tjeerd.springwebflowwizard.flow;

import net.tjeerd.springwebflowwizard.model.Person;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

/**
 * This class contains methods which can be called from within the webflow XML configuration file (wizard-flow.xml).
 */

@Component
public class WizardFlowActions {
	private static final org.slf4j.Logger LOGGER = LoggerFactory.getLogger(WizardFlowActions.class);

    /**
     * Method to reverse the place.
     *
     * @param person person model object
     * @return person with the place reversed
     */
    public Person reversePlace(Person person) {
        person.setPlace( new StringBuffer(person.getPlace()).reverse().toString() );
        LOGGER.info("Place has been reversed");
        return person;
    }

    /**
     * Method to handle a person object, which actually means that you can do anything you want here like
     * persisting the person object.
     *
     * @param person person object
     */
    public void handlePerson(Person person) {
        /* Do something with the person */
        LOGGER.info("Wizard has finished, handling person.");
    }
}
