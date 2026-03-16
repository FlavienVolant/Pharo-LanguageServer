Class {
	#name : 'DAPSetFunctionBreakpointsArguments',
	#superclass : 'DAPRequestArguments',
	#instVars : [
		'breakpoints'
	],
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'converting' }
DAPSetFunctionBreakpointsArguments >> asDAPJSON [

	| dict |
	dict := super asDAPJSON.

	dict at: #breakpoints put: breakpoints asDAPJSON.

	^ dict
]

{ #category : 'accessing' }
DAPSetFunctionBreakpointsArguments >> breakpoints [

	^ breakpoints
]

{ #category : 'accessing' }
DAPSetFunctionBreakpointsArguments >> breakpoints: aSetOfDAPFunctionBreakpoint [

	breakpoints := aSetOfDAPFunctionBreakpoint
]
