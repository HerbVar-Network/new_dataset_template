<!--- from EB project to show goal readme --->  


#### TO ADD:

- Github actions: 
  - data validation with pointblank
  - automatic versioning after corrections & saving txt file of `clean_data ` with version no. 
- Renv for package versions?

# PROJECT NAME

## Repository Overview


**This repository includes the following:**

1. **R Code** used to:
    - process raw data files and correct / make changes to individual records [(`code/data_cleaning`)](code/data_cleaning)
    - review the clean data for anomalies, unusual records for review, etc. [(`code/data_review`)](code/data_review)
    - prepare the version of the data to be archived at Dryad [(`code/data_archive`)](code/data_archive)
    - prepare figures for the data summaries and publications  [(`code/figures`)](code/figures)
    
2. **Data:**
    - .csv files of raw data [(`data/survey_raw`)](data/data_raw)
    - .csv files of clean data [(`data/survey_clean`)](data/data_clean)
    
3. [**Data validation algorithms and their output**](https://---.github.io/---/survey_validation.html) algorithms 

4. [**Summaries of the data**](https://---.github.io/---/data_overview.html) 

5. [**A log of updates and corrections**](NEWS.md).

6. **Methodological information and records**, including: 
    - scanned copies of the [original datasheets](docs/survey_datasheets/survey_datasheets.md), 
 

## Workflow

### STEP 1. Correct, organize, & review the data with `01_clean_survey_data.R`

**Code:** 

**Output:** 

**File Versioning**: To ensure reproducibility, users must know the precise version of a data set they used in their analyses. Below each function is a snippet of code entitled `create version files`; uncommenting and running this code will create or update the file recording the version number of the file being created (see ['Frictionless Standards'](https://specs.frictionlessdata.io/patterns/#data-package-version)).  

The first time the files are 'cleaned' or 'created' a `.txt` file will automatically be created assigning the version number `1.0.0` with the date of file creation. If a file already exists, the user will be asked if the file being created is an updated version. 'N' will execute the code without changing the version number or date; 'Y' will trigger a follow-up question of whether the new version is a `major`, `minor`, or `patch` update. The version number will be appriopriately incremented by 1 (e.g., major: 1.0.0 -> 2.0.0, minor: 1.0.0 -> 1.1.0, patch: 1.0.0 -> 1.0.1). 

- _[NB: this was automated but is temporarily manual to allow automated validation, see [details here](https://github.com/BrunaLab/HeliconiaSurveys/issues/41)]_.

**Data Validation & Review:** 

- The functions for this review are in the folder [`code/survey_review`](code/survey_review). 

- These and other validations are also carried out using the [`pointblank`](https://rich-iannone.github.io/pointblank/) package; ***The output of the data validation process suggesting records for review is*** [***here***](https://brunalab.github.io/HeliconiaSurveys/survey_validation/survey_validation.html).



### STEP 2. Prepare the files for archiving at Dryad with `02_create_survey_archive.R`.

**Code: **[`02_create_survey_archive.R`](/02_create_survey_archive.R) will prepare the version of the 'clean' survey data and file of plot descriptors that are archived in Dryad.  

- Uncommenting and running the snippet of code entitled `create version files` will prompt the user to answer if they are creating an updated version of the data set, and if so, if the version is a `major`, `minor`, or `patch` update. 


## Improvements, Suggestions, & Questions

We welcome any suggestions for package improvement or ideas for features to include in future versions. If you have Issues, Feature Requests and Pull Requests, [here is how to contribute](CONTRIBUTING.md). We expect everyone contributing to the package to abide by our [Code of Conduct](CODE_OF_CONDUCT.md).

## Contributors

-   [Emilio M. Bruna](https://github.com/embruna), University of Florida
  

## Citation

Please cite both the Data Paper and Dryad Repository when using these data for research, publications, teaching, etc.


Bruna, Emilio M. et al. (2023), Data from: Demography of the understory herb _Heliconia acuminata_ in an experimentally fragmented tropical landscape, Dryad, Dataset, https://doi.org----

Bruna, Emilio M. María Uriarte, Maria Rosa Darrigo, Paulo Rubim, Cristiane F. Jurinitz, Eric R. Scott, Osmaildo Ferreira da Silva, & W. John Kress. 2023. Demography of the understory herb _Heliconia acuminata_ in an experimentally fragmented tropical landscape. Ecology XX(XX):xx-xx.


If you wish to cite this repository, please cite as follows:

@misc{BrunaSurveys2023,  
  author = {Bruna, E.M., Eric R. Scott},  
  title = {Heliconia Demography Project},  
  year = {2023},  
  publisher = {GitHub},  
  journal = {GitHub repository},  
  note = {data v1.0.0.},  
  url={https://github.com/BrunaLab/HeliconiaSurveys}  
}  

___

<!--- EXAMPLE OF WHAT THE README FOR A NEW DATA CLEANUP PROJECT WILL LOOK LIKE

# Heliconia Demography Project

## Repository Overview

This repository is for the cleanup, organization, and archiving of demographic survey data collected as part of the _Heliconia_ Demography Project. These procedures are carried out by executing two R scripts (see _Workflow_, below). An overview of the 1998-2002 surveys and the associated metadata have been submitted to _Ecology_ for publication as a data paper; upon acceptance the demographic data will be archived in the Dryad Digital Repository. **There is a separate [Github repository for the 2023 _Ecology_ Data Paper](https://github.com/BrunaLab/Bruna_etal_HeliconiaDataPaper)**; that repo includes the final version of the paper (in `.pdf` format) there and the `.Rmd` files used containing the text and code for analyses, data summaries, figures, and tables.

**This repository includes the following:**

1. **R Code** used to:
    - process raw data files and correct / make changes to individual records [(`code/survey_cleaning`)](code/survey_cleaning)
    - review the clean data for anomalies, unusual records for review, etc. [(`code/survey_review`)](code/survey_review)
    - prepare the version of the data to be archived at Dryad [(`code/survey_archive`)](code/survey_archive)
    - prepare figures for the data summaries and publications  [(`code/figures`)](code/figures)
    
2. **Data:**
    - .csv files of raw data [(`data/survey_raw`)](data/survey_raw)
    - .csv files of clean demographic data and plot descriptors [(`data/survey_clean`)](data/survey_clean)
    - .csv files of any records suggested for further review [(`data/survey_review`)](data/survey_review)
    - .csv files of the datasets archived at Dryad [(`data/survey_archive`)](data/survey_archive).   
    
3. [**Data validation algorithms and their output**](https://brunalab.github.io/HeliconiaSurveys/survey_validation/survey_validation.html) algorithms 

4. [**Summaries of the demographic data**](https://brunalab.github.io/HeliconiaSurveys/data_summaries/data_overview.html) (e.g., total number of plants, total number of plants per plot, total number of seedlings per year).

5. [**A log of updates and corrections**](NEWS.md).

6. [**HDP Publications and publicly available data sets**](docs/publications/publications.md).

7. **Methodological information and records**, including: 
    - scanned copies of the [original datasheets](docs/survey_datasheets/survey_datasheets.md), 
    - an overview and downloadable record of plants for which [id tags were replaced](docs/tag_changes/tag_changes.md) during field surveys, 
    - records of [treefalls in plots and any damage they caused to plants](docs/treefalls/treefalls.md), 
    - [maps of the demographic plots](docs/maps/maps.md) that can be downloaded in different formats.


## Workflow

### STEP 1. Correct, organize, & review the data with `01_clean_survey_data.R`

**Code:** The functions in [`01_clean_survey_data.R`](/01_clean_survey_data.R) will consolidate the 'raw' survey data, clean it, organize it in tidy form, and conduct a series of validation procedures. 

- [`ha_data<-clean_heliconia_data()`](code/survey_cleaning/clean_heliconia_data.R) calls several other functions found in the folder [`code/survey_cleaning`](code/survey_cleaning). These functions include an `.R` script for cleaning and correcting the records for plants found in each demographic plot and producing `csv files of 'clean' data and any records recommended for follow-up review. 

- [`create_plot_info_file()`](code/survey_cleaning/create_plot_info_file.R) will create a `.csv` file of plot-level descriptors.

- [`create_tag_changes_file()`](code/survey_cleaning/create_tag_changes_file.R) creates a `.csv` of all the plants whose tags were replaced during the field survey (necessary only if one is reviewing 
the survey history of individual plants using the original data sheets) 

- [`create_plot_treefalls_file()`](code/survey_cleaning/create_plot_treefalls_file.R) creates a `.csv` with records of any new tree falls and gaps noted in the demographic plots during the survey. _(NB: review of these records is currently in progress.)_

- [`create_plant_damage_file()`](code/survey_cleaning/create_plant_damage_file.R) creates a `.csv` with any observations by the survey team of plants that were damaged by fallen branches or trees. _(NB: review of these records is currently in progress.)_

**Output:** The `.csv` files produced by these functions are saved to the folder [`data/survey_clean`](data/survey_clean). Executing the code also creates or edits `.txt` files with the relevant file's version number and date of most recent update (see _'File Versioning'_, below).

**File Versioning**: To ensure reproducibility, users must know the precise version of a data set they used in their analyses. Below each function is a snippet of code entitled `create version files`; uncommenting and running this code will create or update the file recording the version number of the file being created (see ['Frictionless Standards'](https://specs.frictionlessdata.io/patterns/#data-package-version)).  

The first time the files are 'cleaned' or 'created' a `.txt` file will automatically be created assigning the version number `1.0.0` with the date of file creation. If a file already exists, the user will be asked if the file being created is an updated version. 'N' will execute the code without changing the version number or date; 'Y' will trigger a follow-up question of whether the new version is a `major`, `minor`, or `patch` update. The version number will be appriopriately incremented by 1 (e.g., major: 1.0.0 -> 2.0.0, minor: 1.0.0 -> 1.1.0, patch: 1.0.0 -> 1.0.1). 

- _[NB: this was automated but is temporarily manual to allow automated validation, see [details here](https://github.com/BrunaLab/HeliconiaSurveys/issues/41)]_.

**Data Validation & Review:** Once the file `heliconia_survey_clean.csv` has been saved to the the [`data/survey_clean`](data/survey_clean) folder, the function [`review_heliconia_data()`](code/survey_review/review_heliconia_data.R) conducts a series of data validation procedures to flag any records to review before preparing the files to be archived at the Dryad Digital Repository. 

- The functions for this review are in the folder [`code/survey_review`](code/survey_review). 

- These and other validations are also carried out using the [`pointblank`](https://rich-iannone.github.io/pointblank/) package; ***The output of the data validation process suggesting records for review is*** [***here***](https://brunalab.github.io/HeliconiaSurveys/survey_validation/survey_validation.html).

- Any individual plant records that are flagged for review by `review_heliconia_data()` will be saved as `.csv` files in the folder [`data/survey_review`](data/survey_review). They can also be downloaded as .csv files from the Data Validation page.

### STEP 2. Prepare the files for archiving at Dryad with `02_create_survey_archive.R`.

**Code: **[`02_create_survey_archive.R`](/02_create_survey_archive.R) will prepare the version of the 'clean' survey data and file of plot descriptors that are archived in Dryad. 

- Uncommenting and running the snippet of code entitled `create version files` will prompt the user to answer if they are creating an updated version of the data set, and if so, if the version is a `major`, `minor`, or `patch` update. 

- [`create_dryad_file()`](code/survey_archive/create_dryad_file.R) will then create .csv files of (1) plot descriptors and (2) the survey data that were archived in Dryad (NB: The demographic data file uploaded to Dryad excludes some of the redundant plot identification codes and the x-y coordinates of individual plants). The function generating and saving these files is found in the folder [`code/survey_archive`](code/survey_archive), as is the [`create_version_file.R`](code/survey_archive/create_version_file.R) script used toupdate the `version_info.txt` file.

(Table 2 in Bruna et al., _Ecology_) 

- These resulting .csv files are saved to the folder `data/survey_archive`.  

## Improvements, Suggestions, & Questions

We welcome any suggestions for package improvement or ideas for features to include in future versions. If you have Issues, Feature Requests and Pull Requests, [here is how to contribute](CONTRIBUTING.md). We expect everyone contributing to the package to abide by our [Code of Conduct](CODE_OF_CONDUCT.md).

## Contributors

-   [Emilio M. Bruna](https://github.com/embruna), University of Florida
-   [Eric R. Scott](https://github.com/Aariq), University of Arizona

## Citation

Please cite both the Data Paper and Dryad Repository when using these data for research, publications, teaching, etc.


Bruna, Emilio M. et al. (2023), Data from: Demography of the understory herb _Heliconia acuminata_ in an experimentally fragmented tropical landscape, Dryad, Dataset, https://doi.org----

Bruna, Emilio M. María Uriarte, Maria Rosa Darrigo, Paulo Rubim, Cristiane F. Jurinitz, Eric R. Scott, Osmaildo Ferreira da Silva, & W. John Kress. 2023. Demography of the understory herb _Heliconia acuminata_ in an experimentally fragmented tropical landscape. Ecology XX(XX):xx-xx.


If you wish to cite this repository, please cite as follows:



@misc{BrunaSurveys2023,  
  author = {Bruna, E.M., Eric R. Scott},  
  title = {Heliconia Demography Project},  
  year = {2023},  
  publisher = {GitHub},  
  journal = {GitHub repository},  
  note = {data v1.0.0.},  
  url={https://github.com/BrunaLab/HeliconiaSurveys}  
}  
--->
