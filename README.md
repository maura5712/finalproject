# Phylogenetic Biology - Final Project

## Guidelines - you can delete this section before submission

This is a stub for your final project. Edit/ delete the text in this readme as needed.

There are two ways you can use this document:  
- You can download this file to a folder on your computer, edit this document and add other files (data, code, etc), and then zip up and submit the folder on canvas.
- You can for the [repository](finalproject) containing this document on gitub. Then commit and push your canges to the repository, and submit a link to the repository on canvas.

Github is a great way to work on projects, but also has a steep initial learning curve.


Some guidelines and tips:

- Use the stubs below to write up your final project. Alternatively, if you would like the writeup to be an executable document (with [knitr](http://yihui.name/knitr/), [jupytr](http://jupyter.org/), or other tools), you can create it as a separate file and put a link to it here in the readme.

- For information on formatting text files with markdown, see https://guides.github.com/features/mastering-markdown/ . You can use markdown to include images in this document by linking to files in the repository, eg `![GitHub Logo](/images/logo.png)`.

- The project must be entirely reproducible. In addition to the results, the repository must include all the data (or links to data) and code needed to reproduce the results.

- If you are working with unpublished data that you would prefer not to publicly share at this time, please contact me to discuss options. In most cases, the data can be anonymized in a way that putting them in a public repo does not compromise your other goals.

- Paste references (including urls) into the reference section, and cite them with the general format (Smith at al. 2003).

OK, here we go.

# Genetic Variation Among Channel Island Foxes

## Introduction and Goals

Channel Island foxes are a species of fox, Urocyon littoralis, that are endemic to six of the eight Channel Islands in California. The island foxes were once near extinction, as a result of their low genetic diversity; however, due to conservation efforts, the island fox is now considered "near threatened."

The goal of my project is to answer the question, What is... the degree of genetic variation among Channel Island foxes and how does this compare to mainland foxes? I will use this to investigate how these small populations vary from one another and some of the potential implications of this lack of genetic diversity. This will then lead to a discussion of the potential future of the island foxes. This will include how to protect and ensure the persistence of these once-endangered populations of foxes, as well as other ideas of conservation. 

I will also expand the project to include an analysis on the genetic variation between closely related mainland fox species. I will then compare this genetic diversity to that of the island foxes and discuss the possible implications. 

The methods I will use to do this are...
I will clean up and analyze the data using VS code. I will then align the data using MAFFT. From this aligned sequence, I will be able to determine how the different foxes vary from one another and where in the genomic sequences this occurs. I will use IQTREE to infer a phylogeny of the island foxes, while also including some mainland fox ancestors (using RStudio/ remote cluster). I will also make a graph of the heterozygosity at each chromosome for each of the foxes, which will help to assess the genetic variation among the populations of foxes on each island.

The data I will use are mitochondrial genome data publicly available at NCBI's GenBank. Species include Urocyon littoralis, Urocyon cinereoargenteus, Vulpes Vulpes, Vulpes macrotis, and Canis lupus lupus (accession IDs can be found in uploaded files -- islandmito.fasta, mainland.fasta, and mainland2.fasta). 

## Methods

The tools I used were... 

Channel Island foxes:

Excel
1. population plot

NCBI Genome Workbench
1. Phylogenetic tree
2. Multiple sequence alignment viewer (with differences shown)

Remote Cluster, RStudio
1. MAFFT -- multiple sequence alignment
2. IQ-TREE -- Channel Island foxes & mainland fox ancestors (outgroup), with bootstrap support
3. Analysis of genetic diversity -- SNP density, allele frequency distribution, polymorphic sites
4. Analysis of overall population size and density for each island -- plot population size over span of ~20 years, plot population density

Mainland foxes:

NCBI Genome Workbench
1. Multiple sequence alignment viewer (with differences shown)

Remote Cluster, RStudio
1. MAFFT -- multiple sequence alignment
2. IQ-TREE -- island foxes, mainland foxes (gray fox, red fox, kit fox), gray wolf
3. Analysis of genetic diversity -- SNP density, allele frequency distribution, polymorphic sites

#Analysis of genetic diversity
1. Compare SNP density & allele frequency found in mainland foxes vs island foxes
2. Assess heterozygosity in mainland vs Channel Island populations as a measure of genetic variation

See analysis files (uploaded).
- fasta files 
    - islandmito: island foxes mitochondrial genomes
    - mainland: mainland foxes & gray wolf mitochondrial genomes
    - mainland2: subset of mainland fox & gray wolf mitochondrial genomes used in SNP analysis
- final_proj.pdf -- RStudio pdf output -- contains trees, SNP analyses, population plots, table of SNP locations
- Remote cluster files -- job script, tree outputs
- figures folder -- images of all figures used in analysis

## Results

General Population Trends of the Island Fox

<img width="510" alt="island_tree_accepted" src="https://user-images.githubusercontent.com/117139419/207952586-b911b79b-2209-43f3-89a0-f174eebc4355.png">
Fig. 1 -- Most commonly recognized phylogeny for the island fox subspecies, with the gray fox (Urocyon cinereoargenteus) included as the outgroup. 


<img width="622" alt="island_pop_size" src="https://user-images.githubusercontent.com/117139419/207971932-68274d30-998a-4014-bc29-155685928f5b.png">
Fig. 2 -- Island fox populations by island between 1994 and 2018 (source: Friends of the Island Fox). 

The results in Fig. 2 show a steady decline in island fox populations across all islands. The increase in population size, beginning around 2010, can be attributed to conservation efforts targeted at the declining fox populations. Despite these efforts, the persistence of the island fox remains uncertain. This can largely be attributed to the lack of genetic diversity among island fox populations across all subspecies.


Analysis of Genetic Diversity:



Phylogenies and Multiple Sequence Alignments


Island Foxes

<img width="1108" alt="island_tree_ncbi_wokbench" src="https://user-images.githubusercontent.com/117139419/207973855-5b2a0ad9-4b64-44e3-8db5-7de08f14a791.png">
Fig. 3 -- Phylogenetic tree of 6 Island Fox subspecies and gray fox, generated by NCBI's Genome Workbench. 

<img width="1109" alt="island_tree_R_bootstrap" src="https://user-images.githubusercontent.com/117139419/207974462-c96450bf-3c7e-4d30-80ee-baeed0721962.png">
Fig. 4 -- Phylogenetic tree of 6 Island Fox subspecies and gray fox, generated by IQ-TREE, with bootstrap support values. The best fit model selected for the data was HKY+F+I with a log-likelihood of -23527.9920. 

The results in Figs. 3 and 4 were generated using 20 mitochondrial genome sequences from all six island fox subspecies and the gray fox. The two trees pose conflicting topologies for the 20 sequences. This could be due to the fact that there were not many samples available for sequencing and the samples that were collected had low diversity between the sequences. The conflicting topologies are not surprising, as the trees were not very well supported (low bootstrap values). 

<img width="1129" alt="msa_island" src="https://user-images.githubusercontent.com/117139419/207975988-658481fd-c157-4b22-a742-efb9860e570f.png">
Fig. 5 -- Multiple sequence alignment of island and gray fox mitochondrial genome sequences with differences between sequences highlighted. 


Mainland Ancestors

<img width="673" alt="mainland_tree" src="https://user-images.githubusercontent.com/117139419/207976374-04683364-097e-4e05-acb2-c793f6b8f2c9.png">
Fig. 6 -- Phylogenetic tree of mainland ancestors of the island fox. Species include the gray fox, kit fox, red fox, and gray wolf. The separation of species most likely indicates that the samples were taken from different populations of the same species. 

<img width="1261" alt="msa_mainland" src="https://user-images.githubusercontent.com/117139419/207976810-9de321b6-0e0c-4a55-8287-d3b044e7e354.png">
Fig. 7 -- Multiple sequence alignment of the island fox's mainland ancestors' mitochondrial genomes with differences between sequences highlighted. 



When comparing the sequence alignments in Figs. 5 and 7, it is evident that the mitochondrial genomes of mainland ancestors are much different than those of the island fox. Fig. 5 shows relatively few differences (highlighted in red) between the sequences of island fox subspecies and between the island fox and the gray fox. Fig. 7 shows many differences (highlighted in red) between the gray fox and other ancestors of the island fox. This indicates that the island foxes have relatively low genetic diversity compared to their ancestors.




Comparison of SNPs and Allele Frequencies


Island Foxes

<img width="611" alt="snp_dist_island" src="https://user-images.githubusercontent.com/117139419/207980857-059efedd-9ffb-427d-b1a5-035c6130e9d1.png">
Fig. 8 -- Distribution of SNPs in island fox mitochondrial genomes, shown by density at each nucleotide position.

<img width="585" alt="snp_loc_island" src="https://user-images.githubusercontent.com/117139419/207981286-19e17ede-14ce-4f4e-bb48-78d94fbaf3ec.png">
Fig. 9 -- Location of SNPs in island fox mitochondrial genomes, given as density at each position in the sequence alignment. 

<img width="606" alt="allele1_freq_island" src="https://user-images.githubusercontent.com/117139419/207981457-39653557-eb08-464d-8225-e993e83f967a.png">
<img width="630" alt="dist_allele2_freq_island" src="https://user-images.githubusercontent.com/117139419/207982140-fafc2877-1616-4581-8b92-4d70481b6622.png">
Figs. 10 and 11 -- Distribution of allele frequencies in island fox populations. 


Mainland Ancestors

<img width="615" alt="snp_dist_mainland" src="https://user-images.githubusercontent.com/117139419/207982339-f9d30356-f4c2-4ef4-8afe-c65da91fbd23.png">
Fig. 12 -- Distribution of SNPs in mainland ancestor mitochondrial genomes, shown by density at each nucleotide position.

<img width="623" alt="snp_loc_mainland" src="https://user-images.githubusercontent.com/117139419/207982400-03a121dc-e35e-4b88-b067-51ff8f7b1174.png">
Fig. 13 -- Location of SNPs in mainland ancestor mitochondrial genomes, given as density at each position in the sequence alignment. 

<img width="623" alt="allele1_freq_mainland" src="https://user-images.githubusercontent.com/117139419/207982436-0c6fffff-e313-4216-8fc1-7353c141b459.png">
<img width="630" alt="allele2_freq_mainland" src="https://user-images.githubusercontent.com/117139419/207982459-452c9604-5df4-40ac-9011-31eb9bb02426.png">
Figs. 14 and 15 -- Distribution of allele frequencies in island fox populations. 


* The results in Fig. 8 show that the SNPs in island fox genomes tend to cluster around the same nucleotide positions, with two large peaks around 400 and 1650. Fig. 12, however, shows a relatively even distribution of SNPs across the genomes of mainland ancestors. 
* Fig. 9 displays lows densities of SNPs at a few positions in the island fox genome alignments, while Fig. 13 shows a high density of SNPs distributed relatively evenly across all positions in the alignments of mainland ancestors. 
* SNPs indicate a position in the nucleotide in which genomic sequences vary. Therefore, a higher density of SNPs across nucleotide and alignment positions indicates a higher degree of genetic diversity between genomic sequences of a population. The results of the mainland ancestor represent the expected result, in which the mainland ancestors have a high degree of SNPs (compared to island foxes) across all positions in the nucletide. The island fox results, however, display that island foxes have relatively few SNPs between the genome sequences. Additionally, these SNPs tend to cluster at the same positions. Together, these results suggest that mainland ancestors have a high degree of diversity among their genomes (diversity is critical in population survival and persistence), while island foxes (across all islands) have very low diversity between their genomes.

* The results in Figs. 14 and 15 show a normal distribution of allele frequencies in mainland ancestor populations. There is a large number of fixed alleles and some intermediate alleles. On the other hand, Figs. 10 and 11 show several intermediate allele frequencies. Such results are indicative of a population bottleneck. This is supported by the results in Fig. 2, which show a drastic decline in island fox populations on all islands around the year 2000. 
* These results pose a challenge for island fox populations. As a species that already has demonstrated low genetic diversity, population bottlenecks further decrease population size and reduce genetic variation. 

* Note: Tables of position, allele, and location of all SNPs for both analyses can be found in analysis_files -> final_proj.pdf


## Discussion

These results indicate that, compared to their mainland relatives (gray fox, kit fox, red fox, and gray wolf), island foxes have a relatively low degree of genetic variation. This is problematic for the persistence of island fox populations. As they are already small in size, island fox populations face an increased threat of extinction due to this low genetic diversity. Due to a low degree of heterozygosity across the genomes, island foxes do not have many mutations that would be beneficial to survival when faced with environmental pressures, such as disease or drought. This means that events such as these could easily cause the entire island fox population to go to extinction. 

There are several ongoing projects on the Channel Islands to help protect island fox populations:
* Vehicle and aerial telemetry
* Yearly trapping, blood sampling for disease, and vaccination
* Survival database to track mortalities and identify main causes of fox mortality

Through these efforts, the Island Fox Working Group has been able to increase fox populations to levels comparable to those before the population bottleneck occurred. This allowed the island fox's status to downgrade from endangered to near threatened. 


The biggest difficulty in implementing these analyses was the lack of available data on island foxes. Island foxes have small populations and, therefore, there are very few genetic samples to utilize for analysis. A larger data set for analysis improves the accuracy of the results -- a larger sample size is always preferrable.

If I did these analyses again, I would...
* look for genomic sequences that have more samples with a high degree of similarity -- was difficult to do analyses on both island foxes and gray foxes as both populations have a relatively low amount of data available for use
* there was also the possibility of analyzing whole genome sequences, but the mitochondrial genome sequences were more efficient for time/space
* budget more time for analyses to run & more memory space on the computer for larger data files

## References

* Jacqueline A. Robinson, Diego Ortega-Del Vecchyo, Zhenxin Fan, Bernard Y. Kim, Bridgett M. vonHoldt, Clare D. Marsden, Kirk E. Lohmueller, Robert K. Wayne, Genomic Flatlining in the Endangered Island Fox, Current Biology, Volume 26, Issue 9, 2016, Pages 1183-1189, ISSN 0960-9822, https://doi.org/10.1016/j.cub.2016.02.062.
* Wayne, R.K., George, S.B., Gilbert, D., Collins, P.W., Kovach, S.D., Girman, D. and Lehman, N. (1991), A MORPHOLOGIC AND GENETIC STUDY OF THE ISLAND FOX, UROCYON LITTORALIS. Evolution, 45: 1849-1868. https://doi.org/10.1111/j.1558-5646.1991.tb02692.x

* Catalina Island Conservancy. https://www.catalinaconservancy.org/index.php?s=wildlife&p=recovery_of_the_catalina_island_fox
* Friends of the Island Fox. http://www1.islandfox.org/
* NCBI GenBank. https://www.ncbi.nlm.nih.gov/genbank/
