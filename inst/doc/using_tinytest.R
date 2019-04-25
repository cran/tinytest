### R code from vignette source 'using_tinytest.Rnw'
### Encoding: UTF-8

###################################################
### code chunk number 1: using_tinytest.Rnw:44-45
###################################################
options(prompt="    ", continue = "    ")


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
expect_equal(1/2.2046, lbs2kg(1))
expect_error(lbs2kg(-3))


###################################################
### code chunk number 4: using_tinytest.Rnw:89-90
###################################################
isTRUE( expect_true(2 == 1 + 1) )


###################################################
### code chunk number 5: using_tinytest.Rnw:110-112
###################################################
expect_error(lbs2kg(-3), pattern="nonnegative")
expect_error(lbs2kg(-3), pattern="foo")


###################################################
### code chunk number 6: using_tinytest.Rnw:118-119
###################################################
expect_false( 1 + 1 == 2 )


###################################################
### code chunk number 7: using_tinytest.Rnw:141-142
###################################################
print(expect_equal(3, 1+1), type="short")


###################################################
### code chunk number 8: using_tinytest.Rnw:148-149 (eval = FALSE)
###################################################
## ?print.tinytests


###################################################
### code chunk number 9: eval
###################################################
run_test_file("test_addOne.R", verbose=FALSE)


###################################################
### code chunk number 10: using_tinytest.Rnw:189-191
###################################################
test_results <- run_test_file("test_addOne.R", verbose=FALSE)
print(test_results, passes=TRUE)


###################################################
### code chunk number 11: using_tinytest.Rnw:194-195 (eval = FALSE)
###################################################
## options(tt.pr.passes=TRUE)


###################################################
### code chunk number 12: using_tinytest.Rnw:200-201 (eval = FALSE)
###################################################
## run_test_dir("/path/to/your/test/directory")


###################################################
### code chunk number 13: using_tinytest.Rnw:213-216 (eval = FALSE)
###################################################
## if ( expect_equal(2, 1 + 1) ){
##     expect_true( 2 > 0)
## }


###################################################
### code chunk number 14: using_tinytest.Rnw:226-229
###################################################
if ( ignore(expect_equal)(2, 1+1) ){
  expect_true(2>0)
}


###################################################
### code chunk number 15: using_tinytest.Rnw:260-261 (eval = FALSE)
###################################################
## test_all("/path/to/your/package")


###################################################
### code chunk number 16: using_tinytest.Rnw:266-267 (eval = FALSE)
###################################################
## build_install_test("/path/to/your/package")


###################################################
### code chunk number 17: using_tinytest.Rnw:278-279 (eval = FALSE)
###################################################
##   build_install_test()


###################################################
### code chunk number 18: using_tinytest.Rnw:308-310 (eval = FALSE)
###################################################
## dat <- read.csv("women.csv")
## expect_equal(women, dat)


###################################################
### code chunk number 19: using_tinytest.Rnw:328-331
###################################################
if ( at_home() ){
  expect_equal(2, 1+1)
}


###################################################
### code chunk number 20: using_tinytest.Rnw:345-348 (eval = FALSE)
###################################################
## library(hehe)
## library(tinytest)
## run_test_dir( system.file("utst",package="hehe") )


###################################################
### code chunk number 21: using_tinytest.Rnw:366-375
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
### code chunk number 22: using_tinytest.Rnw:418-426
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
### code chunk number 23: using_tinytest.Rnw:445-451 (eval = FALSE)
###################################################
##     expect_equal( 1/2.2046, pound2kg(1) )
##     # test for expected warning, store output
##     expect_warning( out <- pound2kg(-1) )
##     # test the output
##     expect_equal( 1/2.2046, out )
##     expect_error(pound2kg("foo"))


