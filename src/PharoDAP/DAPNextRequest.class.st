Class {
	#name : 'DAPNextRequest',
	#superclass : 'DAPRequest',
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'initialization' }
DAPNextRequest >> initialize [
	super initialize.
	command := 'next'
]
