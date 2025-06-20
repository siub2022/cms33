#!/bin/bash
set -e

# Install SDKMAN and Java again for runtime
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk install java 17.0.9-tem

export JAVA_HOME="$HOME/.sdkman/candidates/java/current"
export PATH="$JAVA_HOME/bin:$PATH"

# Start your Spring Boot app
java -jar target/cms33-0.0.1-SNAPSHOT.jar
