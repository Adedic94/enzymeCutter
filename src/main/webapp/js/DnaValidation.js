function validateFasta() {
    var DNA = document.form.inputDNA.value;
    var status = false;

    if (DNA.length < 1){
        document.getElementById("ATGC").innerHTML = "Sorry, You forgot to enter your DNA";
        status = false;
    } else if (DNA.search(/[^gatc\s]/i) != -1){
        document.getElementById("ATGC").innerHTML = "Sorry not valid DNA";
        return false;
    }else {
        return true;
    }
    return status;
}


//source for dnaValid: http://www.dnacoil.com/tools/validate-dna-fasta-file-with-a-javascript-function/

