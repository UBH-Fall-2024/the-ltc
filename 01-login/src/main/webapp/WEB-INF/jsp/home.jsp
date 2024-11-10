<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home Page</title>
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="/css/jumbotron-narrow.css">
    <link rel="stylesheet" type="text/css" href="/css/home.css">
    <link rel="stylesheet" type="text/css" href="/css/jquery.growl.css"/>
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="/js/jquery.growl.js" type="text/javascript"></script>
</head>

<body>

<div class="container">
    <div class="header clearfix">
        <nav>
            <ul class="nav nav-pills pull-right">
                <li id="qsLogoutBtn"><a href="#">Logout</a></li>
            </ul>
        </nav>
        <h3 class="text-muted">Into the Trivia Hole!</h3>
    </div>
    <div class="jumbotron">
        <h3>Hello ${userId}!</h3>
    </div>
    <style>
        body {
            background-image: url('aliceBackground.png');
        }
        .question {
            width: max-content;
            height: 100%;
            background-color: lightblue;
            text-align: center;
            font-size: 30px;
            border: 5px outset black;
            border-radius:25px;
            padding:5px;
            margin: auto;
            padding-top: 50px;
            padding-bottom: 50px;
        }
    
        .score {
            border: 5px outset black;
            background-color: white;
            text-align: left;
            width: max-content;
        }
    
        .Answer1 {
            color: black;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            cursor: pointer;
            border: 5px outset black;
            border-radius:25px;
            padding: 5px;
            width: max-content;
            margin: auto;
            margin-top: 25px;
        }
    
         .Answer2 {
            color: black;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            cursor: pointer;
            border: 5px outset black;
            border-radius:25px;
            padding: 5px;
            width: max-content;
            margin: auto;
            margin-top: 25px;
        }
    
        .Answer3 {
            color: black;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            cursor: pointer;
            border: 5px outset black;
            border-radius:25px;
            padding: 5px;
            width: max-content;
            margin: auto;
            margin-top: 25px;
        }
    
        .Answer4 {
            color: black;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            cursor: pointer;
            border: 5px outset black;
            border-radius:25px;
            padding: 5px;
            width: max-content;
            margin: auto;
            margin-top: 25px;
        } 
    </style>
    <title>
        WonderLand Trivia
    </title>
    
    <body></body>
    <div id="score" class="score">
        Score: 0/2500
    </div>
    <div id="question" class="question">
        <h1>
            Question: What color is Alice and wonderlands hair?
        </h1>
    </div>
    <button id="answer1" class="Answer1" onclick="checkAnswer(1)">
        Answer A
    </button>
    <button id="answer2" class="Answer2" onclick="checkAnswer(2)">
        Answer B
    </button>
    <button id="answer3" class="Answer3" onclick="checkAnswer(3)">
        Answer C
    </button>
    <button id="answer4" class="Answer4" onclick="checkAnswer(4)">
        Answer D
    </button>
    <script>
        let questionElement = document.getElementById("question");
    
        var margin = 0;
    
        let w = 1300;
    
        function moveRight() {
            console.log(w);
            if (margin == w) {
                margin = 0;
            } else {
                questionElement.style.marginLeft = margin + "px";
            }
            margin += 10;
    
        }
        let answer = document.getElementById("answer1");
     
        var topMargin = 0;
    
        let l = window.screen.height;
    
        function moveDown() {
            if (margin == l) {
                topMargin = 0;
            } else {
                answer.style.marginTop = topMargin + "px";
            }
            topMargin += 10;
        }
        var someVar = 0
    
        function flashColors() {
            if(someVar == 0) {
                someVar = 1;
                document.body.style.backgroundColor = "blue"
    
            } else {
                someVar = 0;
                document.body.style.backgroundColor = "white"
            }
        }
    
        const questions = [
            { question: "What is the White Rabbit’s catchphrase?", correct: "D", options: ["A. Let's go, let's go, let's go!", "B. Hurry up, hurry up, hurry up!", "C. My time has come! ", "D. I'm late, I'm late, I'm late!"] },
            //{ question: "How many songs are in Alice in Wonderland?", correct: "B", options: ["A. 7", "B. 14", "C. 11", "D. 5"] },
            { question: "What color dress does Alice wear?", correct: "A", options: ["A. Blue and White", "B. Orange And White", "C. Purple and Blue", "D. Red and Blue"] },
            { question: "What is the Queen's full name?", correct: "A", options: ["A. The Queen of Hearts", "B. The Queen of Spades", "C. The Queen of Clubs", "D. The Queen of Diamonds"] },
            { question: "When was Alice in Wonderland released(animated version)?", correct: "A", options: ["A. 1951", "B. 1965", "C. 1949", "D. 1970"] },
            //{ question: "What game does Alice play?", correct: "B", options: ["A. Football", "B. Croquet", "C. Horseshoes", "D. Basketball"] },
            //{ question: "What is the name of Alice's cat?", correct: "A", options: ["A. Dinah", "B. Joey", "C. Aram", "D. Yakub"] },
            //{ question: "Which animal does Alice follow into Wonderland?", correct: "B", options: ["A. A mouse", "B. Rabbit", "C. Horse", "D. Cat"] },
            { question: "Who wrote Alice’s Adventures in Wonderland", correct: "C", options: ["A. James Franklin", "B. Mark Danielowski", "C. Lewis Carroll", "D. Cathy Newman"] },
            //{ question: "What type of flower conducts the floral orchestra?", correct: "B", options: ["A. Lily", "B. Rose", "C. Daisy", "D. Orchid"] },
            //{ question: "According to the Queen of Hearts, people over what height are not permitted in the court?", correct: "D", options: ["A. One meter", "A yard", "A foot", "A mile"] },
            //{ question: "What beloved item did the March Hare destroy?", correct: "C", options: ["A. Key", "B. Clock", "C. Pocket Watch", "D. Bracelet"] },
            //{ question: "What is the first thing the Mad Hatter does to the White Rabbit's watch?", correct: "D", options: ["A. Eats it", "B. Throws it away", "C. Kicks it", "D. Dunks it in tea"] },
            //{ question: "Why couldn't the White Queen defeat the Jabberwocky herself?", correct: "A", options: ["A. It was against her vows", "B. She was tired", "C. She couldn't find her", "D. She didn't have the time"] },
            //{ question: "Which character sings 'Twas Brillig'?", correct: "B", options: ["A. The Caterpillar", "B. The Cheshire Cat", "C. Tweedledum and Tweedledee", "D. The March Hare"] },
            { question: "How tall is the caterpillar?", correct: "D.", options: ["A. One foot", "B. Four inches", "C. Nine inches", "D. 2 Feet"] },
            //{ question: "Where is the Red Queen's castle?", correct: "A", options: ["A. Salazen Grum", "B. Tulgey Wood", "C. Marmoreal", "D. The Stable"] },
            //{ question: "What is the name of the \"Lizard with the ladder\"?", correct: "A", options: ["A. Bill", "B. Smith", "C. Himzel", "D. Lizzy"] },
            { question: "What two animals were used in the croquet game?", correct: "B. ", options: ["A. Owl and Caterpiller", "B. Flamingo and hedgehog", "C. Dog and Cat", "D. Kittyo and Car"] },
            //{ question: "What colour were the roses being painted?", correct: "C", options: ["A. Blue", "2. Purple", "3. Red", "4. Pink"] },
            //{ question: "What month was on the calendar behind mother oyster in the oyster bed?", correct: "A", options: ["A. March", "B. October", "C. April", "D. None listed"] },
            { question: "Which ingredients are in the \"sauce that's fit for kings\"?", correct: "B", options: ["A. Paprika, chili powder, cumin, and white pepper", "B. Pepper, salt, vinegar, peppercorns, and mustard seeds", "C. Mustard grains, apple cider vinegar, and blue salt", "D. Cayenne, starch, and ketchup"] },
            //{ question: "The Mad Hatter's name is based on what historical basis?", correct: "B", options: ["A. People who wore hats were crazy", "B. Mercury was used in hat making", "C. Hat making as seen as an unskilled profession", "Hats were once believed to make people go crazy"] },
            { question: "Which character did not appear in Alice in Wonderland's book?", correct: "A", options: ["The Doorknob", "The Dormouse", "The Dodo", "The Frog-Footman"] },
            { question: "Where is a hidden Mickey in the movie?", correct: "C", options: ["A. In the scene where Alice meets the caterpiller it is behind a leaf stem.", "In the scene where Alice meets the Cheshire Cat, it is visable next to a sign on the tree.", "C.  In the scene where Alice grows and gets stuck in the White Rabbit's house, in Dodo bird's pipe flame", "D. In the tea party scene, it is inside the incriptions of the tea pots"] }
        ];
        const punishments = ["right", "down", "flash"]
    
        function loadNewQuestion() {
            if (i < questions.length - 1) {
                margin = 0;
                i += 1
                document.getElementById("question").innerHTML = questions[i].question
                document.getElementById("answer1").innerHTML = questions[i].options[0]
                document.getElementById("answer2").innerHTML = questions[i].options[1]
                document.getElementById("answer3").innerHTML = questions[i].options[2]
                document.getElementById("answer4").innerHTML = questions[i].options[3]
            }
            else {
                alert("Game Over!")
                document.write("Your score: " + points)
            }
        }
        points = 0
        function checkAnswer(num) {
            if (questions[i].correct.localeCompare(questions[i].options[num - 1].charAt(0)) == 0) {
                points += 100
            }
            else {
                randomPun = punishments[Math.floor(Math.random() * punishments.length)]
                if (randomPun.localeCompare("right") == 0){
                    setInterval(moveRight, 90)
                }
                else if (randomPun.localeCompare("down") == 0){
                    setInterval(moveDown, 90)
                }
                else if (randomPun.localeCompare("flash") == 0){
                    setInterval(flashColors, 1000)
                }
            }
            document.getElementById("score").innerHTML = "Score: " + points + "/" + maxPoints
            loadNewQuestion()
        }
        function firstRun() {
            maxPoints = 2500;
            i = 0
            document.getElementById("score").innerHTML = "Score: " + points + "/" + maxPoints
            document.getElementById("question").innerHTML = questions[i].question
            document.getElementById("answer1").innerHTML = questions[i].options[0]
            document.getElementById("answer2").innerHTML = questions[i].options[1]
            document.getElementById("answer3").innerHTML = questions[i].options[2]
            document.getElementById("answer4").innerHTML = questions[i].options[3]
        }
        firstRun()
    </script>

</div>

<script type="text/javascript">
    $("#qsLogoutBtn").click(function(e) {
        e.preventDefault();
        $("#home").removeClass("active");
        $("#password-login").removeClass("active");
        $("#qsLogoutBtn").addClass("active");
        // assumes we are not part of SSO so just logout of local session
        window.location = "${fn:replace(pageContext.request.requestURL, pageContext.request.requestURI, '')}/logout";
    });
</script>

</body>
</html>
