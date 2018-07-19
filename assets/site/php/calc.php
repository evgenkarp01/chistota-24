<?php
	$sendto   = "evgenkarp01@ya.ru";

	if(isset($_POST['name'])){
		$name = strip_tags($_POST['name']);
	}else{
		$name = '';
	}
		$name = htmlspecialchars($name);
		$name = trim($name);
	if ($name == ""){
		$name .= "Не было указано имя, поэтому указываю внешний IP: ";
		$name .=  $_SERVER['REMOTE_ADDR'];
	}
	
	if(isset($_POST['phone'])){
		$tel = strip_tags($_POST['phone']);
	}else{
		$tel = '';
	}
		$tel = htmlspecialchars($tel);
		$tel = trim($tel);

		$usermail = "noreply@vesem-s-umom.ru";

		$time  =  $_POST['time']; 							// на сколько часов подается машина
		$predmet = $_POST['predmet'];						// для чего подается машина
		$perKm  =  $_POST['perKm'];							// сколько километров по России
		$gruzchikSum  =  $_POST['gruzchikSum'];				// на какую сумму заказаны грузчики
		$predmetSum  =  $_POST['predmetSum'];				// стоимость перевозимого придмета
		$napravlenieSumm  =  $_POST['napravlenieSumm'];		// сумма денег за указанные часы
		$otkudaVal  =  $_POST['otkuda'];					// откуда едем
		$napr  =  $_POST['napr'];							// в каком направлении едем
		$kudaEdemBoleeDvesteKmSum  =  $_POST['kudaEdemBoleeDvesteKmSum']; // сколько стоит путь по России
		$kudaVal  =  $_POST['kuda'];						// куда по области едем
		$kudaValSumm  =  $_POST['kudaValSumm'];				// сколько стоит доехать по области
		$summa  =  $_POST['summa'];							// ИТОГОВАЯ ЦЕНА



		switch ($kudaVal) {
		   case 1:
		    	$kuda = "Азов";
		    break;
		   case 2:
		    	$kuda = "Таганрог";
		    break;
		   case 3:
		    	$kuda =  "Новочеркасск";
		    break;
		   case 4:
		    	$kuda =  "Шахты";
		    break;
		   case 5:
		    	$kuda =  "Каменск-Шахтинский";
		    break;
		   case 6:
		    	$kuda =  "Б.Калитва";
		    break;
		   case 7:
		    	$kuda =  "Донецк";
		    break;
		   case 8:
		    	$kuda =  "Другие города области";
		    break;
			default:
		       $kuda = 0;
		}


		switch ($otkudaVal) {
			case 1:
			    	$otkudaVal = "Ростов-на-Дону";
			    break;
			case 2:
			    	$otkudaVal = "Батайск";
			    break;
			default:
			       $otkudaVal = 0;
		}


		switch ($predmet) {
			case 1:
			    	$predmet = "ТЕХНИКУ/ВЕЩИ";
			    break;
			case 2:
			    	$predmet = "БЫТ.МУСОР";
			    break;
			case 3:
			    	$predmet = "СТРОЙ.МУСОР";
			    break;
			default:
			       $predmet = 0;
		}
		
	$subject  = "Новое сообщение - с сайта VESEM-S-UMOM.RU - Рассчет стоимости с калькулятора";
	$headers  = "From: " . strip_tags($usermail) . "\r\n";
	$headers .= "Reply-To: ". strip_tags($usermail) . "\r\n";
	$headers .= "MIME-Version: 1.0\r\n";
	$headers .= "Content-Type: text/html;charset=utf-8 \r\n";
	$msg  = "<html><body style='font-family:Arial,sans-serif;'>";
	$msg .= "<h2 style='font-weight:bold;border-bottom:1px dotted #ccc;'>Новое сообщение - КАЛЬКУЛЯТОР</h2>\r\n";
	$msg .= "<p><strong>Имя:</strong> ".$name."</p>\r\n";
	$msg .= "<p><strong>Телефон:</strong> ".$tel."</p>\r\n";

	$msg .= "<p><strong>На сколько часов подается машина:</strong> ".$time."ч</p>\r\n";
	$msg .= "<p><strong>Что клиент хочет перевозить ".$predmet.", стоимостью:</strong> ".$predmetSum."р</p>\r\n";
	if((isset($_POST['perKm']))&&($perKm > 10)){
		$msg .= "<p><strong>Сколько киломметров по России:</strong> ".$perKm."км</p>\r\n";
	}
	if((isset($_POST['gruzchikSum']))&&($gruzchikSum != 0)){
		$msg .= "<p><strong>Грузчики заказаны на " .$time. "ч и на сумму:</strong> ".$gruzchikSum."р</p>\r\n";
	}
	$msg .= "<p><strong>Сумма денег за " .$time. "ч составила:</strong> ".$napravlenieSumm."р</p>\r\n";
	$msg .= "<p><strong>Машину нужно подать  из:</strong> ".$otkudaVal."</p>\r\n";
	$msg .= "<p><strong>Клиент выбрал направление:</strong> ".$napr."</p>\r\n";
	if((isset($_POST['kudaEdemBoleeDvesteKmSum']))&&($perKm > 10)){
		$msg .= "<p><strong>За заданное количество пути в " .$perKm. "км по России, сумма составляет:</strong> ".$kudaEdemBoleeDvesteKmSum."р</p>\r\n";
	}
	if((isset($_POST['kuda'])&&($kudaVal != 0))){
		$msg .= "<p><strong>Клиент выбрал путь по области до " .$kuda. " на сумму:</strong> ".$kudaValSumm."р</p>\r\n";
	}
	$msg .= "<p><strong>ИТОГОВАЯ СУММА ПО ЗАКАЗУ:</strong> ".$summa." РУБЛЕЙ</p>\r\n";

	$msg .= "</body></html>";
	if(@mail($sendto, $subject, $msg, $headers)) {
		echo "<div id='contact_successfully' >Мы уже обрабатываем ваше сообщение!</div>";
	} else {
		echo "Ошибка при передаче данных";
	}
?>