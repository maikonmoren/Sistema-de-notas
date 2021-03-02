<!DOCTYPE html>
<html lang="pt-br">

<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
  <link rel="stylesheet" href="../Recursos/bootstrap.min.css">
  <script src="https://kit.fontawesome.com/8a46eb2d1a.js" crossorigin="anonymous"></script>
</head>

<body style="background-color: (240,240,240);">
  <div class="container-fluid">
    <header>
      <nav>
      <br>
      <br>
        <div class="container-fluid">
          <h5 class="text-center">Sistema de Notas</h5>
          <hr>
        </div>
      </nav>
      
    
  </header>
  <div class="container-fluid">
    &nbsp;


    <div class="card" id="card_notas" >
      <div class="card-header">
        <nav class="navbar ">
          <div class="container-fluid">
            <div class="col-3 ">
              <h5 id="categoria">Categoria:  </h5>
            </div>
            <h6 id="runner">Cavaleiro/Amazona:  </h6><br>
            <h6 id="animal">Animal: </h6><br>&nbsp;
          </div>
        </nav>
      </div>

      <div class="card-body">
      <div class="container-fluid">
       <div class="row" >
     <h3 id="juiz_name" class="col-2 fs-5">JUIZ : <br></h3>
     <div class="col">      
     <div class="row fs-4 text-center">Manobra</div><hr>
     <div class="row fs-5 text-center">Penalidade </div><hr>     
     <div class="row fs-5 text-center">Pontuação</div><hr>
     </div> &nbsp;  
    <?php
            for($i=0;$i<8;$i++){   
                        echo '&nbsp;'; 
                        echo '<div class="col">';
                        echo '<div id="manobra" class="row card text-center fs-4 rounded">'.($i+1).'</div><hr>';
                        echo '<div id="p'.($i+1).'" class="row card text-center text-danger fs-5 rounded">-</div><hr>';
                        echo '<div id="m'.($i+1).'"class="row card text-center text-success fs-5 rounded">-</div><hr>';  
                        echo '</div>';                     
                    }
                    echo '&nbsp;<div id="total" class="col card text-center fs-4"> Total: <hr> 70</div>';
                    ?>
                    <br></div><hr size="6px">
        
        
            
        </div>    
      </div> 
          <!-- informações para nota -->
    
          <!-- daqui-->


            <!-- aqui-->
            <footer>
            <hr>
            <div class="card-text text-center"><small>Maikon Cristino<br>
              Sistema de notas</small>
            </div>
            <br>
            </footer>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
        <script>
$(document).ready(function(){
load();
setInterval(load,1000);

function load(){
  $.ajax({ 
            url:"../Controller/Action.php",
            type:'POST',
            data: {
                'opt':'Telao'
            },
            dataType:'JSON' 
        }).done(function(dads){
   if(dads[0].category != null) {
  //Informações
          $('#juiz_name').replaceWith('<h3 id="juiz_name" class="col-2 fs-5">JUIZ : <br> '+dads[0].judge+' </h3>');
          $('#categoria').replaceWith('<h5 id="categoria">Categoria: '+dads[0].category+'</h5>');
          $('#animal').replaceWith('<h6 id="animal">Animal: '+dads[0].animal+'</h6>');
          $('#runner').replaceWith('<h6 id="runner">Cavaleiro/Amazona: '+dads[0].runner+' </h6>');     
   //Pontos
          $('#m1').replaceWith('<div id="m1" class="row card text-center text-success fs-5 rounded">'+dads[0].m1+'</div>');
          $('#m2').replaceWith('<div id="m2" class="row card text-center text-success fs-5 rounded">'+dads[0].m2+'</div>');
          $('#m3').replaceWith('<div id="m3" class="row card text-center text-success fs-5 rounded">'+dads[0].m3+'</div>');
          $('#m4').replaceWith('<div id="m4" class="row card text-center text-success fs-5 rounded">'+dads[0].m4+'</div>');
          $('#m5').replaceWith('<div id="m5" class="row card text-center text-success fs-5 rounded">'+dads[0].m5+'</div>');
          $('#m6').replaceWith('<div id="m6" class="row card text-center text-success fs-5 rounded">'+dads[0].m6+'</div>');
          $('#m7').replaceWith('<div id="m7" class="row card text-center text-success fs-5 rounded">'+dads[0].m7+'</div>');
          $('#m8').replaceWith('<div id="m8" class="row card text-center text-success fs-5 rounded">'+dads[0].m8+'</div>');
  //penalidade  
          $('#p1').replaceWith('<div id="p1" class="row card text-center text-danger fs-5 rounded">'+dads[0].p1+'</div>');
          $('#p2').replaceWith('<div id="p2" class="row card text-center text-danger fs-5 rounded">'+dads[0].p2+'</div>');
          $('#p3').replaceWith('<div id="p3" class="row card text-center text-danger fs-5 rounded">'+dads[0].p3+'</div>');
          $('#p4').replaceWith('<div id="p4" class="row card text-center text-danger fs-5 rounded">'+dads[0].p4+'</div>');
          $('#p5').replaceWith('<div id="p5" class="row card text-center text-danger fs-5 rounded">'+dads[0].p5+'</div>');
          $('#p6').replaceWith('<div id="p6" class="row card text-center text-danger fs-5 rounded">'+dads[0].p6+'</div>');
          $('#p7').replaceWith('<div id="p7" class="row card text-center text-danger fs-5 rounded">'+dads[0].p7+'</div>');
          $('#p8').replaceWith('<div id="p8" class="row card text-center text-danger fs-5 rounded">'+dads[0].p8+'</div>');
  //Total
        var total=70;
        if(dads[0].m1 != '-' && dads[0].m1 != null ){ 
          total = (total+parseFloat(dads[0].m1));
        }
        if(dads[0].m2 != '-' && dads[0].m2 != null){
          total = (total+parseFloat(dads[0].m2));
        }
        if(dads[0].m3 != '-' && dads[0].m3 != null){
          total = (total+parseFloat(dads[0].m3));
        }
        if(dads[0].m4 != '-' && dads[0].m4 != null){
          total = (total+parseFloat(dads[0].m4));
        }
        if(dads[0].m5 != '-' && dads[0].m5 != null){
          total = (total+parseFloat(dads[0].m5));
        }
        if(dads[0].m6 != '-' && dads[0].m6 != null){
          total = (total+parseFloat(dads[0].m6));
        }
        if(dads[0].m7 != '-' && dads[0].m7 != null){
          total = (total+parseFloat(dads[0].m7));
        }
        if(dads[0].m8 != '-' && dads[0].m8 != null){
          total = (total+parseFloat(dads[0].m8));
        }
        if(dads[0].p1 != '-' && dads[0].p1 != null){ 
          total = (total+parseFloat(dads[0].p1));
        }
        if(dads[0].p2 != '-' && dads[0].p2 != null){
          total = (total+parseFloat(dads[0].p2));
        }
        if(dads[0].p3 != '-' && dads[0].p3 != null){
          total = (total+parseFloat(dads[0].p3));
        }
        if(dads[0].p4 != '-' && dads[0].p4 != null){
          total = (total+parseFloat(dads[0].p4));
        }
        if(dads[0].p5 != '-' && dads[0].p5 != null){
          total = (total+parseFloat(dads[0].p5));
        }
        if(dads[0].p6 != '-' && dads[0].p6 != null){
          total = (total+parseFloat(dads[0].p6));
        }
        if(dads[0].p7 != '-' && dads[0].p7 != null){
          total = (total+parseFloat(dads[0].p7));
        }
        if(dads[0].p8 != '-' && dads[0].p8 != null){
          total = (total+parseFloat(dads[0].p8));
        }

        $('#total').replaceWith('<div id="total" class="col card text-center fs-4"> Total: <hr>'+total+'</div>')
  
        }
          console.log(dads);

        }).fail(function(){
          alert('erro');
        });    
}
});
        </script>

</body>

</html>