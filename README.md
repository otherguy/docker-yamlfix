# `yamlfix` for 🐳 Docker

_This repository provides the [`otherguy/yamlfix`][dockerhub] image_

[![Docker Pulls](https://img.shields.io/docker/pulls/otherguy/yamlfix)][dockerhub]
[![Docker Stars](https://img.shields.io/docker/stars/otherguy/yamlfix)][dockerhub]
[![GitHub issues](https://img.shields.io/github/issues/otherguy/docker-yamlfix)][issues]
[![MicroBadger Layers](https://img.shields.io/microbadger/layers/otherguy/yamlfix)][microbadger]
[![GitHub stars](https://img.shields.io/github/stars/otherguy/docker-yamlfix?color=violet)][stargazers]
[![MIT License](https://img.shields.io/github/license/otherguy/docker-yamlfix?color=orange)][license]

[dockerhub]: https://hub.docker.com/r/otherguy/yamlfix/
[license]: https://tldrlegal.com/license/mit-license
[microbadger]: https://microbadger.com/images/otherguy/yamlfix
[stargazers]: https://github.com/otherguy/docker-yamlfix/stargazers
[issues]: https://github.com/otherguy/docker-yamlfix/issues

![Fix your YAML files!](yamlfix.png)

## 🌈 What is this?

[`yamlfix`](https://github.com/lyz-code/yamlfix) is a simple, opinionated yaml formatter that keeps your comments
and is written by [lyz](https://github.com/lyz-code/).

This Docker image intends to bring the awesomeness of [`yamlfix`](https://github.com/lyz-code/yamlfix) to Docker and especially [whalebrew](https://github.com/whalebrew/whalebrew).

## 🛠 Usage

You can use this with plain Docker:

    $ docker run --rm otherguy/yamlfix your_yaml_file.yaml

Or you can install it using [whalebrew](https://github.com/whalebrew/whalebrew) and use it simply with `yamlfix`:

    $ whalebrew install otherguy/yamlfix
    $ yamlfix your_yaml_file.yaml

## 🚧 Contributing

Bug reports and pull requests are welcome on GitHub at [`otherguy/docker-yamlfix`](https://github.com/otherguy/docker-yamlfix).

## ♥️ Acknowledgements

- [lyz](https://github.com/lyz-code/) for creating [`yamlfix`](https://github.com/lyz-code/yamlfix)
