\name{find_nn_k}

\alias{find_nn_k}

\title{ Find k nearest neighbours. }

\description{ Finds the nearest k points for every point of the input data. }

\usage{ find_nn_k(X, k, iLLE = FALSE) }

\arguments{
  \item{X}{ matrix object containing the input data. }
  \item{k}{ number of neighbours. }
  \item{iLLE}{ a logical values indicating wheater to use improved LLE. See \code{\link{lle}}. }
}

\value{
	\item{neighbours}{ matrix with \eqn{N} rows and columns. If \eqn{x_j} is a neighbour of \eqn{x_i} then \eqn{neighbours[i,j]} is one, else zero. }
}

\seealso{
	\code{\link{find_nn_eps}}
}

\examples{
	data( lle_scurve_data )
	X <- lle_scurve_data
	neighbours <- find_nn_k( X, 5 )
	table( rowSums( neighbours ) )
}