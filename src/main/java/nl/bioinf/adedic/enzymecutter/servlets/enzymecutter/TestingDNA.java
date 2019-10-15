package nl.bioinf.adedic.enzymecutter.servlets.enzymecutter;

/*
 * Copyright (c) 2017 Armin Dedic [a.dedic@st.hanze.nl].
 * All rights reserved.
 */

import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/*
 * @author Armin Dedic [a.dedic@st.hanze.nl]
 * @date 12-1-2018
 * @version 0.0.1
 */

public class TestingDNA {
    private String inputDNA;
    private final String[] selectedEnzymes;
    public ArrayList<Double> weights;
    public ArrayList<Double> gcPercentage;
    public String cutSites = "";

    public TestingDNA(String inputDNA, String[] selectedEnzymes) {
        this.inputDNA = inputDNA;
        this.selectedEnzymes = selectedEnzymes;
        start();
    }

    public void start() {
        String[] fragments = null;
        fragments = digestDNA().split("_");
        FragmentsCalculations FC = new FragmentsCalculations(fragments);
        gcPercentage = FC.gcCalculation();
        weights = FC.calculateWeight();
    }

    public String digestDNA() {
        //String cutSites = "";
        for (String item : selectedEnzymes) {
            String pattern = item.replace("_", "");
            Pattern pattern1 = Pattern.compile(pattern);
            Matcher m = pattern1.matcher(inputDNA);
            while (m.find()) {
                cutSites = inputDNA.replace(pattern, item);
                inputDNA = cutSites;
            }
        }
        System.out.println("Cutsites: "+cutSites);
        return cutSites;
    }

    @Override
    public String toString(){
        return "Given DNA: "+ inputDNA;
    }
}



