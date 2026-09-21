# Desafio DIO — Provisionamento Linux com Bash

## Sobre o projeto

Este projeto foi desenvolvido como parte de um desafio da DIO para praticar **Linux, Bash Script, gerenciamento de usuários e grupos e controle de permissões**.

O objetivo é automatizar o provisionamento de usuários, grupos e diretórios em uma máquina Linux utilizando um script Bash.

## Estrutura criada

### Grupos

Foram criados três grupos:

* `GRP_ADM`
* `GRP_VEN`
* `GRP_SEC`

### Usuários

#### Administração — `GRP_ADM`

* `carlos`
* `maria`
* `joao`

#### Vendas — `GRP_VEN`

* `debora`
* `sebastiana`
* `roberto`

#### Segurança — `GRP_SEC`

* `josefina`
* `amanda`
* `rogerio`

### Diretórios

O script cria os seguintes diretórios:

```text
/publico
/adm
/ven
/sec
```

## Permissões

| Diretório  | Proprietário | Grupo     | Permissão |
| ---------- | ------------ | --------- | --------- |
| `/publico` | `root`       | `root`    | `777`     |
| `/adm`     | `root`       | `GRP_ADM` | `770`     |
| `/ven`     | `root`       | `GRP_VEN` | `770`     |
| `/sec`     | `root`       | `GRP_SEC` | `770`     |

### Regras de acesso

* Todos os usuários possuem acesso ao diretório `/publico`.
* Os usuários do grupo `GRP_ADM` possuem acesso ao `/adm`.
* Os usuários do grupo `GRP_VEN` possuem acesso ao `/ven`.
* Os usuários do grupo `GRP_SEC` possuem acesso ao `/sec`.
* Usuários de um departamento não possuem acesso aos diretórios dos demais departamentos.
* Os diretórios são pertencentes ao usuário `root`.

## Script

O arquivo principal do projeto é:

```text
provisionamento.sh
```

Para executar o script:

```bash
chmod +x provisionamento.sh
sudo ./provisionamento.sh
```

O script remove provisionamentos anteriores, cria os grupos e usuários, cria os diretórios e configura suas respectivas permissões.

## Validação

Foram realizados testes de acesso utilizando usuários dos diferentes grupos.

Exemplo:

```bash
sudo -u carlos ls /adm
```

Acesso permitido.

```bash
sudo -u carlos ls /ven
```

Resultado:

```text
Permission denied
```

Também foi validado que usuários dos diferentes departamentos conseguem acessar `/publico`.

## Tecnologias utilizadas

* Linux
* Bash
* Git
* GitHub
* AWS EC2

