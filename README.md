# OpenShift Template for containerized codeMD

Thank you for your great application, codiMD community and developers(https://github.com/hackmdio/codimd)

### I DIDN'T MODIFY ANY CODE from codiMD repo


This template deploys:
- codiMD
- PostgreSQL for codiMD data store

### To deploy codiMD

```
oc process -f https://raw.githubusercontent.com/tokishita/codimd-openshift-template/master/codimd-openshift-template.yml | oc apply -f -
```

### Deploy codiMD with PV ( volume for PostgreSQL Pod(data dir) and codiMD Pod( uploads file store )

```
oc process -f https://raw.githubusercontent.com/tokishita/codimd-openshift-template/master/codimd-openshift-template.yml  DATA_PERSISTENT=true | oc apply -f -
```
