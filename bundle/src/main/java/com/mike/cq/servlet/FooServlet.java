package com.mike.cq.servlet;

import org.apache.felix.scr.annotations.Properties;
import org.apache.felix.scr.annotations.Property;
import org.apache.felix.scr.annotations.sling.SlingServlet;
import org.apache.sling.api.SlingHttpServletRequest;
import org.apache.sling.api.SlingHttpServletResponse;
import org.apache.sling.api.servlets.SlingAllMethodsServlet;

import javax.servlet.ServletException;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * A simple servlet to test bundles
 */
@SlingServlet(paths = {"/bin/foo"})
@Properties({
        @Property(name = "service.pid", value = "com.mike.cms.servlet.FooServlet", propertyPrivate = false),
        @Property(name = "service.description", value = "Foo Servlet", propertyPrivate = false),
        @Property(name = "service.vendor", value = "Mike", propertyPrivate = false)
})
public class FooServlet extends SlingAllMethodsServlet
{
    @Override
    protected void doGet(SlingHttpServletRequest request, SlingHttpServletResponse response)
            throws ServletException, IOException
    {
        PrintWriter writer = response.getWriter();
        writer.write("Hello");


    }
}
