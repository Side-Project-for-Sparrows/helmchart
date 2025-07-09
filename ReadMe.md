1. helm dependency update 로  최초1회에 한하여 외부 의존성을 클러스터내에 설치 필요
- 현재 Nginx Ingress를 그렇게 하였음 (gateway로 연결되는)

2. local-path 리소스 수동설치 필요 (helm으로 추후 변경 가능)

3. school-secret 설치 필요
- 시크릿이라 깃레포에 올리지 않았음.

4. rgocd 수동 설치 최초 1회 필요
- kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
- kubectl apply -f /bootstrap/root.yaml
