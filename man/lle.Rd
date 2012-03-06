\name{lle}

\alias{lle}

\title{Locally linear embedding main function.}

\description{Performs all steps of LLE algorithm by calling the functions of the package.}

\usage{ lle(X, m, k, reg = 2, ss = FALSE, p = 0.5, id = FALSE, 
	    nnk = TRUE, eps = 1, iLLE = FALSE, v = 0.99) }

\arguments{
  \item{X}{ matrix object containing the input data.  }
  \item{m}{ intrinsic dimension of the data. This parameter mainly influences the visualisation of the results. The real intrinsic dimension will be calculated automaticly. }
  \item{k}{ number of neighbours. Optimal number can be calculated using the \code{\link{calc_k}}. }
  \item{reg}{ regularisation method. Choise between 1, 2 and 3, by default 2. See details. }
  \item{ss}{ a logical values indicating wheather to perform subset selection. See details. }
  \item{p}{ amount of data remaining after subset selection. Values between 0 and 1. }
  \item{id}{ a logical values indicating wheather to calculate the intrinsic dimension. }
  \item{nnk}{ a logical values indicating wheather to use k nearest neighbours method. If false, epsilon environment neighbourhood will be used. }
  \item{eps}{ epsilon radius if parameter nnk is FALSE. }
  \item{iLLE}{ a logical values indicating wheater to use improved LLE after Wang. See details. }
  \item{v}{ threshold parameter for intrinsic dimension. See details. }
}


\details{ 
This is the main function to execute the LLE alogrithm. Given a data matrix with \eqn{N} rows (samples) and \eqn{n} columns (dimensions), the embedded data of dimension \eqn{m} will be calculated.\cr
As described above, the parameter \eqn{m} influences the visualisation of the embedded data. Therefore see \code{\link{plot_lle}}.\cr
If \code{id} is true, the intrinsic dimension of the data is automatically calculated during the execution of the function. Since the intrinsic dimension is calculated for every data point \eqn{x_i} the result of this calculation consists of a vector with length \eqn{N}. The used approach is to calculate the mean and the mode of this vector as represention of the overall intrinsic dimension of the data.\cr
The \code{reg} parameter allows the decision between different regularisation methods. As one step of the LLE algorithm, the inverse of the Gram-matrix \eqn{G\in R^{kxk}} has to be calculated. The rank of \eqn{G} equals \eqn{m} which is mostly smaller than \eqn{k} - this is why a regularisation \eqn{G^{(i)}+r\cdot I} should be performed. The calculation of regularisation parameter \eqn{r} can be done using different methods:
\itemize{
	\item \code{reg=1}: standardized sum of eigenvalues of \eqn{G}, see Ref. 1), Ch. 3.2
	\item \code{reg=2}: trace of Gram-matrix divided by \eqn{k}, see Ref. 2), Ch. 5.2
	\item \code{reg=3}: constant value 3*10e-3
}
There is no theoretical evidence which method is best to use but several empirical analyses have shown that method #2 works the most reliable.\cr
The most time-consuming step of LLE consists in the calculation of the eigenvalues and -vectors of matrix \eqn{M\in R^{NxN}} in the \code{find_coords} function. To reduce the dimension of matrix \eqn{M}, which means to reduce the number of samples \eqn{N} in a reliable way, Ref. 1 proposes a subset selection algorithm, which is integrated in the \code{lle} function. The amount of data that is kept is represented by parameter \code{p}.\cr
Improved LLE (\code{iLLE}) is an extension of the LLE algorithm described in Ref. 3. It raises the required amount of memory and time, but makes the algoritm less dependent on the number of neighbours.\cr
Calculating the intrinsic dimension strongly depends on a threshold value \eqn{v}. The best value for this parameter depends on the origin of the data. For very accurate data a value beyond 0.99 is propose, for very raw data a value of 0.9 is proposed. This parameter should be varied if a specific intrinsic dimension is expected and other results are calculated. Higher values of \eqn{v} lead to a higher number of calculate intrinsic dimensions.\cr
}

\value{
	A list containing the following variables:
	\item{ X }{ input data, can change if subset selection is applied }
	\item{ Y }{ embedded data }
	\item{ choise }{ (only if \code{ss==TRUE}) index vector of kept data while subset selection }
	\item{ id }{ (only if \code{id==TRUE}) vector of intrinsic dimension for every data point.}
}

\references{ 
	1) Locally linear embedding / Dick de Ridder and Robert P.W. Duin / Delft University of Technology, Delft, Netherlands / 2002 \cr
	2) Automated Local Linear Embedding with an application to microarray data / Elisa Grilli / Universita di Bologna, Italy / 2005 \cr
	3) Improved Locally Linear Embedding Through New Distance Computing	/ Heyong Wang et al /  Sun Yat-sen University, China / 2010}

 
\examples{
	# perform LLE
	data( lle_scurve_data )
	X <- lle_scurve_data
	results <- lle( X=X, m=2, k=12, reg=2, ss=FALSE, id=TRUE, v=0.9 )
	str( results )
	
	# plot results and intrinsic dimension (manually)
	split.screen( c(2,1) )
	screen(1)
	plot( results$Y, main="embedded data", xlab=expression(y[1]), ylab=expression(y[2]) )
	screen(2)
	plot( results$id, main="intrinsic dimension", type="l", xlab=expression(x[i]), ylab="id", lwd=2 )

}