FROM node:10
#Create app directory
WORKDIR /usr/src/app
#Install all dependencies
#A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./
RUN npm install
#Bundle app source
COPY . .
EXPOSE 8090
ENTRYPOINT npm run storybook
