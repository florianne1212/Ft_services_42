
#make sure previous minikube are deleted and docker
sudo usermod -aG docker $(whoami)
minikube delete
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q) 
#start the deployment
minikube start --vm-driver=docker

#start the dashboard
#minikube dashboard

minikube addons enable dashboard
minikube addons enable metrics-server
eval $(minikube docker-env)
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/metallb.yaml
# On first install only


#kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"

#kubectl apply -f srcs/metallb/metallb-config.yaml
docker build -t alpine_nginx srcs/nginx
kubectl apply -f srcs/nginx/nginx-deployment.yaml
#docker build -t alpine_mysql srcs/mysql/
#kubectl apply -f srcs/mysql/mysql-deployment.yaml 
#docker build -t alpine_wordpress srcs/wordpress/
#kubectl apply -f srcs/wordpress/wordpress-deployment.yaml
#docker build -t alpine_phpmyadmin srcs/phpmyadmin/
#kubectl apply -f srcs/phpmyadmin/php-deployment.yaml
kubectl get pods