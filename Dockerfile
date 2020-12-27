FROM debian:latest

LABEL com.github.actions.name="Mongoose OS create bin file"
LABEL com.github.actions.description="Combine all parts of a Mongoose OS firmware ZIP-file into a single binary"
LABEL com.github.actions.icon="link"
LABEL com.github.actions.color="green"

LABEL repository="https://github.com/yaourdt/mgos-combine-action"
LABEL maintainer="Mark Dornbach"

# Install mos tool
ADD https://github.com/yaourdt/mgos-combine/releases/latest/download/mgos-combine-ubuntu /mgos-combine

# Set entrypoint
ENTRYPOINT ["/mgos-combine"]
