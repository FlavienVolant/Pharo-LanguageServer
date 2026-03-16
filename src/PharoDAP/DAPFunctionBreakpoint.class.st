Class {
	#name : 'DAPFunctionBreakpoint',
	#superclass : 'DAPJsonableObject',
	#instVars : [
		'name',
		'condition',
		'hitCondition'
	],
	#category : 'PharoDAP-Types',
	#package : 'PharoDAP',
	#tag : 'Types'
}

{ #category : 'converting' }
DAPFunctionBreakpoint >> asDAPJSON [

	| dict |
	dict := super asDAPJSON.
	dict at: #name put: name.

	condition ifNotNil: [ dict at: #condition put: condition ].
	hitCondition ifNotNil: [ dict at: #hitCondition put: hitCondition ].

	^ dict
]

{ #category : 'accessing' }
DAPFunctionBreakpoint >> condition [

	^ condition
]

{ #category : 'accessing' }
DAPFunctionBreakpoint >> condition: aString [
	"
	An expression for conditional breakpoints.
   It is only honored by a debug adapter if the corresponding capability
   `supportsConditionalBreakpoints` is true.
	"

	condition := aString
]

{ #category : 'accessing' }
DAPFunctionBreakpoint >> hitCondition [

	^ hitCondition
]

{ #category : 'accessing' }
DAPFunctionBreakpoint >> hitCondition: aString [
	"
	An expression that controls how many hits of the breakpoint are ignored.
   The debug adapter is expected to interpret the expression as needed.
   The attribute is only honored by a debug adapter if the corresponding
   capability `supportsHitConditionalBreakpoints` is true.
	"

	hitCondition := aString
]

{ #category : 'accessing' }
DAPFunctionBreakpoint >> name [

	^ name
]

{ #category : 'accessing' }
DAPFunctionBreakpoint >> name: aString [
	"The name of the function."

	name := aString
]
