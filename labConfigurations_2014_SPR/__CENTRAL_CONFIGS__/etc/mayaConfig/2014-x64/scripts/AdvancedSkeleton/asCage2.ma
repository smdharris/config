//Maya ASCII 2012 scene
//Name: asCage2.ma
//Last modified: Sat, Oct 19, 2013 04:31:31 PM
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
	setAttr ".t" -type "double3" -3.1635124025088777 9.6585930875246948 -0.94775365056449778 ;
	setAttr ".r" -type "double3" -93.338352729603201 -7.3999999999998085 1.603633745797502e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".ncp" 1;
	setAttr ".coi" 9.5026305217628497;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -2.8768963813781738 0.17113550007343292 -0.34936195611953735 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.8768963813781738 100.14201399381409 -0.34936195611951515 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 1;
	setAttr ".coi" 100.1;
	setAttr ".ow" 8.8396027923207026;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.8768963813781738 0.17113550007343292 100.14133481497508 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 1;
	setAttr ".coi" 100.1;
	setAttr ".ow" 3.6612872073524878;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.10073482791346 0.17113550007343292 -0.34936195611951448 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 1;
	setAttr ".coi" 100.1;
	setAttr ".ow" 3.9226420302140088;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "cheekSkinCage";
createNode mesh -n "cheekSkinCageShape" -p "cheekSkinCage";
	setAttr -k off ".v";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 74 ".uvst[0].uvsp[0:73]" -type "float2" 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0.78566402 1 0.73736203 1 0.73736203 0 0.78566402 0 0.78803402 1 0.81384498
		 0.5 0.83965498 1 0.78803402 0 0.83965498 0 0.262638 1 0.21433599 1 0.21433599 0 0.262638
		 0 0.380577 1 0 1 0 0 0.380577 0 0 1 0 0.5 0.40673 0.5 0.40673 1 0 0 0.40673 0 1 1
		 0.61942297 1 0.61942297 0 1 0 0 0 1 0 1 1 0 1 0.87916601 0 0.87916601 1 0 0 1 0 0.5
		 1 1 0 1 1 0.939583 1 0.96979201 0.5 1 1 0 1 0 0 1 0.5 1 1 1 0 1 0 0 0.5 0 0 0.939583
		 0 0.285357 0 0 0.5 0 1 0 0 0.120834 1 0.120834 0 1 1 0 1 0.034481 1 1 0 0.5 0.5 0
		 1 1 0 0.50000012 0 0.5 1 0.8324151 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".bnr" 0;
	setAttr -s 39 ".vt[0:38]"  -3.96322608 0.41065401 0.65151298 -1.63551104 0.077520996 0.32483399
		 -3.84831095 0.40588099 -0.81391901 -2.0024600029 0.176807 0.17833 -3.66470599 0.43371901 -1.23179996
		 -1.68794096 0.089300998 -0.343575 -4.6160078 0.490587 0.96229798 -4.26960802 0.44547999 -0.81985199
		 -1.38298094 -0.054191999 0.47809801 -1.377859 -0.016767001 -0.129024 -4.31582022 0.55579001 -2.0023300648
		 -1.52528405 -0.086866997 -0.65377003 -1.87911999 0.184146 1.33231699 -1.88766003 0.19165801 1.041566014
		 -1.96600294 0.135821 -0.75775802 -2.040458918 0.099721998 -0.783921 -2.48821712 0.022969 -1.69202602
		 -2.44750905 0.098274 -1.0054639578 -2.28866196 0.37095201 -0.214873 -2.22337794 0.25725099 1.029072046
		 -2.35002208 0.219264 1.45574605 -2.6020031 0.223822 -1.64298606 -2.61498904 0.241292 -1.20191705
		 -2.43294096 0.30114701 1.077407956 -2.60141802 0.28163499 1.51389301 -1.23646903 -0.052067999 -1.45009995
		 -1.63577104 -0.21351901 -2.21261692 -1.13778496 -0.040504001 1.23680103 -3.33917499 0.337699 1.276914
		 -3.13211489 0.37712699 0.70573997 -2.93837404 0.45767099 -0.63620198 -3.12986302 0.35684699 -1.36103702
		 -3.091211081 0.336151 -1.88179398 -1.65735102 0.073453002 0.026469 -1.45309997 0.066559002 0.82349098
		 -1.54779899 0.079271004 1.30364501 -1.22825205 -0.036982 0.75313002 -2.26433802 0.061345506 -1.23797345
		 -1.43612003 -0.13279352 -1.83135843;
	setAttr -s 70 ".ed[0:69]"  0 2 0 2 7 0 7 6 0 6 0 0 2 4 0 4 10 0 10 7 0
		 16 21 0 21 22 0 22 18 0 18 23 0 23 19 0 19 18 0 24 20 0 20 19 0 23 24 0 32 10 0 4 31 0
		 31 32 0 2 30 0 30 31 0 0 29 0 29 30 0 6 28 0 28 29 0 26 16 0 28 24 0 23 29 0 18 30 0
		 22 31 0 21 32 0 11 25 0 5 11 0 18 3 0 9 11 0 5 33 0 33 9 0 3 5 0 3 33 0 1 33 0 3 1 0
		 19 13 0 13 3 0 34 36 0 36 8 0 8 1 0 1 34 0 20 12 0 12 13 0 8 9 0 13 34 0 34 35 0
		 35 27 0 27 36 0 12 35 0 17 22 0 16 37 0 15 25 0 25 38 0 14 15 0 15 37 0 16 17 0 11 15 0
		 14 17 0 17 18 0 3 14 0 5 14 0 38 26 0 17 37 0 37 38 0;
	setAttr -s 114 ".n[0:113]" -type "float3"  0.110735 0.99384999 0.00046499999
		 0.110735 0.99384999 0.00046499999 0.110735 0.99384999 0.00046499999 0.110735 0.99384999
		 0.00046499999 0.082445003 0.99227202 0.092734002 0.082445003 0.99227202 0.092734002
		 0.082445003 0.99227202 0.092734002 0.082445003 0.99227202 0.092734002 0.221434 0.972112
		 0.077233002 0.221434 0.972112 0.077233002 0.221434 0.972112 0.077233002 0.255023
		 0.95510101 0.150819 0.255023 0.95510101 0.150819 0.255023 0.95510101 0.150819 0.255023
		 0.95510101 0.150819 0.16617399 0.98609501 -0.001402 0.16617399 0.98609501 -0.001402
		 0.16617399 0.98609501 -0.001402 0.16617399 0.98609501 -0.001402 0.019464999 0.997769
		 -0.063860998 0.019464999 0.997769 -0.063860998 0.019464999 0.997769 -0.063860998
		 0.019464999 0.997769 -0.063860998 -0.013876 0.99958003 0.025452999 -0.013876 0.99958003
		 0.025452999 -0.013876 0.99958003 0.025452999 -0.013876 0.99958003 0.025452999 0.082084998
		 0.99603498 0.034283001 0.082084998 0.99603498 0.034283001 0.082084998 0.99603498
		 0.034283001 0.082084998 0.99603498 0.034283001 0.057686001 0.995148 0.079706997 0.057686001
		 0.995148 0.079706997 0.057686001 0.995148 0.079706997 0.057686001 0.995148 0.079706997
		 0.080510996 0.99449301 0.067092001 0.080510996 0.99449301 0.067092001 0.080510996
		 0.99449301 0.067092001 0.080510996 0.99449301 0.067092001 0.266853 0.941149 -0.207432
		 0.266853 0.941149 -0.207432 0.266853 0.941149 -0.207432 0.266853 0.941149 -0.207432
		 0.231111 0.97257501 -0.026186001 0.231111 0.97257501 -0.026186001 0.231111 0.97257501
		 -0.026186001 0.231111 0.97257501 -0.026186001 0.40307501 0.90514398 -0.13507099 0.40307501
		 0.90514398 -0.13507099 0.40307501 0.90514398 -0.13507099 0.40307501 0.90514398 -0.13507099
		 0.29357401 0.955791 0.016664 0.29357401 0.955791 0.016664 0.29357401 0.955791 0.016664
		 0.27333501 0.96134901 -0.033112999 0.27333501 0.96134901 -0.033112999 0.27333501
		 0.96134901 -0.033112999 0.379242 0.92523199 0.010992 0.379242 0.92523199 0.010992
		 0.379242 0.92523199 0.010992 0.379242 0.92523199 0.010992 0.46119699 0.862589 -0.207936
		 0.46119699 0.862589 -0.207936 0.46119699 0.862589 -0.207936 0.46119699 0.862589 -0.207936
		 0.13492499 0.98721898 0.084821999 0.13492499 0.98721898 0.084821999 0.13492499 0.98721898
		 0.084821999 0.13492499 0.98721898 0.084821999 0.38495299 0.92254502 0.026879 0.38495299
		 0.92254502 0.026879 0.38495299 0.92254502 0.026879 0.38495299 0.92254502 0.026879
		 0.264094 0.962605 -0.060382999 0.264094 0.962605 -0.060382999 0.264094 0.962605 -0.060382999
		 0.264094 0.962605 -0.060382999 0.33036301 0.94382399 -0.0075480002 0.33036301 0.94382399
		 -0.0075480002 0.33036301 0.94382399 -0.0075480002 0.33036301 0.94382399 -0.0075480002
		 0.295329 0.95502597 0.026565 0.295329 0.95502597 0.026565 0.295329 0.95502597 0.026565
		 0.295329 0.95502597 0.026565 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr -s 32 ".fc[0:31]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 -2
		mu 0 4 4 5 6 7
		f 3 10 11 12
		mu 0 3 13 15 16
		f 4 13 14 -12 15
		mu 0 4 17 18 19 20
		f 4 16 -6 17 18
		mu 0 4 21 22 23 24
		f 4 -5 19 20 -18
		mu 0 4 25 26 27 28
		f 4 -1 21 22 -20
		mu 0 4 26 29 30 27
		f 4 23 24 -22 -4
		mu 0 4 31 32 33 34
		f 4 26 -16 27 -25
		mu 0 4 32 17 20 33
		f 4 -23 -28 -11 28
		mu 0 4 27 30 15 13
		f 4 -21 -29 -10 29
		mu 0 4 28 27 13 12
		f 4 30 -19 -30 -9
		mu 0 4 9 21 24 10
		f 4 34 -33 35 36
		mu 0 4 48 49 50 51
		f 3 -36 -38 38
		mu 0 3 51 50 53
		f 3 39 -39 40
		mu 0 3 54 55 56
		f 4 -34 -13 41 42
		mu 0 4 47 13 16 57
		f 4 43 44 45 46
		mu 0 4 58 59 60 61
		f 4 47 48 -42 -15
		mu 0 4 18 62 63 19
		f 4 49 -37 -40 -46
		mu 0 4 64 65 55 54
		f 4 50 -47 -41 -43
		mu 0 4 63 66 67 47
		f 4 51 52 53 -44
		mu 0 4 58 68 69 59
		f 4 -51 -49 54 -52
		mu 0 4 66 63 70 68
		f 4 7 8 -56 -62
		mu 0 4 8 9 10 11
		f 3 9 -65 55
		mu 0 3 12 13 14
		f 4 69 67 25 56
		mu 0 4 71 72 38 35
		f 3 68 -57 61
		mu 0 3 11 73 8
		f 3 -63 31 -58
		mu 0 3 41 42 43
		f 4 62 -60 -67 32
		mu 0 4 45 40 39 44
		f 4 63 64 33 65
		mu 0 4 46 14 13 47
		f 3 37 66 -66
		mu 0 3 47 52 46
		f 4 -69 -64 59 60
		mu 0 4 73 11 39 40
		f 4 -70 -61 57 58
		mu 0 4 72 71 36 37;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;

select -ne :renderPartition;
	setAttr -cb on ".cch";
	setAttr -cb on ".ihi";
	setAttr -cb on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -cb on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -cb on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -cb on ".cch";
	setAttr -cb on ".ihi";
	setAttr -cb on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -cb on ".cch";
	setAttr -cb on ".ihi";
	setAttr -cb on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".macc";
	setAttr -k on ".macd";
	setAttr -k on ".macq";
	setAttr -cb on ".ifg";
	setAttr -k on ".clip";
	setAttr -k on ".edm";
	setAttr -k on ".edl";
	setAttr -cb on ".ren";
	setAttr -av -k on ".esr";
	setAttr -k on ".ors";
	setAttr -cb on ".sdf";
	setAttr -av -k on ".outf";
	setAttr -cb on ".imfkey";
	setAttr -k on ".gama";
	setAttr -k on ".an";
	setAttr -cb on ".ar";
	setAttr -k on ".fs" 1;
	setAttr -k on ".ef" 10;
	setAttr -av ".bfs";
	setAttr -cb on ".me";
	setAttr -cb on ".se";
	setAttr -k on ".be";
	setAttr -cb on ".ep";
	setAttr -k on ".fec";
	setAttr -k on ".ofc";
	setAttr -cb on ".ofe";
	setAttr -cb on ".efe";
	setAttr -cb on ".oft";
	setAttr -cb on ".umfn";
	setAttr -cb on ".ufe";
	setAttr -cb on ".pff";
	setAttr -cb on ".peie";
	setAttr -cb on ".ifp";
	setAttr -k on ".comp";
	setAttr -k on ".cth";
	setAttr -k on ".soll";
	setAttr -k on ".rd";
	setAttr -k on ".lp";
	setAttr -av -k on ".sp";
	setAttr -k on ".shs";
	setAttr -k on ".lpr";
	setAttr -cb on ".gv";
	setAttr -cb on ".sv";
	setAttr -k on ".mm";
	setAttr -k on ".npu";
	setAttr -k on ".itf";
	setAttr -k on ".shp";
	setAttr -cb on ".isp";
	setAttr -k on ".uf";
	setAttr -k on ".oi";
	setAttr -k on ".rut";
	setAttr -cb on ".mb";
	setAttr -av -k on ".mbf";
	setAttr -k on ".afp";
	setAttr -k on ".pfb";
	setAttr -k on ".pram";
	setAttr -k on ".poam";
	setAttr -k on ".prlm";
	setAttr -k on ".polm";
	setAttr -cb on ".prm";
	setAttr -cb on ".pom";
	setAttr -cb on ".pfrm";
	setAttr -cb on ".pfom";
	setAttr -av -k on ".bll";
	setAttr -k on ".bls";
	setAttr -k on ".smv";
	setAttr -k on ".ubc";
	setAttr -k on ".mbc";
	setAttr -cb on ".mbt";
	setAttr -k on ".udbx";
	setAttr -k on ".smc";
	setAttr -k on ".kmv";
	setAttr -cb on ".isl";
	setAttr -cb on ".ism";
	setAttr -cb on ".imb";
	setAttr -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -k on ".tlwd";
	setAttr -k on ".tlht";
	setAttr -k on ".jfc";
	setAttr -cb on ".rsb";
	setAttr -k on ".ope";
	setAttr -k on ".oppf";
	setAttr -cb on ".hbl";
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
select -ne :defaultObjectSet;
	setAttr ".ro" yes;
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr -k off ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off -cb on ".eeaa";
	setAttr -k off -cb on ".engm";
	setAttr -k off -cb on ".mes";
	setAttr -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -k off -cb on ".mbs";
	setAttr -k off -cb on ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off ".enpt";
	setAttr -k off -cb on ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".hgcd";
	setAttr -k off -cb on ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off -cb on ".twa";
	setAttr -k off -cb on ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
select -ne :defaultHardwareRenderGlobals;
	setAttr -cb on ".cch";
	setAttr -cb on ".ihi";
	setAttr -cb on ".nds";
	setAttr -cb on ".bnm";
	setAttr -cb on ".rp";
	setAttr -cb on ".cai";
	setAttr -cb on ".coi";
	setAttr -cb on ".bc";
	setAttr -av -k on ".bcb";
	setAttr -av -k on ".bcg";
	setAttr -av -k on ".bcr";
	setAttr -cb on ".ei";
	setAttr -cb on ".ex";
	setAttr -av -cb on ".es";
	setAttr -av -cb on ".ef";
	setAttr -av -cb on ".bf";
	setAttr -cb on ".fii";
	setAttr -av -cb on ".sf";
	setAttr -cb on ".gr";
	setAttr -cb on ".li";
	setAttr -cb on ".ls";
	setAttr -cb on ".mb";
	setAttr -cb on ".ti";
	setAttr -cb on ".txt";
	setAttr -cb on ".mpr";
	setAttr -cb on ".wzd";
	setAttr ".fn" -type "string" "im";
	setAttr -cb on ".if";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
	setAttr -cb on ".as";
	setAttr -cb on ".ds";
	setAttr -cb on ".lm";
	setAttr -cb on ".fir";
	setAttr -cb on ".aap";
	setAttr -cb on ".gh";
	setAttr -cb on ".sd";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "cheekSkinCageShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of asCage2.ma
