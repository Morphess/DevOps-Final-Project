# Відповідність назв скриншотів

Число на початку нової назви зберігає номер оригінального файлу. Зображення скопійовані без зміни вмісту та роздільності.

| Оригінал | Нова назва | Зміст |
| --- | --- | --- |
| 1.png | [01-python-backend-local-http-200.png](01-python-backend-local-http-200.png) | Локальний запуск Python backend і відповідь HTTP 200 на GET /. |
| 2.png | [02-docker-build-and-local-run.png](02-docker-build-and-local-run.png) | Збірка Docker-образу, запуск контейнера та перевірка HTTP 200. |
| 3.png | [03-dockerhub-repository-created.png](03-dockerhub-repository-created.png) | Створення репозиторію morphess/devops-backend; на цьому початковому етапі він ще приватний. |
| 4.png | [04-github-actions-secrets.png](04-github-actions-secrets.png) | Назви GitHub Secrets для Docker Hub; значення секретів не відображаються. |
| 5.png | [05-github-actions-first-build-success.png](05-github-actions-first-build-success.png) | Перший успішний запуск workflow збірки й публікації образу. |
| 6.png | [06-dockerhub-public-image-tags.png](06-dockerhub-public-image-tags.png) | Публічний репозиторій Docker Hub із тегами latest і SHA коміту. |
| 7.png | [07-dockerhub-pull-and-container-check.png](07-dockerhub-pull-and-container-check.png) | Завантаження образу з Docker Hub, запуск контейнера та перевірка відповіді. |
| 8.png | [08-aws-default-vpc-subnets.png](08-aws-default-vpc-subnets.png) | Перевірка стандартної VPC та підмереж у трьох зонах доступності. |
| 9.png | [09-aws-iam-user-and-mfa.png](09-aws-iam-user-and-mfa.png) | IAM-користувач devops-final, призначені політики та підтвердження налаштування MFA. |
| 10.png | Не включено | Містить URL процесу авторизації AWS та ARN облікового запису. Оригінал залишається у вихідному архіві. Для README достатньо опису входу без цього зображення. |
| 11.png | [11-terraform-initial-plan.png](11-terraform-initial-plan.png) | Проміжний план Terraform: 6 ресурсів до додавання; ще не фінальний план EKS. |
| 12.png | [12-terraform-eks-saved-plan.png](12-terraform-eks-saved-plan.png) | Збережений план eks.tfplan: 8 ресурсів до додавання, Kubernetes 1.36. |
| 13.png | [13-eks-node-group-active.png](13-eks-node-group-active.png) | Успішний apply та node group ACTIVE: одна нода m7i-flex.large. |
| 14.png | [14-eks-node-ready.png](14-eks-node-ready.png) | Контекст morphess-devops і робоча нода у стані Ready. |
| 15.png | [15-eks-system-pods-running.png](15-eks-system-pods-running.png) | Системні компоненти aws-node, CoreDNS і kube-proxy працюють. |
| 16.png | [16-nginx-terraform-helm-install.png](16-nginx-terraform-helm-install.png) | Встановлення NGINX Ingress Controller через Terraform і Helm. |
| 17.png | [17-nginx-service-and-ingress-class.png](17-nginx-service-and-ingress-class.png) | NGINX Pod Running, Service LoadBalancer та IngressClass nginx. |
| 18.png | [18-dns-authoritative-cname-check.png](18-dns-authoritative-cname-check.png) | Авторитетний DNS ns10.uadns.com повертає правильні CNAME для app та argocd. |
| 19.png | [19-nicua-cname-records.png](19-nicua-cname-records.png) | DNS-записи app та argocd у NIC.UA спрямовані на AWS Load Balancer. |
| 20.png | [20-nginx-reachable-before-app-ingress.png](20-nginx-reachable-before-app-ingress.png) | Проміжна перевірка: NGINX доступний, але до створення маршруту застосунку відповідає 404. |
| 21.png | [21-argocd-terraform-helm-install.png](21-argocd-terraform-helm-install.png) | Успішне встановлення Argo CD через Terraform і Helm. |
| 22.png | [22-argocd-pods-and-services.png](22-argocd-pods-and-services.png) | Перевірка Pod і Service Argo CD; redis-secret-init завершився зі статусом Completed. |
| 23.png | [23-cert-manager-installed.png](23-cert-manager-installed.png) | Встановлення cert-manager і три його компоненти у стані Running. |
| 24.png | [24-letsencrypt-clusterissuer-ready.png](24-letsencrypt-clusterissuer-ready.png) | ClusterIssuer letsencrypt-prod готовий: Ready=True. |
| 25.png | [25-argocd-tls-certificate-ready.png](25-argocd-tls-certificate-ready.png) | TLS-сертифікат Argo CD готовий; Ingress має домен та адресу балансувальника. |
| 26.png | [26-argocd-https-login-page.png](26-argocd-https-login-page.png) | Сторінка входу Argo CD відкривається за власним доменом через HTTPS. |
| 27.png | [27-argocd-https-http-200.png](27-argocd-https-http-200.png) | HTTPS-відповідь Argo CD: HTTP 200 із перевіркою TLS, через --connect-to для обходу старого DNS. |
| 28.png | [28-argocd-before-application-creation.png](28-argocd-before-application-creation.png) | Інтерфейс Argo CD після входу, до створення Application. |
| 29.png | [29-application-resources-and-tls-ready.png](29-application-resources-and-tls-ready.png) | Pod, Service, Ingress та сертифікат застосунку; фінальний стан Certificate Ready=True. |
| 30.png | [30-application-version-1-0-0.png](30-application-version-1-0-0.png) | Початкова версія застосунку 1.0.0 доступна через HTTPS. |
| 31.png | [31-argocd-application-synced-healthy.png](31-argocd-application-synced-healthy.png) | Application devops-backend: Healthy і Synced, гілка main, шлях k8s/app. |
| 32.png | [32-github-actions-gitops-workflow-success.png](32-github-actions-gitops-workflow-success.png) | Успішний workflow після додавання автоматичного оновлення маніфесту. |
| 33.png | [33-gitops-manifest-before-cluster-sync.png](33-gitops-manifest-before-cluster-sync.png) | Проміжний стан: бот уже записав SHA-тег у Git, а Deployment ще використовує latest. |
| 34.png | [34-github-actions-build-and-manifest-update.png](34-github-actions-build-and-manifest-update.png) | Усі кроки workflow, включно з Update deployment image in Git, виконані успішно. |
| 35.png | [35-deployment-sha-after-initial-refresh.png](35-deployment-sha-after-initial-refresh.png) | Перше оновлення Deployment до SHA-тега після ручного refresh; це ще не фінальна перевірка автоматичного циклу. |
| 36.png | [36-application-version-bump-commit.png](36-application-version-bump-commit.png) | Зміна версії з 1.0.0 на 1.0.1, коміт bc1eeca та push у main. |
| 37.png | [37-github-actions-version-1-0-1-success.png](37-github-actions-version-1-0-1-success.png) | Workflow для коміту зі зміною версії на 1.0.1 успішно завершений. |
| 38.png | [38-application-version-1-0-1.png](38-application-version-1-0-1.png) | Після оновлення застосунок повертає 1.0.1; ім’я Pod відрізняється від початкового. |
| 39.png | [39-gitops-final-sha-synced-healthy.png](39-gitops-final-sha-synced-healthy.png) | Deployment використовує SHA коміту bc1eeca…, Application має статус Synced і Healthy. |
| 40.png | [40-https-redirect-via-load-balancer.png](40-https-redirect-via-load-balancer.png) | Обидва HTTP-запити повертають 301 на HTTPS; перевірка через --connect-to. |
| 41.png | [41-dns-fix-and-direct-https-redirect.png](41-dns-fix-and-direct-https-redirect.png) | Після тимчасової зміни DNS обидва домени повертають 301 без --connect-to; наприкінці налаштування скасовано. |
