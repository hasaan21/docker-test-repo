FROM node:12.16.1 

# create directory to mount volume
WORKDIR /app

# copy package files to container
COPY package*.json ./

# install libraries
RUN npm install

# copy app to container
COPY . .

# define port
EXPOSE 8080

# run app
CMD ["npm", "start"]
