TEMPLATE: NEW DATASET CLEANUP AND MANAGEMENT

This is the structure of the template. After setting it up, replace the text in the README with informartion specific to your dfata cleanup project.
A sample README can be found at https://github.com/BrunaLab/HeliconiaSurveys  


new_dataset_template  

|- code/                # Folder for R code    
|  +- data_cleaner.R    # R script for loading, cleaning, and organizing dataset  
|   
|- data/                #   
|  +- data_clean/       # folder for clean data files in open formats such as TXT, CSV, TSV, etc.     
|  +- data_raw/         # folder for raw data not changed once created    
|      +- my_data.csv   # data files in open formats such as TXT, CSV, TSV, etc. Do not change these files directly    
|   
|- docs/                #  
|  +- docs.md           # documentation for the R files   
|  
|- CODE_OF_CONDUCT.md    # code of conduct for collaborators and contributors  
|- CONTRIBUTING.md       # information on how to suggest improvements to the code  
|- LICENSE.md            # specifies the conditions of use and reuse of the code, data & text  
|- NEWS.md               # details updates, version status, and other milestones  
|- README.md             # top-level description of content and guide to users  
|- makefile.R            # file to execute the cleaning and organizing of data using scripts in the `code` folder  


project
    |- doc/            # documentation for the study
    |  +- paper/       # manuscript(s), whether generated or not
    |
    |- data            # raw and primary data, are not changed once created 
    |  |- raw/         # raw data, will not be altered
    |  +- clean/       # cleaned data, will not be altered once created
    |
    |- code/           # any programmatic code
    |- results         # all output from workflows and analyses
    |  |- figures/     # graphs, likely designated for manuscript figures
    |  +- pictures/    # diagrams, images, and other non-graph graphics
    |
    |- scratch/        # temporary files that can be safely deleted or lost
    |- README          # the top level description of content
    |- study.Rmd       # executable Rmarkdown for this study, if applicable
    |- Makefile        # executable Makefile for this study, if applicable
    |- study.Rproj     # RStudio project for this study, if applicable
    |- datapackage.json # metadata for the (input and output) data files 

How to use
----------

* Create a new directory for your project.
* Download the [latest release] of this repository, and unzip it in the directory you just created.
* Open this document in an editor. Change the first line to reflect the title of your research study, and delete the rest of the content in this file. You can, but are not obligated to keep the Acknowledgements section.
* Delete the LICENSE.md file, unless it will also apply to your project. (However, it probbaly will not to all of it.)
* Go forth and experiment, keeping files in their appropriate places.

To the extent possible under law, the author(s) of this template have dedicated all copyright and related and neighboring rights to it to the public domain worldwide under the [CC0 Public Domain Dedication]. The template and all other content in the [rr-init repository] is distributed without any warranty.

Key concepts and goals
----------------------

See [Noble 2009] for a full description of and argument for the principle template structure. Some concepts and goals that guided this work:
* (Good) There is a folder for the raw data, which do not get altered, or intermixed with data that is the result of manual or programmatic manipulation. I.e., derived data is kept separate from raw data, and raw data are not duplicated.
* (Good) Code is kept separate from data.
* (Better) Manuscript production output is kept separate from everything else.
* (Good) There is a scratch directory for experimentation. Everything in the scratch directory can be deleted at any time without negative impact. 
* (Better) There should be a `README` in evey directory, describing the purpose of the directory and its contents.
* (Best) There is a top-level `Makefile` or [Rmarkdown] file that documents the computational study in executable form. Those files may call out to other `Makefile`'s or `.Rmd` files in subdirectories.
* (Best) There is a formal metadata descriptor at the root of the package that describes all the important input and output data files.
* (Meta) The template structure should have no special software or skill prerequisites to install. Specifically, deploying the template structure should not require installing git, or using the command line.




#### TO ADD:

- Github actions: 
  - data validation with pointblank
  - automatic versioning after corrections & saving txt file of `clean_data ` with version no. 

- More advanced, likely overkill:
    - `Renv` for package versions
    - `targets` to manage project workflow.
