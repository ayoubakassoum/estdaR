% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mkv.R
\name{mkv}
\alias{mkv}
\title{Markov transition probability matrix}
\usage{
mkv(m, classes = 5, fixed = FALSE, type = 7, ...)
}
\arguments{
\item{m}{numerical matrix of n spatial unit ans t time periods}

\item{classes}{a number of a numeric vector of two or more unique cut points giving the number of intervals into which x will be cut}

\item{fixed}{logical, if it is TRUE the data are pooled over space and time and the quintiles calculated for the pooled data}

\item{type}{an integer between 1 and 9 selecting one of the nine quantile algorithms detailed below to be used. For more information see the quantile fuction}

\item{...}{other argumnt to \code{\link{discret}} function}
}
\value{
a list contaning the markov's trantiiona matrix and the markov's transition probability matrix
}
\description{
Compute thre Markov transition probability matrix
}
\examples{
data(us48)
data <- as.data.frame(us48)
pci <- data[,10:90]
rpci <- pci/matrix(1,dim(pci))\%*\%colMeans(pci)
m<-mkv(rpci)

}
