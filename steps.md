# Steps

## Step 4

Created EKS cluster
- followed steps to create policy for the controller and checked all the config options

Then set up node group in console with t3.small instances, and min 2 / max 4 nodes per group

Set up kubectl, following <https://docs.aws.amazon.com/eks/latest/userguide/create-kubeconfig.html>
- `aws eks update-kubeconfig --region us-east-1 --name CC-HW2 --profile cc --alias cc-context`
where "cc" is the name of the profile for the AWS user with access to the cluster.

You can then use `kubectl config use-context cc-context` to switch the cli to that context.

Then I ran 
```
kubectl apply -f mongodb-deployment.yaml
kubectl apply -f flask-deployment.yaml
```

And then 
```
$ kubectl get svc
NAME             TYPE           CLUSTER-IP       EXTERNAL-IP                                                               PORT(S)        AGE
kubernetes       ClusterIP      10.100.0.1       <none>                                                                    443/TCP        32m
mongodb          ClusterIP      10.100.157.99    <none>                                                                    27017/TCP      5m1s
todo-flask-app   LoadBalancer   10.100.121.213   afb91098cab0b45309c6d0d90a176706-1651231751.us-east-1.elb.amazonaws.com   80:32599/TCP   5m1s
```
```
```

