Class {
	#name : 'DAPStepOutRequest',
	#superclass : 'DAPRequest',
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'initialization' }
DAPStepOutRequest >> initialize [

	super initialize.
	command := 'stepOut'
]
