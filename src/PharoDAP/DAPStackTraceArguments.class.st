Class {
	#name : 'DAPStackTraceArguments',
	#superclass : 'DAPRequestArguments',
	#instVars : [
		'threadId',
		'startFrame',
		'levels',
		'format'
	],
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'converting' }
DAPStackTraceArguments >> asDAPJSON [

	| dict |
	dict := super asDAPJSON.
	
	dict at: #threadId put: self threadId asDAPJSON.
	self startFrame ifNotNil: [ dict at: #startFrame put: self startFrame ].
	self levels ifNotNil: [ dict at: #levels put: self levels ].
	self format ifNotNil: [ dict at: #format put: self format asDAPJSON ].

	^ dict
]

{ #category : 'accessing' }
DAPStackTraceArguments >> format [

	^ format
]

{ #category : 'accessing' }
DAPStackTraceArguments >> format: aDAPStackFrameFormat [

	format := aDAPStackFrameFormat
]

{ #category : 'accessing' }
DAPStackTraceArguments >> levels [

	^ levels
]

{ #category : 'accessing' }
DAPStackTraceArguments >> levels: aNumber [

	levels := aNumber
]

{ #category : 'accessing' }
DAPStackTraceArguments >> startFrame [

	^ startFrame
]

{ #category : 'accessing' }
DAPStackTraceArguments >> startFrame: aNumber [

	startFrame := aNumber
]

{ #category : 'accessing' }
DAPStackTraceArguments >> threadId [

	^ threadId
]

{ #category : 'accessing' }
DAPStackTraceArguments >> threadId: aNumber [

	threadId := aNumber
]
