# Prerequisites

    * A Valid Go-Hugo website is provided
    * There are no Git Submodules
    * The theme ananke is installed
    * No directory dist/ committed
    * Makefile present

## Lifecycle

    * lint:    Fail when the linter catches and error

    * build:   Compile source code of the application to a binary and
               Generate the website from the markdown and
               configuration files in the directory dist/.

    * run:     Run the application in background by executing the
               binary and write log into a file

    * stop:    Stop the application with the command pkill

    * clean:   Delete the binary, log file and Cleanup the content of the
               directory dist/

    * test:    Test it to ensure that it behaves as expected

    * unit-tests:    execute (successfully) the Golang unit tests

    * integration-tests:    execute (successfully) the Golang integration tests

    * post:    Create a new blog post whose filename and title come from the
               environment variables POST_TITLE and POST_NAME.

    * check: Succeed by default, and fail when presented with a dead link
               or a badly written Markdown file

    * validate: Always succeed by default and should print the result on the stdout

    * help: help
