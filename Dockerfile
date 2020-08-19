FROM node:10

# where the app lives in the container
WORKDIR /usr/src/app

# move package.json files into container to allow installing dependencies
COPY package*.json ./

# install dependencies
RUN npm install

# copy everything here to the container
COPY . .

# expose port 3000 as that is what the app runs on - check index.js
EXPOSE 3000

CMD ["npm", "start"]