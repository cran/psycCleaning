% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/center_grand_mean.R
\name{center_grand_mean}
\alias{center_grand_mean}
\title{Center with respect to grand mean}
\usage{
center_grand_mean(data, cols, keep_original = TRUE)
}
\arguments{
\item{data}{A data.frame or a data.frame extension (e.g. a tibble).}

\item{cols}{Columns that need to be centered. See `dplyr::dplyr_tidy_select` for available options.}

\item{keep_original}{default is `FALSE`. Set to `TRUE` to keep original columns}
}
\value{
An object of the same type as .data. The output has the following properties:  
1. Columns from .data will be preserved  
2. Columns with scores that are grand-mean-centered.
}
\description{
This function will compute grand-mean-centered scores.
}
\examples{
center_grand_mean(iris,where(is.numeric))

}
