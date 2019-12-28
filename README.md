# Xmysql: Dockerfile without api prefix

## Motivation

Currently I am running a variety of different applications behind [traefik](https://github.com/containous/traefik). One possible approach to set the different routing endpoints is the definition of the frontend rule like:

```shell
traefik.web.frontend.rule=Host:www.someurl.com;PathPrefixStrip:/someapi
```

Treafik points directly to this given path and if you run xmysql with the default configuration behind this endpoint you will get the following endpoints: `www.someurl.com/someapi/api` as this is the default xmysql endpoint. As this yields to quite lengthy urls it's more easier to just run xmysql without any prefix behind traefik. That was the motiviation for this Dokerfile. 

## xmysql behind traefik

As already written I run xmysql behind traefik and if you would like to do so as well, i have added a small `docker-compose.yml` file to show a starting point for you. You can create a password and username entry with the following snippet: https://gist.github.com/TechupBusiness/1e8f6f1a1ea984d6a3d8c0e648607106#file-create_docker_compose_basic_auth_string_for_traefik-sh 🔑 💻

## Thank you! - [o1lab](https://github.com/o1lab) for this nice project! 