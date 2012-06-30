/* ====================================================================
 *  Copyright (c) 2012, www.tjeerd.net
 * 	All rights reserved.
 *  ====================================================================
 */

package net.tjeerd.springwebflowwizard.validator;

import net.tjeerd.springwebflowwizard.model.Person;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

/**
 * This class validates a person. In this case it is checking for a minimal and maximal length of the person name
 * and whether the name is empty. Errors are put back in the error object and returned to the view.
 */

@Component
public class PersonValidator implements Validator {
    private static final org.slf4j.Logger LOGGER = LoggerFactory.getLogger(PersonValidator.class);

	public boolean supports(Class<?> clazz) {
        return Person.class.equals(clazz);
	}

    public void validate(Object target, Errors errors) {
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name",
                "validation.name.required");

		Person person = (Person)target;

		if (person.getName() != null) {
            if ( person.getName().length() < 5 ) {
			    errors.rejectValue("name", "validation.name.tooshort");
                LOGGER.info("Name too short");
            } else
            if ( person.getName().length() > 15) {
                errors.rejectValue("name", "validation.name.toolong");
                LOGGER.info("Name too long");
            }
		}
    }
}
