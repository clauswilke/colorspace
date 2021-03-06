\name{polarLUV}
\alias{polarLUV}
\title{Create polarLUV Colors}
\description{
 This function creates colors of class ``polarLUV'';
  a subclass of the virtual ``color'' class.
}
\usage{
polarLUV(L, C, H, names)
}
\arguments{
  \item{L,C,H}{these arguments give the L, C and H coordinates of
    the colors.  The values can be provided in separate \code{L},
    \code{C} and \code{H} vectors or in a three-column matrix
    passed as \code{L}.}
  \item{names}{A vector of names for the colors (by default the row
    names of \code{L} are used).}
}
\details{
  The polarLUV space is a transformation of the CIE \eqn{L^*u^*u^*}{L*u*u*}
  space so that the \eqn{u} and \eqn{u} values are converted to polar
  coordinates.  The radial component \eqn{C} measures chroma and
  the angular coordinate \eqn{H} is measures hue.
}
\value{
  An object of class ``polarLUV'' which inherits from class ``color.''
}
%\references{ ~put references to the literature/web site here ~ }
\author{Ross Ihaka}
%\note{ ~~further notes~~ }

\seealso{
  \code{\link{RGB}},
  \code{\link{HSV}},
  \code{\link{XYZ}},
  \code{\link{LAB}},
  \code{\link{polarLAB}},
  \code{\link{LUV}},
  \code{\link{polarLUV}}.
}

\examples{
## Show the polarLUV space
set.seed(1)
x <- RGB(runif(1000), runif(1000), runif(1000))
y <- as(x, "polarLUV")
head(x)
head(y)
plot(y)
}
\keyword{color}
