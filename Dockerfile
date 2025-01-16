# Step 1: Use an official Node.js runtime as the base image
FROM node:16

# Step 2: Set the working directory inside the container
WORKDIR /usr/src/app

# Step 3: Copy the package.json and package-lock.json files
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the rest of the application files
COPY . .

# Step 6: Expose port 3000 (or the port your app uses)
EXPOSE 3000

# Step 7: Define the command to run your application
CMD ["npm", "start"]
