% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/writeARFF.R
\name{writeARFF}
\alias{writeARFF}
\title{Write ARFF data.frame to ARFF file.}
\usage{
writeARFF(x, path, overwrite = FALSE, chunk.size = 1e+06,
  relation = deparse(substitute(x)))
}
\arguments{
\item{x}{[\code{data.frame}]\cr
Data to write to disk.}

\item{path}{[\code{character(1)}]\cr
Path to ARFF file with write access.
Existing files will not be overwritten unless \code{overwrite} is \code{TRUE}.}

\item{overwrite}{[\code{logical(1)}]\cr
Should \code{path} be overwritten if it already exists?
Default is \code{FALSE}.}

\item{chunk.size}{[\code{integer(1)}]\cr
Large datesets are split before writing out to file into chunks of size \code{chunk.size}.
Default is \code{1e6}.}

\item{relation}{[\code{character(1)}]\cr
Name of the relation in the ARFF file.
Default is to guess it from the object name.}
}
\value{
Nothing.
}
\description{
Internally uses \code{\link{write.table}} and is therefore not much faster
than RWeka's \code{\link[RWeka]{write.arff}}. Moreover, for large data
(> 1e6 rows) the date frame is written out in chunks of 1e6 lines to speed
up the write process.
}
\note{
Logical columns in R are converted to categorical attributes in ARFF
with levels \dQuote{TRUE} and \dQuote{FALSE}.
}
\examples{
# see readARFF
}
