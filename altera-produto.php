<?php
include("cabecalho.php");
include("conecta.php");
include("banco-produto.php");

$id             = $_POST['id'];
$nome           = $_POST['nome'];
$preco          = $_POST['preco'];
$descricao      = $_POST['descricao'];
$categoria_id   = $_POST['categoria_id'];

if(array_key_exists('usado', $_POST)){
    $usado = "true";
}else{
    $usado = "false";
};

if(alteraProduto($conexao, $id, $nome, $preco, $descricao, $categoria_id, $usado)){ ?>
    <p class="text-success">Produto <?= $nome ?> Alterado com Sucesso! </p>
<?php } else {
    $msg = mysqli_error($conexao);
    ?>
    <p class="text-danger"> 0 Produto <?= $nome ?>não foi Alterado: <?=$msg ?> </p>
    <?php
}
?>
<?php include("rodape.php"); ?>


