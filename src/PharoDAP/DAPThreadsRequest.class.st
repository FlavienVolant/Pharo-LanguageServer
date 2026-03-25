Class {
	#name : 'DAPThreadsRequest',
	#superclass : 'DAPRequest',
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'initialization' }
DAPThreadsRequest >> initialize [

	super initialize.
	command := 'threads'
]
