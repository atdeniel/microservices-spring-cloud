package atdeniel.serviceshopping.entity;


import atdeniel.serviceshopping.model.Product;
import lombok.Data;

import jakarta.persistence.*;
import jakarta.validation.constraints.Positive;
import java.io.Serializable;

@Entity
@Data
@Table(name = "invoce_items")
public class InvoiceItem  {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Positive(message = "The stock must be higher than zero")
    private Double quantity;
    private Double  price;

    @Column(name = "product_id")
    private Long productId;

    @Transient // can use like a pojo but it is not a database table
    private Double subTotal;

    @Transient
    private Product product;

    public Double getSubTotal(){
        if (this.price >0  && this.quantity >0 ){
            return this.quantity * this.price;
        }else {
            return (double) 0;
        }
    }
    public InvoiceItem(){
        this.quantity=(double) 0;
        this.price=(double) 0;

    }
}