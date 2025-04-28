# Development stage
FROM node:23 AS development

ENV NODE_ENV=development
WORKDIR /app
COPY package*.json ./
COPY prisma ./prisma
RUN yarn install --frozen-lockfile --ignore-scripts
RUN yarn global add typescript @types/node ts-node prisma
COPY . .
RUN npx prisma generate
RUN yarn build
RUN ls -la /app/node_modules/.prisma
# Compile prisma
RUN npx tsc prisma/seed.ts

CMD ["yarn", "dev"]