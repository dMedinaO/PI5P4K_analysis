# Expression of the PI5P4K-2α gene in *Argopecten purpuratus* under chronic exposure to desalination brine

This repository contains the source files and supplementary information for the implementations and use cases presented in the work:

Giannina Maya-Hun<sup>1</sup>, Rodrigo Orrego<sup>2</sup>, David Medina-Ortiz<sup>3</sup>, Patricia Romero-Murillo<sup>2</sup>, Enzo García-Bartolomei<sup>4</sup>, Fernando Valenzuela<sup>5</sup>, Ricardo Guiñez<sup>2</sup>, Martha Hengst<sup>1*</sup><br>

Expression of the PI5P4K-2α gene in *Argopecten purpuratus* under chronic exposure to desalination brine. <br>
https://doi.org/XXXXXX<br>

<sup>*1*</sup><sub>Departamento de Ciencias Farmacéuticas, Universidad Católica del Norte, Av. Angamos 0610, 1270709 Antofagasta, Chile.</sub> <br>
<sup>*2*</sup><sub>Instituto de Investigación de Recursos Biológicos Alexander von Humboldt, Facultad de Ciencias del Mar y Recursos Biológicos, Universidad de Antofagasta, Av. Angamos 601, 1270300 Antofagasta, Chile.</sub> <br>
<sup>*3*</sup><sub>Departamento de Ingeniería en Computación, Universidad de Magallanes, Punta Arenas, Chile.</sub> <br>
<sup>*4*</sup><sub>Programa Doctorado en Ciencias Ambientales, Centro EULA-Chile, Universidad de Concepción, Víctor Lamas 1290, 4070386 Concepción, Chile.</sub> <br>
<sup>*5*</sup><sub>Centro de Bioinnovación, Universidad de Antofagasta, Av. Angamos 601, 1270300 Antofagasta, Chile.</sub> <br>
<sup>*\**</sup><sub>Corresponding author</sub> <br>

---
## Table of Contents
- [A summary of the proposed work](#summary)
- [Requirements and instalation](#requirements)
- [Raw data and preprocessing](#data)
- [General comments](#comments)
- [Contacts](#contacts)
---

<a name="summary"></a>

## Expression of the PI5P4K-2α gene in *Argopecten purpuratus* under chronic exposure to desalination brine.

Salinity fluctuations are a critical environmental factor influencing the distribution, community structure, and physiological performance of marine organisms. In Chile Atacama Desert, the widespread adoption of reverse osmosis (RO) desalination has led to increasing discharges of hypersaline brine into coastal ecosystems, raising potential risks for native species. This study evaluated the physiological and molecular responses of Argopecten purpuratus, a native scallop of high ecological and economic importance, to brine with an initial salinity of 57.7 g/L under controlled laboratory conditions. Juvenile scallops were exposed for 28 days to different brine dilutions, and expression of the PI5P4K-2α gene was assessed by quantitative real-time PCR in gill tissue. The results revealed statistically significant changes in PI5P4K-2α gene expression in response to hypersaline stress, suggesting a potential role for this gene in osmoregulatory adaptation in A. purpuratus. These findings provide molecular evidence of sublethal effects of desalination brine and contribute baseline data for environmental risk assessments in marine habitats affected by this type of discharge.

<a name="requirements"></a>

## Requirements

- python=3.10+
- Bio
- itertools
- matplotlib
- numpy
- pandas
- scipy
- seaborn
- statsmodels
- warnings
- biopython

Based on the requirements, an environment file [environment.yml](environment.yml) was generated. To crete the environment, please write the following command line in the linux terminal:

```
conda env create -f environment.yml
```

With the environment created, you can activate the environment

```
conda activate PI5P4K_analysis_env
```

<a name="data"></a>

## Raw data and preprocessing

The raw data used to produce the figures in the paper is available in the folder: [raw_data](raw_data/).

The following content is available:

- [lc50_data](raw_data/lc50_data.csv): Data for LC50 analysis
- [mortality_data](raw_data/mortality_data.xlsx): Data for mortality analysis
- [oligos_sequences](raw_data/oligos_sequences.fasta): Raw fasta sequence used in this work
- [relative_expression](raw_data/relative_expression.xlsx): Data for relative expression analysis

This repository has different implemented notebooks in the folder [notebook_analysis](notebook_analysis/)

- [LC50_analysis.ipynb](notebook_analysis/LC50_analysis.ipynb)
- [mortality_analysis.ipynb](notebook_analysis/mortality_analysis.ipynb)
- [relative_expression.ipynb](notebook_analysis/relative_expression.ipynb)
- [phylogenetic_tree.ipynb](notebook_analysis/phylogenetic_tree.ipynb)

The figures of the paper are automatically generated using each notebook and saved in the folder [figures_paper](figures_paper).

<a name="comments">General comments</a>

The folder [tmp](tmp) contains tmp files produced during the execution of the notebooks. Besides, the folder [external_results_tools](external_results_tools/) contains the following input files:

- [Hit tables result for the alignment sequences](external_results_tools/4J6C457P013-Alignment-HitTable.csv)
- [Full sequences for the alignment sequences](external_results_tools/seqdump.txt)
- [Translated raw input sequence in its 6 read frame](external_results_tools/translate.txt)

This project is licensed under the license GNU GENERAL PUBLIC LICENSE

<a name="contacts">Contacts</a>

- Corresponding author: Martha Hengst [mhengst@ucn.cl](mhengst@ucn.cl)
- First author: Giannina Maya-Hun [gianny.maya@gmail.com](gianny.maya@gmail.com)
- Data anlysis/implementation: David Medina-Ortiz [david.medina@umag.cl](david.medina@umag.cl )