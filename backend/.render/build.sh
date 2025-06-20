#!/bin/bash
set -e

# Install SDKMAN to manage Java versions
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

# Install Java 17 (or whichever version you need)
sdk install java 17.0.9-tem

# Update environment variables so Maven can find Java
export JAVA_HOME="$HOME/.sdkman/candidates/java/current"
export PATH="$JAVA_HOME/bin:$PATH"

# Run the Maven build
./mvnw clean install
