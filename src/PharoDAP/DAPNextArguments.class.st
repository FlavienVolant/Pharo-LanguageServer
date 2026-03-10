Class {
	#name : 'DAPNextArguments',
	#superclass : 'DAPRequestArguments',
	#instVars : [
		'threadId',
		'singleThread',
		'granularity'
	],
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'converting' }
DAPNextArguments >> asDAPJSON [

	| dict |
	dict := super asDAPJSON.
	
	dict at: #threadId put: self threadId.
	self singleThread ifNotNil: [ dict at: #singleThread put: self singleThread ].
	self granularity ifNotNil: [ dict at: #granularity put: self granularity asDAPJSON ].

	^ dict
]

{ #category : 'accessing' }
DAPNextArguments >> granularity [

	^ granularity
]

{ #category : 'accessing' }
DAPNextArguments >> granularity: aDAPSteppingGranularity [

	granularity := aDAPSteppingGranularity
]

{ #category : 'accessing' }
DAPNextArguments >> singleThread [

	^ singleThread
]

{ #category : 'accessing' }
DAPNextArguments >> singleThread: aBoolean [

	singleThread := aBoolean
]

{ #category : 'accessing' }
DAPNextArguments >> threadId [

	^ threadId
]

{ #category : 'accessing' }
DAPNextArguments >> threadId: aNumber [

	threadId := aNumber
]
