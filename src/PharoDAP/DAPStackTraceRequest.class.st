Class {
	#name : 'DAPStackTraceRequest',
	#superclass : 'DAPRequest',
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'initialization' }
DAPStackTraceRequest >> initialize [
	super initialize.
	command := 'stackTrace'
]
