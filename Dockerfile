FROM java:openjdk-8u111

ENV calculator_monitor_version 2.3.3

RUN mkdir -p /usr/src/myapp

WORKDIR /usr/src/myapp

RUN wget https://jitpack.io/com/github/dev-tool-index/calculator-monitor/${calculator_monitor_version}/calculator-monitor-${calculator_monitor_version}.jar -O /usr/src/myapp/calculator-monitor.war

EXPOSE 8080

CMD ["java", "-jar", "/usr/src/myapp/calculator-monitor.war"]
