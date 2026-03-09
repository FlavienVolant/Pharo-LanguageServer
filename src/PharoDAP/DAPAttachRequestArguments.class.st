Class {
	#name : 'DAPAttachRequestArguments',
	#superclass : 'DAPRequestArguments',
	#instVars : [
		'__restart'
	],
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'accessing' }
DAPAttachRequestArguments >> __restart [

	^ __restart
]

{ #category : 'accessing' }
DAPAttachRequestArguments >> __restart: anObject [

	__restart := anObject
]

{ #category : 'converting' }
DAPAttachRequestArguments >> asDAPJSON [

	| dict |
	dict := super asDAPJSON.

	self __restart ifNotNil: [ dict at: #__restart put: self __restart ].

	^ dict
]
