import boto3

route53 = boto3.client("route53")

def trigger_failover():
    print("Failover triggered")

if __name__ == "__main__":
    trigger_failover()
