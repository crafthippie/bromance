FROM ghcr.io/dockhippie/minecraft-vanilla:1.16.5

EXPOSE 25565 25575 8123

ENV FORGE_VERSION=36.2.34
ENV FORGE_URL=https://maven.minecraftforge.net/net/minecraftforge/forge/${MINECRAFT_VERSION}-${FORGE_VERSION}/forge-${MINECRAFT_VERSION}-${FORGE_VERSION}-installer.jar

ENV DYNMAP_JAR=Dynmap-3.3.2-forge-1.16.5.jar
ENV DYNMAP_URL=https://media.forgecdn.net/files/3637/292/${DYNMAP_JAR}

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y libatomic1 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    curl --create-dirs -sLo /usr/share/minecraft/forge-${MINECRAFT_VERSION}-${FORGE_VERSION}-installer.jar ${FORGE_URL} && \
    cd /usr/share/minecraft && \
    mkdir mods && \
    java -jar forge-${MINECRAFT_VERSION}-${FORGE_VERSION}-installer.jar --installServer && \
    rm -f forge-${MINECRAFT_VERSION}-${FORGE_VERSION}-installer.jar forge-${MINECRAFT_VERSION}-${FORGE_VERSION}-installer.jar.log && \
    curl --create-dirs -sLo /usr/share/minecraft/mods/${DYNMAP_JAR} ${DYNMAP_URL}

ENV MINECRAFT_LEVEL_TYPE=biomesoplenty

COPY ./overlay/ /
COPY ./mods /usr/share/minecraft/mods
COPY ./config /usr/share/minecraft/config
