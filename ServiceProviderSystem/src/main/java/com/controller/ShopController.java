package com.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.DeleteMapping;

import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PathVariable;

import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.PutMapping;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;



import com.model.Connection;

import com.service.ProviderService;


//Online Zee-tech Mobile Connection
//Service Provider System - Get and Post - Version Update_ (- GET AND POST)

@RestController

@RequestMapping("/SPS")

public class ShopController { 

	

 @Autowired

 private ProviderService providerService;

	

 @PostMapping("/addConnection")

 public boolean addConnection(Connection connectionObj) {  

 return providerService.addConnection(connectionObj);

 }

	

 @GetMapping("/findConnectionById/{id}")

 public Connection findConnectionById(@PathVariable("id") Integer connectionNum) {

  return providerService.findConnectionById(connectionNum); 

 }

	

 @GetMapping("/findAllConnection")

 public List<Connection> findAllConnection() {

 return providerService.viewAllConnections();

 } 

 @PutMapping("/updateConnectionType/{id}/{newType}")

  public boolean updateConnectionType(@PathVariable("id") Integer connectionNum, @PathVariable("newType") String newType) {

    return providerService.updateConnectionType(connectionNum, newType);

  }



  @DeleteMapping("/deleteConnection/{id}")

  public boolean deleteConnection(@PathVariable("id") Integer connectionNum) {

    return providerService.deleteConnection(connectionNum);

  }

	

}



