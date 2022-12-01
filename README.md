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

The goal of my project is to answer the question, What is... the degree of genetic variation among Channel Island foxes and how does this compare to mainland foxes? I will use this to investigate how these small populations vary from one another and some of the potential implications of this lack of genetic diversity. I will then expand the project to also include an investigation into the accumulation of damaging genetic variants by island foxes (as a result of low diversity) and at which parts of the genome these are most likely to occur. This will then lead to a discussion of the potential future of the island foxes. This will include how to protect and ensure the persistence of these endangered populations of foxes, as well as other ideas of conservation. 

I may also potentially expand the project to include an analysis on the genetic variation between closely related mainland fox species. I will then compare this genetic diversity to that of the island foxes and discuss the possible implications. 

The methods I will use to do this are...
I will clean up and analyze the data using VS code. I will then align the data using mafft. From this aligned sequence, I will be able to determine how the different foxes vary from one another and where in the genomic sequences this occurs. I will use iqtree to infer a phylogeny of the island foxes, while also including some mainland fox ancestors (using RStudio/ remote cluster). I can also make a graph of the heterozygosity at each chromosome for each of the foxes, which will help to assess the genetic variation among the populations of foxes on each island.

The data I will use are (my own data/ data publicly available at YYY/ simulations)
data publicly available at NCBI's Sequence Read Archive -- Project PRJNA312115. I may also use data from the Catalina Island Conservancy from my internship this past summer. 

## Methods

The tools I used were... 

Channel Island foxes:
1. mafft -- multiple sequence alignment
2. IQ tree -- Channel Island foxes & mainland fox ancestors (outgroup), with bootstrap support
3. PCA plot (in R) to show distribution of fox species
4. Analyses (in R) -- plot coloration, size, muzzle shape, tail length; assess variation within island populations (degree of heterozygosity)

Repeat for mainland foxes:
1. mafft -- multiple sequence alignment
2. IQ tree with bootstrap support (Channel Island vs mainland fox groups highlighted)
3. PCA plot
4. Analysis of variation -- for individual fox species compared to the clade as a whole (both mainland and Channel Island included) and compare diversity within Channel Island vs mainland populations
5. assess heterozygosity in mainland vs Channel Island populations as a measure of genetic variation


See analysis files (uploaded).
- aligned sequences and tree for mitochondrial genome sequences of island foxes with grey fox (CA mainland fox) outgroup
- aligned sequences for mainland fox tree for comparison of island/mainland fox diversity

- trees created using NCBI's genome workbench, as well as RStudio


## Results

The tree in Figure 1...

## Discussion

These results indicate...

The biggest difficulty in implementing these analyses was...

If I did these analyses again, I would...

## References

