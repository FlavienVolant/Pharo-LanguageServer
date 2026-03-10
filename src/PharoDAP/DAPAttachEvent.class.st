Class {
	#name : 'DAPAttachEvent',
	#superclass : 'DAPEvent',
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'initialization' }
DAPAttachEvent >> initialize [
	super initialize.
	event := 'initialized'
]
