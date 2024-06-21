<?php

function api_get_results($url, $param = null){
    $url = "https://b2-gp93.kevinpecro.info/api/".$url."/";
    if(isset($param) && $param)
        $param += array('HTTP_AUTHORIZATION' => 'TGUgdmVudCBzb3VmZmxlIGRvdWNlbWVudCDChCB0csOpdXJzIGxlcyBhcmJyZXMsIGNodWNo');
    else
        $param = array('HTTP_AUTHORIZATION' => 'TGUgdmVudCBzb3VmZmxlIGRvdWNlbWVudCDChCB0csOpdXJzIGxlcyBhcmJyZXMsIGNodWNo');
    $curl = curl_init();
    curl_setopt($curl, CURLOPT_URL, $url);
    curl_setopt($curl, CURLOPT_POST, true);
    curl_setopt($curl, CURLOPT_POSTFIELDS, http_build_query($param));
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
    $reponse = curl_exec($curl);
    curl_close($curl);
    if($reponse === false)
        return false;
    else return json_decode($reponse, true);
}

function api_get_result($url,$id){
    $url = "https://b2-gp93.kevinpecro.info/api/".$url."/".$id.'/';
    $data = array(
        'HTTP_AUTHORIZATION'=>'TGUgdmVudCBzb3VmZmxlIGRvdWNlbWVudCDChCB0csOpdXJzIGxlcyBhcmJyZXMsIGNodWNo',
    );

    $curl = curl_init();
    curl_setopt($curl, CURLOPT_URL, $url);
    curl_setopt($curl, CURLOPT_POST, true);
    curl_setopt($curl, CURLOPT_POSTFIELDS, http_build_query($data));
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);

    $reponse = curl_exec($curl);
    curl_close($curl);
    if($reponse === false){
        echo 'Erreur cURL : '.curl_error($curl);return false;
    }else return json_decode($reponse, true);
}

