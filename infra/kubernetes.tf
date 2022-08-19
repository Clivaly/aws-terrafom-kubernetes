resource "kubernetes_deployment" "Django-API" {
  metadata {
    name = "django-api"
    labels = {
      nome = "django"
    }
  }

  spec {
    replicas = 3

    selector {
      match_labels = {
        nome = "django"
      }
    }

    template {
      metadata {
        labels = {
          nome = "django"
        }
      }

      spec {
        container {
          image = "123456789101.dkr.ecr.us-west-2.amazonaws.com/prod:v1"
          name  = "django"

          resources {
            limits = {
              cpu    = "0.5"
              memory = "512Mi"
            }
            requests = {
              cpu    = "250m"
              memory = "50Mi"
            }
          }

          liveness_probe {
            http_get {
              path = "/clientes/"
              port = 8000
            }

            initial_delay_seconds = 30
            period_seconds        = 30
          }
        }
      }
    }
  }
}

# Kubernetes Service - Load Balancer
resource "kubernetes_service" "LoadBalancer" {
  metadata {
    nome = "load-balancer-django-api"
  }
  spec {
    selector = {
        nome = "django"
    }
    port {
      port        = 8000   # Machine port
      target_port = 8000   # Container port
    }
    type = "LoadBalancer"
  }
}

data "kubernetes_service" "DNSname" {
  metadata {
    nome = "load-balancer-django-api"
  }
}

output "URL" {
  value = data.kubernetes_service.DNSname.status
}