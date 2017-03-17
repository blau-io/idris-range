module Data.Range

%access public export
%default total

||| Range is a generic data type over the `Ord` type class. It describes a value
||| between two bounds.
data Range : Ord a => a -> a -> Type where
  MkRange : Ord a => (x,y,z : a) ->
                     {auto prf : (x >= y && x <= z = True)} ->
                     Range y z
