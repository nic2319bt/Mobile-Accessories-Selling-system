package com.example.mass_front.orderDTO;

import lombok.Data;

@Data
public class OrderDTO {
    private int oid;
    private int pid;
    private String pname;
    private String branch;
    private String deliweryaddress;
    private int cusnumber;
    private int cusid;
    private String paymethod;
    private String ship;
    private String recive;
}
