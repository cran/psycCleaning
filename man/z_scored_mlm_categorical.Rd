% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/z_score_mlm_categorical.R
\name{z_scored_mlm_categorical}
\alias{z_scored_mlm_categorical}
\title{Z-scored for multilevel analyses}
\usage{
z_scored_mlm_categorical(
  data,
  cols,
  dummy_coded = NA,
  group,
  keep_original = TRUE
)
}
\arguments{
\item{data}{A data.frame or a data.frame extension (e.g. a tibble).}

\item{cols}{Dummy-coded or effect-coded columns for group-mean centering. Support `dplyr::dplyr_tidy_select` options.}

\item{dummy_coded}{Dummy-coded variables (cannot be effect-coded) for L2 aggregated means. Support `dplyr::dplyr_tidy_select` options.}

\item{group}{the grouping variable. Must be character}

\item{keep_original}{default is `FALSE`. Set to `TRUE` to keep original columns}
}
\value{
An object of the same type as .data. The output has the following properties:
1. Columns from .data will be preserved
2. Columns with L1 scores that are group-mean centered 
3. Columns with L2 aggregated means (i.e., percentage) that are z-scored
}
\description{
This is a specialized function for mean centering categorical variables. There are two cases where this function should be used instead of the generic `center_mlm`. 
1. This function should be used when you need group mean centering for non-dummy-coded variables at L1. Variables at L2 are always dummy-coded as they represent the percentage of subjects in that group.
2. This function should be used whenever you want to z-score the aggregated L2 means
}
\examples{
z_scored_mlm_categorical(mlbook_data,cols='female_eff',dummy_coded='female_dum','schoolnr')
}
