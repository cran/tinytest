### R code from vignette source 'using_tinytest.Rnw'
### Encoding: UTF-8

###################################################
### code chunk number 1: using_tinytest.Rnw:44-45
###################################################
options(prompt="R>  ", continue = "    ")


###################################################
### code chunk number 2: using_tinytest.Rnw:70-76
###################################################
lbs2kg <- function(x){
  if ( x < 0 ){
    stop(sprintf("Expected nonnegative weight, got %g",x))
  }
  x/2.20
}


###################################################
### code chunk number 3: using_tinytest.Rnw:79-82
###################################################
library(tinytest)
expect_equal(lbs2kg(1), 1/2.2046)
expect_error(lbs2kg(-3))


###################################################
### code chunk number 4: using_tinytest.Rnw:88-89
###################################################
isTRUE( expect_true(2 == 1 + 1) )


###################################################
### code chunk number 5: using_tinytest.Rnw:110-112
###################################################
expect_error(lbs2kg(-3), pattern="nonnegative")
expect_error(lbs2kg(-3), pattern="foo")


###################################################
### code chunk number 6: using_tinytest.Rnw:126-127
###################################################
expect_false( 1 + 1 == 2 )


###################################################
### code chunk number 7: using_tinytest.Rnw:149-150
###################################################
print(expect_equal(1+1, 3), type="short")


###################################################
### code chunk number 8: using_tinytest.Rnw:157-158 (eval = FALSE)
###################################################
## ?print.tinytests


###################################################
### code chunk number 9: eval
###################################################
run_test_file("test_addOne.R", verbose=FALSE)


###################################################
### code chunk number 10: using_tinytest.Rnw:198-200
###################################################
test_results <- run_test_file("test_addOne.R", verbose=FALSE)
print(test_results, passes=TRUE)


###################################################
### code chunk number 11: using_tinytest.Rnw:203-204 (eval = FALSE)
###################################################
## options(tt.pr.passes=TRUE)


###################################################
### code chunk number 12: using_tinytest.Rnw:209-210 (eval = FALSE)
###################################################
## run_test_dir("/path/to/your/test/directory")


###################################################
### code chunk number 13: using_tinytest.Rnw:217-219
###################################################
out <- run_test_dir(system.file("tinytest", package="tinytest")
       , verbose=FALSE)


###################################################
### code chunk number 14: using_tinytest.Rnw:223-224
###################################################
head(as.data.frame(out), 3)


###################################################
### code chunk number 15: using_tinytest.Rnw:230-231
###################################################
summary(out)


###################################################
### code chunk number 16: using_tinytest.Rnw:241-244 (eval = FALSE)
###################################################
## if ( expect_equal(1 + 1, 2) ){
##     expect_true( 2 > 0)
## }


###################################################
### code chunk number 17: using_tinytest.Rnw:254-257
###################################################
if ( ignore(expect_equal)(1+1, 2) ){
  expect_true(2>0)
}


###################################################
### code chunk number 18: using_tinytest.Rnw:278-284 (eval = FALSE)
###################################################
## run_test_dir("/path/to/my/testdir"
##            , remove_side_effects = FALSE)
## test_all("/path/to/my/testdir"
##            , remove_side_effects = FALSE)
## # Only in tests/tinytest.R:
## test_package("PACKAGENAME", remove_side_effects=FALSE)


###################################################
### code chunk number 19: using_tinytest.Rnw:291-292 (eval = FALSE)
###################################################
## options(tt.collate="C")


###################################################
### code chunk number 20: using_tinytest.Rnw:317-318 (eval = FALSE)
###################################################
## setup_tinytest("/path/to/your/package")


###################################################
### code chunk number 21: using_tinytest.Rnw:331-332 (eval = FALSE)
###################################################
## test_all("/path/to/your/package")


###################################################
### code chunk number 22: using_tinytest.Rnw:343-344 (eval = FALSE)
###################################################
##   build_install_test("/path/to/your/package")


###################################################
### code chunk number 23: using_tinytest.Rnw:376-378 (eval = FALSE)
###################################################
## dat <- read.csv("women.csv")
## expect_equal(dat, women)


###################################################
### code chunk number 24: using_tinytest.Rnw:393-396
###################################################
if ( at_home() ){
  expect_equal(2, 1+1)
}


###################################################
### code chunk number 25: using_tinytest.Rnw:407-408
###################################################
pr <- options(prompt="   ")


###################################################
### code chunk number 26: using_tinytest.Rnw:410-416 (eval = FALSE)
###################################################
## if (requireNamespace("tinytest", quietly=TRUE)){
##   # Do a local check on the environment
##   on_cran <- identical(Sys.getenv("ONCRAN"),"TRUE")
##   # now run tinytest
##   tinytest::test_package("PACKAGENAME", at_home = !on_cran)
## }


###################################################
### code chunk number 27: using_tinytest.Rnw:418-419
###################################################
options(pr)


###################################################
### code chunk number 28: using_tinytest.Rnw:440-443 (eval = FALSE)
###################################################
## library(hehe)
## library(tinytest)
## run_test_dir( system.file("tinytest",package="hehe") )


###################################################
### code chunk number 29: using_tinytest.Rnw:461-470
###################################################
# exported, user-visible function
inch2cm <- function(x){
  x*conversion_factor("inch")
}
# not exported function, package-internal
conversion_factor <- function(unit){
  confac <- c(inch=2.54, pound=1/2.2056)
  confac[unit]
}


###################################################
### code chunk number 30: using_tinytest.Rnw:513-521
###################################################
pound2kg <- function(x){
  stopifnot( is.numeric(x) )
  if ( any(x < 0) ){
    warning("Found negative input, converting to positive")
    x <- abs(x)
  }
  x/2.2046
}


###################################################
### code chunk number 31: using_tinytest.Rnw:540-546 (eval = FALSE)
###################################################
##     expect_equal(pound2kg(1), 1/2.2046  )
##     # test for expected warning, store output
##     expect_warning( out <- pound2kg(-1) )
##     # test the output
##     expect_equal( out, 1/2.2046)
##     expect_error(pound2kg("foo"))


