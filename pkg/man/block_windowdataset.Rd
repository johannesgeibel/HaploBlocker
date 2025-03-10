% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/block_windowdataset.R
\name{block_windowdataset}
\alias{block_windowdataset}
\title{Function to derive block-dataset (uniform-window)}
\usage{
block_windowdataset(
  blocklist = NULL,
  data = NULL,
  consider_nonblock = FALSE,
  return_dataset = FALSE,
  non_haploblocker = FALSE,
  non_haploblocker_merging_error = 0,
  min_freq_boundary = 0,
  min_length_window = 1,
  verbose = TRUE
)
}
\arguments{
\item{blocklist}{blocklist}

\item{data}{haploid SNP-dataset}

\item{consider_nonblock}{Consider haplotypes that are in no block (default: FALSE)}

\item{return_dataset}{Return a per window dataset with more than 2 variants instead of binary coded one (default: FALSE)}

\item{non_haploblocker}{Set TRUE to consider all haplotypes and all variants in each window}

\item{non_haploblocker_merging_error}{Set the number of markers with potential variations from the main variant (default: 0)}

\item{min_freq_boundary}{Set the minimum frequency of a block in the population (default: 0)}

\item{min_length_window}{Set the minimum length of each window (default: 1)}

\item{verbose}{Set to FALSE to not display any prints}
}
\value{
Windowblock based dataset
}
\description{
Function to compute a block-dataset with uniform start/end points
}
\examples{
data(blocklist_ex_maze)
windowdataset <- block_windowdataset(blocklist_ex_maze)
}
