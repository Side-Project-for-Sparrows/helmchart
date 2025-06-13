helm-chart/
│── charts/                      # (Optional) 하위 차트
│── templates/                   # Helm 템플릿 (K8s 리소스)
│   ├── ingress.yaml             # Ingress 설정
│   ├── deployment.yaml          # EchoBox Deployment
│   ├── service.yaml             # EchoBox Service
│   ├── _helpers.tpl             # 템플릿 변수 정의
│── values.yaml                  # 기본 설정 (Values 파일)
│── Chart.yaml                   # Helm 차트 메타데이터
│── README.md                    # 차트 설명