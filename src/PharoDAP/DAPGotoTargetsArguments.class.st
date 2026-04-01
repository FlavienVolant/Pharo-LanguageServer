Class {
	#name : 'DAPGotoTargetsArguments',
	#superclass : 'DAPRequestArguments',
	#instVars : [
		'source',
		'line',
		'column'
	],
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'converting' }
DAPGotoTargetsArguments >> asDAPJSON [

	| dict |
	dict := super asDAPJSON.

	dict at: #source put: source asDAPJSON.
	dict at: #line put: line.
	column ifNotNil: [ dict at: #column put: column ].

	^ dict
]

{ #category : 'accessing' }
DAPGotoTargetsArguments >> column [

	^ column
]

{ #category : 'accessing' }
DAPGotoTargetsArguments >> column: aNumber [

	column := aNumber
]

{ #category : 'accessing' }
DAPGotoTargetsArguments >> line [

	^ line
]

{ #category : 'accessing' }
DAPGotoTargetsArguments >> line: aNumber [

	line := aNumber
]

{ #category : 'accessing' }
DAPGotoTargetsArguments >> source [

	^ source
]

{ #category : 'accessing' }
DAPGotoTargetsArguments >> source: aDAPSource [

	source := aDAPSource
]
