sequel-openedge-adapter
=======================

Sequel adapter for OpenEdge RDBMS

Can use ODBC/JDBC drivers provided by DataDirect, bundled with OpenEdge or
from client networking installation.

## Installation

Note that this currently requires sequel master branch, it relies on a recent
improvement (jeremyevans/sequel@673bda5ec6a79c189dc37c03d191211e1701cc47) of
autoloading of external adapters.

    gem install sequel-openedge-adapter

Get the drivers from OpenEdge install dir.

JDBC drivers are in `java/` subdirectory and you need `progress.jar` and
`pool.jar`.  ODBC drivers are in `odbc/` subdirectory.

## Usage

### JRuby/JDBC

Put the drivers in CLASSPATH:

    export CLASSPATH=/path/to/progress.jar:/path/to/pool.jar

Then:

    require 'sequel'
    DB = Sequel.connect('jdbc:datadirect:openedge://HOST:PORT;databaseName=DATABASE;user=USER')
