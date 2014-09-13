# Vagrant Cassandra

## Install Dependencies

    $ bundle
    $ bundle exec librarian-puppet install

## Start virtual machine

    $ vagrant up

## TADA!

    $ vagrant ssh
    (vagrant) $ cqlsh
    (vagrant) cqlsh> CREATE KEYSPACE demodb WITH REPLICATION = { 'class' : 'NetworkTopologyStrategy', 'datacenter1' : 3 };
    (vagrant) cqlsh> USE demodb;
    (vagrant) cqlsh:demodb> CREATE TABLE list (item varchar, PRIMARY KEY (item));
    (vagrant) cqlsh:demodb> INSERT INTO list (item) values ('item1');
    (vagrant) cqlsh:demodb> INSERT INTO list (item) values ('item2');
    (vagrant) cqlsh:demodb> INSERT INTO list (item) values ('item3');
    (vagrant) cqlsh:demodb> SELECT * FROM list;

     item
    -------
     item1
     item3
     item2

    (3 rows)


