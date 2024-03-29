% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/expectations.R
\name{tinytest}
\alias{tinytest}
\title{Tinytest constructor}
\usage{
tinytest(
  result,
  call,
  trace = NULL,
  diff = NA_character_,
  short = c(NA_character_, "data", "attr", "xcpt", "envv", "wdir", "file", "lcle"),
  info = NA_character_,
  file = NA_character_,
  fst = NA_integer_,
  lst = NA_integer_,
  ...
)
}
\arguments{
\item{result}{\code{[logical]} scalar.}

\item{call}{\code{[call]} The call that created \code{result}.}

\item{diff}{\code{[character]} difference between current and target value
(if any).}

\item{short}{\code{[character]} short description of the difference}

\item{info}{\code{[character]} other information, to be printed in the long message}

\item{file}{\code{[character]} File location of the test.}

\item{fst}{\code{[integer]} First line number in the test file.}

\item{lst}{\code{[integer]} Last line number in the test file (differs
from \code{fst} if the call spans multiple lines).}
}
\value{
A \code{tinytest} object.
}
\description{
Each individual test in the package generates a \code{tinytest} object.  A
\code{tinytest} object is a \code{logical} scalar, with metadata
(attributes) about the test.
}
\section{Details}{

The \pkg{result} can take three values.
\itemize{
 \item{\code{TRUE}: test was passed.}
 \item{\code{FALSE}: test was failed.}
 \item{\code{NA}: A side effect was detected.} 
}
Authors of extension packages should not use \code{NA} as a result value as
this part of the interface may change in the future.
}

\examples{
tt <- expect_equal(1+1, 2)
if (isTRUE(tt)){
  print("w00p w00p!")
} else {
  print("Oh no!")
}



}
\seealso{
Other extensions: 
\code{\link{register_tinytest_extension}()},
\code{\link{using}()}
}
\concept{extensions}
\keyword{internal}
