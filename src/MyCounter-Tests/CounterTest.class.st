"
Test class for Counter
"
Class {
	#name : 'CounterTest',
	#superclass : 'TestCase',
	#category : 'MyCounter-Tests',
	#package : 'MyCounter-Tests'
}

{ #category : 'tests' }
CounterTest >> testCountIsSetAndRead [
	| c |
	c := Counter new.
	c count: 7.
	self assert: c count equals: 7.
	
]

{ #category : 'tests' }
CounterTest >> testDecrement [
	| c |
	c := Counter new.
	c count: 2.
	c decrement.
	self assert: c count equals: 1.
]

{ #category : 'tests' }
CounterTest >> testIncrement [
	| c |
	c := Counter new.
	c count: 0.
	c increment; increment.
	self assert: c count equals: 2.
]

{ #category : 'tests' }
CounterTest >> testInitialize [
	self assert: Counter new count equals: 0.
]

{ #category : 'tests' }
CounterTest >> testPrintString [
	| c |
	c := Counter new.
	self assert: c printString equals: 'a Counter with value 0'.
]
