//Maya ASCII 2022 scene
//Name: SK_Forearm_Twist_01_Connection.ma
//Last modified: Wed, Nov 29, 2023 10:40:49 PM
//Codeset: 1252
requires maya "2022";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202102181415-29bfc1879c";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19045)";
fileInfo "UUID" "DF11D9AB-473B-3E91-4324-85A1ECDB503E";
createNode transform -s -n "persp";
	rename -uid "05A39161-41F7-0CEE-5351-DA9676ED988D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -35.015649782691 121.69456171863654 71.930644238695706 ;
	setAttr ".r" -type "double3" -15.338352729616961 7.8000000000013072 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "A1800190-4869-C97C-38C0-099A81831FE6";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 57.915587956567506;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -36.520650797969282 113.5981160594731 13.688341985236434 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "DC4EC1DA-498B-F88A-924B-CE8614D7BB5E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "063B4722-409A-DC09-A0EB-A8A16152D836";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "E4C378E3-4798-9E54-6D56-15BF46C52F1D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "E44D35C8-4909-4A35-9F95-F0B2B898F33F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "B7337DD7-476F-1850-68B9-C2ABB018C1A7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "D0CCF5CB-4375-EFA4-296B-4EB0BB57DC6A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode joint -n "clavicle_r";
	rename -uid "78E51628-4747-E8EE-1D99-DAA10C241D84";
	setAttr ".t" -type "double3" -1.4278726577554037 146.30099472621771 -1.7398495510539869 ;
	setAttr ".r" -type "double3" 89.802353795033582 -2.6306801154159265 8.7863691157114605 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".is" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr -cb on ".pax";
	setAttr -cb on ".pay";
	setAttr -cb on ".paz";
	setAttr ".bps" -type "matrix" 0.98722325285135615 0.15258975018048976 0.045897899401198074 0
		 -0.045885930531462164 -0.0036018072452170804 0.99894019258603772 0 0.15259334981855729 -0.98828305415221185 0.0034459348118284217 0
		 -1.4278726577554037 146.30099472621771 -1.7398495510539869 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "clavicle";
createNode joint -n "upperarm_r" -p "clavicle_r";
	rename -uid "468ECA0A-4DFF-7A41-0553-7F957CFCE7B4";
	setAttr ".t" -type "double3" -17.809625625610352 2.8716144688800682e-06 0.00043809693312368836 ;
	setAttr ".r" -type "double3" -4.3373452619178376 46.029604216550794 -4.3585186559704727 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".pa" -type "double3" -4.3373452619178376 46.029604216550794 -4.3585186559704727 ;
	setAttr -cb on ".pax";
	setAttr -cb on ".pay";
	setAttr -cb on ".paz";
	setAttr ".bps" -type "matrix" 0.57603356970190223 0.81709064454343161 -0.023413781755254978 0
		 -0.032592100702963964 0.05157849451099749 0.99813697150027814 0 0.81677602899953594 -0.57419729841194667 0.056341644883429187 0
		 -19.009882481023453 143.58299542707968 -2.5572695781666668 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "upperarm";
createNode joint -n "lowerarm_r" -p "upperarm_r";
	rename -uid "F34B8502-425F-AA64-786C-CDA890F55D7D";
	setAttr ".t" -type "double3" -27.770694732666016 5.3290705182007514e-15 -3.694822225952521e-13 ;
	setAttr ".r" -type "double3" 4.1426490015549289e-14 -3.1025899639594683e-16 -38.978821942625927 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".pa" -type "double3" 4.1426490015549289e-14 -3.1025899639594683e-16 -38.978821942625927 ;
	setAttr -cb on ".pax";
	setAttr -cb on ".pay";
	setAttr -cb on ".paz";
	setAttr ".bps" -type "matrix" 0.46829763502187433 0.60274413765845725 -0.64606255854311967 0
		 0.33700777956104777 0.55407307010428175 0.76120220014168882 0 0.81677602899953594 -0.57419729841194667 0.056341644883429187 0
		 -35.006734900983176 120.89182056854693 -1.9070525925042312 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "lowerarm";
createNode joint -n "hand_r" -p "lowerarm_r";
	rename -uid "A5A3FCD6-45F8-C319-6BEE-F38874B86BE6";
	setAttr ".t" -type "double3" -27.251010894775352 -2.9842794901924208e-13 3.836930773104541e-13 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".pa" -type "double3" -67.770758746900071 1.4734707800079794 1.8489162697849506 ;
	setAttr -cb on ".pax";
	setAttr -cb on ".pay";
	setAttr -cb on ".paz";
	setAttr ".bps" -type "matrix" 0.45776606563377165 0.6348668369067737 -0.62241009676110282 0
		 -0.64550904438380319 0.71872771411183722 0.25835740087383174 0 0.61136593196945954 0.28350409584970881 0.73882144315358966 0
		 -47.768318854961592 104.46643350645395 15.698805229060556 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "hand";
createNode joint -n "pinky_metacarpal_r" -p "hand_r";
	rename -uid "50F41919-4FA4-77C7-3BF8-B49D31CE9339";
	setAttr ".t" -type "double3" -3.3146772384644194 0.30593535304068098 -2.3912868499755948 ;
	setAttr ".r" -type "double3" -27.769049129171513 -19.527703069996932 11.850627289629637 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".pa" -type "double3" -27.769049129171513 -19.527703069996932 11.850627289629637 ;
	setAttr -cb on ".pax";
	setAttr -cb on ".pay";
	setAttr -cb on ".paz";
	setAttr ".bps" -type "matrix" 0.5016592998530004 0.81946977563333712 -0.27714118007695149 0
		 -0.86150484141930694 0.5022988513672868 -0.074197521024615964 0 0.078405070512635122 0.27598034484099071 0.95796006919879306 0
		 -50.945100964285416 101.90399945334046 16.074200470938859 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "pinky_metacarpal";
createNode joint -n "pinky_01_r" -p "pinky_metacarpal_r";
	rename -uid "CB39832C-466A-159A-4B57-C6A60B212EF1";
	setAttr ".t" -type "double3" -4.957300662994335 0.14326146245002747 0.19892024993895063 ;
	setAttr ".r" -type "double3" 10.491640062438053 0.60504264270137631 14.833680882858779 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".pa" -type "double3" 10.491640062438053 0.60504264270137631 14.833680882858779 ;
	setAttr -cb on ".pax";
	setAttr -cb on ".pay";
	setAttr -cb on ".paz";
	setAttr ".bps" -type "matrix" 0.26354050175519483 0.91778928814849969 -0.29700038130361051 0
		 -0.93037057822878999 0.32317414573263797 0.17311573786402457 0 0.25486661433158725 0.23069740806920533 0.93905362722759578 0
		 -53.539801031310624 97.968499538497355 17.628000637701767 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "pinky_01";
createNode joint -n "pinky_02_r" -p "pinky_01_r";
	rename -uid "7EE0A05F-4E65-C1B9-C6EC-E28FFBE04105";
	setAttr ".t" -type "double3" -3.8160362243652628 3.0366025399075625e-05 3.2629206550893741e-05 ;
	setAttr ".r" -type "double3" -6.0603444767151778e-15 -8.5697726976377638e-15 21.286999049243878 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".pa" -type "double3" -6.0603444767151778e-15 -8.5697726976377638e-15 21.286999049243878 ;
	setAttr -cb on ".pax";
	setAttr -cb on ".pay";
	setAttr -cb on ".paz";
	setAttr ".bps" -type "matrix" -0.092201469831038607 0.9724969364058268 -0.21388921815341028 0
		 -0.96257046384155642 -0.032068903807762728 0.26912764173978598 0 0.25486661433158725 0.23069740806920533 0.93905362722759578 0
		 -54.545501068157051 94.466199709575974 18.7614007488183 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "pinky_02";
createNode joint -n "pinky_03_r" -p "pinky_02_r";
	rename -uid "AA8FDBAD-46FF-0546-029A-CFB844C18353";
	setAttr ".t" -type "double3" -2.0399997234344482 -1.7523876515213033e-05 -3.1002964551163359e-05 ;
	setAttr ".r" -type "double3" 1.7075474146903247e-06 -4.1215002356290207e-15 4.9170000470223512 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".pa" -type "double3" 1.7075474146903247e-06 -4.1215002356290207e-15 4.9170000470223512 ;
	setAttr -cb on ".pax";
	setAttr -cb on ".pay";
	setAttr -cb on ".paz";
	setAttr ".bps" -type "matrix" -0.17436652109961176 0.96616935149040517 -0.19003447203133508 0
		 -0.95112528657900941 -0.11530606473741153 0.2864702439430109 0 0.25486664267733183 0.2306974115055942 0.93905361869011694 0
		 -54.357401128856146 92.482299637935185 19.19770086509099 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "pinky_03";
createNode joint -n "ring_metacarpal_r" -p "hand_r";
	rename -uid "0765EC27-4D58-7B51-BD90-DFAEF641E657";
	setAttr ".t" -type "double3" -3.3742079734802815 0.54299175739286909 -1.0917816162109464 ;
	setAttr ".r" -type "double3" -13.299834889366418 -11.809318654920901 -1.5945633604277318 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".pa" -type "double3" -13.299834889366418 -11.809318654920901 -1.5945633604277318 ;
	setAttr -cb on ".pax";
	setAttr -cb on ".pay";
	setAttr -cb on ".paz";
	setAttr ".bps" -type "matrix" 0.59060503119176222 0.65963271076872387 -0.46483371652116884 0
		 -0.73083333885388824 0.68147046384253285 0.038479055730619188 0 0.34215249224673849 0.31699005314701573 0.88456146098233202 0
		 -50.330900939336644 102.40499942786823 17.132600610164907 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "ring_metacarpal";
createNode joint -n "ring_01_r" -p "ring_metacarpal_r";
	rename -uid "43EA5DBB-4907-D3C8-CA94-719F075F0C07";
	setAttr ".t" -type "double3" -5.6457118988036719 0.041443493217244054 0.020674973726283241 ;
	setAttr ".r" -type "double3" 6.3958444445850962 -0.11693801365861239 29.414482479749026 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".pa" -type "double3" 6.3958444445850962 -0.11693801365861239 29.414482479749026 ;
	setAttr -cb on ".pax";
	setAttr -cb on ".pay";
	setAttr -cb on ".paz";
	setAttr ".bps" -type "matrix" 0.1562381940907763 0.90993079452602976 -0.38420772490995175 0
		 -0.88283473504289822 0.30308700144821266 0.35880510051400583 0 0.44293617746689823 0.28313286408744437 0.85067227765141928 0
		 -53.688501084163434 98.715699461407439 19.776800845943875 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "ring_01";
createNode joint -n "ring_02_r" -p "ring_01_r";
	rename -uid "B16B32C4-4A8F-9D90-2770-D5A3616C19A4";
	setAttr ".t" -type "double3" -4.9770674705505797 -2.0846833635346229e-05 -2.3612021330166044e-05 ;
	setAttr ".r" -type "double3" 1.5026400783553486e-15 -1.8632760624745455e-15 18.963999541971809 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".pa" -type "double3" 1.5026400783553486e-15 -1.8632760624745455e-15 18.963999541971809 ;
	setAttr -cb on ".pax";
	setAttr -cb on ".pay";
	setAttr -cb on ".paz";
	setAttr ".bps" -type "matrix" -0.13914028536523562 0.95903783110518037 -0.24675173656440999 0
		 -0.88569042203215231 -0.0090675124875548296 0.46418773846127703 0 0.44293617746689823 0.28313286408744437 0.85067227765141928 0
		 -54.466101171939826 94.186899499776175 21.689001049485238 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "ring_02";
createNode joint -n "ring_03_r" -p "ring_02_r";
	rename -uid "A5C73ED9-4891-8315-8850-258713ED02FD";
	setAttr ".t" -type "double3" -2.2649745941161825 5.0017570167426584e-05 -1.1221488424695281e-05 ;
	setAttr ".r" -type "double3" -4.3592736497148012e-15 3.4951362851333948e-16 9.167999748025041 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".pa" -type "double3" -4.3592736497148012e-15 3.4951362851333948e-16 9.167999748025041 ;
	setAttr -cb on ".pax";
	setAttr -cb on ".pay";
	setAttr -cb on ".paz";
	setAttr ".bps" -type "matrix" -0.27847973581370705 0.9453417871894082 -0.16964062642734767 0
		 -0.85220688769343989 -0.16175502053159249 0.49757284280865244 0 0.44293617746689823 0.28313286408744437 0.85067227765141928 0
		 -54.15100123105551 92.014699546819557 22.247901135591338 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "ring_03";
createNode joint -n "middle_metacarpal_r" -p "hand_r";
	rename -uid "71C7543D-4D9B-4986-3677-28A5FD2827EF";
	setAttr ".t" -type "double3" -3.3758001327515288 0.75400394201275844 0.18280552327632194 ;
	setAttr ".r" -type "double3" -4.2725003027381536 -0.13075114456697445 -2.3183915821069583 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".pa" -type "double3" -4.2725003027381536 -0.13075114456697445 -2.3183915821069583 ;
	setAttr -cb on ".pax";
	setAttr -cb on ".pay";
	setAttr -cb on ".paz";
	setAttr ".bps" -type "matrix" 0.48489773771235506 0.60591821332337459 -0.63066417586894019 0
		 -0.67018644861042631 0.72073617183080074 0.17717080660657972 0 0.5618935024187266 0.33675286097922269 0.75556151474378608 0
		 -49.688600895060503 102.91699959841145 18.129800455563078 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "middle_metacarpal";
createNode joint -n "middle_01_r" -p "middle_metacarpal_r";
	rename -uid "3F430507-4447-ED7B-0393-65AEB3A0CA46";
	setAttr ".t" -type "double3" -6.0983657836913849 -0.0001238507247620646 1.4303819995120648e-06 ;
	setAttr ".r" -type "double3" -3.0869278643688587e-16 -5.3245659864761167e-16 31.572682017398183 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".pa" -type "double3" -3.0869278643688587e-16 -5.3245659864761167e-16 31.572682017398183 ;
	setAttr -cb on ".pax";
	setAttr -cb on ".pay";
	setAttr -cb on ".paz";
	setAttr ".bps" -type "matrix" 0.062225503881315702 0.89359104695678471 -0.44454811602951788 0
		 -0.82486585491601716 0.29680389387773443 0.48114838664665793 0 0.5618935024187266 0.33675286097922269 0.75556151474378608 0
		 -52.645600860515152 99.221799916552754 21.975800424690934 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "middle_01";
createNode joint -n "middle_02_r" -p "middle_01_r";
	rename -uid "D3CC3F28-456B-977F-FA72-DA869E7F0FB3";
	setAttr ".t" -type "double3" -5.1689915657043599 -7.7438584412448108e-05 -3.7045669156299255e-05 ;
	setAttr ".r" -type "double3" -1.8411522977125159e-15 -6.730716361443601e-16 20.769210477739527 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".pa" -type "double3" -1.8411522977125159e-15 -6.730716361443601e-16 20.769210477739527 ;
	setAttr -cb on ".pax";
	setAttr -cb on ".pay";
	setAttr -cb on ".paz";
	setAttr ".bps" -type "matrix" -0.23431932550949897 0.94077026842290601 -0.24504235500065424 0
		 -0.79332852314308533 -0.039354957423448911 0.607520404343598 0 0.5618935024187266 0.33675286097922269 0.75556151474378608 0
		 -52.967200904526031 94.602799872335737 24.273600637265417 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "middle_02";
createNode joint -n "middle_03_r" -p "middle_02_r";
	rename -uid "071024B3-42C0-686A-CFEF-D3851A6FDF5F";
	setAttr ".t" -type "double3" -2.4740469455718994 4.5777305764715948e-05 3.4385015165838695e-05 ;
	setAttr ".r" -type "double3" -2.7377447962920446e-15 6.3860961805007489e-16 9.9999999709533913 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".pa" -type "double3" -2.7377447962920446e-15 6.3860961805007489e-16 9.9999999709533913 ;
	setAttr -cb on ".pax";
	setAttr -cb on ".pay";
	setAttr -cb on ".paz";
	setAttr ".bps" -type "matrix" -0.36851954040189261 0.91964393760997898 -0.13582480023615223 0
		 -0.74058695659699092 -0.20212010943872263 0.6408419626389058 0 0.5618935024187266 0.33675286097922269 0.75556151474378608 0
		 -52.38750088868656 92.275299840947497 24.879900717831983 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "middle_03";
createNode joint -n "index_metacarpal_r" -p "hand_r";
	rename -uid "3EBB881D-4115-DF58-62D5-0183D7A887F3";
	setAttr ".t" -type "double3" -3.4445140361786386 0.38516682386395473 2.3793087005615075 ;
	setAttr ".r" -type "double3" 3.2877464546581607 7.3255016683865071 -0.60616237917613147 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".pa" -type "double3" 3.2877464546581607 7.3255016683865071 -0.60616237917613147 ;
	setAttr -cb on ".pax";
	setAttr -cb on ".pay";
	setAttr -cb on ".paz";
	setAttr ".bps" -type "matrix" 0.38282471693548492 0.58595958989830976 -0.7142104697562689 0
		 -0.60140250134155437 0.74492304281562705 0.28879870439880551 0 0.70125620673430533 0.31896868073293916 0.6375725160545278 0
		 -48.139100880562324 103.23099960839173 19.700100530986546 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "index_metacarpal";
createNode joint -n "index_01_r" -p "index_metacarpal_r";
	rename -uid "90F19CE7-4E49-2A61-3403-C4AB8BAF6489";
	setAttr ".t" -type "double3" -5.877205371856725 -0.043412361294045354 -0.24095164239405165 ;
	setAttr ".r" -type "double3" -2.4636973333369483e-16 -2.0804620059110049e-15 23.372999646513914 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".pa" -type "double3" -2.4636973333369483e-16 -2.0804620059110049e-15 23.372999646513914 ;
	setAttr -cb on ".pax";
	setAttr -cb on ".pay";
	setAttr -cb on ".paz";
	setAttr ".bps" -type "matrix" 0.11282515359989781 0.83339914156584205 -0.54103267512459596 0
		 -0.70392486618372274 0.45133673853211342 0.54843863031283846 0 0.70125620673430533 0.31896868073293916 0.6375725160545278 0
		 -50.531900895495355 99.677999863184581 23.731500561889145 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "index_01";
createNode joint -n "index_02_r" -p "index_01_r";
	rename -uid "953FBD7D-4D29-DB49-09A0-8FAFE7DBA862";
	setAttr ".t" -type "double3" -4.0799326896667125 5.0402059201815064e-06 3.2106661800312963e-05 ;
	setAttr ".r" -type "double3" -1.45704340579931e-15 -4.1099205545230905e-16 14.892568419111024 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".pa" -type "double3" -1.45704340579931e-15 -4.1099205545230905e-16 14.892568419111024 ;
	setAttr -cb on ".pax";
	setAttr -cb on ".pay";
	setAttr -cb on ".paz";
	setAttr ".bps" -type "matrix" -0.071878640927212384 0.92140168606377115 -0.38190626323391952 0
		 -0.70927652822793263 0.22198629153694888 0.66906568651710341 0 0.70125620673430533 0.31896868073293916 0.6375725160545278 0
		 -50.992200960814657 96.277799977819583 25.938900693876594 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "index_02";
createNode joint -n "index_03_r" -p "index_02_r";
	rename -uid "D0E799F8-4E7A-F454-86D6-6AA3D04098CE";
	setAttr ".t" -type "double3" -2.5950763225555562 3.9602186006959528e-05 -3.5606819874800522e-06 ;
	setAttr ".r" -type "double3" 1.8217392288936076e-15 2.0017599210063225e-16 12.516400997546956 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".pa" -type "double3" 1.8217392288936076e-15 2.0017599210063225e-16 12.516400997546956 ;
	setAttr -cb on ".pax";
	setAttr -cb on ".pay";
	setAttr -cb on ".paz";
	setAttr ".bps" -type "matrix" -0.22388412433854574 0.94761232662282502 -0.22783058903851869 0
		 -0.67684239774542432 0.0170252501880028 0.73593104939950749 0 0.70125620673430533 0.31896868073293916 0.6375725160545278 0
		 -50.805700987498319 93.886699934149092 26.930000821301402 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "index_03";
createNode joint -n "thumb_01_r" -p "hand_r";
	rename -uid "F4BD3018-4A8F-AAC0-D23A-66AD00079B73";
	setAttr ".t" -type "double3" -1.9928325414658161 -1.3566571474075602 2.5813255310058452 ;
	setAttr ".r" -type "double3" 73.56446390775001 39.904178427023126 20.508675504416527 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".pa" -type "double3" 73.56446390775001 39.904178427023126 20.508675504416527 ;
	setAttr -cb on ".pax";
	setAttr -cb on ".pay";
	setAttr -cb on ".paz";
	setAttr ".bps" -type "matrix" -0.23677732944738344 0.46744570505413824 -0.85172237794143046 0
		 0.35804510679136858 0.85693276787520045 0.37076937959398021 0 0.9031833688473907 -0.21716524622551209 -0.37026889967872034 0
		 -46.226701019175891 102.95799948474053 18.495800563608789 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "thumb_01";
createNode joint -n "thumb_02_r" -p "thumb_01_r";
	rename -uid "5EB6317A-4A71-C00F-081C-0CA2D3D7B7B7";
	setAttr ".t" -type "double3" -4.377824783325174 0.00042712956201285124 -0.00013574546028394252 ;
	setAttr ".r" -type "double3" 3.5306280002014727 -1.9322904957701381 23.246005781061289 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".pa" -type "double3" 3.5306280002014727 -1.9322904957701381 23.246005781061289 ;
	setAttr -cb on ".pax";
	setAttr -cb on ".pay";
	setAttr -cb on ".paz";
	setAttr ".bps" -type "matrix" -0.045744984989113079 0.75995290887936295 -0.64836638764986942 0
		 0.47737462528905389 0.58677024940003664 0.65407502746179935 0 0.87750832672885803 -0.27959300904138018 -0.3896240313644756 0
		 -45.190101029584071 100.91199959280974 22.224700527158362 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "thumb_02";
createNode joint -n "thumb_03_r" -p "thumb_02_r";
	rename -uid "F3AC93AE-4A23-6AFA-3238-26971194EA04";
	setAttr ".t" -type "double3" -3.0859522819518972 -1.4851160784701278e-05 4.5825581793224046e-05 ;
	setAttr ".r" -type "double3" -3.0714124891118437e-14 -2.1019180951131798e-15 9.9999999709533878 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".pa" -type "double3" -3.0714124891118437e-14 -2.1019180951131798e-15 9.9999999709533878 ;
	setAttr -cb on ".pax";
	setAttr -cb on ".pay";
	setAttr -cb on ".paz";
	setAttr ".bps" -type "matrix" 0.037845217624812556 0.8502991008800147 -0.52493730915755032 0
		 0.47806576537590451 0.44589145353754561 0.75672579950582153 0 0.87750832672885803 -0.27959300904138018 -0.3896240313644756 0
		 -45.048901066006778 98.566799652745857 24.22550069214607 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "thumb_03";
createNode joint -n "wrist_r" -p "lowerarm_r";
	rename -uid "571F4152-4C2E-4C88-1C8B-01909941F13F";
	setAttr ".wfcc" -type "float3" 0 0.75 1 ;
	setAttr ".uoc" 2;
	setAttr ".r" -type "double3" -67.770758746900071 5.9635400277440939e-16 -2.1120870931593667e-16 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".pa" -type "double3" -67.770758746900071 5.9635400277440939e-16 -2.1120870931593667e-16 ;
	setAttr -cb on ".pax";
	setAttr -cb on ".pay";
	setAttr -cb on ".paz";
	setAttr ".bps" -type "matrix" 0.46829763502187433 0.60274413765845725 -0.64606255854311967 0
		 -0.62857678729848498 0.74113478501575591 0.23581868651394861 0 0.62095776627918409 0.29566659425442671 0.725942640667673 0
		 -47.768318854961585 104.46643350645394 15.698805229060556 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist";
	setAttr ".radi" 3;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 0.75 1 ;
createNode pointConstraint -n "wrist_r_pointConstraint1" -p "wrist_r";
	rename -uid "A7C8F55B-44BB-0FDB-A837-E1810F95C90C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hand_rW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 0.75 1 ;
	setAttr ".uoc" 2;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -27.251010894775327 -2.8421709430404007e-13 3.836930773104541e-13 ;
	setAttr -k on ".w0";
createNode joint -n "wrist_end_r" -p "wrist_r";
	rename -uid "CCB12161-4D2C-6699-DF48-B9A73E18805D";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr ".t" -type "double3" 0 5 0 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr -cb on ".pax";
	setAttr -cb on ".pay";
	setAttr -cb on ".paz";
	setAttr ".bps" -type "matrix" 0.46829763502187433 0.60274413765845725 -0.64606255854311967 0
		 -0.62857678729848498 0.74113478501575591 0.23581868651394861 0 0.62095776627918409 0.29566659425442671 0.725942640667673 0
		 -50.911202791454009 108.17210743153272 16.877898661630297 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "wrist_end";
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 0 0 ;
createNode joint -n "forearm_twist_01_r" -p "lowerarm_r";
	rename -uid "ACFAD6A5-44FA-EF43-3E57-C59E7C13AB53";
	setAttr ".wfcc" -type "float3" 0.75 1 0.25 ;
	setAttr ".uoc" 2;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".pa" -type "double3" -50.828069060175046 -7.2131323953542166e-16 -1.518122329510604e-15 ;
	setAttr -cb on ".pax";
	setAttr -cb on ".pay";
	setAttr -cb on ".paz";
	setAttr ".bps" -type "matrix" 0.46829763502187433 0.60274413765845725 -0.64606255854311967 0
		 -0.4203380806575816 0.79512879083683741 0.43713396565749596 0 0.77718287615079307 0.06685589353760274 0.625713246237659 0
		 -44.577922866466999 108.57278027197719 11.297340773669349 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "forearm_twist_01";
	setAttr ".radi" 3;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0.75 1 0.25 ;
createNode pointConstraint -n "forearm_twist_01_r_pointConstraint1" -p "forearm_twist_01_r";
	rename -uid "58B9DA4F-4DD7-2B1F-8EEC-0E90FC6D08DC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "lowerarm_rW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "hand_rW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0.75 1 0.25 ;
	setAttr ".uoc" 2;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" -13.625505447387653 -1.2789769243681803e-13 1.9895196601282805e-13 ;
	setAttr -k on ".w0" 0.25;
	setAttr -k on ".w1" 0.75;
createNode joint -n "forearm_twist_01_end_r" -p "forearm_twist_01_r";
	rename -uid "37418658-4C80-6723-9F0C-1A9768E7D6CF";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr ".t" -type "double3" 0 5 0 ;
	setAttr ".r" -type "double3" 0 -2.4848083448933734e-15 8.6471330402289385e-15 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".pa" -type "double3" 0 -2.4848083448933734e-15 8.6471330402289385e-15 ;
	setAttr -cb on ".pax";
	setAttr -cb on ".pay";
	setAttr -cb on ".paz";
	setAttr ".bps" -type "matrix" 0.46829763502187433 0.60274413765845725 -0.64606255854311967 0
		 -0.4203380806575816 0.79512879083683741 0.43713396565749596 0 0.77718287615079307 0.06685589353760274 0.625713246237659 0
		 -46.67961326975491 112.54842422616139 13.483010601956829 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "forearm_twist_01_end";
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 0 0 ;
createNode orientConstraint -n "forearm_twist_01_r_orientConstraint1" -p "forearm_twist_01_r";
	rename -uid "228E50DA-4264-5389-E02B-B4B04B901D68";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "lowerarm_rW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "wrist_rW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" -50.828069060175054 -7.2131323953542195e-16 -1.5181223295106042e-15 ;
	setAttr ".rsrr" -type "double3" -33.885379373450036 -1.9378309704401836e-15 -6.3611093629270335e-15 ;
	setAttr ".int" 2;
	setAttr -k on ".w0" 0.25;
	setAttr -k on ".w1" 0.75;
createNode joint -n "forearm_twist_02_r" -p "lowerarm_r";
	rename -uid "BFF1B952-44AC-4ADF-D523-BFB2226F577E";
	setAttr ".wfcc" -type "float3" 0.75 1 0.25 ;
	setAttr ".uoc" 2;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".pa" -type "double3" -33.885379373450036 -9.689154852200918e-16 -3.1805546814635168e-15 ;
	setAttr -cb on ".pax";
	setAttr -cb on ".pay";
	setAttr -cb on ".paz";
	setAttr ".bps" -type "matrix" 0.46829763502187433 0.60274413765845725 -0.64606255854311967 0
		 -0.17561127404569621 0.78010040695562788 0.60050315194485959 0 0.86594341931847141 -0.1677583368599796 0.47116784159469866 0
		 -41.387526877972391 112.67912703750044 6.89587631827815 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "forearm_twist_02";
	setAttr ".radi" 3;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0.75 1 0.25 ;
createNode pointConstraint -n "forearm_twist_02_r_pointConstraint1" -p "forearm_twist_02_r";
	rename -uid "F333D93B-4C04-1FB8-2751-BC8D1A002EE4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "lowerarm_rW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "hand_rW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0.75 1 0.25 ;
	setAttr ".uoc" 2;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" -13.625505447387653 -1.2789769243681803e-13 1.9895196601282805e-13 ;
	setAttr -k on ".w0" 0.5;
	setAttr -k on ".w1" 0.5;
createNode joint -n "forearm_twist_02_end_r" -p "forearm_twist_02_r";
	rename -uid "71883A8C-4FA2-CAE2-D3DA-248EEC9B547F";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr ".t" -type "double3" 0 5 0 ;
	setAttr ".r" -type "double3" -1.8750480855974803e-31 -2.4848083448933734e-15 8.6471330402289385e-15 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".pa" -type "double3" -1.8750480855974803e-31 -2.4848083448933734e-15 8.6471330402289385e-15 ;
	setAttr -cb on ".pax";
	setAttr -cb on ".pay";
	setAttr -cb on ".paz";
	setAttr ".bps" -type "matrix" 0.46829763502187433 0.60274413765845725 -0.64606255854311967 0
		 -0.17561127404569621 0.78010040695562788 0.60050315194485959 0 0.86594341931847141 -0.1677583368599796 0.47116784159469866 0
		 -42.265583248200869 116.57962907227858 9.8983920780024484 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "forearm_twist_02_end";
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 0 0 ;
createNode orientConstraint -n "forearm_twist_02_r_orientConstraint1" -p "forearm_twist_02_r";
	rename -uid "4EC225E1-4D49-F8C2-0EF5-358B684B6D57";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "lowerarm_rW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "wrist_rW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" -33.885379373450036 -9.689154852200918e-16 -3.1805546814635168e-15 ;
	setAttr ".rsrr" -type "double3" -33.885379373450036 -1.9378309704401836e-15 -6.3611093629270335e-15 ;
	setAttr ".int" 2;
	setAttr -k on ".w0" 0.5;
	setAttr -k on ".w1" 0.5;
createNode joint -n "forearm_twist_03_r" -p "lowerarm_r";
	rename -uid "827C7EB5-4016-2445-0423-B9805FA6723F";
	setAttr ".wfcc" -type "float3" 0.75 1 0.25 ;
	setAttr ".uoc" 2;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".pa" -type "double3" -16.942689686725018 -7.2131323953542195e-16 -4.8429870334164311e-15 ;
	setAttr -cb on ".pax";
	setAttr -cb on ".pay";
	setAttr -cb on ".paz";
	setAttr ".bps" -type "matrix" 0.46829763502187433 0.60274413765845725 -0.64606255854311967 0
		 0.084359741973499131 0.69735419557739287 0.71174472941130507 0 0.87953439896747831 -0.3878100442600344 0.2757219806325682 0
		 -38.197130889477762 116.78547380302368 2.4944118628869609 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "forearm_twist_03";
	setAttr ".radi" 3;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0.75 1 0.25 ;
createNode pointConstraint -n "forearm_twist_03_r_pointConstraint1" -p "forearm_twist_03_r";
	rename -uid "0D4686D0-4424-CF70-20B5-09A3344B41B1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "lowerarm_rW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "hand_rW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0.75 1 0.25 ;
	setAttr ".uoc" 2;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" -13.625505447387653 -1.2789769243681803e-13 1.9895196601282805e-13 ;
	setAttr -k on ".w0" 0.75;
	setAttr -k on ".w1" 0.25;
createNode joint -n "forearm_twist_03_end_r" -p "forearm_twist_03_r";
	rename -uid "E7906372-4F15-CADC-CFD6-56A1175194A4";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr ".t" -type "double3" 0 5 0 ;
	setAttr ".r" -type "double3" -1.8750480855974803e-31 -2.4848083448933734e-15 8.6471330402289385e-15 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".pa" -type "double3" -1.8750480855974803e-31 -2.4848083448933734e-15 8.6471330402289385e-15 ;
	setAttr -cb on ".pax";
	setAttr -cb on ".pay";
	setAttr -cb on ".paz";
	setAttr ".bps" -type "matrix" 0.46829763502187433 0.60274413765845725 -0.64606255854311967 0
		 0.084359741973499131 0.69735419557739287 0.71174472941130507 0 0.87953439896747831 -0.3878100442600344 0.2757219806325682 0
		 -37.775332179610267 120.27224478091064 6.0531355099434858 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "forearm_twist_03_end";
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 0 0 ;
createNode orientConstraint -n "forearm_twist_03_r_orientConstraint1" -p "forearm_twist_03_r";
	rename -uid "58E13F3F-4379-4402-52D4-1B8A798E3A0C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "lowerarm_rW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "wrist_rW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" -16.942689686725018 -7.2131323953542166e-16 -4.8429870334164288e-15 ;
	setAttr ".rsrr" -type "double3" -33.885379373450036 -1.9378309704401836e-15 -6.3611093629270335e-15 ;
	setAttr ".int" 2;
	setAttr -k on ".w0" 0.75;
	setAttr -k on ".w1" 0.25;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "E1FAC55B-4EBC-D173-276E-FB8D9AA1473A";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "A1F1EAC4-4AA9-C2C4-326A-96B33A2A4026";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "38453E41-49C3-3114-59EC-A2ABE5F86D02";
createNode displayLayerManager -n "layerManager";
	rename -uid "8F94BF6D-47BC-6413-D8BE-669D2BBFCD37";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "E03709BD-4419-2900-8FCD-C88463599C20";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "0E35F14D-4C74-0218-8390-2D92C05302B2";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "E2BFFE5F-4C86-7FA8-C3FC-F9A8E1076993";
	setAttr ".g" yes;
createNode displayLayer -n "_joints";
	rename -uid "B2DB73F6-47B0-B311-398C-CC9F7ED80DAB";
	setAttr ".do" 1;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "D60790E8-48E6-4A6B-9C42-75A2E570803C";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 880\n            -height 718\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 1\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n"
		+ "            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n"
		+ "            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n"
		+ "            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n"
		+ "            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n"
		+ "                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 0\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n"
		+ "                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 0\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n"
		+ "                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n"
		+ "\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 880\\n    -height 718\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 880\\n    -height 718\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "9AF46CF2-4DE4-3075-1DEE-75A97EC0DF85";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 150 -ast 0 -aet 150 ";
	setAttr ".st" 6;
createNode animCurveTA -n "hand_r_rotateX";
	rename -uid "C6166742-4B47-B21F-5C49-A1BFAD3392F3";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -67.770758746900071 25 22.229241000000005
		 75 -157.77075899999997 100 -67.770758746900071 125 3.8897152061256475 150 -67.770758746900071;
createNode animCurveTA -n "hand_r_rotateY";
	rename -uid "425FB665-4C1C-6984-1707-E29AC64E6914";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  100 1.4734707800079794 125 67.724447604652767
		 150 1.4734707800079736;
createNode animCurveTA -n "hand_r_rotateZ";
	rename -uid "B2C60081-4219-D8B7-94E5-208E389CE95F";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  100 1.8489162697849506 125 95.449142173315394
		 150 1.8489162697849537;
createNode dagPose -n "bindPose1";
	rename -uid "DF607F22-40C0-1EEC-8709-1AAAD2D85FAA";
	setAttr -s 38 ".wm";
	setAttr ".wm[24]" -type "matrix" 0.46829763502187433 0.60274413765845725 -0.64606255854311967 0
		 -0.62857678729848498 0.74113478501575591 0.23581868651394861 0 0.62095776627918409 0.29566659425442671 0.725942640667673 0
		 -47.768318854961585 104.46643350645394 15.698805229060556 1;
	setAttr ".wm[27]" -type "matrix" 0.46829763502187433 0.60274413765845725 -0.64606255854311967 0
		 -0.4203380806575816 0.79512879083683741 0.43713396565749596 0 0.77718287615079307 0.06685589353760274 0.625713246237659 0
		 -44.577922866466999 108.57278027197719 11.297340773669349 1;
	setAttr ".wm[29]" -type "matrix" 0.46829763502187433 0.60274413765845725 -0.64606255854311967 0
		 -0.4203380806575816 0.79512879083683741 0.43713396565749596 0 0.77718287615079307 0.06685589353760274 0.625713246237659 0
		 -44.577922866466999 108.57278027197719 11.297340773669349 1;
	setAttr ".wm[31]" -type "matrix" 0.46829763502187433 0.60274413765845725 -0.64606255854311967 0
		 -0.17561127404569621 0.78010040695562788 0.60050315194485959 0 0.86594341931847141 -0.1677583368599796 0.47116784159469866 0
		 -41.387526877972391 112.67912703750044 6.89587631827815 1;
	setAttr ".wm[33]" -type "matrix" 0.46829763502187433 0.60274413765845725 -0.64606255854311967 0
		 -0.17561127404569621 0.78010040695562788 0.60050315194485959 0 0.86594341931847141 -0.1677583368599796 0.47116784159469866 0
		 -41.387526877972391 112.67912703750044 6.89587631827815 1;
	setAttr ".wm[35]" -type "matrix" 0.46829763502187433 0.60274413765845725 -0.64606255854311967 0
		 0.084359741973499131 0.69735419557739287 0.71174472941130507 0 0.87953439896747831 -0.3878100442600344 0.2757219806325682 0
		 -38.197130889477762 116.78547380302368 2.4944118628869609 1;
	setAttr ".wm[37]" -type "matrix" 0.46829763502187433 0.60274413765845725 -0.64606255854311967 0
		 0.084359741973499131 0.69735419557739287 0.71174472941130507 0 0.87953439896747831 -0.3878100442600344 0.2757219806325682 0
		 -38.197130889477762 116.78547380302368 2.4944118628869609 1;
	setAttr -s 38 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 1.5673467497641611 -0.045914029580752358
		 0.15335107036470763 0 -1.4278726577554037 146.30099472621771 -1.7398495510539869 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999978 0.99999999999999978
		 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 -0.075700955616242085 0.80336814696867631
		 -0.076070501056282755 0 -17.809625625610352 2.8716144688800682e-06 0.00043809693312368836 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 7.23028648315892e-16 -5.4150410210424926e-18
		 -0.68030878144743467 0 -27.770694732666016 5.3290705182007514e-15 -3.694822225952521e-13 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -1.1828228767081526 0.025716916543068274
		 0.032269676501439137 0 -27.251010894775352 -2.9842794901924208e-13 3.836930773104541e-13 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -0.48466133745210704 -0.3408227139232512
		 0.20683246463072882 0 -3.3146772384644194 0.30593535304068098 -2.3912868499755948 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0.18311366302368748 0.010559986230106655
		 0.25889657159602497 0 -4.957300662994335 0.14326146245002747 0.19892024993895063 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -1.0577296492373268e-16 -1.4957074972129546e-16
		 0.37152822127820823 0 -3.8160362243652628 3.0366025399075625e-05 3.2629206550893741e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 2.9802324520263156e-08 -7.193374923344852e-17
		 0.085817840141256027 0 -2.0399997234344482 -1.7523876515213033e-05 -3.1002964551163359e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 -0.23212590879105977 -0.20611149294555778
		 -0.027830380771128975 0 -3.3742079734802815 0.54299175739286909 -1.0917816162109464 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0.11162854400339792 -0.0020409533590848867
		 0.51337956704180676 0 -5.6457118988036719 0.041443493217244054 0.020674973726283241 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 2.6226016839726413e-17 -3.252030216377638e-17
		 0.33098423135410465 0 -4.9770674705505797 -2.0846833635346229e-05 -2.3612021330166044e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 -7.6083678182953246e-17 6.1001635981501064e-18
		 0.16001178142504746 0 -2.2649745941161825 5.0017570167426584e-05 -1.1221488424695281e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 -0.07456919757523528 -0.0022820379734447998
		 -0.040463566458286873 0 -3.3758001327515288 0.75400394201275844 0.18280552327632194 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 -5.3877055004793523e-18 -9.2931207703708096e-18
		 0.55104725488880391 0 -6.0983657836913849 -0.0001238507247620646 1.4303819995120648e-06 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 -3.2134169625742266e-17 -1.1747316152504355e-17
		 0.36249110587625921 0 -5.1689915657043599 -7.7438584412448108e-05 -3.7045669156299255e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 -4.7782660774637625e-17 1.1145840469877216e-17
		 0.174532924692474 0 -2.4740469455718994 4.5777305764715948e-05 3.4385015165838695e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0.057382000604555367 0.12785412347368236
		 -0.010579529318345807 0 -3.4445140361786386 0.38516682386395473 2.3793087005615075 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 -4.2999630239334003e-18 -3.6310911965792763e-17
		 0.40793579989913858 0 -5.877205371856725 -0.043412361294045354 -0.24095164239405165 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 -2.5430204775669801e-17 -7.1731645671819054e-18
		 0.25992435299201416 0 -4.0799326896667125 5.0402059201815064e-06 3.2106661800312963e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 3.1795347656936068e-17 3.4937301456021929e-18
		 0.21845240790709708 0 -2.5950763225555562 3.9602186006959528e-05 -3.5606819874800522e-06 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 1.2839421076547717 0.69645929885484537
		 0.35794391277517723 0 -1.9928325414658161 -1.3566571474075602 2.5813255310058452 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0.06162108326661872 -0.033724831256182475
		 0.40571933881715561 0 -4.377824783325174 0.00042712956201285124 -0.00013574546028394252 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 -5.360626062187616e-16 -3.6685391366972322e-17
		 0.17453292469247395 0 -3.0859522819518972 -1.4851160784701278e-05 4.5825581793224046e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 -1.1828228767081526 1.0408340855860843e-17
		 -3.6862873864507151e-18 0 -27.251010894775355 -3.0553337637684308e-13 3.979039320256561e-13 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 5 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 -0.88711715753111442 -1.2589290968119642e-17
		 -2.649623309800631e-17 0 -20.438258171081522 -2.4158453015843406e-13 2.8421709430404007e-13 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 0 -4.3368086899420184e-17 1.5092094240998227e-16 0 0
		 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 -0.59141143835407628 -1.6910765390649055e-17
		 -5.5511151231257827e-17 0 -13.625505447387674 -1.6342482922482304e-13 1.8474111129762605e-13 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 -3.2725762726892498e-33 -4.3368086899420184e-17
		 1.5092094240998227e-16 0 0 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 -0.2957057191770382 -1.2589290968119647e-17
		 -8.4526069364509365e-17 0 -6.8127527236938334 -7.815970093361102e-14 1.1368683772161603e-13 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 1 -3.2725762726892498e-33 -4.3368086899420184e-17
		 1.5092094240998227e-16 0 0 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 38 ".m";
	setAttr -s 38 ".p";
	setAttr ".bp" yes;
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".mcfr" 30;
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya-legacy/config.ocio";
	setAttr ".vtn" -type "string" "sRGB gamma (legacy)";
	setAttr ".vn" -type "string" "sRGB gamma";
	setAttr ".dn" -type "string" "legacy";
	setAttr ".wsn" -type "string" "scene-linear Rec 709/sRGB";
	setAttr ".ovt" no;
	setAttr ".povt" no;
	setAttr ".otn" -type "string" "sRGB gamma (legacy)";
	setAttr ".potn" -type "string" "sRGB gamma (legacy)";
select -ne :hardwareRenderGlobals;
	setAttr ".hwfr" 30;
connectAttr "_joints.di" "clavicle_r.do";
connectAttr "clavicle_r.s" "upperarm_r.is";
connectAttr "_joints.di" "upperarm_r.do";
connectAttr "upperarm_r.s" "lowerarm_r.is";
connectAttr "_joints.di" "lowerarm_r.do";
connectAttr "lowerarm_r.s" "hand_r.is";
connectAttr "hand_r_rotateX.o" "hand_r.rx";
connectAttr "hand_r_rotateY.o" "hand_r.ry";
connectAttr "hand_r_rotateZ.o" "hand_r.rz";
connectAttr "_joints.di" "hand_r.do";
connectAttr "hand_r.s" "pinky_metacarpal_r.is";
connectAttr "_joints.di" "pinky_metacarpal_r.do";
connectAttr "pinky_metacarpal_r.s" "pinky_01_r.is";
connectAttr "_joints.di" "pinky_01_r.do";
connectAttr "pinky_01_r.s" "pinky_02_r.is";
connectAttr "_joints.di" "pinky_02_r.do";
connectAttr "pinky_02_r.s" "pinky_03_r.is";
connectAttr "_joints.di" "pinky_03_r.do";
connectAttr "hand_r.s" "ring_metacarpal_r.is";
connectAttr "_joints.di" "ring_metacarpal_r.do";
connectAttr "ring_metacarpal_r.s" "ring_01_r.is";
connectAttr "_joints.di" "ring_01_r.do";
connectAttr "ring_01_r.s" "ring_02_r.is";
connectAttr "_joints.di" "ring_02_r.do";
connectAttr "ring_02_r.s" "ring_03_r.is";
connectAttr "_joints.di" "ring_03_r.do";
connectAttr "hand_r.s" "middle_metacarpal_r.is";
connectAttr "_joints.di" "middle_metacarpal_r.do";
connectAttr "middle_metacarpal_r.s" "middle_01_r.is";
connectAttr "_joints.di" "middle_01_r.do";
connectAttr "middle_01_r.s" "middle_02_r.is";
connectAttr "_joints.di" "middle_02_r.do";
connectAttr "middle_02_r.s" "middle_03_r.is";
connectAttr "_joints.di" "middle_03_r.do";
connectAttr "hand_r.s" "index_metacarpal_r.is";
connectAttr "_joints.di" "index_metacarpal_r.do";
connectAttr "index_metacarpal_r.s" "index_01_r.is";
connectAttr "_joints.di" "index_01_r.do";
connectAttr "index_01_r.s" "index_02_r.is";
connectAttr "_joints.di" "index_02_r.do";
connectAttr "index_02_r.s" "index_03_r.is";
connectAttr "_joints.di" "index_03_r.do";
connectAttr "hand_r.s" "thumb_01_r.is";
connectAttr "_joints.di" "thumb_01_r.do";
connectAttr "thumb_01_r.s" "thumb_02_r.is";
connectAttr "_joints.di" "thumb_02_r.do";
connectAttr "thumb_02_r.s" "thumb_03_r.is";
connectAttr "_joints.di" "thumb_03_r.do";
connectAttr "lowerarm_r.s" "wrist_r.is";
connectAttr "_joints.di" "wrist_r.do";
connectAttr "wrist_r_pointConstraint1.ctx" "wrist_r.tx";
connectAttr "wrist_r_pointConstraint1.cty" "wrist_r.ty";
connectAttr "wrist_r_pointConstraint1.ctz" "wrist_r.tz";
connectAttr "hand_r.rx" "wrist_r.rx";
connectAttr "wrist_r.pim" "wrist_r_pointConstraint1.cpim";
connectAttr "wrist_r.rp" "wrist_r_pointConstraint1.crp";
connectAttr "wrist_r.rpt" "wrist_r_pointConstraint1.crt";
connectAttr "hand_r.t" "wrist_r_pointConstraint1.tg[0].tt";
connectAttr "hand_r.rp" "wrist_r_pointConstraint1.tg[0].trp";
connectAttr "hand_r.rpt" "wrist_r_pointConstraint1.tg[0].trt";
connectAttr "hand_r.pm" "wrist_r_pointConstraint1.tg[0].tpm";
connectAttr "wrist_r_pointConstraint1.w0" "wrist_r_pointConstraint1.tg[0].tw";
connectAttr "wrist_r.s" "wrist_end_r.is";
connectAttr "_joints.di" "wrist_end_r.do";
connectAttr "lowerarm_r.s" "forearm_twist_01_r.is";
connectAttr "_joints.di" "forearm_twist_01_r.do";
connectAttr "forearm_twist_01_r_pointConstraint1.ctx" "forearm_twist_01_r.tx";
connectAttr "forearm_twist_01_r_pointConstraint1.cty" "forearm_twist_01_r.ty";
connectAttr "forearm_twist_01_r_pointConstraint1.ctz" "forearm_twist_01_r.tz";
connectAttr "forearm_twist_01_r_orientConstraint1.crx" "forearm_twist_01_r.rx";
connectAttr "forearm_twist_01_r_orientConstraint1.cry" "forearm_twist_01_r.ry";
connectAttr "forearm_twist_01_r_orientConstraint1.crz" "forearm_twist_01_r.rz";
connectAttr "forearm_twist_01_r.pim" "forearm_twist_01_r_pointConstraint1.cpim";
connectAttr "forearm_twist_01_r.rp" "forearm_twist_01_r_pointConstraint1.crp";
connectAttr "forearm_twist_01_r.rpt" "forearm_twist_01_r_pointConstraint1.crt";
connectAttr "lowerarm_r.t" "forearm_twist_01_r_pointConstraint1.tg[0].tt";
connectAttr "lowerarm_r.rp" "forearm_twist_01_r_pointConstraint1.tg[0].trp";
connectAttr "lowerarm_r.rpt" "forearm_twist_01_r_pointConstraint1.tg[0].trt";
connectAttr "lowerarm_r.pm" "forearm_twist_01_r_pointConstraint1.tg[0].tpm";
connectAttr "forearm_twist_01_r_pointConstraint1.w0" "forearm_twist_01_r_pointConstraint1.tg[0].tw"
		;
connectAttr "hand_r.t" "forearm_twist_01_r_pointConstraint1.tg[1].tt";
connectAttr "hand_r.rp" "forearm_twist_01_r_pointConstraint1.tg[1].trp";
connectAttr "hand_r.rpt" "forearm_twist_01_r_pointConstraint1.tg[1].trt";
connectAttr "hand_r.pm" "forearm_twist_01_r_pointConstraint1.tg[1].tpm";
connectAttr "forearm_twist_01_r_pointConstraint1.w1" "forearm_twist_01_r_pointConstraint1.tg[1].tw"
		;
connectAttr "forearm_twist_01_r.s" "forearm_twist_01_end_r.is";
connectAttr "_joints.di" "forearm_twist_01_end_r.do";
connectAttr "forearm_twist_01_r.ro" "forearm_twist_01_r_orientConstraint1.cro";
connectAttr "forearm_twist_01_r.pim" "forearm_twist_01_r_orientConstraint1.cpim"
		;
connectAttr "forearm_twist_01_r.jo" "forearm_twist_01_r_orientConstraint1.cjo";
connectAttr "forearm_twist_01_r.is" "forearm_twist_01_r_orientConstraint1.is";
connectAttr "lowerarm_r.r" "forearm_twist_01_r_orientConstraint1.tg[0].tr";
connectAttr "lowerarm_r.ro" "forearm_twist_01_r_orientConstraint1.tg[0].tro";
connectAttr "lowerarm_r.pm" "forearm_twist_01_r_orientConstraint1.tg[0].tpm";
connectAttr "lowerarm_r.jo" "forearm_twist_01_r_orientConstraint1.tg[0].tjo";
connectAttr "forearm_twist_01_r_orientConstraint1.w0" "forearm_twist_01_r_orientConstraint1.tg[0].tw"
		;
connectAttr "wrist_r.r" "forearm_twist_01_r_orientConstraint1.tg[1].tr";
connectAttr "wrist_r.ro" "forearm_twist_01_r_orientConstraint1.tg[1].tro";
connectAttr "wrist_r.pm" "forearm_twist_01_r_orientConstraint1.tg[1].tpm";
connectAttr "wrist_r.jo" "forearm_twist_01_r_orientConstraint1.tg[1].tjo";
connectAttr "forearm_twist_01_r_orientConstraint1.w1" "forearm_twist_01_r_orientConstraint1.tg[1].tw"
		;
connectAttr "lowerarm_r.s" "forearm_twist_02_r.is";
connectAttr "_joints.di" "forearm_twist_02_r.do";
connectAttr "forearm_twist_02_r_pointConstraint1.ctx" "forearm_twist_02_r.tx";
connectAttr "forearm_twist_02_r_pointConstraint1.cty" "forearm_twist_02_r.ty";
connectAttr "forearm_twist_02_r_pointConstraint1.ctz" "forearm_twist_02_r.tz";
connectAttr "forearm_twist_02_r_orientConstraint1.crx" "forearm_twist_02_r.rx";
connectAttr "forearm_twist_02_r_orientConstraint1.cry" "forearm_twist_02_r.ry";
connectAttr "forearm_twist_02_r_orientConstraint1.crz" "forearm_twist_02_r.rz";
connectAttr "forearm_twist_02_r.pim" "forearm_twist_02_r_pointConstraint1.cpim";
connectAttr "forearm_twist_02_r.rp" "forearm_twist_02_r_pointConstraint1.crp";
connectAttr "forearm_twist_02_r.rpt" "forearm_twist_02_r_pointConstraint1.crt";
connectAttr "lowerarm_r.t" "forearm_twist_02_r_pointConstraint1.tg[0].tt";
connectAttr "lowerarm_r.rp" "forearm_twist_02_r_pointConstraint1.tg[0].trp";
connectAttr "lowerarm_r.rpt" "forearm_twist_02_r_pointConstraint1.tg[0].trt";
connectAttr "lowerarm_r.pm" "forearm_twist_02_r_pointConstraint1.tg[0].tpm";
connectAttr "forearm_twist_02_r_pointConstraint1.w0" "forearm_twist_02_r_pointConstraint1.tg[0].tw"
		;
connectAttr "hand_r.t" "forearm_twist_02_r_pointConstraint1.tg[1].tt";
connectAttr "hand_r.rp" "forearm_twist_02_r_pointConstraint1.tg[1].trp";
connectAttr "hand_r.rpt" "forearm_twist_02_r_pointConstraint1.tg[1].trt";
connectAttr "hand_r.pm" "forearm_twist_02_r_pointConstraint1.tg[1].tpm";
connectAttr "forearm_twist_02_r_pointConstraint1.w1" "forearm_twist_02_r_pointConstraint1.tg[1].tw"
		;
connectAttr "forearm_twist_02_r.s" "forearm_twist_02_end_r.is";
connectAttr "_joints.di" "forearm_twist_02_end_r.do";
connectAttr "forearm_twist_02_r.ro" "forearm_twist_02_r_orientConstraint1.cro";
connectAttr "forearm_twist_02_r.pim" "forearm_twist_02_r_orientConstraint1.cpim"
		;
connectAttr "forearm_twist_02_r.jo" "forearm_twist_02_r_orientConstraint1.cjo";
connectAttr "forearm_twist_02_r.is" "forearm_twist_02_r_orientConstraint1.is";
connectAttr "lowerarm_r.r" "forearm_twist_02_r_orientConstraint1.tg[0].tr";
connectAttr "lowerarm_r.ro" "forearm_twist_02_r_orientConstraint1.tg[0].tro";
connectAttr "lowerarm_r.pm" "forearm_twist_02_r_orientConstraint1.tg[0].tpm";
connectAttr "lowerarm_r.jo" "forearm_twist_02_r_orientConstraint1.tg[0].tjo";
connectAttr "forearm_twist_02_r_orientConstraint1.w0" "forearm_twist_02_r_orientConstraint1.tg[0].tw"
		;
connectAttr "wrist_r.r" "forearm_twist_02_r_orientConstraint1.tg[1].tr";
connectAttr "wrist_r.ro" "forearm_twist_02_r_orientConstraint1.tg[1].tro";
connectAttr "wrist_r.pm" "forearm_twist_02_r_orientConstraint1.tg[1].tpm";
connectAttr "wrist_r.jo" "forearm_twist_02_r_orientConstraint1.tg[1].tjo";
connectAttr "forearm_twist_02_r_orientConstraint1.w1" "forearm_twist_02_r_orientConstraint1.tg[1].tw"
		;
connectAttr "lowerarm_r.s" "forearm_twist_03_r.is";
connectAttr "_joints.di" "forearm_twist_03_r.do";
connectAttr "forearm_twist_03_r_pointConstraint1.ctx" "forearm_twist_03_r.tx";
connectAttr "forearm_twist_03_r_pointConstraint1.cty" "forearm_twist_03_r.ty";
connectAttr "forearm_twist_03_r_pointConstraint1.ctz" "forearm_twist_03_r.tz";
connectAttr "forearm_twist_03_r_orientConstraint1.crx" "forearm_twist_03_r.rx";
connectAttr "forearm_twist_03_r_orientConstraint1.cry" "forearm_twist_03_r.ry";
connectAttr "forearm_twist_03_r_orientConstraint1.crz" "forearm_twist_03_r.rz";
connectAttr "forearm_twist_03_r.pim" "forearm_twist_03_r_pointConstraint1.cpim";
connectAttr "forearm_twist_03_r.rp" "forearm_twist_03_r_pointConstraint1.crp";
connectAttr "forearm_twist_03_r.rpt" "forearm_twist_03_r_pointConstraint1.crt";
connectAttr "lowerarm_r.t" "forearm_twist_03_r_pointConstraint1.tg[0].tt";
connectAttr "lowerarm_r.rp" "forearm_twist_03_r_pointConstraint1.tg[0].trp";
connectAttr "lowerarm_r.rpt" "forearm_twist_03_r_pointConstraint1.tg[0].trt";
connectAttr "lowerarm_r.pm" "forearm_twist_03_r_pointConstraint1.tg[0].tpm";
connectAttr "forearm_twist_03_r_pointConstraint1.w0" "forearm_twist_03_r_pointConstraint1.tg[0].tw"
		;
connectAttr "hand_r.t" "forearm_twist_03_r_pointConstraint1.tg[1].tt";
connectAttr "hand_r.rp" "forearm_twist_03_r_pointConstraint1.tg[1].trp";
connectAttr "hand_r.rpt" "forearm_twist_03_r_pointConstraint1.tg[1].trt";
connectAttr "hand_r.pm" "forearm_twist_03_r_pointConstraint1.tg[1].tpm";
connectAttr "forearm_twist_03_r_pointConstraint1.w1" "forearm_twist_03_r_pointConstraint1.tg[1].tw"
		;
connectAttr "forearm_twist_03_r.s" "forearm_twist_03_end_r.is";
connectAttr "_joints.di" "forearm_twist_03_end_r.do";
connectAttr "forearm_twist_03_r.ro" "forearm_twist_03_r_orientConstraint1.cro";
connectAttr "forearm_twist_03_r.pim" "forearm_twist_03_r_orientConstraint1.cpim"
		;
connectAttr "forearm_twist_03_r.jo" "forearm_twist_03_r_orientConstraint1.cjo";
connectAttr "forearm_twist_03_r.is" "forearm_twist_03_r_orientConstraint1.is";
connectAttr "lowerarm_r.r" "forearm_twist_03_r_orientConstraint1.tg[0].tr";
connectAttr "lowerarm_r.ro" "forearm_twist_03_r_orientConstraint1.tg[0].tro";
connectAttr "lowerarm_r.pm" "forearm_twist_03_r_orientConstraint1.tg[0].tpm";
connectAttr "lowerarm_r.jo" "forearm_twist_03_r_orientConstraint1.tg[0].tjo";
connectAttr "forearm_twist_03_r_orientConstraint1.w0" "forearm_twist_03_r_orientConstraint1.tg[0].tw"
		;
connectAttr "wrist_r.r" "forearm_twist_03_r_orientConstraint1.tg[1].tr";
connectAttr "wrist_r.ro" "forearm_twist_03_r_orientConstraint1.tg[1].tro";
connectAttr "wrist_r.pm" "forearm_twist_03_r_orientConstraint1.tg[1].tpm";
connectAttr "wrist_r.jo" "forearm_twist_03_r_orientConstraint1.tg[1].tjo";
connectAttr "forearm_twist_03_r_orientConstraint1.w1" "forearm_twist_03_r_orientConstraint1.tg[1].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "layerManager.dli[1]" "_joints.id";
connectAttr "clavicle_r.msg" "bindPose1.m[0]";
connectAttr "upperarm_r.msg" "bindPose1.m[1]";
connectAttr "lowerarm_r.msg" "bindPose1.m[2]";
connectAttr "hand_r.msg" "bindPose1.m[3]";
connectAttr "pinky_metacarpal_r.msg" "bindPose1.m[4]";
connectAttr "pinky_01_r.msg" "bindPose1.m[5]";
connectAttr "pinky_02_r.msg" "bindPose1.m[6]";
connectAttr "pinky_03_r.msg" "bindPose1.m[7]";
connectAttr "ring_metacarpal_r.msg" "bindPose1.m[8]";
connectAttr "ring_01_r.msg" "bindPose1.m[9]";
connectAttr "ring_02_r.msg" "bindPose1.m[10]";
connectAttr "ring_03_r.msg" "bindPose1.m[11]";
connectAttr "middle_metacarpal_r.msg" "bindPose1.m[12]";
connectAttr "middle_01_r.msg" "bindPose1.m[13]";
connectAttr "middle_02_r.msg" "bindPose1.m[14]";
connectAttr "middle_03_r.msg" "bindPose1.m[15]";
connectAttr "index_metacarpal_r.msg" "bindPose1.m[16]";
connectAttr "index_01_r.msg" "bindPose1.m[17]";
connectAttr "index_02_r.msg" "bindPose1.m[18]";
connectAttr "index_03_r.msg" "bindPose1.m[19]";
connectAttr "thumb_01_r.msg" "bindPose1.m[20]";
connectAttr "thumb_02_r.msg" "bindPose1.m[21]";
connectAttr "thumb_03_r.msg" "bindPose1.m[22]";
connectAttr "wrist_r.msg" "bindPose1.m[23]";
connectAttr "wrist_r_pointConstraint1.msg" "bindPose1.m[24]";
connectAttr "wrist_end_r.msg" "bindPose1.m[25]";
connectAttr "forearm_twist_01_r.msg" "bindPose1.m[26]";
connectAttr "forearm_twist_01_r_pointConstraint1.msg" "bindPose1.m[27]";
connectAttr "forearm_twist_01_end_r.msg" "bindPose1.m[28]";
connectAttr "forearm_twist_01_r_orientConstraint1.msg" "bindPose1.m[29]";
connectAttr "forearm_twist_02_r.msg" "bindPose1.m[30]";
connectAttr "forearm_twist_02_r_pointConstraint1.msg" "bindPose1.m[31]";
connectAttr "forearm_twist_02_end_r.msg" "bindPose1.m[32]";
connectAttr "forearm_twist_02_r_orientConstraint1.msg" "bindPose1.m[33]";
connectAttr "forearm_twist_03_r.msg" "bindPose1.m[34]";
connectAttr "forearm_twist_03_r_pointConstraint1.msg" "bindPose1.m[35]";
connectAttr "forearm_twist_03_end_r.msg" "bindPose1.m[36]";
connectAttr "forearm_twist_03_r_orientConstraint1.msg" "bindPose1.m[37]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[3]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[3]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[3]" "bindPose1.p[16]";
connectAttr "bindPose1.m[16]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "bindPose1.m[3]" "bindPose1.p[20]";
connectAttr "bindPose1.m[20]" "bindPose1.p[21]";
connectAttr "bindPose1.m[21]" "bindPose1.p[22]";
connectAttr "bindPose1.m[2]" "bindPose1.p[23]";
connectAttr "bindPose1.m[23]" "bindPose1.p[24]";
connectAttr "bindPose1.m[23]" "bindPose1.p[25]";
connectAttr "bindPose1.m[2]" "bindPose1.p[26]";
connectAttr "bindPose1.m[26]" "bindPose1.p[27]";
connectAttr "bindPose1.m[26]" "bindPose1.p[28]";
connectAttr "bindPose1.m[26]" "bindPose1.p[29]";
connectAttr "bindPose1.m[2]" "bindPose1.p[30]";
connectAttr "bindPose1.m[30]" "bindPose1.p[31]";
connectAttr "bindPose1.m[30]" "bindPose1.p[32]";
connectAttr "bindPose1.m[30]" "bindPose1.p[33]";
connectAttr "bindPose1.m[2]" "bindPose1.p[34]";
connectAttr "bindPose1.m[34]" "bindPose1.p[35]";
connectAttr "bindPose1.m[34]" "bindPose1.p[36]";
connectAttr "bindPose1.m[34]" "bindPose1.p[37]";
connectAttr "clavicle_r.bps" "bindPose1.wm[0]";
connectAttr "upperarm_r.bps" "bindPose1.wm[1]";
connectAttr "lowerarm_r.bps" "bindPose1.wm[2]";
connectAttr "hand_r.bps" "bindPose1.wm[3]";
connectAttr "pinky_metacarpal_r.bps" "bindPose1.wm[4]";
connectAttr "pinky_01_r.bps" "bindPose1.wm[5]";
connectAttr "pinky_02_r.bps" "bindPose1.wm[6]";
connectAttr "pinky_03_r.bps" "bindPose1.wm[7]";
connectAttr "ring_metacarpal_r.bps" "bindPose1.wm[8]";
connectAttr "ring_01_r.bps" "bindPose1.wm[9]";
connectAttr "ring_02_r.bps" "bindPose1.wm[10]";
connectAttr "ring_03_r.bps" "bindPose1.wm[11]";
connectAttr "middle_metacarpal_r.bps" "bindPose1.wm[12]";
connectAttr "middle_01_r.bps" "bindPose1.wm[13]";
connectAttr "middle_02_r.bps" "bindPose1.wm[14]";
connectAttr "middle_03_r.bps" "bindPose1.wm[15]";
connectAttr "index_metacarpal_r.bps" "bindPose1.wm[16]";
connectAttr "index_01_r.bps" "bindPose1.wm[17]";
connectAttr "index_02_r.bps" "bindPose1.wm[18]";
connectAttr "index_03_r.bps" "bindPose1.wm[19]";
connectAttr "thumb_01_r.bps" "bindPose1.wm[20]";
connectAttr "thumb_02_r.bps" "bindPose1.wm[21]";
connectAttr "thumb_03_r.bps" "bindPose1.wm[22]";
connectAttr "wrist_r.bps" "bindPose1.wm[23]";
connectAttr "wrist_end_r.bps" "bindPose1.wm[25]";
connectAttr "forearm_twist_01_r.bps" "bindPose1.wm[26]";
connectAttr "forearm_twist_01_end_r.bps" "bindPose1.wm[28]";
connectAttr "forearm_twist_02_r.bps" "bindPose1.wm[30]";
connectAttr "forearm_twist_02_end_r.bps" "bindPose1.wm[32]";
connectAttr "forearm_twist_03_r.bps" "bindPose1.wm[34]";
connectAttr "forearm_twist_03_end_r.bps" "bindPose1.wm[36]";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of SK_Forearm_Twist_01_Connection.ma
