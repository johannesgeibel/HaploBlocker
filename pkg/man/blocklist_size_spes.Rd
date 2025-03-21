% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/blocklist_size.R
\name{blocklist_size_spes}
\alias{blocklist_size_spes}
\title{Calculate size of each block}
\usage{
blocklist_size_spes(blocklist, checker, intersect_func = intersect)
}
\arguments{
\item{blocklist}{block-dataset}

\item{checker}{vector of haplotype nrs to consider}

\item{intersect_func}{Used intersect-function (internally relevant for computation time)}
}
\value{
Number of selected haplotypes in each block
}
\description{
Function to calculate the size of each block
}
\examples{
data(blocklist_ex_maze)
blocklist_size_spes(blocklist_ex_maze, 1:10)
}
