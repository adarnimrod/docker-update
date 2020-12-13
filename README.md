# docker-update
[![pipeline status](https://git.shore.co.il/nimrod/docker-update/badges/master/pipeline.svg)](https://git.shore.co.il/nimrod/docker-update/-/commits/master)

> Pull updated Docker images.

A container that periodically tries to update every image currently available.
This image was meant to be run along side GitLab runners that are set with the
pull policy of if-not-present (where new images are not pulled if existing
images are present, thus images are not updated with new versions).

## Usage

To run the container to periodically pull updates:

```
docker run -v /var/run/docker.sock:/var/run/docker.sock adarnimrod/docker-update
```

To run the update once and exit:

```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock adarnimrod/docker-update docker-update
```

## License

This software is licensed under the MIT license (see `LICENSE.txt`).

## Author Information

Nimrod Adar, [contact me](mailto:nimrod@shore.co.il) or visit my [website](
https://www.shore.co.il/). Patches are welcome via [`git send-email`](
http://git-scm.com/book/en/v2/Git-Commands-Email). The repository is located
at: <https://git.shore.co.il/explore/>.
