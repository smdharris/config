//Maya ASCII 6.0 scene
//Name: poseDefSampleCLEAN.ma
//Last modified: Fri, Oct 01, 2004 08:21:37 AM
requires maya "6.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya Complete 6.0";
fileInfo "version" "6.0.1";
fileInfo "cutIdentifier" "200407132209-624907";
fileInfo "osv" "Microsoft Windows 2000  (Build 2195)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.2710942202190068 1.3160883511290011 8.3012553262337505 ;
	setAttr ".r" -type "double3" -1.5383527296092714 -1.7999999999993304 3.1075438164009531e-018 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".ncp" 0.001;
	setAttr ".coi" 8.7216703745686264;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".coi" 100;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.8304267784815826 0.72503813412730744 100.01315379449343 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".coi" 100;
	setAttr ".ow" 6.1689298127826921;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".coi" 100;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode joint -n "joint1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 
		-max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 0 0 -89.999999999999986 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 -1 0 0 1 2.2204460492503131e-016 0 0
		 0 0 1 0 0 0 0 1;
createNode joint -n "joint2" -p "joint1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 
		-max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 -1 0 0 1 2.2204460492503131e-016 0 0
		 0 0 1 0 2 0 0 1;
createNode joint -n "joint3" -p "joint2";
	setAttr ".t" -type "double3" 4.4408920985006271e-016 2 4.4408920985006252e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "pCylinder1";
	setAttr ".t" -type "double3" 2.0989255124980351 -4.6194512820877548e-016 
		0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
createNode mesh -n "pCylinderShape1Orig" -p "pCylinder1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 165 ".uvst[0].uvsp[0:164]" -type "float2" 0 0.15915494 
		0.050000001 0.15915494 0.1 0.15915494 0.15000001 0.15915494 0.2 0.15915494 
		0.25 0.15915494 0.30000001 0.15915494 0.35000002 0.15915494 0.40000004 0.15915494 
		0.45000005 0.15915494 0.50000006 0.15915494 0.55000007 0.15915494 0.60000008 
		0.15915494 0.6500001 0.15915494 0.70000011 0.15915494 0.75000012 0.15915494 
		0.80000013 0.15915494 0.85000014 0.15915494 0.90000015 0.15915494 0.95000017 
		0.15915494 1.0000001 0.15915494 0 0.27056339 0.050000001 0.27056339 0.1 0.27056339 
		0.15000001 0.27056339 0.2 0.27056339 0.25 0.27056339 0.30000001 0.27056339 
		0.35000002 0.27056339 0.40000004 0.27056339 0.45000005 0.27056339 0.50000006 
		0.27056339 0.55000007 0.27056339 0.60000008 0.27056339 0.6500001 0.27056339 
		0.70000011 0.27056339 0.75000012 0.27056339 0.80000013 0.27056339 0.85000014 
		0.27056339 0.90000015 0.27056339 0.95000017 0.27056339 1.0000001 0.27056339 
		0 0.38197184 0.050000001 0.38197184 0.1 0.38197184 0.15000001 0.38197184 
		0.2 0.38197184 0.25 0.38197184 0.30000001 0.38197184 0.35000002 0.38197184 
		0.40000004 0.38197184 0.45000005 0.38197184 0.50000006 0.38197184 0.55000007 
		0.38197184 0.60000008 0.38197184 0.6500001 0.38197184 0.70000011 0.38197184 
		0.75000012 0.38197184 0.80000013 0.38197184 0.85000014 0.38197184 0.90000015 
		0.38197184 0.95000017 0.38197184 1.0000001 0.38197184 0 0.49338028 0.050000001 
		0.49338028 0.1 0.49338028 0.15000001 0.49338028 0.2 0.49338028 0.25 0.49338028 
		0.30000001 0.49338028 0.35000002 0.49338028 0.40000004 0.49338028 0.45000005 
		0.49338028 0.50000006 0.49338028 0.55000007 0.49338028 0.60000008 0.49338028 
		0.6500001 0.49338028 0.70000011 0.49338028 0.75000012 0.49338028 0.80000013 
		0.49338028 0.85000014 0.49338028 0.90000015 0.49338028 0.95000017 0.49338028 
		1.0000001 0.49338028 0 0.60478872 0.050000001 0.60478872 0.1 0.60478872 0.15000001 
		0.60478872 0.2 0.60478872 0.25 0.60478872 0.30000001 0.60478872 0.35000002 
		0.60478872 0.40000004 0.60478872 0.45000005 0.60478872 0.50000006 0.60478872 
		0.55000007 0.60478872 0.60000008 0.60478872 0.6500001 0.60478872 0.70000011 
		0.60478872 0.75000012 0.60478872 0.80000013 0.60478872 0.85000014 0.60478872 
		0.90000015 0.60478872 0.95000017 0.60478872 1.0000001 0.60478872 0 0.71619719 
		0.050000001 0.71619719 0.1 0.71619719 0.15000001 0.71619719 0.2 0.71619719 
		0.25 0.71619719 0.30000001 0.71619719 0.35000002 0.71619719 0.40000004 0.71619719 
		0.45000005 0.71619719 0.50000006 0.71619719 0.55000007 0.71619719 0.60000008 
		0.71619719 0.6500001 0.71619719 0.70000011 0.71619719 0.75000012 0.71619719 
		0.80000013 0.71619719 0.85000014 0.71619719 0.90000015 0.71619719 0.95000017 
		0.71619719 1.0000001 0.71619719 0 0.82760566 0.050000001 0.82760566 0.1 0.82760566 
		0.15000001 0.82760566 0.2 0.82760566 0.25 0.82760566 0.30000001 0.82760566 
		0.35000002 0.82760566 0.40000004 0.82760566 0.45000005 0.82760566 0.50000006 
		0.82760566 0.55000007 0.82760566 0.60000008 0.82760566 0.6500001 0.82760566 
		0.70000011 0.82760566 0.75000012 0.82760566 0.80000013 0.82760566 0.85000014 
		0.82760566 0.90000015 0.82760566 0.95000017 0.82760566 1.0000001 0.82760566 
		0.050000001 0.15915494 0.1 0.15915494 0.15000001 0.15915494 0.2 0.15915494 
		0.25 0.15915494 0.30000001 0.15915494 0.35000002 0.15915494 0.40000004 0.15915494 
		0.45000005 0.15915494 0.55000007 0.15915494 0.60000008 0.15915494 0.6500001 
		0.15915494 0.70000011 0.15915494 0.75000012 0.15915494 0.80000013 0.15915494 
		0.85000014 0.15915494 0.90000015 0.15915494 0.95000017 0.15915494;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 140 ".vt[0:139]"  0.95105696 -2.0999999 -0.30901715 
		0.80901736 -2.0999999 -0.58778554 0.58778548 -2.0999999 -0.80901736 0.30901712 
		-2.0999999 -0.9510569 7.0631625e-009 -2.0999999 -1.0000004 -0.30901709 -2.0999999 
		-0.95105684 -0.58778542 -2.0999999 -0.80901724 -0.80901724 -2.0999999 -0.58778542 
		-0.95105678 -2.0999999 -0.30901709 -1.0000002 -2.0999999 -1.6988007e-008 
		-0.95105678 -2.0999999 0.30901706 -0.80901718 -2.0999999 0.58778536 -0.58778536 
		-2.0999999 0.80901712 -0.30901703 -2.0999999 0.95105666 9.9248449e-009 -2.0999999 
		1.0000001 0.30901703 -2.0999999 0.9510566 0.5877853 -2.0999999 0.80901706 
		0.80901706 -2.0999999 0.5877853 0.95105654 -2.0999999 0.309017 1 -2.0999999 
		0 0.95105696 -1.3999999 -0.30901715 0.80901736 -1.3999999 -0.58778554 0.58778548 
		-1.3999999 -0.80901736 0.30901712 -1.3999999 -0.9510569 7.0631625e-009 -1.3999999 
		-1.0000004 -0.30901709 -1.3999999 -0.95105684 -0.58778542 -1.3999999 -0.80901724 
		-0.80901724 -1.3999999 -0.58778542 -0.95105678 -1.3999999 -0.30901709 -1.0000002 
		-1.3999999 -1.6988007e-008 -0.95105678 -1.3999999 0.30901706 -0.80901718 
		-1.3999999 0.58778536 -0.58778536 -1.3999999 0.80901712 -0.30901703 -1.3999999 
		0.95105666 9.9248449e-009 -1.3999999 1.0000001 0.30901703 -1.3999999 0.9510566 
		0.5877853 -1.3999999 0.80901706 0.80901706 -1.3999999 0.5877853 0.95105654 
		-1.3999999 0.309017 1 -1.3999999 0 0.95105696 -0.69999987 -0.30901715 0.80901736 
		-0.69999987 -0.58778554 0.58778548 -0.69999987 -0.80901736 0.30901712 -0.69999987 
		-0.9510569 7.0631625e-009 -0.69999987 -1.0000004 -0.30901709 -0.69999987 
		-0.95105684 -0.58778542 -0.69999987 -0.80901724 -0.80901724 -0.69999987 -0.58778542 
		-0.95105678 -0.69999987 -0.30901709 -1.0000002 -0.69999987 -1.6988007e-008 
		-0.95105678 -0.69999987 0.30901706 -0.80901718 -0.69999987 0.58778536 -0.58778536 
		-0.69999987 0.80901712 -0.30901703 -0.69999987 0.95105666 9.9248449e-009 
		-0.69999987 1.0000001 0.30901703 -0.69999987 0.9510566 0.5877853 -0.69999987 
		0.80901706 0.80901706 -0.69999987 0.5877853 0.95105654 -0.69999987 0.309017 
		1 -0.69999987 0 0.95105696 1.1920929e-007 -0.30901715 0.80901736 1.1920929e-007 
		-0.58778554 0.58778548 1.1920929e-007 -0.80901736 0.30901712 1.1920929e-007 
		-0.9510569 7.0631625e-009 1.1920929e-007 -1.0000004 -0.30901709 1.1920929e-007 
		-0.95105684 -0.58778542 1.1920929e-007 -0.80901724 -0.80901724 1.1920929e-007 
		-0.58778542 -0.95105678 1.1920929e-007 -0.30901709 -1.0000002 1.1920929e-007 
		-1.6988007e-008 -0.95105678 1.1920929e-007 0.30901706 -0.80901718 1.1920929e-007 
		0.58778536 -0.58778536 1.1920929e-007 0.80901712 -0.30901703 1.1920929e-007 
		0.95105666 9.9248449e-009 1.1920929e-007 1.0000001 0.30901703 1.1920929e-007 
		0.9510566 0.5877853 1.1920929e-007 0.80901706 0.80901706 1.1920929e-007 0.5877853 
		0.95105654 1.1920929e-007 0.309017 1 1.1920929e-007 0 0.95105696 0.70000011 
		-0.30901715 0.80901736 0.70000011 -0.58778554 0.58778548 0.70000011 -0.80901736 
		0.30901712 0.70000011 -0.9510569 7.0631625e-009 0.70000011 -1.0000004 -0.30901709 
		0.70000011 -0.95105684 -0.58778542 0.70000011 -0.80901724 -0.80901724 0.70000011 
		-0.58778542 -0.95105678 0.70000011 -0.30901709 -1.0000002 0.70000011 -1.6988007e-008 
		-0.95105678 0.70000011 0.30901706 -0.80901718 0.70000011 0.58778536 -0.58778536 
		0.70000011 0.80901712 -0.30901703 0.70000011 0.95105666 9.9248449e-009 0.70000011 
		1.0000001 0.30901703 0.70000011 0.9510566 0.5877853 0.70000011 0.80901706 
		0.80901706 0.70000011 0.5877853 0.95105654 0.70000011 0.309017 1 0.70000011 
		0 0.95105696 1.4000001 -0.30901715 0.80901736 1.4000001 -0.58778554 0.58778548 
		1.4000001 -0.80901736 0.30901712 1.4000001 -0.9510569 7.0631625e-009 1.4000001 
		-1.0000004 -0.30901709 1.4000001 -0.95105684 -0.58778542 1.4000001 -0.80901724 
		-0.80901724 1.4000001 -0.58778542 -0.95105678 1.4000001 -0.30901709 -1.0000002 
		1.4000001 -1.6988007e-008 -0.95105678 1.4000001 0.30901706 -0.80901718 1.4000001 
		0.58778536 -0.58778536 1.4000001 0.80901712 -0.30901703 1.4000001 0.95105666 
		9.9248449e-009 1.4000001 1.0000001 0.30901703 1.4000001 0.9510566 0.5877853 
		1.4000001 0.80901706 0.80901706 1.4000001 0.5877853 0.95105654 1.4000001 
		0.309017 1 1.4000001 0 0.95105696 2.0999999 -0.30901715 0.80901736 2.0999999 
		-0.58778554 0.58778548 2.0999999 -0.80901736 0.30901712 2.0999999 -0.9510569 
		7.0631625e-009 2.0999999 -1.0000004 -0.30901709 2.0999999 -0.95105684 -0.58778542 
		2.0999999 -0.80901724 -0.80901724 2.0999999 -0.58778542 -0.95105678 2.0999999 
		-0.30901709 -1.0000002 2.0999999 -1.6988007e-008 -0.95105678 2.0999999 0.30901706 
		-0.80901718 2.0999999 0.58778536 -0.58778536 2.0999999 0.80901712 -0.30901703 
		2.0999999 0.95105666 9.9248449e-009 2.0999999 1.0000001 0.30901703 2.0999999 
		0.9510566 0.5877853 2.0999999 0.80901706 0.80901706 2.0999999 0.5877853 0.95105654 
		2.0999999 0.309017 1 2.0999999 0;
	setAttr -s 260 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 
		2 3 0 3 4 0 4 5 0 5 6 
		0 6 7 0 7 8 0 8 9 0 9 
		10 0 10 11 0 11 12 0 12 13 0 
		13 14 0 14 15 0 15 16 0 16 17 
		0 17 18 0 18 19 0 19 0 0 20 
		21 1 21 22 1 22 23 1 23 24 1 
		24 25 1 25 26 1 26 27 1 27 28 
		1 28 29 1 29 30 1 30 31 1 31 
		32 1 32 33 1 33 34 1 34 35 1 
		35 36 1 36 37 1 37 38 1 38 39 
		1 39 20 1 40 41 1 41 42 1 42 
		43 1 43 44 1 44 45 1 45 46 1 
		46 47 1 47 48 1 48 49 1 49 50 
		1 50 51 1 51 52 1 52 53 1 53 
		54 1 54 55 1 55 56 1 56 57 1 
		57 58 1 58 59 1 59 40 1 60 61 
		1 61 62 1 62 63 1 63 64 1 64 
		65 1 65 66 1 66 67 1 67 68 1 
		68 69 1 69 70 1 70 71 1 71 72 
		1 72 73 1 73 74 1 74 75 1 75 
		76 1 76 77 1 77 78 1 78 79 1 
		79 60 1 80 81 1 81 82 1 82 83 
		1 83 84 1 84 85 1 85 86 1 86 
		87 1 87 88 1 88 89 1 89 90 1 
		90 91 1 91 92 1 92 93 1 93 94 
		1 94 95 1 95 96 1 96 97 1 97 
		98 1 98 99 1 99 80 1 100 101 1 
		101 102 1 102 103 1 103 104 1 104 105 
		1 105 106 1 106 107 1 107 108 1 108 
		109 1 109 110 1 110 111 1 111 112 1 
		112 113 1 113 114 1 114 115 1 115 116 
		1 116 117 1 117 118 1 118 119 1 119 
		100 1 120 121 0 121 122 0 122 123 0 
		123 124 0 124 125 0 125 126 0 126 127 
		0 127 128 0 128 129 0 129 130 0 130 
		131 0 131 132 0 132 133 0 133 134 0 
		134 135 0 135 136 0 136 137 0 137 138 
		0 138 139 0 139 120 0 0 20 1 1 
		21 1 2 22 1 3 23 1 4 24 1 
		5 25 1 6 26 1 7 27 1 8 28 
		1 9 29 1 10 30 1 11 31 1 12 
		32 1 13 33 1 14 34 1 15 35 1 
		16 36 1 17 37 1 18 38 1 19 39 
		1 20 40 1 21 41 1 22 42 1 23 
		43 1 24 44 1 25 45 1;
	setAttr ".ed[166:259]" 26 46 1 27 47 1 28 
		48 1 29 49 1 30 50 1 31 51 1 
		32 52 1 33 53 1 34 54 1 35 55 
		1 36 56 1 37 57 1 38 58 1 39 
		59 1 40 60 1 41 61 1 42 62 1 
		43 63 1 44 64 1 45 65 1 46 66 
		1 47 67 1 48 68 1 49 69 1 50 
		70 1 51 71 1 52 72 1 53 73 1 
		54 74 1 55 75 1 56 76 1 57 77 
		1 58 78 1 59 79 1 60 80 1 61 
		81 1 62 82 1 63 83 1 64 84 1 
		65 85 1 66 86 1 67 87 1 68 88 
		1 69 89 1 70 90 1 71 91 1 72 
		92 1 73 93 1 74 94 1 75 95 1 
		76 96 1 77 97 1 78 98 1 79 99 
		1 80 100 1 81 101 1 82 102 1 83 
		103 1 84 104 1 85 105 1 86 106 1 
		87 107 1 88 108 1 89 109 1 90 110 
		1 91 111 1 92 112 1 93 113 1 94 
		114 1 95 115 1 96 116 1 97 117 1 
		98 118 1 99 119 1 100 120 1 101 121 
		1 102 122 1 103 123 1 104 124 1 105 
		125 1 106 126 1 107 127 1 108 128 1 
		109 129 1 110 130 1 111 131 1 112 132 
		1 113 133 1 114 134 1 115 135 1 116 
		136 1 117 137 1 118 138 1 119 139 1;
	setAttr -s 122 ".fc[0:121]" -type "polyFaces" 
		f 4 0 141 -21 -141 
		mu 0 4 0 1 22 21 
		f 4 1 142 -22 -142 
		mu 0 4 1 2 23 22 
		f 4 2 143 -23 -143 
		mu 0 4 2 3 24 23 
		f 4 3 144 -24 -144 
		mu 0 4 3 4 25 24 
		f 4 4 145 -25 -145 
		mu 0 4 4 5 26 25 
		f 4 5 146 -26 -146 
		mu 0 4 5 6 27 26 
		f 4 6 147 -27 -147 
		mu 0 4 6 7 28 27 
		f 4 7 148 -28 -148 
		mu 0 4 7 8 29 28 
		f 4 8 149 -29 -149 
		mu 0 4 8 9 30 29 
		f 4 9 150 -30 -150 
		mu 0 4 9 10 31 30 
		f 4 10 151 -31 -151 
		mu 0 4 10 11 32 31 
		f 4 11 152 -32 -152 
		mu 0 4 11 12 33 32 
		f 4 12 153 -33 -153 
		mu 0 4 12 13 34 33 
		f 4 13 154 -34 -154 
		mu 0 4 13 14 35 34 
		f 4 14 155 -35 -155 
		mu 0 4 14 15 36 35 
		f 4 15 156 -36 -156 
		mu 0 4 15 16 37 36 
		f 4 16 157 -37 -157 
		mu 0 4 16 17 38 37 
		f 4 17 158 -38 -158 
		mu 0 4 17 18 39 38 
		f 4 18 159 -39 -159 
		mu 0 4 18 19 40 39 
		f 4 19 140 -40 -160 
		mu 0 4 19 20 41 40 
		f 4 20 161 -41 -161 
		mu 0 4 21 22 43 42 
		f 4 21 162 -42 -162 
		mu 0 4 22 23 44 43 
		f 4 22 163 -43 -163 
		mu 0 4 23 24 45 44 
		f 4 23 164 -44 -164 
		mu 0 4 24 25 46 45 
		f 4 24 165 -45 -165 
		mu 0 4 25 26 47 46 
		f 4 25 166 -46 -166 
		mu 0 4 26 27 48 47 
		f 4 26 167 -47 -167 
		mu 0 4 27 28 49 48 
		f 4 27 168 -48 -168 
		mu 0 4 28 29 50 49 
		f 4 28 169 -49 -169 
		mu 0 4 29 30 51 50 
		f 4 29 170 -50 -170 
		mu 0 4 30 31 52 51 
		f 4 30 171 -51 -171 
		mu 0 4 31 32 53 52 
		f 4 31 172 -52 -172 
		mu 0 4 32 33 54 53 
		f 4 32 173 -53 -173 
		mu 0 4 33 34 55 54 
		f 4 33 174 -54 -174 
		mu 0 4 34 35 56 55 
		f 4 34 175 -55 -175 
		mu 0 4 35 36 57 56 
		f 4 35 176 -56 -176 
		mu 0 4 36 37 58 57 
		f 4 36 177 -57 -177 
		mu 0 4 37 38 59 58 
		f 4 37 178 -58 -178 
		mu 0 4 38 39 60 59 
		f 4 38 179 -59 -179 
		mu 0 4 39 40 61 60 
		f 4 39 160 -60 -180 
		mu 0 4 40 41 62 61 
		f 4 40 181 -61 -181 
		mu 0 4 42 43 64 63 
		f 4 41 182 -62 -182 
		mu 0 4 43 44 65 64 
		f 4 42 183 -63 -183 
		mu 0 4 44 45 66 65 
		f 4 43 184 -64 -184 
		mu 0 4 45 46 67 66 
		f 4 44 185 -65 -185 
		mu 0 4 46 47 68 67 
		f 4 45 186 -66 -186 
		mu 0 4 47 48 69 68 
		f 4 46 187 -67 -187 
		mu 0 4 48 49 70 69 
		f 4 47 188 -68 -188 
		mu 0 4 49 50 71 70 
		f 4 48 189 -69 -189 
		mu 0 4 50 51 72 71 
		f 4 49 190 -70 -190 
		mu 0 4 51 52 73 72 
		f 4 50 191 -71 -191 
		mu 0 4 52 53 74 73 
		f 4 51 192 -72 -192 
		mu 0 4 53 54 75 74 
		f 4 52 193 -73 -193 
		mu 0 4 54 55 76 75 
		f 4 53 194 -74 -194 
		mu 0 4 55 56 77 76 
		f 4 54 195 -75 -195 
		mu 0 4 56 57 78 77 
		f 4 55 196 -76 -196 
		mu 0 4 57 58 79 78 
		f 4 56 197 -77 -197 
		mu 0 4 58 59 80 79 
		f 4 57 198 -78 -198 
		mu 0 4 59 60 81 80 
		f 4 58 199 -79 -199 
		mu 0 4 60 61 82 81 
		f 4 59 180 -80 -200 
		mu 0 4 61 62 83 82 
		f 4 60 201 -81 -201 
		mu 0 4 63 64 85 84 
		f 4 61 202 -82 -202 
		mu 0 4 64 65 86 85 
		f 4 62 203 -83 -203 
		mu 0 4 65 66 87 86 
		f 4 63 204 -84 -204 
		mu 0 4 66 67 88 87 
		f 4 64 205 -85 -205 
		mu 0 4 67 68 89 88 
		f 4 65 206 -86 -206 
		mu 0 4 68 69 90 89 
		f 4 66 207 -87 -207 
		mu 0 4 69 70 91 90 
		f 4 67 208 -88 -208 
		mu 0 4 70 71 92 91 
		f 4 68 209 -89 -209 
		mu 0 4 71 72 93 92 
		f 4 69 210 -90 -210 
		mu 0 4 72 73 94 93 
		f 4 70 211 -91 -211 
		mu 0 4 73 74 95 94 
		f 4 71 212 -92 -212 
		mu 0 4 74 75 96 95 
		f 4 72 213 -93 -213 
		mu 0 4 75 76 97 96 
		f 4 73 214 -94 -214 
		mu 0 4 76 77 98 97 
		f 4 74 215 -95 -215 
		mu 0 4 77 78 99 98 
		f 4 75 216 -96 -216 
		mu 0 4 78 79 100 99 
		f 4 76 217 -97 -217 
		mu 0 4 79 80 101 100 
		f 4 77 218 -98 -218 
		mu 0 4 80 81 102 101 
		f 4 78 219 -99 -219 
		mu 0 4 81 82 103 102 
		f 4 79 200 -100 -220 
		mu 0 4 82 83 104 103 
		f 4 80 221 -101 -221 
		mu 0 4 84 85 106 105 
		f 4 81 222 -102 -222 
		mu 0 4 85 86 107 106 
		f 4 82 223 -103 -223 
		mu 0 4 86 87 108 107 
		f 4 83 224 -104 -224 
		mu 0 4 87 88 109 108 
		f 4 84 225 -105 -225 
		mu 0 4 88 89 110 109 
		f 4 85 226 -106 -226 
		mu 0 4 89 90 111 110 
		f 4 86 227 -107 -227 
		mu 0 4 90 91 112 111 
		f 4 87 228 -108 -228 
		mu 0 4 91 92 113 112 
		f 4 88 229 -109 -229 
		mu 0 4 92 93 114 113 
		f 4 89 230 -110 -230 
		mu 0 4 93 94 115 114 
		f 4 90 231 -111 -231 
		mu 0 4 94 95 116 115 
		f 4 91 232 -112 -232 
		mu 0 4 95 96 117 116 
		f 4 92 233 -113 -233 
		mu 0 4 96 97 118 117 
		f 4 93 234 -114 -234 
		mu 0 4 97 98 119 118 
		f 4 94 235 -115 -235 
		mu 0 4 98 99 120 119 
		f 4 95 236 -116 -236 
		mu 0 4 99 100 121 120 
		f 4 96 237 -117 -237 
		mu 0 4 100 101 122 121 
		f 4 97 238 -118 -238 
		mu 0 4 101 102 123 122 
		f 4 98 239 -119 -239 
		mu 0 4 102 103 124 123 
		f 4 99 220 -120 -240 
		mu 0 4 103 104 125 124 
		f 4 100 241 -121 -241 
		mu 0 4 105 106 127 126 
		f 4 101 242 -122 -242 
		mu 0 4 106 107 128 127 
		f 4 102 243 -123 -243 
		mu 0 4 107 108 129 128 
		f 4 103 244 -124 -244 
		mu 0 4 108 109 130 129 
		f 4 104 245 -125 -245 
		mu 0 4 109 110 131 130 
		f 4 105 246 -126 -246 
		mu 0 4 110 111 132 131 
		f 4 106 247 -127 -247 
		mu 0 4 111 112 133 132 
		f 4 107 248 -128 -248 
		mu 0 4 112 113 134 133 
		f 4 108 249 -129 -249 
		mu 0 4 113 114 135 134 
		f 4 109 250 -130 -250 
		mu 0 4 114 115 136 135 
		f 4 110 251 -131 -251 
		mu 0 4 115 116 137 136 
		f 4 111 252 -132 -252 
		mu 0 4 116 117 138 137 
		f 4 112 253 -133 -253 
		mu 0 4 117 118 139 138 
		f 4 113 254 -134 -254 
		mu 0 4 118 119 140 139 
		f 4 114 255 -135 -255 
		mu 0 4 119 120 141 140 
		f 4 115 256 -136 -256 
		mu 0 4 120 121 142 141 
		f 4 116 257 -137 -257 
		mu 0 4 121 122 143 142 
		f 4 117 258 -138 -258 
		mu 0 4 122 123 144 143 
		f 4 118 259 -139 -259 
		mu 0 4 123 124 145 144 
		f 4 119 240 -140 -260 
		mu 0 4 124 125 146 145 
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 
		-11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1 
		
		mu 0 20 0 147 148 149 150 151 152 153 
		154 155 10 156 157 158 159 160 161 162 163 
		164 
		f 20 120 121 122 123 124 125 126 127 128 
		129 130 131 132 133 134 135 136 137 138 139 
		
		mu 0 20 126 127 128 129 130 131 132 133 
		134 135 136 137 138 139 140 141 142 143 144 
		145 ;
createNode lightLinker -n "lightLinker1";
	setAttr -s 3 ".lnk";
createNode brush -n "brush1";
	setAttr ".lcl[0]"  0 0.5 1;
	setAttr ".pcl[0]"  0 0.5 1;
	setAttr ".wsc[0]"  0 1 1;
	setAttr ".lws[0]"  0 1 1;
	setAttr ".pws[0]"  0 1 1;
	setAttr ".tls[0]"  0 1 1;
	setAttr -s 3 ".env";
	setAttr ".env[0].envp" 0.20000000298023224;
	setAttr ".env[0].envc" -type "float3" 0 0 0.15000001 ;
	setAttr ".env[0].envi" 2;
	setAttr ".env[1].envp" 0.5;
	setAttr ".env[1].envc" -type "float3" 0.47999999 0.55000001 0.69999999 ;
	setAttr ".env[1].envi" 2;
	setAttr ".env[2].envp" 1;
	setAttr ".env[2].envc" -type "float3" 0 0.1 0.44999999 ;
	setAttr ".env[2].envi" 2;
	setAttr ".rro[0]"  0 1 1;
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
createNode renderLayer -s -n "globalRender";
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n"
		+ "//\n"
		+ "//  This script is machine generated.  Edit at your own risk.\n"
		+ "//\n"
		+ "//\n"
		+ "global string $gMainPane;\n"
		+ "if (`paneLayout -exists $gMainPane`) {\n"
		+ "\tglobal int $gUseScenePanelConfig;\n"
		+ "\tint    $useSceneConfig = $gUseScenePanelConfig;\n"
		+ "\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n"
		+ "\tint    $nPanes = 0;\n"
		+ "\tstring $editorName;\n"
		+ "\tstring $panelName;\n"
		+ "\tstring $itemFilterName;\n"
		+ "\tstring $panelConfig;\n"
		+ "\t//\n"
		+ "\t//  get current state of the UI\n"
		+ "\t//\n"
		+ "\tsceneUIReplacement -update $gMainPane;\n"
		+ "\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" \"Top View\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `modelPanel -unParent -l \"Top View\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n"
		+ "            modelEditor -e \n"
		+ "                -camera \"top\" \n"
		+ "                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n"
		+ "                -wireframeOnShaded 0\n"
		+ "                -bufferMode \"double\" \n"
		+ "                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n"
		+ "                -xray 0\n"
		+ "                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n"
		+ "                -textureAnisotropic 0\n"
		+ "                -textureHilight 1\n"
		+ "                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 1024\n"
		+ "                -fogging 0\n"
		+ "                -fogSource \"fragment\" \n"
		+ "                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n"
		+ "                -fogEnd 100\n"
		+ "                -fogDensity 0.1\n"
		+ "                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -maxConstantTransparency 1\n"
		+ "                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -colorResolution 256 256 \n"
		+ "                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n"
		+ "                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n"
		+ "                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n"
		+ "                -maximumNumHardwareLights 1\n"
		+ "                -occlusionCulling 0\n"
		+ "                -useBaseRenderer 0\n"
		+ "                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n"
		+ "                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n"
		+ "                -sortTransparent 1\n"
		+ "                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n"
		+ "                -planes 1\n"
		+ "                -lights 1\n"
		+ "                -cameras 1\n"
		+ "                -controlVertices 1\n"
		+ "                -hulls 1\n"
		+ "                -grid 1\n"
		+ "                -joints 1\n"
		+ "                -ikHandles 1\n"
		+ "                -deformers 1\n"
		+ "                -dynamics 1\n"
		+ "                -fluids 1\n"
		+ "                -hairSystems 1\n"
		+ "                -follicles 1\n"
		+ "                -locators 1\n"
		+ "                -dimensions 1\n"
		+ "                -handles 1\n"
		+ "                -pivots 1\n"
		+ "                -textures 1\n"
		+ "                -strokes 1\n"
		+ "                -shadows 0\n"
		+ "                $editorName;\n"
		+ "modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l \"Top View\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n"
		+ "            -camera \"top\" \n"
		+ "            -useInteractiveMode 0\n"
		+ "            -displayLights \"default\" \n"
		+ "            -displayAppearance \"wireframe\" \n"
		+ "            -activeOnly 0\n"
		+ "            -wireframeOnShaded 0\n"
		+ "            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n"
		+ "            -backfaceCulling 0\n"
		+ "            -xray 0\n"
		+ "            -displayTextures 0\n"
		+ "            -smoothWireframe 0\n"
		+ "            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n"
		+ "            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 1024\n"
		+ "            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n"
		+ "            -fogEnd 100\n"
		+ "            -fogDensity 0.1\n"
		+ "            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n"
		+ "            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n"
		+ "            -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n"
		+ "            -lowQualityLighting 0\n"
		+ "            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n"
		+ "            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n"
		+ "            -smallObjectCulling 0\n"
		+ "            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n"
		+ "            -subdivSurfaces 1\n"
		+ "            -planes 1\n"
		+ "            -lights 1\n"
		+ "            -cameras 1\n"
		+ "            -controlVertices 1\n"
		+ "            -hulls 1\n"
		+ "            -grid 1\n"
		+ "            -joints 1\n"
		+ "            -ikHandles 1\n"
		+ "            -deformers 1\n"
		+ "            -dynamics 1\n"
		+ "            -fluids 1\n"
		+ "            -hairSystems 1\n"
		+ "            -follicles 1\n"
		+ "            -locators 1\n"
		+ "            -dimensions 1\n"
		+ "            -handles 1\n"
		+ "            -pivots 1\n"
		+ "            -textures 1\n"
		+ "            -strokes 1\n"
		+ "            -shadows 0\n"
		+ "            $editorName;\n"
		+ "modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" \"Side View\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `modelPanel -unParent -l \"Side View\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n"
		+ "            modelEditor -e \n"
		+ "                -camera \"side\" \n"
		+ "                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n"
		+ "                -wireframeOnShaded 0\n"
		+ "                -bufferMode \"double\" \n"
		+ "                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n"
		+ "                -xray 0\n"
		+ "                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n"
		+ "                -textureAnisotropic 0\n"
		+ "                -textureHilight 1\n"
		+ "                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 1024\n"
		+ "                -fogging 0\n"
		+ "                -fogSource \"fragment\" \n"
		+ "                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n"
		+ "                -fogEnd 100\n"
		+ "                -fogDensity 0.1\n"
		+ "                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -maxConstantTransparency 1\n"
		+ "                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -colorResolution 256 256 \n"
		+ "                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n"
		+ "                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n"
		+ "                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n"
		+ "                -maximumNumHardwareLights 1\n"
		+ "                -occlusionCulling 0\n"
		+ "                -useBaseRenderer 0\n"
		+ "                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n"
		+ "                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n"
		+ "                -sortTransparent 1\n"
		+ "                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n"
		+ "                -planes 1\n"
		+ "                -lights 1\n"
		+ "                -cameras 1\n"
		+ "                -controlVertices 1\n"
		+ "                -hulls 1\n"
		+ "                -grid 1\n"
		+ "                -joints 1\n"
		+ "                -ikHandles 1\n"
		+ "                -deformers 1\n"
		+ "                -dynamics 1\n"
		+ "                -fluids 1\n"
		+ "                -hairSystems 1\n"
		+ "                -follicles 1\n"
		+ "                -locators 1\n"
		+ "                -dimensions 1\n"
		+ "                -handles 1\n"
		+ "                -pivots 1\n"
		+ "                -textures 1\n"
		+ "                -strokes 1\n"
		+ "                -shadows 0\n"
		+ "                $editorName;\n"
		+ "modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l \"Side View\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n"
		+ "            -camera \"side\" \n"
		+ "            -useInteractiveMode 0\n"
		+ "            -displayLights \"default\" \n"
		+ "            -displayAppearance \"wireframe\" \n"
		+ "            -activeOnly 0\n"
		+ "            -wireframeOnShaded 0\n"
		+ "            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n"
		+ "            -backfaceCulling 0\n"
		+ "            -xray 0\n"
		+ "            -displayTextures 0\n"
		+ "            -smoothWireframe 0\n"
		+ "            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n"
		+ "            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 1024\n"
		+ "            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n"
		+ "            -fogEnd 100\n"
		+ "            -fogDensity 0.1\n"
		+ "            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n"
		+ "            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n"
		+ "            -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n"
		+ "            -lowQualityLighting 0\n"
		+ "            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n"
		+ "            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n"
		+ "            -smallObjectCulling 0\n"
		+ "            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n"
		+ "            -subdivSurfaces 1\n"
		+ "            -planes 1\n"
		+ "            -lights 1\n"
		+ "            -cameras 1\n"
		+ "            -controlVertices 1\n"
		+ "            -hulls 1\n"
		+ "            -grid 1\n"
		+ "            -joints 1\n"
		+ "            -ikHandles 1\n"
		+ "            -deformers 1\n"
		+ "            -dynamics 1\n"
		+ "            -fluids 1\n"
		+ "            -hairSystems 1\n"
		+ "            -follicles 1\n"
		+ "            -locators 1\n"
		+ "            -dimensions 1\n"
		+ "            -handles 1\n"
		+ "            -pivots 1\n"
		+ "            -textures 1\n"
		+ "            -strokes 1\n"
		+ "            -shadows 0\n"
		+ "            $editorName;\n"
		+ "modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" \"Front View\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `modelPanel -unParent -l \"Front View\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n"
		+ "            modelEditor -e \n"
		+ "                -camera \"front\" \n"
		+ "                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n"
		+ "                -wireframeOnShaded 0\n"
		+ "                -bufferMode \"double\" \n"
		+ "                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n"
		+ "                -xray 0\n"
		+ "                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n"
		+ "                -textureAnisotropic 0\n"
		+ "                -textureHilight 1\n"
		+ "                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 1024\n"
		+ "                -fogging 0\n"
		+ "                -fogSource \"fragment\" \n"
		+ "                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n"
		+ "                -fogEnd 100\n"
		+ "                -fogDensity 0.1\n"
		+ "                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -maxConstantTransparency 1\n"
		+ "                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -colorResolution 256 256 \n"
		+ "                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n"
		+ "                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n"
		+ "                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n"
		+ "                -maximumNumHardwareLights 1\n"
		+ "                -occlusionCulling 0\n"
		+ "                -useBaseRenderer 0\n"
		+ "                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n"
		+ "                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n"
		+ "                -sortTransparent 1\n"
		+ "                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n"
		+ "                -planes 1\n"
		+ "                -lights 1\n"
		+ "                -cameras 1\n"
		+ "                -controlVertices 1\n"
		+ "                -hulls 1\n"
		+ "                -grid 1\n"
		+ "                -joints 1\n"
		+ "                -ikHandles 1\n"
		+ "                -deformers 1\n"
		+ "                -dynamics 1\n"
		+ "                -fluids 1\n"
		+ "                -hairSystems 1\n"
		+ "                -follicles 1\n"
		+ "                -locators 1\n"
		+ "                -dimensions 1\n"
		+ "                -handles 1\n"
		+ "                -pivots 1\n"
		+ "                -textures 1\n"
		+ "                -strokes 1\n"
		+ "                -shadows 0\n"
		+ "                $editorName;\n"
		+ "modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l \"Front View\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n"
		+ "            -camera \"front\" \n"
		+ "            -useInteractiveMode 0\n"
		+ "            -displayLights \"default\" \n"
		+ "            -displayAppearance \"wireframe\" \n"
		+ "            -activeOnly 0\n"
		+ "            -wireframeOnShaded 0\n"
		+ "            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n"
		+ "            -backfaceCulling 0\n"
		+ "            -xray 0\n"
		+ "            -displayTextures 0\n"
		+ "            -smoothWireframe 0\n"
		+ "            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n"
		+ "            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 1024\n"
		+ "            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n"
		+ "            -fogEnd 100\n"
		+ "            -fogDensity 0.1\n"
		+ "            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n"
		+ "            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n"
		+ "            -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n"
		+ "            -lowQualityLighting 0\n"
		+ "            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n"
		+ "            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n"
		+ "            -smallObjectCulling 0\n"
		+ "            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n"
		+ "            -subdivSurfaces 1\n"
		+ "            -planes 1\n"
		+ "            -lights 1\n"
		+ "            -cameras 1\n"
		+ "            -controlVertices 1\n"
		+ "            -hulls 1\n"
		+ "            -grid 1\n"
		+ "            -joints 1\n"
		+ "            -ikHandles 1\n"
		+ "            -deformers 1\n"
		+ "            -dynamics 1\n"
		+ "            -fluids 1\n"
		+ "            -hairSystems 1\n"
		+ "            -follicles 1\n"
		+ "            -locators 1\n"
		+ "            -dimensions 1\n"
		+ "            -handles 1\n"
		+ "            -pivots 1\n"
		+ "            -textures 1\n"
		+ "            -strokes 1\n"
		+ "            -shadows 0\n"
		+ "            $editorName;\n"
		+ "modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" \"Persp View\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `modelPanel -unParent -l \"Persp View\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n"
		+ "            modelEditor -e \n"
		+ "                -camera \"persp\" \n"
		+ "                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n"
		+ "                -wireframeOnShaded 1\n"
		+ "                -bufferMode \"double\" \n"
		+ "                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n"
		+ "                -xray 0\n"
		+ "                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n"
		+ "                -textureAnisotropic 0\n"
		+ "                -textureHilight 1\n"
		+ "                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 1024\n"
		+ "                -fogging 0\n"
		+ "                -fogSource \"fragment\" \n"
		+ "                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n"
		+ "                -fogEnd 100\n"
		+ "                -fogDensity 0.1\n"
		+ "                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -maxConstantTransparency 1\n"
		+ "                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -colorResolution 256 256 \n"
		+ "                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n"
		+ "                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n"
		+ "                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n"
		+ "                -maximumNumHardwareLights 1\n"
		+ "                -occlusionCulling 0\n"
		+ "                -useBaseRenderer 0\n"
		+ "                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n"
		+ "                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n"
		+ "                -sortTransparent 1\n"
		+ "                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n"
		+ "                -planes 1\n"
		+ "                -lights 1\n"
		+ "                -cameras 1\n"
		+ "                -controlVertices 1\n"
		+ "                -hulls 1\n"
		+ "                -grid 1\n"
		+ "                -joints 1\n"
		+ "                -ikHandles 1\n"
		+ "                -deformers 1\n"
		+ "                -dynamics 1\n"
		+ "                -fluids 1\n"
		+ "                -hairSystems 1\n"
		+ "                -follicles 1\n"
		+ "                -locators 1\n"
		+ "                -dimensions 1\n"
		+ "                -handles 1\n"
		+ "                -pivots 1\n"
		+ "                -textures 1\n"
		+ "                -strokes 1\n"
		+ "                -shadows 0\n"
		+ "                $editorName;\n"
		+ "modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l \"Persp View\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n"
		+ "            -camera \"persp\" \n"
		+ "            -useInteractiveMode 0\n"
		+ "            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n"
		+ "            -wireframeOnShaded 1\n"
		+ "            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n"
		+ "            -backfaceCulling 0\n"
		+ "            -xray 0\n"
		+ "            -displayTextures 0\n"
		+ "            -smoothWireframe 0\n"
		+ "            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n"
		+ "            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 1024\n"
		+ "            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n"
		+ "            -fogEnd 100\n"
		+ "            -fogDensity 0.1\n"
		+ "            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n"
		+ "            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n"
		+ "            -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n"
		+ "            -lowQualityLighting 0\n"
		+ "            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n"
		+ "            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n"
		+ "            -smallObjectCulling 0\n"
		+ "            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n"
		+ "            -subdivSurfaces 1\n"
		+ "            -planes 1\n"
		+ "            -lights 1\n"
		+ "            -cameras 1\n"
		+ "            -controlVertices 1\n"
		+ "            -hulls 1\n"
		+ "            -grid 1\n"
		+ "            -joints 1\n"
		+ "            -ikHandles 1\n"
		+ "            -deformers 1\n"
		+ "            -dynamics 1\n"
		+ "            -fluids 1\n"
		+ "            -hairSystems 1\n"
		+ "            -follicles 1\n"
		+ "            -locators 1\n"
		+ "            -dimensions 1\n"
		+ "            -handles 1\n"
		+ "            -pivots 1\n"
		+ "            -textures 1\n"
		+ "            -strokes 1\n"
		+ "            -shadows 0\n"
		+ "            $editorName;\n"
		+ "modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" \"Outliner\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `outlinerPanel -unParent -l \"Outliner\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n"
		+ "            outlinerEditor -e \n"
		+ "                -mainListConnection \"worldList\" \n"
		+ "                -selectionConnection \"modelList\" \n"
		+ "                -showShapes 0\n"
		+ "                -showAttributes 0\n"
		+ "                -showConnected 0\n"
		+ "                -showAnimCurvesOnly 0\n"
		+ "                -autoExpand 0\n"
		+ "                -showDagOnly 1\n"
		+ "                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 0\n"
		+ "                -showUnitlessCurves 1\n"
		+ "                -showCompounds 1\n"
		+ "                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 0\n"
		+ "                -highlightActive 1\n"
		+ "                -autoSelectNewObjects 0\n"
		+ "                -doNotSelectNewObjects 0\n"
		+ "                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n"
		+ "                -setFilter \"defaultSetFilter\" \n"
		+ "                -showSetMembers 1\n"
		+ "                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n"
		+ "                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n"
		+ "                -editAttrName 0\n"
		+ "                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n"
		+ "                -sortOrder \"none\" \n"
		+ "                -longNames 0\n"
		+ "                -niceNames 1\n"
		+ "                $editorName;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l \"Outliner\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n"
		+ "        outlinerEditor -e \n"
		+ "            -mainListConnection \"worldList\" \n"
		+ "            -selectionConnection \"modelList\" \n"
		+ "            -showShapes 0\n"
		+ "            -showAttributes 0\n"
		+ "            -showConnected 0\n"
		+ "            -showAnimCurvesOnly 0\n"
		+ "            -autoExpand 0\n"
		+ "            -showDagOnly 1\n"
		+ "            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n"
		+ "            -showUnitlessCurves 1\n"
		+ "            -showCompounds 1\n"
		+ "            -showLeafs 1\n"
		+ "            -showNumericAttrsOnly 0\n"
		+ "            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n"
		+ "            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n"
		+ "            -setFilter \"defaultSetFilter\" \n"
		+ "            -showSetMembers 1\n"
		+ "            -allowMultiSelection 1\n"
		+ "            -alwaysToggleSelect 0\n"
		+ "            -directSelect 0\n"
		+ "            -displayMode \"DAG\" \n"
		+ "            -expandObjects 0\n"
		+ "            -setsIgnoreFilters 1\n"
		+ "            -editAttrName 0\n"
		+ "            -showAttrValues 0\n"
		+ "            -highlightSecondary 0\n"
		+ "            -showUVAttrsOnly 0\n"
		+ "            -showTextureNodesOnly 0\n"
		+ "            -sortOrder \"none\" \n"
		+ "            -longNames 0\n"
		+ "            -niceNames 1\n"
		+ "            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" \"Graph Editor\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l \"Graph Editor\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n"
		+ "                -mainListConnection \"graphEditorList\" \n"
		+ "                -selectionConnection \"graphEditor1FromOutliner\" \n"
		+ "                -highlightConnection \"keyframeList\" \n"
		+ "                -showShapes 1\n"
		+ "                -showAttributes 1\n"
		+ "                -showConnected 1\n"
		+ "                -showAnimCurvesOnly 1\n"
		+ "                -autoExpand 1\n"
		+ "                -showDagOnly 0\n"
		+ "                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n"
		+ "                -showUnitlessCurves 1\n"
		+ "                -showCompounds 0\n"
		+ "                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 1\n"
		+ "                -doNotSelectNewObjects 0\n"
		+ "                -dropIsParent 1\n"
		+ "                -transmitFilters 1\n"
		+ "                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n"
		+ "                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n"
		+ "                -editAttrName 0\n"
		+ "                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n"
		+ "                -sortOrder \"none\" \n"
		+ "                -longNames 0\n"
		+ "                -niceNames 1\n"
		+ "                $editorName;\n"
		+ "\t\t\t$editorName = ($panelName+\"GraphEd\");\n"
		+ "            animCurveEditor -e \n"
		+ "                -mainListConnection \"graphEditor1FromOutliner\" \n"
		+ "                -displayKeys 1\n"
		+ "                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 1\n"
		+ "                -displayInfinities 0\n"
		+ "                -autoFit 0\n"
		+ "                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n"
		+ "                -showResults \"off\" \n"
		+ "                -showBufferCurves \"off\" \n"
		+ "                -smoothness \"fine\" \n"
		+ "                -resultSamples 1\n"
		+ "                -resultScreenSamples 0\n"
		+ "                -resultUpdate \"delayed\" \n"
		+ "                $editorName;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l \"Graph Editor\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n"
		+ "                -mainListConnection \"graphEditorList\" \n"
		+ "                -selectionConnection \"graphEditor1FromOutliner\" \n"
		+ "                -highlightConnection \"keyframeList\" \n"
		+ "                -showShapes 1\n"
		+ "                -showAttributes 1\n"
		+ "                -showConnected 1\n"
		+ "                -showAnimCurvesOnly 1\n"
		+ "                -autoExpand 1\n"
		+ "                -showDagOnly 0\n"
		+ "                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n"
		+ "                -showUnitlessCurves 1\n"
		+ "                -showCompounds 0\n"
		+ "                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 1\n"
		+ "                -doNotSelectNewObjects 0\n"
		+ "                -dropIsParent 1\n"
		+ "                -transmitFilters 1\n"
		+ "                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n"
		+ "                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n"
		+ "                -editAttrName 0\n"
		+ "                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n"
		+ "                -sortOrder \"none\" \n"
		+ "                -longNames 0\n"
		+ "                -niceNames 1\n"
		+ "                $editorName;\n"
		+ "\t\t\t$editorName = ($panelName+\"GraphEd\");\n"
		+ "            animCurveEditor -e \n"
		+ "                -mainListConnection \"graphEditor1FromOutliner\" \n"
		+ "                -displayKeys 1\n"
		+ "                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 1\n"
		+ "                -displayInfinities 0\n"
		+ "                -autoFit 0\n"
		+ "                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n"
		+ "                -showResults \"off\" \n"
		+ "                -showBufferCurves \"off\" \n"
		+ "                -smoothness \"fine\" \n"
		+ "                -resultSamples 1\n"
		+ "                -resultScreenSamples 0\n"
		+ "                -resultUpdate \"delayed\" \n"
		+ "                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" \"Dope Sheet\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l \"Dope Sheet\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n"
		+ "                -mainListConnection \"animationList\" \n"
		+ "                -selectionConnection \"dopeSheetPanel1OutlinerSelection\" \n"
		+ "                -highlightConnection \"keyframeList\" \n"
		+ "                -showShapes 1\n"
		+ "                -showAttributes 1\n"
		+ "                -showConnected 1\n"
		+ "                -showAnimCurvesOnly 1\n"
		+ "                -autoExpand 0\n"
		+ "                -showDagOnly 0\n"
		+ "                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n"
		+ "                -showUnitlessCurves 0\n"
		+ "                -showCompounds 1\n"
		+ "                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n"
		+ "                -doNotSelectNewObjects 1\n"
		+ "                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n"
		+ "                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n"
		+ "                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n"
		+ "                -editAttrName 0\n"
		+ "                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n"
		+ "                -sortOrder \"none\" \n"
		+ "                -longNames 0\n"
		+ "                -niceNames 1\n"
		+ "                $editorName;\n"
		+ "\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n"
		+ "            dopeSheetEditor -e \n"
		+ "                -mainListConnection \"dopeSheetPanel1FromOutliner\" \n"
		+ "                -highlightConnection \"dopeSheetPanel1OutlinerSelection\" \n"
		+ "                -displayKeys 1\n"
		+ "                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n"
		+ "                -autoFit 0\n"
		+ "                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n"
		+ "                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n"
		+ "                -showScene 0\n"
		+ "                -hierarchyBelow 0\n"
		+ "                -showTicks 0\n"
		+ "                $editorName;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l \"Dope Sheet\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n"
		+ "                -mainListConnection \"animationList\" \n"
		+ "                -selectionConnection \"dopeSheetPanel1OutlinerSelection\" \n"
		+ "                -highlightConnection \"keyframeList\" \n"
		+ "                -showShapes 1\n"
		+ "                -showAttributes 1\n"
		+ "                -showConnected 1\n"
		+ "                -showAnimCurvesOnly 1\n"
		+ "                -autoExpand 0\n"
		+ "                -showDagOnly 0\n"
		+ "                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n"
		+ "                -showUnitlessCurves 0\n"
		+ "                -showCompounds 1\n"
		+ "                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n"
		+ "                -doNotSelectNewObjects 1\n"
		+ "                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n"
		+ "                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n"
		+ "                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n"
		+ "                -editAttrName 0\n"
		+ "                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n"
		+ "                -sortOrder \"none\" \n"
		+ "                -longNames 0\n"
		+ "                -niceNames 1\n"
		+ "                $editorName;\n"
		+ "\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n"
		+ "            dopeSheetEditor -e \n"
		+ "                -mainListConnection \"dopeSheetPanel1FromOutliner\" \n"
		+ "                -highlightConnection \"dopeSheetPanel1OutlinerSelection\" \n"
		+ "                -displayKeys 1\n"
		+ "                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n"
		+ "                -autoFit 0\n"
		+ "                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n"
		+ "                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n"
		+ "                -showScene 0\n"
		+ "                -hierarchyBelow 0\n"
		+ "                -showTicks 0\n"
		+ "                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" \"Trax Editor\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l \"Trax Editor\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n"
		+ "                -mainListConnection \"lockedList1\" \n"
		+ "                -highlightConnection \"clipEditorPanel1HighlightConnection\" \n"
		+ "                -displayKeys 0\n"
		+ "                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n"
		+ "                -autoFit 0\n"
		+ "                -snapTime \"none\" \n"
		+ "                -snapValue \"none\" \n"
		+ "                $editorName;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l \"Trax Editor\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n"
		+ "                -mainListConnection \"lockedList1\" \n"
		+ "                -highlightConnection \"clipEditorPanel1HighlightConnection\" \n"
		+ "                -displayKeys 0\n"
		+ "                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n"
		+ "                -autoFit 0\n"
		+ "                -snapTime \"none\" \n"
		+ "                -snapValue \"none\" \n"
		+ "                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" \"Hypergraph\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l \"Hypergraph\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n"
		+ "            hyperGraph -e \n"
		+ "                -orientation \"horiz\" \n"
		+ "                -zoom 1\n"
		+ "                -animateTransition 0\n"
		+ "                -showShapes 0\n"
		+ "                -showDeformers 0\n"
		+ "                -showExpressions 0\n"
		+ "                -showConstraints 0\n"
		+ "                -showUnderworld 0\n"
		+ "                -showInvisible 0\n"
		+ "                -transitionFrames 1\n"
		+ "                -freeform 0\n"
		+ "                -imageEnabled 0\n"
		+ "                -graphType \"DAG\" \n"
		+ "                -updateSelection 1\n"
		+ "                -updateNodeAdded 1\n"
		+ "                -useDrawOverrideColor 0\n"
		+ "                $editorName;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l \"Hypergraph\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n"
		+ "            hyperGraph -e \n"
		+ "                -orientation \"horiz\" \n"
		+ "                -zoom 1\n"
		+ "                -animateTransition 0\n"
		+ "                -showShapes 0\n"
		+ "                -showDeformers 0\n"
		+ "                -showExpressions 0\n"
		+ "                -showConstraints 0\n"
		+ "                -showUnderworld 0\n"
		+ "                -showInvisible 0\n"
		+ "                -transitionFrames 1\n"
		+ "                -freeform 0\n"
		+ "                -imageEnabled 0\n"
		+ "                -graphType \"DAG\" \n"
		+ "                -updateSelection 1\n"
		+ "                -updateNodeAdded 1\n"
		+ "                -useDrawOverrideColor 0\n"
		+ "                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" \"Hypershade\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l \"Hypershade\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l \"Hypershade\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" \"Visor\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l \"Visor\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l \"Visor\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" \"UV Texture Editor\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l \"UV Texture Editor\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l \"UV Texture Editor\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"multiListerPanel\" \"Multilister\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"multiListerPanel\" -l \"Multilister\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l \"Multilister\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" \"Render View\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l \"Render View\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l \"Render View\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" \"Blend Shape\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\tblendShapePanel -unParent -l \"Blend Shape\" -mbv $menusOkayInPanels ;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l \"Blend Shape\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" \"Dynamic Relationships\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l \"Dynamic Relationships\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l \"Dynamic Relationships\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextPanel \"devicePanel\" \"Devices\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\tdevicePanel -unParent -l \"Devices\" -mbv $menusOkayInPanels ;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tdevicePanel -edit -l \"Devices\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" \"Relationship Editor\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l \"Relationship Editor\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l \"Relationship Editor\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" \"Reference Editor\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l \"Reference Editor\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l \"Reference Editor\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" \"Component Editor\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l \"Component Editor\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l \"Component Editor\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" \"Paint Effects\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l \"Paint Effects\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l \"Paint Effects\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"webBrowserPanel\" \"Web Browser\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"webBrowserPanel\" -l \"Web Browser\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l \"Web Browser\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\tif ($useSceneConfig) {\n"
		+ "        string $configName = `getPanel -cwl \"Current Layout\"`;\n"
		+ "        if (\"\" != $configName) {\n"
		+ "\t\t\tpanelConfiguration -edit -label \"Current Layout\"\n"
		+ "\t\t\t\t-defaultImage \"\"\n"
		+ "\t\t\t\t-image \"\"\n"
		+ "\t\t\t\t-sc false\n"
		+ "\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 32 100 -ps 2 68 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n"
		+ "\t\t\t\t-ap false\n"
		+ "\t\t\t\t\t\"Outliner\"\n"
		+ "\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l \\\"Outliner\\\" -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -mainListConnection \\\"worldList\\\" \\n    -selectionConnection \\\"modelList\\\" \\n    -showShapes 0\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l \\\"Outliner\\\" -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -mainListConnection \\\"worldList\\\" \\n    -selectionConnection \\\"modelList\\\" \\n    -showShapes 0\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n"
		+ "\t\t\t\t\t\"Persp View\"\n"
		+ "\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l \\\"Persp View\\\" -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -wireframeOnShaded 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 1024\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -locators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l \\\"Persp View\\\" -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -wireframeOnShaded 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 1024\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -locators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n"
		+ "            setNamedPanelLayout \"Current Layout\";\n"
		+ "        }\n"
		+ "        panelHistory -e -clear mainPanelHistory;\n"
		+ "        setFocus `paneLayout -q -p1 $gMainPane`;\n"
		+ "        sceneUIReplacement -deleteRemaining;\n"
		+ "        sceneUIReplacement -clear;\n"
		+ "\t}\n"
		+ "grid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\n"
		+ "}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 100 -ast 0 -aet 100 ";
	setAttr ".st" 6;
createNode animCurveTL -n "joint2_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 4.4408920985006262e-016 100 4.4408920985006262e-016;
createNode animCurveTL -n "joint2_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2 100 2;
createNode animCurveTL -n "joint2_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 100 0;
createNode animCurveTU -n "joint2_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 100 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "joint2_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 100 0;
createNode animCurveTA -n "joint2_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 100 0;
createNode animCurveTA -n "joint2_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 100 90;
createNode animCurveTU -n "joint2_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 100 1;
createNode animCurveTU -n "joint2_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 100 1;
createNode animCurveTU -n "joint2_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 100 1;
createNode skinCluster -n "skinCluster1";
	setAttr -s 140 ".wl";
	setAttr -s 2 ".wl[0].w[0:1]"  0.030762186 0.9692378;
	setAttr -s 2 ".wl[1].w[0:1]"  0.030762186 0.9692378;
	setAttr -s 2 ".wl[2].w[0:1]"  0.030762183 0.9692378;
	setAttr -s 2 ".wl[3].w[0:1]"  0.030762179 0.9692378;
	setAttr -s 2 ".wl[4].w[0:1]"  0.030762177 0.9692378;
	setAttr -s 2 ".wl[5].w[0:1]"  0.030762175 0.9692378;
	setAttr -s 2 ".wl[6].w[0:1]"  0.03076217 0.9692378;
	setAttr -s 2 ".wl[7].w[0:1]"  0.03076217 0.9692378;
	setAttr -s 2 ".wl[8].w[0:1]"  0.03076217 0.9692378;
	setAttr -s 2 ".wl[9].w[0:1]"  0.030762166 0.9692378;
	setAttr -s 2 ".wl[10].w[0:1]"  0.03076217 0.9692378;
	setAttr -s 2 ".wl[11].w[0:1]"  0.030762162 0.9692378;
	setAttr -s 2 ".wl[12].w[0:1]"  0.030762158 0.96923786;
	setAttr -s 2 ".wl[13].w[0:1]"  0.030762156 0.96923786;
	setAttr -s 2 ".wl[14].w[0:1]"  0.030762155 0.96923786;
	setAttr -s 2 ".wl[15].w[0:1]"  0.030762153 0.96923786;
	setAttr -s 2 ".wl[16].w[0:1]"  0.030762151 0.96923786;
	setAttr -s 2 ".wl[17].w[0:1]"  0.030762151 0.96923786;
	setAttr -s 2 ".wl[18].w[0:1]"  0.030762145 0.96923786;
	setAttr -s 2 ".wl[19].w[0:1]"  0.030762143 0.96923786;
	setAttr -s 2 ".wl[20].w[0:1]"  0.086643487 0.91335654;
	setAttr -s 2 ".wl[21].w[0:1]"  0.086643487 0.91335654;
	setAttr -s 2 ".wl[22].w[0:1]"  0.086643472 0.91335654;
	setAttr -s 2 ".wl[23].w[0:1]"  0.086643472 0.91335654;
	setAttr -s 2 ".wl[24].w[0:1]"  0.086643457 0.91335654;
	setAttr -s 2 ".wl[25].w[0:1]"  0.086643457 0.9133566;
	setAttr -s 2 ".wl[26].w[0:1]"  0.086643443 0.91335654;
	setAttr -s 2 ".wl[27].w[0:1]"  0.086643443 0.91335654;
	setAttr -s 2 ".wl[28].w[0:1]"  0.08664345 0.9133566;
	setAttr -s 2 ".wl[29].w[0:1]"  0.086643428 0.91335654;
	setAttr -s 2 ".wl[30].w[0:1]"  0.086643435 0.91335654;
	setAttr -s 2 ".wl[31].w[0:1]"  0.086643435 0.9133566;
	setAttr -s 2 ".wl[32].w[0:1]"  0.086643413 0.91335654;
	setAttr -s 2 ".wl[33].w[0:1]"  0.086643413 0.9133566;
	setAttr -s 2 ".wl[34].w[0:1]"  0.086643405 0.9133566;
	setAttr -s 2 ".wl[35].w[0:1]"  0.086643405 0.9133566;
	setAttr -s 2 ".wl[36].w[0:1]"  0.086643405 0.9133566;
	setAttr -s 2 ".wl[37].w[0:1]"  0.086643405 0.9133566;
	setAttr -s 2 ".wl[38].w[0:1]"  0.08664339 0.9133566;
	setAttr -s 2 ".wl[39].w[0:1]"  0.086643383 0.91335666;
	setAttr -s 2 ".wl[40].w[0:1]"  0.27144665 0.72855335;
	setAttr -s 2 ".wl[41].w[0:1]"  0.27144665 0.72855335;
	setAttr -s 2 ".wl[42].w[0:1]"  0.27144665 0.72855335;
	setAttr -s 2 ".wl[43].w[0:1]"  0.27144665 0.72855341;
	setAttr -s 2 ".wl[44].w[0:1]"  0.27144662 0.72855341;
	setAttr -s 2 ".wl[45].w[0:1]"  0.27144662 0.72855341;
	setAttr -s 2 ".wl[46].w[0:1]"  0.27144659 0.72855341;
	setAttr -s 2 ".wl[47].w[0:1]"  0.27144659 0.72855341;
	setAttr -s 2 ".wl[48].w[0:1]"  0.27144659 0.72855335;
	setAttr -s 2 ".wl[49].w[0:1]"  0.27144659 0.72855341;
	setAttr -s 2 ".wl[50].w[0:1]"  0.27144659 0.72855341;
	setAttr -s 2 ".wl[51].w[0:1]"  0.27144659 0.72855341;
	setAttr -s 2 ".wl[52].w[0:1]"  0.27144656 0.72855347;
	setAttr -s 2 ".wl[53].w[0:1]"  0.27144656 0.72855347;
	setAttr -s 2 ".wl[54].w[0:1]"  0.27144656 0.72855347;
	setAttr -s 2 ".wl[55].w[0:1]"  0.27144653 0.72855341;
	setAttr -s 2 ".wl[56].w[0:1]"  0.27144653 0.72855341;
	setAttr -s 2 ".wl[57].w[0:1]"  0.27144653 0.72855341;
	setAttr -s 2 ".wl[58].w[0:1]"  0.27144653 0.72855347;
	setAttr -s 2 ".wl[59].w[0:1]"  0.2714465 0.72855347;
	setAttr -s 2 ".wl[60].w[0:1]"  0.49513084 0.50486922;
	setAttr -s 2 ".wl[61].w[0:1]"  0.49513084 0.50486922;
	setAttr -s 2 ".wl[62].w[0:1]"  0.49513084 0.50486916;
	setAttr -s 2 ".wl[63].w[0:1]"  0.49513084 0.50486922;
	setAttr -s 2 ".wl[64].w[0:1]"  0.49513081 0.50486916;
	setAttr -s 2 ".wl[65].w[0:1]"  0.49513084 0.50486916;
	setAttr -s 2 ".wl[66].w[0:1]"  0.49513081 0.50486916;
	setAttr -s 2 ".wl[67].w[0:1]"  0.49513081 0.50486916;
	setAttr -s 2 ".wl[68].w[0:1]"  0.49513084 0.50486916;
	setAttr -s 2 ".wl[69].w[0:1]"  0.49513081 0.50486916;
	setAttr -s 2 ".wl[70].w[0:1]"  0.49513081 0.50486916;
	setAttr -s 2 ".wl[71].w[0:1]"  0.49513084 0.50486916;
	setAttr -s 2 ".wl[72].w[0:1]"  0.49513084 0.50486916;
	setAttr -s 2 ".wl[73].w[0:1]"  0.49513081 0.50486916;
	setAttr -s 2 ".wl[74].w[0:1]"  0.49513081 0.50486916;
	setAttr -s 2 ".wl[75].w[0:1]"  0.49513081 0.50486916;
	setAttr -s 2 ".wl[76].w[0:1]"  0.49513081 0.50486916;
	setAttr -s 2 ".wl[77].w[0:1]"  0.49513081 0.50486916;
	setAttr -s 2 ".wl[78].w[0:1]"  0.49513081 0.50486916;
	setAttr -s 2 ".wl[79].w[0:1]"  0.49513081 0.50486916;
	setAttr -s 2 ".wl[80].w[0:1]"  0.64950544 0.35049453;
	setAttr -s 2 ".wl[81].w[0:1]"  0.64950544 0.35049453;
	setAttr -s 2 ".wl[82].w[0:1]"  0.64950544 0.35049453;
	setAttr -s 2 ".wl[83].w[0:1]"  0.6495055 0.35049456;
	setAttr -s 2 ".wl[84].w[0:1]"  0.6495055 0.35049453;
	setAttr -s 2 ".wl[85].w[0:1]"  0.64950544 0.35049453;
	setAttr -s 2 ".wl[86].w[0:1]"  0.64950544 0.3504945;
	setAttr -s 2 ".wl[87].w[0:1]"  0.64950544 0.3504945;
	setAttr -s 2 ".wl[88].w[0:1]"  0.6495055 0.3504945;
	setAttr -s 2 ".wl[89].w[0:1]"  0.6495055 0.3504945;
	setAttr -s 2 ".wl[90].w[0:1]"  0.64950556 0.3504945;
	setAttr -s 2 ".wl[91].w[0:1]"  0.6495055 0.3504945;
	setAttr -s 2 ".wl[92].w[0:1]"  0.6495055 0.35049447;
	setAttr -s 2 ".wl[93].w[0:1]"  0.64950556 0.3504945;
	setAttr -s 2 ".wl[94].w[0:1]"  0.6495055 0.35049444;
	setAttr -s 2 ".wl[95].w[0:1]"  0.64950556 0.35049447;
	setAttr -s 2 ".wl[96].w[0:1]"  0.64950556 0.35049447;
	setAttr -s 2 ".wl[97].w[0:1]"  0.64950556 0.35049447;
	setAttr -s 2 ".wl[98].w[0:1]"  0.64950556 0.35049444;
	setAttr -s 2 ".wl[99].w[0:1]"  0.6495055 0.35049444;
	setAttr -s 2 ".wl[100].w[0:1]"  0.87880462 0.12119543;
	setAttr -s 2 ".wl[101].w[0:1]"  0.87880462 0.12119543;
	setAttr -s 2 ".wl[102].w[0:1]"  0.87880462 0.12119541;
	setAttr -s 2 ".wl[103].w[0:1]"  0.87880462 0.12119541;
	setAttr -s 2 ".wl[104].w[0:1]"  0.87880462 0.12119539;
	setAttr -s 2 ".wl[105].w[0:1]"  0.87880468 0.12119539;
	setAttr -s 2 ".wl[106].w[0:1]"  0.87880462 0.12119538;
	setAttr -s 2 ".wl[107].w[0:1]"  0.87880462 0.12119538;
	setAttr -s 2 ".wl[108].w[0:1]"  0.87880462 0.12119537;
	setAttr -s 2 ".wl[109].w[0:1]"  0.87880468 0.12119537;
	setAttr -s 2 ".wl[110].w[0:1]"  0.87880462 0.12119537;
	setAttr -s 2 ".wl[111].w[0:1]"  0.87880462 0.12119535;
	setAttr -s 2 ".wl[112].w[0:1]"  0.87880462 0.12119534;
	setAttr -s 2 ".wl[113].w[0:1]"  0.87880468 0.12119534;
	setAttr -s 2 ".wl[114].w[0:1]"  0.87880468 0.12119533;
	setAttr -s 2 ".wl[115].w[0:1]"  0.87880462 0.12119532;
	setAttr -s 2 ".wl[116].w[0:1]"  0.87880462 0.12119532;
	setAttr -s 2 ".wl[117].w[0:1]"  0.87880462 0.12119532;
	setAttr -s 2 ".wl[118].w[0:1]"  0.87880468 0.1211953;
	setAttr -s 2 ".wl[119].w[0:1]"  0.87880468 0.12119529;
	setAttr -s 2 ".wl[120].w[0:1]"  0.96160185 0.038398165;
	setAttr -s 2 ".wl[121].w[0:1]"  0.96160185 0.038398165;
	setAttr -s 2 ".wl[122].w[0:1]"  0.96160185 0.038398162;
	setAttr -s 2 ".wl[123].w[0:1]"  0.96160185 0.038398162;
	setAttr -s 2 ".wl[124].w[0:1]"  0.96160191 0.038398154;
	setAttr -s 2 ".wl[125].w[0:1]"  0.96160179 0.038398147;
	setAttr -s 2 ".wl[126].w[0:1]"  0.96160179 0.038398147;
	setAttr -s 2 ".wl[127].w[0:1]"  0.96160179 0.038398147;
	setAttr -s 2 ".wl[128].w[0:1]"  0.96160179 0.038398143;
	setAttr -s 2 ".wl[129].w[0:1]"  0.96160179 0.038398135;
	setAttr -s 2 ".wl[130].w[0:1]"  0.96160179 0.038398143;
	setAttr -s 2 ".wl[131].w[0:1]"  0.96160179 0.038398132;
	setAttr -s 2 ".wl[132].w[0:1]"  0.96160185 0.038398132;
	setAttr -s 2 ".wl[133].w[0:1]"  0.96160179 0.038398128;
	setAttr -s 2 ".wl[134].w[0:1]"  0.96160185 0.038398124;
	setAttr -s 2 ".wl[135].w[0:1]"  0.96160185 0.038398121;
	setAttr -s 2 ".wl[136].w[0:1]"  0.96160191 0.038398121;
	setAttr -s 2 ".wl[137].w[0:1]"  0.96160191 0.038398121;
	setAttr -s 2 ".wl[138].w[0:1]"  0.96160191 0.038398113;
	setAttr -s 2 ".wl[139].w[0:1]"  0.96160185 0.038398109;
	setAttr -s 2 ".pm";
	setAttr ".pm[0]" -type "matrix" 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".pm[1]" -type "matrix" 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0 0
		 0 0 1 0 -4.4408920985006262e-016 -2 0 1;
	setAttr ".gm" -type "matrix" 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0 0
		 0 0 1 0 2.0989255124980351 -4.6194512820877548e-016 0 1;
	setAttr -s 2 ".ma";
	setAttr -s 2 ".dpf[0:1]"  4 4;
	setAttr -s 2 ".lw";
	setAttr -s 2 ".lw";
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "tweak1";
createNode objectSet -n "skinCluster1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose2";
	setAttr -s 2 ".wm";
	setAttr -s 2 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710678118654746 0.70710678118654757 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.4408920985006262e-016
		 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 2 ".m";
	setAttr -s 2 ".p";
	setAttr ".bp" yes;
createNode blinn -n "matPoseDeformerCorrected";
	setAttr ".c" -type "float3" 0.5 0.18000001 0 ;
	setAttr ".sc" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".rfl" 0;
	setAttr ".ec" 0.60000002384185791;
	setAttr ".sro" 0.25;
createNode shadingEngine -n "matPoseDeformerCorrectedSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
select -ne :time1;
	setAttr ".o" 0;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 3 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :lightList1;
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :hardwareRenderGlobals;
	addAttr -ci true -sn "ani" -ln "animation" -bt "ANIM" -min 0 -max 1 -at "bool";
	setAttr ".fn" -type "string" "%s.%e";
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr -k on ".ani";
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "joint2_rotateZ.o" "joint2.rz";
connectAttr "joint2_rotateX.o" "joint2.rx";
connectAttr "joint2_rotateY.o" "joint2.ry";
connectAttr "joint1.s" "joint2.is";
connectAttr "joint2_scaleX.o" "joint2.sx";
connectAttr "joint2_scaleY.o" "joint2.sy";
connectAttr "joint2_scaleZ.o" "joint2.sz";
connectAttr "joint2_translateX.o" "joint2.tx";
connectAttr "joint2_translateY.o" "joint2.ty";
connectAttr "joint2_translateZ.o" "joint2.tz";
connectAttr "joint2_visibility.o" "joint2.v";
connectAttr "joint2.s" "joint3.is";
connectAttr "skinCluster1GroupId.id" "pCylinderShape1.iog.og[0].gid";
connectAttr "skinCluster1Set.mwc" "pCylinderShape1.iog.og[0].gco";
connectAttr "groupId2.id" "pCylinderShape1.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "pCylinderShape1.iog.og[1].gco";
connectAttr "skinCluster1.og[0]" "pCylinderShape1.i";
connectAttr "tweak1.vl[0].vt[0]" "pCylinderShape1.twl";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[1].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr "matPoseDeformerCorrectedSG.msg" "lightLinker1.lnk[2].olnk";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "joint1.wm" "skinCluster1.ma[0]";
connectAttr "joint2.wm" "skinCluster1.ma[1]";
connectAttr "joint1.liw" "skinCluster1.lw[0]";
connectAttr "joint2.liw" "skinCluster1.lw[1]";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "pCylinderShape1.iog.og[0]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "pCylinderShape1.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "pCylinderShape1Orig.w" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "joint1.msg" "bindPose2.m[0]";
connectAttr "joint2.msg" "bindPose2.m[1]";
connectAttr "bindPose2.w" "bindPose2.p[0]";
connectAttr "bindPose2.m[0]" "bindPose2.p[1]";
connectAttr "joint1.bps" "bindPose2.wm[0]";
connectAttr "joint2.bps" "bindPose2.wm[1]";
connectAttr "matPoseDeformerCorrected.oc" "matPoseDeformerCorrectedSG.ss"
		;
connectAttr "matPoseDeformerCorrectedSG.msg" "materialInfo1.sg";
connectAttr "matPoseDeformerCorrected.msg" "materialInfo1.m";
connectAttr "matPoseDeformerCorrectedSG.pa" ":renderPartition.st" -na;
connectAttr "matPoseDeformerCorrected.msg" ":defaultShaderList1.s" -na;
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1Orig.iog" ":initialShadingGroup.dsm" -na;
// End of poseDefSampleCLEAN.ma
