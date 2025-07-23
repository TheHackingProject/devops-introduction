# Boucles et conditions dans Terraform

## 1. Introduction
Pour générer plusieurs ressources similaires ou adapter une configuration, Terraform propose les expressions `for` et les blocs `count` ou `for_each`. Voyons comment les utiliser.

## 2. Historique et contexte
Les versions récentes de Terraform ont enrichi le langage HCL pour couvrir un maximum de scénarios sans recourir à un autre langage de programmation.

## 3. La ressource
### 3.1. Utiliser `count`
Si tu dois déployer plusieurs instances identiques, ajoute le paramètre `count` :

```hcl
resource "aws_instance" "web" {
  count = 3
  ami           = var.web_ami
  instance_type = "t3.micro"
}
```

L'attribut `count.index` permet de différencier les ressources lors de la création de noms ou d'étiquettes.

### 3.2. Utiliser `for_each`
Lorsque les valeurs ne sont pas simplement un nombre mais une liste ou un map, préfère `for_each` :

```hcl
resource "aws_security_group" "example" {
  for_each = var.sg_ports
  name   = "sg-${each.key}"
  ingress {
    from_port   = each.value
    to_port     = each.value
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
```

### 3.3. Les expressions `for`
Dans un bloc `locals` ou lors de l'assignation d'une variable, tu peux transformer une liste :

```hcl
locals {
  port_strings = [for p in var.sg_ports : "port-${p}"]
}
```

### 3.4. Conditions
HCL permet aussi les conditions simples :

```hcl
resource "aws_instance" "api" {
  ami           = var.api_ami
  instance_type = var.debug ? "t3.small" : "t3.micro"
}
```

## 4. Points importants à retenir
- `count` et `for_each` servent à créer plusieurs ressources.
- Les expressions `for` transforment des valeurs sans recourir à un autre langage.
- Les conditions permettent d'adapter la configuration selon les variables.

## 5. Pour aller plus loin
- Découvre les fonctions [built-in](https://developer.hashicorp.com/terraform/language/functions/) pour manipuler les chaînes et les listes.
- Combine `count` et `for_each` avec des modules pour déployer des architectures plus complexes.
