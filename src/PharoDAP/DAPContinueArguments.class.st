Class {
	#name : 'DAPContinueArguments',
	#superclass : 'DAPRequestArguments',
	#instVars : [
		'threadId',
		'singleThread'
	],
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'converting' }
DAPContinueArguments >> asDAPJSON [

	| dict |
	dict := super asDAPJSON.

	dict at: #threadId put: threadId.
	singleThread ifNotNil: [ dict at: #singleThread put: singleThread ].

	^ dict
]

{ #category : 'accessing' }
DAPContinueArguments >> singleThread [

	^ singleThread
]

{ #category : 'accessing' }
DAPContinueArguments >> singleThread: aBoolean [
	"
	If this flag is true, execution is resumed only for the thread with given
	`threadId`.
	"

	singleThread := aBoolean
]

{ #category : 'accessing' }
DAPContinueArguments >> threadId [

	^ threadId
]

{ #category : 'accessing' }
DAPContinueArguments >> threadId: aNumber [
	"
	Specifies the active thread. If the debug adapter supports single thread
   execution (see `supportsSingleThreadExecutionRequests`) and the argument
   `singleThread` is true, only the thread with this ID is resumed.
	"

	threadId := aNumber
]
