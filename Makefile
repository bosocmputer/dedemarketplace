build_docker_image_and_push:
	docker build -t smlsoft/dedemarketplace .
	docker push smlsoft/dedemarketplace

build_docker_image:
	yarn build
	docker buildx build --platform linux/amd64 --push -t smlsoft/dedemarketplace .

push_web_docker:
	docker push smlsoft/dedemarketplace

run_web_docker:
	docker run --rm -p 8001:80 smlsoft/dedemarketplace
build_m1_docker_releases:
	yarn build	
	docker buildx build --platform linux/amd64 --push -t smlsoft/dedemarketplace .
build_m1_docker_dev:
	yarn build	
	docker buildx build --platform linux/amd64 --push -t smlsoft/dedemarketplace:dev .	
run:
	yarn dev