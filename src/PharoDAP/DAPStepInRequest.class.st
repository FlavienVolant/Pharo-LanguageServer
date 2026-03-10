Class {
	#name : 'DAPStepInRequest',
	#superclass : 'DAPRequest',
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'initialization' }
DAPStepInRequest >> initialize [
	super initialize.
	command := 'stepIn'
]
