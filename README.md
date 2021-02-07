# springboot-sample-apps

Deploy on OpenShift 4

1. Login OCP
```
$ oc login
```

2. create new namespace
```
$ oc new-project $PROJ_NAME
```

3. select namespace for apps
```
$ oc project $PROJ_NAME
```

4. create new build with java 11 using binary 
```
$ oc new-build --name=$APP_NAME openshift/java:11 --binary=true
```

5. Upload JAR file
```
$ oc start-build $APP_NAME --from-file="app.jar" --follow
```

6. Create new APP
```
$ oc new-app $APP_NAME
```

7. Expose route to application
```
$ oc expose svc/$APP_NAME
```

