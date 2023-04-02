$ cd 05_azure
$ mkdir test-environment3
$ cd test-environment3
$ git clone git@github.com:roshiwata/react-temp.git
$ cd react-temp
$ git checkout -b be-image3 origin/be-image3
$ docker-compose build
Successfully tagged react-temp_node:latest

$ az login
$ az acr login --name wesoffiresis
$ docker tag react-temp_node:latest wesoffiresis.azurecr.io/react-sample-ok:v1
$ docker push wesoffiresis.azurecr.io/react-sample-ok:v1

AKSを作成（ex. wes-todo-sample）

$ az acr login --name wesoffiresis
$ az aks get-credentials --resource-group wes-offi-p --name wes-todo-sample
$ kubectl create secret docker-registry acr-credential --docker-server=wesoffiresis.azurecr.io --docker-username=wesoffiresis --docker-password=G5U8IlHQZJXHPIi7M01Cjvb9X3l5UZt4/5xTptKZLw+ACRC9JQAz --docker-email=tatsuhiro.0323@gmail.com
$ cd kubernetes
$ kubectl apply -f deploy.yml

kubectl get podsで起動確認
NAME                               READY   STATUS    RESTARTS   AGE
react-todo-sample-cd8798b5-9xl9h   1/1     Running   0          71s


kubectl get svcで外部IPアドレス確認
NAME                TYPE           CLUSTER-IP    EXTERNAL-IP    PORT(S)        AGE
kubernetes          ClusterIP      10.0.0.1      <none>         443/TCP        4m38s
react-todo-sample   LoadBalancer   10.0.194.36   20.89.189.99   80:32387/TCP   79s

ブラウザにIPアドレスを貼り付けてアクセス