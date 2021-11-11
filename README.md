# Reproducibility Code for the paper "Modeling Serverless Function Behaviours"
Published in the GECON21 conference (http://2021.gecon-conference.org/). Paper citation:

Rafael Tolosana-Calasanz, Gabriel G. Castañé, José Ángel Bañares, Omer F. Rana: "Modeling Serverless Function Behaviours". GECON 2021: To appear

# Authors
  - Rafael Tolosana-Calasanz
  - Gabriel G. Castañé
  - José Á. Bañares
  - Omer F. Rana

# Description
Reproducibility Code for the paper "Modeling Serverless Function Behaviours"

This code implements a simulator for serverless computing for the conference paper "Modeling Serverless Function Behaviours". The serverless computing model extends potential deployment options for cloud applications, by allowing users to focus on building and deploying their code without needing to configure or manage the underlying computational resources. Cost and latency constraints in stream processing user applications often push computations closer to the sources of data, leading to challenges for dynamically distributing stream operators across the edge/ fog/ cloud heterogeneous nodes and the routing of data flows. Various approaches to support operator placement across edge and cloud resources and data routing are beginning to be addressed through the serverless model. Understanding how stream processing operators can be mapped into serverless functions also offers cost incentives for users – as charging is now on a subsecond basis (rather than hourly).

A dynamic Petri net model of serverless functions is proposed in this work, which takes account of the computational requirements of functions, the resources on which these functions are hosted, and key parameters that impact the behaviour of serverless functions –such as warm/cold start up times. The model can be used by developers/ users of serverless functions to understand how deployment optimisation can be used to reduce application time, and to analyse various scenarios
on choosing function granularity, data size and cost. The Petri net models become interpretable / executable through the Renew interpreter. The code is made available inside a Dockerfile (based on Ubuntu), with all the required dependencies to support the reproducibility of experiments.

# Hardware Requirements
  - No particular hardware requirements

# Software Requirements
  - Any Linux operating system to run an Ubuntu based Dockerfile

# Code Description
+ Reference-nets-models: contains the Reference nets used to conduct the experiments
+ shadow-nets: this represents the non-gui version of the Reference-nets-models so that the simulation execution time can be speed up (only performance reasons)
+ timed-Reference-nets: this represents the models as described in the paper
+ Dockerfile: the actual container spec
+ docker-run.sh: script to run the container and, hence, to run the reproducibility experiments
+ log4j.properties: property file for the Renew interpreter so that the simulation log is properly configured and the simulation results can be gathered
+ renew-exp: this script runs 1 experiment
+ simulation-experiments: this script runs the whole set of experiments in the paper (it invokes renew-exp)

# Installation & Execution Steps
  1. Make sure Docker is installed in your system
  2. Download / clone the code from github
  3. Build the container:
```
docker build . -t fog_modelling
```
  4. Grant execution permissions to the run_docker.sh script:
```
chmod u+x docker-run.sh
```
  5. Run the container with the run_docker script provided: 
```
docker-run.sh
```
# Results from the Reproducibility Experiments
After installing and executing the experiments, **the whole set of experiments** that appear in the paper will be reproduced. The output of the experiments is a graph in pdf format, a file named [experiments.pdf](https://github.com/rtolosana/fog-modelling/files/7516906/experiments.pdf) will be obtained in the execution directory which matches the experiments in the last figure of the paper.

![experiments](https://user-images.githubusercontent.com/36404195/141219151-afe661bd-6926-4da5-99f7-d072b793cdee.gif)
