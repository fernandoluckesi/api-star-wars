# Índice

- [Título e Sobre](#título-e-sobre)
- [Considerações de implementação](#considerações-de-implementação)
- [Objetivo do projeto](#objetivo-do-projeto)
- [Tecnologias utilizadas](#tecnologias-utilizadas)
- [Como rodar o projeto localmente](#como-rodar-o-projeto-localmente)
- [Documentação da API](#documentação-da-api)

# Título e Sobre

**Projeto Api Star Wars**
O projeto consiste na criação de uma API RESTful com o recurso de filmes. E ela possui as operações de: busca de um único recurso, de vários recursos e de atualização da descrição do filme. E existem 5 relacionamentos de N:N entre films e characters, films e planets, films e starships, films e vehicles e films e species. Quando listado um ou mais filmes, vai trazer junto os characters, planets, starships, vehicles e species que fazem parte do filme. E o recurso que atualiza a descrição do filme, além dessa ação ele também adiciona mais 1 na versão do filme a cada uso desse recurso.

# Considerações de implementação

Foi recebido a orientação para consumir a api https://swapi.dev/ e com isso popular os dados em memória, porém ao consumir, foi recebido um erro de certificado experido, logo não foi possível. Mas foi incluido um arquivo chamado data.sql em src/main/resources/ que ao inicializar a api ele é executado e cria e popula as tabelas (usando o H2, o banco de dados em memória) com dados que viriam de https://swapi.dev/.

Depois de rodar o projeto localmente acesse essas urls:

# Objetivo do projeto

O projeto **Api Star Wars** tem como objetivo demonstrar minhas seguintes habilidades como Desenvolvedor de Software com ênfase no back-end:

- Programação orientada a objetos (POO)
- Java
- Spring Framework
- Persistência de dados em banco de dados
- Padrões de projeto e de arquitetura.

# Tecnologias utilizadas

- Java (Linguagem de programação)
- Spring (Framework)
- H2 (Banco de dados em memória)
- Spring Boot Starter Security (Para criptografar senha no banco de dados)
- Data JPA (Framework de ORM(Object Relational Mapping))

# Como rodar o projeto localmente

1. Clone o repositório

Abra o terminal e execute o comando `git clone git@github.com:fernandoluckesi/api-star-wars.git ou git clone https://github.com/fernandoluckesi/api-star-wars.git`

2. Execução da aplicação

No terminal e no diretótio onde está o projeto e execute `docker compose build` e depois `docker compose up` (Certifique-se de ter o Docker instalado)

Ou

No terminal e ainda no mesmo diretótio do projeto execute o comando `mvn spring-boot:run`

3. Realizar build do projeto :

No terminal e ainda no mesmo diretótio do projeto execute o comando `mvn clean install`

# Documentação da api

## Endpoints

### GET /films

Retorna uma lista de todos os filmes.

#### Body response status 200

```json
[
  {
    "title": "The Phantom Menace",
    "episodeId": 1,
    "created": "2024-04-18T19:15:17",
    "edited": "2024-04-18T19:15:17",
    "url": "https://swapi.dev/api/films/4/"
  },
  {
    "title": "Attack of the Clones",
    "episodeId": 2,
    "created": "2024-04-18T19:15:17",
    "edited": "2024-04-18T19:15:17",
    "url": "https://swapi.dev/api/films/5/"
  }
]
```

### GET /films/{episodeId}

Retorna informações detalhadas de um filme específico pelo episodeId.

#### Body de response status 200

```json
{
  "title": "The Phantom Menace",
  "episodeId": 1,
  "openingCrawl": "Turmoil has engulfed the Galactic Republic...",
  "version": 1,
  "director": "George Lucas",
  "producer": "Rick McCallum",
  "releaseDate": "1999-05-19",
  "characters": [
    { "id": 2, "character_url": "https://swapi.dev/api/people/2/" }
  ],
  "planets": [{ "id": 1, "planet_url": "https://swapi.dev/api/planets/1/" }],
  "starships": [
    { "id": 21, "starship_url": "https://swapi.dev/api/starships/21/" }
  ],
  "vehicles": [
    { "id": 31, "vehicle_url": "https://swapi.dev/api/vehicles/31/" }
  ],
  "species": [{ "id": 1, "specie_url": "https://swapi.dev/api/species/1/" }],
  "created": "2024-04-18T19:15:17",
  "edited": "2024-04-18T19:15:17",
  "url": "https://swapi.dev/api/films/4/"
}
```

#### Body de response status 404

```json
{
  "error": "NOT_FOUND",
  "message": "Filme não encontrado",
  "statusCode": 404
}
```

### PATCH /films/{episodeId}/opening-crawl

Atualiza o texto de abertura (opening crawl) de um filme específico pelo episodeId.

#### Body request

```json
{
  "openingCrawl": "New opening crawl"
}
```

#### Body response status 200

```json
{
  "title": "The Phantom Menace",
  "episodeId": 1,
  "openingCrawl": "Teste obj",
  "version": 2,
  "director": "George Lucas",
  "producer": "Rick McCallum",
  "releaseDate": "1999-05-19",
  "characters": [
    {
      "id": 2,
      "character_url": "https://swapi.dev/api/people/2/"
    },
    {
      "id": 3,
      "character_url": "https://swapi.dev/api/people/3/"
    },
    {
      "id": 10,
      "character_url": "https://swapi.dev/api/people/10/"
    }
  ],
  "planets": [
    {
      "id": 1,
      "planet_url": "https://swapi.dev/api/planets/1/"
    },
    {
      "id": 8,
      "planet_url": "https://swapi.dev/api/planets/8/"
    },
    {
      "id": 9,
      "planet_url": "https://swapi.dev/api/planets/9/"
    }
  ],
  "starships": [
    {
      "id": 21,
      "starship_url": "https://swapi.dev/api/starships/21/"
    }
  ],
  "vehicles": [
    {
      "id": 31,
      "vehicle_url": "https://swapi.dev/api/vehicles/31/"
    },
    {
      "id": 32,
      "vehicle_url": "https://swapi.dev/api/vehicles/32/"
    },
    {
      "id": 39,
      "vehicle_url": "https://swapi.dev/api/vehicles/39/"
    }
  ],
  "species": [
    {
      "id": 1,
      "specie_url": "https://swapi.dev/api/species/1/"
    },
    {
      "id": 2,
      "specie_url": "https://swapi.dev/api/species/2/"
    },
    {
      "id": 6,
      "specie_url": "https://swapi.dev/api/species/6/"
    }
  ],
  "created": "2024-04-18T19:15:17",
  "edited": "2024-04-28T19:08:18.94517",
  "url": "https://swapi.dev/api/films/4/"
}
```

#### Body de response status 404

```json
{
  "error": "NOT_FOUND",
  "message": "Filme não encontrado",
  "statusCode": 404
}
```
