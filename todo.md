autocorrdiag.R  
  autocorr.diag.mcmc (method for the mcmc class)
      depends on:
		  autocorr() defined in "output.R"

batchSE.R
codamenu.R
cumuplot.R
gelman.R
  gelman.diag
    as.mcmc.list (mcmclist.R)
    mcmc.list (mcmclist.R) 
    nchain (mcextractor.R)
    start (start.mcmc, mcmc.R)
    end (end.mcmc, mcmc.R)
    window (window.mcmc mcmc.R)
           (window.mcmc.list   mcmclist.R) 
    niter (mcextractor.R)
    varnames (mcextractor.R)
    matrix (base)
    array(base)
    var (stats)
    t (base)
    is.R (base)
    chol, The Choleski Decomposition (base)
    eigen (stats) matrix Spectral decomp
    backsolve (base) solve upper/lower  trian system
    matrix (base)
    qr.solve (base, see "qr" in general)
    eigen (base)
        eigen uses the LAPACK routines DSYEVR, DGEEV, ZHEEV and ZGEEV
    sqrt (base)
    diag (base) 
    var(base)
    t()
    class (get class attribute)

gelman.transform
    is.R
    options (base)
    getOption (base)
    data.frame (base)
    min (base)
    max (base)
    log (base)
gelman.mv.diag
    matrix
    var
    eigen
    qr
print.gelman.diag
    print, cat, format
gelman.plot        
    as.mcmc.list
    par
    matplot
gelman.preplot    
    array (base, nice consturctions)
    geman.diag (this file)


geweke.R
heidel.R
HPDinterval.R
jags.R
mcextractor.R
mcmc.R
  "[.mcmc" access the sample array
  "as.mcmc"  (generic)
  "as.mcmc.default" 
  "as.ts.mcmc"
      ts(x, start, ebd, deltat=thin)
      set attr "mcpar" to zero 
  "start.mcmc" 
      mcpar(as.mcmc(x))[1]
  "end.mcmc"
      mcpar(as.mcmc(x))[2]
  "fequency.mcmc" 1/thin.mcmc(x)
  "thin.mcmc"  
    TODO: what is "thinning" in mcmc lingo
  "is.mcmc" somewhere in the class hierarchy is "mcmc"
  "mcmc" construct mcmc object
  "print.mcmc" its like a toString()
  "as.matrix.mcmc" <- dimnames(y)
  "time.mcmc" <- convert to ts object with actual time values as data
  "window.mcmc" <- slice an mcmc object
  "mcmcUpgrade" <- upgrade in format not known to you
  "head.mcmc" <- usus window.mcmc
  "tail.mcmc" <- usus window. 

mcmclist.R
  "[.mcmc.list"  subsetting mcmc.list, not needed
  "mcmc.list" compose an r-list of several mcmc objects
  "start.mcmc.list" just get the "start" of the first one in the list
  "end.mcmc.list" just get then "end" of the first one in the list
  "thin.mcmc.list" get the first "thin" in the list
  "plot.mcmc.list" NA
  "summary.mcmc.list" NA
  "as.matrix.mcmc.list" 'algamation of the data into a single matrix"
  "as.mcmc.mcmc.list"
     nchain(x)==1 otherwise error
  "time.mcmc.list" get the time of the first elt
  "window.mcmc.list" get the window of the first elt
  "window.mcmc.list" --> applies "window.mcmc"
  "head.mcmc.list" --> applies "head.mcmc" 
  "tail.mcmc.list" --> applies "tail.mcmc"
  "as.mcmc.list" --> S3 generic
  "as.mcmc.list.default" --> identity
  "as.array.mcmc.list" 
      nchain
      array
      drop (delete the extentions of an array that have only 1 level)
output.R
raftery.R
rejectionRate.R
thin.R
trellisplots.R
util.R

> ls(getNamespace("coda"),all.names=TRUE)
  [1] ".Coda.Options.Default"        ".__NAMESPACE__."
  [3] ".__S3MethodsTable__."         ".packageName"
  [5] "HPDinterval"                  "HPDinterval.mcmc"
  [7] "HPDinterval.mcmc.list"        "[.mcmc" `operator overloading mcmc[..]`
  [9] "[.mcmc.list"                  "acfplot"
 [11] "acfplot.mcmc"                 "acfplot.mcmc.list"
 [13] "as.array.mcmc.list"           "as.data.frame.mcmc"
 [15] "as.matrix.mcmc"               "as.matrix.mcmc.list"
 [17] "as.mcmc"                      "as.mcmc.default"
 [19] "as.mcmc.list"                 "as.mcmc.list.default"
 [21] "as.mcmc.mcmc.list"            "as.ts.mcmc"
 [23] "autocorr"                     "autocorr.diag"
 [25] "autocorr.diag.mcmc"           "autocorr.diag.mcmc.list"
 [27] "autocorr.plot"                "batchSE"
 [29] "batchSE.mcmc"                 "batchSE.mcmc.list"
 [31] "bugs2jags"                    "chanames"
 [33] "chanames<-"                   "change.tfoption"
 [35] "coda.env"                     "coda.options"
 [37] "codamenu"                     "codamenu.anal"
 [39] "codamenu.diags"               "codamenu.diags.autocorr"
 [41] "codamenu.diags.crosscorr"     "codamenu.diags.gelman"
 [43] "codamenu.diags.geweke"        "codamenu.diags.heidel"
 [45] "codamenu.diags.raftery"       "codamenu.main"
 [47] "codamenu.options"             "codamenu.options.data"
 [49] "codamenu.options.diag"        "codamenu.options.gelman"
 [51] "codamenu.options.geweke.bin"  "codamenu.options.geweke.win"
 [53] "codamenu.options.heidel"      "codamenu.options.plot"
 [55] "codamenu.options.plot.kernel" "codamenu.options.raftery"
 [57] "codamenu.options.stats"       "codamenu.output.header"
 [59] "codamenu.ps"                  "crosscorr"
 [61] "crosscorr.plot"               "cumuplot"
 [63] "densityplot.mcmc"             "densityplot.mcmc.list"
 [65] "densplot"                     "display.coda.options"
 [67] "display.working.data"         "do.spectrum0"
 [69] "effectiveSize"                "end.mcmc"
 [71] "end.mcmc.list"                "frequency.mcmc"
 [73] "gelman.diag"                  "gelman.mv.diag"
 [75] "gelman.plot"                  "gelman.preplot"
 [77] "gelman.transform"             "geweke.diag"
 [79] "geweke.plot"                  "head.mcmc"
 [81] "head.mcmc.list"               "heidel.diag"
 [83] "is.mcmc"                      "is.mcmc.list"
 [85] "levelplot.mcmc"               "mcmc"
 [87] "mcmc.list"                    "mcmcUpgrade"
 [89] "mcpar"                        "multi.menu"
 [91] "nchain"                       "niter"
 [93] "nvar"                         "panel.acfplot"
 [95] "pcramer"                      "plot.mcmc"
 [97] "plot.mcmc.list"               "pretty.discrete"
 [99] "print.gelman.diag"            "print.geweke.diag"
[101] "print.heidel.diag"            "print.mcmc"
[103] "print.raftery.diag"           "print.summary.mcmc"
[105] "qqmath.mcmc"                  "qqmath.mcmc.list"
[107] "raftery.diag"                 "read.and.check"
[109] "read.coda"                    "read.coda.interactive"
[111] "read.jags"                    "read.openbugs"
[113] "read.yesno"                   "rejectionRate"
[115] "rejectionRate.mcmc"           "rejectionRate.mcmc.list"
[117] "safespec0"                    "set.mfrow"
[119] "spectrum0"                    "spectrum0.ar"
[121] "splom.mcmc"                   "start.mcmc"
[123] "start.mcmc.list"              "summary.mcmc"
[125] "summary.mcmc.list"            "tail.mcmc"
[127] "tail.mcmc.list"               "thin"
[129] "thin.mcmc"                    "thin.mcmc.list"
[131] "thinned.indices"              "time.mcmc"
[133] "time.mcmc.list"               "traceplot"
[135] "varnames"                     "varnames<-"
[137] "window.mcmc"                  "window.mcmc.list"
[139] "xyplot.mcmc"                  "xyplot.mcmc.list"
