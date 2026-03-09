Class {
	#name : 'DAPLaunchRequestArguments',
	#superclass : 'DAPJsonableObject',
	#instVars : [
		'noDebug',
		'__restart'
	],
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'accessing' }
DAPLaunchRequestArguments >> __restart [
	^ __restart
]

{ #category : 'accessing' }
DAPLaunchRequestArguments >> __restart: anObject [
	__restart := anObject
]

{ #category : 'converting' }
DAPLaunchRequestArguments >> asDAPJSON [

	| dict |
	dict := super asDAPJSON.
	
	self __restart ifNotNil: [ dict at: #__restart put: self __restart asDAPJSON ].
	self noDebug ifNotNil: [ dict at: #noDebug put: self noDebug ].

	^ dict
]

{ #category : 'accessing' }
DAPLaunchRequestArguments >> noDebug [
	^ noDebug
]

{ #category : 'accessing' }
DAPLaunchRequestArguments >> noDebug: anObject [
	noDebug := anObject
]
