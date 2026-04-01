Class {
	#name : 'DAPDisconnectRequest',
	#superclass : 'DAPRequest',
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'initialization' }
DAPDisconnectRequest >> initialize [ 
	
	super initialize.
	command := 'disconnect'
]
