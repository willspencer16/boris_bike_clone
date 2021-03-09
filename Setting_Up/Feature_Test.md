# Feature Test

Based on our user story and domain model, we felt the objects and messages would work
together in roughly the following code, therefore making it our feature test:

bike.working?
  if true
    Docking_Station.release_bike
  end
return bike
