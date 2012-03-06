\name{find_coords}

\alias{find_coords}

\title{ Calculate embedded data. }

\description{ Calculates the embedded data of dimension \eqn{m} using the weight matrix. }

\usage{find_coords(wgts, nns, N, n, m)}

\arguments{
  \item{wgts}{ weight matrix calculated by \code{\link{find_weights}}. }
  \item{nns}{ matrix of neighbours calculated by \code{\link{find_nn_k}} or \code{\link{find_nn_eps}}. } 
  \item{N}{ number of samples. }
  \item{n}{ dimension of the original data. }
  \item{m}{ intrinsic dimension of the data.}
}

\value{
	\item{Y}{ matrix containing the embedded data. }
}

\examples{
	data( lle_scurve_data )
	X <- lle_scurve_data
	nns <- find_nn_k(X,5)
	wgts <- find_weights(nns,X,2)
	Y <- find_coords( wgts$wgts, nns, dim(X)[1], 3, 2 )
}