# Build Image

A docker image to use in CI/CD builds. Image comes preloaded with AWS cli and Webpack cli to save time installing packages.

## Example Build yml

```yml
image: samhornsey/build-image:latest

pipelines:
  default:
    - step:
        script:
          - aws s3 ls
```