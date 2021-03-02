<?php
 
 
 class Pontuacao{
        private $juiz_id;
        private $draw;
        private $percurso;
        private $penalidade;
        private $ponto;
        private $manobra;
        private $competidor;
        private $evento;


        public function setEvento($evento){
            $this->evento = $evento;
        }
        public function getEvento(){
            return $this->evento;
        }
        public function setCompetidor($competidor){
            $this->competidor = $competidor;
        }
        public function getCompetidor(){
            return $this->competidor;
        }

        public function setJuiz_id($juiz_id){
            $this->juiz_id = $juiz_id;
        }
        public function getJuiz_id(){
            return $this->juiz_id;
        }
        public function setDraw($draw){
            $this->draw = $draw;
        }
        public function getDraw(){
            return $this->draw;
        }
        public function setPercurso($percurso){
            $this->percurso = $percurso;
        }
        public function getPercurso(){
            return $this->percurso;
        }    
        public function setPenalidade($penalidade){
            $this->penalidade = $penalidade;
        }
        public function getPenalidade(){
            return $this->penalidade;
        }
        public function setPonto($ponto){
            $this->ponto = $ponto;
        }
        public function getPonto(){
            return $this->ponto;
        }
        public function setManobra($manobra){
            $this->manobra = $manobra;
        }
        public function getManobra(){
            return $this->manobra;
        }        



 }