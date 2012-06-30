/* ====================================================================
 *  Copyright (c) 2012, www.tjeerd.net
 * 	All rights reserved.
 *  ====================================================================
 */

package net.tjeerd.springwebflowwizard.model;

import java.io.Serializable;

/**
 * Person model object containing different properties. This object is filled and manipulated in the wizard.
 */
public class Person implements Serializable {
    String name;
    String age;
    String address;
    String place;
    String comment;

    /**
     * Get the name of the person.
     *
     * @return the name of the person
     */
    public String getName() {
        return name;
    }

    /**
     * Set the name of the person.
     * @param name the name of the person
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * Get the age of the person.
     *
     * @return the age of the person
     */
    public String getAge() {
        return age;
    }

    /**
     * Set the age of the person.
     *
     * @param age the age of the person
     */
    public void setAge(String age) {
        this.age = age;
    }

    /**
     * Get the address of the person.
     *
     * @return address of the person
     */
    public String getAddress() {
        return address;
    }

    /**
     * Set the address of the person.
     *
     * @param address the address of the person
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * Get the place of the person.
     *
     * @return the place of the person
     */
    public String getPlace() {
        return place;
    }

    /**
     * Set the place of the person.
     *
     * @param place the place of the person
     */
    public void setPlace(String place) {
        this.place = place;
    }

    /**
     * Get the comment for this person.
     *
     * @return the comment for this person
     */
    public String getComment() {
        return comment;
    }

    /**
     * Set the comment for this person.
     *
     * @param comment the comment for this person
     */
    public void setComment(String comment) {
        this.comment = comment;
    }
}
