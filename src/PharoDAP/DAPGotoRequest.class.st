Class {
	#name : 'DAPGotoRequest',
	#superclass : 'DAPRequest',
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'initialization' }
DAPGotoRequest >> initialize [

	super initialize.
	command := 'goto'
]
