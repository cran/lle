\name{find_weights}

\alias{find_weights}

\title{Calculate weight matrix.}

\description{ Calculates the weights for every neighbour of \eqn{x_i}. }

\usage{ find_weights(nns, X, m, reg = 2, ss = FALSE, p = 0.5, id = FALSE, v = 0.99) }

\arguments{
  \item{nns}{ matrix of nearest neighbours using \code{\link{find_nn_k}} or \code{\link{find_nn_eps}}.\cr }
  \item{X}{ matrix object containing the input data.  }
  \item{m}{ intrinsic dimension of the data. See \code{\link{lle}}. }
  \item{reg}{ regularisation method. See \code{\link{lle}}. }
  \item{ss}{ a logical values indicating wheather to perform subset selection. See \code{\link{lle}}. }
  \item{p}{ amount of data remaining after subset selection. See \code{\link{lle}}. }
  \item{id}{ a logical values indicating wheather to calculate the intrinsic dimension. See \code{\link{lle}}. }
  \item{v}{ threshold parameter for intrinsic dimension. See details. }
}

\value{
	A list containing the following variables:
	\item{ X }{ input data, can change if subset selection is applied }
	\item{ weights }{ weight matrix. If \eqn{x_i} is neighbour of \eqn{x_j} then \eqn{-1<weights[i,j]<1}, else zero. }
	\item{ choise }{ index vector of kept data while subset selection }
	\item{ id }{ additionally to the (optional) printed intrinsic dimension, the vector of intrinsic dimension for every data point is returned by the function, so that the vector can easily be ploted manually.}
}

\examples{
	data( lle_scurve_data )
	X <- lle_scurve_data
	nns <- find_nn_k( X, 5 )
	weights <- find_weights( nns, X, 2, 2 )
}