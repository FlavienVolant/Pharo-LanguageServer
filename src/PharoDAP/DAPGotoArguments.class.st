Class {
	#name : 'DAPGotoArguments',
	#superclass : 'DAPRequestArguments',
	#instVars : [
		'threadId',
		'targetId'
	],
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'converting' }
DAPGotoArguments >> asDAPJSON [

	| dict |
	dict := super asDAPJSON.

	dict at: #targetId put: targetId.
	dict at: #threadId put: threadId.

	^ dict
]

{ #category : 'accessing' }
DAPGotoArguments >> targetId [

	^ targetId
]

{ #category : 'accessing' }
DAPGotoArguments >> targetId: aNumber [
	"Set the goto target for this thread."

	targetId := aNumber
]

{ #category : 'accessing' }
DAPGotoArguments >> threadId [

	^ threadId
]

{ #category : 'accessing' }
DAPGotoArguments >> threadId: aNumber [
	"The location where the debuggee will continue to run."

	threadId := aNumber
]
