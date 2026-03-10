Class {
	#name : 'DAPStepInArguments',
	#superclass : 'DAPRequestArguments',
	#instVars : [
		'threadId',
		'singleThread',
		'targetId',
		'granularity'
	],
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'converting' }
DAPStepInArguments >> asDAPJSON [

	| dict |
	dict := super asDAPJSON.
	
	dict at: #threadId put: self threadId asDAPJSON.
	self singleThread ifNotNil: [ dict at: #singleThread put: self singleThread ].
	self targetId ifNotNil: [ dict at: #targetId put: self targetId ].
	self granularity ifNotNil: [ dict at: #granularity put: self granularity asDAPJSON ].

	^ dict
]

{ #category : 'accessing' }
DAPStepInArguments >> granularity [

	^ granularity
]

{ #category : 'accessing' }
DAPStepInArguments >> granularity: aDAPSteppingGranularity [

	granularity := aDAPSteppingGranularity
]

{ #category : 'accessing' }
DAPStepInArguments >> singleThread [

	^ singleThread
]

{ #category : 'accessing' }
DAPStepInArguments >> singleThread: aBoolean [

	singleThread := aBoolean
]

{ #category : 'accessing' }
DAPStepInArguments >> targetId [

	^ targetId
]

{ #category : 'accessing' }
DAPStepInArguments >> targetId: aNumber [

	targetId := aNumber
]

{ #category : 'accessing' }
DAPStepInArguments >> threadId [

	^ threadId
]

{ #category : 'accessing' }
DAPStepInArguments >> threadId: aNumber [

	threadId := aNumber
]
