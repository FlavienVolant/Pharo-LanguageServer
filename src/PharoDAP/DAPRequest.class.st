Class {
	#name : 'DAPRequest',
	#superclass : 'DAPMessage',
	#instVars : [
		'command',
		'arguments'
	],
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'instance creation' }
DAPRequest class >> newFromJSON: aJSONObject [
	| deserializeMe |
	deserializeMe := self new
		seq: (aJSONObject at: #seq);
		command: (aJSONObject at: #command).
	aJSONObject
		at: #arguments
		ifPresent: [ :args | deserializeMe arguments: args ].
	^ deserializeMe
]

{ #category : 'instance creation' }
DAPRequest class >> withArguments:aRequestArguments [
	^ self new arguments: aRequestArguments; yourself
]

{ #category : 'accessing' }
DAPRequest >> arguments [
	^ arguments
]

{ #category : 'accessing' }
DAPRequest >> arguments: anObject [
	arguments := anObject
]

{ #category : 'converting' }
DAPRequest >> asDAPJSON [
	| dic |
	dic := super asDAPJSON.
	self command ifNotNil: [ dic add: #command -> self command ].
	self arguments ifNotNil: [ dic add: #arguments -> self arguments asDAPJSON ].
	^ dic
]

{ #category : 'accessing' }
DAPRequest >> command [
	^ command
]

{ #category : 'accessing' }
DAPRequest >> command: anObject [
	command := anObject
]

{ #category : 'initialization' }
DAPRequest >> convertErrorToResponse: anError [
	^ DAPErrorResponse new 
]

{ #category : 'initialization' }
DAPRequest >> initialize [
	super initialize.
	type := 'request'
]
