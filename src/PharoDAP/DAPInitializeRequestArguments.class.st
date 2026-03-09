Class {
	#name : 'DAPInitializeRequestArguments',
	#superclass : 'DAPRequestArguments',
	#instVars : [
		'clientID',
		'clientName',
		'adapterID',
		'locale',
		'linesStartAt1',
		'columnsStartAt1',
		'pathFormat',
		'supportsVariableType',
		'supportsVariablePaging',
		'supportsRunInTerminalRequest',
		'supportsMemoryReferences',
		'supportsProgressReporting',
		'supportsInvalidatedEvent'
	],
	#category : 'PharoDAP-Structure',
	#package : 'PharoDAP',
	#tag : 'Structure'
}

{ #category : 'accessing' }
DAPInitializeRequestArguments >> adapterID [

	^ adapterID
]

{ #category : 'accessing' }
DAPInitializeRequestArguments >> adapterID: aString [

	adapterID := aString
]

{ #category : 'converting' }
DAPInitializeRequestArguments >> asDAPJSON [
	| dict |
	dict := super asDAPJSON.

	self clientID ifNotNil: [ dict at: #clientID put: self clientID ].
	self clientName ifNotNil: [ dict at: #clientName put: self clientName ].
	dict at: #adapterID put: self adapterID.
	self locale ifNotNil: [ dict at: #locale put: self locale ].
	self linesStartAt1 ifNotNil: [ dict at: #linesStartAt1 put: self linesStartAt1 ].
	self columnsStartAt1 ifNotNil: [ dict at: #columnsStartAt1 put: self columnsStartAt1 ].
	self pathFormat ifNotNil: [ dict at: #pathFormat put: self pathFormat ].
	self supportsVariableType ifNotNil: [ dict at: #supportsVariableType put: self supportsVariableType ].
	self supportsVariablePaging ifNotNil: [ dict at: #supportsVariablePaging put: self supportsVariablePaging ].
	self supportsRunInTerminalRequest ifNotNil: [ dict at: #supportsRunInTerminalRequest put: self supportsRunInTerminalRequest ].
	self supportsMemoryReferences ifNotNil: [ dict at: #supportsMemoryReferences put: self supportsMemoryReferences ].
	self supportsProgressReporting ifNotNil: [ dict at: #supportsProgressReporting put: self supportsProgressReporting ].
	self supportsInvalidatedEvent ifNotNil: [ dict at: #supportsInvalidatedEvent put: self supportsInvalidatedEvent ].
	
	"""
	self supportsMemoryEvent ifNotNil: [ dict at: #supportsMemoryEvent put: self supportsMemoryEvent ].
	self supportsArgsCanBeInterpretedByShell ifNotNil: [ dict at: #supportsArgsCanBeInterpretedByShell put: self supportsArgsCanBeInterpretedByShell ].
	self supportsStartDebuggingRequest ifNotNil: [ dict at: #supportsStartDebuggingRequest put: self supportsStartDebuggingRequest ].
	self supportsANSIStyling ifNotNil: [ dict at: #supportsANSIStyling put: self supportsANSIStyling ].
	"""
	
	^ dict
]

{ #category : 'accessing' }
DAPInitializeRequestArguments >> clientID [

	^ clientID
]

{ #category : 'accessing' }
DAPInitializeRequestArguments >> clientID: aString [

	clientID := aString
]

{ #category : 'accessing' }
DAPInitializeRequestArguments >> clientName [

	^ clientName
]

{ #category : 'accessing' }
DAPInitializeRequestArguments >> clientName: aString [

	clientName := aString
]

{ #category : 'accessing' }
DAPInitializeRequestArguments >> columnsStartAt1 [

	^ columnsStartAt1
]

{ #category : 'accessing' }
DAPInitializeRequestArguments >> columnsStartAt1: aBoolean [

	columnsStartAt1 := aBoolean
]

{ #category : 'accessing' }
DAPInitializeRequestArguments >> linesStartAt1 [

	^ linesStartAt1
]

{ #category : 'accessing' }
DAPInitializeRequestArguments >> linesStartAt1: aBoolean [

	linesStartAt1 := aBoolean
]

{ #category : 'accessing' }
DAPInitializeRequestArguments >> locale [

	^ locale
]

{ #category : 'accessing' }
DAPInitializeRequestArguments >> locale: anObject [

	locale := anObject
]

{ #category : 'accessing' }
DAPInitializeRequestArguments >> pathFormat [

	^ pathFormat
]

{ #category : 'accessing' }
DAPInitializeRequestArguments >> pathFormat: aString [

	pathFormat := aString
]

{ #category : 'accessing' }
DAPInitializeRequestArguments >> supportsInvalidatedEvent [

	^ supportsInvalidatedEvent
]

{ #category : 'accessing' }
DAPInitializeRequestArguments >> supportsInvalidatedEvent: aBoolean [

	supportsInvalidatedEvent := aBoolean
]

{ #category : 'accessing' }
DAPInitializeRequestArguments >> supportsMemoryReferences [

	^ supportsMemoryReferences
]

{ #category : 'accessing' }
DAPInitializeRequestArguments >> supportsMemoryReferences: aBoolean [

	supportsMemoryReferences := aBoolean
]

{ #category : 'accessing' }
DAPInitializeRequestArguments >> supportsProgressReporting [

	^ supportsProgressReporting
]

{ #category : 'accessing' }
DAPInitializeRequestArguments >> supportsProgressReporting: aBoolean [

	supportsProgressReporting := aBoolean
]

{ #category : 'accessing' }
DAPInitializeRequestArguments >> supportsRunInTerminalRequest [

	^ supportsRunInTerminalRequest
]

{ #category : 'accessing' }
DAPInitializeRequestArguments >> supportsRunInTerminalRequest: aBoolean [

	supportsRunInTerminalRequest := aBoolean
]

{ #category : 'accessing' }
DAPInitializeRequestArguments >> supportsVariablePaging [

	^ supportsVariablePaging
]

{ #category : 'accessing' }
DAPInitializeRequestArguments >> supportsVariablePaging: aBoolean [

	supportsVariablePaging := aBoolean
]

{ #category : 'accessing' }
DAPInitializeRequestArguments >> supportsVariableType [

	^ supportsVariableType
]

{ #category : 'accessing' }
DAPInitializeRequestArguments >> supportsVariableType: aBoolean [

	supportsVariableType := aBoolean
]
