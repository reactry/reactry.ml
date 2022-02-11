
all: deploy

deploy:
	@rm -rf build docs
	@npm run build
	@mv build docs
	@cp CNAME docs
	@git add docs
	@git commit -m "Deployed via Makefile"
	@git push

