//Maya ASCII 6.0 scene
//Name: poseDefSampleMirror.ma
//Last modified: Sun, Oct 17, 2004 08:59:20 AM
requires maya "6.0";
requires "poseDeformer" "6.0";
requires "poseReader" "6.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya Complete 6.0";
fileInfo "version" "6.0.1";
fileInfo "cutIdentifier" "200407132209-624907";
fileInfo "osv" "Microsoft Windows 2000  (Build 2195)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.46055675997255963 1.7512173329063023 8.6937857629755459 ;
	setAttr ".r" -type "double3" -5.1383527296029587 1.0000000000015479 1.2425934254440187e-017 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".ncp" 0.001;
	setAttr ".coi" 9.0935467732779269;
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
	setAttr ".t" -type "double3" 0 0 100 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".coi" 100;
	setAttr ".ow" 30;
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
createNode transform -n "pCylinder1";
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
createNode mesh -n "pCylinderShape1ArmLf" -p "pCylinder1";
	setAttr -k off ".v";
	setAttr -s 10 ".iog[0].og";
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
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
createNode joint -n "jntArmLf1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 
		-max 1 -at "bool";
	setAttr ".t" -type "double3" 0.6006224162709094 1.3336496712999177e-016 
		-1.3336496712999177e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 0 0 -89.999999999999986 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 -1 0 0 1 2.2204460492503131e-016 0 0
		 0 0 1 0 0.6006224162709094 1.3336496712999177e-016 -1.3336496712999177e-016 1;
createNode joint -n "jntArmLf2" -p "jntArmLf1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 
		-max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 -1 0 0 1 2.2204460492503131e-016 0 0
		 0 0 1 0 2.153296739883626 3.403871404375503e-017 -1.3336496712999177e-016 1;
createNode joint -n "jntArmLf3" -p "jntArmLf2";
	setAttr ".t" -type "double3" 4.4408920985006262e-016 1.5526743236127163 
		4.4408920985006252e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode transform -n "poseReader_defaultJntArmLf21" -p "jntArmLf1";
	setAttr ".t" -type "double3" 4.4408920985006262e-016 1.5526743236127167 
		0 ;
createNode poseReader -n "poseReader_defaultJntArmLf2Shape1" -p "poseReader_defaultJntArmLf21";
	addAttr -ci true -sn "weight" -ln "weight" -at "double";
	setAttr -k off ".v";
	setAttr -k on ".weight";
createNode transform -n "poseReader_half25JntArmLf21" -p "jntArmLf1";
	setAttr ".t" -type "double3" 4.4408920985006262e-016 1.5526743236127167 
		0 ;
	setAttr ".r" -type "double3" 0 0 48.39113701100014 ;
createNode poseReader -n "poseReader_half25JntArmLf2Shape1" -p "poseReader_half25JntArmLf21";
	addAttr -ci true -sn "weight" -ln "weight" -at "double";
	setAttr -k off ".v";
	setAttr ".max" 45;
	setAttr -k on ".weight";
createNode transform -n "poseReader_full100JntArmLf21" -p "jntArmLf1";
	setAttr ".t" -type "double3" 4.4408920985006262e-016 1.5526743236127167 
		0 ;
	setAttr ".r" -type "double3" 0 0 96.78227402200028 ;
createNode poseReader -n "poseReader_full100JntArmLf2Shape1" -p "poseReader_full100JntArmLf21";
	addAttr -ci true -sn "weight" -ln "weight" -at "double";
	setAttr -k off ".v";
	setAttr -k on ".weight";
createNode joint -n "jntArmRt1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 
		-max 1 -at "bool";
	setAttr ".t" -type "double3" -0.600622 1.33365e-016 -1.33365e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" -180 0 89.999999999999986 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 1 0 0 1 -2.2204460492503131e-016 -1.2246063538223773e-016 0
		 -1.2246063538223773e-016 2.4651903288156619e-032 -1 0 -0.60062199999999999 1.33365e-016 -1.33365e-016 1;
createNode joint -n "jntArmRt2" -p "jntArmRt1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 
		-max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 1 0 0 1 -2.2204460492503131e-016 -1.2246063538223773e-016 0
		 -1.2246063538223773e-016 2.4651903288156619e-032 -1 0 -2.1533000000000002 3.4038699999999994e-017 -1.3336500000000002e-016 1;
createNode joint -n "jntArmRt3" -p "jntArmRt2";
	setAttr ".t" -type "double3" -4.4408819672894833e-016 -1.55267 -2.5394804526106106e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode lightLinker -n "lightLinker1";
	setAttr -s 3 ".lnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
createNode renderLayer -s -n "globalRender";
createNode polyCylinder -n "polyCylinder1";
	setAttr ".h" 7.2000000000000002;
	setAttr ".sh" 8;
	setAttr ".tx" 1;
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
		+ "                -currentNode \"poseDeformer2\" \n"
		+ "                -currentEdge \"UnnamedGraphNode\" \n"
		+ "                -fromAttr \"poseReader_defaultJntArmLf21.worldMatrix[0]\" \n"
		+ "                -toAttr \"poseReader_defaultJntArmLf2Shape1.worldMatrixPoseIn\" \n"
		+ "                -freeform 0\n"
		+ "                -imageEnabled 0\n"
		+ "                -graphType \"DG\" \n"
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
		+ "                -currentNode \"poseDeformer2\" \n"
		+ "                -currentEdge \"UnnamedGraphNode\" \n"
		+ "                -fromAttr \"poseReader_defaultJntArmLf21.worldMatrix[0]\" \n"
		+ "                -toAttr \"poseReader_defaultJntArmLf2Shape1.worldMatrixPoseIn\" \n"
		+ "                -freeform 0\n"
		+ "                -imageEnabled 0\n"
		+ "                -graphType \"DG\" \n"
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
createNode skinCluster -n "skinCluster1";
	setAttr -s 180 ".wl";
	setAttr -s 2 ".wl[0].w[0:1]"  0.094640255 0.90535975;
	setAttr -s 2 ".wl[1].w[0:1]"  0.094640255 0.90535975;
	setAttr -s 2 ".wl[2].w[0:1]"  0.094640248 0.90535975;
	setAttr -s 2 ".wl[3].w[0:1]"  0.09464024 0.90535975;
	setAttr -s 2 ".wl[4].w[0:1]"  0.094640225 0.90535975;
	setAttr -s 2 ".wl[5].w[0:1]"  0.094640233 0.90535975;
	setAttr -s 2 ".wl[6].w[0:1]"  0.09464021 0.90535975;
	setAttr -s 2 ".wl[7].w[0:1]"  0.09464021 0.90535975;
	setAttr -s 2 ".wl[8].w[0:1]"  0.094640218 0.9053598;
	setAttr -s 2 ".wl[9].w[0:1]"  0.094640195 0.90535975;
	setAttr -s 2 ".wl[10].w[0:1]"  0.09464021 0.90535975;
	setAttr -s 2 ".wl[11].w[0:1]"  0.094640203 0.9053598;
	setAttr -s 2 ".wl[12].w[0:1]"  0.094640195 0.90535986;
	setAttr -s 2 ".wl[13].w[0:1]"  0.09464018 0.9053598;
	setAttr -s 2 ".wl[14].w[0:1]"  0.09464018 0.9053598;
	setAttr -s 2 ".wl[15].w[0:1]"  0.094640166 0.9053598;
	setAttr -s 2 ".wl[16].w[0:1]"  0.094640166 0.9053598;
	setAttr -s 2 ".wl[17].w[0:1]"  0.094640166 0.9053598;
	setAttr -s 2 ".wl[18].w[0:1]"  0.094640151 0.9053598;
	setAttr -s 2 ".wl[19].w[0:1]"  0.094640151 0.90535986;
	setAttr -s 2 ".wl[20].w[0:1]"  0.37214845 0.62785155;
	setAttr -s 2 ".wl[21].w[0:1]"  0.37214845 0.62785155;
	setAttr -s 2 ".wl[22].w[0:1]"  0.37214845 0.62785149;
	setAttr -s 2 ".wl[23].w[0:1]"  0.37214845 0.62785155;
	setAttr -s 2 ".wl[24].w[0:1]"  0.37214842 0.62785155;
	setAttr -s 2 ".wl[25].w[0:1]"  0.37214845 0.62785155;
	setAttr -s 2 ".wl[26].w[0:1]"  0.37214842 0.62785155;
	setAttr -s 2 ".wl[27].w[0:1]"  0.37214842 0.62785155;
	setAttr -s 2 ".wl[28].w[0:1]"  0.37214845 0.62785155;
	setAttr -s 2 ".wl[29].w[0:1]"  0.37214842 0.62785161;
	setAttr -s 2 ".wl[30].w[0:1]"  0.37214842 0.62785155;
	setAttr -s 2 ".wl[31].w[0:1]"  0.37214842 0.62785155;
	setAttr -s 2 ".wl[32].w[0:1]"  0.37214842 0.62785161;
	setAttr -s 2 ".wl[33].w[0:1]"  0.37214839 0.62785155;
	setAttr -s 2 ".wl[34].w[0:1]"  0.37214839 0.62785161;
	setAttr -s 2 ".wl[35].w[0:1]"  0.37214842 0.62785161;
	setAttr -s 2 ".wl[36].w[0:1]"  0.37214842 0.62785161;
	setAttr -s 2 ".wl[37].w[0:1]"  0.37214842 0.62785161;
	setAttr -s 2 ".wl[38].w[0:1]"  0.37214836 0.62785161;
	setAttr -s 2 ".wl[39].w[0:1]"  0.37214836 0.62785167;
	setAttr -s 2 ".wl[40].w[0:1]"  0.55854118 0.44145882;
	setAttr -s 2 ".wl[41].w[0:1]"  0.55854118 0.44145882;
	setAttr -s 2 ".wl[42].w[0:1]"  0.55854118 0.44145882;
	setAttr -s 2 ".wl[43].w[0:1]"  0.55854118 0.44145882;
	setAttr -s 2 ".wl[44].w[0:1]"  0.55854118 0.44145885;
	setAttr -s 2 ".wl[45].w[0:1]"  0.55854112 0.44145882;
	setAttr -s 2 ".wl[46].w[0:1]"  0.55854118 0.44145879;
	setAttr -s 2 ".wl[47].w[0:1]"  0.55854118 0.44145879;
	setAttr -s 2 ".wl[48].w[0:1]"  0.55854118 0.44145882;
	setAttr -s 2 ".wl[49].w[0:1]"  0.55854118 0.44145882;
	setAttr -s 2 ".wl[50].w[0:1]"  0.55854118 0.44145879;
	setAttr -s 2 ".wl[51].w[0:1]"  0.55854118 0.44145882;
	setAttr -s 2 ".wl[52].w[0:1]"  0.55854118 0.44145879;
	setAttr -s 2 ".wl[53].w[0:1]"  0.55854118 0.44145879;
	setAttr -s 2 ".wl[54].w[0:1]"  0.55854118 0.44145879;
	setAttr -s 2 ".wl[55].w[0:1]"  0.55854118 0.44145879;
	setAttr -s 2 ".wl[56].w[0:1]"  0.55854118 0.44145879;
	setAttr -s 2 ".wl[57].w[0:1]"  0.55854118 0.44145879;
	setAttr -s 2 ".wl[58].w[0:1]"  0.55854124 0.44145879;
	setAttr -s 2 ".wl[59].w[0:1]"  0.55854124 0.44145879;
	setAttr -s 2 ".wl[60].w[0:1]"  0.86857259 0.13142739;
	setAttr -s 2 ".wl[61].w[0:1]"  0.86857259 0.13142739;
	setAttr -s 2 ".wl[62].w[0:1]"  0.86857259 0.13142739;
	setAttr -s 2 ".wl[63].w[0:1]"  0.86857265 0.13142738;
	setAttr -s 2 ".wl[64].w[0:1]"  0.86857259 0.13142736;
	setAttr -s 2 ".wl[65].w[0:1]"  0.86857265 0.13142736;
	setAttr -s 2 ".wl[66].w[0:1]"  0.86857265 0.13142735;
	setAttr -s 2 ".wl[67].w[0:1]"  0.86857265 0.13142735;
	setAttr -s 2 ".wl[68].w[0:1]"  0.86857265 0.13142735;
	setAttr -s 2 ".wl[69].w[0:1]"  0.86857265 0.13142733;
	setAttr -s 2 ".wl[70].w[0:1]"  0.86857265 0.13142733;
	setAttr -s 2 ".wl[71].w[0:1]"  0.86857271 0.13142733;
	setAttr -s 2 ".wl[72].w[0:1]"  0.86857271 0.13142732;
	setAttr -s 2 ".wl[73].w[0:1]"  0.86857271 0.1314273;
	setAttr -s 2 ".wl[74].w[0:1]"  0.86857271 0.13142729;
	setAttr -s 2 ".wl[75].w[0:1]"  0.86857271 0.13142729;
	setAttr -s 2 ".wl[76].w[0:1]"  0.86857271 0.13142729;
	setAttr -s 2 ".wl[77].w[0:1]"  0.86857271 0.13142729;
	setAttr -s 2 ".wl[78].w[0:1]"  0.86857277 0.13142727;
	setAttr -s 2 ".wl[79].w[0:1]"  0.86857277 0.13142726;
	setAttr -s 2 ".wl[80].w[2:3]"  0.94493121 0.055068757;
	setAttr -s 2 ".wl[81].w[2:3]"  0.94493121 0.055068757;
	setAttr -s 2 ".wl[82].w[2:3]"  0.94493121 0.05506875;
	setAttr -s 2 ".wl[83].w[2:3]"  0.94493121 0.05506875;
	setAttr -s 2 ".wl[84].w[2:3]"  0.94493121 0.055068746;
	setAttr -s 2 ".wl[85].w[2:3]"  0.94493121 0.055068746;
	setAttr -s 2 ".wl[86].w[2:3]"  0.94493121 0.055068742;
	setAttr -s 2 ".wl[87].w[2:3]"  0.94493121 0.055068742;
	setAttr -s 2 ".wl[88].w[2:3]"  0.94493121 0.055068735;
	setAttr -s 2 ".wl[89].w[2:3]"  0.94493127 0.055068731;
	setAttr -s 2 ".wl[90].w[2:3]"  0.94493121 0.055068735;
	setAttr -s 2 ".wl[91].w[2:3]"  0.94493127 0.055068731;
	setAttr -s 2 ".wl[92].w[2:3]"  0.94493127 0.055068724;
	setAttr -s 2 ".wl[93].w[2:3]"  0.94493127 0.055068724;
	setAttr -s 2 ".wl[94].w[2:3]"  0.94493127 0.05506872;
	setAttr -s 2 ".wl[95].w[2:3]"  0.94493127 0.055068713;
	setAttr -s 2 ".wl[96].w[2:3]"  0.94493127 0.055068713;
	setAttr -s 2 ".wl[97].w[2:3]"  0.94493127 0.055068713;
	setAttr -s 2 ".wl[98].w[2:3]"  0.94493127 0.055068713;
	setAttr -s 2 ".wl[99].w[2:3]"  0.94493127 0.055068709;
	setAttr -s 2 ".wl[100].w[2:3]"  0.86857331 0.13142672;
	setAttr -s 2 ".wl[101].w[2:3]"  0.86857331 0.13142672;
	setAttr -s 2 ".wl[102].w[2:3]"  0.86857325 0.13142671;
	setAttr -s 2 ".wl[103].w[2:3]"  0.86857337 0.13142671;
	setAttr -s 2 ".wl[104].w[2:3]"  0.86857331 0.13142669;
	setAttr -s 2 ".wl[105].w[2:3]"  0.86857331 0.13142668;
	setAttr -s 2 ".wl[106].w[2:3]"  0.86857337 0.13142668;
	setAttr -s 2 ".wl[107].w[2:3]"  0.86857337 0.13142668;
	setAttr -s 2 ".wl[108].w[2:3]"  0.86857331 0.13142666;
	setAttr -s 2 ".wl[109].w[2:3]"  0.86857337 0.13142666;
	setAttr -s 2 ".wl[110].w[2:3]"  0.86857337 0.13142666;
	setAttr -s 2 ".wl[111].w[2:3]"  0.86857331 0.13142665;
	setAttr -s 2 ".wl[112].w[2:3]"  0.86857337 0.13142663;
	setAttr -s 2 ".wl[113].w[2:3]"  0.86857331 0.13142662;
	setAttr -s 2 ".wl[114].w[2:3]"  0.86857337 0.13142662;
	setAttr -s 2 ".wl[115].w[2:3]"  0.86857337 0.1314266;
	setAttr -s 2 ".wl[116].w[2:3]"  0.86857337 0.1314266;
	setAttr -s 2 ".wl[117].w[2:3]"  0.86857337 0.1314266;
	setAttr -s 2 ".wl[118].w[2:3]"  0.86857337 0.13142659;
	setAttr -s 2 ".wl[119].w[2:3]"  0.86857337 0.13142659;
	setAttr -s 2 ".wl[120].w[2:3]"  0.55854213 0.4414579;
	setAttr -s 2 ".wl[121].w[2:3]"  0.55854213 0.4414579;
	setAttr -s 2 ".wl[122].w[2:3]"  0.55854207 0.4414579;
	setAttr -s 2 ".wl[123].w[2:3]"  0.55854213 0.4414579;
	setAttr -s 2 ".wl[124].w[2:3]"  0.55854213 0.4414579;
	setAttr -s 2 ".wl[125].w[2:3]"  0.55854213 0.4414579;
	setAttr -s 2 ".wl[126].w[2:3]"  0.55854213 0.4414579;
	setAttr -s 2 ".wl[127].w[2:3]"  0.55854213 0.4414579;
	setAttr -s 2 ".wl[128].w[2:3]"  0.55854207 0.44145787;
	setAttr -s 2 ".wl[129].w[2:3]"  0.55854213 0.44145787;
	setAttr -s 2 ".wl[130].w[2:3]"  0.55854213 0.44145787;
	setAttr -s 2 ".wl[131].w[2:3]"  0.55854213 0.4414579;
	setAttr -s 2 ".wl[132].w[2:3]"  0.55854213 0.44145787;
	setAttr -s 2 ".wl[133].w[2:3]"  0.55854213 0.44145787;
	setAttr -s 2 ".wl[134].w[2:3]"  0.55854219 0.44145787;
	setAttr -s 2 ".wl[135].w[2:3]"  0.55854213 0.44145787;
	setAttr -s 2 ".wl[136].w[2:3]"  0.55854213 0.44145787;
	setAttr -s 2 ".wl[137].w[2:3]"  0.55854213 0.44145787;
	setAttr -s 2 ".wl[138].w[2:3]"  0.55854213 0.44145787;
	setAttr -s 2 ".wl[139].w[2:3]"  0.55854213 0.44145784;
	setAttr -s 2 ".wl[140].w[2:3]"  0.37214965 0.62785029;
	setAttr -s 2 ".wl[141].w[2:3]"  0.37214965 0.62785029;
	setAttr -s 2 ".wl[142].w[2:3]"  0.37214965 0.62785035;
	setAttr -s 2 ".wl[143].w[2:3]"  0.37214968 0.62785035;
	setAttr -s 2 ".wl[144].w[2:3]"  0.37214965 0.62785041;
	setAttr -s 2 ".wl[145].w[2:3]"  0.37214965 0.62785035;
	setAttr -s 2 ".wl[146].w[2:3]"  0.37214962 0.62785035;
	setAttr -s 2 ".wl[147].w[2:3]"  0.37214962 0.62785035;
	setAttr -s 2 ".wl[148].w[2:3]"  0.37214962 0.62785041;
	setAttr -s 2 ".wl[149].w[2:3]"  0.37214965 0.62785041;
	setAttr -s 2 ".wl[150].w[2:3]"  0.37214962 0.62785035;
	setAttr -s 2 ".wl[151].w[2:3]"  0.37214962 0.62785041;
	setAttr -s 2 ".wl[152].w[2:3]"  0.37214959 0.62785041;
	setAttr -s 2 ".wl[153].w[2:3]"  0.37214962 0.62785041;
	setAttr -s 2 ".wl[154].w[2:3]"  0.37214959 0.62785041;
	setAttr -s 2 ".wl[155].w[2:3]"  0.37214956 0.62785041;
	setAttr -s 2 ".wl[156].w[2:3]"  0.37214956 0.62785041;
	setAttr -s 2 ".wl[157].w[2:3]"  0.37214956 0.62785041;
	setAttr -s 2 ".wl[158].w[2:3]"  0.37214959 0.62785047;
	setAttr -s 2 ".wl[159].w[2:3]"  0.37214956 0.62785041;
	setAttr -s 2 ".wl[160].w[2:3]"  0.094640784 0.90535927;
	setAttr -s 2 ".wl[161].w[2:3]"  0.094640784 0.90535927;
	setAttr -s 2 ".wl[162].w[2:3]"  0.094640777 0.90535927;
	setAttr -s 2 ".wl[163].w[2:3]"  0.094640769 0.90535927;
	setAttr -s 2 ".wl[164].w[2:3]"  0.094640754 0.90535921;
	setAttr -s 2 ".wl[165].w[2:3]"  0.094640754 0.90535927;
	setAttr -s 2 ".wl[166].w[2:3]"  0.094640739 0.90535927;
	setAttr -s 2 ".wl[167].w[2:3]"  0.094640739 0.90535927;
	setAttr -s 2 ".wl[168].w[2:3]"  0.094640739 0.90535933;
	setAttr -s 2 ".wl[169].w[2:3]"  0.094640724 0.90535927;
	setAttr -s 2 ".wl[170].w[2:3]"  0.094640732 0.90535927;
	setAttr -s 2 ".wl[171].w[2:3]"  0.094640717 0.90535921;
	setAttr -s 2 ".wl[172].w[2:3]"  0.094640702 0.90535927;
	setAttr -s 2 ".wl[173].w[2:3]"  0.094640709 0.90535933;
	setAttr -s 2 ".wl[174].w[2:3]"  0.094640702 0.90535933;
	setAttr -s 2 ".wl[175].w[2:3]"  0.094640695 0.90535933;
	setAttr -s 2 ".wl[176].w[2:3]"  0.094640695 0.90535933;
	setAttr -s 2 ".wl[177].w[2:3]"  0.094640695 0.90535933;
	setAttr -s 2 ".wl[178].w[2:3]"  0.09464068 0.90535933;
	setAttr -s 2 ".wl[179].w[2:3]"  0.094640672 0.90535933;
	setAttr -s 4 ".pm";
	setAttr ".pm[0]" -type "matrix" 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0 0
		 0 0 1 0 0 -0.6006224162709094 1.3336496712999177e-016 1;
	setAttr ".pm[1]" -type "matrix" 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0 0
		 0 0 1 0 -4.4408920985006262e-016 -2.153296739883626 1.3336496712999177e-016 1;
	setAttr ".pm[2]" -type "matrix" 2.2204460492503131e-016 1 -1.2246063538223773e-016 0
		 1 -2.2204460492503131e-016 2.7191723402317286e-032 0 -2.5398201141606673e-033 -1.2246063538223773e-016 -1 0
		 -1.2530071784678104e-022 0.60062199999999999 -2.0691755174455038e-016 1;
	setAttr ".pm[3]" -type "matrix" 2.2204460492503131e-016 1 -1.2246063538223773e-016 0
		 1 -2.2204460492503131e-016 2.7191723402317286e-032 0 -2.5398201141606673e-033 -1.2246063538223773e-016 -1 0
		 4.4408994778506997e-016 2.1533000000000002 -3.9705948616857258e-016 1;
	setAttr ".gm" -type "matrix" 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0 0
		 0 0 1 0 0 0 0 1;
	setAttr -s 4 ".ma";
	setAttr -s 4 ".dpf[0:3]"  4 4 4 4;
	setAttr -s 4 ".lw";
	setAttr -s 4 ".lw";
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
createNode dagPose -n "bindPose1";
	setAttr -s 4 ".wm";
	setAttr -s 4 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.6006224162709094
		 1.3336496712999177e-016 -1.3336496712999177e-016 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 1 0 0 -0.70710678118654746 0.70710678118654757 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.4408920985006262e-016
		 1.5526743236127167 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.60062199999999999
		 1.33365e-016 -1.33365e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.70710678118654757 -0.70710678118654746 4.3296372853596771e-017 4.3296372853596777e-017 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.4409007308578777e-016
		 -1.5526780000000002 1.9014193442402215e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 4 ".m";
	setAttr -s 4 ".p";
	setAttr ".bp" yes;
createNode animCurveTU -n "jntArmRt2_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 50 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "jntArmRt2_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -4.4409007308578777e-016 50 -4.4409007308578777e-016;
createNode animCurveTL -n "jntArmRt2_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.5526780000000002 50 -1.5526780000000002;
createNode animCurveTL -n "jntArmRt2_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.9014193442402215e-016 50 1.9014193442402215e-016;
createNode animCurveTA -n "jntArmRt2_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
createNode animCurveTA -n "jntArmRt2_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
createNode animCurveTA -n "jntArmRt2_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 96.78227402200028;
createNode animCurveTU -n "jntArmRt2_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 50 1;
createNode animCurveTU -n "jntArmRt2_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 50 1;
createNode animCurveTU -n "jntArmRt2_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 50 1;
createNode animCurveTU -n "jntArmLf2_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 50 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "jntArmLf2_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 4.4408920985006262e-016 50 4.4408920985006262e-016;
createNode animCurveTL -n "jntArmLf2_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.5526743236127167 50 1.5526743236127167;
createNode animCurveTL -n "jntArmLf2_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
createNode animCurveTA -n "jntArmLf2_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
createNode animCurveTA -n "jntArmLf2_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
createNode animCurveTA -n "jntArmLf2_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 96.78227402200028;
createNode animCurveTU -n "jntArmLf2_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 50 1;
createNode animCurveTU -n "jntArmLf2_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 50 1;
createNode animCurveTU -n "jntArmLf2_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 50 1;
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
createNode poseDeformer -n "poseDeformer1";
	setAttr -s 4 ".wm";
	setAttr -s 3 ".pos";
	setAttr ".pos[0].pnm" -type "string" "default";
	setAttr ".pos[0].pxfm[0].pxstr" 1;
	setAttr ".pos[0].pxfm[0].pxidx" 1;
	setAttr ".pos[0].pxfm[0].pxnpt" 180;
	setAttr ".pos[1].pnm" -type "string" "half25";
	setAttr ".pos[1].pxfm[0].pxstr" 1;
	setAttr ".pos[1].pxfm[0].pxidx" 1;
	setAttr ".pos[1].pxfm[0].pxnpt" 180;
	setAttr -s 140 ".pos[1].pxfm[0].pdlt[40:179]"  -0.76274103560769257 
		0.59615802536650608 -0.13742479681968689 -0.76274103560769257 0.59615802536650608 
		-0.1374247670173645 -0.76274099602771217 0.59615798080038851 -0.1374247670173645 
		-0.76274105539768278 0.59615804764956482 -0.1374247670173645 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.76274103560769257 
		0.59615802536650608 -0.1374247670173645 -0.76274107518767298 0.59615806993262366 
		-0.1374247819185257 -0.76274103560769257 0.59615802536650608 -0.1374247819185257 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".pos[2].pnm" -type "string" "full100";
	setAttr ".pos[2].pxfm[0].pxstr" 1;
	setAttr ".pos[2].pxfm[0].pxidx" 1;
	setAttr ".pos[2].pxfm[0].pxnpt" 180;
	setAttr -s 160 ".pos[2].pxfm[0].pdlt[20:179]"  -0.39884829209710537 
		0.43739249009449754 0.066239207983016968 -0.3988482850579898 0.43739254928203453 
		0.06623917818069458 -0.3988482850579898 0.43739254928203453 0.06623917818069458 
		-0.17067613061179596 0.18890395278652819 0.036057174205780029 -0.035620189470514922 
		0.077845694431226423 0.010821819305419922 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.035620189470514922 0.077845694431226423 0.010821819305419922 
		-0.17067612709223817 0.18890398238029665 0.036057233810424805 -0.3988482850579898 
		0.43739254928203453 0.06623917818069458 -0.3988482850579898 0.43739254928203453 
		0.066239207983016968 -0.3988482850579898 0.43739254928203453 0.066239200532436371 
		-0.3988482850579898 0.43739254928203453 0.066239207983016968 -0.39884828857754756 
		0.43739251968826603 0.06623917818069458 -0.39884829033732649 0.43739250489138182 
		0.06623917818069458 -0.17067612790338627 0.18890397555985783 0.036057174205780029 
		-0.035620191230293814 0.077845679634342191 0.010821819305419922 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.035620191574000627 0.077845676744325729 
		0.010821819305419922 -0.17067612709223817 0.18890398238029665 0.036057233810424805 
		-0.39884829209710537 0.43739249009449754 0.06623917818069458 -0.3988482850579898 
		0.43739254928203453 0.066239207983016968 -0.3988482850579898 0.43739254928203453 
		0.066239200532436371 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode objectSet -n "poseDeformer1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "poseDeformer1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "poseDeformer1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode poseDeformer -n "poseDeformer2";
	setAttr -s 4 ".wm";
createNode objectSet -n "poseDeformer2Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "poseDeformer2GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "poseDeformer2GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode mirrorData -n "mirrorData1";
	setAttr -s 180 ".midx[0:179]"  8 7 6 5 4 
		3 2 1 0 19 18 17 16 15 14 13 
		12 11 10 9 28 27 26 25 24 23 22 
		21 20 39 38 37 36 35 34 33 32 31 
		30 29 48 47 46 45 44 43 42 41 40 
		59 58 57 56 55 54 53 52 51 50 49 
		68 67 66 65 64 63 62 61 60 79 78 
		77 76 75 74 73 72 71 70 69 88 87 
		86 85 84 83 82 81 80 99 98 97 96 
		95 94 93 92 91 90 89 108 107 106 105 
		104 103 102 101 100 119 118 117 116 115 114 
		113 112 111 110 109 128 127 126 125 124 123 
		122 121 120 139 138 137 136 135 134 133 132 
		131 130 129 148 147 146 145 144 143 142 141 
		140 159 158 157 156 155 154 153 152 151 150 
		149 168 167 166 165 164 163 162 161 160 179 
		178 177 176 175 174 173 172 171 170 169;
createNode objectSet -n "mirrorData1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mirrorData1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mirrorData1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
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
connectAttr "skinCluster1GroupId.id" "pCylinderShape1ArmLf.iog.og[2].gid"
		;
connectAttr "skinCluster1Set.mwc" "pCylinderShape1ArmLf.iog.og[2].gco";
connectAttr "groupId2.id" "pCylinderShape1ArmLf.iog.og[3].gid";
connectAttr "tweakSet1.mwc" "pCylinderShape1ArmLf.iog.og[3].gco";
connectAttr "poseDeformer1GroupId.id" "pCylinderShape1ArmLf.iog.og[4].gid"
		;
connectAttr "poseDeformer1Set.mwc" "pCylinderShape1ArmLf.iog.og[4].gco";
connectAttr "poseDeformer2GroupId.id" "pCylinderShape1ArmLf.iog.og[5].gid"
		;
connectAttr "poseDeformer2Set.mwc" "pCylinderShape1ArmLf.iog.og[5].gco";
connectAttr "mirrorData1GroupId.id" "pCylinderShape1ArmLf.iog.og[8].gid"
		;
connectAttr "mirrorData1Set.mwc" "pCylinderShape1ArmLf.iog.og[8].gco";
connectAttr "poseDeformer2.og[0]" "pCylinderShape1ArmLf.i";
connectAttr "tweak1.vl[0].vt[0]" "pCylinderShape1ArmLf.twl";
connectAttr "polyCylinder1.out" "pCylinderShape1Orig.i";
connectAttr "jntArmLf1.s" "jntArmLf2.is";
connectAttr "jntArmLf2_scaleX.o" "jntArmLf2.sx";
connectAttr "jntArmLf2_scaleY.o" "jntArmLf2.sy";
connectAttr "jntArmLf2_scaleZ.o" "jntArmLf2.sz";
connectAttr "jntArmLf2_translateX.o" "jntArmLf2.tx";
connectAttr "jntArmLf2_translateY.o" "jntArmLf2.ty";
connectAttr "jntArmLf2_translateZ.o" "jntArmLf2.tz";
connectAttr "jntArmLf2_rotateX.o" "jntArmLf2.rx";
connectAttr "jntArmLf2_rotateY.o" "jntArmLf2.ry";
connectAttr "jntArmLf2_rotateZ.o" "jntArmLf2.rz";
connectAttr "jntArmLf2_visibility.o" "jntArmLf2.v";
connectAttr "jntArmLf2.s" "jntArmLf3.is";
connectAttr "poseReader_defaultJntArmLf2Shape1.out" "poseReader_defaultJntArmLf2Shape1.weight"
		;
connectAttr "jntArmLf2.wm" "poseReader_defaultJntArmLf2Shape1.wml";
connectAttr "poseReader_defaultJntArmLf21.wm" "poseReader_defaultJntArmLf2Shape1.wmp"
		;
connectAttr "poseReader_half25JntArmLf2Shape1.out" "poseReader_half25JntArmLf2Shape1.weight"
		;
connectAttr "jntArmLf2.wm" "poseReader_half25JntArmLf2Shape1.wml";
connectAttr "poseReader_half25JntArmLf21.wm" "poseReader_half25JntArmLf2Shape1.wmp"
		;
connectAttr "poseReader_full100JntArmLf2Shape1.out" "poseReader_full100JntArmLf2Shape1.weight"
		;
connectAttr "jntArmLf2.wm" "poseReader_full100JntArmLf2Shape1.wml";
connectAttr "poseReader_full100JntArmLf21.wm" "poseReader_full100JntArmLf2Shape1.wmp"
		;
connectAttr "jntArmRt1.s" "jntArmRt2.is";
connectAttr "jntArmRt2_scaleX.o" "jntArmRt2.sx";
connectAttr "jntArmRt2_scaleY.o" "jntArmRt2.sy";
connectAttr "jntArmRt2_scaleZ.o" "jntArmRt2.sz";
connectAttr "jntArmRt2_translateX.o" "jntArmRt2.tx";
connectAttr "jntArmRt2_translateY.o" "jntArmRt2.ty";
connectAttr "jntArmRt2_translateZ.o" "jntArmRt2.tz";
connectAttr "jntArmRt2_rotateX.o" "jntArmRt2.rx";
connectAttr "jntArmRt2_rotateY.o" "jntArmRt2.ry";
connectAttr "jntArmRt2_rotateZ.o" "jntArmRt2.rz";
connectAttr "jntArmRt2_visibility.o" "jntArmRt2.v";
connectAttr "jntArmRt2.s" "jntArmRt3.is";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[1].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr "matPoseDeformerCorrectedSG.msg" "lightLinker1.lnk[2].olnk";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "mirrorData1.og[0]" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "jntArmLf1.wm" "skinCluster1.ma[0]";
connectAttr "jntArmLf2.wm" "skinCluster1.ma[1]";
connectAttr "jntArmRt1.wm" "skinCluster1.ma[2]";
connectAttr "jntArmRt2.wm" "skinCluster1.ma[3]";
connectAttr "jntArmLf1.liw" "skinCluster1.lw[0]";
connectAttr "jntArmLf2.liw" "skinCluster1.lw[1]";
connectAttr "jntArmRt1.liw" "skinCluster1.lw[2]";
connectAttr "jntArmRt2.liw" "skinCluster1.lw[3]";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "pCylinderShape1ArmLf.iog.og[2]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "pCylinderShape1ArmLf.iog.og[3]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "pCylinderShape1Orig.w" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "jntArmLf1.msg" "bindPose1.m[0]";
connectAttr "jntArmLf2.msg" "bindPose1.m[1]";
connectAttr "jntArmRt1.msg" "bindPose1.m[2]";
connectAttr "jntArmRt2.msg" "bindPose1.m[3]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.w" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "jntArmLf1.bps" "bindPose1.wm[0]";
connectAttr "jntArmLf2.bps" "bindPose1.wm[1]";
connectAttr "jntArmRt1.bps" "bindPose1.wm[2]";
connectAttr "jntArmRt2.bps" "bindPose1.wm[3]";
connectAttr "matPoseDeformerCorrected.oc" "matPoseDeformerCorrectedSG.ss"
		;
connectAttr "matPoseDeformerCorrectedSG.msg" "materialInfo1.sg";
connectAttr "matPoseDeformerCorrected.msg" "materialInfo1.m";
connectAttr "poseDeformer1GroupParts.og" "poseDeformer1.ip[0].ig";
connectAttr "poseDeformer1GroupId.id" "poseDeformer1.ip[0].gi";
connectAttr "jntArmLf1.wm" "poseDeformer1.wm[0]";
connectAttr "jntArmLf2.wm" "poseDeformer1.wm[1]";
connectAttr "jntArmRt1.wm" "poseDeformer1.wm[2]";
connectAttr "jntArmRt2.wm" "poseDeformer1.wm[3]";
connectAttr "poseReader_defaultJntArmLf21.wm" "poseDeformer1.pos[0].pxfm[0].pxmat"
		;
connectAttr "poseReader_defaultJntArmLf2Shape1.axi" "poseDeformer1.pos[0].pxfm[0].pxaxi"
		;
connectAttr "poseReader_defaultJntArmLf2Shape1.weight" "poseDeformer1.pos[0].pwt"
		;
connectAttr "poseReader_half25JntArmLf21.wm" "poseDeformer1.pos[1].pxfm[0].pxmat"
		;
connectAttr "poseReader_half25JntArmLf2Shape1.axi" "poseDeformer1.pos[1].pxfm[0].pxaxi"
		;
connectAttr "poseReader_half25JntArmLf2Shape1.weight" "poseDeformer1.pos[1].pwt"
		;
connectAttr "poseReader_full100JntArmLf21.wm" "poseDeformer1.pos[2].pxfm[0].pxmat"
		;
connectAttr "poseReader_full100JntArmLf2Shape1.axi" "poseDeformer1.pos[2].pxfm[0].pxaxi"
		;
connectAttr "poseReader_full100JntArmLf2Shape1.weight" "poseDeformer1.pos[2].pwt"
		;
connectAttr "poseDeformer1GroupId.msg" "poseDeformer1Set.gn" -na;
connectAttr "pCylinderShape1ArmLf.iog.og[4]" "poseDeformer1Set.dsm" -na;
connectAttr "poseDeformer1.msg" "poseDeformer1Set.ub[0]";
connectAttr "skinCluster1.og[0]" "poseDeformer1GroupParts.ig";
connectAttr "poseDeformer1GroupId.id" "poseDeformer1GroupParts.gi";
connectAttr "poseDeformer2GroupParts.og" "poseDeformer2.ip[0].ig";
connectAttr "poseDeformer2GroupId.id" "poseDeformer2.ip[0].gi";
connectAttr "jntArmLf1.wm" "poseDeformer2.wm[0]";
connectAttr "jntArmLf2.wm" "poseDeformer2.wm[1]";
connectAttr "jntArmRt1.wm" "poseDeformer2.wm[2]";
connectAttr "jntArmRt2.wm" "poseDeformer2.wm[3]";
connectAttr "poseDeformer2GroupId.msg" "poseDeformer2Set.gn" -na;
connectAttr "pCylinderShape1ArmLf.iog.og[5]" "poseDeformer2Set.dsm" -na;
connectAttr "poseDeformer2.msg" "poseDeformer2Set.ub[0]";
connectAttr "poseDeformer1.og[0]" "poseDeformer2GroupParts.ig";
connectAttr "poseDeformer2GroupId.id" "poseDeformer2GroupParts.gi";
connectAttr "mirrorData1GroupParts.og" "mirrorData1.ip[0].ig";
connectAttr "mirrorData1GroupId.id" "mirrorData1.ip[0].gi";
connectAttr "mirrorData1GroupId.msg" "mirrorData1Set.gn" -na;
connectAttr "pCylinderShape1ArmLf.iog.og[8]" "mirrorData1Set.dsm" -na;
connectAttr "mirrorData1.msg" "mirrorData1Set.ub[0]";
connectAttr "skinCluster1GroupParts.og" "mirrorData1GroupParts.ig";
connectAttr "mirrorData1GroupId.id" "mirrorData1GroupParts.gi";
connectAttr "matPoseDeformerCorrectedSG.pa" ":renderPartition.st" -na;
connectAttr "matPoseDeformerCorrected.msg" ":defaultShaderList1.s" -na;
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
connectAttr "pCylinderShape1ArmLf.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1Orig.iog" ":initialShadingGroup.dsm" -na;
// End of poseDefSampleMirror.ma
