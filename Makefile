
main: pip aws localstack

aws: cdk copilot

localstack: cdklocal copilot-local

up:
	docker compose up
copilot-local:
	curl -Lo copilotlocal https://github.com/localstack/copilot-cli/raw/localstack-builds/build/linux-amd64/copilotlocal && chmod +x copilotlocal
	# if you want to have copilotlocal in your $PATH, move the executable e.g. to /usr/local/bin/
	sudo mv copilotlocal /usr/local/bin/

copilot:
	curl -Lo copilot https://github.com/aws/copilot-cli/releases/latest/download/copilot-linux && chmod +x copilot 
	sudo mv copilot /usr/local/bin/copilot 

cdk:
	npm i -g aws-cdk

cdklocal:
	npm install -g aws-cdk-local aws-cdk

pip:
	pip install -r requirements.txt

