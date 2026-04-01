Class {
	#name : 'DAPStepInTargetsArguments',
	#superclass : 'DAPRequestArguments',
	#instVars : [
		'frameId'
	],
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'converting' }
DAPStepInTargetsArguments >> asDAPJSON [

	| dict |
	dict := super asDAPJSON.

	dict at: #frameId put: frameId.

	^ dict
]

{ #category : 'accessing' }
DAPStepInTargetsArguments >> frameId [

	^ frameId
]

{ #category : 'accessing' }
DAPStepInTargetsArguments >> frameId: aNumber [

	frameId := aNumber
]
