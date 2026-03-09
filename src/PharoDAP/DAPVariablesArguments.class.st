Class {
	#name : 'DAPVariablesArguments',
	#superclass : 'DAPRequestArguments',
	#instVars : [
		'variablesReference',
		'filter',
		'start',
		'count',
		'format'
	],
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'converting' }
DAPVariablesArguments >> asDAPJSON [

	| dict |
	dict := super asDAPJSON.
	
	dict at: #variablesReference put: self variablesReference.
	self filter ifNotNil: [ dict at: #filter put: self filter ].
	self start ifNotNil: [ dict at: #start put: self start ].
	self count ifNotNil: [ dict at: #count put: self count ].
	self format ifNotNil: [ dict at: #format put: self format asDAPJSON ].

	^ dict
]

{ #category : 'accessing' }
DAPVariablesArguments >> count [

	^ count
]

{ #category : 'accessing' }
DAPVariablesArguments >> count: aNumber [

	count := aNumber
]

{ #category : 'accessing' }
DAPVariablesArguments >> filter [

	^ filter
]

{ #category : 'accessing' }
DAPVariablesArguments >> filter: aString [

	filter := aString
]

{ #category : 'accessing' }
DAPVariablesArguments >> format [

	^ format
]

{ #category : 'accessing' }
DAPVariablesArguments >> format: aDAPValueFormat [

	format := aDAPValueFormat
]

{ #category : 'accessing' }
DAPVariablesArguments >> start [

	^ start
]

{ #category : 'accessing' }
DAPVariablesArguments >> start: aNumber [

	start := aNumber
]

{ #category : 'accessing' }
DAPVariablesArguments >> variablesReference [

	^ variablesReference
]

{ #category : 'accessing' }
DAPVariablesArguments >> variablesReference: aNumber [

	variablesReference := aNumber
]
