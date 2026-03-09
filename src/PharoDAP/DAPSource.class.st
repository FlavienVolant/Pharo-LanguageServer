Class {
	#name : 'DAPSource',
	#superclass : 'DAPJsonableObject',
	#instVars : [
		'name',
		'path',
		'sourceReference',
		'presentationHint',
		'origin',
		'sources',
		'adapterData',
		'checksums'
	],
	#category : 'PharoDAP-Types',
	#package : 'PharoDAP',
	#tag : 'Types'
}

{ #category : 'accessing' }
DAPSource >> adapterData [

	^ adapterData
]

{ #category : 'accessing' }
DAPSource >> adapterData: anObject [

	adapterData := anObject
]

{ #category : 'accessing' }
DAPSource >> asDAPJSON [
	| json |
	json:= super asDAPJSON
		at: #name put: self name;
		at: #sourceReference put: self sourceReference;
		yourself.
	self path ifNotNil:[ json at:#path put: self path ].
	^ json
]

{ #category : 'accessing' }
DAPSource >> checksums [

	^ checksums
]

{ #category : 'accessing' }
DAPSource >> checksums: aCollectionOfDAPChecksun [

	checksums := aCollectionOfDAPChecksun
]

{ #category : 'accessing' }
DAPSource >> name [
	^ name
]

{ #category : 'accessing' }
DAPSource >> name: anObject [
	name := anObject
]

{ #category : 'accessing' }
DAPSource >> origin [

	^ origin
]

{ #category : 'accessing' }
DAPSource >> origin: aString [

	origin := aString
]

{ #category : 'accessing' }
DAPSource >> path [

	^ path
]

{ #category : 'accessing' }
DAPSource >> path: anObject [

	path := anObject
]

{ #category : 'accessing' }
DAPSource >> presentationHint [

	^ presentationHint
]

{ #category : 'accessing' }
DAPSource >> presentationHint: aString [

	presentationHint := aString
]

{ #category : 'accessing' }
DAPSource >> sourceReference [
	^ sourceReference
]

{ #category : 'accessing' }
DAPSource >> sourceReference: anObject [
	sourceReference := anObject
]

{ #category : 'accessing' }
DAPSource >> sources [

	^ sources
]

{ #category : 'accessing' }
DAPSource >> sources: aCollectionOfDAPSource [

	sources := aCollectionOfDAPSource
]
