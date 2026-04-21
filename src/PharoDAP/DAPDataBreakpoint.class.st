Class {
	#name : 'DAPDataBreakpoint',
	#superclass : 'DAPJsonableObject',
	#instVars : [
		'dataId',
		'accessType',
		'condition',
		'hitCondition'
	],
	#category : 'PharoDAP-Types',
	#package : 'PharoDAP',
	#tag : 'Types'
}

{ #category : 'accessing' }
DAPDataBreakpoint >> accessType [

	^ accessType
]

{ #category : 'accessing' }
DAPDataBreakpoint >> accessType: aString [
	
	"aString := 'read' | 'write' | 'readWrite'"
	accessType := aString
]

{ #category : 'converting' }
DAPDataBreakpoint >> asDAPJSON [

	| dict |
	dict := super asDAPJSON.
	dict at: #dataId put: dataId.

	condition ifNotNil: [ dict at: #condition put: condition ].
	hitCondition ifNotNil: [ dict at: #hitCondition put: hitCondition ].
	accessType ifNotNil: [ dict at: #accessType put: accessType ].

	^ dict
]

{ #category : 'accessing' }
DAPDataBreakpoint >> condition [

	^ condition
]

{ #category : 'accessing' }
DAPDataBreakpoint >> condition: aString [

	condition := aString
]

{ #category : 'accessing' }
DAPDataBreakpoint >> dataId [

	^ dataId
]

{ #category : 'accessing' }
DAPDataBreakpoint >> dataId: aString [
	"An id representing the data. This id is returned from the `dataBreakpointInfo` request."

	dataId := aString
]

{ #category : 'accessing' }
DAPDataBreakpoint >> hitCondition [

	^ hitCondition
]

{ #category : 'accessing' }
DAPDataBreakpoint >> hitCondition: aString [

	hitCondition := aString
]
