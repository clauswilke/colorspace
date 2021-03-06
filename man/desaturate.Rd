\name{desaturate}
\alias{desaturate}

\title{Desaturate Colors by Chroma Removal in HCL Space}

\description{
  Transform a vector of given colors to the corresponding colors
  with chroma removed (collapsed to zero) in HCL space.
}
\usage{
desaturate(col, amount=1)
}
\arguments{
  \item{col}{vector of any of the three kind of R colors, i.e., either a
    color name (an element of \code{\link[grDevices]{colors}}), a hexadecimal string
    of the form \code{"#rrggbb"} or \code{"#rrggbbaa"} (see \code{\link[grDevices]{rgb}}),
    or an integer \code{i} meaning \code{palette()[i]}.}
  \item{amount}{number between 0 and 1 indicating the degree of desaturation (0: none, 1: complete);
    defaults to 0.}
}
\details{
  Given colors are first transformed to RGB (either using \code{\link[colorspace]{hex2RGB}}
  or \code{\link[grDevices]{col2rgb}}) and then to HCL (\code{\link[colorspace]{polarLUV}}).
  In HCL, chroma is removed (i.e., collapsed to zero) and then the color is
  transformed back to a hexadecimal string.
}

\value{
  A character vector with (s)RGB codings of the colors in the palette.
}

\author{
  Achim Zeileis
}

\seealso{
  \code{\link[colorspace]{polarLUV}},
  \code{\link[colorspace]{hex}}
}

\examples{
## rainbow of colors and their desaturated counterparts
rainbow_hcl(12)
desaturate(rainbow_hcl(12))

## convenience demo function
wheel <- function(col, radius = 1, ...)
  pie(rep(1, length(col)), col = col, radius = radius, ...) 

## compare base and colorspace palettes
## (in color and desaturated)
par(mar = rep(0, 4), mfrow = c(2, 2))
## rainbow color wheel
wheel(rainbow_hcl(12))
wheel(rainbow(12))
wheel(desaturate(rainbow_hcl(12)))
wheel(desaturate(rainbow(12)))
}

\keyword{color}
