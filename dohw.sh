#Argument	          ||   Description
#-----------------------------------------------------------------------
#--Dim N	          ||   Dimension of the network (N > 1)
#--K X,Y,...	      ||   Size of the network in each dimension (X,Y,... > 1)
#--C N	              ||   Concentration of each network port (N > 0)
#--numVCs N	          ||   Number of Virtual Channels in the network (N > 1)
#--hw true	          ||   Generate Verilog (DO NOT USE WITH SW FLAG)
#--sw true	          ||   Generate C++ (DO NOT USE WITH HW FLAG)
#--moduleName NAME    ||   Module of the network to run/generate
#--harnessName NAME   ||   Test harness to run for a given module
#--injRate N	   	  ||   SW Only: Injection rate of packet insertion (N is between 0-100)
#--packetCount N   	  ||   SW Only: Number of packets to inject per network port (N > 1)
#-------------------------------------------------------------------------
#simple mesh
#sbt "run --hw true --Dim 2 --K 4,4 --C 1 --harnessName SimpleRouterTester --moduleName OpenSoC_CMesh"
#Packet
sbt "run --hw true --Dim 2 --K 4,4 --C 1 --harnessName OpenSoC_CMeshTester_Random_Packet --moduleName OpenSoC_CMesh"
#Flit
#sbt "run --hw true --Dim 2 --K 4,4 --C 1 --harnessName OpenSoC_CMeshTester_Random_VarInjRate --moduleName OpenSoC_CMesh_Flit"
