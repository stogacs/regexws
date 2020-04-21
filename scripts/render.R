#!/usr/bin/env Rscript
req_packages <- c("rmarkdown")
for (pkg in req_packages) {
  if (!require(pkg, character.only = TRUE)) {
    install.packages(pkg, dependencies = TRUE)
    require(pkg, character.only = TRUE)
  }
}

tmpdir <- Sys.getenv("TMP_DIR")
distdir <- Sys.getenv("DIST_DIR")
rmarkdown::render(file.path(tmpdir, "index.Rmd"), "revealjs::revealjs_presentation",
                  output_file = file.path(distdir, "index.html"))
