<!DOCTYPE html>
<html>
<head>
    <title>Результат работы алгоритма</title>
</head>
<body>
<h1>Результат работы алгоритма</h1><hr>
<#list effects as effect>
    <div>
        <p><b>${effect.eff}</b> ${effect.pre}</p>
    </div>
</#list>
<b>список: </b>${effect.eff} ${effect.pre}<br>
<hr>

</body>
</html>