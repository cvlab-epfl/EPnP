
# EPnP: An Accurate O(n) Solution to the PnP Problem 

We propose a non-iterative solution to the PnP problem-the estimation of the pose of a calibrated camera from n 3D-to-2D point correspondences-whose computational complexity grows linearly with *n*. 
This is in contrast to state-of-the-art methods that are *O(n^5)* or even *O(n^8)*, without being more accurate. 
Our method is applicable for all *n >= 4* and handles properly both planar and non-planar configurations. 
Our central idea is to express the *n* 3D points as a weighted sum of four virtual control points. 
The problem then reduces to estimating the coordinates of these control points in the camera referential, 
which can be done in *O(n)* time by expressing these coordinates as weighted sum of the eigenvectors of a *12 x 12* matrix 
and solving a small *constant* number of quadratic equations to pick the right weights.
Furthermore, if maximal precision is required, the output of the closed-form solution can be used to initialize a Gauss-Newton scheme, which improves accuracy with negligible amount of additional time.
The advantages of our method are demonstrated by thorough testing on both synthetic and real-data.

**EPnP: An Accurate O(n) Solution to the PnP Problem**  
Vincent Lepetit; Francesc Moreno-Noguer; Pascal Fua  
*International Journal Of Computer Vision. 2009*  
[[abstract]](https://infoscience.epfl.ch/record/160138?ln=en) - [[PDF]](https://infoscience.epfl.ch/record/160138/files/top.pdf) - [[bibtex]](https://infoscience.epfl.ch/record/160138/export/btex)

**Accurate non-iterative O(n) solution to the PnP problem**  
Francesc Moreno-Noguer; Vincent Lepetit; Pascal Fua  
*ICCV 2007*  
[[abstract]](https://infoscience.epfl.ch/record/179767?ln=en) - [[PDF]](https://infoscience.epfl.ch/record/179767/files/top.pdf) - [[bibtex]](https://infoscience.epfl.ch/record/179767/export/btex)

