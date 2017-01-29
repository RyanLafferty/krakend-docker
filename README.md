# KrakenD Docker container
![Krakend logo](https://raw.githubusercontent.com/devopsfaith/krakend/master/docs/images/krakend.png)

This is the Docker container for KrakenD.

KrakenD is an API Gateway that aggregates and manipulates multiple data sources coming from your microservices to provide the exact API your end-user products need while offering awesome performance.

This docker container is for the free version of KrakenD and is built using the libraries available at the [KrakenD Github repo](https://github.com/devopsfaith/krakend)

Every docker container is limited to 1000 reqs/sec and 5 endpoints when running
without license.

The KrakenD docker is based on Alpine and offers a small image size.

## Run it!

Share your configuration as a volume (mapped to `/etc/krakend`). Inside the volume you need at least the `krakend.json` file which contains the endpoint definition of you application.

You can also put a`service.yml` file but if it is not present the system will use the defaults.

[Generate your krakend.json here](http://www.krakend.io/designer/)

### Examples
The following are several examples of running krakend. By default the command `run` is executed, but you can pass
other commands and flags at the end of the run command.

The configuration files are taken from current directory (`$PWD`). It is expected to find at least the file `krakend.json`.

Pull the image and run KrakenD (default parameters):

    docker pull devopsfaith/krakend
    docker run -p 8080:8080 -v $PWD:/etc/krakend/ devopsfaith/krakend


Run with the debug enabled:

    docker run -p 8080:8080 -v $PWD:/etc/krakend/ devopsfaith/krakend run -d

Check the syntax of the configuration file

    docker run -it -p 8080:8080 -v $PWD:/etc/krakend/ devopsfaith/krakend check --config krakend.json

Show the help:

    docker run -it -p 8080:8080 -v $PWD:/etc/krakend/ devopsfaith/krakend --help

Enjoy KrakenD!

And any questions please let us know via Github issue
