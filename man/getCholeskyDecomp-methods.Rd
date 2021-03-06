% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/summariseCoeffs.R
\docType{methods}
\name{getCholeskyDecomp}
\alias{getCholeskyDecomp}
\alias{getCholeskyDecomp,SurvivalModel-method}
\alias{getCholeskyDecomp,SurvivalModel-methods}
\title{Method to return Cholesky decomposition of variance-covariance
matrix}
\usage{
getCholeskyDecomp(object, ...)

\S4method{getCholeskyDecomp}{SurvivalModel}(object, class = c("matrix",
  "FlexTable")[2], digits = 5)
}
\arguments{
\item{object}{(SurvivalModel object) contains fitted models with estimated
parameters}

\item{...}{additional arguments to vcov}

\item{class}{('matrix' or 'FlexTable' (default)) output format
for the summary tables}

\item{digits}{(numeric) The number of significant digits to round the FlexTable output to.
This option is ignored if class is not 'FlexTable'}
}
\description{
Method to return Cholesky decomposition of variance-covariance
matrix
}
