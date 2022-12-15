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

The goal of my project is to answer the question, What is... the degree of genetic variation among Channel Island foxes and how does this compare to mainland foxes? I will use this to investigate how these small populations vary from one another and some of the potential implications of this lack of genetic diversity. This will then lead to a discussion of the potential future of the island foxes. This will include how to protect and ensure the persistence of these endangered populations of foxes, as well as other ideas of conservation. 

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


Island Fox



Mainland Ancestors



## Discussion

These results indicate...

The biggest difficulty in implementing these analyses was...
- not a lot of data on island foxes
- time, space

If I did these analyses again, I would...
- limitations of not enough data
- could do whole genome analysis as well -- need computer with larger memory space, timely

## References

Friends of the Island Fox -- pop data
