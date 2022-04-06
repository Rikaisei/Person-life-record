git checkout -- .
git pull
chmod u+x *.sh
chmod u+x deploy/dev/*.sh

mvn package
