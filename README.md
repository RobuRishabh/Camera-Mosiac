# 1. Camera Calibration
 Camera Calibration estimates the parameters of a lens and image sensor of an image or video camera. We can use these parameters to correct lens distortion, measure the size of an object in world units, or determine the location of the camera in the scene. These tasks are used in applications such as machine vision to detect and measure objects.

 Calibration images were taken of a 7x9 checkerboard with 30mm x 30mm squares each. I have taken 14 images of checkerbox for calibration that are fed into Caltech Camera Calibration Toolbox. To ascertain the error, the corners are extracted manually. After carefully clicking on the four extreme corners of the rectangular checkerboards pattern of each image, the grid corners are automatically extracted by the MATLAB Camera Calibration toolbox.

 # 1.1 Calibration Parameters
The calibration algorithm calculates the camera matrix using the extrinsic and intrinsic parameters. The extrinsic parameters represent a rigid transformation from 3-D world coordinate system to the 3-D camera’s coordinate system. The intrinsic parameters represent a projective transformation from the 3-D camera’s coordinates into the 2-D image coordinates.
    • Extrinsic Parameter: The extrinsic parameters consist of a rotation, R, and a translation, t. The origin of the camera’s coordinate system is at its optical center and its x- and y-axis define the image plane.
    • Intrinsic Parameter: The intrinsic parameters include the focal length, the optical center, also known as the principal point, and the skew coefficient. The camera intrinsic matrix, K, is defined as: 
$\begin{bmatrix}
fx & s & cx\\
0 & fy & cy\\
0 & 0 & 1
\end{bmatrix}
$

where,
cc is Optical center (the principal point), in pixels.

fc is Focal length in pixels.

s is Skew coefficient, which is non-zero if the image axes are not perpendicular.

The Distortion coefficients calculated after optimization is represented by kc. The distortion coefficients k1, k2, k3 represent the radial distortion coefficients and p1, p2 represent the tangential distortion.
The magnitude of tangential distortion coefficients is smaller than the radial distortion coefficients because many modern camera lenses are already optimized for tangential distortion.
    Distortion Coefficient = [k1 k2 p1 p2 k3]

# 1.2 Reprojection Error
<img src="Final Results\Camera Calibration\Calibration.png" width=2000px>
<img src="Final Results\Camera Calibration\Reprojection Error.png" width=2000px>

   Extrinsic Parameter - Camera Centered      |      Extrinsic Parameter - World Centered        |
:-------------------------:|:------------------------:|
| <img src="Final Results\Camera Calibration\Extrinsic Parameter - Camera Centered.png" width=500px> | <img src="Final Results\Camera Calibration\Extrinsic Parameter - World Centered.png" width=500px> |

# 2. Image Mosiacing

# 2.1 Mural images on the Latino Students Center building
<img src="Final Results\LSC_mosiac\LSC_initial.png" width=1000px>

   Harris Detector Sample 1      |      Harris Detector Sample 2        |
:-------------------------:|:------------------------:|
| <img src="Final Results\LSC_mosiac\LSC1.png" width=500px> | <img src="Final Results\LSC_mosiac\LSC2.png" width=500px> |
<img src="Final Results\LSC_mosiac\LSC_final.png" width=1000px>

# 2.2 Ruggles Mural with 50% Overlapping
<img src="Final Results\Ruggles50\Ruggles_initial.png" width=1000px>

   Harris Detector Sample 1      |      Harris Detector Sample 2        |
:-------------------------:|:------------------------:|
| <img src="Final Results\Ruggles50\R1.png" width=500px> | <img src="Final Results\Ruggles50\R2.png" width=500px> |
<img src="Final Results\Ruggles50\Ruggles_final.png" width=1000px>

# 2.3 Ruggles Mural with 15% Overlapping
<img src="Final Results\Ruggles15\RM_initial.png" width=1000px>

   Harris Detector Sample 1      |      Harris Detector Sample 2        |
:-------------------------:|:------------------------:|
| <img src="Final Results\Ruggles15\RM1.png" width=500px> | <img src="Final Results\Ruggles15\RM2.png" width=500px> |
<img src="Final Results\Ruggles15\RM_final.png" width=1000px>

# 2.4 Cinder Wall Mosiac
<img src="Final Results\Cinder wall\Cinder initial.png" width=1000px>

   Harris Detector Sample 1      |      Harris Detector Sample 2        |
:-------------------------:|:------------------------:|
| <img src="Final Results\Cinder wall\Cinder1.png" width=500px> | <img src="Final Results\Cinder wall\Cinder2.png" width=500px> |
<img src="Final Results\Cinder wall\Cinder Final.png" width=1000px>

# Follow the steps to perform experiment of Image Mosaicing
1. Go through the Matlab example on feature based panoramic image stitching. We will use this as a 
template for our work https://www.mathworks.com/help/vision/ug/feature-based-panoramic-image-stitching.html?searchHighlight=panorama&s_tid=doc_srchtitle.
2. Download the Caltech Camera Calibration toolbox. https://data.caltech.edu/records/20164
3. Look at index.html and own_calib.html. Print out a calibration pattern and stick it firmly to a really flat object. (calib_doc\download\TOOLBOX_calib \calibration_pattern\pattern.pdf) 
4. Take pictures of the calibration pattern from different angles while making sure that the calibration object fills most of the image. Try and make sure that the reprojection error after calibration is reasonable.
5. Play with the Harris feature detector file and the convolve2 file, these files can be found in references section, to get features well distributed across the image.
6. Use the Matlab example code to figure out how to make a panoramic mosaic of the entire building. 
Please use the harris detector that has been provided as opposed to the feature detector the Matlab example uses.
7. Repeat the mosaicing exercise with images of a cinder block wall (again use 5-6 images that overlap 
by about 50%).

References:
- https://www.mathworks.com/help/vision/ug/feature-based-panoramic-image-stitching.html?searchHighlight=panorama&s_tid=doc_srchtitle
- https://www.mathworks.com/help/vision/ref/detectharrisfeatures.html
- https://data.caltech.edu/records/jx9cx-fdh55
- https://szeliski.org/Book/









