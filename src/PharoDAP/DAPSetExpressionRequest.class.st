Class {
	#name : 'DAPSetExpressionRequest',
	#superclass : 'DAPRequest',
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'initialization' }
DAPSetExpressionRequest >> initialize [

	super initialize.
	command := 'setExpression'
]
