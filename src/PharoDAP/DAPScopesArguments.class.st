Class {
	#name : 'DAPScopesArguments',
	#superclass : 'DAPRequestArguments',
	#instVars : [
		'frameId'
	],
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'converting' }
DAPScopesArguments >> asDAPJSON [

	| dict |
	dict := super asDAPJSON.
	
	dict at: #frameId put: self frameId.	

	^ dict
]

{ #category : 'accessing' }
DAPScopesArguments >> frameId [

	^ frameId
]

{ #category : 'accessing' }
DAPScopesArguments >> frameId: aNumber [

	frameId := aNumber
]
