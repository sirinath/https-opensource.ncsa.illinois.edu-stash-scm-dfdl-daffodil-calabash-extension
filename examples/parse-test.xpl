<p:declare-step xmlns:p="http://www.w3.org/ns/xproc"
                xmlns:c="http://www.w3.org/ns/xproc-step"
                xmlns:dfdl="urn:daffodil:calabash"
                name="pipeline"
                version="1.0">
    <p:input port="source"/>
    <p:output port="result" primary="true"/>

    <p:import href="../etc/daffodil-library.xpl"/>
    
<!--
    <p:identity/>
-->
    
    <dfdl:parse name="parse" 
        schema="../examples/csv/csv.dfdl.xsd" 
        root="ex:file" xmlns:ex="http://example.com"/>
<!--
    <dfdl:parse name="parse" 
        schema="../examples/pcap/pcap.dfdl.xsd" 
        root="ex:pcap" xmlns:ex="http://example.com"/> 
-->
 
</p:declare-step>
