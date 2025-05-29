<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Калькулятор сложных процентов</title>
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-green-100">
<div>
    <div class="bg-white mx-auto text-center w-1/2 py-5 shadow-xl rounded-3xl my-20 max-w-2xl">
        <h2 class="text-4xl font-semibold border-b pb-2 mx-6">Калькулятор сложных процентов</h2>
        <!-- If the error attribute is present in the forwarded request, display it -->
        <h3 class="bg-red-300 text-red-900 font-semibold text-xl w-80 rounded-lg my-2 mx-auto"></error></h3>
        <div>
            <form action="/" method="post">
                <div class="grid grid-cols-2 gap-4 my-5 mx-8">
                    <label for="principleamount" class="text-xl flex items-center">Сумма вклада: <span class="text-gray-500 mx-1">$</span></label>
                    <input type="number" id="principleamount" name="principleamount" value="${principle}" class="w-full p-1 border-2 placeholder-blue-800 border-blue-700 rounded">

                    <label for="interest" class="text-xl flex items-center">Процентная ставка:</label>
                    <input type="number" id="interest" name="interest" min="1" max="100" value="${interest}" class="w-full p-1 border-2 placeholder-blue-800 border-blue-700 rounded">

                    <label for="years" class="text-xl flex items-center">Период в годах</label>
                    <input type="number" id="years" name="years" min="1" value="${years}" class="w-full p-1 border-2 placeholder-blue-800 border-blue-700 rounded">

                    <label for="compoundingperiod" class="text-xl flex items-center">Период начисления <span class="text-gray-500">(1-12)</span></label>
                    <input type="number" id="compoundingperiod" name="compoundingperiod" min="1" max="12" value="${compoundingperiod}" class="w-full p-1 border-2 placeholder-blue-800 border-blue-700 rounded">
                </div>

                <!-- Блок с формулой в виде изображения -->
                <div class="bg-gray-100 p-4 rounded-lg mx-8 my-4 text-center">
                    <p class="text-lg font-mono mb-2">Формула расчета:</p>
                    <img src="formula-image.png" alt="Формула сложных процентов" class="mx-auto h-20">
                    <p class="text-sm mt-2 text-left">Где:
                        <br>P - основная сумма (${principle})
                        <br>r - годовая процентная ставка (${interest}%)
                        <br>n - количество периодов начисления в год (${compoundingperiod})
                        <br>t - количество лет (${years})
                    </p>
                </div>

                <button type="submit" class="bg-purple-300 text-xl font-semibold px-4 py-1 rounded-lg hover:bg-purple-800 hover:text-white">Рассчитать</button><br>
                <p class="text-3xl font-mono text-green-600">Результат: ${result}</p>
            </form>
        </div>
    </div>
</div>


</body>
</html>

