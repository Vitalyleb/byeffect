<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html" xmlns:th="http://www.w3.org/1999/xhtml">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="​Автоматизированный алгоритм выбора антидепрессанта для терапии депрессивного эпизода у больных ишемической болезнью сердца​">
    <meta name="description" content="">
    <link href="//cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <title>Главная</title>
    <title>Автоматизированный алгоритм выбора антидепрессанта для терапии депрессивного эпизода у больных ишемической болезнью сердца</title>
    <style type="text/css">
        .custom-btn {
            width: 130px;
            height: 40px;
            color: #118f93;
            border-radius: 5px;
            padding: 10px 25px;
            font-family: 'Lato', sans-serif;
            font-weight: 500;
        }
        .btn-8 {
            background-color: #c38f93;
            background-image: linear-gradient(315deg, #f0ecfc 0%, #c797eb 74%);
            line-height: 42px;
            padding: 0;
            border: none;
        }
        table {
            font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
            font-size: 14px;
            border-collapse: collapse;
            text-align: center;
        }
        th, td:first-child {
            background: #AFCDE7;
            color: white;
            padding: 10px 20px;
        }
        th, td {
            border-style: solid;
            border-width: 0 1px 1px 0;
            border-color: white;
        }
        td {
            background: #D8E6F3;
        }
        th:first-child, td:first-child {
            text-align: left;
        }
    </style>
</head>
<body>


<h1><p align="center" style="font:italic 50px bold "Times New Roman> Автоматизированный алгоритм выбора антидепрессанта для терапии депрессивного эпизода у больных ишемической болезнью сердца </p></h1>
<ol class="u-align-justify u-text u-text-2">
    <li><p align="justify" style="font:italic 20px bold "Times New Roman>В первой
            графе («шаги алгоритма») поставьте «да» напротив выбранной Вами группы
            антидепрессантов, а затем и антидепрессанта, с Вашей точки зрения наиболее
            подходящих для конкретного пациента с ишемической болезнью сердца и
            диагностированным депрессивным расстройством.<br>
        </p></li>
    <li><p align="justify" style="font:italic 20px bold "Times New Roman>Далее
            последовательно анализируйте каждый из ниже представленных «шагов алгоритма»,
            отмечая каким-либо образом (например, «V»)
            желаемый эффект для конкретного пациента, а затем – и один, выбранный Вами из
            предложенной группы, антидепрессант.</p></li>
    <li><p align="justify" style="font:italic 20px bold "Times New Roman> Подсчитайте
            количество вариантов «да» для каждого из антидепрессантов. 3 препарата,
            набравших максимальное количество выборов, являются оптимальными для данного
            пациента с ИБС и выявленным депрессивным расстройством.</p></li>
    <li><p align="justify" style="font:italic 20px bold "Times New Roman>Уточните
            для выбранного антидепрессанта относительные противопоказания и взаимодействия
            с другими препаратами, принимаемыми пациентом в соответствии с инструкцией к
            применению.<br></p>
    </li>
</ol>
<br>


<#list effects as effect>
    <div>
        <table class="table_col" border="1" cellspacing="1" cellpadding="5" width="80%" align="center">
            <colgroup>
                <col style="background:#C7DAF0;">
            </colgroup>

            <tr>
                <td></td>
                <th>Эффекты</th>
                <th>Препараты</th>
            </tr>
            <tr class="tableBody" align="center" valign="middle">
                <td width="3%" align="center"> <input type="checkbox" class="select-item checkbox" name="select-item" value="1000"></td>
                <td width="50%" align="center">${effect.eff} </td>
                <td width="50%" align="center">${effect.pre}</td>
            </tr>

        </table>
        <#--        <input type="checkbox" id="eff" name="eff">-->
        <#--        <label><b>${effect.eff}</b> ${effect.pre}</label>-->
    </div>
</#list>

<form action="/calculation" method="get" target="_blank">
    <center><button class="custom-btn btn-8" type="submit"><span><a href="/calculation">Рассчет</a></span></button></center>
</form>
</body>
<script src="//cdn.bootcss.com/jquery/2.2.1/jquery.min.js"></script>
<script src="//cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script>
    $(function (){
        $("input.select-item").click(function () {
            var checked = this.checked;
            var all = $("input.select-all")[0];
            var total = $("input.select-item").length;
            var len = $("input.select-item:checked:checked").length;
            all.checked = len===total;
        });
    })
</script>
</html>