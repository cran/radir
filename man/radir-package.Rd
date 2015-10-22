\encoding{utf8} 
\name{radir-package}
\alias{radir-package}
\alias{radir}
\docType{package}
\title{
Inverse regression model for radiation biodosimetry
}
\description{
The package implements a new inverse regression model with applications to radiation biodosimetry.
}
\details{
\tabular{ll}{
Package: \tab radir\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2014-10-03\cr
License: \tab GPL version 2 or newer\cr
LazyLoad: \tab yes\cr
}
The package implements a new inverse regression model with applications to radiation biodosimetry by means of the function \code{dose.distr}. It allows for several distributions for the dose prior including \code{uniform} and \code{gamma}, and for the mean prior, including \code{gamma} and \code{normal} distributions. A summary containing the most relevant information about the estimated doses can be obtained via \code{summary} and graphics can be obtained in a standard way by means of \code{plot} or \code{lines} functions.

}
\author{
David Moriña (Centre for Research in Environmental Epidemiology, CREAL), Manuel Higueras (Universitat Autònoma de Barcelona and Public Health England) and Pedro Puig (Universitat Autònoma de Barcelona)

Mantainer: David Moriña Soler <david.morina@uab.cat>
}

\references{
Higueras M, Puig P, Ainsbury EA, Rothkamm K. A new inverse regression model applied to radiation biodosimetry.
Proc R Soc A 2015;\bold{471}, http://dx.doi.org/10.1098/rspa.2014.0588
}
\keyword{ package }
\seealso{
\code{\link{dose.distr}}
}
\examples{
f <- expression(b1*x+b2*x^2)
pars <- c("b1","b2")
beta <- c(3.126e-3, 2.537e-2)
cov  <- matrix(c(7.205e-06,-3.438e-06,-3.438e-06,2.718e-06),nrow=2)

ex1.a <- dose.distr(f, pars, beta, cov, cells=1811, dics=102, 
m.prior="normal", d.prior="uniform", prior.param=c(0, Inf))
summary(ex1.a)
plot(ex1.a)
}
