
# 🔐 Secure User Dashboard — Backend

This is the **backend API** of the Secure User Dashboard, built using Node.js, TypeScript, PostgreSQL, and Prisma. It handles user authentication, password reset, profile management, and admin-based role controls — all within a secure and scalable architecture. The backend is fully Dockerized and ready for deployment.

---

## 🚀 Features

- 🔐 JWT Authentication & Role-based Authorization
- 📬 Forgot and Reset Password Workflow
- 👤 View & Update User Profile
- 🧑‍💼 Admin: Manage Users and Roles
- 🌍 RESTful API Structure
- 🐳 Docker + Docker Compose ready

---

## 🛠️ Tech Stack

| Layer        | Technology           |
|--------------|----------------------|
| Runtime      | Node.js              |
| Language     | TypeScript           |
| Server       | Express.js           |
| ORM          | Prisma               |
| DB           | PostgreSQL           |
| Auth         | JWT + Bcrypt         |
| Container    | Docker + Docker Compose |
| Env Config   | dotenv               |

---

## 📁 Project Structure

\`\`\`
backend/
├── src/
│   ├── config/            # Prisma client
│   ├── controllers/       # API logic
│   ├── middlewares/       # Auth, role protection
│   ├── routes/            # All route definitions
│   ├── services/          # Core business logic
│   ├── utils/             # JWT and helpers
│   └── index.ts           # App entry
├── prisma/
│   └── schema.prisma      # Database schema
├── Dockerfile
├── docker-compose.yml
└── .env
\`\`\`

---

## ⚙️ Getting Started

### 1. Clone the project

\`\`\`bash
git clone https://github.com/yourusername/secure-user-dashboard.git
cd secure-user-dashboard/backend
\`\`\`

### 2. Install dependencies

\`\`\`bash
npm install
\`\`\`

### 3. Configure environment

Create a \`.env\` file:

\`\`\`env
PORT=5000
DATABASE_URL="postgresql://postgres:postgres@localhost:5432/secure_dashboard"
JWT_SECRET=your_super_secret_key
\`\`\`

---

## 🧱 Prisma Setup

### Run migrations

\`\`\`bash
npx prisma migrate dev --name init
\`\`\`

### Generate Prisma client

\`\`\`bash
npx prisma generate
\`\`\`

---

## 🐳 Docker Setup

### 1. Build & Run backend and database

\`\`\`bash
docker-compose up --build
\`\`\`

This will:
- Launch **PostgreSQL** container
- Build and run the **backend server**
- Use \`.env\` for environment config

---

## 🔐 API Endpoints

### Auth

| Method | Endpoint                     | Description                 |
|--------|------------------------------|-----------------------------|
| POST   | \`/api/auth/register\`         | Register a new user         |
| POST   | \`/api/auth/login\`            | Login and receive JWT       |
| POST   | \`/api/auth/forgot-password\`  | Send password reset link    |
| POST   | \`/api/auth/reset-password\`   | Reset password using token  |

### Users

| Method | Endpoint                 | Access         |
|--------|--------------------------|----------------|
| GET    | \`/api/users/me\`          | Authenticated  |
| PUT    | \`/api/users/me\`          | Authenticated  |
| GET    | \`/api/users\`             | Admin only     |
| PUT    | \`/api/users/:id/role\`    | Admin only     |

### Roles

| Method | Endpoint             | Access      |
|--------|----------------------|-------------|
| GET    | \`/api/roles\`         | Admin only  |
| GET    | \`/api/roles/:id\`     | Admin only  |
| POST   | \`/api/roles\`         | Admin only  |
| PUT    | \`/api/roles/:id\`     | Admin only  |
| DELETE | \`/api/roles/:id\`     | Admin only  |

---

## 📬 Seed Roles (Optional)

To create default roles (\`admin\`, \`user\`, \`manager\`), you can write a seed script using Prisma and run it manually.

---

## 📄 License

MIT
# secure-user-be
