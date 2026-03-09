Class {
	#name : 'DAPSetBreakpointsArguments',
	#superclass : 'DAPRequestArguments',
	#instVars : [
		'source',
		'breakpoints',
		'lines',
		'sourceModified'
	],
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'converting' }
DAPSetBreakpointsArguments >> asDAPJSON [

	| dict |
	dict := super asDAPJSON.
	
	dict at: #source put: self source asDAPJSON.
	self breakpoints ifNotNil: [ dict at: #breakpoints put: self breakpoints asDAPJSON ].
	self lines ifNotNil: [ dict at: #lines put: self lines ].
	self sourceModified ifNotNil: [ dict at: #sourceModified put: self sourceModified ].
	

	^ dict
]

{ #category : 'accessing' }
DAPSetBreakpointsArguments >> breakpoints [

	^ breakpoints
]

{ #category : 'accessing' }
DAPSetBreakpointsArguments >> breakpoints: aCollectionOfDAPSourceBreakpoint [

	breakpoints := aCollectionOfDAPSourceBreakpoint
]

{ #category : 'accessing' }
DAPSetBreakpointsArguments >> lines [

	^ lines
]

{ #category : 'accessing' }
DAPSetBreakpointsArguments >> lines: aCollectionOfNumber [

	lines := aCollectionOfNumber
]

{ #category : 'accessing' }
DAPSetBreakpointsArguments >> source [

	^ source
]

{ #category : 'accessing' }
DAPSetBreakpointsArguments >> source: aDAPSource [

	source := aDAPSource
]

{ #category : 'accessing' }
DAPSetBreakpointsArguments >> sourceModified [

	^ sourceModified
]

{ #category : 'accessing' }
DAPSetBreakpointsArguments >> sourceModified: aBoolean [

	sourceModified := aBoolean
]
