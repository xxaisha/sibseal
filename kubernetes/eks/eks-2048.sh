aws sts get-caller-identity
kubectl get nodes
aws eks update-kubeconfig --region us-east-1 --name sib-cluster
kubectl create namespace playground
kubens playground
# create the config file in YAML to deploy 2048 game pod into the cluster
nano 2048-pod.yaml
### code starts ###
apiVersion: v1
kind: Pod
metadata:
   name: 2048-pod
   labels:
      app: 2048-ws
spec:
   containers:
   - name: 2048-container
     image: blackicebird/2048
     ports:
       - containerPort: 80
### code ends ###
kubectl apply -f 2048-pod.yaml -n playground
kubectl config set-context --current --namespace=playground
kubectl get pods

### Task 5: Setup Load Balancer Service ### 
sudo nano mygame-svc.yaml         
### code starts ###
apiVersion: v1
kind: Service
metadata:
   name: mygame-svc
spec:
   selector:
      app: 2048-ws
   ports:
   - protocol: TCP
     port: 80
     targetPort: 80
   type: LoadBalancer
### code ends ###                                                                                                                       
kubectl apply -f mygame-svc.yaml -n playground
kubectl describe svc mygame-svc

# Access the LoadBalancer Ingress on the kops instance
curl <LoadBalancer_Ingress>:<Port_number>
or
curl a06aa56b81f5741268daca84dca6b4f8-694631959.us-east-1.elb.amazonaws.com:80
(try this from your laptop, not from your cloudshell)