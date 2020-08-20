package com.emc.education.usermanagement.model;

import org.springframework.data.annotation.Id;

import javax.persistence.*;
import javax.validation.constraints.Size;

public class Lab {
    private  String id;
    private String name;
    private String labType;


    @Override
    public String toString() {
        return "Lab{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", labType='" + labType + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Lab lab = (Lab) o;

        if (id != null ? !id.equals(lab.id) : lab.id != null) return false;
        if (name != null ? !name.equals(lab.name) : lab.name != null) return false;
        return labType != null ? labType.equals(lab.labType) : lab.labType == null;
    }


    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (labType != null ? labType.hashCode() : 0);
        return result;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLabType() {
        return labType;
    }

    public void setLabType(String labType) {
        this.labType = labType;
    }
}
