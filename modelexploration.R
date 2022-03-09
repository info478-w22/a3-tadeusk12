library("EpiModel")

# Basic dcms
# https://onlinelibrary.wiley.com/doi/10.1002/jmv.27506
# https://deliverypdf.ssrn.com/delivery.php?ID=013084113099075076081099125108082007125015095067062090018069012096127075064083083110101106016015108127058124113027026107079028047047048048043107065093113123098035086054065108025123107112106109066067006125125106091071067010095118082097084075069021&EXT=pdf&INDEX=TRUE

# inf. prob = transmission probability per act
# act. rate = acts per person per unit time
param <- param.dcm(inf.prob = 0.99, act.rate = 0.25)

# init.dcm collects initial conditions of model
init <- init.dcm(s.num = 5000, i.num = 1)

# control.dcm collects other structural model controls like the
# model type and number of time steps for the simulation
control <- control.dcm(type = "SI", nsteps = 500)

mod <- dcm(param, init, control)
mod

# plot the model
plot(mod)


# SI Model Stochasticity

param <- param.icm(inf.prob = 0.99, act.rate = 0.25)
init <- init.icm(s.num = 500, i.num = 1)
control <- control.icm(type = "SI", nsims = 10, nsteps = 300)
mod <- icm(param, init, control)

mod

summary(mod, at = 125)

plot(mod)



