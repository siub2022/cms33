#!/bin/bash
set -e

# Install SDKMAN silently
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

# Install a stable Java version (e.g., 17)
sdk install java 17.0.9-tem

# Set JAVA_HOME and PATH
export JAVA_HOME="$HOME/.sdkman/candidates/java/current"
export PATH="$JAVA_HOME/bin:$PATH"

# Confirm Java version (for debugging)
java -version

# Run the Maven build
./mvnw clean install
