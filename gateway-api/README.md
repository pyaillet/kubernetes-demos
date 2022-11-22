# Gateway API GKE Controller demo

## How to use

Create a cluster:

```sh
./create-cluster.sh
```

Deploy the gateway:

```sh
kubectl apply -f external-gateway-demo.yaml
```

Wait until the gateway (really the LB) is ready and get the external IP:

```sh
watch kubectl get gateway
```

Edit the HTTPRoutes, replace the IP address in the hostnames, and deploy the apps:

```sh
kubectl apply -f app1/ns.yaml -f app2/ns.yaml
```

Deploy the applications:

```sh
kubectl apply -f app1 -f app2
```

Test the connections:

```sh
curl http://app1.<IP>.nip.io
curl http://app2.<IP>.nip.io
```

## Related content

The slides of the presentation are available [here](https://docs.google.com/presentation/d/1p-heSfxrXyVzvBwMnpDUJZpOYtIJBN_H-MkDcowllmA/edit?usp=sharing)
