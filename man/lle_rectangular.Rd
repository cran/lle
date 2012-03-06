\name{lle_rectangular}

\alias{lle_rectangular}

\title{ Example on a rectangular signal. }

\description{ A rectangular signal with variable width and distance is generated and analysed (see figure). Every sample has dimension \eqn{n=500}. In the example \eqn{N} samples are generated, that only differ by the two parameters width and distance. As a result it can be seen that the data can be embedded from a 500- into a 2-dimensional space which's limits are specified by the limits of the two parameters. \cr
\figure{rect.png}
}

\usage{ lle_rectangular(N = 40, k = 5, v = 0.9) }

\arguments{
  \item{N}{ number of samples. }
  \item{k}{ number of neighbours. See \code{\link{lle}}. }
  \item{v}{ threshold parameter for intrinsic dimension. See \code{\link{lle}}. }
}
  
\examples{ 
    \dontrun{
	lle_rectangular()
	lle_rectangular( 30, 10, 0.8 ) \
    }
}