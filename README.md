# Title
Reproducibility Code for the paper "Modeling Serverless Function Behaviours", published in the GECON21 conference (http://2021.gecon-conference.org/).

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
# Results from the Reproducibility
After installing and executing the experiments, the whole set of experiments that appear in the paper will be reproduced. The output of the experiments is a graph in pdf format, a file named experiments.pdf will be obtained in the execution directory which matches the experiments in the last figure of the paper.
