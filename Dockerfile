FROM node:lts-alpine

WORKDIR /app

RUN apk upgrade
RUN apk add git
RUN git clone https://gitfront.io/r/horvathg13/rzuQD1k7Td23/Acme.git
RUN cd Acme

WORKDIR /app/Acme
RUN npm install

CMD ["npm", "run", "dev","--", "--host","0.0.0.0"]