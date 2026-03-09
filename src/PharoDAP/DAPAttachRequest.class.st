Class {
	#name : 'DAPAttachRequest',
	#superclass : 'DAPRequest',
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'initialization' }
DAPAttachRequest >> initialize [
	super initialize.
	command := 'attach'
]
