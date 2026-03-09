Class {
	#name : 'DAPSetBreakpointsRequest',
	#superclass : 'DAPRequest',
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'initialization' }
DAPSetBreakpointsRequest >> initialize [
	super initialize.
	command := 'setBreakpoints'
]
