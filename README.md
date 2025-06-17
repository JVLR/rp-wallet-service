# Wallet Service

Wallet Service is a backend REST API developed with Java with framework micronaut. It allows wallet management and
provides full
API documentation via Swagger. The system uses PostgreSQL as the database and Docker for containerization.

---

## Table of Contents

- [Tech Stack](#-tech-stack)
- [Requirements](#-requirements)
- [Installation](#-installation)
- [Running the Application](#-running-the-application)
- [API Documentation](#-api-documentation)
- [Postman Collection](#-postman-collection)
- [Testing](#-testing)

---

## Stack

- **Java 21**
- **Micronaut**
- **PostgreSQL**
- **Docker & Docker Compose**
- **Swagger (OpenAPI)**
- **Maven**
- **JPA**

---

---

## Requirements

Make sure the following tools are installed on your system:

- [Java 21+](https://adoptium.net/)
- [Maven 3.8+](https://maven.apache.org/)
- [Docker](https://www.docker.com/)
- [Git](https://git-scm.com/)
- [Postman](https://www.postman.com/) (optional, for testing)

---

## Installation

Clone the repository and navigate into the project directory:

```bash
git https://github.com/JVLR/rp-wallet-service.git
cd rp-wallet-service
```

Install dependencies:

```bash
mvn install
```

---

## ▶ Running the Application

Start the application using Docker Compose:

```bash
docker compose up -d
```

This will spin up:

- Micronaut api container
- A PostgreSQL container

The API will be available at:

```
http://localhost:8080/api/wallet-service/v1/wallets/recpay/
```

---

## 📄 API Documentation

Swagger UI is available at:

```
http://localhost:8080/api/wallet-service/v1/wallets/swagger-ui/index.html
```

It provides full access to all endpoints and their descriptions.

---

## 📬 Postman Collection

A Postman collection file (`wallet_service.postman_collection.json`) is included at the root of the project.

You can import it into [Postman](https://www.postman.com/) to test all available endpoints.

**⚠️ Warning:** Always use the endpoint /login to obtain the token before making any requests.

---

##### For running local config VM options:

```yaml
-Dmicronaut.environments=local
```

## 🧪 Testing

To run unit test use:

```bash
mvn test
```

---

### Enjoy and contribute to the Wallet Service! If you have any questions or issues, feel free to open an issue on GitHub.