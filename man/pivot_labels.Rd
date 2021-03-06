% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pivot_format.R
\name{pivot_labels}
\alias{pivot_labels}
\title{Labels for \code{pivot_format}}
\usage{
pivot_labels(
  stats = "Statistic",
  n = "N",
  p = "\%",
  p_col = "Col \%",
  p_row = "Row \%",
  rows = NULL,
  cols = NULL
)
}
\arguments{
\item{stats}{Name of statistics column.}

\item{n}{Count.}

\item{p}{Percentage.}

\item{p_col}{Column perc.}

\item{p_row}{Row perc.}

\item{rows, cols}{Labels for variables use as rows/cols.}
}
\value{
a \code{list} that can be use in \code{\link{pivot_format}}.
}
\description{
Labels for \code{pivot_format}
}
\examples{
library(flexpivot)
library(magrittr)
data("nobel_laureates")

# Change labels displayed in table
nobel_laureates \%>\%
  pivot_table("category", "gender", na_label = "Manquant") \%>\%
  pivot_format(
    labels = pivot_labels(
      stats = "Statistique",
      n = "Effectif",
      p = "Pourcentage",
      p_col = "\% colonne",
      p_row = "\% ligne",
      rows = c("Categorie"),
      cols = "Genre"
    )
  )
}
