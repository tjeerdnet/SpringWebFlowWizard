/* ====================================================================
 *  Copyright (c) 2012, www.tjeerd.net
 * 	All rights reserved.
 *  ====================================================================
 */

package net.tjeerd.springwebflowwizard.flow;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.webflow.core.collection.MutableAttributeMap;
import org.springframework.webflow.definition.StateDefinition;
import org.springframework.webflow.engine.Flow;
import org.springframework.webflow.engine.ViewState;
import org.springframework.webflow.execution.FlowExecutionListenerAdapter;
import org.springframework.webflow.execution.FlowSession;
import org.springframework.webflow.execution.RequestContext;
import org.springframework.webflow.execution.View;

import java.util.LinkedList;

/**
 * This class overrides the default flow execution listener, which means you can handle specific states
 * yourself.
 */

public class BreadcrumbListener extends FlowExecutionListenerAdapter {
    private static final Logger LOGGER = LoggerFactory.getLogger(BreadcrumbListener.class);
    private static final String CONTEXT_KEY = "breadcrumbtrail"; /* unique identifier accessible from within the view */

    /**
     * When starting a new wizard session, a fresh breadcrumb trail is generated.
     */
    public void sessionStarting(RequestContext context, FlowSession session, MutableAttributeMap input) {
        Flow flowDefinition = (org.springframework.webflow.engine.Flow) session.getDefinition();
        LinkedList<Breadcrumb> breadcrumbtrail = (LinkedList<Breadcrumb>) context.getFlowScope().get(CONTEXT_KEY);

        LOGGER.info("Starting session for " + flowDefinition.getId());

        if (breadcrumbtrail == null) {
            breadcrumbtrail = new LinkedList<Breadcrumb>();
            for (String stateId : flowDefinition.getStateIds()) {
                if (flowDefinition.getState(stateId) instanceof ViewState) {
                    ViewState viewState = (ViewState) flowDefinition.getState(stateId);
                    MutableAttributeMap attributes = viewState.getAttributes();

                    Breadcrumb breadcrumb = new Breadcrumb(stateId, (String)attributes.get("description"));
                    breadcrumbtrail.add(breadcrumb);
                }
            }
            context.getFlowScope().put(CONTEXT_KEY, breadcrumbtrail);
        }
    }

    /**
     * Set the active breadcrumb (step).
     */
    public void viewRendering(RequestContext context, View view, StateDefinition state) {
        super.viewRendering(context, view, state);

        LinkedList<Breadcrumb> breadcrumbtrail = (LinkedList<Breadcrumb>) context.getFlowScope().get(CONTEXT_KEY);

        for (Breadcrumb breadcrumb : breadcrumbtrail) {
            breadcrumb.setActive( state.getId().equals(breadcrumb.getViewState()) );
        }

        LOGGER.info("Active breadcrumb (step) is {}", state.getId());
    }

    /**
     * Wizard has reached end (finished) state.
     */
    public void sessionEnding(RequestContext context, FlowSession session, String outcome, MutableAttributeMap output) {
        LinkedList<Breadcrumb> breadcrumbtrail = (LinkedList<Breadcrumb>) context.getFlowScope().get(CONTEXT_KEY);

        for (Breadcrumb breadcrumb : breadcrumbtrail) {
            breadcrumb.setActive( false );
        }

        LOGGER.info("Wizard has reached end (finished) state.");
    }
}
