FROM node:18.17.1

WORKDIR /app

# Set environment variables
ENV PORT=3000
ENV NODE_ENV=production
ENV MODEL_URL='https://storage.googleapis.com/submissionmlgc-galin-model/model.json'

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the application
COPY . .

# Make port 3000 available
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
