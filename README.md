# Multi-Beam Power Allocation for mmWave Communications under Random Blockage

This repository is an implemenation of the paper titled [Multi-Beam Power Allocation for mmWave Communications under Random Blockage](https://ieeexplore.ieee.org/document/8417624)

## Directory Strucutre
1. ```presentaions``` contains the three preseantions for the first, mid and final eval
2. ```reports``` contains the PDF (and editable) final report
3. ```results``` contains the output plots
4. ```src``` contains all the MATLAB codes required to implement the research paper
 
### Millimetre Wave - The price of high data rate
Communication using Millimetre wave is shaping the future. With newer technologies like 5G using millimetre wave to facilitate high data rates (in the order of Gbps), larger bandwidths and smaller component sizes the advantages are significant. But millimetre waves are also notoriously susceptible to blockage. When the direct line of sight is blocked, connectivity is notably impeded. However, when a direct line of sight is blocked, we can use a reflected path to maintain connectivity.

### Finding the middle ground - Reflecting the Signal
When the direct line of sight is blocked, connectivity can be maintained by switching to an alternate reflected path. However, this switching operation is not the most efficient. The method requires detecting the blockage and then reconfiguring the transceiver to use the new path which incurs latency. In highly dynamic environments where path switching requirement is frequent, or for traffic with strict latency and reliability requirements, using both paths concurrently can be more beneficial.

### The Paper proposes a better system
In this paper, the authors consider using multiple paths and dividing the transmission power over those paths, instead of path switching. They propose an algorithm to allocate power among the different mmWave communication paths to overcome link blockage under randomly distributed obstacles. Finally the performance of the proposed algorithm via simulation for various wireless environments.

### System Model and design
<p align="center">
  <img width="250" alt="System Diagram" src="https://user-images.githubusercontent.com/44245211/144271771-b0bb99e2-d454-4274-89fb-c193e7a47e13.png">
</p>
We consider a mmWave network consisting of a pair of source node and destination node, a reflector, and random obstacles. The nodes are equipped with a beam-forming antenna that can generate multi-lobe beam patterns, and know the location and shape of the reflector. There are two possible paths to communicate between nodes s and d: a directed path and a reflected path. A direct path between the two nodes is denoted as an ordered pair (s,d), and modeled as a line segment of length l(s,d).
<br />
<br />

**PROBLEM STATEMENT: allocate power to antenna beams in order to maximise the expected capacity at node d under a power constraint**
