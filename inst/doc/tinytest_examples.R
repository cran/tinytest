### R code from vignette source 'tinytest_examples.Rnw'
### Encoding: UTF-8

###################################################
### code chunk number 1: tinytest_examples.Rnw:75-79
###################################################
options(prompt="  ",
        continue = "  ",
        width=75)
library(tinytest)


###################################################
### code chunk number 2: tinytest_examples.Rnw:94-95 (eval = FALSE)
###################################################
## ## [this is an extra comment, only for this vignette] 


###################################################
### code chunk number 3: tinytest_examples.Rnw:118-121
###################################################
options(prompt="R>  ",
        continue = "    ",
        width=75)


###################################################
### code chunk number 4: tinytest_examples.Rnw:123-125
###################################################
expect_equal(1,1)
expect_equal(1, c(x=1))


###################################################
### code chunk number 5: tinytest_examples.Rnw:128-131
###################################################
0.9-0.7-0.2
expect_equal(0.9-0.7-0.2,0) 
expect_equal(0.9-0.7-0.2,0, tolerance=0)


###################################################
### code chunk number 6: tinytest_examples.Rnw:133-136
###################################################
options(prompt="  ",
        continue = "  ",
        width=75)


###################################################
### code chunk number 7: tinytest_examples.Rnw:145-146 (eval = FALSE)
###################################################
## expect_equal(stringdist("ab", "ba", method="osa"), 1)


###################################################
### code chunk number 8: tinytest_examples.Rnw:151-161 (eval = FALSE)
###################################################
## b <- benchr::benchmark(1 + 1, 2 + 2)
## m <- mean(b)
## 
## expect_equal(class(m), c("summaryBenchmark", "data.frame"))
## expect_equal(dim(m), c(2L, 7L))
## expect_equal(names(m), c("expr", "n.eval", "mean", "trimmed", "lw.ci", "up.ci", "relative"))
## 
## expect_equal(class(m$expr), "factor")
## expect_equal(levels(m$expr), c("1 + 1", "2 + 2"))
## expect_true(all(sapply(m[-1], is.numeric)))


###################################################
### code chunk number 9: tinytest_examples.Rnw:170-173
###################################################
options(prompt="R>  ",
        continue = "    ",
        width=75)


###################################################
### code chunk number 10: tinytest_examples.Rnw:175-177
###################################################
expect_equivalent(1,1)
expect_equivalent(1, c(x=1))


###################################################
### code chunk number 11: tinytest_examples.Rnw:179-182
###################################################
options(prompt="  ",
        continue = "  ",
        width=75)


###################################################
### code chunk number 12: tinytest_examples.Rnw:191-194 (eval = FALSE)
###################################################
## v <- validator(x > 0)
## d <- data.frame(x=c(1,-1,NA))
## expect_equivalent(values(confront(d,v)), matrix(c(TRUE,FALSE,NA)) )


###################################################
### code chunk number 13: tinytest_examples.Rnw:201-204 (eval = FALSE)
###################################################
## refD <- as.Date("2016-01-01")+0:2
## 
## expect_equivalent(refD, anydate(20160101L + 0:2))


###################################################
### code chunk number 14: tinytest_examples.Rnw:215-218
###################################################
options(prompt="R>  ",
        continue = "    ",
        width=75)


###################################################
### code chunk number 15: tinytest_examples.Rnw:220-228
###################################################
La <- list(x=1); 
Lb <- list(x=1)
expect_identical(La, Lb)
a <- new.env()
a$x <- 1
b <- new.env()
b$x <- 1
expect_identical(a,b)


###################################################
### code chunk number 16: tinytest_examples.Rnw:234-236
###################################################
print(a)
print(b)


###################################################
### code chunk number 17: tinytest_examples.Rnw:241-244
###################################################
options(prompt="  ",
        continue = "  ",
        width=75)


###################################################
### code chunk number 18: tinytest_examples.Rnw:252-255 (eval = FALSE)
###################################################
##   a <- c(k1 = "aap",k2="noot")
##   expect_identical(stringdistmatrix(a,useNames="none")
##                  , stringdistmatrix(a,useNames=FALSE))


###################################################
### code chunk number 19: tinytest_examples.Rnw:262-270 (eval = FALSE)
###################################################
## list(
## ## [long list of results removed for brevity]
## ) -> results
## fils <- list.files(system.file("extdat", package="wand"), full.names=TRUE)
## tst <- lapply(fils, get_content_type)
## names(tst) <- basename(fils)
## 
## for(n in names(tst)) expect_identical(results[[n]], tst[[n]])


###################################################
### code chunk number 20: tinytest_examples.Rnw:279-282
###################################################
options(prompt="R>  ",
        continue = "    ",
        width=75)


###################################################
### code chunk number 21: tinytest_examples.Rnw:284-286
###################################################
expect_null(iris$hihi)
expect_null(iris$Species)


###################################################
### code chunk number 22: tinytest_examples.Rnw:288-291
###################################################
options(prompt="  ",
        continue = "  ",
        width=75)


###################################################
### code chunk number 23: tinytest_examples.Rnw:301-304
###################################################
options(prompt="R>  ",
        continue = "    ",
        width=75)


###################################################
### code chunk number 24: tinytest_examples.Rnw:306-308
###################################################
expect_true(1 == 1)
expect_false(1 == 2)


###################################################
### code chunk number 25: tinytest_examples.Rnw:310-313
###################################################
options(prompt="  ",
        continue = "  ",
        width=75)


###################################################
### code chunk number 26: tinytest_examples.Rnw:319-325 (eval = FALSE)
###################################################
## ## Datetime: factor and ordered (#44)
## refD <- as.Date("2016-09-01")
## expect_true(refD == anydate(as.factor("2016-09-01")))
## expect_true(refD == anydate(as.ordered("2016-09-01")))
## expect_true(refD == utcdate(as.factor("2016-09-01")))
## expect_true(refD == utcdate(as.ordered("2016-09-01")))


###################################################
### code chunk number 27: tinytest_examples.Rnw:331-332 (eval = FALSE)
###################################################
## expect_equal(anydate(as.factor("2016-09-01")), refD)


###################################################
### code chunk number 28: tinytest_examples.Rnw:339-341 (eval = FALSE)
###################################################
## x <- ULIDgenerate(20)
## expect_true(is.character(x))


###################################################
### code chunk number 29: tinytest_examples.Rnw:351-354
###################################################
options(prompt="R>  ",
        continue = "    ",
        width=75)


###################################################
### code chunk number 30: tinytest_examples.Rnw:356-360
###################################################
expect_message(message("hihi"))
expect_message(message("hihi"), pattern = "hi")
expect_message(message("hihi"), pattern= "ha")
expect_message(print("hihi"))


###################################################
### code chunk number 31: tinytest_examples.Rnw:362-365
###################################################
options(prompt="  ",
        continue = "  ",
        width=75)


###################################################
### code chunk number 32: tinytest_examples.Rnw:374-377
###################################################
options(prompt="R>  ",
        continue = "    ",
        width=75)


###################################################
### code chunk number 33: tinytest_examples.Rnw:379-383
###################################################
expect_warning(warning("hihi"))
expect_warning(warning("hihi"), pattern = "hi")
expect_warning(warning("hihi"), pattern= "ha")
expect_warning(1+1)


###################################################
### code chunk number 34: tinytest_examples.Rnw:385-388
###################################################
options(prompt="  ",
        continue = "  ",
        width=75)


###################################################
### code chunk number 35: tinytest_examples.Rnw:398-401
###################################################
options(prompt="R>  ",
        continue = "    ",
        width=75)


###################################################
### code chunk number 36: tinytest_examples.Rnw:403-407
###################################################
expect_error(stop("hihi"))
expect_error(stop("hihi"), pattern = "hi")
expect_error(stop("hihi"), pattern= "ha")
expect_error(print("hoho"))


###################################################
### code chunk number 37: tinytest_examples.Rnw:409-412
###################################################
options(prompt="  ",
        continue = "  ",
        width=75)


###################################################
### code chunk number 38: tinytest_examples.Rnw:420-424 (eval = FALSE)
###################################################
## # Check that log and centering cannot be combined
## expect_error(
##   centscaleSpectra2D(tiny, center = TRUE, scale = "log"),
##   "Cannot take log of centered data")


###################################################
### code chunk number 39: tinytest_examples.Rnw:435-438
###################################################
options(prompt="R>  ",
        continue = "    ",
        width=75)


###################################################
### code chunk number 40: tinytest_examples.Rnw:440-442
###################################################
expect_silent(print(10))
expect_silent(stop("haha"))


###################################################
### code chunk number 41: tinytest_examples.Rnw:444-447
###################################################
options(prompt="  ",
        continue = "  ",
        width=75)


###################################################
### code chunk number 42: tinytest_examples.Rnw:455-460 (eval = FALSE)
###################################################
## data <- data.frame(A = 1)
## rule <- validator(A > 0)
## cf <- confront(data, rule)
## expect_silent(plot(rule))
## expect_silent(plot(cf))


###################################################
### code chunk number 43: tinytest_examples.Rnw:468-472 (eval = FALSE)
###################################################
## run("runs/multiple_loggers.R")
## simple_ok <- expect_true(file.exists("runs/simple_log.csv"))
## expect_silent(read.csv("runs/simple_log.csv"))
## if (simple_ok) unlink("runs/simple_log.csv")


###################################################
### code chunk number 44: tinytest_examples.Rnw:487-488 (eval = FALSE)
###################################################
## ignore(expect_equal)(1+1, 2)


###################################################
### code chunk number 45: tinytest_examples.Rnw:494-508 (eval = FALSE)
###################################################
## mantissa <- gsub(" [0-9]*$", "", x.hex)
## ignore(expect_true)(all(
##     sapply(
##         head(seq_along(mantissa), -1),
##         function(i){
##             all(
##                 grepl(
##                     paste0("^", mantissa[i], ".*"),
##                     tail(mantissa, -i)
##                 )
##             )
##         }
##     )
## ))


