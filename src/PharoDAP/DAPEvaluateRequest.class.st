Class {
	#name : 'DAPEvaluateRequest',
	#superclass : 'DAPRequest',
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'initialization' }
DAPEvaluateRequest >> initialize [
	super initialize.
	command := 'evaluate'
]
