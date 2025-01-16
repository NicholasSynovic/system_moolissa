create-dev:
	pre-commit install

aptUpdate:
	sudo apt update
	sudo apt upgrade -y
	sudo apt autoremove --purge -y

installAnsible:
	brew install pipx
	pipx ensurepath
	pipx install --include-deps ansible==11.1.0
	ansible-galaxy collection install community.general

testAnsible:
	ansible myhosts -m ping -i ansible/inventory.ini

run:
	sudo apt update
	ansible-playbook -i ansible/inventory.ini --ask-become-pass ansible/playbook.yaml
	gh auth login --git-protocol ssh --hostname github.com --skip-ssh-key --web
	gh extension install github/gh-classroom
