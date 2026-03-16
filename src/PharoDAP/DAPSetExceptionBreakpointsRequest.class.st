Class {
	#name : 'DAPSetExceptionBreakpointsRequest',
	#superclass : 'DAPRequest',
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'initialization' }
DAPSetExceptionBreakpointsRequest >> initialize [ 
	super initialize.
	command := 'setExceptionBreakpoints'
]
