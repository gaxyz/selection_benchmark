# Selection Tests Benchmarking

This repository contains the code for benchmarking different selection scores for detecting selective sweeps in population genetics data.

Code found here includes:

- SLiM scripts for simulating data
- Nextflow modules for efficiently running selection scans
- Python scripts for wrangling results into tables for comparison
- Python scripts for computing ROC curves and other metrics


## Methods for detecting sweeps

We will use the following methods for selecting sweeps:

- XP-EHH
- Ohana
- hapFLK
- PBS
- PCAdapt



### Ohana

The Ohana score is computed using a maximum likelihood approach by comparing admixture-corrected SNP covariance matrices with an admixture-corrected genome-wide covariance matrix. It does not require data to be phased, but there is a need for checking that the admixture components are properly modelled (usually with the ADMIXTURE algorithm). Considering that the ADMIXTURE algorithm is pretty slow, we could use archetypal analysis or some other (faster) way of computing admixture components.

### hapFLK


### XP-EHH

Requires Phased Data

### PBS

### PCAdapt


## Bioinformatic Software Requirements

We will need the following software for simulating and processing population genomics data:

- SLiM (simulations)
- tskit (manipulating treesequence files)
- vcftools (modifying VCF files)
- samtools (modifying and indexing VCF files)
- SHAPEIT4 (phasing)
- plink2 (some software requires the input to be PLINK format)
- ADMIXTURE (computing admixture components)
- Ohana
- selscan
- Relate
- hapFLK

## Other Requirements

All requirements can be found in the associated `requirements.yaml` file.