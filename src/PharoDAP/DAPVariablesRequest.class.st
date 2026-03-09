Class {
	#name : 'DAPVariablesRequest',
	#superclass : 'DAPRequest',
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'initialization' }
DAPVariablesRequest >> initialize [

	super initialize.
	command := 'variables'
]
