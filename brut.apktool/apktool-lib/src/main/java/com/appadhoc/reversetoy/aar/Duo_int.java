package com.appadhoc.reversetoy.aar;

public class Duo_int {
    public int idOld;
    public int idNew;
    public Duo_int(int id,int newId){
        this.idOld = id;
        this.idNew = newId;
    }
    public String toString(){
        return Integer.toHexString(idOld) +" " + Integer.toHexString(idNew);
    }
}
