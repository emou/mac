install_and_setup: install setup
install:
	./mac.sh
setup:
	ansible-playbook playbook.yml --ask-sudo-pass -i hosts -vvvv
brew:
	ansible-playbook playbook.yml --tags "brew" -i hosts -v
cask:
	ansible-playbook playbook.yml --tags "cask" -i hosts -v
git:
	ansible-playbook playbook.yml --tags "git" -i hosts -v
ssh:
	ansible-playbook playbook.yml --tags "ssh" -i hosts -v
