package nl.bioinf.adedic.enzymecutter.servlets.enzymecutter;

public class MolweightCalc {

    public Double mwCalculation(String frag){
        Double molWeight = 0.0;
        Double weightG = 151.13;
        Double weightC = 111.10;
        Double weightT = 126.11;
        Double weightA = 135.13;

        for (Character fragment : frag.toCharArray()) {
            if(fragment.equals('G')){
                molWeight += weightG;
            }

            if(fragment.equals('C')){
                molWeight += weightC;
            }

            if(fragment.equals('A')){
                molWeight += weightA;
            }

            if(fragment.equals('T')){
                molWeight += weightT;
            }
        }
        return (double) Math.round(molWeight * 100) / 100;
    }
}
