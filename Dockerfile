FROM node:20-alpine 
WORKDIR /usr/local/app 

# Install dependencies 
COPY package.json ./
COPY yarn.lock ./
RUN yarn --frozen-lockfile 


# Copy source
COPY . .

RUN yarn 
CMD ["yarn", "dev"]
