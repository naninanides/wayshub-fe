FROM node:14-alpine as build
WORKDIR /home/app
COPY . .
RUN npm install

FROM node:14-alpine
WORKDIR /home/app
COPY --from=build /home/app /home/app
EXPOSE 3000
CMD ["npm","start"]
