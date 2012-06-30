/* ====================================================================
 *  Copyright (c) 2012, www.tjeerd.net
 * 	All rights reserved.
 *  ====================================================================
 */

package net.tjeerd.springwebflowwizard.flow;

import java.io.Serializable;

/**
 * This class represents a breadcrumb which holds the view state, the label and whether it is active or not. Active
 * means that it's the current step in the wizard.
 */

public class Breadcrumb implements Serializable {
    private static final long serialVersionUID = 1L;
    private String viewState;
    private String label;
    private boolean active;

    /**
     * Initialize a new breadcrumb.
     *
     * @param viewState the view state identifier
     * @param label descriptive label
     */
    public Breadcrumb(String viewState, String label) {
        this.viewState = viewState;
        this.label = label;
    }

    /**
     * Get the view state identifier.
     *
     * @return view state identifier
     */
    public String getViewState() {
        return this.viewState;
    }

    /**
     * Set the view state identifier.
     *
     * @param viewState view state identifier
     */
    public void setViewState(String viewState) {
        this.viewState = viewState;
    }

    /**
     * Get the descriptive label of the breadcrumb.
     *
     * @return descriptive label
     */
    public String getLabel() {
        return this.label;
    }

    /**
     * Set the descriptive label of the breadcrumb.
     *
     * @param label descriptive label of the breadcrumb
     */
    public void setLabel(String label) {
        this.label = label;
    }

    /**
     * Determine whether the current state is active.
     *
     * @return true if current state is active, otherwise false
     */
    public boolean getActive() {
        return active;
    }

    /**
     * Determine whether the current state is active.
     *
     * @return true if current state is active, otherwise false
     */
    public boolean isActive() {
        return getActive();
    }

    /**
     * Set the state of the breadcrumb.
     *
     * @param active true if state is active, othwerwise false
     */
    public void setActive(boolean active) {
        this.active = active;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((this.viewState == null) ? 0 : this.viewState.hashCode());
        return result;
    }

    @Override
    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Breadcrumb)) {
            return false;
        }
        Breadcrumb oBreadcrumb = (Breadcrumb) other;
        return this.viewState.equals(oBreadcrumb.viewState);
    }

}