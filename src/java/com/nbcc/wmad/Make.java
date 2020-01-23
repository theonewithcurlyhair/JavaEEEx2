/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nbcc.wmad;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 *
 * @author Nik
 */
public class Make {

//<editor-fold defaultstate="collapsed" desc="props">
    /**
     * @return the id
     */
    public int getId() {
        return id;
    }
    
    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }
    
    /**
     * @return the name
     */
    public String getName() {
        return name;
    }
    
    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }
//</editor-fold>
    
    
    private int id;
    private String name;
    
    public Make(){
        buildMockData();
    }

    public Make(int id, String name) {
        this.id = id;
        this.name = name;
    }
    
    private List<Make> mockUpData = new ArrayList();
    
    public List<Make> getMakes(){
        return mockUpData;
    }

    private void buildMockData() {
        this.mockUpData.add(new Make(0, "Toyota"));
        this.mockUpData.add(new Make(mockUpData.size()+1, "Civic"));
        this.mockUpData.add(new Make(mockUpData.size()+1, "Lamba"));
    }
    
    public Make getMake(int id){
        List<Make> query = mockUpData.stream().filter(make -> make.getId() == id).collect(Collectors.toList());
        
        if(query.size()>0){
            return query.get(0);
        }else{
            return null;
        }
    }
    
}
