Class {
	#name : 'DAPDebugPyAttachRequestArguments',
	#superclass : 'DAPAttachRequestArguments',
	#instVars : [
		'host',
		'port'
	],
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'instance creation' }
DAPDebugPyAttachRequestArguments class >> host: aString port: aNumber [
	^ self new 
		host: aString; 
		port: aNumber
]

{ #category : 'converting' }
DAPDebugPyAttachRequestArguments >> asDAPJSON [

	| dict |
	dict := super asDAPJSON.

	dict at: #host put: self host.
	dict at: #port put: self port.

	^ dict
]

{ #category : 'accessing' }
DAPDebugPyAttachRequestArguments >> host [

	^ host
]

{ #category : 'accessing' }
DAPDebugPyAttachRequestArguments >> host: aString [

	host := aString
]

{ #category : 'accessing' }
DAPDebugPyAttachRequestArguments >> port [

	^ port
]

{ #category : 'accessing' }
DAPDebugPyAttachRequestArguments >> port: aNumber [

	port := aNumber
]
