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

The data I will use are mitochondrial genome data publicly available at NCBI's GenBank. Species include Urocyon littoralis, Urocyon cinereoargenteus, Vulpes Vulpes, Vulpes macrotis, and Canis lupus lupus (accession IDs can be found in uploaded files -- islandmito.fasta, mainland.fasta, and mainland2.fasta. 

## Methods

The tools I used were... 

#Channel Island foxes:

NCBI Genome Workbench
1. Phylogenetic tree
2. Multiple sequence alignment viewer (with differences shown)

Remote Cluster, RStudio
1. MAFFT -- multiple sequence alignment
2. IQ-TREE -- Channel Island foxes & mainland fox ancestors (outgroup), with bootstrap support
3. Analysis of genetic diversity -- SNP density, allele frequency distribution, polymorphic sites
4. Analysis of overall population size and density for each island -- plot population size over span of ~20 years, plot population density

#Mainland foxes:

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

The tree in Figure 1...

## Discussion

These results indicate...

The biggest difficulty in implementing these analyses was...
- not a lot of data on island foxes
- time, space

If I did these analyses again, I would...
- limitations of not enough data
- could do whole genome analysis as well -- need computer with larger memory space, timely

## References

