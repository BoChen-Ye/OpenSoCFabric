OpenSoC Fabric
========
## Why I build this REPO of OpenSoCFabric
 After using OpenSoCFabric, I find there are many problems about it and no one to give a clear step to use tool. Therefore, I write this repo for beignner to use OpenSoCFabric.
 
 This repo is based on [Schoeberl](https://github.com/schoeberl/OpenSoCFabric). All paperwork of this repo was done by Bochen Ye(Eindhoven University of Technology).

## Abstract ##
Recent advancements in technology scaling have shown a trend towards greater integration with large-scale chips containing thousands of processors connected to memories and other I/O devices using non-trivial network topologies. Software simulation proves insufficient to study the tradeoffs in such complex systems due to slow execution time, whereas hardware RTL development is too time-consuming. We present *OpenSoC Fabric*, an on-chip network generation infrastructure which aims to provide a parameterizable and powerful on-chip network generator for evaluating future high performance computing architectures based on SoC technology. *OpenSoC Fabric* leverages a new hardware DSL, [Chisel](http://chisel.eecs.berkeley.edu/), which contains powerful abstractions provided by its base language, Scala, and generates both software (C++) and hardware (Verilog) models from a single code base. The *OpenSoC Fabric* infrastructure is modeled after existing state-of-the-art simulators, offers large and powerful collections of configuration options, and follows object-oriented design and functional programming to make functionality extension as easy as possible.

## Getting Started##
1.**Open Linux Shell**
- If you use windows, you can install [WSL](https://learn.microsoft.com/en-us/windows/wsl/install).

2.**Install Java11 in Linux**

3.**Install [sbt](https://www.scala-sbt.org/) for Chisel**

4.**Config the command of OpenSoCFabric in doit.sh/dohw.sh**
- You can find detail of configuration in [website](https://github.com/LBL-CoDEx/OpenSoCFabric/wiki/Using-and-Compiling-OpenSoC-Fabric) and in **main.scala**.

5.**Run the bash script in shell**
- run ```./doit.sh``` to do software simulation
- run ```./dohw.sh``` to do hardware simulation

6.**Run the python script to get result**
- run ```./ststPlot.py```
- For windows user, you can just run **plot.bat**
- The result is show in end of [page](https://github.com/LBL-CoDEx/OpenSoCFabric/wiki/Using-and-Compiling-OpenSoC-Fabric).

## Question
1.**Increaing JVM heap memory**
- You can add ```export SBT_OPT="-Xms1024M -Xmx2048M -Xss2M -XX:MaxMetaspaceSize=1024M"``` to fix it.

2.**Running stack when your NoC bigger than 2x2(SW)**
- Because it need more time to simulate. E.g. 3x3 NoC need 10 minutes in SW simulation and 4x4 NoC need 30 minutes in SW simulation.

## File Content
**main.scala:** define all option.

**toplevel.scala:** define toplevel class.

**topology.scala:** define topology of NoC. It have two mode:Mesh and FlatFly(Flattend Butterfly). Every mode have normal edition and VC edition, so it have totoally 4 mode.

---
## Copyright ##
*OpenSoC Fabric*, Copyright (c) 2014, The Regents of the University of California, through Lawrence Berkeley National Laboratory (subject to receipt of any required approvals from the U.S. Dept. of Energy).  All rights reserved.

If you have questions about your rights to use or distribute this software, please contact Berkeley Lab's Technology Transfer Department at  TTD@lbl.gov.

NOTICE.  This software is owned by the U.S. Department of Energy.  As such, the U.S. Government has been granted for itself and others acting on its behalf a paid-up, nonexclusive, irrevocable, worldwide license in the Software to reproduce, prepare derivative works, and perform publicly and display publicly.  Beginning five (5) years after the date permission to assert copyright is obtained from the U.S. Department of Energy, and subject to any subsequent five (5) year renewals, the U.S. Government is granted for itself and others acting on its behalf a paid-up, nonexclusive, irrevocable, worldwide license in the Software to reproduce, prepare derivative works, distribute copies to the public, perform publicly and display publicly, and to permit others to do so.
