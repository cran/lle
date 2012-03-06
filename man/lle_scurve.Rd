\name{lle_scurve}

\alias{lle_scurve}

\title{ Example application on a three-dimensional S-curve dataset.}

\description{ Performs the LLE alogrithm on a three dimensional S-curve, which is a standard example for data embedding algorithms. }

\usage{ lle_scurve(N = 800, k = 12, ss = FALSE, p = 0.5, reg = 2, 
                    iLLE = FALSE, v = 0.8) }

\arguments{
  \item{N}{ number of samples. See \code{\link{lle}}. }
  \item{k}{ number of neighbours. See \code{\link{lle}}. }
  \item{ss}{ a logical values indicating wheather to perform subset selection. See \code{\link{lle}}. }
  \item{p}{ amount of data remaining after subset selection. See \code{\link{lle}}. }
  \item{reg}{ regularisation method. See \code{\link{lle}}. }
  \item{iLLE}{ a logical values indicating wheater to use iLLE. See \code{\link{lle}}. }
  \item{v}{ threshold parameter for intrinsic dimension. See \code{\link{lle}}. }
}

\examples{
	lle_scurve()
	lle_scurve( N=1800, k=11, ss=TRUE )
}