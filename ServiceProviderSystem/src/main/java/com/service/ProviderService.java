package com.service;
import java.util.ArrayList;

import java.util.Iterator;

import org.springframework.stereotype.Component;

import com.model.Connection;

@Component

public class ProviderService {

 ArrayList<Connection> connectionList = new ArrayList<Connection>();

 public ArrayList<Connection> getConnectionList() {

 return connectionList;

 }

 public void setConnectionList(ArrayList<Connection> connectionList) {

 this.connectionList = connectionList;

 }

 public ProviderService(){

 Connection connectionObj1=new Connection(1,"peter","unlimited","prepaid");

 Connection connectionObj2=new Connection(2,"John","plan500","postpaid");

 connectionList.add(connectionObj1);

 connectionList.add(connectionObj2);

 }

 public boolean addConnection(Connection connectionObj)

 {

 return connectionList.add(connectionObj);

 }

 public ArrayList<Connection> viewAllConnections()

 {

 return getConnectionList();

 }

 public Connection findConnectionById(int connectionNum)

 {

  for (Connection connection : connectionList) {

       if (connection.getConnectionNum() == connectionNum) {

         return connection;

       }

     }

     return null;

 }

 public boolean updateConnectionType(int connectionNum, String newType) {

    Connection connection = findConnectionById(connectionNum);

    if (connection != null) {

      connection.setConnectionType(newType);

      return true;

    }

    return false;

  }

  public boolean deleteConnection(int connectionNum) {

    Iterator<Connection> iterator = connectionList.iterator();

    while (iterator.hasNext()) {

      Connection connection = iterator.next();

      if (connection.getConnectionNum() == connectionNum) {

        iterator.remove();

        return true;

      }

    }

    return false;

  }

}

