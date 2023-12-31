% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/z_scored_grand_mean.R
\name{z_scored_grand_mean}
\alias{z_scored_grand_mean}
\title{Grand mean z-score}
\usage{
z_scored_grand_mean(data, cols, keep_original = TRUE)
}
\arguments{
\item{data}{A data.frame or a data.frame extension (e.g. a tibble).}

\item{cols}{Columns that need to be centered. See `dplyr::dplyr_tidy_select` for available options.}

\item{keep_original}{default is `FALSE`. Set to `TRUE` to keep original columns}
}
\value{
An object of the same type as .data. The output has the following properties:
1. Columns from .data will be preserved
2. Columns with scores that are z-scored
}
\description{
This function will compute z-scores with respect to the grand mean.
}
\examples{
z_scored_grand_mean(iris,where(is.numeric))

}
