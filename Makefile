all: pouta-course rahti-course jekyll

clean:
	rm -rf csc-cloud
	rm pouta-course/markdown/index.md
	rm rahti-course/markdown/index.md

jekyll: csc-cloud

csc-cloud: ./md/00-CloudBasics.md ./md/01-BasicsOfVMs.md ./md/02-GettingAccess.md ./md/03-CreateConfigVMs.md ./md/04-PersistentStorage.md ./md/05-OpenStackCLI.md ./md/06-AppDeployment.md ./md/07-Introduction-Rahti.md ./md/075-BasicsOfContainers.md ./md/08-Templates.md ./md/09-GettingAccess.md ./md/10-CreatingContainers.md ./md/12-AppDeployment.md ./md/11-OpenShiftCLI.md ./md/13-AppPackaging.md
	bundle exec jekyll build --destination csc-cloud

pouta-course: pouta-course/markdown/index.md

pouta-course/markdown/index.md: ./md/00-CloudBasics.md ./md/01-BasicsOfVMs.md ./md/02-GettingAccess.md ./md/03-CreateConfigVMs.md ./md/04-PersistentStorage.md ./md/05-OpenStackCLI.md ./md/055-pouta-management.md ./md/06-AppDeployment.md ./md/07-Advanced-topics-and-exercises.md ./pouta-course/markdown/title.md ./pouta-course/markdown/end.md
	cat ./pouta-course/markdown/title.md >pouta-course/markdown/index.md
	echo '---' >>pouta-course/markdown/index.md
	cat ./md/00-CloudBasics.md >>pouta-course/markdown/index.md
	echo '---' >>pouta-course/markdown/index.md
	cat ./md/01-BasicsOfVMs.md >>pouta-course/markdown/index.md
	echo '---' >>pouta-course/markdown/index.md
	cat ./md/02-GettingAccess.md >>pouta-course/markdown/index.md
	echo '---' >>pouta-course/markdown/index.md
	cat ./md/03-CreateConfigVMs.md >>pouta-course/markdown/index.md
	echo '---' >>pouta-course/markdown/index.md
	cat ./pouta-course/markdown/coffee.md >>pouta-course/markdown/index.md
	echo '---' >>pouta-course/markdown/index.md
	cat ./pouta-course/markdown/exercise-set-A.md >>pouta-course/markdown/index.md
	echo '---' >>pouta-course/markdown/index.md
	cat ./pouta-course/markdown/lunch.md >>pouta-course/markdown/index.md
	echo '---' >>pouta-course/markdown/index.md
	cat ./md/04-PersistentStorage.md >>pouta-course/markdown/index.md
	echo '---' >>pouta-course/markdown/index.md
	cat ./md/05-OpenStackCLI.md >>pouta-course/markdown/index.md
	echo '---' >>pouta-course/markdown/index.md
	cat ./md/055-pouta-management.md >>pouta-course/markdown/index.md
	echo '---' >>pouta-course/markdown/index.md
	cat ./md/06-AppDeployment.md >>pouta-course/markdown/index.md
	echo '---' >>pouta-course/markdown/index.md
	cat ./pouta-course/markdown/coffee2.md >>pouta-course/markdown/index.md
	echo '---' >>pouta-course/markdown/index.md
	cat ./pouta-course/markdown/exercise-set-B.md >>pouta-course/markdown/index.md
	echo '---' >>pouta-course/markdown/index.md
	cat ./md/07-Advanced-topics-and-exercises.md >>pouta-course/markdown/index.md
	echo '---' >>pouta-course/markdown/index.md
	cat ./pouta-course/markdown/end.md >>pouta-course/markdown/index.md

rahti-course: rahti-course/markdown/index.md

rahti-course/markdown/index.md: rahti-course/markdown/title.md ./md/07-Introduction-Rahti.md ./md/075-BasicsOfContainers.md ./md/08-Templates.md ./md/09-GettingAccess.md ./md/10-CreatingContainers.md ./md/12-AppDeployment.md ./md/11-OpenShiftCLI.md ./md/13-AppPackaging.md ./rahti-course/markdown/end.md
	cat ./rahti-course/markdown/title.md >rahti-course/markdown/index.md
	cat ./md/07-Introduction-Rahti.md >>rahti-course/markdown/index.md
	echo '---' >>rahti-course/markdown/index.md
	cat ./md/075-BasicsOfContainers.md >>rahti-course/markdown/index.md
	echo '---' >>rahti-course/markdown/index.md
	cat ./md/08-Templates.md >>rahti-course/markdown/index.md
	echo '---' >>rahti-course/markdown/index.md
	cat ./md/09-GettingAccess.md >>rahti-course/markdown/index.md
	echo '---' >>rahti-course/markdown/index.md
	cat ./md/10-CreatingContainers.md >>rahti-course/markdown/index.md
	echo '---' >>rahti-course/markdown/index.md
	cat ./md/12-AppDeployment.md >>rahti-course/markdown/index.md
	echo '---' >>rahti-course/markdown/index.md
	cat ./md/11-OpenShiftCLI.md >>rahti-course/markdown/index.md
	echo '---' >>rahti-course/markdown/index.md
	cat ./md/13-AppPackaging.md >>rahti-course/markdown/index.md
	echo '---' >>rahti-course/markdown/index.md
	cat ./rahti-course/markdown/end.md >>rahti-course/markdown/index.md
