## Prerequisites

    * Golang in v1.15.*
    * NPM v7+ with NodeJS v14.* (stable)
    * Python 3 with pip module
    * golangci-lint

## Lifecycle
    * lint:    Fail when the linter catches and error
    * build:   Compile source code of the application to a binary
    * run:     Run the application in background by executing the binary and write log into a file
    * stop:    Stop the application with the command pkill
    * clean:   Delete the binary and log file
    * test:    Test it to ensure that it behaves as expected
    * unit-test:    execute (successfully) the Golang unit tests
    * help:    Show this help.