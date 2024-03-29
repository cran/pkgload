% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/load-code.R
\name{load_code}
\alias{load_code}
\title{Load R code.}
\usage{
load_code(path = ".", quiet = NULL)
}
\arguments{
\item{path}{Path to a package, or within a package.}

\item{quiet}{if \code{TRUE} suppresses output from this function.}
}
\description{
Sources all \code{.R}/\code{.r} files in the \verb{R/} directory, storing results into
the package namespace.
}
\keyword{programming}
