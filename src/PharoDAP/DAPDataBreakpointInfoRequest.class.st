Class {
	#name : 'DAPDataBreakpointInfoRequest',
	#superclass : 'DAPRequest',
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'initialization' }
DAPDataBreakpointInfoRequest >> initialize [

	super initialize.
	command := 'dataBreakpointInfo'
]
