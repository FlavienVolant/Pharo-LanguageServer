Class {
	#name : 'DAPDataBeakpoint',
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
DAPDataBeakpoint >> accessType [

	^ accessType
]

{ #category : 'accessing' }
DAPDataBeakpoint >> accessType: aString [
	
	"aString := 'read' | 'write' | 'readWrite'"
	accessType := aString
]

{ #category : 'converting' }
DAPDataBeakpoint >> asDAPJSON [

	| dict |
	dict := super asDAPJSON.
	dict at: #dataId put: dataId.

	condition ifNotNil: [ dict at: #condition put: condition ].
	hitCondition ifNotNil: [ dict at: #hitCondition put: hitCondition ].
	accessType ifNotNil: [ dict at: #accessType put: accessType ].

	^ dict
]

{ #category : 'accessing' }
DAPDataBeakpoint >> condition [

	^ condition
]

{ #category : 'accessing' }
DAPDataBeakpoint >> condition: aString [

	condition := aString
]

{ #category : 'accessing' }
DAPDataBeakpoint >> dataId [

	^ dataId
]

{ #category : 'accessing' }
DAPDataBeakpoint >> dataId: aString [
	"An id representing the data. This id is returned from the `dataBreakpointInfo` request."

	dataId := aString
]

{ #category : 'accessing' }
DAPDataBeakpoint >> hitCondition [

	^ hitCondition
]

{ #category : 'accessing' }
DAPDataBeakpoint >> hitCondition: aString [

	hitCondition := aString
]
