TEMPLATE: NEW DATASET CLEANUP AND MANAGEMENT

This is the structure of the template. After setting it up, replace the text in the README with informartion specific to your dfata cleanup project.
A sample README can be found at https://github.com/BrunaLab/HeliconiaSurveys  


new_dataset_template  
<pre>
|- code/                  # Folder for R code   
|    +- data_cleaner.R    # R script for loading, cleaning, and organizing dataset 
|   
|- data/                  #   
|    +- data_clean/       # folder for the clean data files in open formats (.txt, .csv).
|    +- data_raw/         # folder for raw data not changed once created    
|        +- my_data.csv   # data files in open formats (.txt, .csv). Do not modify these directly.   
|   
|- docs/                  # Folder for metadata
|    +- docs.md           # file describing content & structure of clean data files 
|  
|- CODE_OF_CONDUCT.md     # code of conduct for collaborators and contributors  
|- CONTRIBUTING.md        # information on how to suggest improvements to the code  
|- LICENSE.md             # specifies the conditions of use and reuse of the code, data & text  
|- NEWS.md                # details updates, version status, and other milestones  
|- README.md              # top-level description of content and guide to users  
|- makefile.R             # file to execute data cleaning & organizing using scripts in `code` folder  
</pre>

### How to use

* Create a new repository for your project using this as a template
* Open the README and edit it the title.

### Key Concepts 

This template structure is based on [Noble 2009](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1000424). Fundamental to this approach is:

* Keep the raw data unaltered in their own folder. Any derived data (intermediate or final) is kept in a different folder.
* Code is kept separate from data.
* Manuscript production is in a different respository.
* The `README` describes the purpose of the repository and all the contents.
* There is a top-level `makefile` that documents the computational study in executable form. Those files may call out to other .R scripts in the `code` folder.
* There is a metadata file describing all input and output data files.

### TO ADD:

- Github actions: 
  - data validation with pointblank
  - automatic versioning after corrections & saving txt file of `clean_data ` with version no. 

- More advanced, likely overkill:
    - `Renv` for package versions
    - `targets` to manage project workflow.


Inspired by R packages [`starters`](https://itsalocke.com/starters/), [`rrrpkg`](https://github.com/ropensci/rrrpkg), [`template`](https://github.com/Pakillo/template?tab=readme-ov-file), and [`rr-init`](https://github.com/Reproducible-Science-Curriculum/rr-init?tab=readme-ov-file).
