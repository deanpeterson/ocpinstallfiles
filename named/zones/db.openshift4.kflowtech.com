$TTL    604800
@       IN      SOA     webservice.openshift4.kflowtech.com. admin.openshift4.kflowtech.com. (
                  1     ; Serial
             604800     ; Refresh
              86400     ; Retry
            2419200     ; Expire
             604800     ; Negative Cache TTL
)

; name servers - NS records
    IN      NS      webservice

; name servers - A records
webservice.openshift4.kflowtech.com.          IN      A       192.168.1.51

; OpenShift Container Platform Cluster - A records
bootstrap.openshift4.kflowtech.com.        IN      A      192.168.1.206
master1.openshift4.kflowtech.com.        IN      A      192.168.1.201
master2.openshift4.kflowtech.com.         IN      A      192.168.1.202
master3.openshift4.kflowtech.com.         IN      A      192.168.1.203
worker1.openshift4.kflowtech.com.        IN      A      192.168.1.204
worker2.openshift4.kflowtech.com.        IN      A      192.168.1.205

; OpenShift internal cluster IPs - A records
api.openshift4.kflowtech.com.    IN    A    192.168.1.211
api-int.openshift4.kflowtech.com.    IN    A    192.168.1.211
*.apps.openshift4.kflowtech.com.    IN    A    192.168.1.211
etcd-0.openshift4.kflowtech.com.    IN    A     192.168.1.201
etcd-1.openshift4.kflowtech.com.    IN    A     192.168.1.202
etcd-2.openshift4.kflowtech.com.    IN    A    192.168.1.203
console-openshift-console.apps.openshift4.kflowtech.com.     IN     A     192.168.1.211
oauth-openshift.apps.openshift4.kflowtech.com.     IN     A     192.168.1.211

; OpenShift internal cluster IPs - SRV records
_etcd-server-ssl._tcp.openshift4.kflowtech.com.    86400     IN    SRV     0    10    2380    etcd-0
_etcd-server-ssl._tcp.openshift4.kflowtech.com.    86400     IN    SRV     0    10    2380    etcd-1
_etcd-server-ssl._tcp.openshift4.kflowtech.com.    86400     IN    SRV     0    10    2380    etcd-2

