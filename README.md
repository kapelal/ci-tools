# ci-tool

![](https://circleci.com/gh/Kapelal/ci-tools/tree/master.svg?style=shield)

A list of tool for CI in a container

## Tools

+ [Marshal and unmarshal yaml](https://github.com/ghodss/yaml)
+ [Command line version testing](https://github.com/Masterminds/vert)

## Scripts

### [compare_version_yaml](./scripts/compare_version_yaml)

Compare a value in 2 yaml file

Need 3 arguments: `first_file`, `second_file`, `value(default=version)`

Example:
```
docker run --rm -v `pwd`:/root kapelal/ci-tools compare_version_yaml Chart.yaml Chart.yaml.master
```

## Docker

https://hub.docker.com/r/kapelal/ci-tools/

## Tips

When i want to compare 2 different version files:

```
git show master:Chart.yaml > Chart.yaml.master
docker run --rm -v `pwd`:/root kapelal/ci-tools compare_version_yaml Chart.yaml Chart.yaml.master

```
