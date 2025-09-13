# Hypersaline brine induces PI5P4K-2α up-regulation and high mortality in the scallop *Argopecten purpuratus*


This repository contains the source files and supplementary information for the implementations and use cases presented in the work:

Giannina Maya-Hun<sup>1</sup>, Rodrigo Orrego<sup>2</sup>, David Medina-Ortiz<sup>3</sup>, Patricia Romero-Murillo<sup>2</sup>, Enzo García-Bartolomei<sup>4</sup>, Fernando Valenzuela<sup>5</sup>, Ricardo Guiñez<sup>2</sup>, Martha Hengst<sup>1*</sup><br>

Hypersaline brine induces PI5P4K-2α up-regulation and high mortality in the scallop *Argopecten purpuratus*
. <br>
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
- [Methodology](#methodology)
- [Key results](#results)
- [Repository description](#repo_define)
- [Requirements and instalation](#requirements)
- [Raw data and preprocessing](#data)
- [General comments](#comments)
- [Contacts](#contacts)
---

<a name="summary"></a>

## Hypersaline brine induces PI5P4K-2α up-regulation and high mortality in the scallop *Argopecten purpuratus*

Salinity fluctuations are a major environmental stressor shaping the physiology, survival, and distribution of marine bivalves. In northern Chile, where reverse osmosis desalination is expanding rapidly, the discharge of hypersaline brine into coastal ecosystems has raised concerns about potential ecological risks. Here, we examined the acute and chronic responses of juvenile Argopecten purpuratus to brine effluent with an initial salinity of 57.7 g/L under controlled laboratory conditions. Survival analysis revealed a steep, concentration-dependent response, with an LC₅₀ of 52.8 g/L at 96 h and complete lethality at 57.7 g/L within 48 h. While mortality remained low up to 45.8 g/L, prolonged exposure to 51.8 g/L caused delayed but severe cumulative mortality, reaching ~75% by day 28. At the molecular level, degenerate primers designed from Crassostrea gigas yielded a fragment identified as phosphatidylinositol-5-phosphate 4-kinase type II alpha (PI5P4K-2α). Phylogenetic analyses confirmed the evolutionary placement of this sequence within scallops (Pectinidae), and gene expression assays revealed a significant transient upregulation after 7 days of exposure to elevated salinity, followed by a return to baseline levels. Together, these results provide the first evidence of PI5P4K-2α induction in scallops under hyperosmotic stress and establish A. purpuratus as a sensitive model for evaluating the ecological risks of hypersaline discharges. These findings highlight the need to integrate molecular markers and physiological endpoints into environmental monitoring frameworks in desalination-impacted regions.

---

<a name="methodology"></a>

## Methodology  

The experimental design is summarized in **Figure 1** of the manuscript and encompassed:  

1. **Bioassays**  
   - Juvenile scallops (*A. purpuratus*, n = 360) acclimated for 14 days.  
   - Exposure to salinity treatments: 34 g/L (control), 36.4, 45.8, 51.8, and 57.7 g/L.  
   - Acute (96 h) and chronic (28 d) exposures.  
   - Mortality recorded and LC₅₀ estimated with a four-parameter log-logistic model.  

2. **Molecular analysis**  
   - Degenerate primers designed from *Crassostrea gigas*.  
   - PCR amplification and cloning of target sequences.  
   - Sequence validation by BLASTx against the NCBI NR database.  
   - Identification of PI5P4K-2α.  

3. **Phylogenetic analysis**  
   - Frame selection optimized using Gaussian Mixture Models (GMM).  
   - Multiple sequence alignment and maximum-likelihood tree construction.  
   - Placement of *A. purpuratus* sequence within Pectinidae.  

4. **Expression analysis**  
   - qRT-PCR with EF1A as reference gene.  
   - Non-parametric statistics (Kruskal–Wallis + Dunn’s post hoc).  
   - Relative expression profiles across treatments and time points.  

---

<a name="results"></a>

## Key Results  

- LC₅₀ of 52.8 g/L at 96 h, with complete mortality at 57.7 g/L within 48 h.  
- Progressive mortality observed at 51.8 g/L, reaching ~75% by day 28.  
- Identification of PI5P4K-2α as a stress-responsive gene in *A. purpuratus*.  
- Phylogenetic placement confirmed within scallops, clustering with *A. irradians* and *P. maximus*.  
- Significant transient upregulation of PI5P4K-2α at day 7 under elevated salinity.  

---

<a name="repo_define"></a>

## Repository structure  

```
PI5P4K_analysis/
│
├── data_for_plots/                # Processed datasets  
├── external_results_tools/        # External results 
├── figures_paper/                 # Generated figures
├── plots_generation/              # Implemented notebooks for generating plots
├── raw_data/                      # Raw datasets  
├── environment.yml                # Conda environment specification  
├── requirements.txt               # Python dependencies  
└── README.md                      # Project description (this file)  
```

---

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

## Citation  

If you use this repository, please cite:  

> Maya-Hun, G., Orrego, R., Medina-Ortiz, D., Romero-Murillo, P., García-Bartolomei, E., Valenzuela, F., Guiñez, R., & Hengst, M. (2025). Hypersaline brine induces PI5P4K-2α up-regulation and high mortality in the scallop *Argopecten purpuratus*. [Journal name], [volume(issue)], [pages]. https://doi.org/[DOI].  
