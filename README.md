# Terraform with Docker and GNU Make

This is the source code of my post [Speeding up Terraform setup with Docker and GNU Make] (https://www.faustocv.org/containers/2019/03/01/docker-for-development.html). 

This is an example of how to set up a Terraform environment using Docker and GNU Make. That means it will not be necessary to install the Terraform package in your localhost, but we will use Docker instead.

The Terraform script will address a single task. It will automate the deployment of an NGINX server. Furthermore, the NGINX server will reside within a Docker container.

## Instructions

```bash
~ make init apply
```

For cleaning up, just execute:

```bash
~ make destroy
```

## Questions?
Reach me out at <info@faustocv.org>
