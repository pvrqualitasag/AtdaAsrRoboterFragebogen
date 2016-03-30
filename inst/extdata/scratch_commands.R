

### # commands to create questionnaire
rqudocuhelper::create_docu_skeleton(psDocuName = "AtdaAsrFragebogenRoboterhersteller",
                                    psRmdTemplate = "hybrid_fragebogen",
                                    pbEdit = TRUE)

### # render rmd to pdf
rmarkdown::render(input = "vignettes/AtdaAsrFragebogenRoboterhersteller.Rmd",
                  output_format = rmarkdown::pdf_document(toc_depth = 1,
                                                          number_sections = FALSE,
                                                          template = "tex/default-scrreprt.tex",
                                                          includes = list(in_header = "tex/HybridFragenHeader.tex")))

rqudocuhelper::render_scrreprt(psInput        = "vignettes/AtdaAsrFragebogenRoboterhersteller.Rmd",
                               psTemplateFile = "tex/default-scrreprt.tex",
                               plIncludes     = list(in_header = "tex/HybridFragenHeader.tex"),
                               pbViewResult   = TRUE)

### # cleanup output files
rqudocuhelper::cleanup_vignettes()

### # connection for rmd file
conRmd <- file(description = "vignettes/AtdaAsrFragebogenRoboterhersteller.Rmd")

### # read file content into a vector
vRmdContent <- readLines(con = conRmd)
### # diagnostics
length(vRmdContent)



### # close connection
close(con = conRmd)
