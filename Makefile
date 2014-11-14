build:
	docker build -t dockie/dockie dockie
	docker build -t dockie/lamp lamp
	docker build -t dockie/drupal drupal
	docker build -t dockie/drupal-make drupal-make

version:
	@docker run dockie/dockie sh /dockie-version

PHONY: build
