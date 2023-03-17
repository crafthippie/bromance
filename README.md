# Bromance

[![Docker Workflow](https://github.com/crafthippie/bromance/actions/workflows/docker.yml/badge.svg)](https://github.com/crafthippie/bromance/actions/workflows/docker.yml) [![GitHub Repo](https://img.shields.io/badge/github-repo-yellowgreen)](https://github.com/crafthippie/bromance)

This repository provides the whole configuration for the `Bromance` Minecraft
mod pack. It's used to automatically build and publish the required files for
the [Curseforge Client][curse], and to publish a Docker image for the server on
[DockerHub][dockerhub]. Some information and documentation about this pack can
be found on https://crafthippie.github.io/bromance.

## Versions

To see the available Docker image versions it's best to look at
https://hub.docker.com/r/crafthippie/bromance/tags while you can see the
available files for the client at https://dl.webhippie.de/minecraft/bromance.

## Volumes

-   /var/lib/minecraft
-   /etc/minecraft/override

## Ports

-   25565
-   25575
-   8123

## Available environment variables

```console

```

## Inherited environment variables

-   [webhippie/minecraft-forge](https://github.com/dockhippie/minecraft-forge#available-environment-variables)
-   [webhippie/minecraft-vanilla](https://github.com/dockhippie/minecraft-vanilla#available-environment-variables)
-   [webhippie/adoptopenjdk](https://github.com/dockhippie/adoptopenjdk#available-environment-variables)
-   [webhippie/ubuntu](https://github.com/dockhippie/ubuntu#available-environment-variables)

## Contributing

Fork -> Patch -> Push -> Pull Request

## Authors

-   [Thomas Boerger](https://github.com/tboerger)

## License

MIT

## Copyright

```console
Copyright (c) 2021 Thomas Boerger <http://www.webhippie.de>
```

[curse]: https://download.curseforge.com/
[dockerhub]: https://hub.docker.com/r/crafthippie/bromance
