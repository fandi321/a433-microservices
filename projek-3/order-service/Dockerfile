# Gunakan base image Node.js versi LTS
FROM node:14

# Set working directory
WORKDIR /usr/src/app

# Copy package.json dan package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy seluruh kode ke dalam container
COPY . .

# Expose port yang digunakan oleh service
EXPOSE 3000

# Environment variable
ENV PORT=3000
ENV AMQP_URL="amqp://localhost:15672"

# Command untuk menjalankan aplikasi
CMD ["npm", "start"]

