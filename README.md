# LEISURE_CogEEG

This repository contains the analysis code for my doctoral thesis and associated publications, investigating periodic and aperiodic EEG biomarkers of cognition in healthy older adults.

The analyses are structured around two key research objectives:
1. Cross-sectional analyses exploring baseline relationships between EEG measures and cognitive performance, with particular emphasis on sustained attention and memory function
2. Longitudinal investigations examining changes in cognitive performance and EEG measures following a multimodal lifestyle intervention targeting modifiable dementia risk factors

Each folder corresponds to a specific analysis or publication and includes a mix of Jupyter Notebooks, R code, and R analysis outputs.

The data used for the analyses in this repository is part of the LEISURE study. For details about the study design and protocol, refer to [Treacy et al., (2023)](https://doi.org/10.3233/JAD-230193).

## Associated Publications

- [Campbell et al., (2024)](https://doi.org/10.1016/j.neurobiolaging.2024.09.005): Resting-state EEG correlates of sustained attention in healthy ageing: Cross-sectional findings from the LEISURE study

    Analysis found in: `studies/LEISURE_rsEEG_Sustained_Attention_T1`

## EEG Preprocessing and Spectral Analysis

EEG preprocessing of resting-state data and spectral analysis were carried out in a separate repository. For code related to these processes, please refer to the [EEG-pyline](https://github.com/teanijarv/EEG-pyline/tree/main) repository’s `studies` folder, where the scripts for specific publications can be found.

## Variables

### Cognitive measures:
- Various Cambridge Neuropsychological Test Automated Battery outcome measures (CANTAB; *Cambridge Cognition, 2019*)
- Sustained Attention to Response Task (SART; conducted using *E-Prime 2.0.10*)

### EEG measures
- Resting-state eyes closed and task based EEG (during SART)
- Aperiodic measures - exponent (slope), offset (intercept)
- Alpha measures - aperiodic-adjusted individual alpha power and individual alpha peak frequency

## Data

Due to privacy restrictions, the data cannot be shared directly. However, if you are interested in a potential collaboration or have any questions, please contact me via email: [alicia.campbell@research.usc.edu.au](mailto:alicia.campbell@research.usc.edu.au)
