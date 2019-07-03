\encoding{utf8} 
\name{dose.distr}
\alias{dose.distr}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Inverse regression model for radiation biodosimetry
}
\description{
The function allows the user to estimate radiation doses distribution using the methodology described in Higueras et al. (2014).
}
\usage{
dose.distr(f, pars, beta, cov, cells, dics, m.prior="gamma", 
d.prior="uniform", prior.param=c(0,"Inf"), stdf=6, nsim=1000)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{f}{
dose-response function, as an \code{expression}. Must be differenciable in the domain of parameters.
}
  \item{pars}{
string vector containing the parameters in \code{f}.
}
  \item{beta}{
estimates of the parameters.
}
  \item{cov}{
variance-covariance matrix.
}
  \item{cells}{
patient information, number of cells examined.
}
  \item{dics}{
patient information, observed number of aberrations.
}
  \item{m.prior}{
string containing the prior distribution of the mean. It can be \code{gamma} (the default value) or \code{normal}.
}
  \item{d.prior}{
string containing the prior distribution of the dose. It can be \code{gamma} or \code{uniform} (the default value).
}
  \item{prior.param}{
vector of length 2 containing the parameters of the distribution of the dose prior. The parametrization for the \code{uniform} distribution is the usual, based on the support, and an improper uniform distribution is allowed, setting the second parameter to \code{Inf}. Its default value is the non-informative prior.
The \code{gamma} distribution is parametrized in terms of the mean and standard deviation.}
  \item{stdf}{
Approximated standard deviation factor. This input is useful to control the ends of the calibrative density; i.e. in case the
tails of the calibrative dose density are very long this value could
be reduced, or viceversa. Its default value is 6.}
\item{nsim}{
Number of simulations to base the results on. Its default value is 1000.}
}

\value{
An object of class \code{dose.radir} containing the distribution of the estimated doses.
}
\references{
Higueras M, Puig P, Ainsbury EA, Rothkamm K. A new inverse regression model applied to radiation biodosimetry.
Proc R Soc A 2015;\bold{471}, http://dx.doi.org/10.1098/rspa.2014.0588
}
\author{
David Moriña (Barcelona Graduate School of Mathematics), Manuel Higueras (Basque Center for Applied Mathematics) and Pedro Puig (Universitat Autònoma de Barcelona)

Mantainer: David Moriña Soler <david.morina@uab.cat>
}

\seealso{
\code{\link{radir-package}}, \code{\link{ci.dose.radir}}, \code{\link{pr.dose.radir}}
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
}

\keyword{ radir }
