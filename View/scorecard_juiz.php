<!DOCTYPE html>
<html lang="pt-br">
<?php 
      session_start();
      if(!isset($_SESSION["juiz_id"]) || !isset($_SESSION["juiz_nome"]))
      {
      header("Location: ../Index.php");
      exit;
      }
?>
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
  <link rel="stylesheet" href="../Vedor/estilo.css">
  <script src="https://kit.fontawesome.com/8a46eb2d1a.js" crossorigin="anonymous"></script>
</head>

<body style="background-color: (240,240,240);">
  <div class="container-fluid">
    <header>
      <nav>
        <br>
        <div class="container-fluid">
          <h5 class="text-center">Sistema de Notas</h5>
          <hr>
        </div>
      </nav>
      <nav class="navbar " id="group_select">
        <div class="container-fluid">
          <div class="col-7">
          <select class="custom-select btn btn-dark" id="selectEvento" name="provaid">
            <option value="0" selected="">Selecione o Evento</option>
            </select>
            <select class="custom-select btn btn-dark" id="selectCat" name="provaid" disabled>
              <option value="0" selected="">Selecione a categoria</option>
              <option value="1">Amador N1</option>
              <option value="2">Amador</option>
              <option value="3">Amador Iniciante</option>
              <option value="4">Aberta N1</option>
              <option value="5">Aberta</option>
              <option value="6">Jovem 10</option>
              <option value="7">Jovem 13 a 15</option>
              <option value="8">Jovem 15</option>
              <option value="9">Pré Futurity Aberta</option>
              <option value="10">Pré Futurity Amador</option>
              <option value="11">Passeio</option>
            </select>
          
          </div>
          <a href="../Index.php" id="btnsair" class="btn btn-dark"><i class="fas fa-sign-out-alt"></i>&nbsp;Sair</a>
        </div>
  </div>
  </nav>
  </header>
  <div class="container-fluid">
    &nbsp;


    <div class="card" id="card_notas">
      <div class="card-header">
        <nav class="navbar ">
          <div class="container-fluid">
            <div class="col-3">
              <h5 id="categoria"></h5>
            </div>
            <h6 id="Draw">Draw : </h6><br>
            <div class="btn-group dropstart">
              <button class="btn btn-dark" type="button" id="MenuNav" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-align-justify"></i></button>
              <ul class="dropdown-menu" aria-labelledby="MenuNav">
               
                <li><a class="dropdown-item" id="btn_mudarCategoria" href="#"><i class="fas fa-list-ol"></i>&nbsp;Mudar categoria</a></li>
                
              </ul>
            </div>
          </div>
        </nav>
      </div>

      <div class="card-body">
        <div class="row">
          <!-- decriçoes-->
          <div class="col-2">
            <div class="row">
              <div class="col">
                MANEUVER
              </div>
            </div>
            <br>
            <div class="row">
              <div class="col">
                MANEUVER <br> DESCRIPTION
              </div>
            </div>
            <br>
            <div class="row">
              <div class="col">
                PENALTY
              </div>
            </div>
            <br>
            <div class="row">
              <div class="col">
                SCORE
              </div>
            </div>
          </div>
          <!-- informações para nota -->
          <?php
          $cont = 8;
          for ($i = 0; $i < 8; $i++) {
            echo '<div class="col" id=' . ($i + 1) . '>';
            echo '<div class="row">';
            echo '<div class="col text-center">' . ($i + 1) . '</div>';
            echo '</div><br>';
            echo '<div class="row">';
            echo '<div class="col text-center">M' . $i . '</div>';
            echo ' </div><br>';
            echo '<div class="row">';
            echo '<div class="col">
            <input class="form-control" type="number" max="0" step="0.5" id="penalidade' . ($i + 1) . '" value="0" name="penalidade1" style="width: 72px; height: 40px; text-align: center;" >
            </div>';
            echo ' </div><br>';
            echo '<div class="row">';
            echo '<div class="col">
            <select class="form-control text-center salva" type="number"  id="manobra' . ($i + 1) . '" name="manobra' . ($i + 1) . '" style="height:40px;width: 72px;text-align: center;" >
            <option value="1.5">+1 1/2</option>
            <option value="1">+1</option>
            <option value="0.5">+1/2</option>
            <option value="0" selected="">0</option>
            <option value="-0.5">-1/2</option>
            <option value="-1">-1</option>
            <option value="-1.5">-1 1/2</option>
            </select><br>
            <button class="btn btn-dark" id="btn_m'. ($i + 1) . '" style="width: 72px; height: 40px; text-align: center;">Salvar</button><hr>
            </div>';
            echo '</div></div><br>';
          }

          ?>
          <!-- daqui-->
          <div class="row">
          &nbsp;<input type="button"  id="proximoCompetidor" value="Proximo competidor" class=" col btn btn-dark">&nbsp;&nbsp;<input type="button"  data-bs-toggle="modal" data-bs-target="#zerarModal" class=" col  btn btn-danger" value="Zerar" >

          </div>
<!-- Modal zerar -->
        <div class="modal fade" id="zerarModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Qual manobra zerou</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body ">
      <div class="container-fluid">
      <form id="zerarnota" action="" method="POST">
      <select style="height:40px" class="btn btn-dark" id="percursozerar" required>
              <option id="P_S_ini" value="0" selected="">Percurso</option>
              <option id="1" value="1">1</option>
              <option id="2" value="2">2</option>
              <option id="3" value="3">3</option>
              <option id="4" value="4">4</option>
              <option id="5" value="5">5</option>
              <option id="6" value="6">6</option>
              <option id="7" value="7">7</option>
              <option id="8" value="8">8</option>
              <option id="9" value="9">9</option>
              <option id="10" value="10">10</option>
              <option id="11" value="11">11</option>
              <option id="12" value="12">12</option>
              <option id="13" value="13">13</option>
            </select>
    
      </div>
      <hr>
      <div class="d-grid gap-2 form-group">
      <input type="submit" class="btn btn-dark" value="Zerar Nota">
      <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cancelar</button>
      </form>
      </div>
      </div>
    </div>
  </div>
</div>
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
 //Carrega os eventos cadastradi
 $(document).ready(function(){
          $.ajax({ 
            url:"../Controller/Action.php",
            type:'POST',
            data: {
                'opt':'Eventos'
            },
            dataType:'JSON' 
        }).done(function(dads){
          console.log(dads);
          var dados = dads;
          var i;
          for(i=0;i<dados.length;i++){
          $('#selectEvento').append('<option value="'+dados[i].evento_id+'">'+dados[i].evento_nome +'</option>');
}
        }).fail(function(){
          alert('erro');
        });    
});
    //Variaveis de controle 
        var evento = "";
        var competidor = 0;
        var manobra = 0;
        var competidores;
          $('#btn_mudarCategoria').click(function() {
            location.reload();
          });
          $('input').keyup(function(){
            if(this.value>0){
              this.value = (this.value * -1);
            }
          });
  // Libera para escolher categoria 
  $('#selectEvento').on('change', function() {
      $('#selectCat').removeAttr('disabled');
      evento = $('#selectEvento').val();
  });
  // Carrega todos os competidores
  $(function () {
      competidor = 0;
    $('#selectCat').change(function(){
     $('#Draw').replaceWith('<h6 id="Draw">Draw : </h6>')
      $.ajax({ 
            url:"../Controller/Action.php",
            type:'POST',
            data: {
                'opt':'Iniciar',
                'category':$('#selectCat :selected').text(),
                'event' : $('#selectEvento').val()
            },
            dataType:'JSON' 
        }).done(function(dads){
          $('#Draw').append(dads[0].name); 
          competidores = dads;
          MudarRunner();
          console.log(dads);
          $('card_notas').removeAttr('hidden');
          $('#selectCat').hide();
          $('#selectEvento').hide();
        }).fail(function(){
          alert('falha  1 erro');
        });
    });
});

  //Sair 
     $('#btnsair').click(function(){
        $.ajax({
            url: "../Controller/Action.php",
            type: 'POST',
            data: {
              'opt' : 'Sair'
            }
        }).done(function(dados){
          console.log(dados);
           window.location('../Index.php');
        }).fail(function(dads){
          alert('Erro ao sair');
        })
     });
  // Salvar nota
   $(function () {
    $('button').click(function(){
    var penalidade,ponto,manobra,draw;
      switch(this.id){
        case 'btn_m1': penalidade = $('#penalidade1').val();ponto = $('#manobra1').val(); manobra=1 ;break;
        case 'btn_m2': penalidade = $('#penalidade2').val();ponto = $('#manobra2').val(); manobra=2;break;
        case 'btn_m3': penalidade = $('#penalidade3').val();ponto = $('#manobra3').val(); manobra=3;break;
        case 'btn_m4': penalidade = $('#penalidade4').val();ponto = $('#manobra4').val(); manobra=4;break;
        case 'btn_m5': penalidade = $('#penalidade5').val();ponto = $('#manobra5').val(); manobra=5;break;
        case 'btn_m6': penalidade = $('#penalidade6').val();ponto = $('#manobra6').val(); manobra=6;break;
        case 'btn_m7': penalidade = $('#penalidade7').val();ponto = $('#manobra7').val(); manobra=7;break;
        case 'btn_m8': penalidade = $('#penalidade8').val();ponto = $('#manobra8').val(); manobra=8;break;
      } 
      draw = $('#draw_numero').val();

      $.ajax({ 
            
            url:"../Controller/ActionNota.php",
            type:'POST',
            data: {
                'opt':'Salvar',
                'penalidade':penalidade,
                'ponto': ponto,
                'manobra':manobra,
                'user_id': competidores[competidor].id,
                'evento_id': $('#selectEvento').val()
            }
        }).done(function(dados){
            console.log(dados);
        }).fail(function(){
            $( 'button' ).append( 'Requisição falhou!' );
        });
    });
});
// Proximo competidor
       
    function novoCompetidor(){
      competidor++; 
        if(competidores[competidor] == null){
          alert('Sem mais competidores');
          location.reload();
        }else{
        $('#Draw').replaceWith('<h6 id="Draw">Draw : </h6>');
        $('#Draw').append(competidores[competidor].name); 
        MudarRunner();
        for(i=0;i<8;i++){
          $('#penalidade'+(i+1)).val(0);
        }
        for(i=0;i<8;i++){
          $('#manobra'+(i+1)).val(0);
        }
        }
    }
    
    $('#proximoCompetidor').click(function(){
        novoCompetidor();
     /* competidor++; 
        if(competidores[competidor] == null){
          alert('Sem mais competidores');
        }else{
        $('#Draw').replaceWith('<h6 id="Draw">Draw : </h6>');
        $('#Draw').append(competidores[competidor].name); 
        MudarRunner();
        for(i=0;i<8;i++){
          $('#penalidade'+(i+1)).val(0);
        }
        for(i=0;i<8;i++){
          $('#manobra'+(i+1)).val(0);
        }
        }*/
       });
       //zerar Nota
       $("#zerarnota").on("submit", function(e){
       e.preventDefault();
        $.ajax({
            url: "../Controller/ActionNota.php",
            method: "POST",
            data: {
                'opt' : 'Zerar',
                'manobra':$('#percursozerar').val(),
                'user_id': competidores[competidor].id,
                'evento_id': $('#selectEvento').val()
            },
            dataType: "JSON"
        }).done(function(data){
            alert('Nota zerada');
            $('#zerarModal').modal('hide')
            novoCompetidor();
        }).fail(function(data){
          alert('Falha em zerar');
        }); 
      });
      // função para mudar competidor;
       function MudarRunner(){
        $.ajax({
          url:"../Controller/ActionNota.php",
            type:'POST',
            data: {
                'opt':'Iniciar',
                'user_id': competidores[competidor].id,
                'evento_id': $('#selectEvento').val()
            }
            }).done(function(dados){
                console.log(dados);
            }).fail(function(){
               alert('erro para alterar competidor');
            });
       }
      
        </script>

</body>

</html>
