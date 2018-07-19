# docker-cfn-lint
Run https://github.com/martysweet/cfn-lint in Docker

## Instructions
```
docker run --rm -it -v "$(pwd):/srv/app:Z" aarongorka/cfn-lint:1.7.4 validate foobar/template.yml
```

or as an alias:

```
alias cfn-lint='docker run --rm -it -v $(pwd):/srv/app:Z aarongorka/cfn-lint:1.7.4'
```

then you can execute `cfn-lint vaildate foobar/template.yml`
