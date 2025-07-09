1. helm dependency update 로  최초1회에 한하여 외부 의존성을 클러스터내에 설치 필요
- 현재 Nginx Ingress를 그렇게 하였음 (gateway로 연결되는)
- metrics server을 수동설치하여 hpa 설정 가능

2. local-path 리소스 수동설치 필요 (helm으로 추후 변경 가능)

3. secret 설치 필요
   - 시크릿이라 깃레포에 올리지 않았음.
   - school-secret
   - user-secret
4. argocd 수동 설치 최초 1회 필요
   - kubectl create namespace argocd
   - kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
   - kubectl -n argocd delete svc argocd-server
   - kubectl apply -f bootstrap/argocd-server.yaml
   - # 초기 비밀번호 보기
   - kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
   - argocd-server 에 보이는 포트번호 (ex 192.168.0.17:32043) 접속 및 비밀번호 변경 (아이디 : admin)
   - kubectl apply -f /bootstrap/apps.yaml