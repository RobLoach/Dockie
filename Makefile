build:
	docker build -t dockie/dockie dockie
	docker build -t dockie/lamp lamp
	docker build -t dockie/drupal drupal
	docker build -t dockie/drupal-make drupal-make

version:
	@docker run dockie/dockie \
	go version && \
	php --version && \
	python --version && \
	python3 --version && \
	echo "Node " && node --version && \
	ruby --version && \
	rustc --version


PHONY: build
