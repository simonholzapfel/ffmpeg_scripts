FROM jboss/wildfly
ARG name
COPY target/${name}.war /opt/jboss/wildfly/standalone/deployments
EXPOSE 8080