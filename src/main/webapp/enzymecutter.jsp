<%--
  Created by IntelliJ IDEA.
  User: Armin Dedic
  Date: 12-1-2018
  Time: 16:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My first View</title>
</head>
<body>
    <h1>Web application: EnzymeCutter</h1>
    <div class="container">
        <div class="Enzyme_cutter_form">
            <form action="enzymecutter" method="post">
                <div class="text-area">
                    <p><label>Enter DNA into the box</label></p>
                    <label>
                        <textarea rows="5" cols="15" name="inputDNA"></textarea>
                    </label>

                </div>
                <div>
                    <p>Select enzymes and press Submit</p>
                    <label for="selectedEnzymes"></label>
                    <select class="form-control" id="selectedEnzymes" name="selectedEnzymes" size="15" multiple required>
                        <option value="AatII">AatII&emsp;(GACGTC)</option>
                        <option value="Acc65I">Acc65I&emsp;(GGTACC)</option>
                        <option value="AclI">AclI&emsp;(AACGTT)</option>
                        <option value="AfeI">AfeI&emsp;(AGCGCT)</option>
                        <option value="AgeI">AgeI&emsp;(ACCGGT)</option>
                        <option value="BamHI">BamHI&emsp;(GGATCC)</option>
                        <option value="BclI">BclI&emsp;(TGATCA)</option>
                        <option value="BglII">BglII&emsp;(AGATCT)</option>
                        <option value="BstBI">BstBI&emsp;(TTCGAA)</option>
                        <option value="ClaI">ClaI&emsp;(ATCGAT)</option>
                        <option value="DraI">DraI&emsp;(TTTAAA)</option>
                        <option value="EcoRI">EcoRI&emsp;(GAATTC)</option>
                        <option value="EcoRV">EcoRV&emsp;(GATATC)</option>
                        <option value="HindIII">HindIII&emsp;(AAGCTT)</option>
                        <option value="HpaI">HpaI&emsp;(GTTAAC)</option>
                    </select>
                </div>
                <div class="submitButton">
                    <button type="submit">Submit</button>
                </div>
                <p>If nothing appears, then you have entered an invalid DNA:</p>
                <h3>${requestScope.errorMessage}</h3>
                <p>Please enter an valid DNA code (i.e. ATCG)</p>
            </form>
        </div>
    </div>
</body>
</html>
