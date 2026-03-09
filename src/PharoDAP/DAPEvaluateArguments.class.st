Class {
	#name : 'DAPEvaluateArguments',
	#superclass : 'DAPRequestArguments',
	#instVars : [
		'expression',
		'frameId',
		'line',
		'column',
		'source',
		'context',
		'format'
	],
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'converting' }
DAPEvaluateArguments >> asDAPJSON [
	| dict |
	dict := super asDAPJSON.

	dict at: #expression put: self expression.
	self frameId ifNotNil: [ dict at: #frameId put: self frameId ].
	self line ifNotNil: [ dict at: #line put: self line ].
	self column ifNotNil: [ dict at: #column put: self column ].
	self source ifNotNil: [ dict at: #source put: self source asDAPJSON ].
	self context ifNotNil: [ dict at: #context put: self context ].
	self format ifNotNil: [ dict at: #format put: self format asDAPJSON ].
	
	^ dict
]

{ #category : 'accessing' }
DAPEvaluateArguments >> column [

	^ column
]

{ #category : 'accessing' }
DAPEvaluateArguments >> column: aNumber [

	column := aNumber
]

{ #category : 'accessing' }
DAPEvaluateArguments >> context [

	^ context
]

{ #category : 'accessing' }
DAPEvaluateArguments >> context: aString [

	context := aString
]

{ #category : 'accessing' }
DAPEvaluateArguments >> expression [

	^ expression
]

{ #category : 'accessing' }
DAPEvaluateArguments >> expression: aString [

	expression := aString
]

{ #category : 'accessing' }
DAPEvaluateArguments >> format [

	^ format
]

{ #category : 'accessing' }
DAPEvaluateArguments >> format: aDAPValueFormat [

	format := aDAPValueFormat
]

{ #category : 'accessing' }
DAPEvaluateArguments >> frameId [

	^ frameId
]

{ #category : 'accessing' }
DAPEvaluateArguments >> frameId: aNumber [

	frameId := aNumber
]

{ #category : 'accessing' }
DAPEvaluateArguments >> line [

	^ line
]

{ #category : 'accessing' }
DAPEvaluateArguments >> line: aNumber [

	line := aNumber
]

{ #category : 'accessing' }
DAPEvaluateArguments >> source [

	^ source
]

{ #category : 'accessing' }
DAPEvaluateArguments >> source: aDAPSource [

	source := aDAPSource
]
