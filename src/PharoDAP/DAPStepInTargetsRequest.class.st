Class {
	#name : 'DAPStepInTargetsRequest',
	#superclass : 'DAPRequest',
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'initialization' }
DAPStepInTargetsRequest >> initialize [

	super initialize.
	command := 'stepInTargets'
]
