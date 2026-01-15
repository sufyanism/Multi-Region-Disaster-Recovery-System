# Multi-Region Disaster Recovery System

![Architecture Diagram](https://via.placeholder.com/600x200?text=Multi-Region+DR+Architecture)

This project demonstrates a **Multi-Region Disaster Recovery (DR) System** for cloud applications, ensuring high availability, automated failover, and minimal data loss in case of regional outages.

## Features
- Multi-region deployment with AWS
- Automated failover using Route53 health checks
- Stateless Dockerized application
- Replicated database instances
- Infrastructure as Code (Terraform)
- Health monitoring and failover scripts

## Architecture
- **Primary Region**: Handles live traffic under normal conditions
- **Secondary Region**: Standby for failover, maintains replicated data
- **Route53 DNS**: Monitors health and switches traffic automatically
- **Application**: Stateless Flask app in Docker
- **Database**: PostgreSQL instances replicated across regions

## Project Structure
```
multi-region-dr/
├── README.md
├── infrastructure/
│   ├── provider.tf
│   ├── vpc.tf
│   ├── rds.tf
│   └── route53.tf
├── app/
│   ├── app.py
│   ├── requirements.txt
│   └── Dockerfile
└── scripts/
    └── failover.py
```

## Deployment Steps
1. **Provision Infrastructure**
   ```bash
   terraform init
   terraform plan
   terraform apply
   ```
2. **Build Docker App**
   ```bash
   docker build -t multi-region-app ./app
   ```
3. **Run App**
   ```bash
   docker run -p 80:80 multi-region-app
   ```
4. **Test Failover**
   ```bash
   python scripts/failover.py
   ```

## Requirements
- AWS Account with IAM permissions
- Terraform >= 1.5
- Docker
- Python 3.11+
- Boto3 library for AWS SDK in Python

## Monitoring & Testing
- Route53 health checks
- Flask `/health` endpoint
- Manual or automated failover testing

## Future Enhancements
- Active-Active multi-region deployment
- Zero-downtime failover
- Chaos testing for disaster simulation
- Integration with Prometheus / CloudWatch for alerting

