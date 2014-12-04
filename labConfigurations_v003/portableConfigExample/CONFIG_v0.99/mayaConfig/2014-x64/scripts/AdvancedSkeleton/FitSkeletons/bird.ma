//Maya ASCII 2012 scene
//Name: bird.ma
//Last modified: Thu, Sep 12, 2013 07:11:00 PM
//Codeset: 1252
requires maya "2008";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t pal;
fileInfo "application" "maya";
fileInfo "product" "Maya 2012";
fileInfo "version" "2012 x64";
fileInfo "cutIdentifier" "001200000000-796618";
fileInfo "osv" "Microsoft Business Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.1479709197359371 2.1941422277572449 3.3930768375385254 ;
	setAttr ".r" -type "double3" -15.814922707140893 -44.599999999981378 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".ncp" 1;
	setAttr ".coi" 4.7826566253268155;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -2.8959614430915073 0.63474921383331995 0.055662222684067064 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.8959614430915073 129.8589772880953 0.055662222684095757 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 1;
	setAttr ".coi" 100.1;
	setAttr ".ow" 13.313122615618653;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.8959614430915073 0.63474921383331995 129.40931629835288 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 1;
	setAttr ".coi" 100.1;
	setAttr ".ow" 11.004622939274235;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 101.31869478795808 0.45203960949248784 -0.48388044884417353 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 0 -1.4210854715202004e-014 ;
	setAttr ".rpt" -type "double3" -1.4210854715202007e-014 0 1.4210854715202007e-014 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 1;
	setAttr ".coi" 103.38306011569091;
	setAttr ".ow" 4.8794760797730659;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -2.0643653277328298 0.60732651317330688 -0.29992965959537815 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "bird";
createNode joint -n "Root" -p "bird";
	addAttr -ci true -sn "run" -ln "run" -dt "string";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0 1.0580263833117491 -0.37006808183555928 ;
	setAttr ".ro" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999972 -60.057761640087122 90.000000000000071 ;
	setAttr ".dl" yes;
	setAttr ".typ" 1;
	setAttr -k on ".run";
createNode joint -n "BackA" -p "Root";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.09690056053649998 0 3.3399102491782411e-017 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dl" yes;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Mid";
createNode joint -n "BackB" -p "BackA";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.22112941936058783 -1.7763568394002505e-015 3.9798139919299742e-017 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "38";
createNode joint -n "Chest" -p "BackB";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.23846479065642312 4.4408920985006262e-016 3.4930380123126286e-017 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dl" yes;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Chest";
createNode joint -n "Scapula" -p "Chest";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.19931374998987517 -0.14920355975188437 -0.39457371274715008 ;
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -98.143609110760252 89.999998627800636 90.000006905762334 ;
	setAttr ".otp" -type "string" "PropA1";
createNode joint -n "Shoulder" -p "Scapula";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.16434865912560731 2.2204460492503131e-016 1.1102230246251565e-016 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 13.003461833902003 0 ;
	setAttr ".pa" -type "double3" -4.1293130717023516e-007 0 0 ;
	setAttr ".typ" 10;
createNode joint -n "Elbow" -p "Shoulder";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.64310293807879781 -1.216998501973876e-009 6.6613381477509392e-016 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.5553929077205906 15.135705276232464 -9.6995586463752321 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "22";
createNode joint -n "Wrist" -p "Elbow";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.9795358615453218 -3.9117247219166984e-009 1.1791493337298675e-009 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 9.6932468049950558 -32.581553913641002 -17.599005170205142 ;
	setAttr ".typ" 12;
createNode joint -n "IndexFinger1" -p "Wrist";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.58385734483332996 4.3788217496398829e-010 1.9127495143322903e-009 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "8";
createNode joint -n "IndexFinger2" -p "IndexFinger1";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.43349999995200128 0.064000000325116657 9.267593359396642e-010 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "Neck" -p "Chest";
	addAttr -ci true -k true -sn "twistJoints" -ln "twistJoints" -dv 2 -min 0 -max 
		10 -at "long";
	addAttr -ci true -k true -sn "bend" -ln "bend" -min 0 -max 1 -at "bool";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.43674985207638883 -0.11624627766587858 4.1136394777375832e-016 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -28.131586414878907 ;
	setAttr ".pa" -type "double3" -1.7940447748746266e-016 6.8425179703803005e-015 0 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "37";
	setAttr -k on ".twistJoints";
createNode joint -n "Head" -p "Neck";
	addAttr -ci true -k true -sn "global" -ln "global" -dv 10 -min 0 -max 10 -at "long";
	addAttr -ci true -sn "globalConnect" -ln "globalConnect" -dv 10 -min 0 -max 10 -at "long";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.3260776445671103 -2.2204460492503131e-016 2.2046054276185107e-016 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -31.926175225208226 ;
	setAttr ".otp" -type "string" "36";
	setAttr -k on ".global" 0;
createNode joint -n "Hair" -p "Head";
	setAttr ".t" -type "double3" 0.3 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "23";
createNode joint -n "Jaw" -p "Head";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.061692624887426106 0.17275930072084966 -4.5969931233199085e-017 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 95.452109783142831 ;
	setAttr ".otp" -type "string" "31";
	setAttr ".radi" 0.5;
createNode joint -n "JawEnd" -p "Jaw";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.30100228190598188 2.2204460492503131e-016 -1.2466510715381865e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "25";
createNode joint -n "Eye" -p "Head";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.089354900367533352 0.18920836869073421 -0.15028813426131329 ;
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -173.33047333821574 63.402557530707796 95.528753825917292 ;
	setAttr ".pa" -type "double3" 8.9959671327899885e-014 -89.999999999998849 0 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Eye";
createNode joint -n "Eye1" -p "Eye";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.065788011694845216 0 1.1102230246251565e-016 ;
	setAttr ".ro" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 89.999999999999844 0 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "24";
createNode transform -n "Head_globalLocator" -p "Head";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "Head_globalLocatorShape" -p "Head_globalLocator";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
createNode transform -n "Neck_twistJointsLocator1" -p "Neck";
	addAttr -ci true -sn "twistPosition" -ln "twistPosition" -dv 1 -min 0 -max 10 -at "double";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.5 0.5 0.5 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "Neck_twistJointsLocatorShape1" -p "Neck_twistJointsLocator1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
createNode transform -n "Neck_twistJointsLocator2" -p "Neck";
	addAttr -ci true -sn "twistPosition" -ln "twistPosition" -dv 2 -min 0 -max 10 -at "double";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.5 0.5 0.5 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "Neck_twistJointsLocatorShape2" -p "Neck_twistJointsLocator2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
createNode transform -n "Neck_twistJointsLocator3" -p "Neck";
	addAttr -ci true -sn "twistPosition" -ln "twistPosition" -dv 3 -min 0 -max 10 -at "double";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.5 0.5 0.5 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "Neck_twistJointsLocatorShape3" -p "Neck_twistJointsLocator3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
createNode transform -n "Neck_twistJointsLocator4" -p "Neck";
	addAttr -ci true -sn "twistPosition" -ln "twistPosition" -dv 4 -min 0 -max 10 -at "double";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.5 0.5 0.5 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "Neck_twistJointsLocatorShape4" -p "Neck_twistJointsLocator4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
createNode transform -n "Neck_twistJointsLocator5" -p "Neck";
	addAttr -ci true -sn "twistPosition" -ln "twistPosition" -dv 5 -min 0 -max 10 -at "double";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.5 0.5 0.5 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "Neck_twistJointsLocatorShape5" -p "Neck_twistJointsLocator5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
createNode transform -n "Neck_twistJointsLocator6" -p "Neck";
	addAttr -ci true -sn "twistPosition" -ln "twistPosition" -dv 6 -min 0 -max 10 -at "double";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.5 0.5 0.5 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "Neck_twistJointsLocatorShape6" -p "Neck_twistJointsLocator6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
createNode transform -n "Neck_twistJointsLocator7" -p "Neck";
	addAttr -ci true -sn "twistPosition" -ln "twistPosition" -dv 7 -min 0 -max 10 -at "double";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.5 0.5 0.5 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "Neck_twistJointsLocatorShape7" -p "Neck_twistJointsLocator7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
createNode transform -n "Neck_twistJointsLocator8" -p "Neck";
	addAttr -ci true -sn "twistPosition" -ln "twistPosition" -dv 8 -min 0 -max 10 -at "double";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.5 0.5 0.5 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "Neck_twistJointsLocatorShape8" -p "Neck_twistJointsLocator8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
createNode transform -n "Neck_twistJointsLocator9" -p "Neck";
	addAttr -ci true -sn "twistPosition" -ln "twistPosition" -dv 9 -min 0 -max 10 -at "double";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.5 0.5 0.5 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "Neck_twistJointsLocatorShape9" -p "Neck_twistJointsLocator9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
createNode transform -n "Neck_twistJointsLocator10" -p "Neck";
	addAttr -ci true -sn "twistPosition" -ln "twistPosition" -dv 10 -min 0 -max 10 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.5 0.5 0.5 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "Neck_twistJointsLocatorShape10" -p "Neck_twistJointsLocator10";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
createNode joint -n "Hip" -p "Root";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.054487264212504591 0.42092577083935839 -0.21785485979860697 ;
	setAttr ".r" -type "double3" 0 0 27.000000804338811 ;
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 120.96736017922166 ;
	setAttr ".dl" yes;
	setAttr ".typ" 2;
createNode joint -n "Knee" -p "Hip";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.32656086305613941 2.2204460492503131e-016 -1.6653345369377348e-016 ;
	setAttr ".r" -type "double3" 0 0 -45.489983186975927 ;
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -2.2539565762279548 ;
createNode joint -n "Ankle" -p "Knee";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.33131609538368023 3.3306690738754696e-016 1.1268763699945339e-014 ;
	setAttr ".ro" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 19.718817139556307 ;
	setAttr ".pa" -type "double3" 3.1147589914174403 -1.2104724556304993 -11.405913270501992 ;
	setAttr ".dl" yes;
	setAttr ".typ" 4;
createNode joint -n "MiddleToe1" -p "Ankle";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.037175409455803624 -0.034223871722253163 -1.1437720855544953e-005 ;
	setAttr ".r" -type "double3" 0 0 0.44474830968432505 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.001445731538235883 0.019126409500461225 -85.460677228909617 ;
	setAttr ".pa" -type "double3" -0.00019030234564052423 0.00053514845282692043 25.864574245063647 ;
	setAttr ".dl" yes;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Ball";
createNode joint -n "MiddleToe2" -p "MiddleToe1";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.32268411320534396 2.2204460492503131e-016 -8.3266726846886741e-017 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dl" yes;
	setAttr ".typ" 5;
createNode joint -n "Heel" -p "Ankle";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.065233458670875724 0.015702747061489664 5.2479052930209935e-006 ;
	setAttr ".r" -type "double3" 0 -2.055155944776297e-022 7.3775844857871918e-031 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -8.8500053216200841e-006 -2.1587703395485578 -3.4285123422043102 ;
	setAttr ".dl" yes;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Heel";
createNode joint -n "Tail1" -p "Root";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.33766166475406251 -0.038589430619309306 -5.141237003924144e-017 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 180 3.5878324819902465 ;
	setAttr ".radi" 0.92091889086594292;
createNode joint -n "Tail2" -p "Tail1";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.45688826117041142 2.2204460492503131e-016 1.5935927171123654e-017 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.92971683133986383;
createNode joint -n "Tail3" -p "Tail2";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.95839271293790473 -4.4408920985006262e-016 -4.1141589008308632e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "Tail3End" -p "Tail3";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.14999999999999925 -4.4408920985006262e-016 2.360159187981702e-017 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "Tail3ASide" -p "Tail2";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.1708675557392193 -0.0025198291845165421 0.81755406230482841 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 167.43207148298185 -26.397871835987083 0.27637048550501236 ;
createNode joint -n "Tail3Side" -p "Tail3ASide";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.58321337216002211 6.6613381477509392e-016 8.3266726846886741e-017 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -166.15297244311088 -25.784862386726466 -5.866547320443777 ;
createNode joint -n "Tail3SideEnd" -p "Tail3Side";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.14999999999999991 4.4408920985006262e-016 -4.4408920985006262e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 2;
	setAttr -s 3 ".dli[1:2]"  1 2;
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode reference -n "model:modelRN";
	setAttr -s 264 ".phl";
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[141]" 0;
	setAttr ".phl[142]" 0;
	setAttr ".phl[144]" 0;
	setAttr ".phl[145]" 0;
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[150]" 0;
	setAttr ".phl[151]" 0;
	setAttr ".phl[153]" 0;
	setAttr ".phl[154]" 0;
	setAttr ".phl[156]" 0;
	setAttr ".phl[157]" 0;
	setAttr ".phl[159]" 0;
	setAttr ".phl[160]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[163]" 0;
	setAttr ".phl[165]" 0;
	setAttr ".phl[166]" 0;
	setAttr ".phl[168]" 0;
	setAttr ".phl[169]" 0;
	setAttr ".phl[171]" 0;
	setAttr ".phl[172]" 0;
	setAttr ".phl[174]" 0;
	setAttr ".phl[175]" 0;
	setAttr ".phl[177]" 0;
	setAttr ".phl[178]" 0;
	setAttr ".phl[180]" 0;
	setAttr ".phl[181]" 0;
	setAttr ".phl[183]" 0;
	setAttr ".phl[184]" 0;
	setAttr ".phl[186]" 0;
	setAttr ".phl[187]" 0;
	setAttr ".phl[189]" 0;
	setAttr ".phl[190]" 0;
	setAttr ".phl[192]" 0;
	setAttr ".phl[193]" 0;
	setAttr ".phl[195]" 0;
	setAttr ".phl[196]" 0;
	setAttr ".phl[198]" 0;
	setAttr ".phl[199]" 0;
	setAttr ".phl[201]" 0;
	setAttr ".phl[202]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".phl[207]" 0;
	setAttr ".phl[208]" 0;
	setAttr ".phl[210]" 0;
	setAttr ".phl[211]" 0;
	setAttr ".phl[213]" 0;
	setAttr ".phl[214]" 0;
	setAttr ".phl[216]" 0;
	setAttr ".phl[217]" 0;
	setAttr ".phl[219]" 0;
	setAttr ".phl[220]" 0;
	setAttr ".phl[222]" 0;
	setAttr ".phl[223]" 0;
	setAttr ".phl[225]" 0;
	setAttr ".phl[226]" 0;
	setAttr ".phl[228]" 0;
	setAttr ".phl[229]" 0;
	setAttr ".phl[231]" 0;
	setAttr ".phl[232]" 0;
	setAttr ".phl[234]" 0;
	setAttr ".phl[235]" 0;
	setAttr ".phl[237]" 0;
	setAttr ".phl[238]" 0;
	setAttr ".phl[240]" 0;
	setAttr ".phl[241]" 0;
	setAttr ".phl[243]" 0;
	setAttr ".phl[244]" 0;
	setAttr ".phl[246]" 0;
	setAttr ".phl[247]" 0;
	setAttr ".phl[249]" 0;
	setAttr ".phl[250]" 0;
	setAttr ".phl[252]" 0;
	setAttr ".phl[253]" 0;
	setAttr ".phl[255]" 0;
	setAttr ".phl[256]" 0;
	setAttr ".phl[258]" 0;
	setAttr ".phl[259]" 0;
	setAttr ".phl[261]" 0;
	setAttr ".phl[262]" 0;
	setAttr ".phl[264]" 0;
	setAttr ".phl[265]" 0;
	setAttr ".phl[267]" 0;
	setAttr ".phl[268]" 0;
	setAttr ".phl[270]" 0;
	setAttr ".phl[271]" 0;
	setAttr ".phl[273]" 0;
	setAttr ".phl[274]" 0;
	setAttr ".phl[276]" 0;
	setAttr ".phl[277]" 0;
	setAttr ".phl[279]" 0;
	setAttr ".phl[280]" 0;
	setAttr ".phl[282]" 0;
	setAttr ".phl[283]" 0;
	setAttr ".phl[285]" 0;
	setAttr ".phl[286]" 0;
	setAttr ".phl[288]" 0;
	setAttr ".phl[289]" 0;
	setAttr ".phl[291]" 0;
	setAttr ".phl[292]" 0;
	setAttr ".phl[294]" 0;
	setAttr ".phl[295]" 0;
	setAttr ".phl[297]" 0;
	setAttr ".phl[298]" 0;
	setAttr ".phl[300]" 0;
	setAttr ".phl[301]" 0;
	setAttr ".phl[303]" 0;
	setAttr ".phl[304]" 0;
	setAttr ".phl[306]" 0;
	setAttr ".phl[307]" 0;
	setAttr ".phl[309]" 0;
	setAttr ".phl[310]" 0;
	setAttr ".phl[312]" 0;
	setAttr ".phl[313]" 0;
	setAttr ".phl[315]" 0;
	setAttr ".phl[316]" 0;
	setAttr ".phl[318]" 0;
	setAttr ".phl[319]" 0;
	setAttr ".phl[321]" 0;
	setAttr ".phl[322]" 0;
	setAttr ".phl[324]" 0;
	setAttr ".phl[325]" 0;
	setAttr ".phl[327]" 0;
	setAttr ".phl[328]" 0;
	setAttr ".phl[330]" 0;
	setAttr ".phl[331]" 0;
	setAttr ".phl[333]" 0;
	setAttr ".phl[334]" 0;
	setAttr ".phl[336]" 0;
	setAttr ".phl[337]" 0;
	setAttr ".phl[339]" 0;
	setAttr ".phl[340]" 0;
	setAttr ".phl[342]" 0;
	setAttr ".phl[343]" 0;
	setAttr ".phl[345]" 0;
	setAttr ".phl[346]" 0;
	setAttr ".phl[348]" 0;
	setAttr ".phl[349]" 0;
	setAttr ".phl[351]" 0;
	setAttr ".phl[352]" 0;
	setAttr ".phl[354]" 0;
	setAttr ".phl[355]" 0;
	setAttr ".phl[357]" 0;
	setAttr ".phl[358]" 0;
	setAttr ".phl[360]" 0;
	setAttr ".phl[361]" 0;
	setAttr ".phl[363]" 0;
	setAttr ".phl[364]" 0;
	setAttr ".phl[366]" 0;
	setAttr ".phl[367]" 0;
	setAttr ".phl[369]" 0;
	setAttr ".phl[370]" 0;
	setAttr ".phl[372]" 0;
	setAttr ".phl[373]" 0;
	setAttr ".phl[375]" 0;
	setAttr ".phl[376]" 0;
	setAttr ".phl[378]" 0;
	setAttr ".phl[379]" 0;
	setAttr ".phl[381]" 0;
	setAttr ".phl[382]" 0;
	setAttr ".phl[384]" 0;
	setAttr ".phl[385]" 0;
	setAttr ".phl[387]" 0;
	setAttr ".phl[388]" 0;
	setAttr ".phl[390]" 0;
	setAttr ".phl[391]" 0;
	setAttr ".phl[393]" 0;
	setAttr ".phl[394]" 0;
	setAttr ".phl[396]" 0;
	setAttr ".phl[397]" 0;
	setAttr ".phl[399]" 0;
	setAttr ".phl[400]" 0;
	setAttr ".phl[402]" 0;
	setAttr ".phl[403]" 0;
	setAttr ".phl[405]" 0;
	setAttr ".phl[406]" 0;
	setAttr ".phl[408]" 0;
	setAttr ".phl[409]" 0;
	setAttr ".phl[411]" 0;
	setAttr ".phl[412]" 0;
	setAttr ".phl[414]" 0;
	setAttr ".phl[415]" 0;
	setAttr ".phl[417]" 0;
	setAttr ".phl[418]" 0;
	setAttr ".phl[420]" 0;
	setAttr ".phl[421]" 0;
	setAttr ".phl[423]" 0;
	setAttr ".phl[424]" 0;
	setAttr ".phl[426]" 0;
	setAttr ".phl[427]" 0;
	setAttr ".phl[429]" 0;
	setAttr ".phl[430]" 0;
	setAttr ".phl[432]" 0;
	setAttr ".phl[433]" 0;
	setAttr ".phl[435]" 0;
	setAttr ".phl[436]" 0;
	setAttr ".phl[438]" 0;
	setAttr ".phl[439]" 0;
	setAttr ".phl[441]" 0;
	setAttr ".phl[442]" 0;
	setAttr ".phl[444]" 0;
	setAttr ".phl[445]" 0;
	setAttr ".phl[447]" 0;
	setAttr ".phl[448]" 0;
	setAttr ".phl[450]" 0;
	setAttr ".phl[451]" 0;
	setAttr ".phl[453]" 0;
	setAttr ".phl[454]" 0;
	setAttr ".phl[456]" 0;
	setAttr ".phl[457]" 0;
	setAttr ".phl[459]" 0;
	setAttr ".phl[460]" 0;
	setAttr ".phl[462]" 0;
	setAttr ".phl[463]" 0;
	setAttr ".phl[465]" 0;
	setAttr ".phl[466]" 0;
	setAttr ".phl[468]" 0;
	setAttr ".phl[469]" 0;
	setAttr ".phl[471]" 0;
	setAttr ".phl[472]" 0;
	setAttr ".phl[474]" 0;
	setAttr ".phl[475]" 0;
	setAttr ".phl[477]" 0;
	setAttr ".phl[478]" 0;
	setAttr ".phl[480]" 0;
	setAttr ".phl[481]" 0;
	setAttr ".phl[483]" 0;
	setAttr ".phl[484]" 0;
	setAttr ".phl[486]" 0;
	setAttr ".phl[487]" 0;
	setAttr ".phl[489]" 0;
	setAttr ".phl[490]" 0;
	setAttr ".phl[492]" 0;
	setAttr ".phl[493]" 0;
	setAttr ".phl[495]" 0;
	setAttr ".phl[496]" 0;
	setAttr ".phl[498]" 0;
	setAttr ".phl[499]" 0;
	setAttr ".phl[501]" 0;
	setAttr ".phl[502]" 0;
	setAttr ".phl[504]" 0;
	setAttr ".phl[505]" 0;
	setAttr ".phl[507]" 0;
	setAttr ".phl[508]" 0;
	setAttr ".phl[510]" 0;
	setAttr ".phl[511]" 0;
	setAttr ".phl[513]" 0;
	setAttr ".phl[514]" 0;
	setAttr ".phl[516]" 0;
	setAttr ".phl[517]" 0;
	setAttr ".phl[519]" 0;
	setAttr ".phl[520]" 0;
	setAttr ".phl[522]" 0;
	setAttr ".phl[523]" 0;
	setAttr ".phl[525]" 0;
	setAttr ".phl[526]" 0;
	setAttr ".phl[528]" 0;
	setAttr ".phl[529]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"model:modelRN"
		"modelRN" 846
		0 "|modelRNfosterParent1|feather261ShapeDeformed" "|model:geo|model:feather261" 
		"-s -r "
		0 "|modelRNfosterParent1|feather262ShapeDeformed" "|model:geo|model:feather262" 
		"-s -r "
		0 "|modelRNfosterParent1|feather263ShapeDeformed" "|model:geo|model:feather263" 
		"-s -r "
		0 "|modelRNfosterParent1|feather264ShapeDeformed" "|model:geo|model:feather264" 
		"-s -r "
		0 "|modelRNfosterParent1|feather265ShapeDeformed" "|model:geo|model:feather265" 
		"-s -r "
		0 "|modelRNfosterParent1|feather266ShapeDeformed" "|model:geo|model:feather266" 
		"-s -r "
		0 "|modelRNfosterParent1|feather267ShapeDeformed" "|model:geo|model:feather267" 
		"-s -r "
		0 "|modelRNfosterParent1|feather268ShapeDeformed" "|model:geo|model:feather268" 
		"-s -r "
		0 "|modelRNfosterParent1|feather269ShapeDeformed" "|model:geo|model:feather269" 
		"-s -r "
		0 "|modelRNfosterParent1|feather270ShapeDeformed" "|model:geo|model:feather270" 
		"-s -r "
		0 "|modelRNfosterParent1|feather271ShapeDeformed" "|model:geo|model:feather271" 
		"-s -r "
		0 "|modelRNfosterParent1|feather272ShapeDeformed" "|model:geo|model:feather272" 
		"-s -r "
		0 "|modelRNfosterParent1|feather273ShapeDeformed" "|model:geo|model:feather273" 
		"-s -r "
		0 "|modelRNfosterParent1|feather274ShapeDeformed" "|model:geo|model:feather274" 
		"-s -r "
		0 "|modelRNfosterParent1|feather275ShapeDeformed" "|model:geo|model:feather275" 
		"-s -r "
		0 "|modelRNfosterParent1|feather276ShapeDeformed" "|model:geo|model:feather276" 
		"-s -r "
		0 "|modelRNfosterParent1|feather277ShapeDeformed" "|model:geo|model:feather277" 
		"-s -r "
		0 "|modelRNfosterParent1|feather278ShapeDeformed" "|model:geo|model:feather278" 
		"-s -r "
		0 "|modelRNfosterParent1|feather279ShapeDeformed" "|model:geo|model:feather279" 
		"-s -r "
		0 "|modelRNfosterParent1|feather280ShapeDeformed" "|model:geo|model:feather280" 
		"-s -r "
		0 "|modelRNfosterParent1|feather281ShapeDeformed" "|model:geo|model:feather281" 
		"-s -r "
		0 "|modelRNfosterParent1|feather282ShapeDeformed" "|model:geo|model:feather282" 
		"-s -r "
		0 "|modelRNfosterParent1|feather283ShapeDeformed" "|model:geo|model:feather283" 
		"-s -r "
		0 "|modelRNfosterParent1|feather284ShapeDeformed" "|model:geo|model:feather284" 
		"-s -r "
		0 "|modelRNfosterParent1|feather285ShapeDeformed" "|model:geo|model:feather285" 
		"-s -r "
		0 "|modelRNfosterParent1|feather286ShapeDeformed" "|model:geo|model:feather286" 
		"-s -r "
		0 "|modelRNfosterParent1|feather287ShapeDeformed" "|model:geo|model:feather287" 
		"-s -r "
		0 "|modelRNfosterParent1|feather288ShapeDeformed" "|model:geo|model:feather288" 
		"-s -r "
		0 "|modelRNfosterParent1|feather289ShapeDeformed" "|model:geo|model:feather289" 
		"-s -r "
		0 "|modelRNfosterParent1|feather290ShapeDeformed" "|model:geo|model:feather290" 
		"-s -r "
		0 "|modelRNfosterParent1|feather291ShapeDeformed" "|model:geo|model:feather291" 
		"-s -r "
		0 "|modelRNfosterParent1|feather292ShapeDeformed" "|model:geo|model:feather292" 
		"-s -r "
		0 "|modelRNfosterParent1|feather293ShapeDeformed" "|model:geo|model:feather293" 
		"-s -r "
		0 "|modelRNfosterParent1|feather294ShapeDeformed" "|model:geo|model:feather294" 
		"-s -r "
		0 "|modelRNfosterParent1|feather295ShapeDeformed" "|model:geo|model:feather295" 
		"-s -r "
		0 "|modelRNfosterParent1|feather296ShapeDeformed" "|model:geo|model:feather296" 
		"-s -r "
		0 "|modelRNfosterParent1|feather297ShapeDeformed" "|model:geo|model:feather297" 
		"-s -r "
		0 "|modelRNfosterParent1|feather298ShapeDeformed" "|model:geo|model:feather298" 
		"-s -r "
		0 "|modelRNfosterParent1|feather299ShapeDeformed" "|model:geo|model:feather299" 
		"-s -r "
		0 "|modelRNfosterParent1|feather300ShapeDeformed" "|model:geo|model:feather300" 
		"-s -r "
		0 "|modelRNfosterParent1|feather301ShapeDeformed" "|model:geo|model:feather301" 
		"-s -r "
		0 "|modelRNfosterParent1|feather302ShapeDeformed" "|model:geo|model:feather302" 
		"-s -r "
		0 "|modelRNfosterParent1|feather303ShapeDeformed" "|model:geo|model:feather303" 
		"-s -r "
		0 "|modelRNfosterParent1|feather304ShapeDeformed" "|model:geo|model:feather304" 
		"-s -r "
		0 "|modelRNfosterParent1|feather305ShapeDeformed" "|model:geo|model:feather305" 
		"-s -r "
		0 "|modelRNfosterParent1|feather306ShapeDeformed" "|model:geo|model:feather306" 
		"-s -r "
		0 "|modelRNfosterParent1|feather307ShapeDeformed" "|model:geo|model:feather307" 
		"-s -r "
		0 "|modelRNfosterParent1|feather308ShapeDeformed" "|model:geo|model:feather308" 
		"-s -r "
		0 "|modelRNfosterParent1|feather309ShapeDeformed" "|model:geo|model:feather309" 
		"-s -r "
		0 "|modelRNfosterParent1|feather310ShapeDeformed" "|model:geo|model:feather310" 
		"-s -r "
		0 "|modelRNfosterParent1|feather311ShapeDeformed" "|model:geo|model:feather311" 
		"-s -r "
		0 "|modelRNfosterParent1|feather312ShapeDeformed" "|model:geo|model:feather312" 
		"-s -r "
		0 "|modelRNfosterParent1|feather313ShapeDeformed" "|model:geo|model:feather313" 
		"-s -r "
		0 "|modelRNfosterParent1|feather314ShapeDeformed" "|model:geo|model:feather314" 
		"-s -r "
		0 "|modelRNfosterParent1|feather315ShapeDeformed" "|model:geo|model:feather315" 
		"-s -r "
		0 "|modelRNfosterParent1|feather316ShapeDeformed" "|model:geo|model:feather316" 
		"-s -r "
		0 "|modelRNfosterParent1|feather317ShapeDeformed" "|model:geo|model:feather317" 
		"-s -r "
		0 "|modelRNfosterParent1|feather318ShapeDeformed" "|model:geo|model:feather318" 
		"-s -r "
		0 "|modelRNfosterParent1|feather319ShapeDeformed" "|model:geo|model:feather319" 
		"-s -r "
		0 "|modelRNfosterParent1|feather320ShapeDeformed" "|model:geo|model:feather320" 
		"-s -r "
		0 "|modelRNfosterParent1|feather321ShapeDeformed" "|model:geo|model:feather321" 
		"-s -r "
		0 "|modelRNfosterParent1|feather322ShapeDeformed" "|model:geo|model:feather322" 
		"-s -r "
		0 "|modelRNfosterParent1|feather323ShapeDeformed" "|model:geo|model:feather323" 
		"-s -r "
		0 "|modelRNfosterParent1|feather324ShapeDeformed" "|model:geo|model:feather324" 
		"-s -r "
		0 "|modelRNfosterParent1|feather325ShapeDeformed" "|model:geo|model:feather325" 
		"-s -r "
		0 "|modelRNfosterParent1|feather326ShapeDeformed" "|model:geo|model:feather326" 
		"-s -r "
		0 "|modelRNfosterParent1|feather327ShapeDeformed" "|model:geo|model:feather327" 
		"-s -r "
		0 "|modelRNfosterParent1|feather328ShapeDeformed" "|model:geo|model:feather328" 
		"-s -r "
		0 "|modelRNfosterParent1|feather329ShapeDeformed" "|model:geo|model:feather329" 
		"-s -r "
		0 "|modelRNfosterParent1|feather330ShapeDeformed" "|model:geo|model:feather330" 
		"-s -r "
		0 "|modelRNfosterParent1|feather331ShapeDeformed" "|model:geo|model:feather331" 
		"-s -r "
		0 "|modelRNfosterParent1|feather332ShapeDeformed" "|model:geo|model:feather332" 
		"-s -r "
		0 "|modelRNfosterParent1|feather333ShapeDeformed" "|model:geo|model:feather333" 
		"-s -r "
		0 "|modelRNfosterParent1|feather334ShapeDeformed" "|model:geo|model:feather334" 
		"-s -r "
		0 "|modelRNfosterParent1|feather335ShapeDeformed" "|model:geo|model:feather335" 
		"-s -r "
		0 "|modelRNfosterParent1|feather336ShapeDeformed" "|model:geo|model:feather336" 
		"-s -r "
		0 "|modelRNfosterParent1|feather337ShapeDeformed" "|model:geo|model:feather337" 
		"-s -r "
		0 "|modelRNfosterParent1|feather338ShapeDeformed" "|model:geo|model:feather338" 
		"-s -r "
		0 "|modelRNfosterParent1|feather339ShapeDeformed" "|model:geo|model:feather339" 
		"-s -r "
		0 "|modelRNfosterParent1|feather340ShapeDeformed" "|model:geo|model:feather340" 
		"-s -r "
		0 "|modelRNfosterParent1|feather341ShapeDeformed" "|model:geo|model:feather341" 
		"-s -r "
		0 "|modelRNfosterParent1|feather342ShapeDeformed" "|model:geo|model:feather342" 
		"-s -r "
		0 "|modelRNfosterParent1|feather343ShapeDeformed" "|model:geo|model:feather343" 
		"-s -r "
		0 "|modelRNfosterParent1|feather344ShapeDeformed" "|model:geo|model:feather344" 
		"-s -r "
		0 "|modelRNfosterParent1|feather345ShapeDeformed" "|model:geo|model:feather345" 
		"-s -r "
		0 "|modelRNfosterParent1|feather346ShapeDeformed" "|model:geo|model:feather346" 
		"-s -r "
		0 "|modelRNfosterParent1|feather347ShapeDeformed" "|model:geo|model:feather347" 
		"-s -r "
		0 "|modelRNfosterParent1|feather348ShapeDeformed" "|model:geo|model:feather348" 
		"-s -r "
		0 "|modelRNfosterParent1|feather349ShapeDeformed" "|model:geo|model:feather349" 
		"-s -r "
		0 "|modelRNfosterParent1|feather350ShapeDeformed" "|model:geo|model:feather350" 
		"-s -r "
		0 "|modelRNfosterParent1|feather351ShapeDeformed" "|model:geo|model:feather351" 
		"-s -r "
		0 "|modelRNfosterParent1|feather352ShapeDeformed" "|model:geo|model:feather352" 
		"-s -r "
		0 "|modelRNfosterParent1|feather353ShapeDeformed" "|model:geo|model:feather353" 
		"-s -r "
		0 "|modelRNfosterParent1|feather354ShapeDeformed" "|model:geo|model:feather354" 
		"-s -r "
		0 "|modelRNfosterParent1|feather355ShapeDeformed" "|model:geo|model:feather355" 
		"-s -r "
		0 "|modelRNfosterParent1|feather356ShapeDeformed" "|model:geo|model:feather356" 
		"-s -r "
		0 "|modelRNfosterParent1|feather357ShapeDeformed" "|model:geo|model:feather357" 
		"-s -r "
		0 "|modelRNfosterParent1|feather358ShapeDeformed" "|model:geo|model:feather358" 
		"-s -r "
		0 "|modelRNfosterParent1|feather359ShapeDeformed" "|model:geo|model:feather359" 
		"-s -r "
		0 "|modelRNfosterParent1|feather360ShapeDeformed" "|model:geo|model:feather360" 
		"-s -r "
		0 "|modelRNfosterParent1|feather361ShapeDeformed" "|model:geo|model:feather361" 
		"-s -r "
		0 "|modelRNfosterParent1|feather362ShapeDeformed" "|model:geo|model:feather362" 
		"-s -r "
		0 "|modelRNfosterParent1|feather363ShapeDeformed" "|model:geo|model:feather363" 
		"-s -r "
		0 "|modelRNfosterParent1|feather364ShapeDeformed" "|model:geo|model:feather364" 
		"-s -r "
		0 "|modelRNfosterParent1|feather365ShapeDeformed" "|model:geo|model:feather365" 
		"-s -r "
		0 "|modelRNfosterParent1|feather366ShapeDeformed" "|model:geo|model:feather366" 
		"-s -r "
		0 "|modelRNfosterParent1|feather367ShapeDeformed" "|model:geo|model:feather367" 
		"-s -r "
		0 "|modelRNfosterParent1|feather368ShapeDeformed" "|model:geo|model:feather368" 
		"-s -r "
		0 "|modelRNfosterParent1|feather369ShapeDeformed" "|model:geo|model:feather369" 
		"-s -r "
		0 "|modelRNfosterParent1|feather370ShapeDeformed" "|model:geo|model:feather370" 
		"-s -r "
		0 "|modelRNfosterParent1|feather371ShapeDeformed" "|model:geo|model:feather371" 
		"-s -r "
		0 "|modelRNfosterParent1|feather372ShapeDeformed" "|model:geo|model:feather372" 
		"-s -r "
		0 "|modelRNfosterParent1|feather373ShapeDeformed" "|model:geo|model:feather373" 
		"-s -r "
		0 "|modelRNfosterParent1|feather374ShapeDeformed" "|model:geo|model:feather374" 
		"-s -r "
		0 "|modelRNfosterParent1|feather375ShapeDeformed" "|model:geo|model:feather375" 
		"-s -r "
		0 "|modelRNfosterParent1|feather376ShapeDeformed" "|model:geo|model:feather376" 
		"-s -r "
		0 "|modelRNfosterParent1|feather377ShapeDeformed" "|model:geo|model:feather377" 
		"-s -r "
		0 "|modelRNfosterParent1|feather378ShapeDeformed" "|model:geo|model:feather378" 
		"-s -r "
		0 "|modelRNfosterParent1|feather379ShapeDeformed" "|model:geo|model:feather379" 
		"-s -r "
		0 "|modelRNfosterParent1|feather380ShapeDeformed" "|model:geo|model:feather380" 
		"-s -r "
		0 "|modelRNfosterParent1|feather381ShapeDeformed" "|model:geo|model:feather381" 
		"-s -r "
		0 "|modelRNfosterParent1|feather382ShapeDeformed" "|model:geo|model:feather382" 
		"-s -r "
		0 "|modelRNfosterParent1|feather383ShapeDeformed" "|model:geo|model:feather383" 
		"-s -r "
		0 "|modelRNfosterParent1|feather384ShapeDeformed" "|model:geo|model:feather384" 
		"-s -r "
		0 "|modelRNfosterParent1|feather385ShapeDeformed" "|model:geo|model:feather385" 
		"-s -r "
		0 "|modelRNfosterParent1|feather386ShapeDeformed" "|model:geo|model:feather386" 
		"-s -r "
		0 "|modelRNfosterParent1|feather387ShapeDeformed" "|model:geo|model:feather387" 
		"-s -r "
		0 "|modelRNfosterParent1|feather388ShapeDeformed" "|model:geo|model:feather388" 
		"-s -r "
		0 "|modelRNfosterParent1|feather389ShapeDeformed" "|model:geo|model:feather389" 
		"-s -r "
		0 "|modelRNfosterParent1|feather390ShapeDeformed" "|model:geo|model:feather390" 
		"-s -r "
		0 "|modelRNfosterParent1|feather391ShapeDeformed" "|model:geo|model:feather391" 
		"-s -r "
		0 "|modelRNfosterParent1|feather392ShapeDeformed" "|model:geo|model:feather392" 
		"-s -r "
		1 |model:geo|model:body_newUV|model:body_newUVShape "miShadingSamplesOverride" 
		"mso" " -ci 1 -min 0 -max 1 -at \"bool\""
		1 |model:geo|model:body_newUV|model:body_newUVShape "miShadingSamples" "msh" 
		" -ci 1 -min 0 -smx 8 -at \"float\""
		1 |model:geo|model:body_newUV|model:body_newUVShape "miMaxDisplaceOverride" 
		"mdo" " -ci 1 -min 0 -max 1 -at \"bool\""
		1 |model:geo|model:body_newUV|model:body_newUVShape "miMaxDisplace" "mmd" 
		" -ci 1 -min 0 -smx 1 -at \"float\""
		2 "|model:geo|model:body_newUV|model:body_newUVShape" "miShadingSamplesOverride" 
		" 0"
		2 "|model:geo|model:body_newUV|model:body_newUVShape" "miShadingSamples" 
		" 0"
		2 "|model:geo|model:body_newUV|model:body_newUVShape" "miMaxDisplaceOverride" 
		" 0"
		2 "|model:geo|model:body_newUV|model:body_newUVShape" "miMaxDisplace" " 0"
		
		2 "|model:geo|model:feather261|model:feather261Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather262|model:feather262Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather263|model:feather263Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather264|model:feather264Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather265|model:feather265Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather266|model:feather266Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather267|model:feather267Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather268|model:feather268Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather269|model:feather269Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather270|model:feather270Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather271|model:feather271Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather272|model:feather272Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather273|model:feather273Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather274|model:feather274Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather275|model:feather275Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather276|model:feather276Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather277|model:feather277Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather278|model:feather278Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather279|model:feather279Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather280|model:feather280Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather281|model:feather281Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather282|model:feather282Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather283|model:feather283Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather284|model:feather284Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather285|model:feather285Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather286|model:feather286Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather287|model:feather287Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather288|model:feather288Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather289|model:feather289Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather290|model:feather290Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather291|model:feather291Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather292|model:feather292Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather293|model:feather293Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather294|model:feather294Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather295|model:feather295Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather296|model:feather296Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather297|model:feather297Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather298|model:feather298Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather299|model:feather299Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather300|model:feather300Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather301|model:feather301Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather302|model:feather302Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather303|model:feather303Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather304|model:feather304Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather305|model:feather305Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather306|model:feather306Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather307|model:feather307Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather308|model:feather308Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather309|model:feather309Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather310|model:feather310Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather311|model:feather311Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather312|model:feather312Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather313|model:feather313Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather314|model:feather314Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather315|model:feather315Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather316|model:feather316Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather317|model:feather317Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather318|model:feather318Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather319|model:feather319Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather320|model:feather320Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather321|model:feather321Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather322|model:feather322Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather323|model:feather323Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather324|model:feather324Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather325|model:feather325Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather326|model:feather326Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather327|model:feather327Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather328|model:feather328Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather329|model:feather329Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather330|model:feather330Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather331|model:feather331Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather332|model:feather332Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather333|model:feather333Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather334|model:feather334Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather335|model:feather335Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather336|model:feather336Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather337|model:feather337Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather338|model:feather338Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather339|model:feather339Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather340|model:feather340Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather341|model:feather341Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather342|model:feather342Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather343|model:feather343Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather344|model:feather344Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather345|model:feather345Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather346|model:feather346Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather347|model:feather347Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather348|model:feather348Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather349|model:feather349Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather350|model:feather350Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather351|model:feather351Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather352|model:feather352Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather353|model:feather353Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather354|model:feather354Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather355|model:feather355Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather356|model:feather356Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather357|model:feather357Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather358|model:feather358Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather359|model:feather359Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather360|model:feather360Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather361|model:feather361Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather362|model:feather362Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather363|model:feather363Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather364|model:feather364Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather365|model:feather365Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather366|model:feather366Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather367|model:feather367Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather368|model:feather368Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather369|model:feather369Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather370|model:feather370Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather371|model:feather371Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather372|model:feather372Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather373|model:feather373Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather374|model:feather374Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather375|model:feather375Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather376|model:feather376Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather377|model:feather377Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather378|model:feather378Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather379|model:feather379Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather380|model:feather380Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather381|model:feather381Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather382|model:feather382Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather383|model:feather383Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather384|model:feather384Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather385|model:feather385Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather386|model:feather386Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather387|model:feather387Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather388|model:feather388Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather389|model:feather389Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather390|model:feather390Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather391|model:feather391Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather392|model:feather392Shape" "intermediateObject" 
		" 1"
		5 4 "model:modelRN" "|model:geo|model:feather109.drawOverride" "model:modelRN.placeHolderList[2]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather110.drawOverride" "model:modelRN.placeHolderList[3]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather111.drawOverride" "model:modelRN.placeHolderList[4]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather112.drawOverride" "model:modelRN.placeHolderList[5]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather113.drawOverride" "model:modelRN.placeHolderList[6]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather114.drawOverride" "model:modelRN.placeHolderList[7]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather115.drawOverride" "model:modelRN.placeHolderList[8]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather116.drawOverride" "model:modelRN.placeHolderList[9]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather117.drawOverride" "model:modelRN.placeHolderList[10]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather118.drawOverride" "model:modelRN.placeHolderList[11]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather73.drawOverride" "model:modelRN.placeHolderList[12]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather74.drawOverride" "model:modelRN.placeHolderList[13]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather75.drawOverride" "model:modelRN.placeHolderList[14]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather76.drawOverride" "model:modelRN.placeHolderList[15]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather77.drawOverride" "model:modelRN.placeHolderList[16]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather78.drawOverride" "model:modelRN.placeHolderList[17]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather79.drawOverride" "model:modelRN.placeHolderList[18]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather80.drawOverride" "model:modelRN.placeHolderList[19]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather81.drawOverride" "model:modelRN.placeHolderList[20]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather82.drawOverride" "model:modelRN.placeHolderList[21]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather83.drawOverride" "model:modelRN.placeHolderList[22]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather85.drawOverride" "model:modelRN.placeHolderList[23]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather84.drawOverride" "model:modelRN.placeHolderList[24]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather86.drawOverride" "model:modelRN.placeHolderList[25]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather87.drawOverride" "model:modelRN.placeHolderList[26]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather88.drawOverride" "model:modelRN.placeHolderList[27]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather89.drawOverride" "model:modelRN.placeHolderList[28]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather90.drawOverride" "model:modelRN.placeHolderList[29]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather120.drawOverride" "model:modelRN.placeHolderList[30]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather121.drawOverride" "model:modelRN.placeHolderList[31]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather122.drawOverride" "model:modelRN.placeHolderList[32]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather123.drawOverride" "model:modelRN.placeHolderList[33]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather124.drawOverride" "model:modelRN.placeHolderList[34]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather125.drawOverride" "model:modelRN.placeHolderList[35]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather126.drawOverride" "model:modelRN.placeHolderList[36]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather127.drawOverride" "model:modelRN.placeHolderList[37]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather119.drawOverride" "model:modelRN.placeHolderList[38]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather91.drawOverride" "model:modelRN.placeHolderList[39]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather92.drawOverride" "model:modelRN.placeHolderList[40]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather128.drawOverride" "model:modelRN.placeHolderList[41]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather93.drawOverride" "model:modelRN.placeHolderList[42]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather94.drawOverride" "model:modelRN.placeHolderList[43]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather95.drawOverride" "model:modelRN.placeHolderList[44]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather97.drawOverride" "model:modelRN.placeHolderList[45]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather96.drawOverride" "model:modelRN.placeHolderList[46]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather98.drawOverride" "model:modelRN.placeHolderList[47]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather100.drawOverride" "model:modelRN.placeHolderList[48]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather101.drawOverride" "model:modelRN.placeHolderList[49]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather99.drawOverride" "model:modelRN.placeHolderList[50]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather102.drawOverride" "model:modelRN.placeHolderList[51]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather103.drawOverride" "model:modelRN.placeHolderList[52]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather104.drawOverride" "model:modelRN.placeHolderList[53]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather105.drawOverride" "model:modelRN.placeHolderList[54]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather106.drawOverride" "model:modelRN.placeHolderList[55]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather107.drawOverride" "model:modelRN.placeHolderList[56]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather108.drawOverride" "model:modelRN.placeHolderList[57]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather212.drawOverride" "model:modelRN.placeHolderList[58]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather213.drawOverride" "model:modelRN.placeHolderList[59]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather214.drawOverride" "model:modelRN.placeHolderList[60]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather218.drawOverride" "model:modelRN.placeHolderList[61]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather219.drawOverride" "model:modelRN.placeHolderList[62]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather220.drawOverride" "model:modelRN.placeHolderList[63]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather221.drawOverride" "model:modelRN.placeHolderList[64]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather222.drawOverride" "model:modelRN.placeHolderList[65]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather223.drawOverride" "model:modelRN.placeHolderList[66]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather224.drawOverride" "model:modelRN.placeHolderList[67]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather225.drawOverride" "model:modelRN.placeHolderList[68]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather226.drawOverride" "model:modelRN.placeHolderList[69]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather227.drawOverride" "model:modelRN.placeHolderList[70]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather228.drawOverride" "model:modelRN.placeHolderList[71]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather229.drawOverride" "model:modelRN.placeHolderList[72]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather230.drawOverride" "model:modelRN.placeHolderList[73]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather231.drawOverride" "model:modelRN.placeHolderList[74]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather232.drawOverride" "model:modelRN.placeHolderList[75]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather233.drawOverride" "model:modelRN.placeHolderList[76]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather234.drawOverride" "model:modelRN.placeHolderList[77]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather235.drawOverride" "model:modelRN.placeHolderList[78]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather236.drawOverride" "model:modelRN.placeHolderList[79]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather237.drawOverride" "model:modelRN.placeHolderList[80]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather238.drawOverride" "model:modelRN.placeHolderList[81]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather216.drawOverride" "model:modelRN.placeHolderList[82]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather217.drawOverride" "model:modelRN.placeHolderList[83]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather239.drawOverride" "model:modelRN.placeHolderList[84]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather240.drawOverride" "model:modelRN.placeHolderList[85]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather241.drawOverride" "model:modelRN.placeHolderList[86]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather242.drawOverride" "model:modelRN.placeHolderList[87]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather243.drawOverride" "model:modelRN.placeHolderList[88]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather244.drawOverride" "model:modelRN.placeHolderList[89]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather245.drawOverride" "model:modelRN.placeHolderList[90]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather246.drawOverride" "model:modelRN.placeHolderList[91]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather247.drawOverride" "model:modelRN.placeHolderList[92]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather248.drawOverride" "model:modelRN.placeHolderList[93]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather249.drawOverride" "model:modelRN.placeHolderList[94]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather250.drawOverride" "model:modelRN.placeHolderList[95]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather251.drawOverride" "model:modelRN.placeHolderList[96]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather252.drawOverride" "model:modelRN.placeHolderList[97]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather253.drawOverride" "model:modelRN.placeHolderList[98]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather254.drawOverride" "model:modelRN.placeHolderList[99]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather255.drawOverride" "model:modelRN.placeHolderList[100]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather256.drawOverride" "model:modelRN.placeHolderList[101]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather257.drawOverride" "model:modelRN.placeHolderList[102]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather258.drawOverride" "model:modelRN.placeHolderList[103]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather259.drawOverride" "model:modelRN.placeHolderList[104]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather260.drawOverride" "model:modelRN.placeHolderList[105]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather215.drawOverride" "model:modelRN.placeHolderList[106]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather45.drawOverride" "model:modelRN.placeHolderList[107]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather49.drawOverride" "model:modelRN.placeHolderList[108]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather55.drawOverride" "model:modelRN.placeHolderList[109]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather50.drawOverride" "model:modelRN.placeHolderList[110]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather51.drawOverride" "model:modelRN.placeHolderList[111]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather47.drawOverride" "model:modelRN.placeHolderList[112]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather52.drawOverride" "model:modelRN.placeHolderList[113]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather53.drawOverride" "model:modelRN.placeHolderList[114]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather54.drawOverride" "model:modelRN.placeHolderList[115]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather56.drawOverride" "model:modelRN.placeHolderList[116]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather57.drawOverride" "model:modelRN.placeHolderList[117]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather58.drawOverride" "model:modelRN.placeHolderList[118]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather59.drawOverride" "model:modelRN.placeHolderList[119]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather60.drawOverride" "model:modelRN.placeHolderList[120]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather62.drawOverride" "model:modelRN.placeHolderList[121]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather63.drawOverride" "model:modelRN.placeHolderList[122]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather61.drawOverride" "model:modelRN.placeHolderList[123]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather65.drawOverride" "model:modelRN.placeHolderList[124]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather66.drawOverride" "model:modelRN.placeHolderList[125]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather64.drawOverride" "model:modelRN.placeHolderList[126]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather68.drawOverride" "model:modelRN.placeHolderList[127]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather67.drawOverride" "model:modelRN.placeHolderList[128]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather70.drawOverride" "model:modelRN.placeHolderList[129]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather69.drawOverride" "model:modelRN.placeHolderList[130]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather71.drawOverride" "model:modelRN.placeHolderList[131]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather72.drawOverride" "model:modelRN.placeHolderList[132]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather48.drawOverride" "model:modelRN.placeHolderList[133]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather261.drawOverride" "model:modelRN.placeHolderList[134]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather261|model:feather261Shape.worldMesh" 
		"model:modelRN.placeHolderList[135]" ""
		5 3 "model:modelRN" "|model:geo|model:feather261|model:feather261Shape.worldMatrix" 
		"model:modelRN.placeHolderList[136]" ""
		5 4 "model:modelRN" "|model:geo|model:feather262.drawOverride" "model:modelRN.placeHolderList[137]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather262|model:feather262Shape.worldMesh" 
		"model:modelRN.placeHolderList[138]" ""
		5 3 "model:modelRN" "|model:geo|model:feather262|model:feather262Shape.worldMatrix" 
		"model:modelRN.placeHolderList[139]" ""
		5 4 "model:modelRN" "|model:geo|model:feather263.drawOverride" "model:modelRN.placeHolderList[140]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather263|model:feather263Shape.worldMesh" 
		"model:modelRN.placeHolderList[141]" ""
		5 3 "model:modelRN" "|model:geo|model:feather263|model:feather263Shape.worldMatrix" 
		"model:modelRN.placeHolderList[142]" ""
		5 4 "model:modelRN" "|model:geo|model:feather264.drawOverride" "model:modelRN.placeHolderList[143]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather264|model:feather264Shape.worldMesh" 
		"model:modelRN.placeHolderList[144]" ""
		5 3 "model:modelRN" "|model:geo|model:feather264|model:feather264Shape.worldMatrix" 
		"model:modelRN.placeHolderList[145]" ""
		5 4 "model:modelRN" "|model:geo|model:feather265.drawOverride" "model:modelRN.placeHolderList[146]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather265|model:feather265Shape.worldMesh" 
		"model:modelRN.placeHolderList[147]" ""
		5 3 "model:modelRN" "|model:geo|model:feather265|model:feather265Shape.worldMatrix" 
		"model:modelRN.placeHolderList[148]" ""
		5 4 "model:modelRN" "|model:geo|model:feather266.drawOverride" "model:modelRN.placeHolderList[149]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather266|model:feather266Shape.worldMesh" 
		"model:modelRN.placeHolderList[150]" ""
		5 3 "model:modelRN" "|model:geo|model:feather266|model:feather266Shape.worldMatrix" 
		"model:modelRN.placeHolderList[151]" ""
		5 4 "model:modelRN" "|model:geo|model:feather267.drawOverride" "model:modelRN.placeHolderList[152]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather267|model:feather267Shape.worldMesh" 
		"model:modelRN.placeHolderList[153]" ""
		5 3 "model:modelRN" "|model:geo|model:feather267|model:feather267Shape.worldMatrix" 
		"model:modelRN.placeHolderList[154]" ""
		5 4 "model:modelRN" "|model:geo|model:feather268.drawOverride" "model:modelRN.placeHolderList[155]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather268|model:feather268Shape.worldMesh" 
		"model:modelRN.placeHolderList[156]" ""
		5 3 "model:modelRN" "|model:geo|model:feather268|model:feather268Shape.worldMatrix" 
		"model:modelRN.placeHolderList[157]" ""
		5 4 "model:modelRN" "|model:geo|model:feather269.drawOverride" "model:modelRN.placeHolderList[158]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather269|model:feather269Shape.worldMesh" 
		"model:modelRN.placeHolderList[159]" ""
		5 3 "model:modelRN" "|model:geo|model:feather269|model:feather269Shape.worldMatrix" 
		"model:modelRN.placeHolderList[160]" ""
		5 4 "model:modelRN" "|model:geo|model:feather270.drawOverride" "model:modelRN.placeHolderList[161]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather270|model:feather270Shape.worldMesh" 
		"model:modelRN.placeHolderList[162]" ""
		5 3 "model:modelRN" "|model:geo|model:feather270|model:feather270Shape.worldMatrix" 
		"model:modelRN.placeHolderList[163]" ""
		5 4 "model:modelRN" "|model:geo|model:feather271.drawOverride" "model:modelRN.placeHolderList[164]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather271|model:feather271Shape.worldMesh" 
		"model:modelRN.placeHolderList[165]" ""
		5 3 "model:modelRN" "|model:geo|model:feather271|model:feather271Shape.worldMatrix" 
		"model:modelRN.placeHolderList[166]" ""
		5 4 "model:modelRN" "|model:geo|model:feather272.drawOverride" "model:modelRN.placeHolderList[167]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather272|model:feather272Shape.worldMesh" 
		"model:modelRN.placeHolderList[168]" ""
		5 3 "model:modelRN" "|model:geo|model:feather272|model:feather272Shape.worldMatrix" 
		"model:modelRN.placeHolderList[169]" ""
		5 4 "model:modelRN" "|model:geo|model:feather273.drawOverride" "model:modelRN.placeHolderList[170]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather273|model:feather273Shape.worldMesh" 
		"model:modelRN.placeHolderList[171]" ""
		5 3 "model:modelRN" "|model:geo|model:feather273|model:feather273Shape.worldMatrix" 
		"model:modelRN.placeHolderList[172]" ""
		5 4 "model:modelRN" "|model:geo|model:feather274.drawOverride" "model:modelRN.placeHolderList[173]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather274|model:feather274Shape.worldMesh" 
		"model:modelRN.placeHolderList[174]" ""
		5 3 "model:modelRN" "|model:geo|model:feather274|model:feather274Shape.worldMatrix" 
		"model:modelRN.placeHolderList[175]" ""
		5 4 "model:modelRN" "|model:geo|model:feather275.drawOverride" "model:modelRN.placeHolderList[176]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather275|model:feather275Shape.worldMesh" 
		"model:modelRN.placeHolderList[177]" ""
		5 3 "model:modelRN" "|model:geo|model:feather275|model:feather275Shape.worldMatrix" 
		"model:modelRN.placeHolderList[178]" ""
		5 4 "model:modelRN" "|model:geo|model:feather276.drawOverride" "model:modelRN.placeHolderList[179]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather276|model:feather276Shape.worldMesh" 
		"model:modelRN.placeHolderList[180]" ""
		5 3 "model:modelRN" "|model:geo|model:feather276|model:feather276Shape.worldMatrix" 
		"model:modelRN.placeHolderList[181]" ""
		5 4 "model:modelRN" "|model:geo|model:feather277.drawOverride" "model:modelRN.placeHolderList[182]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather277|model:feather277Shape.worldMesh" 
		"model:modelRN.placeHolderList[183]" ""
		5 3 "model:modelRN" "|model:geo|model:feather277|model:feather277Shape.worldMatrix" 
		"model:modelRN.placeHolderList[184]" ""
		5 4 "model:modelRN" "|model:geo|model:feather278.drawOverride" "model:modelRN.placeHolderList[185]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather278|model:feather278Shape.worldMesh" 
		"model:modelRN.placeHolderList[186]" ""
		5 3 "model:modelRN" "|model:geo|model:feather278|model:feather278Shape.worldMatrix" 
		"model:modelRN.placeHolderList[187]" ""
		5 4 "model:modelRN" "|model:geo|model:feather279.drawOverride" "model:modelRN.placeHolderList[188]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather279|model:feather279Shape.worldMesh" 
		"model:modelRN.placeHolderList[189]" ""
		5 3 "model:modelRN" "|model:geo|model:feather279|model:feather279Shape.worldMatrix" 
		"model:modelRN.placeHolderList[190]" ""
		5 4 "model:modelRN" "|model:geo|model:feather280.drawOverride" "model:modelRN.placeHolderList[191]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather280|model:feather280Shape.worldMesh" 
		"model:modelRN.placeHolderList[192]" ""
		5 3 "model:modelRN" "|model:geo|model:feather280|model:feather280Shape.worldMatrix" 
		"model:modelRN.placeHolderList[193]" ""
		5 4 "model:modelRN" "|model:geo|model:feather281.drawOverride" "model:modelRN.placeHolderList[194]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather281|model:feather281Shape.worldMesh" 
		"model:modelRN.placeHolderList[195]" ""
		5 3 "model:modelRN" "|model:geo|model:feather281|model:feather281Shape.worldMatrix" 
		"model:modelRN.placeHolderList[196]" ""
		5 4 "model:modelRN" "|model:geo|model:feather282.drawOverride" "model:modelRN.placeHolderList[197]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather282|model:feather282Shape.worldMesh" 
		"model:modelRN.placeHolderList[198]" ""
		5 3 "model:modelRN" "|model:geo|model:feather282|model:feather282Shape.worldMatrix" 
		"model:modelRN.placeHolderList[199]" ""
		5 4 "model:modelRN" "|model:geo|model:feather283.drawOverride" "model:modelRN.placeHolderList[200]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather283|model:feather283Shape.worldMesh" 
		"model:modelRN.placeHolderList[201]" ""
		5 3 "model:modelRN" "|model:geo|model:feather283|model:feather283Shape.worldMatrix" 
		"model:modelRN.placeHolderList[202]" ""
		5 4 "model:modelRN" "|model:geo|model:feather284.drawOverride" "model:modelRN.placeHolderList[203]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather284|model:feather284Shape.worldMesh" 
		"model:modelRN.placeHolderList[204]" ""
		5 3 "model:modelRN" "|model:geo|model:feather284|model:feather284Shape.worldMatrix" 
		"model:modelRN.placeHolderList[205]" ""
		5 4 "model:modelRN" "|model:geo|model:feather285.drawOverride" "model:modelRN.placeHolderList[206]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather285|model:feather285Shape.worldMesh" 
		"model:modelRN.placeHolderList[207]" ""
		5 3 "model:modelRN" "|model:geo|model:feather285|model:feather285Shape.worldMatrix" 
		"model:modelRN.placeHolderList[208]" ""
		5 4 "model:modelRN" "|model:geo|model:feather286.drawOverride" "model:modelRN.placeHolderList[209]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather286|model:feather286Shape.worldMesh" 
		"model:modelRN.placeHolderList[210]" ""
		5 3 "model:modelRN" "|model:geo|model:feather286|model:feather286Shape.worldMatrix" 
		"model:modelRN.placeHolderList[211]" ""
		5 4 "model:modelRN" "|model:geo|model:feather287.drawOverride" "model:modelRN.placeHolderList[212]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather287|model:feather287Shape.worldMesh" 
		"model:modelRN.placeHolderList[213]" ""
		5 3 "model:modelRN" "|model:geo|model:feather287|model:feather287Shape.worldMatrix" 
		"model:modelRN.placeHolderList[214]" ""
		5 4 "model:modelRN" "|model:geo|model:feather288.drawOverride" "model:modelRN.placeHolderList[215]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather288|model:feather288Shape.worldMesh" 
		"model:modelRN.placeHolderList[216]" ""
		5 3 "model:modelRN" "|model:geo|model:feather288|model:feather288Shape.worldMatrix" 
		"model:modelRN.placeHolderList[217]" ""
		5 4 "model:modelRN" "|model:geo|model:feather289.drawOverride" "model:modelRN.placeHolderList[218]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather289|model:feather289Shape.worldMesh" 
		"model:modelRN.placeHolderList[219]" ""
		5 3 "model:modelRN" "|model:geo|model:feather289|model:feather289Shape.worldMatrix" 
		"model:modelRN.placeHolderList[220]" ""
		5 4 "model:modelRN" "|model:geo|model:feather290.drawOverride" "model:modelRN.placeHolderList[221]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather290|model:feather290Shape.worldMesh" 
		"model:modelRN.placeHolderList[222]" ""
		5 3 "model:modelRN" "|model:geo|model:feather290|model:feather290Shape.worldMatrix" 
		"model:modelRN.placeHolderList[223]" ""
		5 4 "model:modelRN" "|model:geo|model:feather291.drawOverride" "model:modelRN.placeHolderList[224]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather291|model:feather291Shape.worldMesh" 
		"model:modelRN.placeHolderList[225]" ""
		5 3 "model:modelRN" "|model:geo|model:feather291|model:feather291Shape.worldMatrix" 
		"model:modelRN.placeHolderList[226]" ""
		5 4 "model:modelRN" "|model:geo|model:feather292.drawOverride" "model:modelRN.placeHolderList[227]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather292|model:feather292Shape.worldMesh" 
		"model:modelRN.placeHolderList[228]" ""
		5 3 "model:modelRN" "|model:geo|model:feather292|model:feather292Shape.worldMatrix" 
		"model:modelRN.placeHolderList[229]" ""
		5 4 "model:modelRN" "|model:geo|model:feather293.drawOverride" "model:modelRN.placeHolderList[230]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather293|model:feather293Shape.worldMesh" 
		"model:modelRN.placeHolderList[231]" ""
		5 3 "model:modelRN" "|model:geo|model:feather293|model:feather293Shape.worldMatrix" 
		"model:modelRN.placeHolderList[232]" ""
		5 4 "model:modelRN" "|model:geo|model:feather294.drawOverride" "model:modelRN.placeHolderList[233]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather294|model:feather294Shape.worldMesh" 
		"model:modelRN.placeHolderList[234]" ""
		5 3 "model:modelRN" "|model:geo|model:feather294|model:feather294Shape.worldMatrix" 
		"model:modelRN.placeHolderList[235]" ""
		5 4 "model:modelRN" "|model:geo|model:feather295.drawOverride" "model:modelRN.placeHolderList[236]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather295|model:feather295Shape.worldMesh" 
		"model:modelRN.placeHolderList[237]" ""
		5 3 "model:modelRN" "|model:geo|model:feather295|model:feather295Shape.worldMatrix" 
		"model:modelRN.placeHolderList[238]" ""
		5 4 "model:modelRN" "|model:geo|model:feather296.drawOverride" "model:modelRN.placeHolderList[239]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather296|model:feather296Shape.worldMesh" 
		"model:modelRN.placeHolderList[240]" ""
		5 3 "model:modelRN" "|model:geo|model:feather296|model:feather296Shape.worldMatrix" 
		"model:modelRN.placeHolderList[241]" ""
		5 4 "model:modelRN" "|model:geo|model:feather297.drawOverride" "model:modelRN.placeHolderList[242]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather297|model:feather297Shape.worldMesh" 
		"model:modelRN.placeHolderList[243]" ""
		5 3 "model:modelRN" "|model:geo|model:feather297|model:feather297Shape.worldMatrix" 
		"model:modelRN.placeHolderList[244]" ""
		5 4 "model:modelRN" "|model:geo|model:feather298.drawOverride" "model:modelRN.placeHolderList[245]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather298|model:feather298Shape.worldMesh" 
		"model:modelRN.placeHolderList[246]" ""
		5 3 "model:modelRN" "|model:geo|model:feather298|model:feather298Shape.worldMatrix" 
		"model:modelRN.placeHolderList[247]" ""
		5 4 "model:modelRN" "|model:geo|model:feather299.drawOverride" "model:modelRN.placeHolderList[248]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather299|model:feather299Shape.worldMesh" 
		"model:modelRN.placeHolderList[249]" ""
		5 3 "model:modelRN" "|model:geo|model:feather299|model:feather299Shape.worldMatrix" 
		"model:modelRN.placeHolderList[250]" ""
		5 4 "model:modelRN" "|model:geo|model:feather300.drawOverride" "model:modelRN.placeHolderList[251]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather300|model:feather300Shape.worldMesh" 
		"model:modelRN.placeHolderList[252]" ""
		5 3 "model:modelRN" "|model:geo|model:feather300|model:feather300Shape.worldMatrix" 
		"model:modelRN.placeHolderList[253]" ""
		5 4 "model:modelRN" "|model:geo|model:feather301.drawOverride" "model:modelRN.placeHolderList[254]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather301|model:feather301Shape.worldMesh" 
		"model:modelRN.placeHolderList[255]" ""
		5 3 "model:modelRN" "|model:geo|model:feather301|model:feather301Shape.worldMatrix" 
		"model:modelRN.placeHolderList[256]" ""
		5 4 "model:modelRN" "|model:geo|model:feather302.drawOverride" "model:modelRN.placeHolderList[257]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather302|model:feather302Shape.worldMesh" 
		"model:modelRN.placeHolderList[258]" ""
		5 3 "model:modelRN" "|model:geo|model:feather302|model:feather302Shape.worldMatrix" 
		"model:modelRN.placeHolderList[259]" ""
		5 4 "model:modelRN" "|model:geo|model:feather303.drawOverride" "model:modelRN.placeHolderList[260]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather303|model:feather303Shape.worldMesh" 
		"model:modelRN.placeHolderList[261]" ""
		5 3 "model:modelRN" "|model:geo|model:feather303|model:feather303Shape.worldMatrix" 
		"model:modelRN.placeHolderList[262]" ""
		5 4 "model:modelRN" "|model:geo|model:feather304.drawOverride" "model:modelRN.placeHolderList[263]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather304|model:feather304Shape.worldMesh" 
		"model:modelRN.placeHolderList[264]" ""
		5 3 "model:modelRN" "|model:geo|model:feather304|model:feather304Shape.worldMatrix" 
		"model:modelRN.placeHolderList[265]" ""
		5 4 "model:modelRN" "|model:geo|model:feather305.drawOverride" "model:modelRN.placeHolderList[266]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather305|model:feather305Shape.worldMesh" 
		"model:modelRN.placeHolderList[267]" ""
		5 3 "model:modelRN" "|model:geo|model:feather305|model:feather305Shape.worldMatrix" 
		"model:modelRN.placeHolderList[268]" ""
		5 4 "model:modelRN" "|model:geo|model:feather306.drawOverride" "model:modelRN.placeHolderList[269]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather306|model:feather306Shape.worldMesh" 
		"model:modelRN.placeHolderList[270]" ""
		5 3 "model:modelRN" "|model:geo|model:feather306|model:feather306Shape.worldMatrix" 
		"model:modelRN.placeHolderList[271]" ""
		5 4 "model:modelRN" "|model:geo|model:feather307.drawOverride" "model:modelRN.placeHolderList[272]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather307|model:feather307Shape.worldMesh" 
		"model:modelRN.placeHolderList[273]" ""
		5 3 "model:modelRN" "|model:geo|model:feather307|model:feather307Shape.worldMatrix" 
		"model:modelRN.placeHolderList[274]" ""
		5 4 "model:modelRN" "|model:geo|model:feather308.drawOverride" "model:modelRN.placeHolderList[275]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather308|model:feather308Shape.worldMesh" 
		"model:modelRN.placeHolderList[276]" ""
		5 3 "model:modelRN" "|model:geo|model:feather308|model:feather308Shape.worldMatrix" 
		"model:modelRN.placeHolderList[277]" ""
		5 4 "model:modelRN" "|model:geo|model:feather309.drawOverride" "model:modelRN.placeHolderList[278]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather309|model:feather309Shape.worldMesh" 
		"model:modelRN.placeHolderList[279]" ""
		5 3 "model:modelRN" "|model:geo|model:feather309|model:feather309Shape.worldMatrix" 
		"model:modelRN.placeHolderList[280]" ""
		5 4 "model:modelRN" "|model:geo|model:feather310.drawOverride" "model:modelRN.placeHolderList[281]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather310|model:feather310Shape.worldMesh" 
		"model:modelRN.placeHolderList[282]" ""
		5 3 "model:modelRN" "|model:geo|model:feather310|model:feather310Shape.worldMatrix" 
		"model:modelRN.placeHolderList[283]" ""
		5 4 "model:modelRN" "|model:geo|model:feather311.drawOverride" "model:modelRN.placeHolderList[284]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather311|model:feather311Shape.worldMesh" 
		"model:modelRN.placeHolderList[285]" ""
		5 3 "model:modelRN" "|model:geo|model:feather311|model:feather311Shape.worldMatrix" 
		"model:modelRN.placeHolderList[286]" ""
		5 4 "model:modelRN" "|model:geo|model:feather312.drawOverride" "model:modelRN.placeHolderList[287]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather312|model:feather312Shape.worldMesh" 
		"model:modelRN.placeHolderList[288]" ""
		5 3 "model:modelRN" "|model:geo|model:feather312|model:feather312Shape.worldMatrix" 
		"model:modelRN.placeHolderList[289]" ""
		5 4 "model:modelRN" "|model:geo|model:feather313.drawOverride" "model:modelRN.placeHolderList[290]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather313|model:feather313Shape.worldMesh" 
		"model:modelRN.placeHolderList[291]" ""
		5 3 "model:modelRN" "|model:geo|model:feather313|model:feather313Shape.worldMatrix" 
		"model:modelRN.placeHolderList[292]" ""
		5 4 "model:modelRN" "|model:geo|model:feather314.drawOverride" "model:modelRN.placeHolderList[293]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather314|model:feather314Shape.worldMesh" 
		"model:modelRN.placeHolderList[294]" ""
		5 3 "model:modelRN" "|model:geo|model:feather314|model:feather314Shape.worldMatrix" 
		"model:modelRN.placeHolderList[295]" ""
		5 4 "model:modelRN" "|model:geo|model:feather315.drawOverride" "model:modelRN.placeHolderList[296]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather315|model:feather315Shape.worldMesh" 
		"model:modelRN.placeHolderList[297]" ""
		5 3 "model:modelRN" "|model:geo|model:feather315|model:feather315Shape.worldMatrix" 
		"model:modelRN.placeHolderList[298]" ""
		5 4 "model:modelRN" "|model:geo|model:feather316.drawOverride" "model:modelRN.placeHolderList[299]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather316|model:feather316Shape.worldMesh" 
		"model:modelRN.placeHolderList[300]" ""
		5 3 "model:modelRN" "|model:geo|model:feather316|model:feather316Shape.worldMatrix" 
		"model:modelRN.placeHolderList[301]" ""
		5 4 "model:modelRN" "|model:geo|model:feather317.drawOverride" "model:modelRN.placeHolderList[302]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather317|model:feather317Shape.worldMesh" 
		"model:modelRN.placeHolderList[303]" ""
		5 3 "model:modelRN" "|model:geo|model:feather317|model:feather317Shape.worldMatrix" 
		"model:modelRN.placeHolderList[304]" ""
		5 4 "model:modelRN" "|model:geo|model:feather318.drawOverride" "model:modelRN.placeHolderList[305]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather318|model:feather318Shape.worldMesh" 
		"model:modelRN.placeHolderList[306]" ""
		5 3 "model:modelRN" "|model:geo|model:feather318|model:feather318Shape.worldMatrix" 
		"model:modelRN.placeHolderList[307]" ""
		5 4 "model:modelRN" "|model:geo|model:feather319.drawOverride" "model:modelRN.placeHolderList[308]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather319|model:feather319Shape.worldMesh" 
		"model:modelRN.placeHolderList[309]" ""
		5 3 "model:modelRN" "|model:geo|model:feather319|model:feather319Shape.worldMatrix" 
		"model:modelRN.placeHolderList[310]" ""
		5 4 "model:modelRN" "|model:geo|model:feather320.drawOverride" "model:modelRN.placeHolderList[311]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather320|model:feather320Shape.worldMesh" 
		"model:modelRN.placeHolderList[312]" ""
		5 3 "model:modelRN" "|model:geo|model:feather320|model:feather320Shape.worldMatrix" 
		"model:modelRN.placeHolderList[313]" ""
		5 4 "model:modelRN" "|model:geo|model:feather321.drawOverride" "model:modelRN.placeHolderList[314]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather321|model:feather321Shape.worldMesh" 
		"model:modelRN.placeHolderList[315]" ""
		5 3 "model:modelRN" "|model:geo|model:feather321|model:feather321Shape.worldMatrix" 
		"model:modelRN.placeHolderList[316]" ""
		5 4 "model:modelRN" "|model:geo|model:feather322.drawOverride" "model:modelRN.placeHolderList[317]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather322|model:feather322Shape.worldMesh" 
		"model:modelRN.placeHolderList[318]" ""
		5 3 "model:modelRN" "|model:geo|model:feather322|model:feather322Shape.worldMatrix" 
		"model:modelRN.placeHolderList[319]" ""
		5 4 "model:modelRN" "|model:geo|model:feather323.drawOverride" "model:modelRN.placeHolderList[320]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather323|model:feather323Shape.worldMesh" 
		"model:modelRN.placeHolderList[321]" ""
		5 3 "model:modelRN" "|model:geo|model:feather323|model:feather323Shape.worldMatrix" 
		"model:modelRN.placeHolderList[322]" ""
		5 4 "model:modelRN" "|model:geo|model:feather324.drawOverride" "model:modelRN.placeHolderList[323]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather324|model:feather324Shape.worldMesh" 
		"model:modelRN.placeHolderList[324]" ""
		5 3 "model:modelRN" "|model:geo|model:feather324|model:feather324Shape.worldMatrix" 
		"model:modelRN.placeHolderList[325]" ""
		5 4 "model:modelRN" "|model:geo|model:feather325.drawOverride" "model:modelRN.placeHolderList[326]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather325|model:feather325Shape.worldMesh" 
		"model:modelRN.placeHolderList[327]" ""
		5 3 "model:modelRN" "|model:geo|model:feather325|model:feather325Shape.worldMatrix" 
		"model:modelRN.placeHolderList[328]" ""
		5 4 "model:modelRN" "|model:geo|model:feather326.drawOverride" "model:modelRN.placeHolderList[329]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather326|model:feather326Shape.worldMesh" 
		"model:modelRN.placeHolderList[330]" ""
		5 3 "model:modelRN" "|model:geo|model:feather326|model:feather326Shape.worldMatrix" 
		"model:modelRN.placeHolderList[331]" ""
		5 4 "model:modelRN" "|model:geo|model:feather327.drawOverride" "model:modelRN.placeHolderList[332]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather327|model:feather327Shape.worldMesh" 
		"model:modelRN.placeHolderList[333]" ""
		5 3 "model:modelRN" "|model:geo|model:feather327|model:feather327Shape.worldMatrix" 
		"model:modelRN.placeHolderList[334]" ""
		5 4 "model:modelRN" "|model:geo|model:feather328.drawOverride" "model:modelRN.placeHolderList[335]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather328|model:feather328Shape.worldMesh" 
		"model:modelRN.placeHolderList[336]" ""
		5 3 "model:modelRN" "|model:geo|model:feather328|model:feather328Shape.worldMatrix" 
		"model:modelRN.placeHolderList[337]" ""
		5 4 "model:modelRN" "|model:geo|model:feather329.drawOverride" "model:modelRN.placeHolderList[338]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather329|model:feather329Shape.worldMesh" 
		"model:modelRN.placeHolderList[339]" ""
		5 3 "model:modelRN" "|model:geo|model:feather329|model:feather329Shape.worldMatrix" 
		"model:modelRN.placeHolderList[340]" ""
		5 4 "model:modelRN" "|model:geo|model:feather330.drawOverride" "model:modelRN.placeHolderList[341]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather330|model:feather330Shape.worldMesh" 
		"model:modelRN.placeHolderList[342]" ""
		5 3 "model:modelRN" "|model:geo|model:feather330|model:feather330Shape.worldMatrix" 
		"model:modelRN.placeHolderList[343]" ""
		5 4 "model:modelRN" "|model:geo|model:feather331.drawOverride" "model:modelRN.placeHolderList[344]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather331|model:feather331Shape.worldMesh" 
		"model:modelRN.placeHolderList[345]" ""
		5 3 "model:modelRN" "|model:geo|model:feather331|model:feather331Shape.worldMatrix" 
		"model:modelRN.placeHolderList[346]" ""
		5 4 "model:modelRN" "|model:geo|model:feather332.drawOverride" "model:modelRN.placeHolderList[347]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather332|model:feather332Shape.worldMesh" 
		"model:modelRN.placeHolderList[348]" ""
		5 3 "model:modelRN" "|model:geo|model:feather332|model:feather332Shape.worldMatrix" 
		"model:modelRN.placeHolderList[349]" ""
		5 4 "model:modelRN" "|model:geo|model:feather333.drawOverride" "model:modelRN.placeHolderList[350]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather333|model:feather333Shape.worldMesh" 
		"model:modelRN.placeHolderList[351]" ""
		5 3 "model:modelRN" "|model:geo|model:feather333|model:feather333Shape.worldMatrix" 
		"model:modelRN.placeHolderList[352]" ""
		5 4 "model:modelRN" "|model:geo|model:feather334.drawOverride" "model:modelRN.placeHolderList[353]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather334|model:feather334Shape.worldMesh" 
		"model:modelRN.placeHolderList[354]" ""
		5 3 "model:modelRN" "|model:geo|model:feather334|model:feather334Shape.worldMatrix" 
		"model:modelRN.placeHolderList[355]" ""
		5 4 "model:modelRN" "|model:geo|model:feather335.drawOverride" "model:modelRN.placeHolderList[356]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather335|model:feather335Shape.worldMesh" 
		"model:modelRN.placeHolderList[357]" ""
		5 3 "model:modelRN" "|model:geo|model:feather335|model:feather335Shape.worldMatrix" 
		"model:modelRN.placeHolderList[358]" ""
		5 4 "model:modelRN" "|model:geo|model:feather336.drawOverride" "model:modelRN.placeHolderList[359]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather336|model:feather336Shape.worldMesh" 
		"model:modelRN.placeHolderList[360]" ""
		5 3 "model:modelRN" "|model:geo|model:feather336|model:feather336Shape.worldMatrix" 
		"model:modelRN.placeHolderList[361]" ""
		5 4 "model:modelRN" "|model:geo|model:feather337.drawOverride" "model:modelRN.placeHolderList[362]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather337|model:feather337Shape.worldMesh" 
		"model:modelRN.placeHolderList[363]" ""
		5 3 "model:modelRN" "|model:geo|model:feather337|model:feather337Shape.worldMatrix" 
		"model:modelRN.placeHolderList[364]" ""
		5 4 "model:modelRN" "|model:geo|model:feather338.drawOverride" "model:modelRN.placeHolderList[365]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather338|model:feather338Shape.worldMesh" 
		"model:modelRN.placeHolderList[366]" ""
		5 3 "model:modelRN" "|model:geo|model:feather338|model:feather338Shape.worldMatrix" 
		"model:modelRN.placeHolderList[367]" ""
		5 4 "model:modelRN" "|model:geo|model:feather339.drawOverride" "model:modelRN.placeHolderList[368]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather339|model:feather339Shape.worldMesh" 
		"model:modelRN.placeHolderList[369]" ""
		5 3 "model:modelRN" "|model:geo|model:feather339|model:feather339Shape.worldMatrix" 
		"model:modelRN.placeHolderList[370]" ""
		5 4 "model:modelRN" "|model:geo|model:feather340.drawOverride" "model:modelRN.placeHolderList[371]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather340|model:feather340Shape.worldMesh" 
		"model:modelRN.placeHolderList[372]" ""
		5 3 "model:modelRN" "|model:geo|model:feather340|model:feather340Shape.worldMatrix" 
		"model:modelRN.placeHolderList[373]" ""
		5 4 "model:modelRN" "|model:geo|model:feather341.drawOverride" "model:modelRN.placeHolderList[374]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather341|model:feather341Shape.worldMesh" 
		"model:modelRN.placeHolderList[375]" ""
		5 3 "model:modelRN" "|model:geo|model:feather341|model:feather341Shape.worldMatrix" 
		"model:modelRN.placeHolderList[376]" ""
		5 4 "model:modelRN" "|model:geo|model:feather342.drawOverride" "model:modelRN.placeHolderList[377]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather342|model:feather342Shape.worldMesh" 
		"model:modelRN.placeHolderList[378]" ""
		5 3 "model:modelRN" "|model:geo|model:feather342|model:feather342Shape.worldMatrix" 
		"model:modelRN.placeHolderList[379]" ""
		5 4 "model:modelRN" "|model:geo|model:feather343.drawOverride" "model:modelRN.placeHolderList[380]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather343|model:feather343Shape.worldMesh" 
		"model:modelRN.placeHolderList[381]" ""
		5 3 "model:modelRN" "|model:geo|model:feather343|model:feather343Shape.worldMatrix" 
		"model:modelRN.placeHolderList[382]" ""
		5 4 "model:modelRN" "|model:geo|model:feather344.drawOverride" "model:modelRN.placeHolderList[383]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather344|model:feather344Shape.worldMesh" 
		"model:modelRN.placeHolderList[384]" ""
		5 3 "model:modelRN" "|model:geo|model:feather344|model:feather344Shape.worldMatrix" 
		"model:modelRN.placeHolderList[385]" ""
		5 4 "model:modelRN" "|model:geo|model:feather345.drawOverride" "model:modelRN.placeHolderList[386]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather345|model:feather345Shape.worldMesh" 
		"model:modelRN.placeHolderList[387]" ""
		5 3 "model:modelRN" "|model:geo|model:feather345|model:feather345Shape.worldMatrix" 
		"model:modelRN.placeHolderList[388]" ""
		5 4 "model:modelRN" "|model:geo|model:feather346.drawOverride" "model:modelRN.placeHolderList[389]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather346|model:feather346Shape.worldMesh" 
		"model:modelRN.placeHolderList[390]" ""
		5 3 "model:modelRN" "|model:geo|model:feather346|model:feather346Shape.worldMatrix" 
		"model:modelRN.placeHolderList[391]" ""
		5 4 "model:modelRN" "|model:geo|model:feather347.drawOverride" "model:modelRN.placeHolderList[392]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather347|model:feather347Shape.worldMesh" 
		"model:modelRN.placeHolderList[393]" ""
		5 3 "model:modelRN" "|model:geo|model:feather347|model:feather347Shape.worldMatrix" 
		"model:modelRN.placeHolderList[394]" ""
		5 4 "model:modelRN" "|model:geo|model:feather348.drawOverride" "model:modelRN.placeHolderList[395]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather348|model:feather348Shape.worldMesh" 
		"model:modelRN.placeHolderList[396]" ""
		5 3 "model:modelRN" "|model:geo|model:feather348|model:feather348Shape.worldMatrix" 
		"model:modelRN.placeHolderList[397]" ""
		5 4 "model:modelRN" "|model:geo|model:feather349.drawOverride" "model:modelRN.placeHolderList[398]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather349|model:feather349Shape.worldMesh" 
		"model:modelRN.placeHolderList[399]" ""
		5 3 "model:modelRN" "|model:geo|model:feather349|model:feather349Shape.worldMatrix" 
		"model:modelRN.placeHolderList[400]" ""
		5 4 "model:modelRN" "|model:geo|model:feather350.drawOverride" "model:modelRN.placeHolderList[401]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather350|model:feather350Shape.worldMesh" 
		"model:modelRN.placeHolderList[402]" ""
		5 3 "model:modelRN" "|model:geo|model:feather350|model:feather350Shape.worldMatrix" 
		"model:modelRN.placeHolderList[403]" ""
		5 4 "model:modelRN" "|model:geo|model:feather351.drawOverride" "model:modelRN.placeHolderList[404]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather351|model:feather351Shape.worldMesh" 
		"model:modelRN.placeHolderList[405]" ""
		5 3 "model:modelRN" "|model:geo|model:feather351|model:feather351Shape.worldMatrix" 
		"model:modelRN.placeHolderList[406]" ""
		5 4 "model:modelRN" "|model:geo|model:feather352.drawOverride" "model:modelRN.placeHolderList[407]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather352|model:feather352Shape.worldMesh" 
		"model:modelRN.placeHolderList[408]" ""
		5 3 "model:modelRN" "|model:geo|model:feather352|model:feather352Shape.worldMatrix" 
		"model:modelRN.placeHolderList[409]" ""
		5 4 "model:modelRN" "|model:geo|model:feather353.drawOverride" "model:modelRN.placeHolderList[410]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather353|model:feather353Shape.worldMesh" 
		"model:modelRN.placeHolderList[411]" ""
		5 3 "model:modelRN" "|model:geo|model:feather353|model:feather353Shape.worldMatrix" 
		"model:modelRN.placeHolderList[412]" ""
		5 4 "model:modelRN" "|model:geo|model:feather354.drawOverride" "model:modelRN.placeHolderList[413]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather354|model:feather354Shape.worldMesh" 
		"model:modelRN.placeHolderList[414]" ""
		5 3 "model:modelRN" "|model:geo|model:feather354|model:feather354Shape.worldMatrix" 
		"model:modelRN.placeHolderList[415]" ""
		5 4 "model:modelRN" "|model:geo|model:feather355.drawOverride" "model:modelRN.placeHolderList[416]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather355|model:feather355Shape.worldMesh" 
		"model:modelRN.placeHolderList[417]" ""
		5 3 "model:modelRN" "|model:geo|model:feather355|model:feather355Shape.worldMatrix" 
		"model:modelRN.placeHolderList[418]" ""
		5 4 "model:modelRN" "|model:geo|model:feather356.drawOverride" "model:modelRN.placeHolderList[419]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather356|model:feather356Shape.worldMesh" 
		"model:modelRN.placeHolderList[420]" ""
		5 3 "model:modelRN" "|model:geo|model:feather356|model:feather356Shape.worldMatrix" 
		"model:modelRN.placeHolderList[421]" ""
		5 4 "model:modelRN" "|model:geo|model:feather357.drawOverride" "model:modelRN.placeHolderList[422]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather357|model:feather357Shape.worldMesh" 
		"model:modelRN.placeHolderList[423]" ""
		5 3 "model:modelRN" "|model:geo|model:feather357|model:feather357Shape.worldMatrix" 
		"model:modelRN.placeHolderList[424]" ""
		5 4 "model:modelRN" "|model:geo|model:feather358.drawOverride" "model:modelRN.placeHolderList[425]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather358|model:feather358Shape.worldMesh" 
		"model:modelRN.placeHolderList[426]" ""
		5 3 "model:modelRN" "|model:geo|model:feather358|model:feather358Shape.worldMatrix" 
		"model:modelRN.placeHolderList[427]" ""
		5 4 "model:modelRN" "|model:geo|model:feather359.drawOverride" "model:modelRN.placeHolderList[428]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather359|model:feather359Shape.worldMesh" 
		"model:modelRN.placeHolderList[429]" ""
		5 3 "model:modelRN" "|model:geo|model:feather359|model:feather359Shape.worldMatrix" 
		"model:modelRN.placeHolderList[430]" ""
		5 4 "model:modelRN" "|model:geo|model:feather360.drawOverride" "model:modelRN.placeHolderList[431]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather360|model:feather360Shape.worldMesh" 
		"model:modelRN.placeHolderList[432]" ""
		5 3 "model:modelRN" "|model:geo|model:feather360|model:feather360Shape.worldMatrix" 
		"model:modelRN.placeHolderList[433]" ""
		5 4 "model:modelRN" "|model:geo|model:feather361.drawOverride" "model:modelRN.placeHolderList[434]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather361|model:feather361Shape.worldMesh" 
		"model:modelRN.placeHolderList[435]" ""
		5 3 "model:modelRN" "|model:geo|model:feather361|model:feather361Shape.worldMatrix" 
		"model:modelRN.placeHolderList[436]" ""
		5 4 "model:modelRN" "|model:geo|model:feather362.drawOverride" "model:modelRN.placeHolderList[437]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather362|model:feather362Shape.worldMesh" 
		"model:modelRN.placeHolderList[438]" ""
		5 3 "model:modelRN" "|model:geo|model:feather362|model:feather362Shape.worldMatrix" 
		"model:modelRN.placeHolderList[439]" ""
		5 4 "model:modelRN" "|model:geo|model:feather363.drawOverride" "model:modelRN.placeHolderList[440]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather363|model:feather363Shape.worldMesh" 
		"model:modelRN.placeHolderList[441]" ""
		5 3 "model:modelRN" "|model:geo|model:feather363|model:feather363Shape.worldMatrix" 
		"model:modelRN.placeHolderList[442]" ""
		5 4 "model:modelRN" "|model:geo|model:feather364.drawOverride" "model:modelRN.placeHolderList[443]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather364|model:feather364Shape.worldMesh" 
		"model:modelRN.placeHolderList[444]" ""
		5 3 "model:modelRN" "|model:geo|model:feather364|model:feather364Shape.worldMatrix" 
		"model:modelRN.placeHolderList[445]" ""
		5 4 "model:modelRN" "|model:geo|model:feather365.drawOverride" "model:modelRN.placeHolderList[446]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather365|model:feather365Shape.worldMesh" 
		"model:modelRN.placeHolderList[447]" ""
		5 3 "model:modelRN" "|model:geo|model:feather365|model:feather365Shape.worldMatrix" 
		"model:modelRN.placeHolderList[448]" ""
		5 4 "model:modelRN" "|model:geo|model:feather366.drawOverride" "model:modelRN.placeHolderList[449]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather366|model:feather366Shape.worldMesh" 
		"model:modelRN.placeHolderList[450]" ""
		5 3 "model:modelRN" "|model:geo|model:feather366|model:feather366Shape.worldMatrix" 
		"model:modelRN.placeHolderList[451]" ""
		5 4 "model:modelRN" "|model:geo|model:feather367.drawOverride" "model:modelRN.placeHolderList[452]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather367|model:feather367Shape.worldMesh" 
		"model:modelRN.placeHolderList[453]" ""
		5 3 "model:modelRN" "|model:geo|model:feather367|model:feather367Shape.worldMatrix" 
		"model:modelRN.placeHolderList[454]" ""
		5 4 "model:modelRN" "|model:geo|model:feather368.drawOverride" "model:modelRN.placeHolderList[455]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather368|model:feather368Shape.worldMesh" 
		"model:modelRN.placeHolderList[456]" ""
		5 3 "model:modelRN" "|model:geo|model:feather368|model:feather368Shape.worldMatrix" 
		"model:modelRN.placeHolderList[457]" ""
		5 4 "model:modelRN" "|model:geo|model:feather369.drawOverride" "model:modelRN.placeHolderList[458]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather369|model:feather369Shape.worldMesh" 
		"model:modelRN.placeHolderList[459]" ""
		5 3 "model:modelRN" "|model:geo|model:feather369|model:feather369Shape.worldMatrix" 
		"model:modelRN.placeHolderList[460]" ""
		5 4 "model:modelRN" "|model:geo|model:feather370.drawOverride" "model:modelRN.placeHolderList[461]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather370|model:feather370Shape.worldMesh" 
		"model:modelRN.placeHolderList[462]" ""
		5 3 "model:modelRN" "|model:geo|model:feather370|model:feather370Shape.worldMatrix" 
		"model:modelRN.placeHolderList[463]" ""
		5 4 "model:modelRN" "|model:geo|model:feather371.drawOverride" "model:modelRN.placeHolderList[464]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather371|model:feather371Shape.worldMesh" 
		"model:modelRN.placeHolderList[465]" ""
		5 3 "model:modelRN" "|model:geo|model:feather371|model:feather371Shape.worldMatrix" 
		"model:modelRN.placeHolderList[466]" ""
		5 4 "model:modelRN" "|model:geo|model:feather372.drawOverride" "model:modelRN.placeHolderList[467]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather372|model:feather372Shape.worldMesh" 
		"model:modelRN.placeHolderList[468]" ""
		5 3 "model:modelRN" "|model:geo|model:feather372|model:feather372Shape.worldMatrix" 
		"model:modelRN.placeHolderList[469]" ""
		5 4 "model:modelRN" "|model:geo|model:feather373.drawOverride" "model:modelRN.placeHolderList[470]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather373|model:feather373Shape.worldMesh" 
		"model:modelRN.placeHolderList[471]" ""
		5 3 "model:modelRN" "|model:geo|model:feather373|model:feather373Shape.worldMatrix" 
		"model:modelRN.placeHolderList[472]" ""
		5 4 "model:modelRN" "|model:geo|model:feather374.drawOverride" "model:modelRN.placeHolderList[473]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather374|model:feather374Shape.worldMesh" 
		"model:modelRN.placeHolderList[474]" ""
		5 3 "model:modelRN" "|model:geo|model:feather374|model:feather374Shape.worldMatrix" 
		"model:modelRN.placeHolderList[475]" ""
		5 4 "model:modelRN" "|model:geo|model:feather375.drawOverride" "model:modelRN.placeHolderList[476]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather375|model:feather375Shape.worldMesh" 
		"model:modelRN.placeHolderList[477]" ""
		5 3 "model:modelRN" "|model:geo|model:feather375|model:feather375Shape.worldMatrix" 
		"model:modelRN.placeHolderList[478]" ""
		5 4 "model:modelRN" "|model:geo|model:feather376.drawOverride" "model:modelRN.placeHolderList[479]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather376|model:feather376Shape.worldMesh" 
		"model:modelRN.placeHolderList[480]" ""
		5 3 "model:modelRN" "|model:geo|model:feather376|model:feather376Shape.worldMatrix" 
		"model:modelRN.placeHolderList[481]" ""
		5 4 "model:modelRN" "|model:geo|model:feather377.drawOverride" "model:modelRN.placeHolderList[482]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather377|model:feather377Shape.worldMesh" 
		"model:modelRN.placeHolderList[483]" ""
		5 3 "model:modelRN" "|model:geo|model:feather377|model:feather377Shape.worldMatrix" 
		"model:modelRN.placeHolderList[484]" ""
		5 4 "model:modelRN" "|model:geo|model:feather378.drawOverride" "model:modelRN.placeHolderList[485]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather378|model:feather378Shape.worldMesh" 
		"model:modelRN.placeHolderList[486]" ""
		5 3 "model:modelRN" "|model:geo|model:feather378|model:feather378Shape.worldMatrix" 
		"model:modelRN.placeHolderList[487]" ""
		5 4 "model:modelRN" "|model:geo|model:feather379.drawOverride" "model:modelRN.placeHolderList[488]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather379|model:feather379Shape.worldMesh" 
		"model:modelRN.placeHolderList[489]" ""
		5 3 "model:modelRN" "|model:geo|model:feather379|model:feather379Shape.worldMatrix" 
		"model:modelRN.placeHolderList[490]" ""
		5 4 "model:modelRN" "|model:geo|model:feather380.drawOverride" "model:modelRN.placeHolderList[491]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather380|model:feather380Shape.worldMesh" 
		"model:modelRN.placeHolderList[492]" ""
		5 3 "model:modelRN" "|model:geo|model:feather380|model:feather380Shape.worldMatrix" 
		"model:modelRN.placeHolderList[493]" ""
		5 4 "model:modelRN" "|model:geo|model:feather381.drawOverride" "model:modelRN.placeHolderList[494]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather381|model:feather381Shape.worldMesh" 
		"model:modelRN.placeHolderList[495]" ""
		5 3 "model:modelRN" "|model:geo|model:feather381|model:feather381Shape.worldMatrix" 
		"model:modelRN.placeHolderList[496]" ""
		5 4 "model:modelRN" "|model:geo|model:feather382.drawOverride" "model:modelRN.placeHolderList[497]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather382|model:feather382Shape.worldMesh" 
		"model:modelRN.placeHolderList[498]" ""
		5 3 "model:modelRN" "|model:geo|model:feather382|model:feather382Shape.worldMatrix" 
		"model:modelRN.placeHolderList[499]" ""
		5 4 "model:modelRN" "|model:geo|model:feather383.drawOverride" "model:modelRN.placeHolderList[500]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather383|model:feather383Shape.worldMesh" 
		"model:modelRN.placeHolderList[501]" ""
		5 3 "model:modelRN" "|model:geo|model:feather383|model:feather383Shape.worldMatrix" 
		"model:modelRN.placeHolderList[502]" ""
		5 4 "model:modelRN" "|model:geo|model:feather384.drawOverride" "model:modelRN.placeHolderList[503]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather384|model:feather384Shape.worldMesh" 
		"model:modelRN.placeHolderList[504]" ""
		5 3 "model:modelRN" "|model:geo|model:feather384|model:feather384Shape.worldMatrix" 
		"model:modelRN.placeHolderList[505]" ""
		5 4 "model:modelRN" "|model:geo|model:feather385.drawOverride" "model:modelRN.placeHolderList[506]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather385|model:feather385Shape.worldMesh" 
		"model:modelRN.placeHolderList[507]" ""
		5 3 "model:modelRN" "|model:geo|model:feather385|model:feather385Shape.worldMatrix" 
		"model:modelRN.placeHolderList[508]" ""
		5 4 "model:modelRN" "|model:geo|model:feather386.drawOverride" "model:modelRN.placeHolderList[509]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather386|model:feather386Shape.worldMesh" 
		"model:modelRN.placeHolderList[510]" ""
		5 3 "model:modelRN" "|model:geo|model:feather386|model:feather386Shape.worldMatrix" 
		"model:modelRN.placeHolderList[511]" ""
		5 4 "model:modelRN" "|model:geo|model:feather387.drawOverride" "model:modelRN.placeHolderList[512]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather387|model:feather387Shape.worldMesh" 
		"model:modelRN.placeHolderList[513]" ""
		5 3 "model:modelRN" "|model:geo|model:feather387|model:feather387Shape.worldMatrix" 
		"model:modelRN.placeHolderList[514]" ""
		5 4 "model:modelRN" "|model:geo|model:feather388.drawOverride" "model:modelRN.placeHolderList[515]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather388|model:feather388Shape.worldMesh" 
		"model:modelRN.placeHolderList[516]" ""
		5 3 "model:modelRN" "|model:geo|model:feather388|model:feather388Shape.worldMatrix" 
		"model:modelRN.placeHolderList[517]" ""
		5 4 "model:modelRN" "|model:geo|model:feather389.drawOverride" "model:modelRN.placeHolderList[518]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather389|model:feather389Shape.worldMesh" 
		"model:modelRN.placeHolderList[519]" ""
		5 3 "model:modelRN" "|model:geo|model:feather389|model:feather389Shape.worldMatrix" 
		"model:modelRN.placeHolderList[520]" ""
		5 4 "model:modelRN" "|model:geo|model:feather390.drawOverride" "model:modelRN.placeHolderList[521]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather390|model:feather390Shape.worldMesh" 
		"model:modelRN.placeHolderList[522]" ""
		5 3 "model:modelRN" "|model:geo|model:feather390|model:feather390Shape.worldMatrix" 
		"model:modelRN.placeHolderList[523]" ""
		5 4 "model:modelRN" "|model:geo|model:feather391.drawOverride" "model:modelRN.placeHolderList[524]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather391|model:feather391Shape.worldMesh" 
		"model:modelRN.placeHolderList[525]" ""
		5 3 "model:modelRN" "|model:geo|model:feather391|model:feather391Shape.worldMatrix" 
		"model:modelRN.placeHolderList[526]" ""
		5 4 "model:modelRN" "|model:geo|model:feather392.drawOverride" "model:modelRN.placeHolderList[527]" 
		""
		5 3 "model:modelRN" "|model:geo|model:feather392|model:feather392Shape.worldMesh" 
		"model:modelRN.placeHolderList[528]" ""
		5 3 "model:modelRN" "|model:geo|model:feather392|model:feather392Shape.worldMatrix" 
		"model:modelRN.placeHolderList[529]" ""
		5 4 "model:modelRN" "|model:geo|model:feather.drawOverride" "model:modelRN.placeHolderList[530]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather1.drawOverride" "model:modelRN.placeHolderList[531]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather2.drawOverride" "model:modelRN.placeHolderList[532]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather3.drawOverride" "model:modelRN.placeHolderList[533]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather4.drawOverride" "model:modelRN.placeHolderList[534]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather5.drawOverride" "model:modelRN.placeHolderList[535]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather6.drawOverride" "model:modelRN.placeHolderList[536]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather7.drawOverride" "model:modelRN.placeHolderList[537]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather8.drawOverride" "model:modelRN.placeHolderList[538]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather9.drawOverride" "model:modelRN.placeHolderList[539]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather10.drawOverride" "model:modelRN.placeHolderList[540]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather11.drawOverride" "model:modelRN.placeHolderList[541]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather12.drawOverride" "model:modelRN.placeHolderList[542]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather13.drawOverride" "model:modelRN.placeHolderList[543]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather15.drawOverride" "model:modelRN.placeHolderList[544]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather14.drawOverride" "model:modelRN.placeHolderList[545]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather16.drawOverride" "model:modelRN.placeHolderList[546]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather17.drawOverride" "model:modelRN.placeHolderList[547]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather18.drawOverride" "model:modelRN.placeHolderList[548]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather19.drawOverride" "model:modelRN.placeHolderList[549]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather20.drawOverride" "model:modelRN.placeHolderList[550]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather21.drawOverride" "model:modelRN.placeHolderList[551]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather22.drawOverride" "model:modelRN.placeHolderList[552]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather23.drawOverride" "model:modelRN.placeHolderList[553]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather24.drawOverride" "model:modelRN.placeHolderList[554]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather25.drawOverride" "model:modelRN.placeHolderList[555]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather26.drawOverride" "model:modelRN.placeHolderList[556]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather27.drawOverride" "model:modelRN.placeHolderList[557]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather28.drawOverride" "model:modelRN.placeHolderList[558]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather29.drawOverride" "model:modelRN.placeHolderList[559]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather30.drawOverride" "model:modelRN.placeHolderList[560]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather31.drawOverride" "model:modelRN.placeHolderList[561]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather32.drawOverride" "model:modelRN.placeHolderList[562]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather33.drawOverride" "model:modelRN.placeHolderList[563]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather34.drawOverride" "model:modelRN.placeHolderList[564]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather35.drawOverride" "model:modelRN.placeHolderList[565]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather37.drawOverride" "model:modelRN.placeHolderList[566]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather36.drawOverride" "model:modelRN.placeHolderList[567]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather38.drawOverride" "model:modelRN.placeHolderList[568]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather39.drawOverride" "model:modelRN.placeHolderList[569]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather40.drawOverride" "model:modelRN.placeHolderList[570]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather41.drawOverride" "model:modelRN.placeHolderList[571]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather42.drawOverride" "model:modelRN.placeHolderList[572]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather43.drawOverride" "model:modelRN.placeHolderList[573]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather44.drawOverride" "model:modelRN.placeHolderList[574]" 
		""
		5 4 "model:modelRN" "|model:geo|model:feather46.drawOverride" "model:modelRN.placeHolderList[575]" 
		"";
createNode closestPointOnMesh -n "model:closestSampler1";
createNode reference -n "modelRN";
	setAttr ".ihi" 0;
	setAttr -s 287 ".phl";
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[141]" 0;
	setAttr ".phl[142]" 0;
	setAttr ".phl[144]" 0;
	setAttr ".phl[145]" 0;
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[150]" 0;
	setAttr ".phl[151]" 0;
	setAttr ".phl[153]" 0;
	setAttr ".phl[154]" 0;
	setAttr ".phl[156]" 0;
	setAttr ".phl[157]" 0;
	setAttr ".phl[159]" 0;
	setAttr ".phl[160]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[163]" 0;
	setAttr ".phl[165]" 0;
	setAttr ".phl[166]" 0;
	setAttr ".phl[168]" 0;
	setAttr ".phl[169]" 0;
	setAttr ".phl[171]" 0;
	setAttr ".phl[172]" 0;
	setAttr ".phl[174]" 0;
	setAttr ".phl[175]" 0;
	setAttr ".phl[177]" 0;
	setAttr ".phl[178]" 0;
	setAttr ".phl[180]" 0;
	setAttr ".phl[181]" 0;
	setAttr ".phl[183]" 0;
	setAttr ".phl[184]" 0;
	setAttr ".phl[186]" 0;
	setAttr ".phl[187]" 0;
	setAttr ".phl[189]" 0;
	setAttr ".phl[190]" 0;
	setAttr ".phl[192]" 0;
	setAttr ".phl[193]" 0;
	setAttr ".phl[195]" 0;
	setAttr ".phl[196]" 0;
	setAttr ".phl[198]" 0;
	setAttr ".phl[199]" 0;
	setAttr ".phl[201]" 0;
	setAttr ".phl[202]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".phl[207]" 0;
	setAttr ".phl[208]" 0;
	setAttr ".phl[210]" 0;
	setAttr ".phl[211]" 0;
	setAttr ".phl[213]" 0;
	setAttr ".phl[214]" 0;
	setAttr ".phl[216]" 0;
	setAttr ".phl[217]" 0;
	setAttr ".phl[219]" 0;
	setAttr ".phl[220]" 0;
	setAttr ".phl[222]" 0;
	setAttr ".phl[223]" 0;
	setAttr ".phl[225]" 0;
	setAttr ".phl[226]" 0;
	setAttr ".phl[228]" 0;
	setAttr ".phl[229]" 0;
	setAttr ".phl[231]" 0;
	setAttr ".phl[232]" 0;
	setAttr ".phl[234]" 0;
	setAttr ".phl[235]" 0;
	setAttr ".phl[237]" 0;
	setAttr ".phl[238]" 0;
	setAttr ".phl[240]" 0;
	setAttr ".phl[241]" 0;
	setAttr ".phl[243]" 0;
	setAttr ".phl[244]" 0;
	setAttr ".phl[246]" 0;
	setAttr ".phl[247]" 0;
	setAttr ".phl[249]" 0;
	setAttr ".phl[250]" 0;
	setAttr ".phl[252]" 0;
	setAttr ".phl[253]" 0;
	setAttr ".phl[255]" 0;
	setAttr ".phl[256]" 0;
	setAttr ".phl[258]" 0;
	setAttr ".phl[259]" 0;
	setAttr ".phl[261]" 0;
	setAttr ".phl[262]" 0;
	setAttr ".phl[264]" 0;
	setAttr ".phl[265]" 0;
	setAttr ".phl[267]" 0;
	setAttr ".phl[268]" 0;
	setAttr ".phl[270]" 0;
	setAttr ".phl[271]" 0;
	setAttr ".phl[273]" 0;
	setAttr ".phl[274]" 0;
	setAttr ".phl[276]" 0;
	setAttr ".phl[277]" 0;
	setAttr ".phl[279]" 0;
	setAttr ".phl[280]" 0;
	setAttr ".phl[282]" 0;
	setAttr ".phl[283]" 0;
	setAttr ".phl[285]" 0;
	setAttr ".phl[286]" 0;
	setAttr ".phl[288]" 0;
	setAttr ".phl[289]" 0;
	setAttr ".phl[291]" 0;
	setAttr ".phl[292]" 0;
	setAttr ".phl[294]" 0;
	setAttr ".phl[295]" 0;
	setAttr ".phl[297]" 0;
	setAttr ".phl[298]" 0;
	setAttr ".phl[300]" 0;
	setAttr ".phl[301]" 0;
	setAttr ".phl[303]" 0;
	setAttr ".phl[304]" 0;
	setAttr ".phl[306]" 0;
	setAttr ".phl[307]" 0;
	setAttr ".phl[309]" 0;
	setAttr ".phl[310]" 0;
	setAttr ".phl[312]" 0;
	setAttr ".phl[313]" 0;
	setAttr ".phl[315]" 0;
	setAttr ".phl[316]" 0;
	setAttr ".phl[318]" 0;
	setAttr ".phl[319]" 0;
	setAttr ".phl[321]" 0;
	setAttr ".phl[322]" 0;
	setAttr ".phl[324]" 0;
	setAttr ".phl[325]" 0;
	setAttr ".phl[327]" 0;
	setAttr ".phl[328]" 0;
	setAttr ".phl[330]" 0;
	setAttr ".phl[331]" 0;
	setAttr ".phl[333]" 0;
	setAttr ".phl[334]" 0;
	setAttr ".phl[336]" 0;
	setAttr ".phl[337]" 0;
	setAttr ".phl[339]" 0;
	setAttr ".phl[340]" 0;
	setAttr ".phl[342]" 0;
	setAttr ".phl[343]" 0;
	setAttr ".phl[345]" 0;
	setAttr ".phl[346]" 0;
	setAttr ".phl[348]" 0;
	setAttr ".phl[349]" 0;
	setAttr ".phl[351]" 0;
	setAttr ".phl[352]" 0;
	setAttr ".phl[354]" 0;
	setAttr ".phl[355]" 0;
	setAttr ".phl[357]" 0;
	setAttr ".phl[358]" 0;
	setAttr ".phl[360]" 0;
	setAttr ".phl[361]" 0;
	setAttr ".phl[363]" 0;
	setAttr ".phl[364]" 0;
	setAttr ".phl[366]" 0;
	setAttr ".phl[367]" 0;
	setAttr ".phl[369]" 0;
	setAttr ".phl[370]" 0;
	setAttr ".phl[372]" 0;
	setAttr ".phl[373]" 0;
	setAttr ".phl[375]" 0;
	setAttr ".phl[376]" 0;
	setAttr ".phl[378]" 0;
	setAttr ".phl[379]" 0;
	setAttr ".phl[381]" 0;
	setAttr ".phl[382]" 0;
	setAttr ".phl[384]" 0;
	setAttr ".phl[385]" 0;
	setAttr ".phl[387]" 0;
	setAttr ".phl[388]" 0;
	setAttr ".phl[390]" 0;
	setAttr ".phl[391]" 0;
	setAttr ".phl[393]" 0;
	setAttr ".phl[394]" 0;
	setAttr ".phl[396]" 0;
	setAttr ".phl[397]" 0;
	setAttr ".phl[399]" 0;
	setAttr ".phl[400]" 0;
	setAttr ".phl[402]" 0;
	setAttr ".phl[403]" 0;
	setAttr ".phl[405]" 0;
	setAttr ".phl[406]" 0;
	setAttr ".phl[408]" 0;
	setAttr ".phl[409]" 0;
	setAttr ".phl[411]" 0;
	setAttr ".phl[412]" 0;
	setAttr ".phl[414]" 0;
	setAttr ".phl[415]" 0;
	setAttr ".phl[417]" 0;
	setAttr ".phl[418]" 0;
	setAttr ".phl[420]" 0;
	setAttr ".phl[421]" 0;
	setAttr ".phl[423]" 0;
	setAttr ".phl[424]" 0;
	setAttr ".phl[426]" 0;
	setAttr ".phl[427]" 0;
	setAttr ".phl[429]" 0;
	setAttr ".phl[430]" 0;
	setAttr ".phl[432]" 0;
	setAttr ".phl[433]" 0;
	setAttr ".phl[435]" 0;
	setAttr ".phl[436]" 0;
	setAttr ".phl[438]" 0;
	setAttr ".phl[439]" 0;
	setAttr ".phl[441]" 0;
	setAttr ".phl[442]" 0;
	setAttr ".phl[444]" 0;
	setAttr ".phl[445]" 0;
	setAttr ".phl[447]" 0;
	setAttr ".phl[448]" 0;
	setAttr ".phl[450]" 0;
	setAttr ".phl[451]" 0;
	setAttr ".phl[453]" 0;
	setAttr ".phl[454]" 0;
	setAttr ".phl[456]" 0;
	setAttr ".phl[457]" 0;
	setAttr ".phl[459]" 0;
	setAttr ".phl[460]" 0;
	setAttr ".phl[462]" 0;
	setAttr ".phl[463]" 0;
	setAttr ".phl[465]" 0;
	setAttr ".phl[466]" 0;
	setAttr ".phl[468]" 0;
	setAttr ".phl[469]" 0;
	setAttr ".phl[471]" 0;
	setAttr ".phl[472]" 0;
	setAttr ".phl[474]" 0;
	setAttr ".phl[475]" 0;
	setAttr ".phl[477]" 0;
	setAttr ".phl[478]" 0;
	setAttr ".phl[480]" 0;
	setAttr ".phl[481]" 0;
	setAttr ".phl[483]" 0;
	setAttr ".phl[484]" 0;
	setAttr ".phl[486]" 0;
	setAttr ".phl[487]" 0;
	setAttr ".phl[489]" 0;
	setAttr ".phl[490]" 0;
	setAttr ".phl[492]" 0;
	setAttr ".phl[493]" 0;
	setAttr ".phl[495]" 0;
	setAttr ".phl[496]" 0;
	setAttr ".phl[498]" 0;
	setAttr ".phl[499]" 0;
	setAttr ".phl[501]" 0;
	setAttr ".phl[502]" 0;
	setAttr ".phl[504]" 0;
	setAttr ".phl[505]" 0;
	setAttr ".phl[507]" 0;
	setAttr ".phl[508]" 0;
	setAttr ".phl[510]" 0;
	setAttr ".phl[511]" 0;
	setAttr ".phl[513]" 0;
	setAttr ".phl[514]" 0;
	setAttr ".phl[516]" 0;
	setAttr ".phl[517]" 0;
	setAttr ".phl[519]" 0;
	setAttr ".phl[520]" 0;
	setAttr ".phl[522]" 0;
	setAttr ".phl[523]" 0;
	setAttr ".phl[525]" 0;
	setAttr ".phl[526]" 0;
	setAttr ".phl[528]" 0;
	setAttr ".phl[529]" 0;
	setAttr ".phl[577]" 0;
	setAttr ".phl[578]" 0;
	setAttr ".phl[579]" 0;
	setAttr ".phl[580]" 0;
	setAttr ".phl[581]" 0;
	setAttr ".phl[582]" 0;
	setAttr ".phl[583]" 0;
	setAttr ".phl[584]" 0;
	setAttr ".phl[585]" 0;
	setAttr ".phl[586]" 0;
	setAttr ".phl[587]" 0;
	setAttr ".phl[588]" 0;
	setAttr ".phl[589]" 0;
	setAttr ".phl[590]" 0;
	setAttr ".phl[591]" 0;
	setAttr ".phl[592]" 0;
	setAttr ".phl[593]" 0;
	setAttr ".phl[595]" 0;
	setAttr ".phl[596]" 0;
	setAttr ".phl[598]" 0;
	setAttr ".phl[599]" 0;
	setAttr ".phl[601]" 0;
	setAttr ".phl[602]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"modelRN"
		"modelRN" 909
		0 "|modelRNfosterParent1|feather261ShapeDeformed" "|model:geo|model:feather261" 
		"-s -r "
		0 "|modelRNfosterParent1|feather262ShapeDeformed" "|model:geo|model:feather262" 
		"-s -r "
		0 "|modelRNfosterParent1|feather263ShapeDeformed" "|model:geo|model:feather263" 
		"-s -r "
		0 "|modelRNfosterParent1|feather264ShapeDeformed" "|model:geo|model:feather264" 
		"-s -r "
		0 "|modelRNfosterParent1|feather265ShapeDeformed" "|model:geo|model:feather265" 
		"-s -r "
		0 "|modelRNfosterParent1|feather266ShapeDeformed" "|model:geo|model:feather266" 
		"-s -r "
		0 "|modelRNfosterParent1|feather267ShapeDeformed" "|model:geo|model:feather267" 
		"-s -r "
		0 "|modelRNfosterParent1|feather268ShapeDeformed" "|model:geo|model:feather268" 
		"-s -r "
		0 "|modelRNfosterParent1|feather269ShapeDeformed" "|model:geo|model:feather269" 
		"-s -r "
		0 "|modelRNfosterParent1|feather270ShapeDeformed" "|model:geo|model:feather270" 
		"-s -r "
		0 "|modelRNfosterParent1|feather271ShapeDeformed" "|model:geo|model:feather271" 
		"-s -r "
		0 "|modelRNfosterParent1|feather272ShapeDeformed" "|model:geo|model:feather272" 
		"-s -r "
		0 "|modelRNfosterParent1|feather273ShapeDeformed" "|model:geo|model:feather273" 
		"-s -r "
		0 "|modelRNfosterParent1|feather274ShapeDeformed" "|model:geo|model:feather274" 
		"-s -r "
		0 "|modelRNfosterParent1|feather275ShapeDeformed" "|model:geo|model:feather275" 
		"-s -r "
		0 "|modelRNfosterParent1|feather276ShapeDeformed" "|model:geo|model:feather276" 
		"-s -r "
		0 "|modelRNfosterParent1|feather277ShapeDeformed" "|model:geo|model:feather277" 
		"-s -r "
		0 "|modelRNfosterParent1|feather278ShapeDeformed" "|model:geo|model:feather278" 
		"-s -r "
		0 "|modelRNfosterParent1|feather279ShapeDeformed" "|model:geo|model:feather279" 
		"-s -r "
		0 "|modelRNfosterParent1|feather280ShapeDeformed" "|model:geo|model:feather280" 
		"-s -r "
		0 "|modelRNfosterParent1|feather281ShapeDeformed" "|model:geo|model:feather281" 
		"-s -r "
		0 "|modelRNfosterParent1|feather282ShapeDeformed" "|model:geo|model:feather282" 
		"-s -r "
		0 "|modelRNfosterParent1|feather283ShapeDeformed" "|model:geo|model:feather283" 
		"-s -r "
		0 "|modelRNfosterParent1|feather284ShapeDeformed" "|model:geo|model:feather284" 
		"-s -r "
		0 "|modelRNfosterParent1|feather285ShapeDeformed" "|model:geo|model:feather285" 
		"-s -r "
		0 "|modelRNfosterParent1|feather286ShapeDeformed" "|model:geo|model:feather286" 
		"-s -r "
		0 "|modelRNfosterParent1|feather287ShapeDeformed" "|model:geo|model:feather287" 
		"-s -r "
		0 "|modelRNfosterParent1|feather288ShapeDeformed" "|model:geo|model:feather288" 
		"-s -r "
		0 "|modelRNfosterParent1|feather289ShapeDeformed" "|model:geo|model:feather289" 
		"-s -r "
		0 "|modelRNfosterParent1|feather290ShapeDeformed" "|model:geo|model:feather290" 
		"-s -r "
		0 "|modelRNfosterParent1|feather291ShapeDeformed" "|model:geo|model:feather291" 
		"-s -r "
		0 "|modelRNfosterParent1|feather292ShapeDeformed" "|model:geo|model:feather292" 
		"-s -r "
		0 "|modelRNfosterParent1|feather293ShapeDeformed" "|model:geo|model:feather293" 
		"-s -r "
		0 "|modelRNfosterParent1|feather294ShapeDeformed" "|model:geo|model:feather294" 
		"-s -r "
		0 "|modelRNfosterParent1|feather295ShapeDeformed" "|model:geo|model:feather295" 
		"-s -r "
		0 "|modelRNfosterParent1|feather296ShapeDeformed" "|model:geo|model:feather296" 
		"-s -r "
		0 "|modelRNfosterParent1|feather297ShapeDeformed" "|model:geo|model:feather297" 
		"-s -r "
		0 "|modelRNfosterParent1|feather298ShapeDeformed" "|model:geo|model:feather298" 
		"-s -r "
		0 "|modelRNfosterParent1|feather299ShapeDeformed" "|model:geo|model:feather299" 
		"-s -r "
		0 "|modelRNfosterParent1|feather300ShapeDeformed" "|model:geo|model:feather300" 
		"-s -r "
		0 "|modelRNfosterParent1|feather301ShapeDeformed" "|model:geo|model:feather301" 
		"-s -r "
		0 "|modelRNfosterParent1|feather302ShapeDeformed" "|model:geo|model:feather302" 
		"-s -r "
		0 "|modelRNfosterParent1|feather303ShapeDeformed" "|model:geo|model:feather303" 
		"-s -r "
		0 "|modelRNfosterParent1|feather304ShapeDeformed" "|model:geo|model:feather304" 
		"-s -r "
		0 "|modelRNfosterParent1|feather305ShapeDeformed" "|model:geo|model:feather305" 
		"-s -r "
		0 "|modelRNfosterParent1|feather306ShapeDeformed" "|model:geo|model:feather306" 
		"-s -r "
		0 "|modelRNfosterParent1|feather307ShapeDeformed" "|model:geo|model:feather307" 
		"-s -r "
		0 "|modelRNfosterParent1|feather308ShapeDeformed" "|model:geo|model:feather308" 
		"-s -r "
		0 "|modelRNfosterParent1|feather309ShapeDeformed" "|model:geo|model:feather309" 
		"-s -r "
		0 "|modelRNfosterParent1|feather310ShapeDeformed" "|model:geo|model:feather310" 
		"-s -r "
		0 "|modelRNfosterParent1|feather311ShapeDeformed" "|model:geo|model:feather311" 
		"-s -r "
		0 "|modelRNfosterParent1|feather312ShapeDeformed" "|model:geo|model:feather312" 
		"-s -r "
		0 "|modelRNfosterParent1|feather313ShapeDeformed" "|model:geo|model:feather313" 
		"-s -r "
		0 "|modelRNfosterParent1|feather314ShapeDeformed" "|model:geo|model:feather314" 
		"-s -r "
		0 "|modelRNfosterParent1|feather315ShapeDeformed" "|model:geo|model:feather315" 
		"-s -r "
		0 "|modelRNfosterParent1|feather316ShapeDeformed" "|model:geo|model:feather316" 
		"-s -r "
		0 "|modelRNfosterParent1|feather317ShapeDeformed" "|model:geo|model:feather317" 
		"-s -r "
		0 "|modelRNfosterParent1|feather318ShapeDeformed" "|model:geo|model:feather318" 
		"-s -r "
		0 "|modelRNfosterParent1|feather319ShapeDeformed" "|model:geo|model:feather319" 
		"-s -r "
		0 "|modelRNfosterParent1|feather320ShapeDeformed" "|model:geo|model:feather320" 
		"-s -r "
		0 "|modelRNfosterParent1|feather321ShapeDeformed" "|model:geo|model:feather321" 
		"-s -r "
		0 "|modelRNfosterParent1|feather322ShapeDeformed" "|model:geo|model:feather322" 
		"-s -r "
		0 "|modelRNfosterParent1|feather323ShapeDeformed" "|model:geo|model:feather323" 
		"-s -r "
		0 "|modelRNfosterParent1|feather324ShapeDeformed" "|model:geo|model:feather324" 
		"-s -r "
		0 "|modelRNfosterParent1|feather325ShapeDeformed" "|model:geo|model:feather325" 
		"-s -r "
		0 "|modelRNfosterParent1|feather326ShapeDeformed" "|model:geo|model:feather326" 
		"-s -r "
		0 "|modelRNfosterParent1|feather327ShapeDeformed" "|model:geo|model:feather327" 
		"-s -r "
		0 "|modelRNfosterParent1|feather328ShapeDeformed" "|model:geo|model:feather328" 
		"-s -r "
		0 "|modelRNfosterParent1|feather329ShapeDeformed" "|model:geo|model:feather329" 
		"-s -r "
		0 "|modelRNfosterParent1|feather330ShapeDeformed" "|model:geo|model:feather330" 
		"-s -r "
		0 "|modelRNfosterParent1|feather331ShapeDeformed" "|model:geo|model:feather331" 
		"-s -r "
		0 "|modelRNfosterParent1|feather332ShapeDeformed" "|model:geo|model:feather332" 
		"-s -r "
		0 "|modelRNfosterParent1|feather333ShapeDeformed" "|model:geo|model:feather333" 
		"-s -r "
		0 "|modelRNfosterParent1|feather334ShapeDeformed" "|model:geo|model:feather334" 
		"-s -r "
		0 "|modelRNfosterParent1|feather335ShapeDeformed" "|model:geo|model:feather335" 
		"-s -r "
		0 "|modelRNfosterParent1|feather336ShapeDeformed" "|model:geo|model:feather336" 
		"-s -r "
		0 "|modelRNfosterParent1|feather337ShapeDeformed" "|model:geo|model:feather337" 
		"-s -r "
		0 "|modelRNfosterParent1|feather338ShapeDeformed" "|model:geo|model:feather338" 
		"-s -r "
		0 "|modelRNfosterParent1|feather339ShapeDeformed" "|model:geo|model:feather339" 
		"-s -r "
		0 "|modelRNfosterParent1|feather340ShapeDeformed" "|model:geo|model:feather340" 
		"-s -r "
		0 "|modelRNfosterParent1|feather341ShapeDeformed" "|model:geo|model:feather341" 
		"-s -r "
		0 "|modelRNfosterParent1|feather342ShapeDeformed" "|model:geo|model:feather342" 
		"-s -r "
		0 "|modelRNfosterParent1|feather343ShapeDeformed" "|model:geo|model:feather343" 
		"-s -r "
		0 "|modelRNfosterParent1|feather344ShapeDeformed" "|model:geo|model:feather344" 
		"-s -r "
		0 "|modelRNfosterParent1|feather345ShapeDeformed" "|model:geo|model:feather345" 
		"-s -r "
		0 "|modelRNfosterParent1|feather346ShapeDeformed" "|model:geo|model:feather346" 
		"-s -r "
		0 "|modelRNfosterParent1|feather347ShapeDeformed" "|model:geo|model:feather347" 
		"-s -r "
		0 "|modelRNfosterParent1|feather348ShapeDeformed" "|model:geo|model:feather348" 
		"-s -r "
		0 "|modelRNfosterParent1|feather349ShapeDeformed" "|model:geo|model:feather349" 
		"-s -r "
		0 "|modelRNfosterParent1|feather350ShapeDeformed" "|model:geo|model:feather350" 
		"-s -r "
		0 "|modelRNfosterParent1|feather351ShapeDeformed" "|model:geo|model:feather351" 
		"-s -r "
		0 "|modelRNfosterParent1|feather352ShapeDeformed" "|model:geo|model:feather352" 
		"-s -r "
		0 "|modelRNfosterParent1|feather353ShapeDeformed" "|model:geo|model:feather353" 
		"-s -r "
		0 "|modelRNfosterParent1|feather354ShapeDeformed" "|model:geo|model:feather354" 
		"-s -r "
		0 "|modelRNfosterParent1|feather355ShapeDeformed" "|model:geo|model:feather355" 
		"-s -r "
		0 "|modelRNfosterParent1|feather356ShapeDeformed" "|model:geo|model:feather356" 
		"-s -r "
		0 "|modelRNfosterParent1|feather357ShapeDeformed" "|model:geo|model:feather357" 
		"-s -r "
		0 "|modelRNfosterParent1|feather358ShapeDeformed" "|model:geo|model:feather358" 
		"-s -r "
		0 "|modelRNfosterParent1|feather359ShapeDeformed" "|model:geo|model:feather359" 
		"-s -r "
		0 "|modelRNfosterParent1|feather360ShapeDeformed" "|model:geo|model:feather360" 
		"-s -r "
		0 "|modelRNfosterParent1|feather361ShapeDeformed" "|model:geo|model:feather361" 
		"-s -r "
		0 "|modelRNfosterParent1|feather362ShapeDeformed" "|model:geo|model:feather362" 
		"-s -r "
		0 "|modelRNfosterParent1|feather363ShapeDeformed" "|model:geo|model:feather363" 
		"-s -r "
		0 "|modelRNfosterParent1|feather364ShapeDeformed" "|model:geo|model:feather364" 
		"-s -r "
		0 "|modelRNfosterParent1|feather365ShapeDeformed" "|model:geo|model:feather365" 
		"-s -r "
		0 "|modelRNfosterParent1|feather366ShapeDeformed" "|model:geo|model:feather366" 
		"-s -r "
		0 "|modelRNfosterParent1|feather367ShapeDeformed" "|model:geo|model:feather367" 
		"-s -r "
		0 "|modelRNfosterParent1|feather368ShapeDeformed" "|model:geo|model:feather368" 
		"-s -r "
		0 "|modelRNfosterParent1|feather369ShapeDeformed" "|model:geo|model:feather369" 
		"-s -r "
		0 "|modelRNfosterParent1|feather370ShapeDeformed" "|model:geo|model:feather370" 
		"-s -r "
		0 "|modelRNfosterParent1|feather371ShapeDeformed" "|model:geo|model:feather371" 
		"-s -r "
		0 "|modelRNfosterParent1|feather372ShapeDeformed" "|model:geo|model:feather372" 
		"-s -r "
		0 "|modelRNfosterParent1|feather373ShapeDeformed" "|model:geo|model:feather373" 
		"-s -r "
		0 "|modelRNfosterParent1|feather374ShapeDeformed" "|model:geo|model:feather374" 
		"-s -r "
		0 "|modelRNfosterParent1|feather375ShapeDeformed" "|model:geo|model:feather375" 
		"-s -r "
		0 "|modelRNfosterParent1|feather376ShapeDeformed" "|model:geo|model:feather376" 
		"-s -r "
		0 "|modelRNfosterParent1|feather377ShapeDeformed" "|model:geo|model:feather377" 
		"-s -r "
		0 "|modelRNfosterParent1|feather378ShapeDeformed" "|model:geo|model:feather378" 
		"-s -r "
		0 "|modelRNfosterParent1|feather379ShapeDeformed" "|model:geo|model:feather379" 
		"-s -r "
		0 "|modelRNfosterParent1|feather380ShapeDeformed" "|model:geo|model:feather380" 
		"-s -r "
		0 "|modelRNfosterParent1|feather381ShapeDeformed" "|model:geo|model:feather381" 
		"-s -r "
		0 "|modelRNfosterParent1|feather382ShapeDeformed" "|model:geo|model:feather382" 
		"-s -r "
		0 "|modelRNfosterParent1|feather383ShapeDeformed" "|model:geo|model:feather383" 
		"-s -r "
		0 "|modelRNfosterParent1|feather384ShapeDeformed" "|model:geo|model:feather384" 
		"-s -r "
		0 "|modelRNfosterParent1|feather385ShapeDeformed" "|model:geo|model:feather385" 
		"-s -r "
		0 "|modelRNfosterParent1|feather386ShapeDeformed" "|model:geo|model:feather386" 
		"-s -r "
		0 "|modelRNfosterParent1|feather387ShapeDeformed" "|model:geo|model:feather387" 
		"-s -r "
		0 "|modelRNfosterParent1|feather388ShapeDeformed" "|model:geo|model:feather388" 
		"-s -r "
		0 "|modelRNfosterParent1|feather389ShapeDeformed" "|model:geo|model:feather389" 
		"-s -r "
		0 "|modelRNfosterParent1|feather390ShapeDeformed" "|model:geo|model:feather390" 
		"-s -r "
		0 "|modelRNfosterParent1|feather391ShapeDeformed" "|model:geo|model:feather391" 
		"-s -r "
		0 "|modelRNfosterParent1|feather392ShapeDeformed" "|model:geo|model:feather392" 
		"-s -r "
		0 "|model:geo" "|Group|Geometry" "-s -r "
		0 "|modelRNfosterParent1|eye_RShapeDeformed" "|Group|Geometry|model:geo|model:eye_R" 
		"-s -r "
		0 "|modelRNfosterParent1|cornea_RShapeDeformed" "|Group|Geometry|model:geo|model:cornea_R" 
		"-s -r "
		0 "|modelRNfosterParent1|cornea_LShapeDeformed" "|Group|Geometry|model:geo|model:cornea_L" 
		"-s -r "
		0 "|modelRNfosterParent1|eye_LShapeDeformed" "|Group|Geometry|model:geo|model:eye_L" 
		"-s -r "
		0 "|modelRNfosterParent1|bodyShapeDeformedOrig" "|Group|Geometry|model:geo|model:body" 
		"-s -r "
		0 "|modelRNfosterParent1|bodyShapeDeformed" "|Group|Geometry|model:geo|model:body" 
		"-s -r "
		0 "|modelRNfosterParent1|bodyShapeDeformedOrig1" "|Group|Geometry|model:geo|model:body" 
		"-s -r "
		0 "|modelRNfosterParent1|beakShapeDeformed" "|Group|Geometry|model:geo|model:beak" 
		"-s -r "
		0 "|modelRNfosterParent1|foot_RShapeDeformed" "|Group|Geometry|model:geo|model:foot_R" 
		"-s -r "
		0 "|modelRNfosterParent1|foot_LShapeDeformed" "|Group|Geometry|model:geo|model:foot_L" 
		"-s -r "
		0 "|modelRNfosterParent1|nails_RShapeDeformed" "|Group|Geometry|model:geo|model:nails_R" 
		"-s -r "
		0 "|modelRNfosterParent1|nails_LShapeDeformed" "|Group|Geometry|model:geo|model:nails_L" 
		"-s -r "
		0 "|modelRNfosterParent1|feathers_rShapeDeformed" "|Group|Geometry|model:geo|model:feathers_r" 
		"-s -r "
		0 "|modelRNfosterParent1|feathers_LShapeDeformedOrig" "|Group|Geometry|model:geo|model:feathers_L" 
		"-s -r "
		0 "|modelRNfosterParent1|feathers_LShapeDeformed" "|Group|Geometry|model:geo|model:feathers_L" 
		"-s -r "
		0 "|modelRNfosterParent1|feathers_mShapeDeformed" "|Group|Geometry|model:geo|model:feathers_m" 
		"-s -r "
		1 |model:geo|model:body_newUV|model:body_newUVShape "miShadingSamplesOverride" 
		"mso" " -ci 1 -min 0 -max 1 -at \"bool\""
		1 |model:geo|model:body_newUV|model:body_newUVShape "miShadingSamples" "msh" 
		" -ci 1 -min 0 -smx 8 -at \"float\""
		1 |model:geo|model:body_newUV|model:body_newUVShape "miMaxDisplaceOverride" 
		"mdo" " -ci 1 -min 0 -max 1 -at \"bool\""
		1 |model:geo|model:body_newUV|model:body_newUVShape "miMaxDisplace" "mmd" 
		" -ci 1 -min 0 -smx 1 -at \"float\""
		1 |Group|Geometry|model:geo|model:nails_R "lockInfluenceWeights" "liw" " -ci 1 -min 0 -max 1 -at \"bool\""
		
		2 "|model:geo|model:body_newUV|model:body_newUVShape" "miShadingSamplesOverride" 
		" 0"
		2 "|model:geo|model:body_newUV|model:body_newUVShape" "miShadingSamples" 
		" 0"
		2 "|model:geo|model:body_newUV|model:body_newUVShape" "miMaxDisplaceOverride" 
		" 0"
		2 "|model:geo|model:body_newUV|model:body_newUVShape" "miMaxDisplace" " 0"
		
		2 "|model:geo|model:feather261|model:feather261Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather262|model:feather262Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather263|model:feather263Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather264|model:feather264Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather265|model:feather265Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather266|model:feather266Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather267|model:feather267Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather268|model:feather268Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather269|model:feather269Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather270|model:feather270Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather271|model:feather271Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather272|model:feather272Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather273|model:feather273Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather274|model:feather274Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather275|model:feather275Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather276|model:feather276Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather277|model:feather277Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather278|model:feather278Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather279|model:feather279Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather280|model:feather280Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather281|model:feather281Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather282|model:feather282Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather283|model:feather283Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather284|model:feather284Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather285|model:feather285Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather286|model:feather286Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather287|model:feather287Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather288|model:feather288Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather289|model:feather289Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather290|model:feather290Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather291|model:feather291Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather292|model:feather292Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather293|model:feather293Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather294|model:feather294Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather295|model:feather295Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather296|model:feather296Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather297|model:feather297Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather298|model:feather298Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather299|model:feather299Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather300|model:feather300Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather301|model:feather301Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather302|model:feather302Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather303|model:feather303Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather304|model:feather304Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather305|model:feather305Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather306|model:feather306Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather307|model:feather307Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather308|model:feather308Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather309|model:feather309Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather310|model:feather310Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather311|model:feather311Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather312|model:feather312Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather313|model:feather313Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather314|model:feather314Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather315|model:feather315Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather316|model:feather316Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather317|model:feather317Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather318|model:feather318Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather319|model:feather319Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather320|model:feather320Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather321|model:feather321Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather322|model:feather322Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather323|model:feather323Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather324|model:feather324Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather325|model:feather325Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather326|model:feather326Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather327|model:feather327Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather328|model:feather328Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather329|model:feather329Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather330|model:feather330Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather331|model:feather331Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather332|model:feather332Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather333|model:feather333Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather334|model:feather334Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather335|model:feather335Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather336|model:feather336Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather337|model:feather337Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather338|model:feather338Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather339|model:feather339Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather340|model:feather340Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather341|model:feather341Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather342|model:feather342Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather343|model:feather343Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather344|model:feather344Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather345|model:feather345Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather346|model:feather346Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather347|model:feather347Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather348|model:feather348Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather349|model:feather349Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather350|model:feather350Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather351|model:feather351Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather352|model:feather352Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather353|model:feather353Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather354|model:feather354Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather355|model:feather355Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather356|model:feather356Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather357|model:feather357Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather358|model:feather358Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather359|model:feather359Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather360|model:feather360Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather361|model:feather361Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather362|model:feather362Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather363|model:feather363Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather364|model:feather364Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather365|model:feather365Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather366|model:feather366Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather367|model:feather367Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather368|model:feather368Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather369|model:feather369Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather370|model:feather370Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather371|model:feather371Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather372|model:feather372Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather373|model:feather373Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather374|model:feather374Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather375|model:feather375Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather376|model:feather376Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather377|model:feather377Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather378|model:feather378Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather379|model:feather379Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather380|model:feather380Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather381|model:feather381Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather382|model:feather382Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather383|model:feather383Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather384|model:feather384Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather385|model:feather385Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather386|model:feather386Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather387|model:feather387Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather388|model:feather388Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather389|model:feather389Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather390|model:feather390Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather391|model:feather391Shape" "intermediateObject" 
		" 1"
		2 "|model:geo|model:feather392|model:feather392Shape" "intermediateObject" 
		" 1"
		2 "|Group|Geometry|model:geo|model:eye_R|model:eye_RShape" "intermediateObject" 
		" 1"
		2 "|Group|Geometry|model:geo|model:cornea_R|model:cornea_RShape" "intermediateObject" 
		" 1"
		2 "|Group|Geometry|model:geo|model:cornea_L|model:cornea_LShape" "intermediateObject" 
		" 1"
		2 "|Group|Geometry|model:geo|model:eye_L|model:eye_LShape" "intermediateObject" 
		" 1"
		2 "|Group|Geometry|model:geo|model:body|model:bodyShape" "intermediateObject" 
		" 1"
		2 "|Group|Geometry|model:geo|model:body|model:bodyShape" "dispResolution" 
		" 1"
		2 "|Group|Geometry|model:geo|model:body|model:bodyShape" "displaySmoothMesh" 
		" 0"
		2 "|Group|Geometry|model:geo|model:beak|model:beakShape" "intermediateObject" 
		" 1"
		2 "|Group|Geometry|model:geo|model:foot_R|model:foot_RShape" "intermediateObject" 
		" 1"
		2 "|Group|Geometry|model:geo|model:foot_L|model:foot_LShape" "intermediateObject" 
		" 1"
		2 "|Group|Geometry|model:geo|model:nails_R" "lockInfluenceWeights" " 1"
		2 "|Group|Geometry|model:geo|model:nails_R|model:nails_RShape" "intermediateObject" 
		" 1"
		2 "|Group|Geometry|model:geo|model:nails_L|model:nails_LShape" "intermediateObject" 
		" 1"
		2 "|Group|Geometry|model:geo|model:feathers_r|model:feathers_rShape" "intermediateObject" 
		" 1"
		2 "|Group|Geometry|model:geo|model:feathers_L|model:feathers_LShape" "intermediateObject" 
		" 1"
		2 "|Group|Geometry|model:geo|model:feathers_m|model:feathers_mShape" "intermediateObject" 
		" 1"
		5 4 "modelRN" "|model:geo|model:feather109.drawOverride" "modelRN.placeHolderList[2]" 
		""
		5 4 "modelRN" "|model:geo|model:feather110.drawOverride" "modelRN.placeHolderList[3]" 
		""
		5 4 "modelRN" "|model:geo|model:feather111.drawOverride" "modelRN.placeHolderList[4]" 
		""
		5 4 "modelRN" "|model:geo|model:feather112.drawOverride" "modelRN.placeHolderList[5]" 
		""
		5 4 "modelRN" "|model:geo|model:feather113.drawOverride" "modelRN.placeHolderList[6]" 
		""
		5 4 "modelRN" "|model:geo|model:feather114.drawOverride" "modelRN.placeHolderList[7]" 
		""
		5 4 "modelRN" "|model:geo|model:feather115.drawOverride" "modelRN.placeHolderList[8]" 
		""
		5 4 "modelRN" "|model:geo|model:feather116.drawOverride" "modelRN.placeHolderList[9]" 
		""
		5 4 "modelRN" "|model:geo|model:feather117.drawOverride" "modelRN.placeHolderList[10]" 
		""
		5 4 "modelRN" "|model:geo|model:feather118.drawOverride" "modelRN.placeHolderList[11]" 
		""
		5 4 "modelRN" "|model:geo|model:feather73.drawOverride" "modelRN.placeHolderList[12]" 
		""
		5 4 "modelRN" "|model:geo|model:feather74.drawOverride" "modelRN.placeHolderList[13]" 
		""
		5 4 "modelRN" "|model:geo|model:feather75.drawOverride" "modelRN.placeHolderList[14]" 
		""
		5 4 "modelRN" "|model:geo|model:feather76.drawOverride" "modelRN.placeHolderList[15]" 
		""
		5 4 "modelRN" "|model:geo|model:feather77.drawOverride" "modelRN.placeHolderList[16]" 
		""
		5 4 "modelRN" "|model:geo|model:feather78.drawOverride" "modelRN.placeHolderList[17]" 
		""
		5 4 "modelRN" "|model:geo|model:feather79.drawOverride" "modelRN.placeHolderList[18]" 
		""
		5 4 "modelRN" "|model:geo|model:feather80.drawOverride" "modelRN.placeHolderList[19]" 
		""
		5 4 "modelRN" "|model:geo|model:feather81.drawOverride" "modelRN.placeHolderList[20]" 
		""
		5 4 "modelRN" "|model:geo|model:feather82.drawOverride" "modelRN.placeHolderList[21]" 
		""
		5 4 "modelRN" "|model:geo|model:feather83.drawOverride" "modelRN.placeHolderList[22]" 
		""
		5 4 "modelRN" "|model:geo|model:feather85.drawOverride" "modelRN.placeHolderList[23]" 
		""
		5 4 "modelRN" "|model:geo|model:feather84.drawOverride" "modelRN.placeHolderList[24]" 
		""
		5 4 "modelRN" "|model:geo|model:feather86.drawOverride" "modelRN.placeHolderList[25]" 
		""
		5 4 "modelRN" "|model:geo|model:feather87.drawOverride" "modelRN.placeHolderList[26]" 
		""
		5 4 "modelRN" "|model:geo|model:feather88.drawOverride" "modelRN.placeHolderList[27]" 
		""
		5 4 "modelRN" "|model:geo|model:feather89.drawOverride" "modelRN.placeHolderList[28]" 
		""
		5 4 "modelRN" "|model:geo|model:feather90.drawOverride" "modelRN.placeHolderList[29]" 
		""
		5 4 "modelRN" "|model:geo|model:feather120.drawOverride" "modelRN.placeHolderList[30]" 
		""
		5 4 "modelRN" "|model:geo|model:feather121.drawOverride" "modelRN.placeHolderList[31]" 
		""
		5 4 "modelRN" "|model:geo|model:feather122.drawOverride" "modelRN.placeHolderList[32]" 
		""
		5 4 "modelRN" "|model:geo|model:feather123.drawOverride" "modelRN.placeHolderList[33]" 
		""
		5 4 "modelRN" "|model:geo|model:feather124.drawOverride" "modelRN.placeHolderList[34]" 
		""
		5 4 "modelRN" "|model:geo|model:feather125.drawOverride" "modelRN.placeHolderList[35]" 
		""
		5 4 "modelRN" "|model:geo|model:feather126.drawOverride" "modelRN.placeHolderList[36]" 
		""
		5 4 "modelRN" "|model:geo|model:feather127.drawOverride" "modelRN.placeHolderList[37]" 
		""
		5 4 "modelRN" "|model:geo|model:feather119.drawOverride" "modelRN.placeHolderList[38]" 
		""
		5 4 "modelRN" "|model:geo|model:feather91.drawOverride" "modelRN.placeHolderList[39]" 
		""
		5 4 "modelRN" "|model:geo|model:feather92.drawOverride" "modelRN.placeHolderList[40]" 
		""
		5 4 "modelRN" "|model:geo|model:feather128.drawOverride" "modelRN.placeHolderList[41]" 
		""
		5 4 "modelRN" "|model:geo|model:feather93.drawOverride" "modelRN.placeHolderList[42]" 
		""
		5 4 "modelRN" "|model:geo|model:feather94.drawOverride" "modelRN.placeHolderList[43]" 
		""
		5 4 "modelRN" "|model:geo|model:feather95.drawOverride" "modelRN.placeHolderList[44]" 
		""
		5 4 "modelRN" "|model:geo|model:feather97.drawOverride" "modelRN.placeHolderList[45]" 
		""
		5 4 "modelRN" "|model:geo|model:feather96.drawOverride" "modelRN.placeHolderList[46]" 
		""
		5 4 "modelRN" "|model:geo|model:feather98.drawOverride" "modelRN.placeHolderList[47]" 
		""
		5 4 "modelRN" "|model:geo|model:feather100.drawOverride" "modelRN.placeHolderList[48]" 
		""
		5 4 "modelRN" "|model:geo|model:feather101.drawOverride" "modelRN.placeHolderList[49]" 
		""
		5 4 "modelRN" "|model:geo|model:feather99.drawOverride" "modelRN.placeHolderList[50]" 
		""
		5 4 "modelRN" "|model:geo|model:feather102.drawOverride" "modelRN.placeHolderList[51]" 
		""
		5 4 "modelRN" "|model:geo|model:feather103.drawOverride" "modelRN.placeHolderList[52]" 
		""
		5 4 "modelRN" "|model:geo|model:feather104.drawOverride" "modelRN.placeHolderList[53]" 
		""
		5 4 "modelRN" "|model:geo|model:feather105.drawOverride" "modelRN.placeHolderList[54]" 
		""
		5 4 "modelRN" "|model:geo|model:feather106.drawOverride" "modelRN.placeHolderList[55]" 
		""
		5 4 "modelRN" "|model:geo|model:feather107.drawOverride" "modelRN.placeHolderList[56]" 
		""
		5 4 "modelRN" "|model:geo|model:feather108.drawOverride" "modelRN.placeHolderList[57]" 
		""
		5 4 "modelRN" "|model:geo|model:feather212.drawOverride" "modelRN.placeHolderList[58]" 
		""
		5 4 "modelRN" "|model:geo|model:feather213.drawOverride" "modelRN.placeHolderList[59]" 
		""
		5 4 "modelRN" "|model:geo|model:feather214.drawOverride" "modelRN.placeHolderList[60]" 
		""
		5 4 "modelRN" "|model:geo|model:feather218.drawOverride" "modelRN.placeHolderList[61]" 
		""
		5 4 "modelRN" "|model:geo|model:feather219.drawOverride" "modelRN.placeHolderList[62]" 
		""
		5 4 "modelRN" "|model:geo|model:feather220.drawOverride" "modelRN.placeHolderList[63]" 
		""
		5 4 "modelRN" "|model:geo|model:feather221.drawOverride" "modelRN.placeHolderList[64]" 
		""
		5 4 "modelRN" "|model:geo|model:feather222.drawOverride" "modelRN.placeHolderList[65]" 
		""
		5 4 "modelRN" "|model:geo|model:feather223.drawOverride" "modelRN.placeHolderList[66]" 
		""
		5 4 "modelRN" "|model:geo|model:feather224.drawOverride" "modelRN.placeHolderList[67]" 
		""
		5 4 "modelRN" "|model:geo|model:feather225.drawOverride" "modelRN.placeHolderList[68]" 
		""
		5 4 "modelRN" "|model:geo|model:feather226.drawOverride" "modelRN.placeHolderList[69]" 
		""
		5 4 "modelRN" "|model:geo|model:feather227.drawOverride" "modelRN.placeHolderList[70]" 
		""
		5 4 "modelRN" "|model:geo|model:feather228.drawOverride" "modelRN.placeHolderList[71]" 
		""
		5 4 "modelRN" "|model:geo|model:feather229.drawOverride" "modelRN.placeHolderList[72]" 
		""
		5 4 "modelRN" "|model:geo|model:feather230.drawOverride" "modelRN.placeHolderList[73]" 
		""
		5 4 "modelRN" "|model:geo|model:feather231.drawOverride" "modelRN.placeHolderList[74]" 
		""
		5 4 "modelRN" "|model:geo|model:feather232.drawOverride" "modelRN.placeHolderList[75]" 
		""
		5 4 "modelRN" "|model:geo|model:feather233.drawOverride" "modelRN.placeHolderList[76]" 
		""
		5 4 "modelRN" "|model:geo|model:feather234.drawOverride" "modelRN.placeHolderList[77]" 
		""
		5 4 "modelRN" "|model:geo|model:feather235.drawOverride" "modelRN.placeHolderList[78]" 
		""
		5 4 "modelRN" "|model:geo|model:feather236.drawOverride" "modelRN.placeHolderList[79]" 
		""
		5 4 "modelRN" "|model:geo|model:feather237.drawOverride" "modelRN.placeHolderList[80]" 
		""
		5 4 "modelRN" "|model:geo|model:feather238.drawOverride" "modelRN.placeHolderList[81]" 
		""
		5 4 "modelRN" "|model:geo|model:feather216.drawOverride" "modelRN.placeHolderList[82]" 
		""
		5 4 "modelRN" "|model:geo|model:feather217.drawOverride" "modelRN.placeHolderList[83]" 
		""
		5 4 "modelRN" "|model:geo|model:feather239.drawOverride" "modelRN.placeHolderList[84]" 
		""
		5 4 "modelRN" "|model:geo|model:feather240.drawOverride" "modelRN.placeHolderList[85]" 
		""
		5 4 "modelRN" "|model:geo|model:feather241.drawOverride" "modelRN.placeHolderList[86]" 
		""
		5 4 "modelRN" "|model:geo|model:feather242.drawOverride" "modelRN.placeHolderList[87]" 
		""
		5 4 "modelRN" "|model:geo|model:feather243.drawOverride" "modelRN.placeHolderList[88]" 
		""
		5 4 "modelRN" "|model:geo|model:feather244.drawOverride" "modelRN.placeHolderList[89]" 
		""
		5 4 "modelRN" "|model:geo|model:feather245.drawOverride" "modelRN.placeHolderList[90]" 
		""
		5 4 "modelRN" "|model:geo|model:feather246.drawOverride" "modelRN.placeHolderList[91]" 
		""
		5 4 "modelRN" "|model:geo|model:feather247.drawOverride" "modelRN.placeHolderList[92]" 
		""
		5 4 "modelRN" "|model:geo|model:feather248.drawOverride" "modelRN.placeHolderList[93]" 
		""
		5 4 "modelRN" "|model:geo|model:feather249.drawOverride" "modelRN.placeHolderList[94]" 
		""
		5 4 "modelRN" "|model:geo|model:feather250.drawOverride" "modelRN.placeHolderList[95]" 
		""
		5 4 "modelRN" "|model:geo|model:feather251.drawOverride" "modelRN.placeHolderList[96]" 
		""
		5 4 "modelRN" "|model:geo|model:feather252.drawOverride" "modelRN.placeHolderList[97]" 
		""
		5 4 "modelRN" "|model:geo|model:feather253.drawOverride" "modelRN.placeHolderList[98]" 
		""
		5 4 "modelRN" "|model:geo|model:feather254.drawOverride" "modelRN.placeHolderList[99]" 
		""
		5 4 "modelRN" "|model:geo|model:feather255.drawOverride" "modelRN.placeHolderList[100]" 
		""
		5 4 "modelRN" "|model:geo|model:feather256.drawOverride" "modelRN.placeHolderList[101]" 
		""
		5 4 "modelRN" "|model:geo|model:feather257.drawOverride" "modelRN.placeHolderList[102]" 
		""
		5 4 "modelRN" "|model:geo|model:feather258.drawOverride" "modelRN.placeHolderList[103]" 
		""
		5 4 "modelRN" "|model:geo|model:feather259.drawOverride" "modelRN.placeHolderList[104]" 
		""
		5 4 "modelRN" "|model:geo|model:feather260.drawOverride" "modelRN.placeHolderList[105]" 
		""
		5 4 "modelRN" "|model:geo|model:feather215.drawOverride" "modelRN.placeHolderList[106]" 
		""
		5 4 "modelRN" "|model:geo|model:feather45.drawOverride" "modelRN.placeHolderList[107]" 
		""
		5 4 "modelRN" "|model:geo|model:feather49.drawOverride" "modelRN.placeHolderList[108]" 
		""
		5 4 "modelRN" "|model:geo|model:feather55.drawOverride" "modelRN.placeHolderList[109]" 
		""
		5 4 "modelRN" "|model:geo|model:feather50.drawOverride" "modelRN.placeHolderList[110]" 
		""
		5 4 "modelRN" "|model:geo|model:feather51.drawOverride" "modelRN.placeHolderList[111]" 
		""
		5 4 "modelRN" "|model:geo|model:feather47.drawOverride" "modelRN.placeHolderList[112]" 
		""
		5 4 "modelRN" "|model:geo|model:feather52.drawOverride" "modelRN.placeHolderList[113]" 
		""
		5 4 "modelRN" "|model:geo|model:feather53.drawOverride" "modelRN.placeHolderList[114]" 
		""
		5 4 "modelRN" "|model:geo|model:feather54.drawOverride" "modelRN.placeHolderList[115]" 
		""
		5 4 "modelRN" "|model:geo|model:feather56.drawOverride" "modelRN.placeHolderList[116]" 
		""
		5 4 "modelRN" "|model:geo|model:feather57.drawOverride" "modelRN.placeHolderList[117]" 
		""
		5 4 "modelRN" "|model:geo|model:feather58.drawOverride" "modelRN.placeHolderList[118]" 
		""
		5 4 "modelRN" "|model:geo|model:feather59.drawOverride" "modelRN.placeHolderList[119]" 
		""
		5 4 "modelRN" "|model:geo|model:feather60.drawOverride" "modelRN.placeHolderList[120]" 
		""
		5 4 "modelRN" "|model:geo|model:feather62.drawOverride" "modelRN.placeHolderList[121]" 
		""
		5 4 "modelRN" "|model:geo|model:feather63.drawOverride" "modelRN.placeHolderList[122]" 
		""
		5 4 "modelRN" "|model:geo|model:feather61.drawOverride" "modelRN.placeHolderList[123]" 
		""
		5 4 "modelRN" "|model:geo|model:feather65.drawOverride" "modelRN.placeHolderList[124]" 
		""
		5 4 "modelRN" "|model:geo|model:feather66.drawOverride" "modelRN.placeHolderList[125]" 
		""
		5 4 "modelRN" "|model:geo|model:feather64.drawOverride" "modelRN.placeHolderList[126]" 
		""
		5 4 "modelRN" "|model:geo|model:feather68.drawOverride" "modelRN.placeHolderList[127]" 
		""
		5 4 "modelRN" "|model:geo|model:feather67.drawOverride" "modelRN.placeHolderList[128]" 
		""
		5 4 "modelRN" "|model:geo|model:feather70.drawOverride" "modelRN.placeHolderList[129]" 
		""
		5 4 "modelRN" "|model:geo|model:feather69.drawOverride" "modelRN.placeHolderList[130]" 
		""
		5 4 "modelRN" "|model:geo|model:feather71.drawOverride" "modelRN.placeHolderList[131]" 
		""
		5 4 "modelRN" "|model:geo|model:feather72.drawOverride" "modelRN.placeHolderList[132]" 
		""
		5 4 "modelRN" "|model:geo|model:feather48.drawOverride" "modelRN.placeHolderList[133]" 
		""
		5 4 "modelRN" "|model:geo|model:feather261.drawOverride" "modelRN.placeHolderList[134]" 
		""
		5 3 "modelRN" "|model:geo|model:feather261|model:feather261Shape.worldMesh" 
		"modelRN.placeHolderList[135]" ""
		5 3 "modelRN" "|model:geo|model:feather261|model:feather261Shape.worldMatrix" 
		"modelRN.placeHolderList[136]" ""
		5 4 "modelRN" "|model:geo|model:feather262.drawOverride" "modelRN.placeHolderList[137]" 
		""
		5 3 "modelRN" "|model:geo|model:feather262|model:feather262Shape.worldMesh" 
		"modelRN.placeHolderList[138]" ""
		5 3 "modelRN" "|model:geo|model:feather262|model:feather262Shape.worldMatrix" 
		"modelRN.placeHolderList[139]" ""
		5 4 "modelRN" "|model:geo|model:feather263.drawOverride" "modelRN.placeHolderList[140]" 
		""
		5 3 "modelRN" "|model:geo|model:feather263|model:feather263Shape.worldMesh" 
		"modelRN.placeHolderList[141]" ""
		5 3 "modelRN" "|model:geo|model:feather263|model:feather263Shape.worldMatrix" 
		"modelRN.placeHolderList[142]" ""
		5 4 "modelRN" "|model:geo|model:feather264.drawOverride" "modelRN.placeHolderList[143]" 
		""
		5 3 "modelRN" "|model:geo|model:feather264|model:feather264Shape.worldMesh" 
		"modelRN.placeHolderList[144]" ""
		5 3 "modelRN" "|model:geo|model:feather264|model:feather264Shape.worldMatrix" 
		"modelRN.placeHolderList[145]" ""
		5 4 "modelRN" "|model:geo|model:feather265.drawOverride" "modelRN.placeHolderList[146]" 
		""
		5 3 "modelRN" "|model:geo|model:feather265|model:feather265Shape.worldMesh" 
		"modelRN.placeHolderList[147]" ""
		5 3 "modelRN" "|model:geo|model:feather265|model:feather265Shape.worldMatrix" 
		"modelRN.placeHolderList[148]" ""
		5 4 "modelRN" "|model:geo|model:feather266.drawOverride" "modelRN.placeHolderList[149]" 
		""
		5 3 "modelRN" "|model:geo|model:feather266|model:feather266Shape.worldMesh" 
		"modelRN.placeHolderList[150]" ""
		5 3 "modelRN" "|model:geo|model:feather266|model:feather266Shape.worldMatrix" 
		"modelRN.placeHolderList[151]" ""
		5 4 "modelRN" "|model:geo|model:feather267.drawOverride" "modelRN.placeHolderList[152]" 
		""
		5 3 "modelRN" "|model:geo|model:feather267|model:feather267Shape.worldMesh" 
		"modelRN.placeHolderList[153]" ""
		5 3 "modelRN" "|model:geo|model:feather267|model:feather267Shape.worldMatrix" 
		"modelRN.placeHolderList[154]" ""
		5 4 "modelRN" "|model:geo|model:feather268.drawOverride" "modelRN.placeHolderList[155]" 
		""
		5 3 "modelRN" "|model:geo|model:feather268|model:feather268Shape.worldMesh" 
		"modelRN.placeHolderList[156]" ""
		5 3 "modelRN" "|model:geo|model:feather268|model:feather268Shape.worldMatrix" 
		"modelRN.placeHolderList[157]" ""
		5 4 "modelRN" "|model:geo|model:feather269.drawOverride" "modelRN.placeHolderList[158]" 
		""
		5 3 "modelRN" "|model:geo|model:feather269|model:feather269Shape.worldMesh" 
		"modelRN.placeHolderList[159]" ""
		5 3 "modelRN" "|model:geo|model:feather269|model:feather269Shape.worldMatrix" 
		"modelRN.placeHolderList[160]" ""
		5 4 "modelRN" "|model:geo|model:feather270.drawOverride" "modelRN.placeHolderList[161]" 
		""
		5 3 "modelRN" "|model:geo|model:feather270|model:feather270Shape.worldMesh" 
		"modelRN.placeHolderList[162]" ""
		5 3 "modelRN" "|model:geo|model:feather270|model:feather270Shape.worldMatrix" 
		"modelRN.placeHolderList[163]" ""
		5 4 "modelRN" "|model:geo|model:feather271.drawOverride" "modelRN.placeHolderList[164]" 
		""
		5 3 "modelRN" "|model:geo|model:feather271|model:feather271Shape.worldMesh" 
		"modelRN.placeHolderList[165]" ""
		5 3 "modelRN" "|model:geo|model:feather271|model:feather271Shape.worldMatrix" 
		"modelRN.placeHolderList[166]" ""
		5 4 "modelRN" "|model:geo|model:feather272.drawOverride" "modelRN.placeHolderList[167]" 
		""
		5 3 "modelRN" "|model:geo|model:feather272|model:feather272Shape.worldMesh" 
		"modelRN.placeHolderList[168]" ""
		5 3 "modelRN" "|model:geo|model:feather272|model:feather272Shape.worldMatrix" 
		"modelRN.placeHolderList[169]" ""
		5 4 "modelRN" "|model:geo|model:feather273.drawOverride" "modelRN.placeHolderList[170]" 
		""
		5 3 "modelRN" "|model:geo|model:feather273|model:feather273Shape.worldMesh" 
		"modelRN.placeHolderList[171]" ""
		5 3 "modelRN" "|model:geo|model:feather273|model:feather273Shape.worldMatrix" 
		"modelRN.placeHolderList[172]" ""
		5 4 "modelRN" "|model:geo|model:feather274.drawOverride" "modelRN.placeHolderList[173]" 
		""
		5 3 "modelRN" "|model:geo|model:feather274|model:feather274Shape.worldMesh" 
		"modelRN.placeHolderList[174]" ""
		5 3 "modelRN" "|model:geo|model:feather274|model:feather274Shape.worldMatrix" 
		"modelRN.placeHolderList[175]" ""
		5 4 "modelRN" "|model:geo|model:feather275.drawOverride" "modelRN.placeHolderList[176]" 
		""
		5 3 "modelRN" "|model:geo|model:feather275|model:feather275Shape.worldMesh" 
		"modelRN.placeHolderList[177]" ""
		5 3 "modelRN" "|model:geo|model:feather275|model:feather275Shape.worldMatrix" 
		"modelRN.placeHolderList[178]" ""
		5 4 "modelRN" "|model:geo|model:feather276.drawOverride" "modelRN.placeHolderList[179]" 
		""
		5 3 "modelRN" "|model:geo|model:feather276|model:feather276Shape.worldMesh" 
		"modelRN.placeHolderList[180]" ""
		5 3 "modelRN" "|model:geo|model:feather276|model:feather276Shape.worldMatrix" 
		"modelRN.placeHolderList[181]" ""
		5 4 "modelRN" "|model:geo|model:feather277.drawOverride" "modelRN.placeHolderList[182]" 
		""
		5 3 "modelRN" "|model:geo|model:feather277|model:feather277Shape.worldMesh" 
		"modelRN.placeHolderList[183]" ""
		5 3 "modelRN" "|model:geo|model:feather277|model:feather277Shape.worldMatrix" 
		"modelRN.placeHolderList[184]" ""
		5 4 "modelRN" "|model:geo|model:feather278.drawOverride" "modelRN.placeHolderList[185]" 
		""
		5 3 "modelRN" "|model:geo|model:feather278|model:feather278Shape.worldMesh" 
		"modelRN.placeHolderList[186]" ""
		5 3 "modelRN" "|model:geo|model:feather278|model:feather278Shape.worldMatrix" 
		"modelRN.placeHolderList[187]" ""
		5 4 "modelRN" "|model:geo|model:feather279.drawOverride" "modelRN.placeHolderList[188]" 
		""
		5 3 "modelRN" "|model:geo|model:feather279|model:feather279Shape.worldMesh" 
		"modelRN.placeHolderList[189]" ""
		5 3 "modelRN" "|model:geo|model:feather279|model:feather279Shape.worldMatrix" 
		"modelRN.placeHolderList[190]" ""
		5 4 "modelRN" "|model:geo|model:feather280.drawOverride" "modelRN.placeHolderList[191]" 
		""
		5 3 "modelRN" "|model:geo|model:feather280|model:feather280Shape.worldMesh" 
		"modelRN.placeHolderList[192]" ""
		5 3 "modelRN" "|model:geo|model:feather280|model:feather280Shape.worldMatrix" 
		"modelRN.placeHolderList[193]" ""
		5 4 "modelRN" "|model:geo|model:feather281.drawOverride" "modelRN.placeHolderList[194]" 
		""
		5 3 "modelRN" "|model:geo|model:feather281|model:feather281Shape.worldMesh" 
		"modelRN.placeHolderList[195]" ""
		5 3 "modelRN" "|model:geo|model:feather281|model:feather281Shape.worldMatrix" 
		"modelRN.placeHolderList[196]" ""
		5 4 "modelRN" "|model:geo|model:feather282.drawOverride" "modelRN.placeHolderList[197]" 
		""
		5 3 "modelRN" "|model:geo|model:feather282|model:feather282Shape.worldMesh" 
		"modelRN.placeHolderList[198]" ""
		5 3 "modelRN" "|model:geo|model:feather282|model:feather282Shape.worldMatrix" 
		"modelRN.placeHolderList[199]" ""
		5 4 "modelRN" "|model:geo|model:feather283.drawOverride" "modelRN.placeHolderList[200]" 
		""
		5 3 "modelRN" "|model:geo|model:feather283|model:feather283Shape.worldMesh" 
		"modelRN.placeHolderList[201]" ""
		5 3 "modelRN" "|model:geo|model:feather283|model:feather283Shape.worldMatrix" 
		"modelRN.placeHolderList[202]" ""
		5 4 "modelRN" "|model:geo|model:feather284.drawOverride" "modelRN.placeHolderList[203]" 
		""
		5 3 "modelRN" "|model:geo|model:feather284|model:feather284Shape.worldMesh" 
		"modelRN.placeHolderList[204]" ""
		5 3 "modelRN" "|model:geo|model:feather284|model:feather284Shape.worldMatrix" 
		"modelRN.placeHolderList[205]" ""
		5 4 "modelRN" "|model:geo|model:feather285.drawOverride" "modelRN.placeHolderList[206]" 
		""
		5 3 "modelRN" "|model:geo|model:feather285|model:feather285Shape.worldMesh" 
		"modelRN.placeHolderList[207]" ""
		5 3 "modelRN" "|model:geo|model:feather285|model:feather285Shape.worldMatrix" 
		"modelRN.placeHolderList[208]" ""
		5 4 "modelRN" "|model:geo|model:feather286.drawOverride" "modelRN.placeHolderList[209]" 
		""
		5 3 "modelRN" "|model:geo|model:feather286|model:feather286Shape.worldMesh" 
		"modelRN.placeHolderList[210]" ""
		5 3 "modelRN" "|model:geo|model:feather286|model:feather286Shape.worldMatrix" 
		"modelRN.placeHolderList[211]" ""
		5 4 "modelRN" "|model:geo|model:feather287.drawOverride" "modelRN.placeHolderList[212]" 
		""
		5 3 "modelRN" "|model:geo|model:feather287|model:feather287Shape.worldMesh" 
		"modelRN.placeHolderList[213]" ""
		5 3 "modelRN" "|model:geo|model:feather287|model:feather287Shape.worldMatrix" 
		"modelRN.placeHolderList[214]" ""
		5 4 "modelRN" "|model:geo|model:feather288.drawOverride" "modelRN.placeHolderList[215]" 
		""
		5 3 "modelRN" "|model:geo|model:feather288|model:feather288Shape.worldMesh" 
		"modelRN.placeHolderList[216]" ""
		5 3 "modelRN" "|model:geo|model:feather288|model:feather288Shape.worldMatrix" 
		"modelRN.placeHolderList[217]" ""
		5 4 "modelRN" "|model:geo|model:feather289.drawOverride" "modelRN.placeHolderList[218]" 
		""
		5 3 "modelRN" "|model:geo|model:feather289|model:feather289Shape.worldMesh" 
		"modelRN.placeHolderList[219]" ""
		5 3 "modelRN" "|model:geo|model:feather289|model:feather289Shape.worldMatrix" 
		"modelRN.placeHolderList[220]" ""
		5 4 "modelRN" "|model:geo|model:feather290.drawOverride" "modelRN.placeHolderList[221]" 
		""
		5 3 "modelRN" "|model:geo|model:feather290|model:feather290Shape.worldMesh" 
		"modelRN.placeHolderList[222]" ""
		5 3 "modelRN" "|model:geo|model:feather290|model:feather290Shape.worldMatrix" 
		"modelRN.placeHolderList[223]" ""
		5 4 "modelRN" "|model:geo|model:feather291.drawOverride" "modelRN.placeHolderList[224]" 
		""
		5 3 "modelRN" "|model:geo|model:feather291|model:feather291Shape.worldMesh" 
		"modelRN.placeHolderList[225]" ""
		5 3 "modelRN" "|model:geo|model:feather291|model:feather291Shape.worldMatrix" 
		"modelRN.placeHolderList[226]" ""
		5 4 "modelRN" "|model:geo|model:feather292.drawOverride" "modelRN.placeHolderList[227]" 
		""
		5 3 "modelRN" "|model:geo|model:feather292|model:feather292Shape.worldMesh" 
		"modelRN.placeHolderList[228]" ""
		5 3 "modelRN" "|model:geo|model:feather292|model:feather292Shape.worldMatrix" 
		"modelRN.placeHolderList[229]" ""
		5 4 "modelRN" "|model:geo|model:feather293.drawOverride" "modelRN.placeHolderList[230]" 
		""
		5 3 "modelRN" "|model:geo|model:feather293|model:feather293Shape.worldMesh" 
		"modelRN.placeHolderList[231]" ""
		5 3 "modelRN" "|model:geo|model:feather293|model:feather293Shape.worldMatrix" 
		"modelRN.placeHolderList[232]" ""
		5 4 "modelRN" "|model:geo|model:feather294.drawOverride" "modelRN.placeHolderList[233]" 
		""
		5 3 "modelRN" "|model:geo|model:feather294|model:feather294Shape.worldMesh" 
		"modelRN.placeHolderList[234]" ""
		5 3 "modelRN" "|model:geo|model:feather294|model:feather294Shape.worldMatrix" 
		"modelRN.placeHolderList[235]" ""
		5 4 "modelRN" "|model:geo|model:feather295.drawOverride" "modelRN.placeHolderList[236]" 
		""
		5 3 "modelRN" "|model:geo|model:feather295|model:feather295Shape.worldMesh" 
		"modelRN.placeHolderList[237]" ""
		5 3 "modelRN" "|model:geo|model:feather295|model:feather295Shape.worldMatrix" 
		"modelRN.placeHolderList[238]" ""
		5 4 "modelRN" "|model:geo|model:feather296.drawOverride" "modelRN.placeHolderList[239]" 
		""
		5 3 "modelRN" "|model:geo|model:feather296|model:feather296Shape.worldMesh" 
		"modelRN.placeHolderList[240]" ""
		5 3 "modelRN" "|model:geo|model:feather296|model:feather296Shape.worldMatrix" 
		"modelRN.placeHolderList[241]" ""
		5 4 "modelRN" "|model:geo|model:feather297.drawOverride" "modelRN.placeHolderList[242]" 
		""
		5 3 "modelRN" "|model:geo|model:feather297|model:feather297Shape.worldMesh" 
		"modelRN.placeHolderList[243]" ""
		5 3 "modelRN" "|model:geo|model:feather297|model:feather297Shape.worldMatrix" 
		"modelRN.placeHolderList[244]" ""
		5 4 "modelRN" "|model:geo|model:feather298.drawOverride" "modelRN.placeHolderList[245]" 
		""
		5 3 "modelRN" "|model:geo|model:feather298|model:feather298Shape.worldMesh" 
		"modelRN.placeHolderList[246]" ""
		5 3 "modelRN" "|model:geo|model:feather298|model:feather298Shape.worldMatrix" 
		"modelRN.placeHolderList[247]" ""
		5 4 "modelRN" "|model:geo|model:feather299.drawOverride" "modelRN.placeHolderList[248]" 
		""
		5 3 "modelRN" "|model:geo|model:feather299|model:feather299Shape.worldMesh" 
		"modelRN.placeHolderList[249]" ""
		5 3 "modelRN" "|model:geo|model:feather299|model:feather299Shape.worldMatrix" 
		"modelRN.placeHolderList[250]" ""
		5 4 "modelRN" "|model:geo|model:feather300.drawOverride" "modelRN.placeHolderList[251]" 
		""
		5 3 "modelRN" "|model:geo|model:feather300|model:feather300Shape.worldMesh" 
		"modelRN.placeHolderList[252]" ""
		5 3 "modelRN" "|model:geo|model:feather300|model:feather300Shape.worldMatrix" 
		"modelRN.placeHolderList[253]" ""
		5 4 "modelRN" "|model:geo|model:feather301.drawOverride" "modelRN.placeHolderList[254]" 
		""
		5 3 "modelRN" "|model:geo|model:feather301|model:feather301Shape.worldMesh" 
		"modelRN.placeHolderList[255]" ""
		5 3 "modelRN" "|model:geo|model:feather301|model:feather301Shape.worldMatrix" 
		"modelRN.placeHolderList[256]" ""
		5 4 "modelRN" "|model:geo|model:feather302.drawOverride" "modelRN.placeHolderList[257]" 
		""
		5 3 "modelRN" "|model:geo|model:feather302|model:feather302Shape.worldMesh" 
		"modelRN.placeHolderList[258]" ""
		5 3 "modelRN" "|model:geo|model:feather302|model:feather302Shape.worldMatrix" 
		"modelRN.placeHolderList[259]" ""
		5 4 "modelRN" "|model:geo|model:feather303.drawOverride" "modelRN.placeHolderList[260]" 
		""
		5 3 "modelRN" "|model:geo|model:feather303|model:feather303Shape.worldMesh" 
		"modelRN.placeHolderList[261]" ""
		5 3 "modelRN" "|model:geo|model:feather303|model:feather303Shape.worldMatrix" 
		"modelRN.placeHolderList[262]" ""
		5 4 "modelRN" "|model:geo|model:feather304.drawOverride" "modelRN.placeHolderList[263]" 
		""
		5 3 "modelRN" "|model:geo|model:feather304|model:feather304Shape.worldMesh" 
		"modelRN.placeHolderList[264]" ""
		5 3 "modelRN" "|model:geo|model:feather304|model:feather304Shape.worldMatrix" 
		"modelRN.placeHolderList[265]" ""
		5 4 "modelRN" "|model:geo|model:feather305.drawOverride" "modelRN.placeHolderList[266]" 
		""
		5 3 "modelRN" "|model:geo|model:feather305|model:feather305Shape.worldMesh" 
		"modelRN.placeHolderList[267]" ""
		5 3 "modelRN" "|model:geo|model:feather305|model:feather305Shape.worldMatrix" 
		"modelRN.placeHolderList[268]" ""
		5 4 "modelRN" "|model:geo|model:feather306.drawOverride" "modelRN.placeHolderList[269]" 
		""
		5 3 "modelRN" "|model:geo|model:feather306|model:feather306Shape.worldMesh" 
		"modelRN.placeHolderList[270]" ""
		5 3 "modelRN" "|model:geo|model:feather306|model:feather306Shape.worldMatrix" 
		"modelRN.placeHolderList[271]" ""
		5 4 "modelRN" "|model:geo|model:feather307.drawOverride" "modelRN.placeHolderList[272]" 
		""
		5 3 "modelRN" "|model:geo|model:feather307|model:feather307Shape.worldMesh" 
		"modelRN.placeHolderList[273]" ""
		5 3 "modelRN" "|model:geo|model:feather307|model:feather307Shape.worldMatrix" 
		"modelRN.placeHolderList[274]" ""
		5 4 "modelRN" "|model:geo|model:feather308.drawOverride" "modelRN.placeHolderList[275]" 
		""
		5 3 "modelRN" "|model:geo|model:feather308|model:feather308Shape.worldMesh" 
		"modelRN.placeHolderList[276]" ""
		5 3 "modelRN" "|model:geo|model:feather308|model:feather308Shape.worldMatrix" 
		"modelRN.placeHolderList[277]" ""
		5 4 "modelRN" "|model:geo|model:feather309.drawOverride" "modelRN.placeHolderList[278]" 
		""
		5 3 "modelRN" "|model:geo|model:feather309|model:feather309Shape.worldMesh" 
		"modelRN.placeHolderList[279]" ""
		5 3 "modelRN" "|model:geo|model:feather309|model:feather309Shape.worldMatrix" 
		"modelRN.placeHolderList[280]" ""
		5 4 "modelRN" "|model:geo|model:feather310.drawOverride" "modelRN.placeHolderList[281]" 
		""
		5 3 "modelRN" "|model:geo|model:feather310|model:feather310Shape.worldMesh" 
		"modelRN.placeHolderList[282]" ""
		5 3 "modelRN" "|model:geo|model:feather310|model:feather310Shape.worldMatrix" 
		"modelRN.placeHolderList[283]" ""
		5 4 "modelRN" "|model:geo|model:feather311.drawOverride" "modelRN.placeHolderList[284]" 
		""
		5 3 "modelRN" "|model:geo|model:feather311|model:feather311Shape.worldMesh" 
		"modelRN.placeHolderList[285]" ""
		5 3 "modelRN" "|model:geo|model:feather311|model:feather311Shape.worldMatrix" 
		"modelRN.placeHolderList[286]" ""
		5 4 "modelRN" "|model:geo|model:feather312.drawOverride" "modelRN.placeHolderList[287]" 
		""
		5 3 "modelRN" "|model:geo|model:feather312|model:feather312Shape.worldMesh" 
		"modelRN.placeHolderList[288]" ""
		5 3 "modelRN" "|model:geo|model:feather312|model:feather312Shape.worldMatrix" 
		"modelRN.placeHolderList[289]" ""
		5 4 "modelRN" "|model:geo|model:feather313.drawOverride" "modelRN.placeHolderList[290]" 
		""
		5 3 "modelRN" "|model:geo|model:feather313|model:feather313Shape.worldMesh" 
		"modelRN.placeHolderList[291]" ""
		5 3 "modelRN" "|model:geo|model:feather313|model:feather313Shape.worldMatrix" 
		"modelRN.placeHolderList[292]" ""
		5 4 "modelRN" "|model:geo|model:feather314.drawOverride" "modelRN.placeHolderList[293]" 
		""
		5 3 "modelRN" "|model:geo|model:feather314|model:feather314Shape.worldMesh" 
		"modelRN.placeHolderList[294]" ""
		5 3 "modelRN" "|model:geo|model:feather314|model:feather314Shape.worldMatrix" 
		"modelRN.placeHolderList[295]" ""
		5 4 "modelRN" "|model:geo|model:feather315.drawOverride" "modelRN.placeHolderList[296]" 
		""
		5 3 "modelRN" "|model:geo|model:feather315|model:feather315Shape.worldMesh" 
		"modelRN.placeHolderList[297]" ""
		5 3 "modelRN" "|model:geo|model:feather315|model:feather315Shape.worldMatrix" 
		"modelRN.placeHolderList[298]" ""
		5 4 "modelRN" "|model:geo|model:feather316.drawOverride" "modelRN.placeHolderList[299]" 
		""
		5 3 "modelRN" "|model:geo|model:feather316|model:feather316Shape.worldMesh" 
		"modelRN.placeHolderList[300]" ""
		5 3 "modelRN" "|model:geo|model:feather316|model:feather316Shape.worldMatrix" 
		"modelRN.placeHolderList[301]" ""
		5 4 "modelRN" "|model:geo|model:feather317.drawOverride" "modelRN.placeHolderList[302]" 
		""
		5 3 "modelRN" "|model:geo|model:feather317|model:feather317Shape.worldMesh" 
		"modelRN.placeHolderList[303]" ""
		5 3 "modelRN" "|model:geo|model:feather317|model:feather317Shape.worldMatrix" 
		"modelRN.placeHolderList[304]" ""
		5 4 "modelRN" "|model:geo|model:feather318.drawOverride" "modelRN.placeHolderList[305]" 
		""
		5 3 "modelRN" "|model:geo|model:feather318|model:feather318Shape.worldMesh" 
		"modelRN.placeHolderList[306]" ""
		5 3 "modelRN" "|model:geo|model:feather318|model:feather318Shape.worldMatrix" 
		"modelRN.placeHolderList[307]" ""
		5 4 "modelRN" "|model:geo|model:feather319.drawOverride" "modelRN.placeHolderList[308]" 
		""
		5 3 "modelRN" "|model:geo|model:feather319|model:feather319Shape.worldMesh" 
		"modelRN.placeHolderList[309]" ""
		5 3 "modelRN" "|model:geo|model:feather319|model:feather319Shape.worldMatrix" 
		"modelRN.placeHolderList[310]" ""
		5 4 "modelRN" "|model:geo|model:feather320.drawOverride" "modelRN.placeHolderList[311]" 
		""
		5 3 "modelRN" "|model:geo|model:feather320|model:feather320Shape.worldMesh" 
		"modelRN.placeHolderList[312]" ""
		5 3 "modelRN" "|model:geo|model:feather320|model:feather320Shape.worldMatrix" 
		"modelRN.placeHolderList[313]" ""
		5 4 "modelRN" "|model:geo|model:feather321.drawOverride" "modelRN.placeHolderList[314]" 
		""
		5 3 "modelRN" "|model:geo|model:feather321|model:feather321Shape.worldMesh" 
		"modelRN.placeHolderList[315]" ""
		5 3 "modelRN" "|model:geo|model:feather321|model:feather321Shape.worldMatrix" 
		"modelRN.placeHolderList[316]" ""
		5 4 "modelRN" "|model:geo|model:feather322.drawOverride" "modelRN.placeHolderList[317]" 
		""
		5 3 "modelRN" "|model:geo|model:feather322|model:feather322Shape.worldMesh" 
		"modelRN.placeHolderList[318]" ""
		5 3 "modelRN" "|model:geo|model:feather322|model:feather322Shape.worldMatrix" 
		"modelRN.placeHolderList[319]" ""
		5 4 "modelRN" "|model:geo|model:feather323.drawOverride" "modelRN.placeHolderList[320]" 
		""
		5 3 "modelRN" "|model:geo|model:feather323|model:feather323Shape.worldMesh" 
		"modelRN.placeHolderList[321]" ""
		5 3 "modelRN" "|model:geo|model:feather323|model:feather323Shape.worldMatrix" 
		"modelRN.placeHolderList[322]" ""
		5 4 "modelRN" "|model:geo|model:feather324.drawOverride" "modelRN.placeHolderList[323]" 
		""
		5 3 "modelRN" "|model:geo|model:feather324|model:feather324Shape.worldMesh" 
		"modelRN.placeHolderList[324]" ""
		5 3 "modelRN" "|model:geo|model:feather324|model:feather324Shape.worldMatrix" 
		"modelRN.placeHolderList[325]" ""
		5 4 "modelRN" "|model:geo|model:feather325.drawOverride" "modelRN.placeHolderList[326]" 
		""
		5 3 "modelRN" "|model:geo|model:feather325|model:feather325Shape.worldMesh" 
		"modelRN.placeHolderList[327]" ""
		5 3 "modelRN" "|model:geo|model:feather325|model:feather325Shape.worldMatrix" 
		"modelRN.placeHolderList[328]" ""
		5 4 "modelRN" "|model:geo|model:feather326.drawOverride" "modelRN.placeHolderList[329]" 
		""
		5 3 "modelRN" "|model:geo|model:feather326|model:feather326Shape.worldMesh" 
		"modelRN.placeHolderList[330]" ""
		5 3 "modelRN" "|model:geo|model:feather326|model:feather326Shape.worldMatrix" 
		"modelRN.placeHolderList[331]" ""
		5 4 "modelRN" "|model:geo|model:feather327.drawOverride" "modelRN.placeHolderList[332]" 
		""
		5 3 "modelRN" "|model:geo|model:feather327|model:feather327Shape.worldMesh" 
		"modelRN.placeHolderList[333]" ""
		5 3 "modelRN" "|model:geo|model:feather327|model:feather327Shape.worldMatrix" 
		"modelRN.placeHolderList[334]" ""
		5 4 "modelRN" "|model:geo|model:feather328.drawOverride" "modelRN.placeHolderList[335]" 
		""
		5 3 "modelRN" "|model:geo|model:feather328|model:feather328Shape.worldMesh" 
		"modelRN.placeHolderList[336]" ""
		5 3 "modelRN" "|model:geo|model:feather328|model:feather328Shape.worldMatrix" 
		"modelRN.placeHolderList[337]" ""
		5 4 "modelRN" "|model:geo|model:feather329.drawOverride" "modelRN.placeHolderList[338]" 
		""
		5 3 "modelRN" "|model:geo|model:feather329|model:feather329Shape.worldMesh" 
		"modelRN.placeHolderList[339]" ""
		5 3 "modelRN" "|model:geo|model:feather329|model:feather329Shape.worldMatrix" 
		"modelRN.placeHolderList[340]" ""
		5 4 "modelRN" "|model:geo|model:feather330.drawOverride" "modelRN.placeHolderList[341]" 
		""
		5 3 "modelRN" "|model:geo|model:feather330|model:feather330Shape.worldMesh" 
		"modelRN.placeHolderList[342]" ""
		5 3 "modelRN" "|model:geo|model:feather330|model:feather330Shape.worldMatrix" 
		"modelRN.placeHolderList[343]" ""
		5 4 "modelRN" "|model:geo|model:feather331.drawOverride" "modelRN.placeHolderList[344]" 
		""
		5 3 "modelRN" "|model:geo|model:feather331|model:feather331Shape.worldMesh" 
		"modelRN.placeHolderList[345]" ""
		5 3 "modelRN" "|model:geo|model:feather331|model:feather331Shape.worldMatrix" 
		"modelRN.placeHolderList[346]" ""
		5 4 "modelRN" "|model:geo|model:feather332.drawOverride" "modelRN.placeHolderList[347]" 
		""
		5 3 "modelRN" "|model:geo|model:feather332|model:feather332Shape.worldMesh" 
		"modelRN.placeHolderList[348]" ""
		5 3 "modelRN" "|model:geo|model:feather332|model:feather332Shape.worldMatrix" 
		"modelRN.placeHolderList[349]" ""
		5 4 "modelRN" "|model:geo|model:feather333.drawOverride" "modelRN.placeHolderList[350]" 
		""
		5 3 "modelRN" "|model:geo|model:feather333|model:feather333Shape.worldMesh" 
		"modelRN.placeHolderList[351]" ""
		5 3 "modelRN" "|model:geo|model:feather333|model:feather333Shape.worldMatrix" 
		"modelRN.placeHolderList[352]" ""
		5 4 "modelRN" "|model:geo|model:feather334.drawOverride" "modelRN.placeHolderList[353]" 
		""
		5 3 "modelRN" "|model:geo|model:feather334|model:feather334Shape.worldMesh" 
		"modelRN.placeHolderList[354]" ""
		5 3 "modelRN" "|model:geo|model:feather334|model:feather334Shape.worldMatrix" 
		"modelRN.placeHolderList[355]" ""
		5 4 "modelRN" "|model:geo|model:feather335.drawOverride" "modelRN.placeHolderList[356]" 
		""
		5 3 "modelRN" "|model:geo|model:feather335|model:feather335Shape.worldMesh" 
		"modelRN.placeHolderList[357]" ""
		5 3 "modelRN" "|model:geo|model:feather335|model:feather335Shape.worldMatrix" 
		"modelRN.placeHolderList[358]" ""
		5 4 "modelRN" "|model:geo|model:feather336.drawOverride" "modelRN.placeHolderList[359]" 
		""
		5 3 "modelRN" "|model:geo|model:feather336|model:feather336Shape.worldMesh" 
		"modelRN.placeHolderList[360]" ""
		5 3 "modelRN" "|model:geo|model:feather336|model:feather336Shape.worldMatrix" 
		"modelRN.placeHolderList[361]" ""
		5 4 "modelRN" "|model:geo|model:feather337.drawOverride" "modelRN.placeHolderList[362]" 
		""
		5 3 "modelRN" "|model:geo|model:feather337|model:feather337Shape.worldMesh" 
		"modelRN.placeHolderList[363]" ""
		5 3 "modelRN" "|model:geo|model:feather337|model:feather337Shape.worldMatrix" 
		"modelRN.placeHolderList[364]" ""
		5 4 "modelRN" "|model:geo|model:feather338.drawOverride" "modelRN.placeHolderList[365]" 
		""
		5 3 "modelRN" "|model:geo|model:feather338|model:feather338Shape.worldMesh" 
		"modelRN.placeHolderList[366]" ""
		5 3 "modelRN" "|model:geo|model:feather338|model:feather338Shape.worldMatrix" 
		"modelRN.placeHolderList[367]" ""
		5 4 "modelRN" "|model:geo|model:feather339.drawOverride" "modelRN.placeHolderList[368]" 
		""
		5 3 "modelRN" "|model:geo|model:feather339|model:feather339Shape.worldMesh" 
		"modelRN.placeHolderList[369]" ""
		5 3 "modelRN" "|model:geo|model:feather339|model:feather339Shape.worldMatrix" 
		"modelRN.placeHolderList[370]" ""
		5 4 "modelRN" "|model:geo|model:feather340.drawOverride" "modelRN.placeHolderList[371]" 
		""
		5 3 "modelRN" "|model:geo|model:feather340|model:feather340Shape.worldMesh" 
		"modelRN.placeHolderList[372]" ""
		5 3 "modelRN" "|model:geo|model:feather340|model:feather340Shape.worldMatrix" 
		"modelRN.placeHolderList[373]" ""
		5 4 "modelRN" "|model:geo|model:feather341.drawOverride" "modelRN.placeHolderList[374]" 
		""
		5 3 "modelRN" "|model:geo|model:feather341|model:feather341Shape.worldMesh" 
		"modelRN.placeHolderList[375]" ""
		5 3 "modelRN" "|model:geo|model:feather341|model:feather341Shape.worldMatrix" 
		"modelRN.placeHolderList[376]" ""
		5 4 "modelRN" "|model:geo|model:feather342.drawOverride" "modelRN.placeHolderList[377]" 
		""
		5 3 "modelRN" "|model:geo|model:feather342|model:feather342Shape.worldMesh" 
		"modelRN.placeHolderList[378]" ""
		5 3 "modelRN" "|model:geo|model:feather342|model:feather342Shape.worldMatrix" 
		"modelRN.placeHolderList[379]" ""
		5 4 "modelRN" "|model:geo|model:feather343.drawOverride" "modelRN.placeHolderList[380]" 
		""
		5 3 "modelRN" "|model:geo|model:feather343|model:feather343Shape.worldMesh" 
		"modelRN.placeHolderList[381]" ""
		5 3 "modelRN" "|model:geo|model:feather343|model:feather343Shape.worldMatrix" 
		"modelRN.placeHolderList[382]" ""
		5 4 "modelRN" "|model:geo|model:feather344.drawOverride" "modelRN.placeHolderList[383]" 
		""
		5 3 "modelRN" "|model:geo|model:feather344|model:feather344Shape.worldMesh" 
		"modelRN.placeHolderList[384]" ""
		5 3 "modelRN" "|model:geo|model:feather344|model:feather344Shape.worldMatrix" 
		"modelRN.placeHolderList[385]" ""
		5 4 "modelRN" "|model:geo|model:feather345.drawOverride" "modelRN.placeHolderList[386]" 
		""
		5 3 "modelRN" "|model:geo|model:feather345|model:feather345Shape.worldMesh" 
		"modelRN.placeHolderList[387]" ""
		5 3 "modelRN" "|model:geo|model:feather345|model:feather345Shape.worldMatrix" 
		"modelRN.placeHolderList[388]" ""
		5 4 "modelRN" "|model:geo|model:feather346.drawOverride" "modelRN.placeHolderList[389]" 
		""
		5 3 "modelRN" "|model:geo|model:feather346|model:feather346Shape.worldMesh" 
		"modelRN.placeHolderList[390]" ""
		5 3 "modelRN" "|model:geo|model:feather346|model:feather346Shape.worldMatrix" 
		"modelRN.placeHolderList[391]" ""
		5 4 "modelRN" "|model:geo|model:feather347.drawOverride" "modelRN.placeHolderList[392]" 
		""
		5 3 "modelRN" "|model:geo|model:feather347|model:feather347Shape.worldMesh" 
		"modelRN.placeHolderList[393]" ""
		5 3 "modelRN" "|model:geo|model:feather347|model:feather347Shape.worldMatrix" 
		"modelRN.placeHolderList[394]" ""
		5 4 "modelRN" "|model:geo|model:feather348.drawOverride" "modelRN.placeHolderList[395]" 
		""
		5 3 "modelRN" "|model:geo|model:feather348|model:feather348Shape.worldMesh" 
		"modelRN.placeHolderList[396]" ""
		5 3 "modelRN" "|model:geo|model:feather348|model:feather348Shape.worldMatrix" 
		"modelRN.placeHolderList[397]" ""
		5 4 "modelRN" "|model:geo|model:feather349.drawOverride" "modelRN.placeHolderList[398]" 
		""
		5 3 "modelRN" "|model:geo|model:feather349|model:feather349Shape.worldMesh" 
		"modelRN.placeHolderList[399]" ""
		5 3 "modelRN" "|model:geo|model:feather349|model:feather349Shape.worldMatrix" 
		"modelRN.placeHolderList[400]" ""
		5 4 "modelRN" "|model:geo|model:feather350.drawOverride" "modelRN.placeHolderList[401]" 
		""
		5 3 "modelRN" "|model:geo|model:feather350|model:feather350Shape.worldMesh" 
		"modelRN.placeHolderList[402]" ""
		5 3 "modelRN" "|model:geo|model:feather350|model:feather350Shape.worldMatrix" 
		"modelRN.placeHolderList[403]" ""
		5 4 "modelRN" "|model:geo|model:feather351.drawOverride" "modelRN.placeHolderList[404]" 
		""
		5 3 "modelRN" "|model:geo|model:feather351|model:feather351Shape.worldMesh" 
		"modelRN.placeHolderList[405]" ""
		5 3 "modelRN" "|model:geo|model:feather351|model:feather351Shape.worldMatrix" 
		"modelRN.placeHolderList[406]" ""
		5 4 "modelRN" "|model:geo|model:feather352.drawOverride" "modelRN.placeHolderList[407]" 
		""
		5 3 "modelRN" "|model:geo|model:feather352|model:feather352Shape.worldMesh" 
		"modelRN.placeHolderList[408]" ""
		5 3 "modelRN" "|model:geo|model:feather352|model:feather352Shape.worldMatrix" 
		"modelRN.placeHolderList[409]" ""
		5 4 "modelRN" "|model:geo|model:feather353.drawOverride" "modelRN.placeHolderList[410]" 
		""
		5 3 "modelRN" "|model:geo|model:feather353|model:feather353Shape.worldMesh" 
		"modelRN.placeHolderList[411]" ""
		5 3 "modelRN" "|model:geo|model:feather353|model:feather353Shape.worldMatrix" 
		"modelRN.placeHolderList[412]" ""
		5 4 "modelRN" "|model:geo|model:feather354.drawOverride" "modelRN.placeHolderList[413]" 
		""
		5 3 "modelRN" "|model:geo|model:feather354|model:feather354Shape.worldMesh" 
		"modelRN.placeHolderList[414]" ""
		5 3 "modelRN" "|model:geo|model:feather354|model:feather354Shape.worldMatrix" 
		"modelRN.placeHolderList[415]" ""
		5 4 "modelRN" "|model:geo|model:feather355.drawOverride" "modelRN.placeHolderList[416]" 
		""
		5 3 "modelRN" "|model:geo|model:feather355|model:feather355Shape.worldMesh" 
		"modelRN.placeHolderList[417]" ""
		5 3 "modelRN" "|model:geo|model:feather355|model:feather355Shape.worldMatrix" 
		"modelRN.placeHolderList[418]" ""
		5 4 "modelRN" "|model:geo|model:feather356.drawOverride" "modelRN.placeHolderList[419]" 
		""
		5 3 "modelRN" "|model:geo|model:feather356|model:feather356Shape.worldMesh" 
		"modelRN.placeHolderList[420]" ""
		5 3 "modelRN" "|model:geo|model:feather356|model:feather356Shape.worldMatrix" 
		"modelRN.placeHolderList[421]" ""
		5 4 "modelRN" "|model:geo|model:feather357.drawOverride" "modelRN.placeHolderList[422]" 
		""
		5 3 "modelRN" "|model:geo|model:feather357|model:feather357Shape.worldMesh" 
		"modelRN.placeHolderList[423]" ""
		5 3 "modelRN" "|model:geo|model:feather357|model:feather357Shape.worldMatrix" 
		"modelRN.placeHolderList[424]" ""
		5 4 "modelRN" "|model:geo|model:feather358.drawOverride" "modelRN.placeHolderList[425]" 
		""
		5 3 "modelRN" "|model:geo|model:feather358|model:feather358Shape.worldMesh" 
		"modelRN.placeHolderList[426]" ""
		5 3 "modelRN" "|model:geo|model:feather358|model:feather358Shape.worldMatrix" 
		"modelRN.placeHolderList[427]" ""
		5 4 "modelRN" "|model:geo|model:feather359.drawOverride" "modelRN.placeHolderList[428]" 
		""
		5 3 "modelRN" "|model:geo|model:feather359|model:feather359Shape.worldMesh" 
		"modelRN.placeHolderList[429]" ""
		5 3 "modelRN" "|model:geo|model:feather359|model:feather359Shape.worldMatrix" 
		"modelRN.placeHolderList[430]" ""
		5 4 "modelRN" "|model:geo|model:feather360.drawOverride" "modelRN.placeHolderList[431]" 
		""
		5 3 "modelRN" "|model:geo|model:feather360|model:feather360Shape.worldMesh" 
		"modelRN.placeHolderList[432]" ""
		5 3 "modelRN" "|model:geo|model:feather360|model:feather360Shape.worldMatrix" 
		"modelRN.placeHolderList[433]" ""
		5 4 "modelRN" "|model:geo|model:feather361.drawOverride" "modelRN.placeHolderList[434]" 
		""
		5 3 "modelRN" "|model:geo|model:feather361|model:feather361Shape.worldMesh" 
		"modelRN.placeHolderList[435]" ""
		5 3 "modelRN" "|model:geo|model:feather361|model:feather361Shape.worldMatrix" 
		"modelRN.placeHolderList[436]" ""
		5 4 "modelRN" "|model:geo|model:feather362.drawOverride" "modelRN.placeHolderList[437]" 
		""
		5 3 "modelRN" "|model:geo|model:feather362|model:feather362Shape.worldMesh" 
		"modelRN.placeHolderList[438]" ""
		5 3 "modelRN" "|model:geo|model:feather362|model:feather362Shape.worldMatrix" 
		"modelRN.placeHolderList[439]" ""
		5 4 "modelRN" "|model:geo|model:feather363.drawOverride" "modelRN.placeHolderList[440]" 
		""
		5 3 "modelRN" "|model:geo|model:feather363|model:feather363Shape.worldMesh" 
		"modelRN.placeHolderList[441]" ""
		5 3 "modelRN" "|model:geo|model:feather363|model:feather363Shape.worldMatrix" 
		"modelRN.placeHolderList[442]" ""
		5 4 "modelRN" "|model:geo|model:feather364.drawOverride" "modelRN.placeHolderList[443]" 
		""
		5 3 "modelRN" "|model:geo|model:feather364|model:feather364Shape.worldMesh" 
		"modelRN.placeHolderList[444]" ""
		5 3 "modelRN" "|model:geo|model:feather364|model:feather364Shape.worldMatrix" 
		"modelRN.placeHolderList[445]" ""
		5 4 "modelRN" "|model:geo|model:feather365.drawOverride" "modelRN.placeHolderList[446]" 
		""
		5 3 "modelRN" "|model:geo|model:feather365|model:feather365Shape.worldMesh" 
		"modelRN.placeHolderList[447]" ""
		5 3 "modelRN" "|model:geo|model:feather365|model:feather365Shape.worldMatrix" 
		"modelRN.placeHolderList[448]" ""
		5 4 "modelRN" "|model:geo|model:feather366.drawOverride" "modelRN.placeHolderList[449]" 
		""
		5 3 "modelRN" "|model:geo|model:feather366|model:feather366Shape.worldMesh" 
		"modelRN.placeHolderList[450]" ""
		5 3 "modelRN" "|model:geo|model:feather366|model:feather366Shape.worldMatrix" 
		"modelRN.placeHolderList[451]" ""
		5 4 "modelRN" "|model:geo|model:feather367.drawOverride" "modelRN.placeHolderList[452]" 
		""
		5 3 "modelRN" "|model:geo|model:feather367|model:feather367Shape.worldMesh" 
		"modelRN.placeHolderList[453]" ""
		5 3 "modelRN" "|model:geo|model:feather367|model:feather367Shape.worldMatrix" 
		"modelRN.placeHolderList[454]" ""
		5 4 "modelRN" "|model:geo|model:feather368.drawOverride" "modelRN.placeHolderList[455]" 
		""
		5 3 "modelRN" "|model:geo|model:feather368|model:feather368Shape.worldMesh" 
		"modelRN.placeHolderList[456]" ""
		5 3 "modelRN" "|model:geo|model:feather368|model:feather368Shape.worldMatrix" 
		"modelRN.placeHolderList[457]" ""
		5 4 "modelRN" "|model:geo|model:feather369.drawOverride" "modelRN.placeHolderList[458]" 
		""
		5 3 "modelRN" "|model:geo|model:feather369|model:feather369Shape.worldMesh" 
		"modelRN.placeHolderList[459]" ""
		5 3 "modelRN" "|model:geo|model:feather369|model:feather369Shape.worldMatrix" 
		"modelRN.placeHolderList[460]" ""
		5 4 "modelRN" "|model:geo|model:feather370.drawOverride" "modelRN.placeHolderList[461]" 
		""
		5 3 "modelRN" "|model:geo|model:feather370|model:feather370Shape.worldMesh" 
		"modelRN.placeHolderList[462]" ""
		5 3 "modelRN" "|model:geo|model:feather370|model:feather370Shape.worldMatrix" 
		"modelRN.placeHolderList[463]" ""
		5 4 "modelRN" "|model:geo|model:feather371.drawOverride" "modelRN.placeHolderList[464]" 
		""
		5 3 "modelRN" "|model:geo|model:feather371|model:feather371Shape.worldMesh" 
		"modelRN.placeHolderList[465]" ""
		5 3 "modelRN" "|model:geo|model:feather371|model:feather371Shape.worldMatrix" 
		"modelRN.placeHolderList[466]" ""
		5 4 "modelRN" "|model:geo|model:feather372.drawOverride" "modelRN.placeHolderList[467]" 
		""
		5 3 "modelRN" "|model:geo|model:feather372|model:feather372Shape.worldMesh" 
		"modelRN.placeHolderList[468]" ""
		5 3 "modelRN" "|model:geo|model:feather372|model:feather372Shape.worldMatrix" 
		"modelRN.placeHolderList[469]" ""
		5 4 "modelRN" "|model:geo|model:feather373.drawOverride" "modelRN.placeHolderList[470]" 
		""
		5 3 "modelRN" "|model:geo|model:feather373|model:feather373Shape.worldMesh" 
		"modelRN.placeHolderList[471]" ""
		5 3 "modelRN" "|model:geo|model:feather373|model:feather373Shape.worldMatrix" 
		"modelRN.placeHolderList[472]" ""
		5 4 "modelRN" "|model:geo|model:feather374.drawOverride" "modelRN.placeHolderList[473]" 
		""
		5 3 "modelRN" "|model:geo|model:feather374|model:feather374Shape.worldMesh" 
		"modelRN.placeHolderList[474]" ""
		5 3 "modelRN" "|model:geo|model:feather374|model:feather374Shape.worldMatrix" 
		"modelRN.placeHolderList[475]" ""
		5 4 "modelRN" "|model:geo|model:feather375.drawOverride" "modelRN.placeHolderList[476]" 
		""
		5 3 "modelRN" "|model:geo|model:feather375|model:feather375Shape.worldMesh" 
		"modelRN.placeHolderList[477]" ""
		5 3 "modelRN" "|model:geo|model:feather375|model:feather375Shape.worldMatrix" 
		"modelRN.placeHolderList[478]" ""
		5 4 "modelRN" "|model:geo|model:feather376.drawOverride" "modelRN.placeHolderList[479]" 
		""
		5 3 "modelRN" "|model:geo|model:feather376|model:feather376Shape.worldMesh" 
		"modelRN.placeHolderList[480]" ""
		5 3 "modelRN" "|model:geo|model:feather376|model:feather376Shape.worldMatrix" 
		"modelRN.placeHolderList[481]" ""
		5 4 "modelRN" "|model:geo|model:feather377.drawOverride" "modelRN.placeHolderList[482]" 
		""
		5 3 "modelRN" "|model:geo|model:feather377|model:feather377Shape.worldMesh" 
		"modelRN.placeHolderList[483]" ""
		5 3 "modelRN" "|model:geo|model:feather377|model:feather377Shape.worldMatrix" 
		"modelRN.placeHolderList[484]" ""
		5 4 "modelRN" "|model:geo|model:feather378.drawOverride" "modelRN.placeHolderList[485]" 
		""
		5 3 "modelRN" "|model:geo|model:feather378|model:feather378Shape.worldMesh" 
		"modelRN.placeHolderList[486]" ""
		5 3 "modelRN" "|model:geo|model:feather378|model:feather378Shape.worldMatrix" 
		"modelRN.placeHolderList[487]" ""
		5 4 "modelRN" "|model:geo|model:feather379.drawOverride" "modelRN.placeHolderList[488]" 
		""
		5 3 "modelRN" "|model:geo|model:feather379|model:feather379Shape.worldMesh" 
		"modelRN.placeHolderList[489]" ""
		5 3 "modelRN" "|model:geo|model:feather379|model:feather379Shape.worldMatrix" 
		"modelRN.placeHolderList[490]" ""
		5 4 "modelRN" "|model:geo|model:feather380.drawOverride" "modelRN.placeHolderList[491]" 
		""
		5 3 "modelRN" "|model:geo|model:feather380|model:feather380Shape.worldMesh" 
		"modelRN.placeHolderList[492]" ""
		5 3 "modelRN" "|model:geo|model:feather380|model:feather380Shape.worldMatrix" 
		"modelRN.placeHolderList[493]" ""
		5 4 "modelRN" "|model:geo|model:feather381.drawOverride" "modelRN.placeHolderList[494]" 
		""
		5 3 "modelRN" "|model:geo|model:feather381|model:feather381Shape.worldMesh" 
		"modelRN.placeHolderList[495]" ""
		5 3 "modelRN" "|model:geo|model:feather381|model:feather381Shape.worldMatrix" 
		"modelRN.placeHolderList[496]" ""
		5 4 "modelRN" "|model:geo|model:feather382.drawOverride" "modelRN.placeHolderList[497]" 
		""
		5 3 "modelRN" "|model:geo|model:feather382|model:feather382Shape.worldMesh" 
		"modelRN.placeHolderList[498]" ""
		5 3 "modelRN" "|model:geo|model:feather382|model:feather382Shape.worldMatrix" 
		"modelRN.placeHolderList[499]" ""
		5 4 "modelRN" "|model:geo|model:feather383.drawOverride" "modelRN.placeHolderList[500]" 
		""
		5 3 "modelRN" "|model:geo|model:feather383|model:feather383Shape.worldMesh" 
		"modelRN.placeHolderList[501]" ""
		5 3 "modelRN" "|model:geo|model:feather383|model:feather383Shape.worldMatrix" 
		"modelRN.placeHolderList[502]" ""
		5 4 "modelRN" "|model:geo|model:feather384.drawOverride" "modelRN.placeHolderList[503]" 
		""
		5 3 "modelRN" "|model:geo|model:feather384|model:feather384Shape.worldMesh" 
		"modelRN.placeHolderList[504]" ""
		5 3 "modelRN" "|model:geo|model:feather384|model:feather384Shape.worldMatrix" 
		"modelRN.placeHolderList[505]" ""
		5 4 "modelRN" "|model:geo|model:feather385.drawOverride" "modelRN.placeHolderList[506]" 
		""
		5 3 "modelRN" "|model:geo|model:feather385|model:feather385Shape.worldMesh" 
		"modelRN.placeHolderList[507]" ""
		5 3 "modelRN" "|model:geo|model:feather385|model:feather385Shape.worldMatrix" 
		"modelRN.placeHolderList[508]" ""
		5 4 "modelRN" "|model:geo|model:feather386.drawOverride" "modelRN.placeHolderList[509]" 
		""
		5 3 "modelRN" "|model:geo|model:feather386|model:feather386Shape.worldMesh" 
		"modelRN.placeHolderList[510]" ""
		5 3 "modelRN" "|model:geo|model:feather386|model:feather386Shape.worldMatrix" 
		"modelRN.placeHolderList[511]" ""
		5 4 "modelRN" "|model:geo|model:feather387.drawOverride" "modelRN.placeHolderList[512]" 
		""
		5 3 "modelRN" "|model:geo|model:feather387|model:feather387Shape.worldMesh" 
		"modelRN.placeHolderList[513]" ""
		5 3 "modelRN" "|model:geo|model:feather387|model:feather387Shape.worldMatrix" 
		"modelRN.placeHolderList[514]" ""
		5 4 "modelRN" "|model:geo|model:feather388.drawOverride" "modelRN.placeHolderList[515]" 
		""
		5 3 "modelRN" "|model:geo|model:feather388|model:feather388Shape.worldMesh" 
		"modelRN.placeHolderList[516]" ""
		5 3 "modelRN" "|model:geo|model:feather388|model:feather388Shape.worldMatrix" 
		"modelRN.placeHolderList[517]" ""
		5 4 "modelRN" "|model:geo|model:feather389.drawOverride" "modelRN.placeHolderList[518]" 
		""
		5 3 "modelRN" "|model:geo|model:feather389|model:feather389Shape.worldMesh" 
		"modelRN.placeHolderList[519]" ""
		5 3 "modelRN" "|model:geo|model:feather389|model:feather389Shape.worldMatrix" 
		"modelRN.placeHolderList[520]" ""
		5 4 "modelRN" "|model:geo|model:feather390.drawOverride" "modelRN.placeHolderList[521]" 
		""
		5 3 "modelRN" "|model:geo|model:feather390|model:feather390Shape.worldMesh" 
		"modelRN.placeHolderList[522]" ""
		5 3 "modelRN" "|model:geo|model:feather390|model:feather390Shape.worldMatrix" 
		"modelRN.placeHolderList[523]" ""
		5 4 "modelRN" "|model:geo|model:feather391.drawOverride" "modelRN.placeHolderList[524]" 
		""
		5 3 "modelRN" "|model:geo|model:feather391|model:feather391Shape.worldMesh" 
		"modelRN.placeHolderList[525]" ""
		5 3 "modelRN" "|model:geo|model:feather391|model:feather391Shape.worldMatrix" 
		"modelRN.placeHolderList[526]" ""
		5 4 "modelRN" "|model:geo|model:feather392.drawOverride" "modelRN.placeHolderList[527]" 
		""
		5 3 "modelRN" "|model:geo|model:feather392|model:feather392Shape.worldMesh" 
		"modelRN.placeHolderList[528]" ""
		5 3 "modelRN" "|model:geo|model:feather392|model:feather392Shape.worldMatrix" 
		"modelRN.placeHolderList[529]" ""
		5 4 "modelRN" "|model:geo|model:feather.drawOverride" "modelRN.placeHolderList[530]" 
		""
		5 4 "modelRN" "|model:geo|model:feather1.drawOverride" "modelRN.placeHolderList[531]" 
		""
		5 4 "modelRN" "|model:geo|model:feather2.drawOverride" "modelRN.placeHolderList[532]" 
		""
		5 4 "modelRN" "|model:geo|model:feather3.drawOverride" "modelRN.placeHolderList[533]" 
		""
		5 4 "modelRN" "|model:geo|model:feather4.drawOverride" "modelRN.placeHolderList[534]" 
		""
		5 4 "modelRN" "|model:geo|model:feather5.drawOverride" "modelRN.placeHolderList[535]" 
		""
		5 4 "modelRN" "|model:geo|model:feather6.drawOverride" "modelRN.placeHolderList[536]" 
		""
		5 4 "modelRN" "|model:geo|model:feather7.drawOverride" "modelRN.placeHolderList[537]" 
		""
		5 4 "modelRN" "|model:geo|model:feather8.drawOverride" "modelRN.placeHolderList[538]" 
		""
		5 4 "modelRN" "|model:geo|model:feather9.drawOverride" "modelRN.placeHolderList[539]" 
		""
		5 4 "modelRN" "|model:geo|model:feather10.drawOverride" "modelRN.placeHolderList[540]" 
		""
		5 4 "modelRN" "|model:geo|model:feather11.drawOverride" "modelRN.placeHolderList[541]" 
		""
		5 4 "modelRN" "|model:geo|model:feather12.drawOverride" "modelRN.placeHolderList[542]" 
		""
		5 4 "modelRN" "|model:geo|model:feather13.drawOverride" "modelRN.placeHolderList[543]" 
		""
		5 4 "modelRN" "|model:geo|model:feather15.drawOverride" "modelRN.placeHolderList[544]" 
		""
		5 4 "modelRN" "|model:geo|model:feather14.drawOverride" "modelRN.placeHolderList[545]" 
		""
		5 4 "modelRN" "|model:geo|model:feather16.drawOverride" "modelRN.placeHolderList[546]" 
		""
		5 4 "modelRN" "|model:geo|model:feather17.drawOverride" "modelRN.placeHolderList[547]" 
		""
		5 4 "modelRN" "|model:geo|model:feather18.drawOverride" "modelRN.placeHolderList[548]" 
		""
		5 4 "modelRN" "|model:geo|model:feather19.drawOverride" "modelRN.placeHolderList[549]" 
		""
		5 4 "modelRN" "|model:geo|model:feather20.drawOverride" "modelRN.placeHolderList[550]" 
		""
		5 4 "modelRN" "|model:geo|model:feather21.drawOverride" "modelRN.placeHolderList[551]" 
		""
		5 4 "modelRN" "|model:geo|model:feather22.drawOverride" "modelRN.placeHolderList[552]" 
		""
		5 4 "modelRN" "|model:geo|model:feather23.drawOverride" "modelRN.placeHolderList[553]" 
		""
		5 4 "modelRN" "|model:geo|model:feather24.drawOverride" "modelRN.placeHolderList[554]" 
		""
		5 4 "modelRN" "|model:geo|model:feather25.drawOverride" "modelRN.placeHolderList[555]" 
		""
		5 4 "modelRN" "|model:geo|model:feather26.drawOverride" "modelRN.placeHolderList[556]" 
		""
		5 4 "modelRN" "|model:geo|model:feather27.drawOverride" "modelRN.placeHolderList[557]" 
		""
		5 4 "modelRN" "|model:geo|model:feather28.drawOverride" "modelRN.placeHolderList[558]" 
		""
		5 4 "modelRN" "|model:geo|model:feather29.drawOverride" "modelRN.placeHolderList[559]" 
		""
		5 4 "modelRN" "|model:geo|model:feather30.drawOverride" "modelRN.placeHolderList[560]" 
		""
		5 4 "modelRN" "|model:geo|model:feather31.drawOverride" "modelRN.placeHolderList[561]" 
		""
		5 4 "modelRN" "|model:geo|model:feather32.drawOverride" "modelRN.placeHolderList[562]" 
		""
		5 4 "modelRN" "|model:geo|model:feather33.drawOverride" "modelRN.placeHolderList[563]" 
		""
		5 4 "modelRN" "|model:geo|model:feather34.drawOverride" "modelRN.placeHolderList[564]" 
		""
		5 4 "modelRN" "|model:geo|model:feather35.drawOverride" "modelRN.placeHolderList[565]" 
		""
		5 4 "modelRN" "|model:geo|model:feather37.drawOverride" "modelRN.placeHolderList[566]" 
		""
		5 4 "modelRN" "|model:geo|model:feather36.drawOverride" "modelRN.placeHolderList[567]" 
		""
		5 4 "modelRN" "|model:geo|model:feather38.drawOverride" "modelRN.placeHolderList[568]" 
		""
		5 4 "modelRN" "|model:geo|model:feather39.drawOverride" "modelRN.placeHolderList[569]" 
		""
		5 4 "modelRN" "|model:geo|model:feather40.drawOverride" "modelRN.placeHolderList[570]" 
		""
		5 4 "modelRN" "|model:geo|model:feather41.drawOverride" "modelRN.placeHolderList[571]" 
		""
		5 4 "modelRN" "|model:geo|model:feather42.drawOverride" "modelRN.placeHolderList[572]" 
		""
		5 4 "modelRN" "|model:geo|model:feather43.drawOverride" "modelRN.placeHolderList[573]" 
		""
		5 4 "modelRN" "|model:geo|model:feather44.drawOverride" "modelRN.placeHolderList[574]" 
		""
		5 4 "modelRN" "|model:geo|model:feather46.drawOverride" "modelRN.placeHolderList[575]" 
		""
		5 4 "modelRN" "|Group|Geometry|model:geo.drawOverride" "modelRN.placeHolderList[576]" 
		""
		5 3 "modelRN" "|Group|Geometry|model:geo.message" "modelRN.placeHolderList[577]" 
		""
		5 3 "modelRN" "|Group|Geometry|model:geo|model:eye_R|model:eye_RShape.worldMesh" 
		"modelRN.placeHolderList[578]" ""
		5 3 "modelRN" "|Group|Geometry|model:geo|model:cornea_R|model:cornea_RShape.worldMesh" 
		"modelRN.placeHolderList[579]" ""
		5 3 "modelRN" "|Group|Geometry|model:geo|model:cornea_L|model:cornea_LShape.worldMesh" 
		"modelRN.placeHolderList[580]" ""
		5 3 "modelRN" "|Group|Geometry|model:geo|model:eye_L|model:eye_LShape.worldMesh" 
		"modelRN.placeHolderList[581]" ""
		5 3 "modelRN" "|Group|Geometry|model:geo|model:body|model:bodyShape.worldMesh" 
		"modelRN.placeHolderList[582]" ""
		5 3 "modelRN" "|Group|Geometry|model:geo|model:body|model:bodyShape.worldMatrix" 
		"modelRN.placeHolderList[583]" ""
		5 3 "modelRN" "|Group|Geometry|model:geo|model:body|model:bodyShape.worldMatrix" 
		"modelRN.placeHolderList[584]" ""
		5 3 "modelRN" "|Group|Geometry|model:geo|model:body|model:bodyShape.worldMatrix" 
		"modelRN.placeHolderList[585]" ""
		5 3 "modelRN" "|Group|Geometry|model:geo|model:beak|model:beakShape.worldMesh" 
		"modelRN.placeHolderList[586]" ""
		5 3 "modelRN" "|Group|Geometry|model:geo|model:foot_R|model:foot_RShape.worldMesh" 
		"modelRN.placeHolderList[587]" ""
		5 3 "modelRN" "|Group|Geometry|model:geo|model:foot_L|model:foot_LShape.worldMesh" 
		"modelRN.placeHolderList[588]" ""
		5 3 "modelRN" "|Group|Geometry|model:geo|model:nails_R.lockInfluenceWeights" 
		"modelRN.placeHolderList[589]" ""
		5 3 "modelRN" "|Group|Geometry|model:geo|model:nails_R.message" "modelRN.placeHolderList[590]" 
		""
		5 3 "modelRN" "|Group|Geometry|model:geo|model:nails_R.worldMatrix" 
		"modelRN.placeHolderList[591]" ""
		5 3 "modelRN" "|Group|Geometry|model:geo|model:nails_R|model:nails_RShape.worldMesh" 
		"modelRN.placeHolderList[592]" ""
		5 3 "modelRN" "|Group|Geometry|model:geo|model:nails_L|model:nails_LShape.worldMesh" 
		"modelRN.placeHolderList[593]" ""
		5 4 "modelRN" "|Group|Geometry|model:geo|model:feathers_r.drawOverride" 
		"modelRN.placeHolderList[594]" ""
		5 3 "modelRN" "|Group|Geometry|model:geo|model:feathers_r|model:feathers_rShape.worldMesh" 
		"modelRN.placeHolderList[595]" ""
		5 3 "modelRN" "|Group|Geometry|model:geo|model:feathers_r|model:feathers_rShape.worldMatrix" 
		"modelRN.placeHolderList[596]" ""
		5 4 "modelRN" "|Group|Geometry|model:geo|model:feathers_L.drawOverride" 
		"modelRN.placeHolderList[597]" ""
		5 3 "modelRN" "|Group|Geometry|model:geo|model:feathers_L|model:feathers_LShape.worldMesh" 
		"modelRN.placeHolderList[598]" ""
		5 3 "modelRN" "|Group|Geometry|model:geo|model:feathers_L|model:feathers_LShape.worldMatrix" 
		"modelRN.placeHolderList[599]" ""
		5 4 "modelRN" "|Group|Geometry|model:geo|model:feathers_m.drawOverride" 
		"modelRN.placeHolderList[600]" ""
		5 3 "modelRN" "|Group|Geometry|model:geo|model:feathers_m|model:feathers_mShape.worldMesh" 
		"modelRN.placeHolderList[601]" ""
		5 3 "modelRN" "|Group|Geometry|model:geo|model:feathers_m|model:feathers_mShape.worldMatrix" 
		"modelRN.placeHolderList[602]" ""
		5 4 "modelRN" "model:VRayBlendMtl1SG.dagSetMembers" "modelRN.placeHolderList[603]" 
		""
		5 4 "modelRN" "model:VRayBlendMtl2SG.dagSetMembers" "modelRN.placeHolderList[604]" 
		"";
createNode closestPointOnMesh -n "closestSampler1";
createNode plusMinusAverage -n "Neck_multDiv";
	setAttr -s 2 ".i1[1]"  1;
createNode multiplyDivide -n "Neck_multDiv1";
	setAttr ".op" 2;
createNode multiplyDivide -n "Neck_multDiv2";
createNode multiplyDivide -n "Neck_multDivsVis";
	setAttr ".i2" -type "float3" 0.50099999 1 1 ;
createNode multiplyDivide -n "Neck_multDiv3";
	setAttr ".i2" -type "float3" 2 2 2 ;
createNode multiplyDivide -n "Neck_multDivsVis1";
	setAttr ".i2" -type "float3" 0.25099999 1 1 ;
createNode multiplyDivide -n "Neck_multDiv4";
	setAttr ".i2" -type "float3" 3 3 3 ;
createNode multiplyDivide -n "Neck_multDivsVis2";
	setAttr ".i2" -type "float3" 0.16766667 1 1 ;
createNode multiplyDivide -n "Neck_multDiv5";
	setAttr ".i2" -type "float3" 4 4 4 ;
createNode multiplyDivide -n "Neck_multDivsVis3";
	setAttr ".i2" -type "float3" 0.126 1 1 ;
createNode multiplyDivide -n "Neck_multDiv6";
	setAttr ".i2" -type "float3" 5 5 5 ;
createNode multiplyDivide -n "Neck_multDivsVis4";
	setAttr ".i2" -type "float3" 0.101 1 1 ;
createNode multiplyDivide -n "Neck_multDiv7";
	setAttr ".i2" -type "float3" 6 6 6 ;
createNode multiplyDivide -n "Neck_multDivsVis5";
	setAttr ".i2" -type "float3" 0.08433333 1 1 ;
createNode multiplyDivide -n "Neck_multDiv8";
	setAttr ".i2" -type "float3" 7 7 7 ;
createNode multiplyDivide -n "Neck_multDivsVis6";
	setAttr ".i2" -type "float3" 0.072428569 1 1 ;
createNode multiplyDivide -n "Neck_multDiv9";
	setAttr ".i2" -type "float3" 8 8 8 ;
createNode multiplyDivide -n "Neck_multDivsVis7";
	setAttr ".i2" -type "float3" 0.063500002 1 1 ;
createNode multiplyDivide -n "Neck_multDiv10";
	setAttr ".i2" -type "float3" 9 9 9 ;
createNode multiplyDivide -n "Neck_multDivsVis8";
	setAttr ".i2" -type "float3" 0.056555554 1 1 ;
createNode multiplyDivide -n "Neck_multDiv11";
	setAttr ".i2" -type "float3" 10 10 10 ;
createNode multiplyDivide -n "Neck_multDivsVis9";
	setAttr ".i2" -type "float3" 0.050999999 1 1 ;

select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultRenderGlobals;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -k on ".clip";
	setAttr -k on ".edm";
	setAttr -k on ".edl";
	setAttr -av -k on ".esr";
	setAttr -k on ".ors";
	setAttr -k on ".gama";
	setAttr ".fs" 1;
	setAttr ".ef" 10;
	setAttr -k on ".bfs";
	setAttr -k on ".be";
	setAttr -k on ".fec";
	setAttr -k on ".ofc";
	setAttr -k on ".comp";
	setAttr -k on ".cth";
	setAttr -k on ".soll";
	setAttr -k on ".rd";
	setAttr -k on ".lp";
	setAttr -av -k on ".sp";
	setAttr -k on ".shs";
	setAttr -k on ".lpr";
	setAttr -k on ".mm";
	setAttr -k on ".npu";
	setAttr -k on ".itf";
	setAttr -k on ".shp";
	setAttr -k on ".uf";
	setAttr -k on ".oi";
	setAttr -k on ".rut";
	setAttr -av -k on ".mbf";
	setAttr -k on ".afp";
	setAttr -k on ".pfb";
	setAttr -av -k on ".bll";
	setAttr -k on ".bls";
	setAttr -k on ".smv";
	setAttr -k on ".ubc";
	setAttr -k on ".mbc";
	setAttr -k on ".udbx";
	setAttr -k on ".smc";
	setAttr -k on ".kmv";
	setAttr -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -k on ".tlwd";
	setAttr -k on ".tlht";
	setAttr -k on ".jfc";
select -ne :defaultLightSet;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr ".ro" yes;
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off ".eeaa";
	setAttr -k off ".engm";
	setAttr -k off ".mes";
	setAttr -k off ".emb";
	setAttr -k off ".mbbf";
	setAttr -k off ".mbs";
	setAttr -k off ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".hgcd";
	setAttr -k off -cb on ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off ".twa";
	setAttr -k off ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
select -ne :defaultHardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".rp";
	setAttr -k on ".cai";
	setAttr -k on ".coi";
	setAttr -cb on ".bc";
	setAttr -av -k on ".bcb";
	setAttr -av -k on ".bcg";
	setAttr -av -k on ".bcr";
	setAttr -k on ".ei";
	setAttr -k on ".ex";
	setAttr -k on ".es";
	setAttr -av -k on ".ef";
	setAttr -k on ".bf";
	setAttr -k on ".fii";
	setAttr -av -k on ".sf";
	setAttr -k on ".gr";
	setAttr -k on ".li";
	setAttr -k on ".ls";
	setAttr -k on ".mb";
	setAttr -k on ".ti";
	setAttr -k on ".txt";
	setAttr -k on ".mpr";
	setAttr -k on ".wzd";
	setAttr ".fn" -type "string" "im";
	setAttr -k on ".if";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
	setAttr -k on ".as";
	setAttr -k on ".ds";
	setAttr -k on ".lm";
	setAttr -k on ".fir";
	setAttr -k on ".aap";
	setAttr -k on ".gh";
	setAttr -cb on ".sd";
connectAttr "Root.s" "BackA.is";
connectAttr "BackA.s" "BackB.is";
connectAttr "BackB.s" "Chest.is";
connectAttr "Chest.s" "Scapula.is";
connectAttr "Scapula.s" "Shoulder.is";
connectAttr "Shoulder.s" "Elbow.is";
connectAttr "Elbow.s" "Wrist.is";
connectAttr "Wrist.s" "IndexFinger1.is";
connectAttr "IndexFinger1.s" "IndexFinger2.is";
connectAttr "Chest.s" "Neck.is";
connectAttr "Neck.s" "Head.is";
connectAttr "Head.global" "Head.globalConnect";
connectAttr "Head.s" "Jaw.is";
connectAttr "Jaw.s" "JawEnd.is";
connectAttr "Head.s" "Eye.is";
connectAttr "Eye.s" "Eye1.is";
connectAttr "Neck_multDivsVis.ox" "Neck_twistJointsLocator1.v" -l on;
connectAttr "Neck_multDiv2.o" "Neck_twistJointsLocator1.t";
connectAttr "Neck_multDivsVis1.ox" "Neck_twistJointsLocator2.v" -l on;
connectAttr "Neck_multDiv3.o" "Neck_twistJointsLocator2.t";
connectAttr "Neck_multDivsVis2.ox" "Neck_twistJointsLocator3.v" -l on;
connectAttr "Neck_multDiv4.o" "Neck_twistJointsLocator3.t";
connectAttr "Neck_multDivsVis3.ox" "Neck_twistJointsLocator4.v" -l on;
connectAttr "Neck_multDiv5.o" "Neck_twistJointsLocator4.t";
connectAttr "Neck_multDivsVis4.ox" "Neck_twistJointsLocator5.v" -l on;
connectAttr "Neck_multDiv6.o" "Neck_twistJointsLocator5.t";
connectAttr "Neck_multDivsVis5.ox" "Neck_twistJointsLocator6.v" -l on;
connectAttr "Neck_multDiv7.o" "Neck_twistJointsLocator6.t";
connectAttr "Neck_multDivsVis6.ox" "Neck_twistJointsLocator7.v" -l on;
connectAttr "Neck_multDiv8.o" "Neck_twistJointsLocator7.t";
connectAttr "Neck_multDivsVis7.ox" "Neck_twistJointsLocator8.v" -l on;
connectAttr "Neck_multDiv9.o" "Neck_twistJointsLocator8.t";
connectAttr "Neck_multDivsVis8.ox" "Neck_twistJointsLocator9.v" -l on;
connectAttr "Neck_multDiv10.o" "Neck_twistJointsLocator9.t";
connectAttr "Neck_multDivsVis9.ox" "Neck_twistJointsLocator10.v" -l on;
connectAttr "Neck_multDiv11.o" "Neck_twistJointsLocator10.t";
connectAttr "Root.s" "Hip.is";
connectAttr "Hip.s" "Knee.is";
connectAttr "Knee.s" "Ankle.is";
connectAttr "Ankle.s" "MiddleToe1.is";
connectAttr "MiddleToe1.s" "MiddleToe2.is";
connectAttr "Ankle.s" "Heel.is";
connectAttr "Root.s" "Tail1.is";
connectAttr "Tail1.s" "Tail2.is";
connectAttr "Tail2.s" "Tail3.is";
connectAttr "Tail3.s" "Tail3End.is";
connectAttr "Tail2.s" "Tail3ASide.is";
connectAttr "Tail3ASide.s" "Tail3Side.is";
connectAttr "Tail3Side.s" "Tail3SideEnd.is";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Neck.twistJoints" "Neck_multDiv.i1[0]";
connectAttr "Head.t" "Neck_multDiv1.i1";
connectAttr "Neck_multDiv.o1" "Neck_multDiv1.i2x";
connectAttr "Neck_multDiv.o1" "Neck_multDiv1.i2y";
connectAttr "Neck_multDiv.o1" "Neck_multDiv1.i2z";
connectAttr "Neck_multDiv1.o" "Neck_multDiv2.i1";
connectAttr "Neck_twistJointsLocator1.twistPosition" "Neck_multDiv2.i2x";
connectAttr "Neck.twistJoints" "Neck_multDivsVis.i1x";
connectAttr "Neck_multDiv1.o" "Neck_multDiv3.i1";
connectAttr "Neck_twistJointsLocator2.twistPosition" "Neck_multDiv3.i2x";
connectAttr "Neck.twistJoints" "Neck_multDivsVis1.i1x";
connectAttr "Neck_multDiv1.o" "Neck_multDiv4.i1";
connectAttr "Neck_twistJointsLocator3.twistPosition" "Neck_multDiv4.i2x";
connectAttr "Neck.twistJoints" "Neck_multDivsVis2.i1x";
connectAttr "Neck_multDiv1.o" "Neck_multDiv5.i1";
connectAttr "Neck_twistJointsLocator4.twistPosition" "Neck_multDiv5.i2x";
connectAttr "Neck.twistJoints" "Neck_multDivsVis3.i1x";
connectAttr "Neck_multDiv1.o" "Neck_multDiv6.i1";
connectAttr "Neck_twistJointsLocator5.twistPosition" "Neck_multDiv6.i2x";
connectAttr "Neck.twistJoints" "Neck_multDivsVis4.i1x";
connectAttr "Neck_multDiv1.o" "Neck_multDiv7.i1";
connectAttr "Neck_twistJointsLocator6.twistPosition" "Neck_multDiv7.i2x";
connectAttr "Neck.twistJoints" "Neck_multDivsVis5.i1x";
connectAttr "Neck_multDiv1.o" "Neck_multDiv8.i1";
connectAttr "Neck_twistJointsLocator7.twistPosition" "Neck_multDiv8.i2x";
connectAttr "Neck.twistJoints" "Neck_multDivsVis6.i1x";
connectAttr "Neck_multDiv1.o" "Neck_multDiv9.i1";
connectAttr "Neck_twistJointsLocator8.twistPosition" "Neck_multDiv9.i2x";
connectAttr "Neck.twistJoints" "Neck_multDivsVis7.i1x";
connectAttr "Neck_multDiv1.o" "Neck_multDiv10.i1";
connectAttr "Neck_twistJointsLocator9.twistPosition" "Neck_multDiv10.i2x";
connectAttr "Neck.twistJoints" "Neck_multDivsVis8.i1x";
connectAttr "Neck_multDiv1.o" "Neck_multDiv11.i1";
connectAttr "Neck_twistJointsLocator10.twistPosition" "Neck_multDiv11.i2x";
connectAttr "Neck.twistJoints" "Neck_multDivsVis9.i1x";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of bird.ma
