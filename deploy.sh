oc delete po/winpacman
sleep 30
oc adm new-project winpacman --node-selector=''
oc create -f winpacman.yaml
oc expose po/winpacman --port=8080
oc expose svc/winpacman 
