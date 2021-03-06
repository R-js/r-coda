\name{autocorr.plot}
\alias{autocorr.plot}
\title{Plot autocorrelations for Markov Chains}

\usage{autocorr.plot(x, lag.max, auto.layout = TRUE, ask, \dots)}

\arguments{
\item{x}{A Markov Chain}
\item{lag.max}{Maximum value at which to calculate acf}
\item{auto.layout}{If \code{TRUE} then, set up own layout for
plots, otherwise use existing one.}
\item{ask}{If \code{TRUE} then prompt user before displaying
  each page of plots.  Default is \code{dev.interactive()} in
  R and \code{interactive()} in S-PLUS.}
\item{\dots}{graphical parameters}
}

\description{
Plots the autocorrelation function for each variable in each chain in x.
}

\seealso{
   \code{\link{autocorr}}.
}
\keyword{hplot}
