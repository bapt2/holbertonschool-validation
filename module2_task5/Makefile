build:	## Generate the website from the markdown and configuration files in the directory dist/
	golangci-lint run
	markdownlint README.md content/posts/*
	markdown-link-check README.md content/posts/*
	go build
	hugo

run:	## Run the application in background by executing the binary and write log into a file
	./awesome-api >./awesome-api.log 2>&1 &
	nohup hugo server -D --bind=localhost --port=9999 &


stop:	## Stop the application with the command pkill
	pkill awesome-api || true

clean:	## Cleanup the content of the directory dist/
	pkill awesome-api || true
	rm -rf dist/* awesome-api awesome-api.log coverage-*

test:	## Test it to ensure that it behaves as expected
	go test -v -short -coverprofile=coverage-units.out
	go test -v -coverprofile=coverage-integrations.out

lint:	## 	Fail when the linter catches and error
	golangci-lint run

unit-tests:		## Execute (successfully) the Golang unit tests
	go test -v -short -coverprofile=coverage-units.out

integration-tests:	## execute (successfully) the Golang integration tests
	go test -v -coverprofile=coverage-integrations.out

post:	## Create a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME
	hugo new posts/$(POST_NAME).md  
	sed -i 's/title:.*/title:"$(POST_TITLE)"/' content/posts/$(POST_NAME).md

check:	## Succeed by default, and fail when presented with a dead link or a badly written Markdown file
	markdownlint README.md content/posts/*
	markdown-link-check README.md content/posts/*

validate:	## Always succeed by default and should print the result on the stdout 
	python3 /opt/W3C-Validator/w3c_validator.py ./dist/index.html || true

help:	## Show this help.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'