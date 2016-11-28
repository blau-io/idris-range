
data Range : Ord a => a -> a -> Type where
  MkRange : Ord a => (x,y,z : a) ->
                     {auto prf : (x >= y && x <= z = True)} ->
                     Range y z
