

library(devtools)
#use_git()        # set up a git repo from the current repo

# new .R file for each user-facing function

# opens the script of the function for editing / creates it if non-existant
# use_r("strsplit1")
# use_r("test")

# loading functions. Avoid source(), use load_all() instead
load_all()
