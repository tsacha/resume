#import "@preview/basic-resume:0.2.9": *

// Put your personal information here, replacing mine
#let name = "Sacha Trémoureux"
#let location = "Nort-sur-Erdre (44)"
#let email = "sacha@tremoureux.fr"
#let github = "github.com/tsacha"
#let linkedin = "linkedin.com/in/tsacha"
#let phone = "+33 7 86 46 93 68"

#show: resume.with(
  author: name,
  // All the lines below are optional.
  // For example, if you want to to hide your phone number:
  // feel free to comment those lines out and they will not show.
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  phone: phone,
  accent-color: "#26428b",
  font: "New Computer Modern",
  paper: "a4",
  author-position: left,
  personal-info-position: left,
)

*Senior System Engineer*

== Compétences

- *Kubernetes* : EKS, Helm, ArgoCD, Karpenter, KEDA
- *Cloud & IaC* : AWS, GCP, Azure — Terraform / OpenTofu, FinOps
- *Infrastructure LLM* : Azure OpenAI, Amazon Bedrock, Google Vertex AI
- *Observabilité* : Prometheus, Grafana, OpenTelemetry, Datadog
- *Systèmes & langages* : Linux, Python, Go, Bash

== Expériences

#work(
  title: "Senior System Engineer",
  location: "Nantes",
  company: "iAdvize",
  dates: dates-helper(start-date: "Mars 2022", end-date: "Aujourd'hui"),
)
- À l'initiative de la migration de la plateforme de Nomad vers Kubernetes (EKS) — 150 microservices, environ 12 000 requêtes/seconde.
- Construction de la plateforme cible : autoscaling Karpenter / KEDA, GitOps avec ArgoCD, gestion des secrets via Vault Operator.
- Déploiement de l'infrastructure LLM d'une IA conversationnelle pour l'e-commerce : Azure OpenAI sur 13 régions, embeddings Google Vertex AI, tunnels IPSec vers AWS ; supervision des latences, quotas et coûts.
- Exploitation de la plateforme multi-cloud (AWS principal, GCP / Azure) : Terraform / OpenTofu, migrations de bases de données, Kafka (Amazon MSK).
- FinOps : optimisation continue de la facture AWS — généralisation des instances spot, gestion active des réservations (compute, bases de données), coûts intégrés à chaque décision d'architecture.
- Référent technique de l'équipe système : mentoring, cadrage et chiffrage des projets, standards techniques.
- Contribution à la certification ISO 27001 : audits annuels, PRA / DRP, en lien avec le RSSI.

#work(
  title: "DevOps Engineer",
  location: "Saint-Sébastien-sur-Loire",
  company: "iRaiser",
  dates: dates-helper(start-date: "Mai 2018", end-date: "Mars 2022"),
)
- En charge de l'ensemble de l'infrastructure d'une plateforme de dons en ligne (paiement, SLA, RGPD), exposée à des pics de trafic soudains liés à l'actualité et aux émissions TV.
- Migration de l'infrastructure vers AWS (EC2, ECS, Lambda, CloudFront, DynamoDB, SQS/SNS…) avec IaC Terraform.
- Automatisation des déploiements clients et des instances CRM Odoo via Ansible et Jenkins.
- Modernisation de la supervision (Prometheus, Grafana) et de la collecte de logs (Elasticsearch, Filebeat).

#work(
  title: "Administrateur système",
  location: "Nantes",
  company: "Néocom Multimédia",
  dates: dates-helper(start-date: "Décembre 2017", end-date: "Avril 2018"),
)
- Exploitation d'une infrastructure télécom (Asterisk, Proxmox, Ceph) ; migration vers le cloud public OVH.

#work(
  title: "Administrateur système — Équipe SRE",
  location: "Nantes",
  company: "Weborama",
  dates: dates-helper(start-date: "Juin 2017", end-date: "Décembre 2017"),
)
- Exploitation d'une infrastructure de collecte de données à forte volumétrie et haute disponibilité (Elasticsearch, RabbitMQ, Couchbase).

#work(
  title: "Administrateur systèmes",
  location: "Nantes",
  company: "Capensis",
  dates: dates-helper(start-date: "Octobre 2013", end-date: "Juin 2017"),
)
- Prestations d'administration Linux pour de grands comptes (Decathlon, DCNS, La Poste) : supervision, industrialisation Puppet / Ansible, architectures HA, formations professionnelles.

== Formation

#edu(
  institution: "Université Nancy 2",
  location: "",
  dates: dates-helper(start-date: "2012", end-date: "2013"),
  degree: "Licence pro ASRALL — Systèmes et réseaux (logiciels libres), mention Bien",
)

#edu(
  institution: "IUT de Nantes",
  location: "",
  dates: dates-helper(start-date: "2010", end-date: "2012"),
  degree: "DUT Informatique",
)

== Langues

- *Français* : langue maternelle — *Anglais* : technique courant à l'écrit (documentation, tickets), fonctionnel à l'oral.
