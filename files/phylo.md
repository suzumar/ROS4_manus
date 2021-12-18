# Final phylogenetic Analysis

use manually created [file](https://github.com/suzumar/ROS4_manus/blob/main/files/data/UrdMUrdE.faa) UrdMUrdE.faa where the oxidase portion of UrdM homologues was selected

in [seaview](http://pbil.univ-lyon1.fr/software/seaview3) create an [alignment](https://github.com/suzumar/ROS4_manus/blob/main/files/data/UrdMUrdE.faa.new_ALI+jad.fst) using the muscle option

in seaview create a [block](https://github.com/suzumar/ROS4_manus/blob/main/files/data/UrdMUrdE.faa.new_ALI+jad/regions+jad.fst) using the gblocks with options below, followed by manual curation.

![gblocks](https://github.com/suzumar/ROS4_manus/blob/main/files/figures/gblocks.png)

this block was imported into [MEGA11](https://www.megasoftware.net) and a modeltest run with the following [results](https://github.com/suzumar/ROS4_manus/blob/main/files/data/UrdMUrdE.faa.new_ALI+jad/Results.tsv)

In mega we ran both Maximum Likelihood and Neighbor Joining Analysis using a macpro with the following [configuration]() and the following parameters: 

![Maxium Likelihood](https://github.com/suzumar/ROS4_manus/blob/main/files/figures/ML.png)

![Neighbor Joining](https://github.com/suzumar/ROS4_manus/blob/main/files/figures/NJ.png)

For the final trees changed the pixel to 20 between branches and 300 for the tree using MEGA11

[Maxium Likelihood](https://github.com/suzumar/ROS4_manus/blob/main/files/figures/tree_ml_2.nwk)

[Neighbor Joining](https://github.com/suzumar/ROS4_manus/blob/main/files/figures/tree_nj_2.nwk)
