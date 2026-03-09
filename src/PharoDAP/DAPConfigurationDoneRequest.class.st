Class {
	#name : 'DAPConfigurationDoneRequest',
	#superclass : 'DAPRequest',
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'initialization' }
DAPConfigurationDoneRequest >> initialize [

	super initialize.
	command := 'configurationDone'
]
