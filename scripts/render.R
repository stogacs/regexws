#!/usr/bin/env Rscript
tmpdir <- Sys.getenv("TMP_DIR")
distdir <- Sys.getenv("DIST_DIR")
rmarkdown::render(file.path(tmpdir, "index.Rmd"),
                  "revealjs::revealjs_presentation",
                  output_file = file.path(distdir, "index.html"))
