Class {
	#name : 'DAPSetFunctionBreakpointsRequest',
	#superclass : 'DAPRequest',
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'initialization' }
DAPSetFunctionBreakpointsRequest >> initialize [

	super initialize.
	command := 'setFunctionBreakpoints'
]
