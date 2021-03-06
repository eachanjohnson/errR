% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/except.r
\name{\%except\%}
\alias{\%except\%}
\title{Simple error handling}
\usage{
try_expression \%except\% catch_expression
}
\arguments{
\item{try_expression}{Passed to \code{expr} argument of \code{tryCatch}.}

\item{catch_expression}{Passed to \code{error} argument of \code{tryCatch}. Can be an \code{expression} or a \code{function} which
is applied to the raised \code{Error} object.}

}
\value{
Result of \code{try_expression} or \code{catch_expression}.
}
\description{
Binary operator for terse error handling. If the left-hand-side results in an error, the right-hand-side handles it
an \code{expression} or a \code{function}, which is applied to the raised \code{Error} object.
}
\seealso{
\link{tryCatch}
}

