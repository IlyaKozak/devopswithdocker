FROM node:14-alpine

WORKDIR /usr/src/app

# Application Exposed Port
EXPOSE 5000

# Dependencies installation
COPY package*.json ./
RUN npm install --loglevel=error
# Install npm package globally called serve to serve the project
RUN npm install -g serve
RUN apk add --update xsel

# Build the app
COPY . .
RUN REACT_APP_BACKEND_URL=http://localhost:8080/ npm run build

# Run the app
CMD ["serve", "-s", "-l", "5000", "build"]