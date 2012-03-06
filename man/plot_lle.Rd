\name{plot_lle}

\alias{plot_lle}

\title{ Plot LLE results } 

\description{ Function for plotting LLE results either in static or in dynamic way.}

\usage{ plot_lle( Y, X, print = FALSE, col = 3, name = as.numeric(Sys.time()), 
                  angle = 60, inter = FALSE ) }

\arguments{
	\item{Y}{ matrix object with calculated embedded data. }
	\item{X}{ matrix object with original data. }
	\item{print}{ a logical values indicating wheather to plot the graphical results to a file. }
	\item{col}{ string or number dtermining the plotting  colours.}
	\item{name}{ (if \code{print==true}) filename. }
	\item{angle}{ (if \code{inter==false}) angle between x- and y-axis in scatterplot3d. See documentation of \pkg{scatterplot3d}. }
	\item{inter}{ a logical values indicating wheather to use interactive 3D-plots. See \pkg{rgl}. }
}

\details{ \code{col} determines the way that the points in the plot are coloured. Choosing a string name of a colour leads to a monocoloured plot. Choosing a number between leads to a colour gradient plot build up by \eqn{N} colours (taking only the rainbow colours into account). Choosing a numeric vector with length \eqn{N} leads to points coloured respecting to the values in the vector (for unique colours only values between 0 and 600 should be used).\cr
If \code{inter==false}, two plots are generated in one window. The left plot is the plot of the original data. These will only be plotted if \eqn{n \in \{1,2,3\}}. The right plot shows the embedded data. These will only be plotted \eqn{m \in \{1,2,3\}}. \cr
if \code{inter==true}, one interactive plot of the embedded data will be shown. This plot can be scrolled and zoomed. It requires OpenGL drivers.}

\examples{
	data( lle_scurve_data )
	X <- lle_scurve_data
	Y <- lle( X, m=2, k=12 )$Y
	plot_lle( Y, X, FALSE, col="red", inter=TRUE )
}