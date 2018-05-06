package com.jwt.model;


import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Entity
public class Cart implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    //=============================================================================\\
    /*Mapping*/
    //=============================================================================\\


    @OneToMany(mappedBy = "cart", fetch = FetchType.LAZY)
    private List<CartItem> cartItemList;

    @OneToOne(fetch = FetchType.LAZY)
    private Order order;

    @OneToOne(mappedBy = "cart", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private Customer customer;


    public List<CartItem> getCartItemList() {
        return cartItemList;
    }

    public void setCartItemList(List<CartItem> cartItemList) {
        this.cartItemList = cartItemList;
    }

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

}