\name{lle_swissrole}

\alias{lle_swissrole}

\title{ Example application on a swissrole. }

\description{ Like the S-curve this is a standard example to demonstrate the functioning of LLE. }

\usage{ lle_swissrole(N = 1500, k = 10, ss = FALSE, p = 0.5, reg = 2, iLLE = FALSE, v = 0.8) }

\arguments{
  \item{N}{ number of samples. }
  \item{k}{ number of neighbours. See \code{\link{lle}}. }
  \item{ss}{ a logical values indicating wheather to perform subset selection. See \code{\link{lle}}. }
  \item{p}{ amount of data remaining after subset selection. See \code{\link{lle}}. }
  \item{reg}{ regularisation method. See \code{\link{lle}}. }
  \item{iLLE}{ a logical values indicating wheater to use iLLE. See \code{\link{lle}}. }
  \item{v}{ threshold parameter for intrinsic dimension. See \code{\link{lle}}. }
}

\examples{
    \dontrun{
	lle_swissrole()
	lle_swissrole( 3000, k=12, ss=TRUE )
    }
}