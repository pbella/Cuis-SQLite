'From Cuis 4.1 of 12 December 2012 [latest update: #1576] on 24 January 2013 at 3:26:29 pm'!
'Description '!
!classDefinition: #SQLiteConnection category: #'SQLite3-Core-Public'!
Object subclass: #SQLiteConnection
	instanceVariableNames: 'reference fileName txn'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SQLite3-Core-Public'!
!classDefinition: 'SQLiteConnection class' category: #'SQLite3-Core-Public'!
SQLiteConnection class
	instanceVariableNames: 'registry'!

!classDefinition: #SQLiteRecord category: #'SQLite3-Core-Public'!
Dictionary subclass: #SQLiteRecord
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SQLite3-Core-Public'!
!classDefinition: 'SQLiteRecord class' category: #'SQLite3-Core-Public'!
SQLiteRecord class
	instanceVariableNames: ''!

!classDefinition: #SqliteError category: #'SQLite3-Core-Support'!
ExternalStructure subclass: #SqliteError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SQLite3-Core-Support'!
!classDefinition: 'SqliteError class' category: #'SQLite3-Core-Support'!
SqliteError class
	instanceVariableNames: ''!

!classDefinition: #SqliteLibrary category: #'SQLite3-Core-Support'!
ExternalLibrary subclass: #SqliteLibrary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SQLite3-Core-Support'!
!classDefinition: 'SqliteLibrary class' category: #'SQLite3-Core-Support'!
SqliteLibrary class
	instanceVariableNames: 'default'!

!classDefinition: #SqliteReference category: #'SQLite3-Core-Support'!
ExternalStructure subclass: #SqliteReference
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SQLite3-Core-Support'!
!classDefinition: 'SqliteReference class' category: #'SQLite3-Core-Support'!
SqliteReference class
	instanceVariableNames: ''!

!classDefinition: #SqliteResult category: #'SQLite3-Core-Support'!
Object subclass: #SqliteResult
	instanceVariableNames: 'buffer rows columns columnNames index'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SQLite3-Core-Support'!
!classDefinition: 'SqliteResult class' category: #'SQLite3-Core-Support'!
SqliteResult class
	instanceVariableNames: ''!

!classDefinition: #SqliteResultBuffer category: #'SQLite3-Core-Support'!
ExternalStructure subclass: #SqliteResultBuffer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SQLite3-Core-Support'!
!classDefinition: 'SqliteResultBuffer class' category: #'SQLite3-Core-Support'!
SqliteResultBuffer class
	instanceVariableNames: ''!


!SQLiteConnection commentStamp: 'spd 5/19/2010 14:50' prior: 0!
I connect to sqlite3 databases.

!SQLiteConnection methodsFor: 'finalization' stamp: 'tbn 1/25/2010 19:58'!
actAsExecutor

!SQLiteConnection methodsFor: 'public' stamp: 'ab 1/31/2003 16:20'!
changedRows

!SQLiteConnection methodsFor: 'private' stamp: 'tbn 1/25/2010 19:58'!
close

!SQLiteConnection methodsFor: 'private' stamp: 'ar 12/12/2011 20:50'!
commit

!SQLiteConnection methodsFor: 'prepared statements' stamp: 'ar 12/9/2011 19:23'!
execute: query args: args

!SQLiteConnection methodsFor: 'prepared statements' stamp: 'ar 12/12/2011 19:04'!
execute: query args: args do: aBlock

!SQLiteConnection methodsFor: 'public' stamp: 'ab 1/29/2003 16:37'!
executeQuery: aString

!SQLiteConnection methodsFor: 'public' stamp: 'ab 12/16/2002 00:27'!
fileName

!SQLiteConnection methodsFor: 'private' stamp: 'spd 5/19/2010 14:52'!
fileName: aString

!SQLiteConnection methodsFor: 'finalization' stamp: 'ab 2/22/2003 23:15'!
finalize

!SQLiteConnection methodsFor: 'private' stamp: 'ab 12/16/2002 00:28'!
isOpen

!SQLiteConnection methodsFor: 'public' stamp: 'ab 12/16/2002 00:34'!
lastInsertId

!SQLiteConnection methodsFor: 'private' stamp: 'tbn 1/25/2010 19:58'!
open

!SQLiteConnection methodsFor: 'finalization' stamp: 'ab 2/22/2003 22:31'!
register

!SQLiteConnection methodsFor: 'private' stamp: 'ar 12/12/2011 20:51'!
rollback

!SQLiteConnection methodsFor: 'private' stamp: 'ar 12/12/2011 20:50'!
transact

!SQLiteConnection methodsFor: 'public' stamp: 'ar 12/12/2011 20:51'!
transaction: aBlock

!SQLiteConnection methodsFor: 'finalization' stamp: 'ab 2/22/2003 22:32'!
unregister

!SQLiteConnection methodsFor: 'public' stamp: 'tbn 1/25/2010 19:58'!
withResultForQuery: aString do: aBlock

!SQLiteConnection class methodsFor: 'instance creation' stamp: 'ab 12/16/2002 00:27'!
fileNamed: aString

!SQLiteConnection class methodsFor: 'accessing' stamp: 'tbn 1/25/2010 19:58'!
registry

!SQLiteRecord methodsFor: 'accessing' stamp: 'ar 12/9/2011 19:19'!
doesNotUnderstand: aMessage

!SQLiteRecord methodsFor: 'initialize' stamp: 'ar 12/9/2011 19:20'!
names: names values: values

!SQLiteRecord class methodsFor: 'as yet unclassified' stamp: 'ar 12/9/2011 19:19'!
names: names values: values

!SqliteError methodsFor: 'accessing' stamp: 'hjh 1/24/2013 15:13'!
value

!SqliteError methodsFor: 'accessing' stamp: 'hjh 1/24/2013 15:13'!
value: anObject

!SqliteError class methodsFor: 'definitions' stamp: 'ab 12/15/2002 21:55'!
fields

!SqliteError class methodsFor: 'class initialization' stamp: 'ab 12/15/2002 22:17'!
initialize

!SqliteLibrary methodsFor: 'api' stamp: 'ar 12/8/2011 13:33'!
apiBindDouble: stmt with: index with: double

!SqliteLibrary methodsFor: 'api' stamp: 'ar 12/8/2011 13:33'!
apiBindInt: stmt with: index with: value

!SqliteLibrary methodsFor: 'api' stamp: 'ar 12/8/2011 13:33'!
apiBindNull: stmt with: index

!SqliteLibrary methodsFor: 'api' stamp: 'ar 12/8/2011 13:16'!
apiBindParameterCount: pStmt

!SqliteLibrary methodsFor: 'api' stamp: 'ar 12/8/2011 13:34'!
apiBindText: stmt with: index with: value with: length with: destructor

!SqliteLibrary methodsFor: 'api' stamp: 'cf 11/23/2005 15:31'!
apiChanges: sqlite

!SqliteLibrary methodsFor: 'api' stamp: 'cf 11/23/2005 15:15'!
apiClose: sqlite

!SqliteLibrary methodsFor: 'api' stamp: 'ar 12/8/2011 14:44'!
apiColumnCount: hStmt

!SqliteLibrary methodsFor: 'api' stamp: 'ar 12/8/2011 13:51'!
apiColumnDouble: hStmt with: iCol

!SqliteLibrary methodsFor: 'api' stamp: 'ar 12/8/2011 13:52'!
apiColumnInt: hStmt with: iCol

!SqliteLibrary methodsFor: 'api' stamp: 'ar 12/9/2011 19:11'!
apiColumnName: hStmt with: iCol

!SqliteLibrary methodsFor: 'api' stamp: 'ar 12/8/2011 13:52'!
apiColumnText: hStmt with: iCol

!SqliteLibrary methodsFor: 'api' stamp: 'ar 12/8/2011 15:00'!
apiColumnType: hStmt with: iCol

!SqliteLibrary methodsFor: 'api' stamp: 'cf 11/23/2005 15:52'!
apiErrorMessage: anSqlite

!SqliteLibrary methodsFor: 'api' stamp: 'ar 12/8/2011 14:12'!
apiFinalize: pStmt

!SqliteLibrary methodsFor: 'api' stamp: 'cf 11/23/2005 15:32'!
apiFreeTable: buffer

!SqliteLibrary methodsFor: 'api' stamp: 'cf 11/23/2005 15:34'!
apiGetTable: anSqlite sql: sql buffer: result rows: nRows columns: nColumns error: errBuffer

!SqliteLibrary methodsFor: 'api' stamp: 'cf 11/23/2005 15:35'!
apiLastInsertId: sqlite

!SqliteLibrary methodsFor: 'api' stamp: 'cf 11/22/2005 21:59'!
apiOpen: dbName sqlite: sqlite

!SqliteLibrary methodsFor: 'api' stamp: 'ar 12/8/2011 13:11'!
apiPrepareV2: db with: zSql with: nByte with: ppStmt with: pzTail

!SqliteLibrary methodsFor: 'api' stamp: 'ar 12/8/2011 13:51'!
apiStep: hStmt

!SqliteLibrary methodsFor: 'accessing' stamp: 'ar 12/8/2011 15:11'!
bindArg: arg at: index in: stmt

!SqliteLibrary methodsFor: 'accessing' stamp: 'ab 1/31/2003 16:20'!
changedRows: anSqliteRef

!SqliteLibrary methodsFor: 'accessing' stamp: 'cf 11/23/2005 15:36'!
checkError: anError

!SqliteLibrary methodsFor: 'accessing' stamp: 'ar 12/8/2011 14:32'!
checkErrorInteger: anError

!SqliteLibrary methodsFor: 'accessing' stamp: 'tbn 1/25/2010 19:52'!
close: anSqliteRef

!SqliteLibrary methodsFor: 'accessing' stamp: 'ar 12/12/2011 19:04'!
execute: query args: args on: sqliteRef do: aBlock

!SqliteLibrary methodsFor: 'accessing' stamp: 'ab 12/16/2002 01:30'!
freeResultBuffer: aResultBuffer

!SqliteLibrary methodsFor: 'accessing' stamp: 'ab 12/16/2002 00:23'!
lastInsertId: anSqliteRef

!SqliteLibrary methodsFor: 'accessing' stamp: 'cf 11/23/2005 15:22'!
open: aString

!SqliteLibrary methodsFor: 'accessing' stamp: 'tbn 1/25/2010 19:52'!
resultForQuery: aString on: sqliteRef

!SqliteLibrary class methodsFor: 'accessing' stamp: 'tbn 1/25/2010 19:53'!
default

!SqliteLibrary class methodsFor: 'accessing' stamp: 'tbn 4/1/2008 20:04'!
moduleName

!SqliteReference methodsFor: 'accessing' stamp: 'hjh 1/24/2013 15:13'!
value

!SqliteReference methodsFor: 'accessing' stamp: 'hjh 1/24/2013 15:13'!
value: anObject

!SqliteReference class methodsFor: 'field definition' stamp: 'cf 11/22/2005 21:38'!
fields

!SqliteReference class methodsFor: 'class initialization' stamp: 'cf 11/22/2005 21:58'!
initialize

!SqliteResult methodsFor: 'public' stamp: 'ab 12/16/2002 01:58'!
atEnd

!SqliteResult methodsFor: 'public' stamp: 'ab 1/29/2003 16:06'!
columnNames

!SqliteResult methodsFor: 'accessing' stamp: 'tbn 1/25/2010 19:54'!
currentAddress

!SqliteResult methodsFor: 'public' stamp: 'ab 12/16/2002 01:56'!
do: aBlock

!SqliteResult methodsFor: 'public' stamp: 'tbn 1/25/2010 19:54'!
free

!SqliteResult methodsFor: 'public' stamp: 'ab 12/16/2002 01:58'!
nextKeysAndValuesDo: aBlock

!SqliteResult methodsFor: 'public' stamp: 'tbn 1/25/2010 19:54'!
nextRow

!SqliteResult methodsFor: 'accessing' stamp: 'tbn 1/25/2010 19:55'!
nextString

!SqliteResult methodsFor: 'public' stamp: 'ab 1/29/2003 16:34'!
nextValues

!SqliteResult methodsFor: 'reading' stamp: 'tbn 1/25/2010 19:55'!
readColumns

!SqliteResult methodsFor: 'reading' stamp: 'ab 12/16/2002 01:47'!
readString

!SqliteResult methodsFor: 'reading' stamp: 'hjh 1/24/2013 15:20'!
readStringAtAddress: anAddress

!SqliteResult methodsFor: 'public' stamp: 'tbn 1/25/2010 19:55'!
reset

!SqliteResult methodsFor: 'accessing' stamp: 'tbn 1/25/2010 19:55'!
setBuffer: aResultBuffer rows: nRows columns: nColumns

!SqliteResult class methodsFor: 'instance creation' stamp: 'ab 12/16/2002 01:41'!
buffer: aResultBuffer rows: nRows columns: nColumns

!SqliteResultBuffer methodsFor: 'accessing' stamp: 'hjh 1/24/2013 15:13'!
value

!SqliteResultBuffer methodsFor: 'accessing' stamp: 'hjh 1/24/2013 15:13'!
value: anObject

!SqliteResultBuffer class methodsFor: 'field definition' stamp: 'ab 12/16/2002 00:35'!
fields

!SqliteResultBuffer class methodsFor: 'class initialization' stamp: 'ab 1/14/2003 15:28'!
initialize
SqliteError initialize!
SqliteReference initialize!
SqliteResultBuffer initialize!