% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/all-details.R
\name{all_details}
\alias{all_details}
\title{Get All Details}
\usage{
all_details(product)
}
\arguments{
\item{product}{length 1 character vector product name (e.g. \code{python})}
}
\value{
data frame
}
\description{
Get EoL dates of all cycles of a given product.
}
\examples{
all_details("macos")
}
