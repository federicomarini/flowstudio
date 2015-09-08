library("flowcatchR")
data("MesenteriumSubset")
# printing summary information for the MesenteriumSubset object
MesenteriumSubset
plateletsMesenterium <- channel.Frames(MesenteriumSubset, mode="red")
plateletsMesenterium
preprocessedPlatelets <- preprocess.Frames(plateletsMesenterium,
                                           brush.size=3, brush.shape="disc",
                                           at.offset=0.15, at.wwidth=10, at.wheight=10,
                                           kern.size=3, kern.shape="disc",
                                           ws.tolerance=1, ws.radius=1)
preprocessedPlatelets
platelets <- particles(plateletsMesenterium, preprocessedPlatelets)
platelets
linkedPlatelets <- link.particles(platelets,
                                  L=26, R=3,
                                  epsilon1=0, epsilon2=0,
                                  lambda1=1, lambda2=0,
                                  penaltyFunction=penaltyFunctionGenerator(),
                                  include.area=FALSE)
linkedPlatelets
trajPlatelets <- trajectories(linkedPlatelets)
trajPlatelets
plot2D.TrajectorySet(trajPlatelets, MesenteriumSubset)


snap(MesenteriumSubset,preprocessedPlatelets,
     platelets,trajPlatelets,
     frameID = 1,showVelocity = T)
snap(MesenteriumSubset,preprocessedPlatelets,
     platelets,trajPlatelets,
     frameID = 1,showVelocity = T)
snap(MesenteriumSubset,preprocessedPlatelets,
     platelets,trajPlatelets,
     frameID = 1,showVelocity = T)
snap(MesenteriumSubset,preprocessedPlatelets,
     platelets,trajPlatelets,
     frameID = 1,showVelocity = T)
