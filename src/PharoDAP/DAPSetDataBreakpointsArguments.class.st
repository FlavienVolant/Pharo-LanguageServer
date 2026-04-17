Class {
	#name : 'DAPSetDataBreakpointsArguments',
	#superclass : 'DAPRequestArguments',
	#instVars : [
		'breakpoints'
	],
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'converting' }
DAPSetDataBreakpointsArguments >> asDAPJSON [

	| dict |
	dict := super asDAPJSON.

	dict at: #breakpoints put: breakpoints asDAPJSON.

	^ dict
]

{ #category : 'accessing' }
DAPSetDataBreakpointsArguments >> breakpoints [

	^ breakpoints
]

{ #category : 'accessing' }
DAPSetDataBreakpointsArguments >> breakpoints: aSetOfDAPDataBreakpoint [

	breakpoints := aSetOfDAPDataBreakpoint
]
