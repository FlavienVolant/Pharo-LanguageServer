Class {
	#name : 'DAPSetExceptionBreakpointsArguments',
	#superclass : 'DAPRequestArguments',
	#instVars : [
		'filters',
		'filterOptions',
		'exceptionOptions'
	],
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'converting' }
DAPSetExceptionBreakpointsArguments >> asDAPJSON [

	| dict |
	dict := super asDAPJSON.
	
	dict at: #filters put: filters asDAPJSON.
	filterOptions ifNotNil: [ dict at: #filterOptions put: filterOptions asDAPJSON ].
	exceptionOptions ifNotNil: [ dict at: #lines put: exceptionOptions ].
	
	^ dict
]

{ #category : 'accessing' }
DAPSetExceptionBreakpointsArguments >> exceptionOptions [

	^ exceptionOptions
]

{ #category : 'accessing' }
DAPSetExceptionBreakpointsArguments >> exceptionOptions: aSetOfExceptionFilterOptions [

	exceptionOptions := aSetOfExceptionFilterOptions
]

{ #category : 'accessing' }
DAPSetExceptionBreakpointsArguments >> filterOptions [

	^ filterOptions
]

{ #category : 'accessing' }
DAPSetExceptionBreakpointsArguments >> filterOptions: aSetOfExceptionOptions [

	filterOptions := aSetOfExceptionOptions
]

{ #category : 'accessing' }
DAPSetExceptionBreakpointsArguments >> filters [

	^ filters
]

{ #category : 'accessing' }
DAPSetExceptionBreakpointsArguments >> filters: aSetOfString [

	filters := aSetOfString
]
