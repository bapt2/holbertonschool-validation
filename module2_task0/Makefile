build:	## Compile source code of the application to a binary
	go build

run:	## Run the application in background by executing the binary and write log into a file
	./awesome-api >./awesome-api.log 2>&1 &

stop:	## Stop the application with the command pkill
	pkill awesome-api || true

clean:	## Delete the binary and log file
	rm -rf awesome-api 
	rm -rf awesome-api.log
	rm go.sum

test:	## Test it to ensure that it behaves as expected
	curl http://localhost:9999
	curl http://localhost:9999/health

help:	## Show this help .
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'