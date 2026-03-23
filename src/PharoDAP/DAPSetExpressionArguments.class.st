Class {
	#name : 'DAPSetExpressionArguments',
	#superclass : 'DAPRequestArguments',
	#instVars : [
		'expression',
		'value',
		'frameId',
		'format'
	],
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'converting' }
DAPSetExpressionArguments >> asDAPJSON [

	| dict |
	dict := super asDAPJSON.

	dict at: #expression put: expression.
	dict at: #value put: value.
	frameId ifNotNil: [ dict at: #frameId put: frameId ].
	format ifNotNil: [ dict at: #format put: format asDAPJSON ].

	^ dict
]

{ #category : 'accessing' }
DAPSetExpressionArguments >> expression [

	^ expression
]

{ #category : 'accessing' }
DAPSetExpressionArguments >> expression: aString [
	"The l-value expression to assign to."
	expression := aString
]

{ #category : 'accessing' }
DAPSetExpressionArguments >> format [

	^ format
]

{ #category : 'accessing' }
DAPSetExpressionArguments >> format: aValueFormat [
	"Specifies how the resulting value should be formatted."

	format := aValueFormat
]

{ #category : 'accessing' }
DAPSetExpressionArguments >> frameId [

	^ frameId
]

{ #category : 'accessing' }
DAPSetExpressionArguments >> frameId: aNumber [
	"
	Evaluate the expressions in the scope of this stack frame. If not
   specified, the expressions are evaluated in the global scope.
	"

	frameId := aNumber
]

{ #category : 'accessing' }
DAPSetExpressionArguments >> value: anObject [

	value := anObject
]

{ #category : 'accessing' }
DAPSetExpressionArguments >> valueDAP [

	^ value
]

{ #category : 'accessing' }
DAPSetExpressionArguments >> valueDAP: aString [
	"The value expression to assign to the l-value expression."

	value := aString
]
