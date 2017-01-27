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

### Example
Run docker with the debug visible (`-d` at the end). The configuration files are taken from current directory (`$PWD`). It is expected to find at least the file `krakend.json`:

    docker pull devopsfaith/krakend
    docker run -p 8080:8080 -v $PWD:/etc/krakend/ devopsfaith/krakend

Any questions please let us know via Github issue
