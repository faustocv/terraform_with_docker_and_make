override TERRAFORM_IMAGE := hashicorp/terraform:light

init:
	docker container run \
	  --rm \
	  -it \
	  -v $(shell pwd):/app \
	  --name terraform_init \
	  -w /app \
	  $(TERRAFORM_IMAGE) \
	  init

apply:
	docker container run \
	  --rm \
	  -it \
	  -v $(shell pwd):/app \
	  -v /var/run/docker.sock:/var/run/docker.sock \
	  --name terraform_apply \
	  -w /app \
	  $(TERRAFORM_IMAGE) \
	  apply

destroy:
	docker container run \
	  --rm \
	  -it \
	  -v $(shell pwd):/app \
	  -v /var/run/docker.sock:/var/run/docker.sock \
	  --name terraform_destroy \
	  -w /app \
	  $(TERRAFORM_IMAGE) \
	  destroy
