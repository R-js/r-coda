

nchain <- function (x) 
{
    if (is.mcmc(x)) 
        1
    else if (is.mcmc.list(x)) 
        length(x)
    else NULL
}
