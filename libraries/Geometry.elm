-- Paths and Shapes.
-- These structures are purely geometric forms, no colors or styles.
-- Could be the basis of some cool geometry stuff :)

module Geometry where

data Path = Path [(Float,Float)]

path = Path
segment p1 p2 = Path [p1,p2]

type Shape = [(Float,Float)]

polygon points = points

rect w h = [ (0-w/2,0-h/2), (0-w/2,h/2), (w/2,h/2), (w/2,0-h/2) ]

oval w h =
  let n = 50
      f i = (w/2 * cos (2*pi/n * i), h/2 * sin (2*pi/n * i))
  in  map f [0..n-1]

circle r = oval (2*r) (2*r)

ngon n r =
  let m = toFloat n
      f i = ( r * cos (2*pi/m * i), r * sin (2*pi/m * i))
  in  map f [0..n-1]