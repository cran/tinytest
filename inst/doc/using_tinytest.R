### R code from vignette source 'using_tinytest.Rnw'
### Encoding: UTF-8

###################################################
### code chunk number 1: using_tinytest.Rnw:79-82
###################################################
options(prompt="R>  ",
        continue = "    ",
        width=75)


###################################################
### code chunk number 2: using_tinytest.Rnw:107-113
###################################################
lbs2kg <- function(x){
  if ( x < 0 ){
    stop(sprintf("Expected nonnegative weight, got %g",x))
  }
  x/2.20
}


###################################################
### code chunk number 3: using_tinytest.Rnw:116-119
###################################################
library(tinytest)
expect_equal(lbs2kg(1), 1/2.2046)
expect_error(lbs2kg(-3))


###################################################
### code chunk number 4: using_tinytest.Rnw:125-126
###################################################
isTRUE( expect_true(2 == 1 + 1) )


###################################################
### code chunk number 5: using_tinytest.Rnw:149-151
###################################################
expect_error(lbs2kg(-3), pattern="nonnegative")
expect_error(lbs2kg(-3), pattern="foo")


###################################################
### code chunk number 6: using_tinytest.Rnw:165-166
###################################################
expect_false( 1 + 1 == 2 )


###################################################
### code chunk number 7: using_tinytest.Rnw:188-189
###################################################
print(expect_equal(1+1, 3), type="short")


###################################################
### code chunk number 8: using_tinytest.Rnw:196-197 (eval = FALSE)
###################################################
## ?print.tinytests


###################################################
### code chunk number 9: eval
###################################################
run_test_file("test_addOne.R", verbose=FALSE)


###################################################
### code chunk number 10: using_tinytest.Rnw:237-239
###################################################
test_results <- run_test_file("test_addOne.R", verbose=FALSE)
print(test_results, passes=TRUE)


###################################################
### code chunk number 11: using_tinytest.Rnw:242-243 (eval = FALSE)
###################################################
## options(tt.pr.passes=TRUE)


###################################################
### code chunk number 12: using_tinytest.Rnw:249-250 (eval = FALSE)
###################################################
## run_test_dir("/path/to/your/test/directory")


###################################################
### code chunk number 13: using_tinytest.Rnw:257-259
###################################################
out <- run_test_dir(system.file("tinytest", package="tinytest")
       , verbose=FALSE)


###################################################
### code chunk number 14: using_tinytest.Rnw:263-264
###################################################
head(as.data.frame(out), 3)


###################################################
### code chunk number 15: using_tinytest.Rnw:270-271
###################################################
summary(out)


###################################################
### code chunk number 16: using_tinytest.Rnw:281-284 (eval = FALSE)
###################################################
## if ( expect_equal(1 + 1, 2) ){
##     expect_true( 2 > 0)
## }


###################################################
### code chunk number 17: using_tinytest.Rnw:294-297
###################################################
if ( ignore(expect_equal)(1+1, 2) ){
  expect_true(2>0)
}


###################################################
### code chunk number 18: using_tinytest.Rnw:318-324 (eval = FALSE)
###################################################
## run_test_dir("/path/to/my/testdir"
##            , remove_side_effects = FALSE)
## test_all("/path/to/my/testdir"
##            , remove_side_effects = FALSE)
## # Only in tests/tinytest.R:
## test_package("PACKAGENAME", remove_side_effects=FALSE)


###################################################
### code chunk number 19: using_tinytest.Rnw:331-332 (eval = FALSE)
###################################################
## options(tt.collate="C")


###################################################
### code chunk number 20: using_tinytest.Rnw:357-358 (eval = FALSE)
###################################################
## setup_tinytest("/path/to/your/package")


###################################################
### code chunk number 21: using_tinytest.Rnw:371-372 (eval = FALSE)
###################################################
## test_all("/path/to/your/package")


###################################################
### code chunk number 22: using_tinytest.Rnw:383-384 (eval = FALSE)
###################################################
##   build_install_test("/path/to/your/package")


###################################################
### code chunk number 23: using_tinytest.Rnw:416-418 (eval = FALSE)
###################################################
## dat <- read.csv("women.csv")
## expect_equal(dat, women)


###################################################
### code chunk number 24: using_tinytest.Rnw:430-431
###################################################
options(prompt="  ", continue="  ")


###################################################
### code chunk number 25: using_tinytest.Rnw:433-438 (eval = FALSE)
###################################################
## # contents of pkgdir/tests/tinytest.R
## if ( requireNamespace("tinytest", quietly=TRUE) ){
##    home <- identical( Sys.info()["nodename"], "YOURHOSTNAME" )
##    tinytest::test_package("PKGNAME", at_home = home)
## }


###################################################
### code chunk number 26: using_tinytest.Rnw:443-444
###################################################
home <- identical( Sys.getenv("HONEYIMHOME"), "TRUE" )


###################################################
### code chunk number 27: using_tinytest.Rnw:448-449 (eval = FALSE)
###################################################
## home <- length(unclass(packageVersion("PKGNAME"))[[1]]) == 4


###################################################
### code chunk number 28: using_tinytest.Rnw:453-454
###################################################
options(prompt="R> ", continue="   ")


###################################################
### code chunk number 29: using_tinytest.Rnw:461-463
###################################################
run_test_file("test_hehe.R", verbose=FALSE)
run_test_file("test_hehe.R", verbose=FALSE, at_home=FALSE)


###################################################
### code chunk number 30: using_tinytest.Rnw:503-504 (eval = FALSE)
###################################################
## tinytest::test_package("hehe")


###################################################
### code chunk number 31: using_tinytest.Rnw:522-531
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
### code chunk number 32: using_tinytest.Rnw:574-582
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
### code chunk number 33: using_tinytest.Rnw:601-607 (eval = FALSE)
###################################################
##     expect_equal(pound2kg(1), 1/2.2046  )
##     # test for expected warning, store output
##     expect_warning( out <- pound2kg(-1) )
##     # test the output
##     expect_equal( out, 1/2.2046)
##     expect_error(pound2kg("foo"))


