DOCKER_REPO = imander

kali:
	docker build -t $(DOCKER_REPO)/kali -f kali.Dockerfile .

dradis:
	docker build -t $(DOCKER_REPO)/dradis -f dradis.Dockerfile .
