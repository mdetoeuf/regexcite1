

library(devtools)
#use_git()        # set up a git repo from the current repo

# new .R file for each user-facing function

# opens the script of the function for editing / creates it if non-existant
use_r("strsplit1")
# use_r("test")

# loading functions. Avoid source(), use load_all() instead
load_all()

# test function:
(x <- "alfa,bravo,charlie,delta")
strsplit1(x, split = ",")

# check if we are using a loaded function or a script that is stored in the environment
exists("strsplit1", where = globalenv(), inherits = FALSE)
#> [1] FALSE is good news

# check that the package is functioning
check() # R CMD check

# set license
use_mit_license()

# for documentation:
##      Code > Insert roxygen skeleton
##      Then fill it in
##      Then use document() to get this new roxygen comment into man/strsplit1.Rd
##      Then help is accessible with the ?
document()
?strsplit1

# when happy with it --> install it in the library,
# then can be used like any other package!
install()

# getting started to write unit tests
use_testthat()
#> ✔ Adding testthat to 'Suggests' field in DESCRIPTION.
#> ✔ Adding "3" to 'Config/testthat/edition'.
#> ✔ Creating 'tests/testthat/'.
#> ✔ Writing 'tests/testthat.R'.
#> ☐ Call `usethis::use_test()` to initialize a basic test file and
#>   open it for editing.

# creates or opens a test document for strsplit1
# tests can be made on a per function basis (each its own test script)
use_test("strsplit1")
#> ✔ Writing 'tests/testthat/test-strsplit1.R'.
#> ☐ Edit 'tests/testthat/test-strsplit1.R'.

# or tests can be made en masse
test()

# declare wish to use conventions from specific packages
use_package("stringr")
#> ✔ Adding stringr to 'Imports' field in DESCRIPTION.
#> ☐ Refer to functions with `stringr::fun()`.

# When renaming a function --> rename all associated files
rename_files("strsplit1", "str_split_one")
#> ✔ Moving 'R/strsplit1.R' to 'R/str_split_one.R'.
#> ✔ Moving 'tests/testthat/test-strsplit1.R' to
#>   'tests/testthat/test-str_split_one.R'.
#>

load_all()
#> ℹ Loading regexcite
str_split_one("a, b, c", pattern = ", ")
#> [1] "a" "b" "c"

# get it on github
use_github() # if not working, then go to https://happygitwithr.com/existing-github-last.html

usethis::create_from_github(
  "git@github.com:mdetoeuf/regexcite1.git",
  destdir = "~/path/to/where/you/want/the/local/repo/"
)


