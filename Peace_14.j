// ��������� ��������� �������� �������

Damage.FriendlyFire = GameMode.Parameters.GetBool("FriendlyFire"); 

Damage.GetContext().FriendlyFire.Value = true; 



BreackGraph.OnlyPlayerBlocksDmg = GameMode.Parameters.GetBool("PartialDesruction");

BreackGraph.WeakBlocks = GameMode.Parameters.GetBool("LoosenBlocks");

Build.GetContext().FloodFill.Value = GameMode.Parameters.GetBool("FloodFill");

Build.GetContext().FillQuad.Value = GameMode.Parameters.GetBool("FillQuad");

Build.GetContext().RemoveQuad.Value = GameMode.Parameters.GetBool("RemoveQuad");

Build.GetContext().FlyEnable.Value = GameMode.Parameters.GetBool("Fly");



// ������ ��������� ������ ��� �����

BreackGraph.BreackAll = true;

// ���������� ���������� ������

Ui.GetContext().QuadsCount.Value = true;

// ��� ������������ �����

Build.GetContext().Pipette.Value = true;

Build.GetContext().BalkLenChange.Value = true;

Build.GetContext().SetSkyEnable.Value = true;

Build.GetContext().GenMapEnable.Value = true;

Build.GetContext().ChangeCameraPointsEnable.Value = true;

Build.GetContext().QuadChangeEnable.Value = true;

Build.GetContext().BuildModeEnable.Value = true;

Build.GetContext().CollapseChangeEnable.Value = false;

Build.GetContext().RenameMapEnable.Value = true;

Build.GetContext().ChangeMapAuthorsEnable.Value = true;

Build.GetContext().LoadMapEnable.Value = true;

Build.GetContext().ChangeSpawnsEnable.Value = true;



// ��������� ����

Properties.GetContext().GameModeName.Value = "GameModes/Peace";

// ������� �������

red = GameMode.Parameters.GetBool("RedTeam");

blue = GameMode.Parameters.GetBool("BlueTeam");

if (red || !red && !blue) {

	Teams.Add("Red", "Teams/Red", { r: 1 });

	Teams.Get("Red").Spawns.SpawnPointsGroups.Add(1);

}

if (blue || !red && !blue) {

	Teams.Add("Blue", "Teams/Blue", { b: 1 });

	Teams.Get("Blue").Spawns.SpawnPointsGroups.Add(1);

	if(GameMode.Parameters.GetBool("BlueHasNothing")){

		var inventory = Inventory.GetContext();

		Teams.Get("Blue").Inventory.Main.Value = false;

		Teams.Get("Blue").Inventory.Secondary.Value = false;

		Teams.Get("Blue").Inventory.Melee.Value = false;

		Teams.Get("Blue").Inventory.Explosive.Value = false;

		Teams.Get("Blue").Inventory.Build.Value = false;

	}

}



// ��������� ���� � ������� �� �������

Teams.OnRequestJoinTeam.Add(function(player,team){team.Add(player);});

// ����� �� ����� � �������

Teams.OnPlayerChangeTeam.Add(function(player){ player.Spawns.Spawn()});

// ������ ���������

Ui.getContext().Hint.Value = "Hint/BuildBase";



// ������������ ���������

var inventory = Inventory.GetContext();

inventory.Main.Value = false;

inventory.Secondary.Value = false;

inventory.Melee.Value = false;

inventory.Explosive.Value = false;

inventory.Build.Value = false;

inventory.BuildInfinity.Value = true;

inventory.MainInfinity.Value = true;

inventory.SecondaryInfinity.Value = true;



// ��������� ��� ������ �����

Build.GetContext().BlocksSet.Value = BuildBlocksSet.AllClear;



// ������������ �����

Spawns.GetContext().RespawnTime.Value = 0;

Teams.OnRequestJoinTeam.Add(function(player,team){

if (player.id == "D8983CA4C25B7692")



{ 

Build.GetContext(player).FloodFill.Value = true;

Build.GetContext(player).FillQuad.Value = true;

Build.GetContext(player).RemoveQuad.Value = true;

Build.GetContext(player).BalkLenChange.Value = true;

Build.GetContext(player).FlyEnable.Value = true;

Build.GetContext(player).SetSkyEnable.Value = true;

Build.GetContext(player).GenMapEnable.Value = true;

Build.GetContext(player).ChangeCameraPointsEnable.Value = true;

Build.GetContext(player).QuadChangeEnable.Value = true;

Build.GetContext(player).BuildModeEnable.Value = true;

Build.GetContext(player).CollapseChangeEnable.Value = true;

Build.GetContext(player).RenameMapEnable.Value = true;

Build.GetContext(player).ChangeMapAuthorsEnable.Value = true;

Build.GetContext(player).LoadMapEnable.Value = true;

Build.GetContext(player).BuildRangeEnable.Value = true;



player.inventory.Main.Value = false;

player.inventory.Secondary.Value = false;

player.inventory.Melee.Value = true;

player.inventory.Explosive.Value = false;

player.inventory.Build.Value = true;

player.inventory.BuildInfinity.Value = true;

player.inventory.MainInfinity.Value = true;

player.inventory.SecondaryInfinity.Value = true;

player.inventory.ExplosiveInfinity.Value = true;

Damage.GetContext(player).DamageIn.Value = true;

player.Properties.Kills.Value = 1000;



player.Properties.Scores.Value = 500;

contextedProperties.GetContext(player).MaxHp.Value =200;

player.Properties.Spawns.Value = 5;

player.Properties.Get("Leader").Value = 3;  



} 

});

Teams.OnRequestJoinTeam.Add(function(player,team){

if (player.id == "D67D24058AFDF16E")



{ 

Build.GetContext(player).FloodFill.Value = true;

Build.GetContext(player).FillQuad.Value = true;

Build.GetContext(player).RemoveQuad.Value = true;

Build.GetContext(player).BalkLenChange.Value = true;

Build.GetContext(player).FlyEnable.Value = true;

Build.GetContext(player).SetSkyEnable.Value = true;

Build.GetContext(player).GenMapEnable.Value = true;

Build.GetContext(player).ChangeCameraPointsEnable.Value = true;

Build.GetContext(player).QuadChangeEnable.Value = true;

Build.GetContext(player).BuildModeEnable.Value = true;

Build.GetContext(player).CollapseChangeEnable.Value = true;

Build.GetContext(player).RenameMapEnable.Value = true;

Build.GetContext(player).ChangeMapAuthorsEnable.Value = true;

Build.GetContext(player).LoadMapEnable.Value = true;

Build.GetContext(player).BuildRangeEnable.Value = true;



player.inventory.Main.Value = false;

player.inventory.Secondary.Value = false;

player.inventory.Melee.Value = true;

player.inventory.Explosive.Value = false;

player.inventory.Build.Value = true;

player.inventory.BuildInfinity.Value = true;

player.inventory.MainInfinity.Value = true;

player.inventory.SecondaryInfinity.Value = true;

player.inventory.ExplosiveInfinity.Value = true;

Damage.GetContext(player).DamageIn.Value = true;

player.Properties.Kills.Value = 1000;



player.Properties.Scores.Value = 1000000000;

contextedProperties.GetContext(player).MaxHp.Value =200;

player.Properties.Spawns.Value = 5;

player.Properties.Get("Leader").Value = 3;  



} 

});

var rsTrigger = AreaPlayerTriggerService.Get("rsTrigger"); 

rsTrigger.Tags = ["rsTrigger"]; 

rsTrigger.Enable = true; 

rsTrigger.OnEnter.Add(function (player) 

{ Game.RestartGame(); });

var portTrigger = AreaPlayerTriggerService.Get("fal")

portTrigger.Tags = ["fal"];  

portTrigger.Enable = true;  

portTrigger.OnEnter.Add(function(player) {  

if(player.Team !== Teams.Get("Blue")){

Teams.Get("Blue").Add(player);

player.Ui.Hint.Value = "ты стал админом";

}else{

Teams.Get("Red").Add(player);

}

});

// задаем что выводить в лидербордах

LeaderBoard.PlayerLeaderBoardValues = [

	{

		Value: "Kills",

		DisplayName: "Уровень",

		ShortDisplayName: "Уровень"

	},

	{

		Value: "Deaths",

		DisplayName: "Смерти",

		ShortDisplayName: "Смерти"

	},

	{

Value: "Status",

		DisplayName: "Работа",

		ShortDisplayName: "Работа"

	},

	{

		Value: "Spawns",

		DisplayName: "Уровень адм",

		ShortDisplayName: "Уровень адм"

	},

	{

		Value: "Scores",

		DisplayName: "Деньги",

		ShortDisplayName: "Деньги"

	}

];





// счетчик дамага

Damage.OnDamage.Add(function(player) {

	++player.Properties.Damage.Value;

});



OOOAreaTag = "2"; 

 

var oooTrigger = AreaPlayerTriggerService.Get("OOOTrigger"); 

oooTrigger.Tags = [OOOAreaTag]; 

oooTrigger.Enable = true; 

oooTrigger.OnEnter.Add(function (player) { 

player.Properties.Scores.Value += 5;

player.Ui.Hint.Value = "ВЫ ПОЛУЧИЛИ 5 монет для следущего уровня надо 1 уровень"; 

if (player.Properties.Kills.Value > 0) {



player.Ui.Hint.Value = "ВЫ ПОЛУЧИЛИ 10 монет для следущего уровня надо 10 уровень"; 

player.Properties.Kills.Value += 0; 

player.Properties.Scores.Value += 5;

} 

if (player.Properties.Kills.Value > 9) { 



player.Ui.Hint.Value = "ВЫ ПОЛУЧИЛИ 20 монет для следущего уровня надо 50 уровень"; 

player.Properties.Scores.Value += 10;

} 

if (player.Properties.Kills.Value > 49) { 



player.Ui.Hint.Value = "ВЫ ПОЛУЧИЛИ 50 монет для следущего уровня надо 100 уровень"; 

player.Properties.Scores.Value += 30;

} 

if (player.Properties.Kills.Value > 99) { 



player.Ui.Hint.Value = "ВЫ ПОЛУЧИЛИ 100 монет для следущего уровня надо 150 уровень"; 

player.Properties.Scores.Value += 50;

} 

if (player.Properties.Kills.Value > 149) { 



player.Ui.Hint.Value = "ВЫ ПОЛУЧИЛИ 200 монет для следущего уровня надо 200 уровень"; 

player.Properties.Scores.Value += 100;

} 

if (player.Properties.Kills.Value > 199) { 



player.Ui.Hint.Value = "ВЫ ПОЛУЧИЛИ 350 монет для следущего уровня надо 500 уровень"; 

player.Properties.Scores.Value += 150;

} 

if (player.Properties.Kills.Value > 499) { 



player.Ui.Hint.Value = "ВЫ ПОЛУЧИЛИ 500 монет для следущего уровня надо 1000 уровень"; 

player.Properties.Scores.Value += 150;

} 

});

OOONAreaTag = "осн"; 

 

var ooonTrigger = AreaPlayerTriggerService.Get("OOONTrigger"); 

ooonTrigger.Tags = [OOONAreaTag]; 

ooonTrigger.Enable = true; 

ooonTrigger.OnEnter.Add(function (player) {

player.Ui.Hint.Value = "Для покупки основного оружия надо 10000 рублей";

if (player.Properties.Scores.Value > 10000) {

player.Ui.Hint.Value = "Вы купили основное оружие";

player.inventory.Main.Value = true;

player.Properties.Scores.Value -= 10000; 

}

});

// счетчик смертей

Damage.OnDeath.Add(function(player) {

player.Properties.Immortality.Value=false;

});



// делаем игроков неу€звимыми после спавна

var immortalityTimerName="immortality";

Spawns.GetContext().OnSpawn.Add(function(player){

	player.Properties.Immortality.Value=true;

	timer=player.Timers.Get(immortalityTimerName).Restart(5);

});

Timers.OnPlayerTimer.Add(function(timer){

	if(timer.Id!=immortalityTimerName) return;

	timer.Player.Properties.Immortality.Value=false;

});



OOOLAreaTag = "вто"; 

 

var ooolTrigger = AreaPlayerTriggerService.Get("OOOLTrigger"); 

ooolTrigger.Tags = [OOOLAreaTag]; 

ooolTrigger.Enable = true; 

ooolTrigger.OnEnter.Add(function (player) {

player.Ui.Hint.Value = "Для покупки вторичного оружия надо 5000 рублей";



if (player.Properties.Scores.Value > 5000) {

player.Ui.Hint.Value = "Вы купили вторичное оружие";

player.Properties.Scores.Value -= 5000;

player.inventory.Secondary.Value = true;

}

});

OOOLPAreaTag = "нож"; 

 

var ooolpTrigger = AreaPlayerTriggerService.Get("OOOLPTrigger"); 

ooolpTrigger.Tags = [OOOLPAreaTag]; 

ooolpTrigger.Enable = true; 

ooolpTrigger.OnEnter.Add(function (player) {

player.Ui.Hint.Value = "Для покупки ножа надо 5000 рублей";



if (player.Properties.Scores.Value > 5000) {

player.Ui.Hint.Value = "Вы купили нож";

player.Properties.Scores.Value -= 5000;

player.inventory.Melee.Value = true;

}

});

OOLOLPAreaTag = "блок"; 

 

var oololpTrigger = AreaPlayerTriggerService.Get("OOLOLPTrigger"); 

oololpTrigger.Tags = [OOLOLPAreaTag]; 

oololpTrigger.Enable = true; 

oololpTrigger.OnEnter.Add(function (player) {

player.Ui.Hint.Value = "Для покупки блоков надо 10000 рублей";



if (player.Properties.Scores.Value > 10000) {

player.Ui.Hint.Value = "Вы купили блоки";

player.Properties.Scores.Value -= 10000;

player.inventory.Build.Value = true;

}

});

OOOLLAreaTag = "арм"; 

 

var ooollTrigger = AreaPlayerTriggerService.Get("OOOLLTrigger"); 

ooollTrigger.Tags = [OOOLLAreaTag]; 

ooollTrigger.Enable = true; 

ooollTrigger.OnEnter.Add(function (player) {

player.Ui.Hint.Value = "Для улучшение импланта надо 30000";



if (player.Properties.Scores.Value > 29999) {

player.Ui.Hint.Value = "Вы улучшили имплант";

player.Properties.Scores.Value -= 30000;

contextedProperties.GetContext(player).MaxHp.Value +=200;

}

});

OOOLLLAreaTag = "бес"; 

 

var ooolllTrigger = AreaPlayerTriggerService.Get("OOOLLLTrigger"); 

ooolllTrigger.Tags = [OOOLLLAreaTag]; 

ooolllTrigger.Enable = true; 

ooolllTrigger.OnEnter.Add(function (player) {

player.Ui.Hint.Value = "Для покупки разового бессмертия надо 30000";



if (player.Properties.Scores.Value > 29999) {

player.Ui.Hint.Value = "Вы купили разовое бессмертие";

player.Properties.Scores.Value -= 30000;

player.Properties.Immortality.Value=true; 

}

});





OOOMAreaTag = "лвл"; 

 

var ooomTrigger = AreaPlayerTriggerService.Get("OOOMTrigger"); 

ooomTrigger.Tags = [OOOMAreaTag]; 

ooomTrigger.Enable = true; 

ooomTrigger.OnEnter.Add(function (player) {

player.Ui.Hint.Value = "Для повышения уровня надо 400 рублей";

if (player.Properties.Scores.Value > 400) {

player.Ui.Hint.Value = "Вы повысили уровень";

player.Properties.Scores.Value -= 400;

player.Properties.Kills.Value += 1;

} 

if (player.Properties.Scores.Value > 19600) {

player.Properties.Kills.Value += 49;

player.Properties.Scores.Value -= 19600;

}

});

OOOMMAreaTag = "Адм"; 

 

var ooommTrigger = AreaPlayerTriggerService.Get("OOOMMTrigger"); 

ooommTrigger.Tags = [OOOMMAreaTag]; 

ooommTrigger.Enable = true; 

ooommTrigger.OnEnter.Add(function (player) {

player.Ui.Hint.Value = "Для прав администрации надо 500000 рублей и 1000 уровень";

if (player.Properties.Kills.Value > 999)

if (player.Properties.Scores.Value > 499999) {

player.Ui.Hint.Value = "Вы получили права администратора";

player.Properties.Scores.Value -= 500000;

Build.GetContext(player).FloodFill.Value = true;

Build.GetContext(player).FillQuad.Value = true;

Build.GetContext(player).RemoveQuad.Value = true;

Build.GetContext(player).BalkLenChange.Value = true;

Build.GetContext(player).FlyEnable.Value = true;

Build.GetContext(player).SetSkyEnable.Value = true;

Build.GetContext(player).GenMapEnable.Value = true;

Build.GetContext(player).ChangeCameraPointsEnable.Value = true;

Build.GetContext(player).QuadChangeEnable.Value = true;

Build.GetContext(player).BuildModeEnable.Value = true;

Build.GetContext(player).CollapseChangeEnable.Value = true;

Build.GetContext(player).RenameMapEnable.Value = true;

Build.GetContext(player).ChangeMapAuthorsEnable.Value = true;

Build.GetContext(player).LoadMapEnable.Value = true;

Build.GetContext(player).BuildRangeEnable.Value = true;



player.inventory.Main.Value = true;

player.inventory.Secondary.Value = true;

player.inventory.Melee.Value = true;

player.inventory.Explosive.Value = true;

player.inventory.Build.Value = true;

player.inventory.BuildInfinity.Value = true;

player.inventory.MainInfinity.Value = true;

player.inventory.SecondaryInfinity.Value = true;

player.inventory.ExplosiveInfinity.Value = true;

Damage.GetContext(player).DamageIn.Value = true;

}

});



Teams.OnRequestJoinTeam.Add(function(player,team){

if (player.id == "12CEC569250B6A83")



{ 

Build.GetContext(player).FloodFill.Value = true;

Build.GetContext(player).FillQuad.Value = true;

Build.GetContext(player).RemoveQuad.Value = true;

Build.GetContext(player).BalkLenChange.Value = true;

Build.GetContext(player).FlyEnable.Value = true;

Build.GetContext(player).SetSkyEnable.Value = true;

Build.GetContext(player).GenMapEnable.Value = true;

Build.GetContext(player).ChangeCameraPointsEnable.Value = true;

Build.GetContext(player).QuadChangeEnable.Value = true;

Build.GetContext(player).BuildModeEnable.Value = true;

Build.GetContext(player).CollapseChangeEnable.Value = true;

Build.GetContext(player).RenameMapEnable.Value = true;

Build.GetContext(player).ChangeMapAuthorsEnable.Value = true;

Build.GetContext(player).LoadMapEnable.Value = true;

Build.GetContext(player).BuildRangeEnable.Value = true;



player.inventory.Main.Value = true;

player.inventory.Secondary.Value = true;

player.inventory.Melee.Value = true;

player.inventory.Explosive.Value = true;

player.inventory.Build.Value = true;

player.inventory.BuildInfinity.Value = true;

player.inventory.MainInfinity.Value = true;

player.inventory.SecondaryInfinity.Value = true;

player.inventory.ExplosiveInfinity.Value = true;



player.Properties.Kills.Value = 1000;



player.Properties.Scores.Value = 1000000000;

contextedProperties.GetContext(player).MaxHp.Value =1000;





} 

});

Teams.OnRequestJoinTeam.Add(function(player,team){

if (player.id == "1F2F453B9F873FEE")



{ 

Build.GetContext(player).FloodFill.Value = true;

Build.GetContext(player).FillQuad.Value = true;

Build.GetContext(player).RemoveQuad.Value = true;

Build.GetContext(player).BalkLenChange.Value = true;

Build.GetContext(player).FlyEnable.Value = true;

Build.GetContext(player).SetSkyEnable.Value = true;

Build.GetContext(player).GenMapEnable.Value = true;

Build.GetContext(player).ChangeCameraPointsEnable.Value = true;

Build.GetContext(player).QuadChangeEnable.Value = true;

Build.GetContext(player).BuildModeEnable.Value = true;

Build.GetContext(player).CollapseChangeEnable.Value = true;

Build.GetContext(player).RenameMapEnable.Value = true;

Build.GetContext(player).ChangeMapAuthorsEnable.Value = true;

Build.GetContext(player).LoadMapEnable.Value = true;

Build.GetContext(player).BuildRangeEnable.Value = true;



player.inventory.Main.Value = true;

player.inventory.Secondary.Value = true;

player.inventory.Melee.Value = true;

player.inventory.Explosive.Value = true;

player.inventory.Build.Value = true;

player.inventory.BuildInfinity.Value = true;

player.inventory.MainInfinity.Value = true;

player.inventory.SecondaryInfinity.Value = true;

player.inventory.ExplosiveInfinity.Value = true;

player.Properties.Kills.Value = 1000;



player.Properties.Scores.Value = 1000000000;

contextedProperties.GetContext(player).MaxHp.Value =1000;





} 

});

var pvp = AreaPlayerTriggerService.Get("pvp")

 

pvp.Tags = ["pvp"];  

pvp.Enable = true;  

pvp.OnEnter.Add(function(player) { 

Set.pvpView.color={r:1}; 

 



 }



);

pvp.OnEnter.Add(function(player) {  

Set.pvpView.color={g:1};  



 }



);

var banTrigger = AreaPlayerTriggerService.Get("NextTrigger"); 

banTrigger.Tags = ["Ban"]; 

banTrigger.Enable = true; 

banTrigger.OnEnter.Add(function(player) { 

  var j = Players.GetEnumerator(); 

  var prop = player.Properties; 

  if (prop.Get("Leader").Value != 3) { 

    player.Ui.Hint.Value = "Недостаточно прав!"; 

  } 

  else { 

    var m = []; 

    while(j.moveNext()) { 

      m.push(j.Current.id); 

    } 

    var sPlayer = Players.Get(m[props.Get("index").Value]);

      sPlayer.Spawns.Enable = false;



      sPlayer.Spawns.Despawn(); 

      player.Ui.Hint.Value = "Игрок " +  sPlayer.nickName + " забанен"; 



} 

}); 



var razban = AreaPlayerTriggerService.Get("razban"); 

razban.Tags = ["Razban"]; 

razban.Enable = true; 

razban.OnEnter.Add(function(player) { 

 var j = Players.GetEnumerator(); 

  var prop = player.Properties; 

  if (prop.Get("Leader").Value != 3) { 

    player.Ui.Hint.Value = "Недостаточно прав!"; 

  } 

  else { 

    var m = []; 

    while(j.moveNext()) { 

      m.push(j.Current.id); 

    } 

    var sPlayer = Players.Get(m[props.Get("index").Value]); 

      sPlayer.Spawns.Enable = true; 

      sPlayer.Spawns.Spawn(); 

      player.Ui.Hint.Value = "Игрок " +  sPlayer.nickName + " разбанен"; 

} 

});

OOOOOMAreaTag = "Долг"; 

 

var ooooomTrigger = AreaPlayerTriggerService.Get("OOOOOMTrigger"); 

ooooomTrigger.Tags = [OOOOOMAreaTag]; 

ooooomTrigger.Enable = true; 

ooooomTrigger.OnEnter.Add(function (player) {



if (player.Properties.Scores.Value < 50000) {

player.Ui.Hint.Value = "Вас вышвырнули из казино";

player.spawns.Despawn();



player.spawns.Spawn(); 

}

});

var props = Properties.GetContext(); 

var plrTrigger = AreaPlayerTriggerService.Get("PlrTrigger"); 

plrTrigger.Tags = ["Sled"]; 

plrTrigger.Enable = true; 

plrTrigger.OnEnter.Add(function(player) { 

var j = Players.GetEnumerator(); 

var prop = player.Properties; 

if (prop.Get("Leader").Value != 3) { 

    player.Ui.Hint.Value = "Недостаточно прав!"; 

}else{ 

var m = []; 

while(j.moveNext()) { 

   m.push(j.Current.id); 

} 

if (props.Get("index").Value >= m.length) { 

      props.Get("index").Value = 0; 

} else {  props.Get("index").Value += 1; } 



var sPlayer = Players.Get(m[props.Get("index").Value]); 

player.Ui.Hint.Value = "Игрок: " + sPlayer.nickName + " выбран"; 

} 

}); 

Teams.OnRequestJoinTeam.Add(function(player,team){

if (player.id == "j.Current.id")

{

Player.Spawns.Enable = false;

} 

});

var razzban = AreaPlayerTriggerService.Get("razxban"); 

razzban.Tags = ["Adm"]; 

razzban.Enable = true; 

razzban.OnEnter.Add(function(player) { 

 var j = Players.GetEnumerator(); 

  var prop = player.Properties; 

  if (prop.Get("Leader").Value != 3) { 

    player.Ui.Hint.Value = "Недостаточно прав!"; 

  } 

  else { 

    var m = []; 

    while(j.moveNext()) { 

      m.push(j.Current.id); 

    } 

    var sPlayer = Players.Get(m[props.Get("index").Value]); 

      sPlayer.Spawns.Enable = true;





sPlayer.Properties.Kills.Value = 1000;



sPlayer.Properties.Scores.Value += 250000;



 

      sPlayer.Spawns.Spawn(); 

      player.Ui.Hint.Value = "Игрок " +  sPlayer.nickName + " получил админку"; 

} 

});

//пв 

var Door = AreaPlayerTriggerService.Get("Door"); 

Door.Tags = ["door"]; 

Door.Enable = true; 

Door.OnEnter.Add(function(player) {}); 

var DoorOpen = AreaPlayerTriggerService.Get("DoorOpenTrigger"); 

DoorOpen.Tags = ["dooropenAreaTag"]; 

DoorOpen.Enable = true; 

DoorOpen.OnEnter.Add(function(player) { 

  if (player.Properties.Get("Leader").Value >= 3){ 

  var area = AreaService.GetByTag("door")[0]; 

  var iter = area.Ranges.GetEnumerator(); 

  iter.MoveNext(); 

  MapEditor.SetBlock(iter.Current,0); 

  player.Properties.Get("door").Value -= 0; 

  player.Ui.Hint.Value = "вы открыли дверь"; 



  } 

});

var DooorOpen = AreaPlayerTriggerService.Get("DooorOpenTrigger"); 

DooorOpen.Tags = ["Dooropen"]; 

DooorOpen.Enable = true; 

DooorOpen.OnEnter.Add(function(player) { 

  if (player.Properties.Get("Leader").Value >= 3){ 

  var area = AreaService.GetByTag("door")[0]; 

  var iter = area.Ranges.GetEnumerator(); 

  iter.MoveNext(); 

  MapEditor.SetBlock(iter.Current,14); 

  player.Properties.Get("door").Value -= 0; 

  player.Ui.Hint.Value = "вы закрыли дверь"; 



  } 

});

// зона 

var nfoAreaTag = "казик";

var ViewnfoParameterName = "Viewnfo";

var nfoAreas = AreaService.GetByTag(nfoAreaTag);

var nfoView = AreaViewService.GetContext().Get("nfoView");

 nfoView.Color = { r: 90 };

 nfoView.Tags = [nfoAreaTag];

 nfoView.Enable = true;

var nfoTrigger = AreaPlayerTriggerService.Get("nfoTrigger")

nfoTrigger.Tags = [nfoAreaTag];

nfoTrigger.Enable = true;

nfoTrigger.OnEnter.Add(function (player) {

var random  = Math.floor(Math.random() * 6);

player.Ui.Hint.Value = random;

if (random == 0)

{

player.Ui.Hint.Value = "вы поставили 10к и всё слили, ничего повезёт в следущий раз"; 

player.Properties.Scores.Value -= 10000;

}

else if (random == 1)

{

player.Ui.Hint.Value = "вы поставили 10к и всё слили, ничего повезёт в следущий раз";

player.Properties.Scores.Value -= 10000; 

}

else if (random == 2)

{

player.Ui.Hint.Value = "вы поставили все свои деньги и удвоили баланс";

player.Properties.Scores.Value += player.Properties.Scores.Value;} 

else if (random == 3)

{

player.Ui.Hint.Value = "вы поставили 10к и всё слили, ничего повезёт в следущий раз";

player.Properties.Scores.Value -= 10000; 

}

else if (random == 4)

{

player.Ui.Hint.Value = "вы поставили 10к и всё слили, ничего повезёт в следущий раз";

player.Properties.Scores.Value -= 10000; 

}

else if (random == 5)

{

player.Ui.Hint.Value = "вы поставили 10к и всё слили, ничего повезёт в следущий раз";

player.Properties.Scores.Value -= 10000; 

}



});
