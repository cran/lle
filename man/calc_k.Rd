\name{calc_k}

\alias{calc_k}

\title{ Calculation of the optimal number of neighbours. }

\description{ Calculates of optimal number of neighbours by using the algorithm proposed by Kayo (see Ref.). Therefore the LLE alorithm is performed for every k-neighbourhood size. }

\usage{ calc_k(X, m, kmin=1, kmax=20, plotres=TRUE, 
                  parallel=FALSE, cpus=2, iLLE=FALSE) }

\arguments{
  \item{X}{ matrix object containing the input data.  }
  \item{m}{ intrinsic dimension of the data. }
  \item{kmin}{ minimal value of k. }
  \item{kmax}{ maximal value of k. }
  \item{plotres}{ a logical values indicating wheather to plot the result. }
  \item{parallel}{ a logical values indicating wheather to use parallel computation on multiple cpu cores. See \pkg{snowfall}. }
  \item{cpus}{ number of cpus cores used for parallel computation. }
  \item{iLLE}{ a logical values indicating wheater to use improved LLE (very CPU intensive). See \code{\link{lle}}.  }
}

\details{
  Since the calculation of the optimal number of neighbours \eqn{m} is a step that is normally applied before the execution of LLE itself, the intrinsic dimension may be unknown. In this case, a good guess is sufficient. If no good estimation can be made the largest plausible value should be chosen.
}

\value{
	\item{ res }{ dataframe containing the number of neighbours and the calculated parameter \eqn{\rho}. The number of neighbours belonging to the smallest value of \eqn{\rho} should be chosen. }
}

\references{
	Locally linear embedding algorithm - extensions and applications / Olga Kayo / Universitatis Ouluensis, Oulu, Finland / 2006
}

\examples{ 
   \dontrun{
	data( lle_scurve_data )
	X <- lle_scurve_data
	calc_k( X, 2, 1, 15 ) 

	data( lle_scurve_data )
	X <- lle_scurve_data
	calc_k( X, 2, 1, 15, FALSE, TRUE, 4 ) 
   }
}
