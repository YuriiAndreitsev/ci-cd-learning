# Use an official JDK runtime as a parent image
FROM amazoncorretto:21

# Set the working directory in the container
WORKDIR /app

COPY entrypoint.sh \
     /app/

RUN chmod +x entrypoint.sh

COPY ./target/ci-cd-learning-0.0.1-SNAPSHOT.jar app.jar

CMD ["./entrypoint.sh"]
