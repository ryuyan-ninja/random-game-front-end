FROM node:10-alpine as build-stage
WORKDIR /usr/src/app
COPY ./ ./
RUN npm install
RUN npm run build
FROM nginx:alpine
COPY --from=build-stage /usr/src/app/dist /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
COPY ./nginx.conf /etc/nginx/nginx.conf
LABEL com.centurylinklabs.watchtower.enable="true"