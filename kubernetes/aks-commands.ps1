#List currently supported versions
az aks get-versions --location westeurope --output table

#Get AKS credentials
az aks get-credentials -g mshowto-rg -n mshowtok8s

#Open k8s dashboard
az aks browse -g mshowto-rg -n mshowtok8s

#Create ClusterRoleBinding 
kubectl delete ClusterRoleBinding kubernetes-dashboard
kubectl create clusterrolebinding kubernetes-dashboard --clusterrole=cluster-admin --serviceaccount=kube-system:kubernetes-dashboard

# Get secret for k8s dashboard
kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | Select-String  kubernetes-dashboard-token | ForEach-Object { $_ -Split "\s+" } | Select-Object -First 1)

#Configure ACR integration for existing AKS clusters
az aks update -g mshowto-rg -n mshowtok8s --attach-acr mshowto

#Create deployment
kubectl apply -f .\mshowto-deployment.yml

#Delete deployment
kubectl delete -f .\mshowto-deployment.yml

#Create AZDS
az aks use-dev-spaces -g mshowto-rg -n mshowtok8s