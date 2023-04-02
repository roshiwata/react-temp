FROM node:14.17.5 
WORKDIR /usr/src/app/
COPY ./ /usr/src/app/
ENV NODE_ENV=development
EXPOSE 3000
EXPOSE 80
# CMD [ "npm", "install" ]
RUN npm install
CMD [ "npm", "start" ]
