FROM node:14.17.5 
WORKDIR /usr/src/app/
COPY ./ /usr/src/app/
ENV NODE_ENV=development
EXPOSE 3000
CMD [ "npm", "install" ]
CMD [ "npm", "start" ]