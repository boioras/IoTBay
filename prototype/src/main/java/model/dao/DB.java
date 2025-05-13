package model.dao;

import java.sql.Connection;

/**
 * Super class of DAO classes that stores the database information
 * 
 */

public abstract class DB {

    protected String URL = "jdbc:sqlite:/Users/trinarei/Documents/IOTBAY/prototype/database/iotbay.db";
    protected String driver = "org.sqlite.JDBC";
    protected Connection conn;

}