\encoding{utf8}
\name{pr.dose.radir}
\alias{pr.dose.radir}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Probability between doses
}
\description{
This function allows the user to compute the probability between two radiation doses.
}
\usage{
pr.dose.radir(object, lod = 0, upd = object[[2]][length(object[[2]])])
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{object}{
An object of class \code{radir} containing the estimated doses.
}
  \item{lod}{
  Lower dose considered. Its default value is 0.
  }
  \item{upd}{
  Upper dose considered. Its default value is the maximum dose in \code{object}.
  }
}

\value{
The probability that the real dose is between \code{lod} and \code{upd}.
}

\references{
Higueras M, Puig P, Ainsbury EA, Rothkamm K. A new inverse regression model applied to radiation biodosimetry.
Proc R Soc A 2015;\bold{471}, http://dx.doi.org/10.1098/rspa.2014.0588
}
\author{
David Moriña (Centre for Research in Environmental Epidemiology, CREAL), Manuel Higueras (Universitat Autònoma de Barcelona and Public Health England) and Pedro Puig (Universitat Autònoma de Barcelona)

Mantainer: David Moriña Soler <david.morina@uab.cat>
}

\seealso{
\code{\link{radir-package}}, \code{\link{dose.distr}}, \code{\link{ci.dose.radir}}
}
\examples{
### Example 3 (a)
f <- expression(b1*x+b2*x^2)
pars <- c("b1","b2")
beta <- c(3.126e-3, 2.537e-2)
cov  <- matrix(c(7.205e-06,-3.438e-06,-3.438e-06,2.718e-06),nrow=2)

### (a)
ex1.a <- dose.distr(f, pars, beta, cov, cells=1811, dics=102, 
m.prior="normal", d.prior="uniform", prior.param=c(0, Inf))

pr.dose.radir(ex1.a, 1, 1.4)
}

\keyword{ radir }
