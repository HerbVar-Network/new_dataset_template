# This code generates useful information for reproducibility

packages_and_session_info <- function() {

  # packages used: table and citations --------------------------------------

  # What software to cite? Guidelines from the Software Citation Checklist
  # (https://zenodo.org/records/3479199):

  #   "You should cite software that has a significant impact on the research outcome
  # presented in your work, or on the way the research has been conducted.
  # If the research you are presenting is not repeatable without a piece of
  # software, then you should cite the software. Note that the license or
  # copyright of the software has no bearing on whether you should cite it."

  # This might include:

  # "Software (including scripts) you have written yourself to conduct the
  # research presented. A software framework / platform upon which the software you
  # wrote to conduct the research relies. Software packages, plugins, modules and
  # libraries you used to conduct your research and that perform a critical role
  # in your results. Software you have used to simulate or model phenomena/systems.
  # Specialist software (which is not considered commonplace in your field) used to
  # prepare, manage, analyse or visualise data. Software being evaluated or compared
  # as part of the research presented Software that has produced analytic results or
  # other output, especially if used through an interface."

  # In general, you do not need to cite:

  # "Software packages or libraries that are not fundamental to your work and that
  # are a normal part of the computational and scientific environment used.
  # These dependencies do not need to be cited outright but should be documented as
  # part of the computational workflow for complete reproducibility. Software that
  # was used during the course of the research but had no impact on research
  # results, e.g. word processing software, backup software."

  # Using package `grateful` https://pakillo.github.io/grateful/, a table and
  # the citations of packages (with version) used in code, along with a .bib file

  # install.packages("grateful")
  # install.packages("here")
  library(grateful)
  library(here)
  library(tidyverse)

  cite_packages(
    out.dir = "docs", # save report to `docs` directory
    cite.tidyverse = TRUE
  )
  # `cite.tidyverse = TRUE` will cite the ‘tidyverse’
  # rather than all individual packages
  # add `dependencies = TRUE` to cite all
  # dependencies for the main packages


  # To remove unused packages OR if error "no package called..."
  # see https://pakillo.github.io/grateful/



  # save Session Info  ------------------------------------------------------

  # sessionInfo provides version information about R,
  # the OS used for analyses, and any attached or loaded packages.

  sessionInfo() %>%
    capture.output(file = here("docs", "session_info.txt"))



  # Renv information --------------------------------------------------------

  # If using Renv, can create snapshots here

  # Or using renv:
  # renv::init()
  # renv::snapshot()


  # if using Docker, details here -------------------------------------------

  # e.g. {containerit} or {liftr}
}
