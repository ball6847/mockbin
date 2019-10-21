FROM node:10.16.3-alpine
LABEL maintainer=ball6847@gmail.com

RUN npm install -g mockbin
EXPOSE 8080
CMD ["mockbin"]
