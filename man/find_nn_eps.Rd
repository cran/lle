\name{find_nn_eps}

\alias{find_nn_eps}

\title{ Find nearest neighbours in epsilon environment.}

\description{ Finds the nearest points for every point in an environment with radius \code{eps}. }

\usage{ find_nn_eps(X, eps) }

\arguments{
  \item{X}{ matrix object containing the input data. }
  \item{eps}{ size of epsilon environment around \eqn{x_i}. }
}

\details{
  A good value for \code{eps} strongly depends on the scaling of the data. Therefore we recommend to use the \code{R} function \code{scale}.
}

\value{
	\item{neighbours}{ matrix with \eqn{N} rows and columns. If distance between \eqn{x_i} and \eqn{x_i} is smaller than \code{eps}, \eqn{neighbours[i,j]} is one, else zero. }
}

\seealso{
	\code{\link{find_nn_k}}
}

\examples{
	data( lle_scurve_data )
	X <- lle_scurve_data
	neighbours <- find_nn_eps( X, 0.5 )
	table( rowSums(neighbours) )
}