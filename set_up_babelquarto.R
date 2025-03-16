parent_dir <- "~/Documents"
project_dir <- "Toolkit"
# babelquarto::quarto_multilingual_website(
#   parent_dir = parent_dir,
#   project_dir = project_dir,
#   main_language = "en",
#   further_languages = c("zh-cn")
# )
# Creating project at /Users/martinayang/Documents/Toolkit:
#   - Created _quarto.yml
# - Created index.qmd
# - Created about.qmd
# - Created styles.css
# [1] "~/Documents/Toolkit"

babelquarto::render_website(file.path(parent_dir, project_dir))
# [1/9] About.zh-cn.qmd
# [2/9] Graph-Gallery.qmd
# [3/9] Distribution/Histogram.qmd
# 
# 
# processing file: Histogram.qmd
# 
# output file: Histogram.knit.md
# 
# [4/9] index.qmd
# [5/9] About.qmd
# [6/9] index.zh-cn.qmd
# [7/9] Distribution-Gallery_sec/histogram.qmd
# [8/9] Distribution-Gallery_sec/index.qmd
# [9/9] Graph-Gallery.zh-cn.qmd
# 
# Output created: _site/index.html
# 
# [1/3] Graph-Gallery.qmd
# [WARNING] Could not load translations for zh-CN
# data file translations/zh.yaml not found
# [WARNING] The term Abstract has no translation defined.
# WARN: Unable to resolve link target: Distribution/Histogram.qmd
# WARN: Unable to resolve link target: Distribution/Histogram.qmd
# [2/3] index.qmd
# [WARNING] Could not load translations for zh-CN
# data file translations/zh.yaml not found
# [WARNING] The term Abstract has no translation defined.
# WARN: Unable to resolve link target: Distribution/Histogram.qmd
# [3/3] About.qmd
# [WARNING] Could not load translations for zh-CN
# data file translations/zh.yaml not found
# [WARNING] The term Abstract has no translation defined.
# WARN: Unable to resolve link target: Distribution/Histogram.qmd
# WARN: Unable to resolve link target: Distribution/Histogram.qmd
# 
# Output created: _site/index.html

# For a multilingual website
servr::httw("_site")

# To stop the server, run servr::daemon_stop(1) or restart your R session
servr::daemon_stop(1)
