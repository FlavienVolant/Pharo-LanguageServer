Class {
	#name : 'DAPGotoTargetsRequest',
	#superclass : 'DAPRequest',
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'initialization' }
DAPGotoTargetsRequest >> initialize [

	super initialize.
	command := 'gotoTargets'
]
