
#make sure previous minikube are deleted
minikube delete

#start the deployment
minikube start --driver=docker

#start the dashboard
#minikube dashboard

minikube addons enable dashboard

kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/metallb.yaml
# On first install only
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"

docker build -t nginx srcs/nginx
kubectl apply -f srcs/nginx/nginx-deployment.yaml

kubectl get pods