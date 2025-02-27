"
Counter is a simple calss that supports incrementing and decrementing. It provides:
- increment and decrement methods.
- count method for getting the current value.
- Creation message startingAt:.
"
Class {
	#name : 'Counter',
	#superclass : 'Object',
	#instVars : [
		'count'
	],
	#category : 'MyCounter',
	#package : 'MyCounter'
}

{ #category : 'accessing' }
Counter class >> startingAt: anInteger [
	^ self new count: anInteger
]

{ #category : 'accessing' }
Counter >> count [
	"Returns the count"
	^ count
]

{ #category : 'accessing' }
Counter >> count: aNumber [
	count := aNumber.
]

{ #category : 'API' }
Counter >> decrement [
	count := count - 1.
]

{ #category : 'accessing' }
Counter >> increment [
	count := count + 1.
]

{ #category : 'initialization' }
Counter >> initialize [
	count := 0.
]

{ #category : 'printing' }
Counter >> printOn: aStream [
	super printOn: aStream.
	^aStream
		nextPutAll: 'with value ';
		print: count;
		yourself.
]
