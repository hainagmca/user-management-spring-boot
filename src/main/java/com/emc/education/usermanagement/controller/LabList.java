package com.emc.education.usermanagement.controller;

import com.emc.education.usermanagement.model.Lab;

import java.util.ArrayList;
import java.util.List;

public class LabList {
    private List<Lab> labs;

    public LabList(List<Lab> labs) {
        this.labs = labs;
    }

    public LabList() {
        labs = new ArrayList<>();
    }

    public void setLabs(List<Lab> labs) {
        this.labs = labs;
    }

    public List<Lab> getLabs() {
        return labs;
    }

    @Override
    public String toString() {
        return "LabList{" +
                "labs=" + labs +
                '}';
    }
}