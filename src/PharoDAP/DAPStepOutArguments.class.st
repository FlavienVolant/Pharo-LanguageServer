Class {
	#name : 'DAPStepOutArguments',
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
DAPStepOutArguments >> asDAPJSON [

	| dict |
	dict := super asDAPJSON.

	dict at: #threadId put: self threadId asDAPJSON.
	self singleThread ifNotNil: [
		dict at: #singleThread put: self singleThread ].
	self granularity ifNotNil: [
		dict at: #granularity put: self granularity asDAPJSON ].

	^ dict
]

{ #category : 'accessing' }
DAPStepOutArguments >> granularity [

	^ granularity
]

{ #category : 'accessing' }
DAPStepOutArguments >> granularity: aDAPSteppingGranularity [

	granularity := aDAPSteppingGranularity
]

{ #category : 'accessing' }
DAPStepOutArguments >> singleThread [

	^ singleThread
]

{ #category : 'accessing' }
DAPStepOutArguments >> singleThread: aBoolean [

	singleThread := aBoolean
]

{ #category : 'accessing' }
DAPStepOutArguments >> threadId [

	^ threadId
]

{ #category : 'accessing' }
DAPStepOutArguments >> threadId: aNumber [

	threadId := aNumber
]
