# memulai membuat image dengan base image node tag 14.21.2-alpine
FROM node:14.21.2-alpine
# pindah working directory to folder /app
WORKDIR /app
# menyalin semua file dimana posisi dockerfile berada ke folder saat ini /app kecuali semua yg di exclude di .dockerignore
COPY . .
# menambah environment variable dengan key NODE_ENV dengan isi production, key DB_HOST dengan isi item-db
ENV NODE_ENV=production DB_HOST=item-db
# menjalankan beberapa perintah seperti npm install --production --unsafe-perm untuk menginstall dependencies yang cuma buat production
# perintah npm run build akan membangun project ke production
RUN npm install --production --unsafe-perm && npm run build
# mengexpose port agar digunakan di host
EXPOSE 8080
# menjalankan perintah npm start untuk memulai sebuah aplikasi
CMD npm start