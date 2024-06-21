<br>
<br>
<br>
<br>

<form method="POST" action="https://recette-tpeweb.e-transactions.fr/php/">
    <input type="hidden" name="PBX_SITE" value="3277512">
    <input type="hidden" name="PBX_RANG" value="1">
    <input type="hidden" name="PBX_IDENTIFIANT" value="38023694">
    <input type="hidden" name="PBX_SOURCE" value="RWD">
    <input type="hidden" name="PBX_TOTAL" value="<?php echo $pbx_total; ?>">
    <input type="hidden" name="PBX_DEVISE" value="978">
    <input type="hidden" name="PBX_CMD" value="<?php echo $pbx_cmd; ?>">
    <input type="hidden" name="PBX_PORTEUR" value="<?php echo $pbx_porteur; ?>">
    <input type="hidden" name="PBX_RETOUR" value="Mt:M;Ref:R;TypeC:C;numC:j;dateP:W;Auto:A;Erreur:E">
    <input type="hidden" name="PBX_EFFECTUE" value="<?php echo $pbx_effectue; ?>">
    <input type="hidden" name="PBX_ANNULE" value="<?php echo $pbx_annule; ?>">
    <input type="hidden" name="PBX_REFUSE" value="<?php echo $pbx_refuse; ?>">
    <input type="hidden" name="PBX_REPONDRE_A" value="<?php echo $pbx_repondre_a; ?>">
    <input type="hidden" name="PBX_RUF1" value="POST">
    <input type="hidden" name="PBX_HASH" value="SHA512">
    <input type="hidden" name="PBX_TIME" value="<?php echo $dateTime; ?>">
    <!--<input type="hidden" name="PBX_SHOPPINGCART" value="&lt;?xml version=\&quot;1.0\&quot; encoding=\&quot;utf-8\&quot;?&gt;&lt;shoppingcart&gt;&lt;total&gt;&lt;totalQuantity&gt;02&lt;/totalQuantity&gt;&lt;/total&gt;&lt;/shoppingcart&gt;">!-->
    <!--<input type="hidden" name="PBX_BILLING" value="&lt;?xml version=\&quot;1.0\&quot; encoding=\&quot;utf-8\&quot;?&gt;&lt;Billing&gt;&lt;Address&gt;&lt;FirstName&gt;John&lt;/FirstName&gt;&lt;LastName&gt;Doe&lt;/LastName&gt;&lt;Address1&gt;16 avenue Emile Zola&lt;/Address1&gt;&lt;Address2&gt;&lt;/Address2&gt;&lt;ZipCode&gt;75015&lt;/ZipCode&gt;&lt;City&gt;Paris&lt;/City&gt;&lt;CountryCode&gt;250&lt;/CountryCode&gt;&lt;/Address&gt;&lt;/Billing&gt;">!-->
    <input type="hidden" name="PBX_HMAC" value="<?php echo $hmac; ?>">
    <input type="submit" value="Envoyer">
</form>
