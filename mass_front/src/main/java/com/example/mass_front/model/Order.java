package com.example.mass_front.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "orders")
public class Order {
    @Id
    @Column(name = "order_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer oid;

    private int pid;
    private String pname;
    private String branch;

    private String cn;
    private String cd;
    private int cnu;

    private String pm;
    private String ship;
    private String recive;
    private double price;
    private int did;
    public void setCn(String cn) {
        this.cn = cn;
    }

    public void setDid(int did) {
        this.did = did;
    }

    public int getDid() {
        return did;
    }

    public void setCd(String cd) {
        this.cd = cd;
    }

    public void setCnu(int cnu) {
        this.cnu = cnu;
    }

    public void setPm(String pm) {
        this.pm = pm;
    }

    public String getCn() {
        return cn;
    }

    public String getCd() {
        return cd;
    }

    public int getCnu() {
        return cnu;
    }

    public String getPm() {
        return pm;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getPrice() {
        return price;
    }

    public void setOid(Integer oid) {
        this.oid = oid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }



    public void setShip(String ship) {
        this.ship = ship;
    }

    public void setRecive(String recive) {
        this.recive = recive;
    }

    public Integer getOid() {
        return oid;
    }

    public int getPid() {
        return pid;
    }

    public String getPname() {
        return pname;
    }

    public String getBranch() {
        return branch;
    }



    public String getShip() {
        return ship;
    }

    public String getRecive() {
        return recive;
    }
}
