Class {
	#name : 'DAPContinueRequest',
	#superclass : 'DAPRequest',
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'initialization' }
DAPContinueRequest >> initialize [

	super initialize.
	command := 'continue'
]
