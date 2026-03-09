Class {
	#name : 'DAPScopesRequest',
	#superclass : 'DAPRequest',
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'initialization' }
DAPScopesRequest >> initialize [

	super initialize.
	command := 'scopes'
]
