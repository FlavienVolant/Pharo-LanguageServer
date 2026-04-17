Class {
	#name : 'DAPSetDataBreakpointsRequest',
	#superclass : 'DAPRequest',
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'initialization' }
DAPSetDataBreakpointsRequest >> initialize [ 
	
	super initialize.
	command := 'setDataBreakpoints'
]
