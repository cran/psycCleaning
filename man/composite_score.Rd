% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/composite_score.R
\name{composite_score}
\alias{composite_score}
\title{Composite column}
\usage{
composite_score(
  data,
  cols = dplyr::everything(),
  na.rm = FALSE,
  composite_col_name = "composited_column"
)
}
\arguments{
\item{data}{A data.frame or a data.frame extension (e.g. a tibble).}

\item{cols}{Columns that need to be composited See `dplyr::dplyr_tidy_select` for available options.}

\item{na.rm}{Ignore NA. The default is `FALSE`. If set to `TRUE`, the composite score will be `NA` if there is one or more `NA` in any of the columns.}

\item{composite_col_name}{Name for the new composited columns. Default is 'composite_column'.}
}
\value{
An object of the same type as .data. The output has the following properties:
1. Columns from .data will be preserved.
2. Columns with composited scores.
}
\description{
The function will perform a row-wise aggregation which then divided by the total number of columns.
}
\examples{
test_df = data.frame(col1 = c(1,2,3,4),col2 = c(1,2,3,4), col3 = c(1,2,NA,4))
composite_df = composite_score(data = test_df)


}
