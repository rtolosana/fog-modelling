# fog-modelling

The serverless computing model extends potential deployment options for cloud applications, by allowing users to focus on building and deploying their code without needing to configure or manage the underlying computational resources. Cost and latency constraints in stream processing user applications often push computations closer to the sources of data, leading to challenges for dynamically distributing stream operators across the edge/ fog/ cloud heterogeneous nodes and the routing of data flows. Various approaches to support operator placement across edge and cloud resources and data routing are beginning to be addressed through the serverless model. Understanding how stream processing operators can be mapped into serverless functions also offers cost incentives for users – as charging is now on a subsecond basis (rather than hourly).

**A dynamic Petri net model of serverless functions is proposed in this work**, which takes account of the computational requirements of functions, the resources on which these functions are hosted, and key parameters that impact the behaviour of serverless functions –such as warm/cold start up times. The model can be used by developers/ users of serverless functions to understand how deployment optimisation can be used to reduce application time, and to analyse various scenarios on choosing function granularity, data size and cost.

**The Petri net models become interpretable / executable through the Renew interpreter. We made available the code inside a Docker container (based on Ubuntu), along side all the library dependencies for the reproduction of experiments.**
