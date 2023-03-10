<!DOCTYPE html>
<html>
<head>
    <title> BYEFFECTS</title>
</head>
<BODY>
<h1>byeffects</h1><hr>
<h4>Effect from table</h4>
<#list effects as effect>
    <div>
        <p> <b>${effect.id}</b> ${effect.eff} ${effect.pre} </p>
    </div>
</#list>
</BODY>
</html>