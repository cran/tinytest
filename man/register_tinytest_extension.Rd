% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tinytest.R
\name{register_tinytest_extension}
\alias{register_tinytest_extension}
\title{Register or unregister extension functions}
\usage{
register_tinytest_extension(pkg, functions)
}
\arguments{
\item{pkg}{\code{[character]} scalar. Name of the package providing extensions.}

\item{functions}{\code{[character]} vector. Name of the functions in the package that must be added.}
}
\description{
Functions to use in \code{.onLoad} and \code{.onUnload} by packages that
extend \pkg{tinytest}.
}
\section{The tinytest API}{


Packages can extend \pkg{tinytest} with expectation functions \emph{if and only
if} the following requirements are satisfied.

\enumerate{
 \item{The extending functions return a \code{\link{tinytest}} object.  This 
       can be created by calling \code{tinytest()} with the arguments (defaults,
       if any, are in brackets):
   \itemize{
     \item{\code{result}: A \code{logical} scalar: \code{TRUE} or \code{FALSE} (not
           \code{NA}) }
     \item{\code{call}: The \code{call} to the expectation function. Usually the 
           result of \code{sys.call(sys.parent(1))} }
     \item{\code{diff} (\code{NA_character_}): A \code{character} scalar, with a long description of the 
           difference. Sentences may be separated by \code{"\\n"}.}
     \item{\code{short} (\code{NA_character_}): Either \code{"data"}, if the difference is in the 
           data. \code{"attr"} when attributes differ or \code{"xcpt"} when 
           an expectation about an exception is not met. If there are 
           differences in data and in attributes, the attributes take 
           precedence.}
     \item{\code{info}} (\code{NA_character_}): A user-defined message.
   }
   Observe that this requires the extending package to add \pkg{tinytest} to 
   the \code{Imports} field in the package's \code{DESCRIPTION} file (this 
   also holds for the following requirement). 
 }
\item{Functions are registered in \code{.onLoad()} using 
      \code{register_tinytest_extension()}. Functions that are already 
      registered, including \pkg{tinytest} functions will be overwritten.}
}
It is \emph{recommended} to:
\enumerate{
  \item{Follow the syntax conventions of \pkg{tinytest} so expectation 
        functions start with \code{expect_}.}
  \item{Explain to users of the extension package how to use the extension 
        (see \code{\link{using}}).}
  \item{include an \code{info} argument to \code{expect_} functions that 
   is passed to \code{tinytest()}}.
}
}

\section{Minimal example packages}{


\itemize{
 \item{Extending \pkg{tinytest}:
 \href{https://github.com/markvanderloo/tinytest.extension}{tinytest.extension}.}
 \item{Using a \pkg{tinytest} extension:
   \href{https://github.com/markvanderloo/uses.tinytest.extension}{using.tinytest.extension}.}
}
}

\seealso{
Other extensions: 
\code{\link{tinytest}()},
\code{\link{using}()}
}
\concept{extensions}
