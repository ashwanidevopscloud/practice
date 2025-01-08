FROM almalinux:9
ARG author="siva" \
      company="join" \
      topic="docker" \
      duration="40hours" 
RUN echo "course:${author}", "duration:${duration}"
# CMD ["nginx", "-g", "daemon off;"]
# CMD ["ping", "google.com"]
# ENTRYPOINT ["ping", "google.com"]
RUN mkdir /tmp/docker
WORKDIR /tmp/docker
RUN pwd
RUN echo "Hello" > hello.txt
EXPOSE 80
CMD ["google.com"]
ENTRYPOINT ["ping"]
LABEL author="siva" \
      company="join" \
      topic="docker" \
      duration="40hours" 
