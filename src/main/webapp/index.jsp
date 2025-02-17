<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator</title>
<style>
	*{
	    margin: 0px;
	    padding: 0px;
	}
	
	.main-container{
	    height: 100vh;
	    width: 100%;
	    display: flex;
	    justify-content: center;
	    align-items: center;
	}
	.cal-container{
	    height: 630px;
	    width: 430px;
	    /* border: 1px solid black; */
	    background-color: rgba(0, 0, 0, 0.726);
	    border-radius: 10px;
	    box-shadow: inset 0px 0px 10px black;
	}
	
	.screen{
	    width: 88%;
	    height: 60px;
	    /* border: 1px solid black; */
	    margin-bottom: 40px;
	    margin-top: 40px;
	    border-radius: 4px;
	    padding-right: 2px;
	    background-color: rgba(5, 192, 120, 0.849);
	    color: black;
	    font-size: 40px;
	    display: flex;
	    align-items: center;
	    justify-content: right;
	    box-shadow: 5px 5px 15px rgba(49, 36, 36, 0.178);
	}
	
	.screen-container{
	    display: flex;
	    justify-content: space-around;
	    align-items: center;
	}
	
	
	
	.line1{
	    width: 100%;
	    height: 60px;
	    /* border: 1px solid black; */
	    display: flex;
	    justify-content: space-around;
	    margin-bottom: 40px;
	}
	
	
	.line1 .btn{
	    /* border: 1px solid black; */
	    width: 60px;
	    height: 60px;
	    background-color: rgba(0, 0, 0, 0.37);
	    border-radius: 7px;
	    color: white;
	    font-size: 25px;
	    display: flex;
	    align-items: center;
	    justify-content: center;
	    box-shadow: 2px 2px 1px rgba(0, 0, 0, 0.507);
	}
	
	
	.line2{
	    width: 100%;
	    /* border: 1px solid black; */
	    height: 60px;
	    display: flex;
	    justify-content: space-around;
	}
	
	.line2 .btn{
	    height: 60px;
	    /* border: 1px solid black; */
	    width: 60px;
	    background-color: rgba(0, 0, 0, 0.37);
	    border-radius: 7px;
	    color: white;
	    font-size: 30px;
	    display: flex;
	    align-items: center;
	    justify-content: center;
	    box-shadow: 2px 2px 1px rgba(0, 0, 0, 0.507);
	}
	
	.line3{
	    width: 100%;
	    /* border: 1px solid black; */
	    height: 60px;
	    display: flex;
	    justify-content: space-around;
	    margin-top: 40px;
	}
	
	.line3 .btn{
	    height: 60px;
	    /* border: 1px solid black; */
	    width: 60px;
	    background-color: rgba(0, 0, 0, 0.37);
	    border-radius: 7px;
	    color: white;
	    font-size: 30px;
	    display: flex;
	    align-items: center;
	    justify-content: center;
	    box-shadow: 2px 2px 1px rgba(0, 0, 0, 0.507);
	}
	
	
	.line4{
	    width: 100%;
	    /* border: 1px solid black; */
	    height: 60px;
	    display: flex;
	    justify-content: space-around;
	    margin-top: 40px;
	}
	
	.line4 .btn{
	    height: 60px;
	    /* border: 1px solid black; */
	    width: 60px;
	    background-color: rgba(0, 0, 0, 0.37);
	    border-radius: 7px;
	    color: white;
	    font-size: 30px;
	    display: flex;
	    align-items: center;
	    justify-content: center;
	    box-shadow: 2px 2px 1px rgba(0, 0, 0, 0.507);
	}
	
	.line5{
	    width: 100%;
	    /* border: 1px solid black; */
	    height: 60px;
	    display: flex;
	    justify-content: space-around;
	    margin-top: 40px;
	}
	
	.line5 .btn{
	    height: 60px;
	    /* border: 1px solid black; */
	    width: 60px;
	    background-color: rgba(0, 0, 0, 0.37);
	    border-radius: 7px;
	    color: white;
	    font-size: 30px;
	    display: flex;
	    align-items: center;
	    justify-content: center;
	    box-shadow: 2px 2px 1px rgba(0, 0, 0, 0.507);
	}
	
	p{
	text-align:center;
	padding:10px;
	color:white;
	}
</style>
</head>
<body>
    <div class="main-container">
        <div class="cal-container">
            <div class="screen-container">
                <div class="screen">0</div>
            </div>

            <div class="line1">
                <button class="btn">AC</button>
                <button class="btn">Del</button>
                <button class="btn">%</button>
                <button class="btn">/</button>
            </div>

            <div class="line2">
                <button class="btn">7</button>
                <button class="btn">8</button>
                <button class="btn">9</button>
                <button class="btn">*</button>
            </div>

            <div class="line3">
                <button class="btn">6</button>
                <button class="btn">5</button>
                <button class="btn">4</button>
                <button class="btn">-</button>
            </div>

            <div class="line4">
                <button class="btn">1</button>
                <button class="btn">2</button>
                <button class="btn">3</button>
                <button class="btn">+</button>
            </div>

            <div class="line5">
                <button class="btn">0</button>
                <button class="btn">00</button>
                <button class="btn">.</button>
                <button class="btn">=</button>
            </div>
			<p>by ankitDeveloperx</p>
        </div>
    </div>
      
    
<script>
    let currentExpression = "";

    document.addEventListener("DOMContentLoaded", function() {
        let buttons = document.querySelectorAll(".btn");
        let screen = document.querySelector(".screen");

        buttons.forEach(button => {
            button.addEventListener("click", function() {
                let value = this.innerText;

                if (value === "=") {
                    calculateResult();
                } else if (value === "AC") {
                    currentExpression = "";
                    screen.innerText = "0";
                } else if (value === "Del") {
                    currentExpression = currentExpression.slice(0, -1);
                    screen.innerText = currentExpression || "0";
                } else {
                    currentExpression += value;
                    screen.innerText = currentExpression;
                }
            });
        });
    });

    function calculateResult() {
        // Regular expression to extract numbers & operator
        let match = currentExpression.match(/^(\d+\.?\d*)([+\-*/%])(\d+\.?\d*)$/);
        if (match) {
            let num1 = match[1];
            let operator = match[2];
            let num2 = match[3];

            fetch(`CalculatorServlet?num1=${num1}&num2=${num2}&operator=${encodeURIComponent(operator)}`)
                .then(response => response.text())
                .then(result => {
                    document.querySelector(".screen").innerText = result;
                    currentExpression = result;
                })
                .catch(error => console.error("Error:", error));
        } else {
            document.querySelector(".screen").innerText = "Error";
        }
    }

</script>
    
</body>
</html>