\name{lle_sound}

\alias{lle_sound}

\title{ Example application on a soundfile. }

\description{ Performs the LLE alogrithm on a sound(file). As a first step, the sound is scanned piecewice with time windows sized \code{t}. In every scanning step, the time windows is shifted by \code{dt}. This generates an overall data set with dimension \eqn{n=}\code{t} and sample size \eqn{N\approx}\code{t/dt}. This dataset can then be embedded using LLE algorithm. }

\usage{ lle_sound(t = 500, dt = 20, k = 25, reg = 2, ss = FALSE, 
                   p = 0.5, id = TRUE) }

\arguments{
  \item{t}{ time window used to scan. }
  \item{dt}{ time window shift. }
  \item{k}{ number of neighbours. See \code{\link{lle}}. }
  \item{reg}{ regularisation method. See \code{\link{lle}}. }
  \item{ss}{ a logical values indicating wheather to perform subset selection. See \code{\link{calc_k}}. }
  \item{p}{ amount of data remaining after subset selection. See \code{\link{lle}}. }
  \item{id}{ a logical values indicating wheather to calculate the intrinsic dimension. See \code{\link{lle}}. }
}

\examples{
    \dontrun{
	data( lle_wave )
	lle_sound()
	lle_sound( 200, 20, 20 )
    }
}