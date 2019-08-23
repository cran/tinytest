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
### code chunk number 5: using_tinytest.Rnw:150-152
###################################################
expect_error(lbs2kg(-3), pattern="nonnegative")
expect_error(lbs2kg(-3), pattern="foo")


###################################################
### code chunk number 6: using_tinytest.Rnw:166-167
###################################################
expect_false( 1 + 1 == 2 )


###################################################
### code chunk number 7: using_tinytest.Rnw:196-197
###################################################
print(expect_equal(1+1, 3), type="short")


###################################################
### code chunk number 8: eval
###################################################
run_test_file("test_addOne.R", verbose=0)


###################################################
### code chunk number 9: using_tinytest.Rnw:243-245
###################################################
test_results <- run_test_file("test_addOne.R", verbose=0)
print(test_results, passes=TRUE)


###################################################
### code chunk number 10: using_tinytest.Rnw:248-249 (eval = FALSE)
###################################################
## options(tt.pr.passes=TRUE)


###################################################
### code chunk number 11: using_tinytest.Rnw:255-256 (eval = FALSE)
###################################################
## run_test_dir("/path/to/your/test/directory")


###################################################
### code chunk number 12: using_tinytest.Rnw:263-265
###################################################
out <- run_test_dir(system.file("tinytest", package="tinytest")
       , verbose=0)


###################################################
### code chunk number 13: using_tinytest.Rnw:269-270
###################################################
head(as.data.frame(out), 3)


###################################################
### code chunk number 14: using_tinytest.Rnw:276-277
###################################################
summary(out)


###################################################
### code chunk number 15: using_tinytest.Rnw:287-290 (eval = FALSE)
###################################################
## if ( expect_equal(1 + 1, 2) ){
##     expect_true( 2 > 0)
## }


###################################################
### code chunk number 16: using_tinytest.Rnw:300-303
###################################################
if ( ignore(expect_equal)(1+1, 2) ){
  expect_true(2>0)
}


###################################################
### code chunk number 17: using_tinytest.Rnw:311-314
###################################################
if ( Sys.info()[['sysname']] == "Windows"){
  exit_file("Cannot test this on Windows")
}


###################################################
### code chunk number 18: using_tinytest.Rnw:341-347 (eval = FALSE)
###################################################
## run_test_dir("/path/to/my/testdir"
##            , remove_side_effects = FALSE)
## test_all("/path/to/my/testdir"
##            , remove_side_effects = FALSE)
## # Only in tests/tinytest.R:
## test_package("PACKAGENAME", remove_side_effects=FALSE)


###################################################
### code chunk number 19: using_tinytest.Rnw:354-355 (eval = FALSE)
###################################################
## options(tt.collate="C")


###################################################
### code chunk number 20: using_tinytest.Rnw:371-372 (eval = FALSE)
###################################################
## test_package("pkg", side_effects=TRUE)


###################################################
### code chunk number 21: using_tinytest.Rnw:376-377 (eval = FALSE)
###################################################
## test_package("pkg", side_effects=list(pwd=FALSE))


###################################################
### code chunk number 22: using_tinytest.Rnw:405-406
###################################################
run_test_file("test_se.R", verbose=1)


###################################################
### code chunk number 23: using_tinytest.Rnw:452-453 (eval = FALSE)
###################################################
## setup_tinytest("/path/to/your/package")


###################################################
### code chunk number 24: using_tinytest.Rnw:466-467 (eval = FALSE)
###################################################
## test_all("/path/to/your/package")


###################################################
### code chunk number 25: using_tinytest.Rnw:478-479 (eval = FALSE)
###################################################
##   build_install_test("/path/to/your/package")


###################################################
### code chunk number 26: using_tinytest.Rnw:511-513 (eval = FALSE)
###################################################
## dat <- read.csv("women.csv")
## expect_equal(dat, women)


###################################################
### code chunk number 27: using_tinytest.Rnw:525-526
###################################################
options(prompt="  ", continue="  ")


###################################################
### code chunk number 28: using_tinytest.Rnw:528-533 (eval = FALSE)
###################################################
## # contents of pkgdir/tests/tinytest.R
## if ( requireNamespace("tinytest", quietly=TRUE) ){
##    home <- identical( Sys.info()["nodename"], "YOURHOSTNAME" )
##    tinytest::test_package("PKGNAME", at_home = home)
## }


###################################################
### code chunk number 29: using_tinytest.Rnw:538-539
###################################################
home <- identical( Sys.getenv("HONEYIMHOME"), "TRUE" )


###################################################
### code chunk number 30: using_tinytest.Rnw:543-544 (eval = FALSE)
###################################################
## home <- length(unclass(packageVersion("PKGNAME"))[[1]]) == 4


###################################################
### code chunk number 31: using_tinytest.Rnw:548-549
###################################################
options(prompt="R> ", continue="   ")


###################################################
### code chunk number 32: using_tinytest.Rnw:556-558
###################################################
run_test_file("test_hehe.R", verbose=0)
run_test_file("test_hehe.R", verbose=0, at_home=FALSE)


###################################################
### code chunk number 33: using_tinytest.Rnw:582-583 (eval = FALSE)
###################################################
## tinytest::test_package("hehe")


###################################################
### code chunk number 34: using_tinytest.Rnw:627-628 (eval = FALSE)
###################################################
## build_install_test("/path/to/your/package", ncpu=2)


###################################################
### code chunk number 35: using_tinytest.Rnw:639-640 (eval = FALSE)
###################################################
## test_package("PACKAGENAME", ncpu=2)


###################################################
### code chunk number 36: using_tinytest.Rnw:662-665 (eval = FALSE)
###################################################
## cl <- parallel::makeCluster(4, outfile="")
## parallel::clusterCall(cl, source, "R/myfunctions.R")
## run_test_dir("inst/tinytest", cluster=cl)


###################################################
### code chunk number 37: using_tinytest.Rnw:672-675 (eval = FALSE)
###################################################
## parallel::clusterCall(cl, source, "R/myfunctions.R")
## test_all(cluster=cl)
## stopCluster(cl)


###################################################
### code chunk number 38: using_tinytest.Rnw:709-718
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
### code chunk number 39: using_tinytest.Rnw:761-769
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
### code chunk number 40: using_tinytest.Rnw:788-794 (eval = FALSE)
###################################################
##     expect_equal(pound2kg(1), 1/2.2046  )
##     # test for expected warning, store output
##     expect_warning( out <- pound2kg(-1) )
##     # test the output
##     expect_equal( out, 1/2.2046)
##     expect_error(pound2kg("foo"))


###################################################
### code chunk number 41: using_tinytest.Rnw:839-845
###################################################
bad_function <- function(file){
  oldwd <- getwd()
  setwd(dirname(file))
  source(basename(file))
  setwd(oldwd)
}


###################################################
### code chunk number 42: using_tinytest.Rnw:852-852
###################################################



###################################################
### code chunk number 43: using_tinytest.Rnw:853-859
###################################################
good_function <- function(file){
  oldwd <- getwd()
  on.exit(setwd(oldwd))
  setwd(dirname(file))
  source(basename(file))
}


