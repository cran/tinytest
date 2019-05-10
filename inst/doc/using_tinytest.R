### R code from vignette source 'using_tinytest.Rnw'
### Encoding: UTF-8

###################################################
### code chunk number 1: using_tinytest.Rnw:44-45
###################################################
options(prompt="R>  ", continue = "    ")


###################################################
### code chunk number 2: using_tinytest.Rnw:71-77
###################################################
lbs2kg <- function(x){
  if ( x < 0 ){
    stop(sprintf("Expected nonnegative weight, got %g",x))
  }
  x/2.20
}


###################################################
### code chunk number 3: using_tinytest.Rnw:80-83
###################################################
library(tinytest)
expect_equal(lbs2kg(1), 1/2.2046)
expect_error(lbs2kg(-3))


###################################################
### code chunk number 4: using_tinytest.Rnw:89-90
###################################################
isTRUE( expect_true(2 == 1 + 1) )


###################################################
### code chunk number 5: using_tinytest.Rnw:111-113
###################################################
expect_error(lbs2kg(-3), pattern="nonnegative")
expect_error(lbs2kg(-3), pattern="foo")


###################################################
### code chunk number 6: using_tinytest.Rnw:127-128
###################################################
expect_false( 1 + 1 == 2 )


###################################################
### code chunk number 7: using_tinytest.Rnw:150-151
###################################################
print(expect_equal(1+1, 3), type="short")


###################################################
### code chunk number 8: using_tinytest.Rnw:158-159 (eval = FALSE)
###################################################
## ?print.tinytests


###################################################
### code chunk number 9: eval
###################################################
run_test_file("test_addOne.R", verbose=FALSE)


###################################################
### code chunk number 10: using_tinytest.Rnw:199-201
###################################################
test_results <- run_test_file("test_addOne.R", verbose=FALSE)
print(test_results, passes=TRUE)


###################################################
### code chunk number 11: using_tinytest.Rnw:204-205 (eval = FALSE)
###################################################
## options(tt.pr.passes=TRUE)


###################################################
### code chunk number 12: using_tinytest.Rnw:210-211 (eval = FALSE)
###################################################
## run_test_dir("/path/to/your/test/directory")


###################################################
### code chunk number 13: using_tinytest.Rnw:218-221
###################################################
out <- run_test_dir(system.file("tinytest", package="tinytest")
       , verbose=FALSE)



###################################################
### code chunk number 14: using_tinytest.Rnw:225-226
###################################################
head(as.data.frame(out), 3)


###################################################
### code chunk number 15: using_tinytest.Rnw:231-232
###################################################
summary(out)


###################################################
### code chunk number 16: using_tinytest.Rnw:242-245 (eval = FALSE)
###################################################
## if ( expect_equal(1 + 1, 2) ){
##     expect_true( 2 > 0)
## }


###################################################
### code chunk number 17: using_tinytest.Rnw:255-258
###################################################
if ( ignore(expect_equal)(1+1, 2) ){
  expect_true(2>0)
}


###################################################
### code chunk number 18: using_tinytest.Rnw:289-290 (eval = FALSE)
###################################################
## test_all("/path/to/your/package")


###################################################
### code chunk number 19: using_tinytest.Rnw:295-296 (eval = FALSE)
###################################################
## build_install_test("/path/to/your/package")


###################################################
### code chunk number 20: using_tinytest.Rnw:307-308 (eval = FALSE)
###################################################
##   build_install_test()


###################################################
### code chunk number 21: using_tinytest.Rnw:337-339 (eval = FALSE)
###################################################
## dat <- read.csv("women.csv")
## expect_equal(dat, women)


###################################################
### code chunk number 22: using_tinytest.Rnw:357-360
###################################################
if ( at_home() ){
  expect_equal(2, 1+1)
}


###################################################
### code chunk number 23: using_tinytest.Rnw:374-377 (eval = FALSE)
###################################################
## library(hehe)
## library(tinytest)
## run_test_dir( system.file("tinytest",package="hehe") )


###################################################
### code chunk number 24: using_tinytest.Rnw:395-404
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
### code chunk number 25: using_tinytest.Rnw:447-455
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
### code chunk number 26: using_tinytest.Rnw:474-480 (eval = FALSE)
###################################################
##     expect_equal(pound2kg(1), 1/2.2046  )
##     # test for expected warning, store output
##     expect_warning( out <- pound2kg(-1) )
##     # test the output
##     expect_equal( out, 1/2.2046)
##     expect_error(pound2kg("foo"))


