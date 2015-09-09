# flowstudio

## Introduction

This [Docker](http://www.docker.com/) container provides an [R](http://r-project.org/) command line interface to the functionality from the [R](http://r-project.org/)/[Bioconductor](http://bioconductor.org) package [`flowcatchR`](http://bioconductor.org/packages/flowcatchR) inside the [RStudio](http://www.rstudio.com/) development environment. It is based on the [`rocker/hadleyverse`](https://github.com/rocker-org/hadleyverse) Docker image.

## Installation

This app needs a recent version of Docker:

 * [Docker installation instructions](https://docs.docker.com/installation/#installation)
 * type `docker pull federicomarini/flowstudio` 
 * ... or alternatively clone this repository (`git clone https://github.com/federicomarini/flowstudio.git`) and build the image locally with `cd flowstudio && docker build -t flowstudio .` 

## Usage

 * `docker run -p 8787:8787 federicomarini/flowstudio`
 * If all goes well
   - On Linux, browse to [http://localhost:8787](http://localhost:8787) for the [RStudio](http://www.rstudio.com/) IDE interface available, , after logging in with user `rstudio` and password `rstudio`. A sample script with the full steps of the workflow is available for the user to learn and explore the functionality of the [`flowcatchR`](http://bioconductor.org/packages/flowcatchR) package. The package can be loaded with the conventional `library("flowcatchR")` command.
   - On MacOS or Windows running [`Docker Toolbox`](https://www.docker.com/toolbox) find the Docker host URL with `docker-machine ip default|[name of the virtual machine]` and browse to `http://[thatIPaddress]:8787`

## Other components of the `dockerflow` workflow solution

* [`flowjupy`](https://github.com/federicomarini/flowjupy) - https://github.com/federicomarini/flowjupy
* [`flowshiny`](https://github.com/federicomarini/flowshiny) - https://github.com/federicomarini/flowshiny
* [`dockerflow`](https://github.com/federicomarini/dockerflow) - https://github.com/federicomarini/dockerflow

## Contact
For additional details regarding the functions of [`flowcatchR`](http://bioconductor.org/packages/flowcatchR), please consult the package documentation, the package vignette or write an email to marinif@uni-mainz.de. 

## Bug reports/Issues/New features

Please use https://github.com/federicomarini/flowcatchR/issues for reporting bugs, issues or for suggesting new features to be implemented.
