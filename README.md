# Homelab  

A personal AI/ML infrastructure cluster  built for learning and 
experimentation for API Model serving, MlOps, LLM serving, Machine Learning and Data Engineering. 
The Homelab is Currently at a single node, expansion will take place with time.


## Current Hardware
| Node       | Model  | Role                    | RAM | CPU      |
|------------|--------|-------------------------|-----|----------|
| control-01 | M720q  | Everything (for now)    | 8GB | i5-8500T |



## Planned Cluster
| Node       | Model  | Role                    |
|------------|--------|-------------------------|
| control-01 | M710q  | k3s control plane       |
| worker-01  | M720q  | k3s worker              |
| worker-02  | M720q  | k3s worker              |
| worker-03  | M920q  | k3s worker + compute    |
| compute-01 | M920sff  | GPU compute + NAS       |


## current Stack
- **OS:** Ubuntu Server 24.04 LTS
- MLOps stack -> MLflow,jupyterhub
- API serving -> Django




## Planned Stack 
- MLOps stack -> BentoMl
- Observability -> Prometheus + Grafana
- Data stack ->  MiniIO
- LLM stack -> ollma
- API serving -> FastApi




## Progress