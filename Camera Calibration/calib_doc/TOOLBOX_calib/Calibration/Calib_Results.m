% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 1242.959663041985095 ; 1241.118757974602886 ];

%-- Principal point:
cc = [ 807.629772558792979 ; 367.031410738863258 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ 0.166539898800801 ; -0.570672926330420 ; 0.000659082732072 ; 0.002261436735183 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 9.004859739886667 ; 9.199746654143711 ];

%-- Principal point uncertainty:
cc_error = [ 7.900372494572016 ; 6.125528274837392 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.020084119799947 ; 0.144049553792864 ; 0.002260331999481 ; 0.002998670016748 ; 0.000000000000000 ];

%-- Image size:
nx = 1600;
ny = 729;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 13;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ -2.309106e+00 ; -1.540936e+00 ; -3.629748e-02 ];
Tc_1  = [ -1.210300e+02 ; -3.318068e+01 ; 6.068945e+02 ];
omc_error_1 = [ 5.419457e-03 ; 4.457616e-03 ; 9.489572e-03 ];
Tc_error_1  = [ 3.857951e+00 ; 2.999940e+00 ; 4.361959e+00 ];

%-- Image #2:
omc_2 = [ 2.194663e+00 ; 2.174474e+00 ; -3.304724e-03 ];
Tc_2  = [ -1.338806e+02 ; -8.971276e+01 ; 4.537556e+02 ];
omc_error_2 = [ 4.836963e-03 ; 5.431520e-03 ; 1.096369e-02 ];
Tc_error_2  = [ 2.912149e+00 ; 2.274770e+00 ; 3.532338e+00 ];

%-- Image #3:
omc_3 = [ 1.903643e+00 ; 1.764625e+00 ; -2.969610e-01 ];
Tc_3  = [ -1.108387e+02 ; -5.892076e+01 ; 4.757825e+02 ];
omc_error_3 = [ 3.790859e-03 ; 4.881839e-03 ; 7.841466e-03 ];
Tc_error_3  = [ 3.026563e+00 ; 2.355806e+00 ; 3.447121e+00 ];

%-- Image #4:
omc_4 = [ -2.335411e+00 ; -1.525195e+00 ; -4.131681e-02 ];
Tc_4  = [ -6.106020e+01 ; -2.968779e+01 ; 6.634050e+02 ];
omc_error_4 = [ 6.013087e-03 ; 5.338998e-03 ; 1.018772e-02 ];
Tc_error_4  = [ 4.216160e+00 ; 3.258011e+00 ; 4.663346e+00 ];

%-- Image #5:
omc_5 = [ -2.377288e+00 ; -1.841451e+00 ; 4.105971e-01 ];
Tc_5  = [ -1.598217e+02 ; -4.696729e+01 ; 5.452716e+02 ];
omc_error_5 = [ 6.003457e-03 ; 3.548609e-03 ; 9.940815e-03 ];
Tc_error_5  = [ 3.473437e+00 ; 2.728787e+00 ; 3.941170e+00 ];

%-- Image #6:
omc_6 = [ 2.571526e+00 ; 8.918605e-01 ; 2.168838e-02 ];
Tc_6  = [ -1.987842e+02 ; -6.822956e+00 ; 5.699042e+02 ];
omc_error_6 = [ 5.627729e-03 ; 3.674982e-03 ; 9.805567e-03 ];
Tc_error_6  = [ 3.631910e+00 ; 2.887842e+00 ; 4.570876e+00 ];

%-- Image #7:
omc_7 = [ 2.208660e+00 ; 2.005967e+00 ; -8.319538e-02 ];
Tc_7  = [ -1.046231e+02 ; -7.746008e+01 ; 4.901864e+02 ];
omc_error_7 = [ 4.896531e-03 ; 5.070939e-03 ; 1.053400e-02 ];
Tc_error_7  = [ 3.132207e+00 ; 2.423840e+00 ; 3.705065e+00 ];

%-- Image #8:
omc_8 = [ -2.172118e+00 ; -2.195948e+00 ; 2.798952e-01 ];
Tc_8  = [ -9.428883e+01 ; -8.333361e+01 ; 5.854663e+02 ];
omc_error_8 = [ 5.803906e-03 ; 5.243452e-03 ; 1.178493e-02 ];
Tc_error_8  = [ 3.724420e+00 ; 2.886241e+00 ; 4.257606e+00 ];

%-- Image #9:
omc_9 = [ 2.437044e+00 ; 1.225145e+00 ; 1.085010e-01 ];
Tc_9  = [ -2.260714e+02 ; -1.994242e+01 ; 5.453039e+02 ];
omc_error_9 = [ 5.610375e-03 ; 4.431379e-03 ; 9.677927e-03 ];
Tc_error_9  = [ 3.501854e+00 ; 2.803909e+00 ; 4.545162e+00 ];

%-- Image #10:
omc_10 = [ -2.081854e+00 ; -1.859495e+00 ; -2.399652e-01 ];
Tc_10  = [ -1.163747e+02 ; -4.292894e+01 ; 5.136402e+02 ];
omc_error_10 = [ 4.401995e-03 ; 5.236933e-03 ; 8.791613e-03 ];
Tc_error_10  = [ 3.268676e+00 ; 2.550230e+00 ; 3.851696e+00 ];

%-- Image #11:
omc_11 = [ -2.193037e+00 ; -2.176699e+00 ; -3.317443e-01 ];
Tc_11  = [ -1.144218e+02 ; -5.172178e+01 ; 4.810065e+02 ];
omc_error_11 = [ 4.617402e-03 ; 5.611966e-03 ; 1.051629e-02 ];
Tc_error_11  = [ 3.073308e+00 ; 2.406693e+00 ; 3.727039e+00 ];

%-- Image #12:
omc_12 = [ 2.242668e+00 ; 1.905596e+00 ; -3.198837e-01 ];
Tc_12  = [ -1.097578e+02 ; -6.633161e+01 ; 5.195695e+02 ];
omc_error_12 = [ 4.390053e-03 ; 4.874296e-03 ; 9.972951e-03 ];
Tc_error_12  = [ 3.312837e+00 ; 2.564291e+00 ; 3.776620e+00 ];

%-- Image #13:
omc_13 = [ -2.438596e+00 ; -1.689180e+00 ; -3.373725e-03 ];
Tc_13  = [ -1.636474e+02 ; -3.911868e+01 ; 6.331934e+02 ];
omc_error_13 = [ 6.715444e-03 ; 4.737136e-03 ; 1.277057e-02 ];
Tc_error_13  = [ 4.030167e+00 ; 3.156250e+00 ; 4.729271e+00 ];

