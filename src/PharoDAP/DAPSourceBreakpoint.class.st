Class {
	#name : 'DAPSourceBreakpoint',
	#superclass : 'DAPJsonableObject',
	#instVars : [
		'line',
		'column',
		'condition',
		'hitCondition',
		'logMessage',
		'mode'
	],
	#category : 'PharoDAP-Types',
	#package : 'PharoDAP',
	#tag : 'Types'
}

{ #category : 'converting' }
DAPSourceBreakpoint >> asDAPJSON [
	| dict |
	
	dict := super asDAPJSON.
	dict at: #line put: self line.
	
	self column ifNotNil: [ dict at: #column put: self column ] .
	self condition ifNotNil: [ dict at: #condition put: self condition ] .
	self hitCondition ifNotNil: [ dict at: #hitCondition put: self hitCondition ] .
	self logMessage ifNotNil: [ dict at: #logMessage put: self logMessage ] .
	self mode ifNotNil: [ dict at: #mode put: self mode ] .
	
	^ dict
]

{ #category : 'accessing' }
DAPSourceBreakpoint >> column [

	^ column
]

{ #category : 'accessing' }
DAPSourceBreakpoint >> column: aNumber [

	column := aNumber
]

{ #category : 'accessing' }
DAPSourceBreakpoint >> condition [

	^ condition
]

{ #category : 'accessing' }
DAPSourceBreakpoint >> condition: aString [

	condition := aString
]

{ #category : 'accessing' }
DAPSourceBreakpoint >> hitCondition [

	^ hitCondition
]

{ #category : 'accessing' }
DAPSourceBreakpoint >> hitCondition: aString [

	hitCondition := aString
]

{ #category : 'accessing' }
DAPSourceBreakpoint >> line [

	^ line
]

{ #category : 'accessing' }
DAPSourceBreakpoint >> line: aNumber [

	line := aNumber
]

{ #category : 'accessing' }
DAPSourceBreakpoint >> logMessage [

	^ logMessage
]

{ #category : 'accessing' }
DAPSourceBreakpoint >> logMessage: aString [

	logMessage := aString
]

{ #category : 'accessing' }
DAPSourceBreakpoint >> mode [

	^ mode
]

{ #category : 'accessing' }
DAPSourceBreakpoint >> mode: aString [

	mode := aString
]
