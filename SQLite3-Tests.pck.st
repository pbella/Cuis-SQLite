'From Cuis 4.1 of 12 December 2012 [latest update: #1576] on 24 January 2013 at 3:08:31 pm'!
'Description '!
!classDefinition: #SQLiteConnectionTest category: #'SQLite3-Tests'!
TestCase subclass: #SQLiteConnectionTest
	instanceVariableNames: 'db'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SQLite3-Tests'!
!classDefinition: 'SQLiteConnectionTest class' category: #'SQLite3-Tests'!
SQLiteConnectionTest class
	instanceVariableNames: ''!


!SQLiteConnectionTest methodsFor: 'running' stamp: 'ar 12/8/2011 14:40'!
databaseFileName

!SQLiteConnectionTest methodsFor: 'accessing' stamp: 'spd 5/19/2010 14:32'!
databaseName

!SQLiteConnectionTest methodsFor: 'accessing' stamp: 'tbn 1/25/2010 20:06'!
defaultTestClass

!SQLiteConnectionTest methodsFor: 'running' stamp: 'spd 5/19/2010 14:36'!
setUp

!SQLiteConnectionTest methodsFor: 'running' stamp: 'ar 12/8/2011 14:40'!
tearDown

!SQLiteConnectionTest methodsFor: 'testing' stamp: 'tbn 1/25/2010 20:28'!
testInstanceCreation

!SQLiteConnectionTest methodsFor: 'testing' stamp: 'ar 1/4/2012 10:50'!
testPreparedStatements

!SQLiteConnectionTest methodsFor: 'testing' stamp: 'tbn 1/25/2010 20:28'!
testRegistration

!SQLiteConnectionTest methodsFor: 'testing' stamp: 'tbn 1/25/2010 20:54'!
testTableCreation

!SQLiteConnectionTest methodsFor: 'testing' stamp: 'tbn 1/25/2010 21:03'!
testUseDatabase