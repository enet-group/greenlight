	#!/bin/bash
	cd /root/greenlight
	git fetch upstream
	git merge upstream/master
	docker-compose down
	./scripts/image_build.sh getplace master
	docker-compose up -d
	