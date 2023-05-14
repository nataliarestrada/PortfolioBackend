/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.portfolio.PortfolioBackEnd.Entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;

/**
 *
 * @author natal
 */
@Entity
@Getter @Setter
public class Experiencia {
    @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id;
    @JsonIgnore
    @ManyToOne
    @JoinColumn(name = "persona_id")
    private Persona persona;
    private String puestoExpe;
    private String periodoExpe;
    private String organismoExpe;
    @Size(max = 500, message = "excedio la longitud")
    private String descripcionExpe;
    @Size(max = 500, message = "excedio la longitud")
    private String urlLogoExpe;

    public Experiencia() {
    }

    public Experiencia(Persona persona, String puestoExpe, String periodoExpe, String organismoExpe, String descripcionExpe, String urlLogoExpe) {
        this.persona = persona;
        this.puestoExpe = puestoExpe;
        this.periodoExpe = periodoExpe;
        this.organismoExpe = organismoExpe;
        this.descripcionExpe = descripcionExpe;
        this.urlLogoExpe = urlLogoExpe;
    }
    
    
}
