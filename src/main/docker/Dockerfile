FROM openjdk:14

RUN mkdir /deployments
COPY ./gh-actions-demo-1.0.0-SNAPSHOT-runner.jar /deployments/
#COPY ./deployments/lib/* /deployments/lib/
COPY scripts/* /deployments/
RUN sed -e 's/\r$//' -i /deployments/*.sh && chmod +x /deployments/*.sh

EXPOSE 8080
WORKDIR /deployments
ENTRYPOINT ["./run.sh"]
