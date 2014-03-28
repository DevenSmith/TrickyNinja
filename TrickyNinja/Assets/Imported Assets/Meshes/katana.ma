//Maya ASCII 2014 scene
//Name: katana.ma
//Last modified: Thu, Mar 27, 2014 01:26:52 PM
//Codeset: 1252
requires maya "2014";
requires -nodeType "HIKSolverNode" -nodeType "HIKRetargeterNode" -nodeType "HIKCharacterNode"
		 -nodeType "HIKSkeletonGeneratorNode" -nodeType "HIKControlSetNode" -nodeType "HIKEffectorFromCharacter"
		 -nodeType "HIKSK2State" -nodeType "HIKFK2State" -nodeType "HIKState2FK" -nodeType "HIKState2SK"
		 -nodeType "HIKState2GlobalSK" -nodeType "HIKEffector2State" -nodeType "HIKState2Effector"
		 -nodeType "HIKProperty2State" -nodeType "HIKPinning2State" -nodeType "ComputeGlobal"
		 -nodeType "ComputeLocal" -nodeType "HIKCharacterStateClient" -dataType "HIKCharacter"
		 -dataType "HIKCharacterState" -dataType "HIKEffectorState" -dataType "HIKPropertySetState"
		 "mayaHIK" "1.0_HIK_2013.2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014 x64";
fileInfo "cutIdentifier" "201303010241-864206";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "education";
createNode transform -n "katana";
createNode mesh -n "katanaShape" -p "katana";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
createNode mesh -n "katanaShapeOrig" -p "katana";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 182 ".uvst[0].uvsp[0:181]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.3125 0.38749999 0.3125 0.38749999 0.68843985
		 0.375 0.68843985 0.39999998 0.3125 0.39999998 0.68843985 0.41249996 0.3125 0.41249996
		 0.68843985 0.42499995 0.3125 0.42499995 0.68843985 0.43749994 0.3125 0.43749994 0.68843985
		 0.44999993 0.3125 0.44999993 0.68843985 0.46249992 0.3125 0.46249992 0.68843985 0.4749999
		 0.3125 0.4749999 0.68843985 0.48749989 0.3125 0.48749989 0.68843985 0.49999988 0.3125
		 0.49999988 0.68843985 0.51249987 0.3125 0.51249987 0.68843985 0.52499986 0.3125 0.52499986
		 0.68843985 0.53749985 0.3125 0.53749985 0.68843985 0.54999983 0.3125 0.54999983 0.68843985
		 0.56249982 0.3125 0.56249982 0.68843985 0.57499981 0.3125 0.57499981 0.68843985 0.5874998
		 0.3125 0.5874998 0.68843985 0.59999979 0.3125 0.59999979 0.68843985 0.61249977 0.3125
		 0.61249977 0.68843985 0.62499976 0.3125 0.62499976 0.68843985 0.62640899 0.064408496
		 0.64860266 0.10796607 0.5 0.15000001 0.59184152 0.029841021 0.54828393 0.0076473355
		 0.5 -7.4505806e-008 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526
		 0.3513974 0.10796608 0.34374997 0.15625 0.3513974 0.20453392 0.37359107 0.24809146
		 0.40815854 0.28265893 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146
		 0.28265893 0.62640893 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.6486026 0.89203393
		 0.62640893 0.93559146 0.5 0.83749998 0.59184146 0.97015893 0.54828387 0.9923526 0.5
		 1 0.4517161 0.9923526 0.40815854 0.97015893 0.37359107 0.93559146 0.3513974 0.89203393
		 0.34374997 0.84375 0.3513974 0.79546607 0.37359107 0.75190854 0.40815851 0.71734107
		 0.45171607 0.69514734 0.5 0.68749994 0.54828393 0.69514734 0.59184152 0.71734101
		 0.62640899 0.75190848 0.64860266 0.79546607 0.65625 0.84375 0.375 0.3125 0.38749999
		 0.3125 0.38749999 0.68843985 0.375 0.68843985 0.39999998 0.3125 0.39999998 0.68843985
		 0.41249996 0.3125 0.41249996 0.68843985 0.42499995 0.3125 0.42499995 0.68843985 0.43749994
		 0.3125 0.43749994 0.68843985 0.44999993 0.3125 0.44999993 0.68843985 0.46249992 0.3125
		 0.46249992 0.68843985 0.4749999 0.3125 0.4749999 0.68843985 0.48749989 0.3125 0.48749989
		 0.68843985 0.49999988 0.3125 0.49999988 0.68843985 0.51249987 0.3125 0.51249987 0.68843985
		 0.52499986 0.3125 0.52499986 0.68843985 0.53749985 0.3125 0.53749985 0.68843985 0.54999983
		 0.3125 0.54999983 0.68843985 0.56249982 0.3125 0.56249982 0.68843985 0.57499981 0.3125
		 0.57499981 0.68843985 0.5874998 0.3125 0.5874998 0.68843985 0.59999979 0.3125 0.59999979
		 0.68843985 0.61249977 0.3125 0.61249977 0.68843985 0.62499976 0.3125 0.62499976 0.68843985
		 0.62640899 0.064408496 0.64860266 0.10796607 0.5 0.15000001 0.59184152 0.029841021
		 0.54828393 0.0076473355 0.5 -7.4505806e-008 0.45171607 0.0076473504 0.40815851 0.029841051
		 0.37359107 0.064408526 0.3513974 0.10796608 0.34374997 0.15625 0.3513974 0.20453392
		 0.37359107 0.24809146 0.40815854 0.28265893 0.4517161 0.3048526 0.5 0.3125 0.54828387
		 0.3048526 0.59184146 0.28265893 0.62640893 0.24809146 0.6486026 0.2045339 0.65625
		 0.15625 0.6486026 0.89203393 0.62640893 0.93559146 0.5 0.83749998 0.59184146 0.97015893
		 0.54828387 0.9923526 0.5 1 0.4517161 0.9923526 0.40815854 0.97015893 0.37359107 0.93559146
		 0.3513974 0.89203393 0.34374997 0.84375 0.3513974 0.79546607 0.37359107 0.75190854
		 0.40815851 0.71734107 0.45171607 0.69514734 0.5 0.68749994 0.54828393 0.69514734
		 0.59184152 0.71734101 0.62640899 0.75190848 0.64860266 0.79546607 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 92 ".vt[0:91]"  -0.84094357 1.28884208 0.89627099 -0.84094357 1.30313051 0.89627099
		 -0.84094357 1.28884196 0.08225923 -0.84094357 1.30313039 0.08225923 -0.79028374 1.28884196 0.082259238
		 -0.79028374 1.30313039 0.082259238 -0.79028374 1.28884196 0.96870148 -0.79028374 1.30313039 0.96870148
		 -0.798581 1.34840727 0.092759594 -0.78321564 1.3405782 0.092759594 -0.77102154 1.32838416 0.092759512
		 -0.76319247 1.31301868 0.092759594 -0.76049477 1.29598606 0.092759594 -0.76319253 1.27895343 0.092759512
		 -0.77102154 1.26358807 0.092759594 -0.78321558 1.25139403 0.092759594 -0.798581 1.24356496 0.092759594
		 -0.81561369 1.24086738 0.092759594 -0.83264631 1.24356496 0.092759594 -0.84801167 1.25139403 0.092759594
		 -0.86020571 1.26358807 0.092759594 -0.86803478 1.27895355 0.092759594 -0.87073249 1.29598606 0.092759594
		 -0.86803472 1.31301868 0.092759594 -0.86020571 1.32838404 0.092759594 -0.84801167 1.34057808 0.092759594
		 -0.83264631 1.34840727 0.092759594 -0.81561369 1.35110497 0.092759594 -0.798581 1.34840751 0.077681221
		 -0.78321564 1.34057844 0.077681221 -0.77102154 1.3283844 0.077681221 -0.76319247 1.31301892 0.077681303
		 -0.76049477 1.29598641 0.077681303 -0.76319253 1.27895355 0.077681221 -0.77102154 1.26358819 0.077681214
		 -0.78321558 1.25139415 0.077681303 -0.798581 1.24356508 0.077681303 -0.81561369 1.24086738 0.077681221
		 -0.83264631 1.24356508 0.077681221 -0.84801167 1.25139415 0.077681221 -0.86020571 1.26358819 0.077681221
		 -0.86803478 1.27895355 0.077681229 -0.87073249 1.29598629 0.077681221 -0.86803472 1.31301892 0.077681229
		 -0.86020571 1.3283844 0.077681221 -0.84801167 1.34057844 0.077681221 -0.83264631 1.34840751 0.077681221
		 -0.81561369 1.35110521 0.077681221 -0.81561363 1.29598606 0.092759594 -0.81561363 1.29598641 0.077681221
		 -0.80858874 1.31760657 0.086153135 -0.80225152 1.31437755 0.086153135 -0.79722226 1.30934834 0.086153135
		 -0.79399329 1.30301106 0.086153135 -0.79288065 1.29598618 0.086153142 -0.79399323 1.28896129 0.086153142
		 -0.79722226 1.28262413 0.086153142 -0.80225158 1.2775948 0.086153135 -0.8085888 1.27436578 0.086153135
		 -0.81561369 1.2732532 0.086153135 -0.82263857 1.27436578 0.086153135 -0.82897586 1.2775948 0.086153135
		 -0.83400506 1.28262413 0.086153135 -0.83723402 1.28896129 0.086153135 -0.83834666 1.29598618 0.086153135
		 -0.83723402 1.30301106 0.086153135 -0.83400506 1.30934834 0.086153135 -0.8289758 1.31437755 0.086153135
		 -0.82263851 1.31760657 0.086153135 -0.81561363 1.31871915 0.086153135 -0.80858874 1.31760657 -0.11663087
		 -0.80225152 1.31437767 -0.11663087 -0.79722226 1.30934834 -0.11663087 -0.79399329 1.30301106 -0.11663087
		 -0.79288065 1.29598618 -0.11663087 -0.79399323 1.28896129 -0.11663087 -0.79722226 1.28262413 -0.11663087
		 -0.80225158 1.2775948 -0.11663087 -0.8085888 1.2743659 -0.11663083 -0.81561369 1.2732532 -0.11663087
		 -0.82263857 1.2743659 -0.11663083 -0.8289758 1.2775948 -0.11663087 -0.83400506 1.28262413 -0.11663087
		 -0.83723402 1.28896129 -0.11663086 -0.83834666 1.29598618 -0.11663087 -0.83723402 1.30301106 -0.11663086
		 -0.83400506 1.30934834 -0.11663087 -0.8289758 1.31437755 -0.11663087 -0.82263851 1.31760657 -0.11663086
		 -0.81561363 1.31871927 -0.11663087 -0.81561363 1.29598618 0.086153135 -0.81561363 1.29598618 -0.11663087;
	setAttr -s 212 ".ed";
	setAttr ".ed[0:165]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0 3 5 0 4 6 0
		 5 7 0 6 0 0 7 1 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0
		 17 18 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 8 0
		 28 29 0 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0
		 39 40 0 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 28 0 8 28 1 9 29 1
		 10 30 1 11 31 1 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1
		 21 41 1 22 42 1 23 43 1 24 44 1 25 45 1 26 46 1 27 47 1 48 8 1 48 9 1 48 10 1 48 11 1
		 48 12 1 48 13 1 48 14 1 48 15 1 48 16 1 48 17 1 48 18 1 48 19 1 48 20 1 48 21 1 48 22 1
		 48 23 1 48 24 1 48 25 1 48 26 1 48 27 1 28 49 1 29 49 1 30 49 1 31 49 1 32 49 1 33 49 1
		 34 49 1 35 49 1 36 49 1 37 49 1 38 49 1 39 49 1 40 49 1 41 49 1 42 49 1 43 49 1 44 49 1
		 45 49 1 46 49 1 47 49 1 50 51 0 51 52 0 52 53 0 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0
		 58 59 0 59 60 0 60 61 0 61 62 0 62 63 0 63 64 0 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0
		 69 50 0 70 71 0 71 72 0 72 73 0 73 74 0 74 75 0 75 76 0 76 77 0 77 78 0 78 79 0 79 80 0
		 80 81 0 81 82 0 82 83 0 83 84 0 84 85 0 85 86 0 86 87 0 87 88 0 88 89 0 89 70 0 50 70 1
		 51 71 1 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1 57 77 1 58 78 1 59 79 1 60 80 1 61 81 1
		 62 82 1 63 83 1;
	setAttr ".ed[166:211]" 64 84 1 65 85 1 66 86 1 67 87 1 68 88 1 69 89 1 90 50 1
		 90 51 1 90 52 1 90 53 1 90 54 1 90 55 1 90 56 1 90 57 1 90 58 1 90 59 1 90 60 1 90 61 1
		 90 62 1 90 63 1 90 64 1 90 65 1 90 66 1 90 67 1 90 68 1 90 69 1 70 91 1 71 91 1 72 91 1
		 73 91 1 74 91 1 75 91 1 76 91 1 77 91 1 78 91 1 79 91 1 80 91 1 81 91 1 82 91 1 83 91 1
		 84 91 1 85 91 1 86 91 1 87 91 1 88 91 1 89 91 1;
	setAttr -s 126 -ch 424 ".fc[0:125]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 53 -33 -53
		mu 0 4 14 15 16 17
		f 4 13 54 -34 -54
		mu 0 4 15 18 19 16
		f 4 14 55 -35 -55
		mu 0 4 18 20 21 19
		f 4 15 56 -36 -56
		mu 0 4 20 22 23 21
		f 4 16 57 -37 -57
		mu 0 4 22 24 25 23
		f 4 17 58 -38 -58
		mu 0 4 24 26 27 25
		f 4 18 59 -39 -59
		mu 0 4 26 28 29 27
		f 4 19 60 -40 -60
		mu 0 4 28 30 31 29
		f 4 20 61 -41 -61
		mu 0 4 30 32 33 31
		f 4 21 62 -42 -62
		mu 0 4 32 34 35 33
		f 4 22 63 -43 -63
		mu 0 4 34 36 37 35
		f 4 23 64 -44 -64
		mu 0 4 36 38 39 37
		f 4 24 65 -45 -65
		mu 0 4 38 40 41 39
		f 4 25 66 -46 -66
		mu 0 4 40 42 43 41
		f 4 26 67 -47 -67
		mu 0 4 42 44 45 43
		f 4 27 68 -48 -68
		mu 0 4 44 46 47 45
		f 4 28 69 -49 -69
		mu 0 4 46 48 49 47
		f 4 29 70 -50 -70
		mu 0 4 48 50 51 49
		f 4 30 71 -51 -71
		mu 0 4 50 52 53 51
		f 4 31 52 -52 -72
		mu 0 4 52 54 55 53
		f 3 -13 -73 73
		mu 0 3 56 57 58
		f 3 -14 -74 74
		mu 0 3 59 56 58
		f 3 -15 -75 75
		mu 0 3 60 59 58
		f 3 -16 -76 76
		mu 0 3 61 60 58
		f 3 -17 -77 77
		mu 0 3 62 61 58
		f 3 -18 -78 78
		mu 0 3 63 62 58
		f 3 -19 -79 79
		mu 0 3 64 63 58
		f 3 -20 -80 80
		mu 0 3 65 64 58
		f 3 -21 -81 81
		mu 0 3 66 65 58
		f 3 -22 -82 82
		mu 0 3 67 66 58
		f 3 -23 -83 83
		mu 0 3 68 67 58
		f 3 -24 -84 84
		mu 0 3 69 68 58
		f 3 -25 -85 85
		mu 0 3 70 69 58
		f 3 -26 -86 86
		mu 0 3 71 70 58
		f 3 -27 -87 87
		mu 0 3 72 71 58
		f 3 -28 -88 88
		mu 0 3 73 72 58
		f 3 -29 -89 89
		mu 0 3 74 73 58
		f 3 -30 -90 90
		mu 0 3 75 74 58
		f 3 -31 -91 91
		mu 0 3 76 75 58
		f 3 -32 -92 72
		mu 0 3 57 76 58
		f 3 32 93 -93
		mu 0 3 77 78 79
		f 3 33 94 -94
		mu 0 3 78 80 79
		f 3 34 95 -95
		mu 0 3 80 81 79
		f 3 35 96 -96
		mu 0 3 81 82 79
		f 3 36 97 -97
		mu 0 3 82 83 79
		f 3 37 98 -98
		mu 0 3 83 84 79
		f 3 38 99 -99
		mu 0 3 84 85 79
		f 3 39 100 -100
		mu 0 3 85 86 79
		f 3 40 101 -101
		mu 0 3 86 87 79
		f 3 41 102 -102
		mu 0 3 87 88 79
		f 3 42 103 -103
		mu 0 3 88 89 79
		f 3 43 104 -104
		mu 0 3 89 90 79
		f 3 44 105 -105
		mu 0 3 90 91 79
		f 3 45 106 -106
		mu 0 3 91 92 79
		f 3 46 107 -107
		mu 0 3 92 93 79
		f 3 47 108 -108
		mu 0 3 93 94 79
		f 3 48 109 -109
		mu 0 3 94 95 79
		f 3 49 110 -110
		mu 0 3 95 96 79
		f 3 50 111 -111
		mu 0 3 96 97 79
		f 3 51 92 -112
		mu 0 3 97 77 79
		f 4 112 153 -133 -153
		mu 0 4 98 99 100 101
		f 4 113 154 -134 -154
		mu 0 4 99 102 103 100
		f 4 114 155 -135 -155
		mu 0 4 102 104 105 103
		f 4 115 156 -136 -156
		mu 0 4 104 106 107 105
		f 4 116 157 -137 -157
		mu 0 4 106 108 109 107
		f 4 117 158 -138 -158
		mu 0 4 108 110 111 109
		f 4 118 159 -139 -159
		mu 0 4 110 112 113 111
		f 4 119 160 -140 -160
		mu 0 4 112 114 115 113
		f 4 120 161 -141 -161
		mu 0 4 114 116 117 115
		f 4 121 162 -142 -162
		mu 0 4 116 118 119 117
		f 4 122 163 -143 -163
		mu 0 4 118 120 121 119
		f 4 123 164 -144 -164
		mu 0 4 120 122 123 121
		f 4 124 165 -145 -165
		mu 0 4 122 124 125 123
		f 4 125 166 -146 -166
		mu 0 4 124 126 127 125
		f 4 126 167 -147 -167
		mu 0 4 126 128 129 127
		f 4 127 168 -148 -168
		mu 0 4 128 130 131 129
		f 4 128 169 -149 -169
		mu 0 4 130 132 133 131
		f 4 129 170 -150 -170
		mu 0 4 132 134 135 133
		f 4 130 171 -151 -171
		mu 0 4 134 136 137 135
		f 4 131 152 -152 -172
		mu 0 4 136 138 139 137
		f 3 -113 -173 173
		mu 0 3 140 141 142
		f 3 -114 -174 174
		mu 0 3 143 140 142
		f 3 -115 -175 175
		mu 0 3 144 143 142
		f 3 -116 -176 176
		mu 0 3 145 144 142
		f 3 -117 -177 177
		mu 0 3 146 145 142
		f 3 -118 -178 178
		mu 0 3 147 146 142
		f 3 -119 -179 179
		mu 0 3 148 147 142
		f 3 -120 -180 180
		mu 0 3 149 148 142
		f 3 -121 -181 181
		mu 0 3 150 149 142
		f 3 -122 -182 182
		mu 0 3 151 150 142
		f 3 -123 -183 183
		mu 0 3 152 151 142
		f 3 -124 -184 184
		mu 0 3 153 152 142
		f 3 -125 -185 185
		mu 0 3 154 153 142
		f 3 -126 -186 186
		mu 0 3 155 154 142
		f 3 -127 -187 187
		mu 0 3 156 155 142
		f 3 -128 -188 188
		mu 0 3 157 156 142
		f 3 -129 -189 189
		mu 0 3 158 157 142
		f 3 -130 -190 190
		mu 0 3 159 158 142
		f 3 -131 -191 191
		mu 0 3 160 159 142
		f 3 -132 -192 172
		mu 0 3 141 160 142
		f 3 132 193 -193
		mu 0 3 161 162 163
		f 3 133 194 -194
		mu 0 3 162 164 163
		f 3 134 195 -195
		mu 0 3 164 165 163
		f 3 135 196 -196
		mu 0 3 165 166 163
		f 3 136 197 -197
		mu 0 3 166 167 163
		f 3 137 198 -198
		mu 0 3 167 168 163
		f 3 138 199 -199
		mu 0 3 168 169 163
		f 3 139 200 -200
		mu 0 3 169 170 163
		f 3 140 201 -201
		mu 0 3 170 171 163
		f 3 141 202 -202
		mu 0 3 171 172 163
		f 3 142 203 -203
		mu 0 3 172 173 163
		f 3 143 204 -204
		mu 0 3 173 174 163
		f 3 144 205 -205
		mu 0 3 174 175 163
		f 3 145 206 -206
		mu 0 3 175 176 163
		f 3 146 207 -207
		mu 0 3 176 177 163
		f 3 147 208 -208
		mu 0 3 177 178 163
		f 3 148 209 -209
		mu 0 3 178 179 163
		f 3 149 210 -210
		mu 0 3 179 180 163
		f 3 150 211 -211
		mu 0 3 180 181 163
		f 3 151 192 -212
		mu 0 3 181 161 163;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vcs" 2;
createNode groupId -n "AnimationRig_V3_enemy:groupId27";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode objectSet -n "tweakSet2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode tweak -n "tweak2";
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupParts -n "AnimationRig_V3_enemy:groupParts13";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:125]";
createNode transformGeometry -n "transformGeometry1";
	setAttr ".txf" -type "matrix" 1 -1.2246467991473532e-016 -1.2246467991473532e-016 0
		 -1.2246467991473532e-016 -1 0 0 -1.2246467991473532e-016 1.4997597826618576e-032 -1 0
		 0.81561364840174511 1.2959862106126026 -0.013001987471601518 1;
select -ne :time1;
	setAttr ".o" 50;
	setAttr ".unw" 50;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr -s 6 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 3 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "AnimationRig_V3_enemy:groupId27.id" "katanaShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "katanaShape.iog.og[0].gco";
connectAttr "groupId5.id" "katanaShape.iog.og[8].gid";
connectAttr "tweakSet2.mwc" "katanaShape.iog.og[8].gco";
connectAttr "transformGeometry1.og" "katanaShape.i";
connectAttr "tweak2.vl[0].vt[0]" "katanaShape.twl";
connectAttr "groupId5.msg" "tweakSet2.gn" -na;
connectAttr "katanaShape.iog.og[8]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "groupParts5.og" "tweak2.ip[0].ig";
connectAttr "groupId5.id" "tweak2.ip[0].gi";
connectAttr "AnimationRig_V3_enemy:groupParts13.og" "groupParts5.ig";
connectAttr "groupId5.id" "groupParts5.gi";
connectAttr "katanaShapeOrig.w" "AnimationRig_V3_enemy:groupParts13.ig";
connectAttr "AnimationRig_V3_enemy:groupId27.id" "AnimationRig_V3_enemy:groupParts13.gi"
		;
connectAttr "tweak2.og[0]" "transformGeometry1.ig";
connectAttr "katanaShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "AnimationRig_V3_enemy:groupId27.msg" ":initialShadingGroup.gn" -na;
// End of katana.ma
