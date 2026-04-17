Class {
	#name : 'DAPDataBreakpointInfoArguments',
	#superclass : 'DAPRequestArguments',
	#instVars : [
		'variablesReference',
		'name',
		'frameId',
		'bytes',
		'asAddress',
		'mode'
	],
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'accessing' }
DAPDataBreakpointInfoArguments >> asAddress [

	^ asAddress
]

{ #category : 'accessing' }
DAPDataBreakpointInfoArguments >> asAddress: aBoolean [

	asAddress := aBoolean
]

{ #category : 'converting' }
DAPDataBreakpointInfoArguments >> asDAPJSON [

	| dict |
	dict := super asDAPJSON.

	dict at: 'name' put: name.
	variablesReference ifNotNil: [
		dict at: 'variablesReference' put: variablesReference ].
	frameId ifNotNil: [ dict at: 'frameId' put: frameId ].
	bytes ifNotNil: [ dict at: 'bytes' put: bytes ].
	asAddress ifNotNil: [ dict at: 'asAddress' put: asAddress ].
	mode ifNotNil: [ dict at: 'mode' put: mode ].

	^ dict
]

{ #category : 'accessing' }
DAPDataBreakpointInfoArguments >> bytes [

	^ bytes
]

{ #category : 'accessing' }
DAPDataBreakpointInfoArguments >> bytes: aNumber [

	bytes := aNumber
]

{ #category : 'accessing' }
DAPDataBreakpointInfoArguments >> frameId [

	^ frameId
]

{ #category : 'accessing' }
DAPDataBreakpointInfoArguments >> frameId: aNumber [

	frameId := aNumber
]

{ #category : 'accessing' }
DAPDataBreakpointInfoArguments >> mode [

	^ mode
]

{ #category : 'accessing' }
DAPDataBreakpointInfoArguments >> mode: aString [

	mode := aString
]

{ #category : 'accessing' }
DAPDataBreakpointInfoArguments >> name [

	^ name
]

{ #category : 'accessing' }
DAPDataBreakpointInfoArguments >> name: aString [

	name := aString
]

{ #category : 'accessing' }
DAPDataBreakpointInfoArguments >> variablesReference [

	^ variablesReference
]

{ #category : 'accessing' }
DAPDataBreakpointInfoArguments >> variablesReference: aNumber [

	variablesReference := aNumber
]
