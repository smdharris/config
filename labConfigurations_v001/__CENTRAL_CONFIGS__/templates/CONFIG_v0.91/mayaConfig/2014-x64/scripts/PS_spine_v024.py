import maya.cmds as cmds

prefix = 'spine'

def buildSpine(prefix):
	### query and set global keyframe interpolation setting for SDK setup
	currentIntangent = cmds.keyTangent( query = True, itt = True, g = True )
	currentOutTangent = cmds.keyTangent( query = True, ott = True, g = True )
	
	cmds.keyTangent( itt = 'linear', g = True )
	cmds.keyTangent( ott = 'linear', g = True )
	
	cmds.select( prefix )
	
	### get curve attributes
	degree = cmds.getAttr( prefix + '.degree' )
	span = cmds.getAttr( prefix + '.spans' )
	pointNumber = degree + span
	points = cmds.getAttr (( prefix + '.cv[0:'+ str(pointNumber)+']'))
	joint = None
	
	###Create and name joint from curve###
	for i in range (0, pointNumber):
		lastJoint = joint
		joint = cmds.joint ( p=(points[i][0], points[i][1], points[i][2]), n=( prefix + '_' + str(i).zfill(3)+"_FK"))
		# print "created joint: " + joint
		
		if i > 0 : 
			# print "orienting joint: " + str( lastJoint )
			cmds.joint ( lastJoint, e=True, zso=True, oj="xyz", sao="xup")
			cmds.setAttr( lastJoint + '.jointOrientX', 0 )
		cmds.joint ( e=True, oj="none", secondaryAxisOrient="xup", zso=True)
	
	#orient endjoint to match spine
	cmds.setAttr( prefix + '_' + str(pointNumber - 1).zfill(3) + '_FK.jointOrient', 0,0,0 )
	
	###Create and connect ikSpline to Spine curve###
	selection = cmds.ls(sl=True)
	startJoint = prefix + '_000_FK'
	endJoint = selection

	cmds.select( startJoint, endJoint )
	cmds.ikHandle (sol="ikSplineSolver", name=( prefix + '_000_IKH'))
	cmds.delete( 'curve1' )
	cmds.connectAttr( prefix + 'Shape.worldSpace[0]', prefix + '_000_IKH.inCurve')

	SpineIkConnections =cmds.listConnections( prefix + '_000_IKH' ,t="ikEffector")
	cmds.rename( str(SpineIkConnections[0]), prefix + '_000_EFF')

	###Create Spine joints###
	cmds.select( prefix + '_000_FK')
	selection = cmds.ls(sl=True)
	rels = [str(s) for s in cmds.listRelatives(selection,ad=True, typ='joint') ] + [str(s) for s in selection ]
	relsSort = sorted(rels)
	count = 0

	for joint in relsSort :
		cmds.select(clear=True)
		newjoint = cmds.joint()
		skinJNT = cmds.rename( newjoint, prefix + '_' + str(count).zfill(3) + '_JNT')
		cmds.parent( skinJNT, joint)
		cmds.setAttr( skinJNT + ".tx", 0 )
		cmds.setAttr( skinJNT + ".ty", 0 )
		cmds.setAttr( skinJNT + ".tz", 0 )
		cmds.setAttr( skinJNT + ".jointOrientX", cmds.getAttr(joint+".jointOrientX" ) )
		cmds.setAttr( skinJNT + ".jointOrientY", cmds.getAttr(joint+".jointOrientY" ) )
		cmds.setAttr( skinJNT + ".jointOrientZ", cmds.getAttr(joint+".jointOrientZ" ) )
		count += 1

	cmds.setAttr( prefix + '_000_JNT.jointOrientX', 0 )
	cmds.setAttr( prefix + '_000_JNT.jointOrientY', 0 )
	cmds.setAttr( prefix + '_000_JNT.jointOrientZ', 0 )

	###Build NURBS controler surfaces###
	for i in range (0,2):
		cmds.duplicate( prefix , n=('loft' + str(i).zfill(3)+"_CRV"))

	cmds.rebuildCurve( 'loft000_CRV', rt=0, s=pointNumber )
	cmds.rebuildCurve( 'loft001_CRV', rt=0, s=pointNumber )

	cmds.move( .5, 0, 0, 'loft000_CRV', absolute=True )
	cmds.move( -.5, 0, 0, 'loft001_CRV', absolute=True )
	cmds.select( 'loft000_CRV', 'loft001_CRV' )

	cmds.loft( 'loft000_CRV', 'loft001_CRV', ch=True, rn=True, ar=True, n=( prefix + '_000_GEO' ) )
	cmds.rebuildSurface( prefix + '_000_GEO',  ch=True, rpo=True, rt=False, end=True, kr=False, kcp=False, kc=False, su=True, du=3, sv=3, dv=3, tol= 0.01, fr=False,  dir=2 )
	cmds.delete( prefix + '_000_GEO', ch=True)

	cmds.loft( 'loft000_CRV', 'loft001_CRV', ch=True, rn=True, ar=True, n=( prefix + '_001_GEO' ) )
	cmds.rebuildSurface( prefix + '_001_GEO',  ch=True, rpo=True, rt=False, end=True, kr=False, kcp=False, kc=False, su=True, du=3, sv=3, dv=3, tol= 0.01, fr=False,  dir=2 )
	cmds.delete( prefix + '_001_GEO', ch=True)

	cmds.delete('loft000_CRV', 'loft001_CRV')

	cmds.reverseSurface( prefix + '_000_GEO', ch=True, d=0, rpo=True )
	cmds.reverseSurface( prefix + '_001_GEO', ch=True, d=0, rpo=True )

	###Create control joints###
	for i in range (0,3):
		cmds.joint( p=(0, 0, 0), name= prefix + '_Geo' + str (i).zfill(3)+"_FK" )
		cmds.group( em=True, name= prefix + '_Geo' + str (i).zfill(3)+"_GRP" )


	cmds.parent( prefix + '_Geo000_FK', prefix + '_Geo000_GRP')
	cmds.parent( prefix + '_Geo001_FK', prefix + '_Geo001_GRP')
	cmds.parent( prefix + '_Geo002_FK', prefix + '_Geo002_GRP')

	###Create control folicle###
	cmds.createNode ('follicle', name= prefix + '_Mid000_FOLShape')
	cmds.connectAttr( prefix + '_000_GEOShape.worldMatrix[0]', prefix + '_Mid000_FOLShape.inputWorldMatrix' )
	cmds.connectAttr( prefix + '_000_GEOShape.local', prefix + '_Mid000_FOLShape.inputSurface' )
	cmds.connectAttr(  prefix + '_Mid000_FOLShape.outTranslate', prefix + '_Mid000_FOL.translate' )
	cmds.connectAttr(  prefix + '_Mid000_FOLShape.outRotate', prefix + '_Mid000_FOL.rotate' )
	cmds.setAttr( prefix + '_Mid000_FOLShape.parameterU', .5 )
	cmds.setAttr( prefix + '_Mid000_FOLShape.parameterV', .5 )

	###Create and position controlers###
	for i in range (0,3):
		cmds.circle( radius = 4, nr=(0, 1, 0), c=(0, 0, 0), n= prefix  + '_' + str (i).zfill(3)+"_CTL", ch = False  )
		cmds.group( em=True, name= prefix + '_CTL' + str (i).zfill(3)+"_GRP" )

	cmds.parent( prefix + '_000_CTL', prefix + '_CTL000_GRP')
	cmds.parent( prefix + '_001_CTL', prefix + '_CTL001_GRP' )
	cmds.parent( prefix + '_002_CTL', prefix + '_CTL002_GRP')

	cmds.group( em=True, name= prefix + '_CTL001_TopSDK_GRP'  )
	cmds.parent( prefix + '_CTL001_TopSDK_GRP', prefix + '_Mid000_FOL')
	cmds.setAttr( prefix + '_CTL001_TopSDK_GRP.translate', 0,0,0 )

	cmds.group( em=True, name= prefix + '_CTL001_TopRotateSDK_GRP'  )
	cmds.parent( prefix + '_CTL001_TopRotateSDK_GRP', prefix + '_CTL001_TopSDK_GRP')
	cmds.setAttr( prefix + '_CTL001_TopRotateSDK_GRP.translate', 0,0,0 )

	cmds.group( em=True, name= prefix + '_CTL001_BtmRotateSDK_GRP'  )
	cmds.parent( prefix + '_CTL001_BtmRotateSDK_GRP', prefix + '_CTL001_TopRotateSDK_GRP')
	cmds.setAttr( prefix + '_CTL001_BtmRotateSDK_GRP.translate', 0,0,0 )

	cmds.parent( prefix + '_CTL001_GRP', prefix + '_CTL001_BtmRotateSDK_GRP')
	cmds.setAttr( prefix + '_CTL001_GRP.translate', 0,0,0 )
	cmds.rename (prefix + '_CTL001_GRP', prefix + '_CTL001_BtmSDK_GRP')


	cmds.parentConstraint( prefix + '_001_CTL', prefix + '_Geo001_FK')
	cmds.setAttr( prefix + '_CTL001_BtmSDK_GRP.rotate', 0,0,0 )
	cmds.pointConstraint( prefix + '_000_EFF', prefix + '_CTL002_GRP', mo=False)
	cmds.delete( prefix +'_CTL002_GRP_pointConstraint1')
	cmds.parentConstraint( prefix + '_002_CTL', prefix + '_Geo002_FK')
	cmds.pointConstraint( prefix + '_000_FK', prefix + '_CTL000_GRP', mo=False)
	cmds.delete( prefix + '_CTL000_GRP_pointConstraint1')
	cmds.parentConstraint( prefix + '_000_CTL', prefix + '_Geo000_FK')

	cmds.spaceLocator(n = 'up')
	cmds.parent( 'up', prefix + '_000_FK')
	cmds.setAttr( 'up.translate', 0,0,-2 )
	cmds.setAttr( 'up.rotate', 0,0,0 )
	cmds.aimConstraint( prefix + '_001_FK', prefix + '_ CTL000_GRP', aimVector = [0, 1, 0], worldUpType = "object", worldUpObject = "up" )
	cmds.delete ( prefix + '_CTL000_GRP_aimConstraint1')

	cmds.parent( 'up', endJoint)
	cmds.setAttr( 'up.translate', 0,0,-2 )
	cmds.setAttr( 'up.rotate', 0,0,0 )
	cmds.aimConstraint( lastJoint , prefix + '_CTL002_GRP', aimVector = [0, -1, 0], upVector = [ 0, 0, -1], worldUpType = "object", worldUpObject = "up" )
	cmds.delete ( prefix + '_CTL002_GRP_aimConstraint1')
	cmds.delete ( 'up')

	###set up groups for advanced twist###
	cmds.group( em=True, name= prefix + '_UpTwist000_NULL' )
	cmds.group( em=True, name= prefix + '_DwnTwist000_NULL' )
	cmds.parent( prefix + '_UpTwist000_NULL', prefix + '_000_CTL')
	cmds.parent( prefix + '_DwnTwist000_NULL', prefix + '_002_CTL')
	cmds.setAttr( prefix + '_DwnTwist000_NULL.translate', 0,0,0)
	cmds.setAttr( prefix + '_UpTwist000_NULL.translate', 0,0,0)
	cmds.setAttr( prefix + '_DwnTwist000_NULL.rotate', 180,0,90)
	cmds.setAttr( prefix + '_UpTwist000_NULL.rotate', 180,0,90)

	cmds.select( prefix + '_000_CTL' )
	cmds.addAttr( keyable=True, longName='twist' )

	cmds.select( prefix + '_002_CTL' )
	cmds.addAttr( keyable=True, longName='twist' )

	###position control joints###
	cmds.parent ( prefix + '_Geo001_GRP', prefix + '_Mid000_FOL')
	cmds.setAttr( prefix + '_Geo001_GRP.translate', 0,0,0)
	cmds.setAttr( prefix + '_Geo001_GRP.rotate', 0,0,0)

	cmds.parentConstraint( prefix + '_000_CTL', prefix + '_Geo000_GRP')
	cmds.delete ( prefix + '_Geo000_GRP_parentConstraint1')

	cmds.parentConstraint( prefix + '_000_CTL', prefix + '_Geo002_GRP')
	cmds.delete( prefix + '_Geo002_GRP_parentConstraint1')

	###Create twist###
	list=[]

	for i in range (0, pointNumber):
	   newNode = cmds.createNode ( 'multiplyDivide', n=( prefix + '_Twist' + str(i).zfill(3)+"_MDN"))
	   list.append( newNode )
	   cmds.connectAttr( prefix + '_002_CTL.twist', str(newNode)+'.input1X' )
	   cmds.connectAttr( prefix + '_001_CTL.rotateY', str(newNode)+'.input1Y' )
	   cmds.connectAttr( prefix + '_000_CTL.twist', str(newNode)+'.input1Z' )




	listPma=[]
	for i in range (0, pointNumber):
	   newPma = cmds.createNode ( 'plusMinusAverage', n=( prefix + '_Twist' + str(i).zfill(3)+"_PMA"))
	   listPma.append( newPma )
	   cmds.setAttr (str(newPma)+'.operation',1)
	   cmds.connectAttr( prefix + '_Twist'+str(i).zfill(3)+'_MDN.outputX', str(newPma)+'.input1D[0]' )
	   cmds.connectAttr( prefix + '_Twist'+str(i).zfill(3)+'_MDN.outputY', str(newPma)+'.input1D[1]' )
	   cmds.connectAttr( prefix + '_Twist'+str(i).zfill(3)+'_MDN.outputZ', str(newPma)+'.input1D[2]' )

	   ###Connect twist###
	for i in range (0, pointNumber):
		cmds.connectAttr( prefix +  '_Twist'+str(i).zfill(3)+'_PMA.output1D', prefix + '_' + str(i).zfill(3)+'_JNT.rotateX' )

	###Squash and stretch###
	cmds.createNode( 'curveInfo', n=( prefix + '_000_CIN'))
	cmds.connectAttr( prefix + 'Shape.worldSpace', prefix + '_000_CIN.inputCurve')
	cmds.createNode( 'multiplyDivide', n=( prefix + '_SquashStretch000_MDN'))
	cmds.setAttr( prefix + '_SquashStretch000_MDN.operation',2)
	cmds.connectAttr( prefix + '_000_CIN.arcLength', prefix + '_SquashStretch000_MDN.input1.input1X')

	stretchInfo = cmds.getAttr( prefix + '_SquashStretch000_MDN.input1X' )

	cmds.setAttr( prefix + '_SquashStretch000_MDN.input2X', stretchInfo)

	for i in range (0, pointNumber):
	   cmds.connectAttr( prefix + '_SquashStretch000_MDN.outputX', prefix + '_' + str(i).zfill(3)+'_FK.scaleX')
	   
	   ###Create follices###
	listLOC=[]

	for i in range (0, pointNumber):
	   newLOC = cmds.spaceLocator( n=('folliclePos' + str(i).zfill(3)+'_LOC' ))
	   listLOC.append( newLOC )
	   cmds.parentConstraint( prefix + '_' + str(i).zfill(3)+'_FK', 'folliclePos' + str(i).zfill(3)+'_LOC')

	listCPOS=[]

	for i in range (0, pointNumber):
	   newCPOS = cmds.createNode ( 'closestPointOnSurface', n=('folliclePos' + str(i).zfill(3)+"_CPOS"))
	   listCPOS.append( newCPOS )
	   cmds.connectAttr( 'folliclePos' + str(i).zfill(3)+'_LOC.translate', 'folliclePos' + str(i).zfill(3)+'_CPOS.inPosition')
	   cmds.connectAttr( prefix  + '_' + '001_GEOShape.worldSpace', 'folliclePos' + str(i).zfill(3)+'_CPOS.inputSurface')

	listFOL=[]

	for i in range (0, pointNumber):
	   newFOL = cmds.createNode ('follicle', n=( prefix  +  '_Joint_' + str(i).zfill(3)+'_FOLShape'))
	   listFOL.append( newFOL )
	   cmds.connectAttr( prefix + '_001_GEOShape.worldMatrix', prefix  +  '_Joint_' + str(i).zfill(3)+'_FOLShape.inputWorldMatrix')
	   cmds.connectAttr( prefix + '_001_GEOShape.local', prefix  +  '_Joint_' + str(i).zfill(3)+'_FOL.inputSurface')
	   cmds.connectAttr( prefix + '_Joint_' + str(i).zfill(3)+'_FOLShape.outTranslate', prefix  +  '_Joint_' + str(i).zfill(3)+'_FOL.translate')
	   cmds.connectAttr( prefix + '_Joint_' + str(i).zfill(3)+'_FOLShape.outRotate', prefix  +  '_Joint_' + str(i).zfill(3)+'_FOL.rotate')

	   cmds.setAttr( prefix  +  '_Joint_' + str(i).zfill(3)+'_FOL.translateX', lock=True)
	   cmds.setAttr( prefix  +  '_Joint_' + str(i).zfill(3)+'_FOL.translateY', lock=True)
	   cmds.setAttr( prefix  +  '_Joint_' + str(i).zfill(3)+'_FOL.translateZ', lock=True)

	   cmds.setAttr( prefix  +  '_Joint_' + str(i).zfill(3)+'_FOL.rotateX', lock=True)
	   cmds.setAttr( prefix  +  '_Joint_' + str(i).zfill(3)+'_FOL.rotateY', lock=True)
	   cmds.setAttr( prefix  +  '_Joint_' + str(i).zfill(3)+'_FOL.rotateZ', lock=True)

	   cmds.connectAttr( 'folliclePos' + str(i).zfill(3)+'_CPOS.parameterU', prefix +  '_Joint_' + str(i).zfill(3)+'_FOL.parameterU')
	   cmds.connectAttr( 'folliclePos' + str(i).zfill(3)+'_CPOS.parameterV', prefix +  '_Joint_' + str(i).zfill(3)+'_FOL.parameterV')

	   cmds.disconnectAttr( 'folliclePos' + str(i).zfill(3)+'_CPOS.parameterU', prefix + '_Joint_' + str(i).zfill(3)+'_FOL.parameterU')
	   cmds.disconnectAttr( 'folliclePos' + str(i).zfill(3)+'_CPOS.parameterV', prefix + '_Joint_' + str(i).zfill(3)+'_FOL.parameterV')

	   cmds.delete( 'folliclePos' + str(i).zfill(3)+'_CPOS' )
	   cmds.delete( 'folliclePos' + str(i).zfill(3)+'_LOC' )

	###Create Spine joints###
	listJNT=[]

	for i in range (0, pointNumber):
	   newDRV = cmds.joint( n=( prefix + '_Joint_' + str(i).zfill(3)+'_DRV'))
	   listJNT.append( newDRV )
	   cmds.parent( prefix + '_Joint_' + str(i).zfill(3)+'_DRV', prefix + '_Joint_' + str(i).zfill(3)+'_FOL')
	   cmds.setAttr( prefix + '_Joint_' + str(i).zfill(3)+'_DRV.translateX',0 )
	   cmds.setAttr( prefix + '_Joint_' + str(i).zfill(3)+'_DRV.translateY',0 )
	   cmds.setAttr( prefix + '_Joint_' + str(i).zfill(3)+'_DRV.translateZ',0 )

	   cmds.setAttr( prefix + '_Joint_' + str(i).zfill(3)+'_DRV.rotateX',0 )
	   cmds.setAttr( prefix + '_Joint_' + str(i).zfill(3)+'_DRV.rotateY',0 )
	   cmds.setAttr( prefix + '_Joint_' + str(i).zfill(3)+'_DRV.rotateZ',0 )
	   
	###Skin ribbons###
	cmds.skinCluster( prefix + '_Geo000_FK', prefix + '_Geo002_FK', prefix + '_000_GEO', dr=4.5, n = prefix + '_Geo000_SKN')
	cmds.skinCluster( prefix + '_Geo000_FK', prefix + '_Geo002_FK', prefix + '_Geo001_FK', prefix + '_001_GEO', dr=4.5, n = prefix + '_Geo001_SKN')

	###Skin splines###
	driverJoints = cmds.ls(prefix + '_Joint*_DRV')
	cmds.skinCluster( driverJoints, prefix, n = prefix + '_Crv000_SKN' )

	###set up advanced twist
	### cmds.setAttr( prefix + '_000_IKH.dTwistControlEnable', 1)
	### cmds.setAttr( prefix + '_000_IKH.dWorldUpType', 4)

	###Connect twist###
	### cmds.connectAttr (prefix + '_000_CTL.rotateY', prefix + '_000_CTL.twist')
	### cmds.connectAttr (prefix + '_002_CTL.rotateY', prefix + '_002_CTL.twist')

	###Name curve###
	cmds.rename (prefix, prefix + '_000_CRV')

	###Create Master group###
	###cmds.select( clear=True )
	###cmds.group (n = prefix + '_Master_GRP')
	###elements = cmds.ls (prefix)
	###cmds.parent (elements, prefix + '_Master_GRP')
	###Print###
	#print 'dont forget to setup the twist!!!!!!!!!!!!!'

	#get the length of our Spine curve
	lengthOfCnt_Spineurve = cmds.getAttr( prefix + '_SquashStretch000_MDN.input2X')

	#set rotationAmount (to taste)
	rotationAmount = 90

	#Declare top variables (ie "the drivers")
	topTX = prefix  + "_002_CTL.tx"
	topRZ = prefix  + "_002_CTL.rz"
	#Declare bottom variables (ie "the drivers")
	btmTX = prefix  + "_000_CTL.tx"
	btmRZ = prefix  + "_000_CTL.rz"
	#declare mid variables (ie "the driven")
	midTopTranslateSDK = prefix  + "_CTL001_TopSDK_GRP.rz"
	midTopRotateSDK = prefix  + "_CTL001_TopRotateSDK_GRP.rz"
	midBtmTranslateSDK = prefix  + "_CTL001_BtmSDK_GRP.rz"
	midBtmRotateSDK = prefix  + "_CTL001_BtmRotateSDK_GRP.rz"


	#setAttrs for mid moving top control in +X
	cmds.setAttr(topTX, lengthOfCnt_Spineurve)
	cmds.setAttr(midTopTranslateSDK, -rotationAmount)
	#setDrivenKeyframe NB: "cd" stands for "current driver"
	cmds.setDrivenKeyframe(midTopTranslateSDK, cd=topTX)

	#setAttrs for mid moving top control in -X
	cmds.setAttr(topTX, -lengthOfCnt_Spineurve)
	cmds.setAttr(midTopTranslateSDK, rotationAmount)
	#setDrivenKeyframe NB: "cd" stands for "current driver"
	cmds.setDrivenKeyframe(midTopTranslateSDK, cd=topTX)

	#return top and mid cntrls to start Position
	cmds.setAttr(topTX, 0)
	cmds.setAttr(midTopTranslateSDK, 0)
	#setDrivenKeyframe NB: "cd" stands for "current driver"
	cmds.setDrivenKeyframe(midTopTranslateSDK, cd=topTX)


	#################################################
	#setAttrs for mid rotating top control in +Z
	cmds.setAttr(topRZ, rotationAmount)
	cmds.setAttr(midTopRotateSDK, -rotationAmount)
	#setDrivenKeyframe NB: "cd" stands for "current driver"
	cmds.setDrivenKeyframe(midTopRotateSDK, cd=topRZ)

	#setAttrs for mid rotating top control in -Z
	cmds.setAttr(topRZ, -rotationAmount)
	cmds.setAttr(midTopRotateSDK, rotationAmount)
	#setDrivenKeyframe NB: "cd" stands for "current driver"
	cmds.setDrivenKeyframe(midTopRotateSDK, cd=topRZ)

	#return top and mid cntrls to start Position
	cmds.setAttr(topRZ, 0)
	cmds.setAttr(midTopRotateSDK, 0)
	#setDrivenKeyframe NB: "cd" stands for "current driver"
	cmds.setDrivenKeyframe(midTopRotateSDK, cd=topRZ)
	##################################################


	#################################################
	#setAttrs for mid rotating bottom control in +Z
	cmds.setAttr(btmRZ, rotationAmount)
	cmds.setAttr(midBtmRotateSDK, -rotationAmount)
	#setDrivenKeyframe NB: "cd" stands for "current driver"
	cmds.setDrivenKeyframe(midBtmRotateSDK, cd=btmRZ)

	#setAttrs for mid rotating bottom control in -Z
	cmds.setAttr(btmRZ, -rotationAmount)
	cmds.setAttr(midBtmRotateSDK, rotationAmount)
	#setDrivenKeyframe NB: "cd" stands for "current driver"
	cmds.setDrivenKeyframe(midBtmRotateSDK, cd=btmRZ)

	#return top and mid cntrls to start Position
	cmds.setAttr(btmRZ, 0)
	cmds.setAttr(midBtmRotateSDK, 0)
	#setDrivenKeyframe NB: "cd" stands for "current driver"
	cmds.setDrivenKeyframe(midBtmRotateSDK, cd=btmRZ)
	##################################################


	#setAttrs for mid moving bottom control in +X
	cmds.setAttr(btmTX, lengthOfCnt_Spineurve)
	cmds.setAttr(midBtmTranslateSDK, rotationAmount)
	#setDrivenKeyframe NB: "cd" stands for "current driver"
	cmds.setDrivenKeyframe(midBtmTranslateSDK, cd=btmTX)

	#setAttrs for mid moving bottom control in -X
	cmds.setAttr(btmTX, -lengthOfCnt_Spineurve)
	cmds.setAttr(midBtmTranslateSDK, -rotationAmount)
	#setDrivenKeyframe NB: "cd" stands for "current driver"
	cmds.setDrivenKeyframe(midBtmTranslateSDK, cd=btmTX)

	#return bottom and mid controls to start Position
	cmds.setAttr(btmTX, 0)
	cmds.setAttr(midBtmTranslateSDK, 0)
	#setDrivenKeyframe NB: "cd" stands for "current driver"
	cmds.setDrivenKeyframe(midBtmTranslateSDK, cd=btmTX)




	theJoints = range(pointNumber)
	theJointsLength = float(len(theJoints))-1

	for aJoint in theJoints:
		MDN = prefix + '_' + "Twist"+str(aJoint).zfill(3)+'_MDN'
		cmds.setAttr( MDN + ".input2Z", (1-float(aJoint)/theJointsLength))

	for aJoint in theJoints:
		MDN = prefix + '_' + "Twist"+str(aJoint).zfill(3)+'_MDN'
		cmds.setAttr( MDN + ".input2X", (float(aJoint)/theJointsLength))

	theMiddleJoint = theJoints.index((len(theJoints))/2)
	theMidApexList=[]

	for aJoint in theJoints[:((len(theJoints))/2)+1]:
		MDN = prefix + '_' + "Twist"+str(aJoint).zfill(3)+'_MDN'
		cmds.setAttr( MDN + ".input2Y", (2*(float(aJoint)/theJointsLength)))
		#theMidApexList.append(theRotationMultipier)

	for aJoint in theJoints[((len(theJoints))/2)+1:]:
		MDN = prefix + '_' + "Twist"+str(aJoint).zfill(3)+'_MDN'
		cmds.setAttr( MDN + ".input2Y", 2*(1- float(aJoint)/theJointsLength))
		#theMidApexList.append(theRotationMultipier)

	#for anItem in theMidApexList:
	#    print anItem 



	#build heirarchy#
	cmds.group( em=True, name=( prefix + '_All000_GRP'))
	cmds.group( em=True, name=( prefix + '_All001_GRP'))
	cmds.group( em=True, name=( prefix + '_All002_GRP'))
	# build master controls
	cmds.curve( name=( prefix + '_All000_CTL'), degree = 3, point = [(-2.5870293526821834e-15, 5.4483909466784861e-36, 8.4899356232051044), (4.086088758749157, 5.4483909466784861e-36, 4.8693000688131338), (6.8101479312486024, 5.4483909466784861e-36, 1.2486645144211457), (5.4481183449988837, 5.4483909466784861e-36, -3.9998118128096531), (2.5874314825403598e-15, 5.4483909466891123e-36, -6.7238709853090981), (-5.4481183449988766, 5.4483909466784861e-36, -3.9998118128096594), (-6.8101479312485997, 5.4483909466784861e-36, 1.248664514421141), (-4.0860887587491641, 5.4483909466784861e-36, 4.8693000688131205), (-1.7246192134784273e-15, 2.0413722306552454e-32, 8.4899356232051044)] )
	cmds.addAttr( longName = 'subControlOneVisibility', keyable = True, min = 0, max = 1, attributeType = 'long' )
	cmds.addAttr( longName = 'subControlTwoVisibility', keyable = True, min = 0, max = 1, attributeType = 'long' )
	cmds.rename( 'curveShape1', prefix + '_All000_CTLShape' )
	cmds.setAttr( prefix + '_All000_CTL.subControlOneVisibility', keyable = False, channelBox = True )
	cmds.setAttr( prefix + '_All000_CTL.subControlTwoVisibility', keyable = False, channelBox = True )
	cmds.curve( name=( prefix + '_All001_CTL'), degree = 3, point = [(-2.4124617763005566e-15, 4.2232448323644054e-35, 7.9372176682272988), (3.8185271911283234, 4.2232448323644054e-35, 4.5536652958006165), (6.3642119852138777, 4.2232448323644054e-35, 1.170112923373918), (5.0913695881711041, 4.2232448323644054e-35, -3.7346874250304691), (2.4231696955851561e-15, 4.2232448323653986e-35, -6.2803722191160229), (-5.091369588171097, 4.2232448323644054e-35, -3.7346874250304749), (-6.364211985213875, 4.2232448323644054e-35, 1.1701129233739136), (-3.8185271911283292, 4.2232448323644054e-35, 4.553665295800605), (-1.6065231976529386e-15, 1.9114150233729631e-32, 7.9372176682272988)])
	cmds.rename( 'curveShape1', prefix + '_All001_CTLShape' )
	cmds.curve( name=( prefix + '_All002_CTL'), degree = 3, point = [(-2.1955804705117755e-15, 8.1207304823966828e-35, 7.246874953712628), (3.4846338500471794, 8.1207304823966828e-35, 4.1591815734589863), (5.80772308341197, 8.1207304823966828e-35, 1.0714881932053306), (4.6461784667295767, 8.1207304823966828e-35, -3.4044347127470127), (2.2172217094583908e-15, 8.1207304823975905e-35, -5.7275239461118046), (-4.6461784667295722, 8.1207304823966828e-35, -3.404434712747018), (-5.8077230834119673, 8.1207304823966828e-35, 1.0714881932053264), (-3.4846338500471838, 8.1207304823966828e-35, 4.1591815734589765), (-1.4601134405167476e-15, 1.7485469988810485e-32, 7.246874953712628)] )
	cmds.rename( 'curveShape1', prefix + '_All002_CTLShape' )
	cmds.parent ( prefix + '_All000_CTL', prefix + '_All000_GRP')
	cmds.parent ( prefix + '_All001_CTL', prefix + '_All001_GRP')
	cmds.parent ( prefix + '_All002_CTL', prefix + '_All002_GRP')
	cmds.parentConstraint( prefix + '_000_CTL', prefix + '_All000_GRP' )
	cmds.parentConstraint( prefix + '_All000_CTL', prefix + '_All001_GRP' )
	cmds.parentConstraint( prefix + '_All001_CTL', prefix + '_All002_GRP' )
	cmds.delete( prefix + '_All000_GRP_parentConstraint1' )
	cmds.group( em=True, name=( prefix + '_NoTransform000_GRP'))
	#connect visibility of sub controls
	cmds.connectAttr( prefix + '_All000_CTL.subControlOneVisibility', prefix + '_All001_CTL.visibility' )
	cmds.connectAttr( prefix + '_All000_CTL.subControlTwoVisibility', prefix + '_All002_CTL.visibility' )
	# constrain master controls into rig
	cmds.parent(  prefix + '_000_FK', prefix + '_All000_GRP')
	cmds.parent(  prefix + '_000_IKH', prefix + '_All000_GRP')
	# pack up heirarchy
	cmds.parent(  prefix + '_000_CRV', prefix + '_NoTransform000_GRP')
	cmds.parent(  prefix + '_000_GEO', prefix + '_NoTransform000_GRP')
	cmds.parent(  prefix + '_001_GEO', prefix + '_NoTransform000_GRP')
	cmds.parent(  prefix + '_Geo000_GRP', prefix + '_NoTransform000_GRP')
	cmds.parent(  prefix + '_Geo001_GRP', prefix + '_NoTransform000_GRP')
	cmds.parent(  prefix + '_Geo002_GRP', prefix + '_NoTransform000_GRP')
	cmds.parent(  prefix + '_Mid000_FOL', prefix + '_NoTransform000_GRP')


	cmds.select ( prefix + '_Joint*_FOL')
	selection = cmds.ls(sl=True)
	list=[]

	for i in selection:
		cmds.parent (  i, prefix + '_NoTransform000_GRP')

	cmds.group ( em=True, name=( prefix + '_Master000_GRP'))
	cmds.parent ( prefix + '_NoTransform000_GRP', prefix + '_Master000_GRP')
	cmds.parent ( prefix + '_All000_GRP', prefix + '_Master000_GRP')
	cmds.parentConstraint( prefix + '_All002_CTL', prefix + '_CTL000_GRP' )
	cmds.group( em = True, name = prefix + '_CTL002constraint_GRP' )
	cmds.parentConstraint( prefix + '_002_CTL', prefix + '_CTL002constraint_GRP' )
	cmds.delete( prefix + '_CTL002constraint_GRP_parentConstraint1' )
	cmds.parentConstraint ( prefix + '_CTL002constraint_GRP', prefix + '_CTL002_GRP' )
	cmds.parent( prefix + '_CTL002constraint_GRP', prefix + '_All002_CTL' )
	cmds.parent ( prefix + '_000_IKH', prefix + '_All000_CTL')
	cmds.parent ( prefix + '_000_FK', prefix + '_All000_CTL')

	#make Spine scaleable#
	cmds.createNode ( 'multiplyDivide', n= prefix + '_GlobalScale000_MDN' )
	arcLen = cmds.getAttr ( prefix + '_000_CIN.arcLength' )
	cmds.setAttr ( prefix + '_GlobalScale000_MDN.input1X', arcLen )
	cmds.select ( prefix + '_All000_CTL', r=True )
	cmds.addAttr ( prefix + '_All000_CTL', longName =  'globalScale', defaultValue= 1, keyable = True )  
	cmds.connectAttr ( prefix + '_All000_CTL.globalScale', prefix + '_GlobalScale000_MDN.input2X' )
	cmds.connectAttr ( prefix + '_GlobalScale000_MDN.outputX', prefix + '_SquashStretch000_MDN.input2X' )
	cmds.connectAttr ( prefix + '_All000_CTL.globalScale',  prefix + '_All000_GRP.scaleX' )
	cmds.connectAttr ( prefix + '_All000_CTL.globalScale',  prefix + '_All000_GRP.scaleY' )
	cmds.connectAttr ( prefix + '_All000_CTL.globalScale',  prefix + '_All000_GRP.scaleZ' )

	for i in range (0, pointNumber):
	   cmds.connectAttr( prefix + '_All000_CTL.globalScale', prefix +  '_Joint_' + str(i).zfill(3)+'_FOL.scaleX')
	   cmds.connectAttr( prefix + '_All000_CTL.globalScale', prefix +  '_Joint_' + str(i).zfill(3)+'_FOL.scaleY')
	   cmds.connectAttr( prefix + '_All000_CTL.globalScale', prefix +  '_Joint_' + str(i).zfill(3)+'_FOL.scaleZ')

	cmds.connectAttr( prefix + '_All000_CTL.globalScale', prefix + '_Mid000_FOL.scaleX' )
	cmds.connectAttr( prefix + '_All000_CTL.globalScale', prefix + '_Mid000_FOL.scaleY' )
	cmds.connectAttr( prefix + '_All000_CTL.globalScale', prefix + '_Mid000_FOL.scaleZ' )

	cmds.connectAttr( prefix + '_All000_CTL.globalScale', prefix + '_Geo000_FK.scaleX' )
	cmds.connectAttr( prefix + '_All000_CTL.globalScale', prefix + '_Geo000_FK.scaleY' )
	cmds.connectAttr( prefix + '_All000_CTL.globalScale', prefix + '_Geo000_FK.scaleZ' )

	cmds.connectAttr( prefix + '_All000_CTL.globalScale', prefix + '_Geo001_FK.scaleX' )
	cmds.connectAttr( prefix + '_All000_CTL.globalScale', prefix + '_Geo001_FK.scaleY' )
	cmds.connectAttr( prefix + '_All000_CTL.globalScale', prefix + '_Geo001_FK.scaleZ' )

	cmds.connectAttr( prefix + '_All000_CTL.globalScale', prefix + '_Geo002_FK.scaleX' )
	cmds.connectAttr( prefix + '_All000_CTL.globalScale', prefix + '_Geo002_FK.scaleY' )
	cmds.connectAttr( prefix + '_All000_CTL.globalScale', prefix + '_Geo002_FK.scaleZ' )

	cmds.setAttr ( prefix + '_All000_CTL.scaleX', lock=True, keyable = False )
	cmds.setAttr ( prefix + '_All000_CTL.scaleY', lock=True, keyable = False )
	cmds.setAttr ( prefix + '_All000_CTL.scaleZ', lock=True, keyable = False )

	cmds.connectAttr( prefix + '_All000_CTL.globalScale', prefix + '_CTL000_GRP.scaleX' )
	cmds.connectAttr( prefix + '_All000_CTL.globalScale', prefix + '_CTL000_GRP.scaleY' )
	cmds.connectAttr( prefix + '_All000_CTL.globalScale', prefix + '_CTL000_GRP.scaleZ' )

	cmds.connectAttr( prefix + '_All000_CTL.globalScale', prefix + '_CTL002_GRP.scaleX' )
	cmds.connectAttr( prefix + '_All000_CTL.globalScale', prefix + '_CTL002_GRP.scaleY' )
	cmds.connectAttr( prefix + '_All000_CTL.globalScale', prefix + '_CTL002_GRP.scaleZ' )

	cmds.connectAttr( prefix + '_All000_CTL.globalScale', prefix + '_All001_GRP.scaleX' )
	cmds.connectAttr( prefix + '_All000_CTL.globalScale', prefix + '_All001_GRP.scaleY' )
	cmds.connectAttr( prefix + '_All000_CTL.globalScale', prefix + '_All001_GRP.scaleZ' )

	cmds.connectAttr( prefix + '_All000_CTL.globalScale', prefix + '_All002_GRP.scaleX' )
	cmds.connectAttr( prefix + '_All000_CTL.globalScale', prefix + '_All002_GRP.scaleY' )
	cmds.connectAttr( prefix + '_All000_CTL.globalScale', prefix + '_All002_GRP.scaleZ' )
	#add extra twist node#

	cmds.createNode ( 'addDoubleLinear', n= prefix +'ExtraTwist000_ADL' )
	cmds.createNode ( 'addDoubleLinear', n= prefix +'ExtraTwist002_ADL' )

	cmds.connectAttr (prefix + '_000_CTL.rotateY', prefix +'ExtraTwist000_ADL.input1' )
	cmds.connectAttr (prefix + '_002_CTL.rotateY', prefix +'ExtraTwist002_ADL.input1' )

	cmds.connectAttr ( prefix +'ExtraTwist000_ADL.output', prefix + '_000_CTL.twist')
	cmds.connectAttr ( prefix +'ExtraTwist002_ADL.output', prefix + '_002_CTL.twist')

	### add _SKL single heirarchy joints
	### find number of joints in spine
	spineCRVdegree = cmds.getAttr( prefix + '_000_CRV.degree' )
	spineCRVspans = cmds.getAttr( prefix + '_000_CRV.spans' )
	totalSpineJoints = spineCRVdegree + spineCRVspans
	
	### zero out joint orient of _JNTs
	for i in range(0,totalSpineJoints):
		cmds.setAttr( prefix + '_' + str(i).zfill(3) + '_JNT.jointOrient', 0,0,0 )
	
	### constrain SKL to JNT
	for i in range(0,totalSpineJoints):
		cmds.select( clear = True )
		cmds.joint( name = prefix + '_' + str(i).zfill(3) + '_SKL' )
		cmds.parentConstraint( prefix + '_' + str(i).zfill(3) + '_JNT', prefix + '_' + str(i).zfill(3) + '_SKL' )
		cmds.delete( prefix + '_' + str(i).zfill(3) + '_SKL_parentConstraint1' )
		cmds.setAttr( prefix + '_' + str(i).zfill(3) + '_SKL.rotate', 0,0,0 )
		cmds.parentConstraint( prefix + '_' + str(i).zfill(3) + '_JNT', prefix + '_' + str(i).zfill(3) + '_SKL' )
	
	### parent _SKL hierarchy
	for i in range(0,(totalSpineJoints -1)):
		cmds.parent( prefix + '_' + str(i + 1).zfill(3) + '_SKL', prefix + '_' + str(i).zfill(3) + '_SKL' )
	### orient _SKL hierarchy
	for i in range(0,(totalSpineJoints -2)):
		cmds.setAttr( prefix + '_' + str(i).zfill(3) + '_SKL.jointOrient', 0,0,0 )
		jointX = cmds.getAttr( prefix + '_' + str(i).zfill(3) + '_SKL.rotateX' )
		jointY = cmds.getAttr( prefix + '_' + str(i).zfill(3) + '_SKL.rotateY' )
		jointZ = cmds.getAttr( prefix + '_' + str(i).zfill(3) + '_SKL.rotateZ' )
		cmds.setAttr( prefix + '_' + str(i).zfill(3) + '_SKL.jointOrientX', jointX )
		cmds.setAttr( prefix + '_' + str(i).zfill(3) + '_SKL.jointOrientY', jointY )
		cmds.setAttr( prefix + '_' + str(i).zfill(3) + '_SKL.jointOrientZ', jointZ )
	
	### orient end _SKL joint to 0,0,0
	cmds.setAttr( prefix + '_' + str(totalSpineJoints -1).zfill(3) + '_SKL.jointOrient', 0,0,0 )
	
	### set rotation order of top control
	cmds.setAttr( prefix + '_002_CTL.rotateOrder', 4 )

	### rename for COG and spine CTL
	cmds.rename( prefix + '_All000_CTL', prefix + 'COG_CTL' )
	cmds.rename( prefix + '_All001_CTL', prefix + 'COG_Mid_CTL' )
	cmds.rename( prefix + '_All002_CTL', prefix + 'COG_Btm_CTL' )

	cmds.rename( prefix + '_000_CTL', prefix + 'Btm_CTL' )
	cmds.rename( prefix + '_001_CTL', prefix + 'Mid_CTL' )
	cmds.rename( prefix + '_002_CTL', prefix + 'Top_CTL' )

	### cleanup hierarchy
	cmds.parent( prefix + '_All000_GRP', prefix + '_NoTransform000_GRP' )
	cmds.parent( prefix + '_NoTransform000_GRP', world = True )
	cmds.group( em = True, name = prefix + '_Controls_GRP' )
	cmds.parent( prefix + '_CTL000_GRP', prefix + '_CTL002_GRP', prefix + '_All001_GRP', prefix + '_All002_GRP', prefix + '_All000_GRP', prefix + '_Controls_GRP' )
	cmds.parent( prefix + '_Controls_GRP', prefix + '_NoTransform000_GRP' )
	cmds.delete( prefix + '_Master000_GRP' )

	cmds.group( em = True, name = prefix + '_Rig_GRP' )
	cmds.parent( prefix + '_Rig_GRP', prefix + '_NoTransform000_GRP' )
	cmds.select( prefix + '_Joint*' + '_FOL', prefix +  '_Mid*' + '_FOL' )
	folList = cmds.ls( sl = True )
	for i in folList:
		cmds.parent( i, prefix + '_Rig_GRP' )

	cmds.select( prefix + '_Geo*' + '_GRP' )
	folList = cmds.ls( sl = True )
	for i in folList:
		cmds.parent( i, prefix + '_Rig_GRP' )

	cmds.parent( prefix + '_000_GEO', prefix + '_001_GEO', prefix + '_000_CRV', prefix + '_Rig_GRP' )
	#color controls
	colorSelection = [ prefix + 'COG_CTLShape', prefix + 'COG_Mid_CTLShape', prefix + 'COG_Btm_CTLShape', prefix + 'Btm_CTLShape', prefix + 'Mid_CTLShape', prefix + 'Top_CTLShape' ]

	for i in colorSelection:
		cmds.setAttr( i + '.overrideEnabled', 1 )
		cmds.setAttr( i + '.overrideColor', 22 )
	cmds.select( clear = True )
	
	# reset global keyframe interpolation types
	print currentIntangent
	print currentOutTangent
	
	cmds.keyTangent( itt = currentIntangent[0], g = True )
	cmds.keyTangent( ott = currentOutTangent[0], g = True )

def hideTorso(prefix):
	degree = cmds.getAttr( prefix + '_000_CRV' + '.degree' )
	span = cmds.getAttr( prefix + '_000_CRV' + '.spans' )
	pointNumber = degree + span
	points = cmds.getAttr (( prefix + '_000_CRV' + '.cv[0:'+ str(pointNumber)+']'))

	# hide rig and attributes
	#attr
	cmds.setAttr( prefix + 'COG_CTL.visibility', lock = True, keyable = False )
	cmds.setAttr( prefix + 'COG_CTL.visibility', lock = True, keyable = False )
	cmds.setAttr( prefix + 'COG_CTL.scaleX', lock = True, keyable = False )
	cmds.setAttr( prefix + 'COG_CTL.scaleY', lock = True, keyable = False )
	cmds.setAttr( prefix + 'COG_CTL.scaleZ', lock = True, keyable = False )

	cmds.setAttr( prefix + 'COG_Mid_CTL.visibility', lock = True, keyable = False )
	cmds.setAttr( prefix + 'COG_Mid_CTL.scaleX', lock = True, keyable = False )
	cmds.setAttr( prefix + 'COG_Mid_CTL.scaleY', lock = True, keyable = False )
	cmds.setAttr( prefix + 'COG_Mid_CTL.scaleZ', lock = True, keyable = False )

	cmds.setAttr( prefix + 'COG_Btm_CTL.visibility', lock = True, keyable = False )
	cmds.setAttr( prefix + 'COG_Btm_CTL.scaleX', lock = True, keyable = False )
	cmds.setAttr( prefix + 'COG_Btm_CTL.scaleY', lock = True, keyable = False )
	cmds.setAttr( prefix + 'COG_Btm_CTL.scaleZ', lock = True, keyable = False )

	cmds.setAttr( prefix + 'Btm_CTL.twist', lock = True, keyable = False )	
	cmds.setAttr( prefix + 'Btm_CTL.visibility', lock = True, keyable = False )	
	cmds.setAttr( prefix + 'Btm_CTL.scaleX', lock = True, keyable = False )
	cmds.setAttr( prefix + 'Btm_CTL.scaleY', lock = True, keyable = False )
	cmds.setAttr( prefix + 'Btm_CTL.scaleZ', lock = True, keyable = False )

	cmds.setAttr( prefix + 'Mid_CTL.visibility', lock = True, keyable = False )	
	cmds.setAttr( prefix + 'Mid_CTL.scaleX', lock = True, keyable = False )
	cmds.setAttr( prefix + 'Mid_CTL.scaleY', lock = True, keyable = False )
	cmds.setAttr( prefix + 'Mid_CTL.scaleZ', lock = True, keyable = False )

	cmds.setAttr( prefix + 'Top_CTL.twist', lock = True, keyable = False )	
	cmds.setAttr( prefix + 'Top_CTL.visibility', lock = True, keyable = False )	
	cmds.setAttr( prefix + 'Top_CTL.scaleX', lock = True, keyable = False )
	cmds.setAttr( prefix + 'Top_CTL.scaleY', lock = True, keyable = False )
	cmds.setAttr( prefix + 'Top_CTL.scaleZ', lock = True, keyable = False )

	# rig vis
	cmds.setAttr( prefix + '_000_FK.visibility', 0 )
	cmds.setAttr( prefix + '_000_GEO.visibility', 0 )
	cmds.setAttr( prefix + '_001_GEO.visibility', 0 )
	cmds.setAttr( prefix + '_000_CRV.visibility', 0 )
	cmds.setAttr( prefix + '_000_IKH.visibility', 0 )
	cmds.setAttr( prefix + '_Geo000_FK.visibility', 0 )
	cmds.setAttr( prefix + '_Geo001_FK.visibility', 0 )
	cmds.setAttr( prefix + '_Geo002_FK.visibility', 0 )
	cmds.setAttr( prefix + '_Mid000_FOLShape.visibility', 0 )
	count = 0
	for i in range (0, pointNumber):
		cmds.setAttr( prefix + '_Joint_' + str(count).zfill(3) + '_FOL.visibility', 0 )
		count +=1

buildSpine(prefix)
hideTorso(prefix)