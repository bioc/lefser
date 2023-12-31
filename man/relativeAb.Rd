% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{relativeAb}
\alias{relativeAb}
\title{Utility function to calculate relative abundances}
\usage{
relativeAb(se, assay = 1L)
}
\arguments{
\item{se}{A SummarizedExperiment object with counts}

\item{assay}{The i-th assay matrix in the \code{SummarizedExperiment} ('relab';
default 1).}
}
\description{
The function calculates the column totals and divides each value within the
column by the respective column total.
}
\examples{

se <- SummarizedExperiment(
    assays = list(
        counts = matrix(
            rep(1, 4), ncol = 1, dimnames = list(LETTERS[1:4], "SAMP")
        )
    )
)
assay(se)
assay(relativeAb(se))

}
