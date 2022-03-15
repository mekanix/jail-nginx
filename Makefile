SERVICE = nginx
REGGAE_PATH = /usr/local/share/reggae
PORTS = 80 443
FLAVOR ?= nginx

post_setup_ansible:
	@echo "nginx_flavor: ${FLAVOR}" >>ansible/group_vars/all
	@echo "nginx_domain: ${FQDN}" >>ansible/group_vars/all

.include <${REGGAE_PATH}/mk/service.mk>

