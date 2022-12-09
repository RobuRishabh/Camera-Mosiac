# 1. Camera Calibration
 Camera Calibration estimates the parameters of a lens and image sensor of an image or video camera. We can use these parameters to correct lens distortion, measure the size of an object in world units, or determine the location of the camera in the scene. These tasks are used in applications such as machine vision to detect and measure objects.

 Calibration images were taken of a 7x9 checkerboard with 30mm x 30mm squares each. I have taken 14 images of checkerbox for calibration that are fed into Caltech Camera Calibration Toolbox. To ascertain the error, the corners are extracted manually. After carefully clicking on the four extreme corners of the rectangular checkerboards pattern of each image, the grid corners are automatically extracted by the MATLAB Camera Calibration toolbox.

 # 1.1 Calibration Parameters
The calibration algorithm calculates the camera matrix using the extrinsic and intrinsic parameters. The extrinsic parameters represent a rigid transformation from 3-D world coordinate system to the 3-D camera’s coordinate system. The intrinsic parameters represent a projective transformation from the 3-D camera’s coordinates into the 2-D image coordinates.
    • Extrinsic Parameter: The extrinsic parameters consist of a rotation, R, and a translation, t. The origin of the camera’s coordinate system is at its optical center and its x- and y-axis define the image plane.
    • Intrinsic Parameter: The intrinsic parameters include the focal length, the optical center, also known as the principal point, and the skew coefficient. The camera intrinsic matrix, K, is defined as: 
                [fx s cx]
                [0 fy cy]
                [0 0 1]
where,
cc is Optical center (the principal point), in pixels.
fc is Focal length in pixels.
s is Skew coefficient, which is non-zero if the image axes are not perpendicular.

The Distortion coefficients calculated after optimization is represented by kc. The distortion coefficients k1, k2, k3 represent the radial distortion coefficients and p1, p2 represent the tangential distortion.
The magnitude of tangential distortion coefficients is smaller than the radial distortion coefficients because many modern camera lenses are already optimized for tangential distortion.
    Distortion Coefficient = [k1 k2 p1 p2 k3]

# Reprojection Error
<img src="Final Results\Camera Calibration\Calibration.png" width=2000px> | <img src="Final Results\Camera Calibration\Reprojection Error.png" width=2500px> | 

   Extrinsic Parameter - Camera Centered      |      Extrinsic Parameter - World Centered        |
:-------------------------:|:------------------------:|
| <img src="Final Results\Camera Calibration\Extrinsic Parameter - Camera Centered.png" width=500px> | <img src="Final Results\Camera Calibration\Extrinsic Parameter - World Centered.png" width=500px> |




<img src="Final Results\Camera Calibration\Calibration.png" width=1500px>  
<img src="Final Results\Camera Calibration\Reprojection Error.png" width=500px> 


# 2. Image Mosiacing




