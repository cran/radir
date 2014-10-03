\encoding{utf8} 
\name{radir-internal}
\alias{radir-internal}
\alias{a}
\alias{b}
\alias{u}
\alias{v}
\alias{plot.dose.radir}
\alias{lines.dose.radir}
\alias{summary.dose.radir}
\alias{print.summary.dose.radir}

\title{Internal radir functions}
\description{Internal radir functions}
\usage{
a(x, pos=1, envir=as.environment(pos))
b(x, pos=1, envir=as.environment(pos))
u(f, x, beta)
v(f, x, beta)
\method{summary}{dose.radir}(object, ...)
\method{print.summary}{dose.radir}(x, ...)
\method{plot}{dose.radir}(x, ci=FALSE, cr=NA, distr=FALSE, prob=NA, col.ci="grey", col.pr="grey", ...)
\method{lines}{dose.radir}(x, ...)
}

\details{These functions are not to be called by the user}
\seealso{
\code{\link{radir-package}}, \code{\link{dose.distr}}, \code{\link{ci.dose.radir}}, \code{\link{pr.dose.radir}}
}
\keyword{internal}
