## Getting Started

### Prerequisites

- Docker and Docker Compose
- Minikube
- kubectl
- Python 3.9+

### Local Development

1. Clone the repository:
   ```
   git clone https://github.com/yourusername/flask-todo-kubernetes.git
   cd flask-todo-kubernetes
   ```

2. Run with Docker Compose:
   ```
   docker-compose up
   ```

3. Access the application at http://localhost:3000

### Kubernetes Deployment (Minikube)

1. Start Minikube:
   ```
   minikube start
   ```

2. Apply the Kubernetes configurations:
   ```
   kubectl apply -f mongodb-deployment.yaml
   kubectl apply -f flask-deployment.yaml
   ```

3. Get the service URL:
```
minikube service todo-flask-app --url
```

4. Access the application using the provided URL