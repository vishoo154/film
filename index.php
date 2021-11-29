
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>MyProject</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="icon" href="img/лого.png" type="image/x-icon">
	<link rel="shortcut icon" href="img/лого.png" type="image/x-icon"> 
	<link rel="stylesheet" href="css/main.css">

	<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Work+Sans&display=swap" rel="stylesheet">
</head>
<body>
	
	<div class="wrapper">	
		<header id="header" class="header">
			<div class="nav">
				<div class="nav1">
				<a href="#header"><img src="img/лого.png" alt="ViSh" class="logo"></a>
					<div class="viki">
					<p>
					ВИКИ<br />ФИЛЬМ
					</p>
					</div>	
					
					<div class="tp">
					<a href="#openModa" id="myBtn1" class="btn" >ВХОД</a>
					<a href="index1.php" id="myBtn1" class="btn" >таблица</a>
					<a href="#openModal" id="myBtn" class="btn1">РЕГИСТРАЦИЯ</a>
					</div>	
				</div>	
			</div>	
		</header>	
					


		<main id="skills" class="skills"> 
		<div class="container">
			<div class="description">
				<div class="description1">
				<h1>
				Обзоры на фильмы
				</h1>
				<p>
					Рецензии на популярные фильмы и разбор новых сезонов лучших сериалов
				</p>
					
				</div>
				<ul class="menu1">
					<li>
						<div class=film> 
						<img  src="img/1.jpg" class="img" >
						<h1>
							Лёд 2
						</h1>
						<p>
							Добавлено: 04.10.2021
						</p>
						<a href="tel:+79102534040" class="btn2">Перейти</a>
						</div>
					</li>
					<li>
						<div class=film> 
						<img  src="img/2.jpg" class="img" >
						<h1>
							Воздушный бой
						</h1>
						<p>
							Добавлено: 04.10.2021
						</p>
						<a href="tel:+79102534040" class="btn2">Перейти</a>
						</div>
					</li>
					<li>
						<div class=film> 
						<img  src="img/3.jpg" class="img" >
						<h1>
							Ангелы Чарли
						</h1>
						<p>
							Добавлено: 04.10.2021
						</p>
						<a href="tel:+79102534040" class="btn2">Перейти</a>
						</div>
					</li>
					<li>
						<div class=film> 
						<img  src="img/4.jpg" class="img" >
						<h1>
							Дама пик
						</h1>
						<p>
							Добавлено: 04.10.2021
						</p>
						<a href="tel:+79102534040" class="btn2">Перейти</a>
						</div>
					</li>
					<li>
						<div class=film> 
						<img  src="img/5.jpg" class="img" >
						<h1>
							Последний богатырь
						</h1>
						<p>
							Добавлено: 04.10.2021
						</p>
						<a href="tel:+79102534040" class="btn2">Перейти</a>
						</div>
					</li>
					<li>
						<div class=film> 
						<img  src="img/6.jpg" class="img" >
						<h1>
							Отпетые напарники
						</h1>
						<p>
							Добавлено: 04.10.2021
						</p>
						<a href="tel:+79102534040" class="btn2">Перейти</a>
						</div>
					</li>
					<li>
						<div class=film> 
						<img  src="img/7.jpg" class="img" >
						<h1>
							А зори здесь тихие...
						</h1>
						<p>
							Добавлено: 04.10.2021
						</p>
						<a href="tel:+79102534040" class="btn2">Перейти</a>
						</div>
					</li>
					<li>
						<div class=film> 
						<img  src="img/8.jpg" class="img" >
						<h1>
							Танцуй сердцем
						</h1>
						<p>
							Добавлено: 04.10.2021
						</p>
						<a href="tel:+79102534040" class="btn2">Перейти</a>
						</div>
					</li>
				</ul>
			</div>
		</div>	
		</main>

		<footer id="footer" class="footer">	
			<ul  class="mid">
				<li>
					<p>
						Обратная связь:<br />vikshu2001@mail.ru
					</p>
				</li>
				<li>
				<p>
					Разработчик:<br />vikshu2001@mail.ru
				</p>
			</li>				
			</ul>
			<img href="#header" src="img/лого.png" alt="ViSh" class="logo1">
		</footer>


		<div id="openModa" class="modal1">
    		<div class="modal-dialog">
       			<div class="modal-content">
        			<div class="modal-header">
         				<h3 class="modal-title">ВХОД</h3>
          				<a href="#close" title="Close" class="close">×</a>
         			</div>
         			<div class="modal-body">
          		 	<form action="/my-handling-form-page" method="post" class="form">
 				 	<ul>
   				 	<li>
     			 	<label for="mail" class="label">Эл. почта:</label>
    			  <input type="email" pattern="([A-z0-9_.-]{1,})@([A-z0-9_.-]{1,}).([A-z]{2,8})" id="mail" name="user_mail" class="input" required>
   				 	</li>
    			 	<li>
     				 <label for="password" class="label">Пароль:</label>
    			  <input type="password" inputmode="verbatim" pattern="(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" id="password" name="user_password" class="input" required title="Пароль должен быть на латинице и содержать как минимум одну заглавную букву и один символ">
   					 </li>
   				     </ul>
   				 	<label>
    				 <div class="clearfix">
     				 <button  type="submit" class="cancelbtn">ПРОДОЛЖИТЬ</button>
     				 <button href="#openModal" type="button" class="signupbtn"><a href="#openModal">РЕГИСТРАЦИЯ</a></button>
     				 </div>
					 </form>
          			</div>
          		</div>
       		</div>
    	</div>

		<div id="openModal" class="modal">
    		<div class="modal-dialog">
       			<div class="modal-content">
        			<div class="modal-header">
         				<h3 class="modal-title">Регистрация</h3>
          				<a href="#close" title="Close" class="close">×</a>
         			</div>
         		<div class="modal-body">
          		 <form action="/my-handling-form-page" method="post" class="form" name="form">
 				 <ul>
   				 <li>
     			 <label for="name" class="label">Имя:</label>
     			 <input type="text" pattern="[А-Яа-яЁё]{3,}" id="name" name="user_name" class="input" required title="Имя должно быть на русском. Пример: Степа, Петя, Вася, Оля" >
    			 </li>
   				 <li>
     			 <label for="mail" class="label">Эл. почта:</label>
    			  <input type="email" pattern="([A-z0-9_.-]{1,})@([A-z0-9_.-]{1,}).([A-z]{2,8})" id="mail" name="user_mail" class="input" required >
   				 </li>
  				  <li>
    			  <label for="number" class="label">Телефон:</label>
    			  <input type="tel" pattern="\\+7\\s?[\\(]{0,1}9[0-9]{2}[\\)]{0,1}\\s?\\d{3}[-]{0,1}\\d{2}[-]{0,1}\\d{2}" id="number" name="user_number" class="input" required title="Телефон записывается в формате +7__________. Пример: +79102534040" >
    			 </li>
    			 <li>
     			 <label for="password" class="label">Пароль:</label>
    			  <input type="password" inputmode="verbatim" pattern="(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" id="password" name="user_password" class="input" required title="Пароль должен быть на латинице и содержать как минимум одну заглавную букву и один символ" >
   				 </li>
   				 <li>
     			 <label for="password1" class="label">Повторите пароль:</label>
    			  <input type="password" inputmode="verbatim" pattern="(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" id="password1" name="user_password1" class="input" required >
   				 </li>
   				  </ul>
   				 <label>
     			 <input type="checkbox" checked="checked" name="remember" required> Согласен на обработку персональных данных </label>
    			 <div class="clearfix">
     			 <button  type="submit" class="cancelbtn">ПРОДОЛЖИТЬ</button>
     			 <button   type="button" class="signupbtn"><a href="#openModa">ВХОД<a></button>
     			 </div>
				 </form>
          		</div>
          		</div>
       		</div>
    	</div>	
    </div>
	<script src="C:\\Users\\user\\Desktop\\сайт\\главная\\js\\modal.js"></script>
</body>
</html>