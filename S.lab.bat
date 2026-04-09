@echo off

echo ============================================
echo 🚀 SHIV COMMAND LIBRARY (ULTIMATE EDITION)
echo ============================================

echo ================ DOCKER BASICS ================
echo.
echo List Containers:
echo docker ps
echo docker ps -a
echo.
echo Start / Stop / Restart:
echo docker start ^<id^>
echo docker stop ^<id^>
echo docker restart ^<id^>
echo.
echo Delete:
echo docker rm ^<id^>
echo docker rmi ^<image-id^>
echo.
echo Run Container:
echo docker run nginx
echo docker run -d -p 8080:80 nginx
echo.
echo Images:
echo docker images
echo docker pull nginx
echo.
echo Logs ^& Exec:
echo docker logs ^<id^>
echo docker exec -it ^<id^> bash
echo.
echo Build:
echo docker build -t myapp .
echo docker run myapp

echo.
echo ================ KUBERNETES =====================
echo.
echo Check:
echo kubectl get pods
echo kubectl get deployments
echo kubectl get services
echo.
echo Pod:
echo kubectl run nginx-pod --image=nginx --restart=Never
echo kubectl delete pod nginx-pod
echo.
echo Deployment:
echo kubectl create deployment myapp --image=nginx
echo kubectl scale deployment myapp --replicas=3
echo.
echo Debug:
echo kubectl describe pod ^<name^>
echo kubectl logs ^<name^>

echo.
echo ================ AZURE ==========================
echo.
echo RBAC:
echo Portal ^> Resource Group ^> IAM ^> Add Role
echo.
echo VM:
echo Portal ^> Virtual Machine ^> Create
echo.
echo Monitor:
echo VM ^> Monitoring ^> Enable Insights

echo.
echo ================================================

echo ============================================
echo 🚀 SHIV COMMAND LIBRARY (ULTIMATE)
echo ============================================

echo.
echo [Q1] List Containers
echo Why: Check running and stopped containers
echo docker ps
echo docker ps -a
echo Output: Shows running and all containers

echo.
echo [Q2] Run Nginx
echo Why: Run web server
echo docker run -d -p 8080:80 --name mynginx nginx
echo Open: http://localhost:8080
echo Output: Nginx welcome page

echo.
echo [Q3] Azure RBAC
echo Why: Assign roles
echo Steps: Portal ^> Resource Group ^> IAM ^> Add Role
echo Output: Role assigned

echo.
echo [Q4] Ubuntu
echo Why: Linux container
echo docker pull ubuntu
echo docker run -it ubuntu
echo exit
echo Output: root@container:/#

echo.
echo [Q5] Kubernetes Pod
echo Why: Run container in K8s
echo kubectl run nginx-pod --image=nginx --restart=Never
echo kubectl get pods
echo Output: nginx-pod Running

echo.
echo [Q6] Deployment
echo Why: Multiple replicas
echo kubectl create deployment myapp --image=nginx
echo kubectl scale deployment myapp --replicas=3
echo Output: 3 pods running

echo.
echo [Q7] Azure VM
echo Why: Create virtual machine
echo Steps: Portal ^> VM ^> Create
echo Output: VM running

echo.
echo [Q8] Docker + ACR
echo Why: Push image to cloud
echo docker build -t myapp .
echo docker push ^<acr-url^>
echo Output: Image pushed

echo.
echo [Q9] Jenkins
echo Why: CI/CD automation
echo Steps: Pipeline build and deploy
echo Output: App auto deployed

echo.
echo [Q10] Azure Monitor
echo Why: Monitoring VM
echo Steps: VM ^> Monitoring ^> Enable
echo Output: Metrics visible

echo.
echo [Q11] K8s Commands
echo kubectl get pods
echo kubectl describe pod ^<name^>
echo kubectl logs ^<name^>
echo kubectl delete pod ^<name^>
echo kubectl get services
echo Output: Pod details/logs

echo.
echo [Q12] Docker Commands
echo docker ps
echo docker images
echo docker pull nginx
echo docker run nginx
echo docker stop ^<id^>
echo Output: Container operations

echo.
echo [Q13] Create Container
echo docker run nginx
echo Output: Container created

echo.
echo [Q14] Port Mapping
echo docker run -p 8080:80 nginx
echo Output: Accessible on localhost:8080

echo.
echo [Q15] Build Image
echo docker build -t myapp .
echo docker run myapp
echo Output: App runs

echo ============================================

echo 🔥 TIP:
echo Use --help:
echo docker --help
echo kubectl --help

echo ============================================

