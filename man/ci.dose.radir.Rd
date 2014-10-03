\encoding{utf8} 
\name{ci.dose.radir}
\alias{ci.dose.radir}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Credible intervals for radiation dose
}
\description{
The function allows the user to compute credible intervals for radiation doses objects of class \code{radir}.
}
\usage{
ci.dose.radir(object, cr=0.95)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{object}{
the doses estimated by \code{dose.distr} function, an object of class \code{radir}.
}
  \item{cr}{
size of the credibility region. Its default value is 0.95.
}
}

\value{
A vector with two elements containing the lower and upper bounds of the credible region.
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
\code{\link{radir-package}}, \code{\link{dose.distr}}, \code{\link{pr.dose.radir}}
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

ci.dose.radir(ex1.a, 0.90)
}

\keyword{ radir }
