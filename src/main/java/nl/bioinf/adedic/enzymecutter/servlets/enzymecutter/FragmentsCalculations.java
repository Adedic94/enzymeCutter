package nl.bioinf.adedic.enzymecutter.servlets.enzymecutter;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

class FragmentsCalculations {
    private final String[] fragments;



    /**
     * This method is the constructor which assigns the fragment as class variable
     * @param fragments
     */
    public FragmentsCalculations(String[] fragments) {
        this.fragments = fragments;
    }




    /**
     * This method calculates the GC percentage of each fragment that is produced.
     * @return gcPercentage of the given DNA
     */
    public ArrayList<Double> gcCalculation(){
        ArrayList<Double> gcPercentage = new ArrayList<>();
        for (String fragment : fragments){
            int len = fragment.length();
            double gcCount = 0;
            for (int i = 0; i < fragment.length(); i++){
                if (fragment.charAt(i)=='G' || fragment.charAt(i)=='C') gcCount++;
            }
            gcPercentage.add(gcCount/len * 100);
        }
        System.out.println("GC: "+gcPercentage);
        return gcPercentage;
    }

    /**
     * This method calculates the molWeight of each fragment that is produced.
     * source: https://github.com/breezedu/rosalind/blob/master/ComputingGCContent.java
     * @return weights
     */
    public ArrayList<Double> calculateWeight(){
        ArrayList<Double> weights = new ArrayList<>();
        for (String fragment : fragments) {
            Map<Character, Double> fragmentWeights = new HashMap<>();
            char[] dnaChar = fragment.toCharArray();
            for (char base : dnaChar) {
                switch (base){
                    case 'A':
                        if (fragmentWeights.containsKey(base)){
                            fragmentWeights.put(base, fragmentWeights.get(base) + 135.128);
                        }else {
                            fragmentWeights.put(base, 135.128);
                        }
                        break;
                    case 'T':
                        if (fragmentWeights.containsKey(base)){
                            fragmentWeights.put(base, fragmentWeights.get(base) + 126.113);
                        }else {
                            fragmentWeights.put(base, 126.113);
                        }
                        break;
                    case 'G':
                        if (fragmentWeights.containsKey(base)){
                            fragmentWeights.put(base, fragmentWeights.get(base) + 151.126);
                        }else {
                            fragmentWeights.put(base, 151.126);
                        }
                        break;
                    case 'C':
                        if (fragmentWeights.containsKey(base)){
                            fragmentWeights.put(base, fragmentWeights.get(base) + 111.102);
                        }else {
                            fragmentWeights.put(base, 111.102);
                        }
                        break;
                }
            }
            double total = 0;
            for (double number : fragmentWeights.values()) {
                total += number;
            }
            weights.add(total);
        }
        System.out.println("MolWeight: "+ weights);
        return weights;
    }

}
