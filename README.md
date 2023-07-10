# Superheroes API

## Introduction

This is a simple Rails API for tracking superheroes and their powers. It allows you to get a list of all heroes, see details about a single hero, get a list of all powers, see details about a single power, update a power's description, and associate a hero with a power.

## Installation

1. Clone the repository
2. Run `bundle install`
3. Setup the database with `rails db:create db:migrate`
4. Start the server with `rails server`

## Endpoints

### GET /heroes

Returns a JSON array of all heroes in the format:

```json
[
  { "id": 1, "name": "Kamala Khan", "super_name": "Ms. Marvel" },
  { "id": 2, "name": "Doreen Green", "super_name": "Squirrel Girl" },
  { "id": 3, "name": "Gwen Stacy", "super_name": "Spider-Gwen" }
]
```

### GET /heroes/:id

Returns a JSON object of a single hero in the format:

```json

{
  "id": 1,
  "name": "Kamala Khan",
  "super_name": "Ms. Marvel",
  "powers": [
    {
      "id": 1,
      "name": "super strength",
      "description": "gives the wielder super-human strengths"
    },
    {
      "id": 2,
      "name": "flight",
      "description": "gives the wielder the ability to fly through the skies at supersonic speed"
    }
  ]
}
```

### GET /powers

Returns a JSON array of all powers in the format:

```json

[
  {
    "id": 1,
    "name": "super strength",
    "description": "gives the wielder super-human strengths"
  },
  {
    "id": 2,
    "name": "flight",
    "description": "gives the wielder the ability to fly through the skies at supersonic speed"
  }
]
```

### GET /powers/:id

Returns a JSON object of a single power in the format:

```json

{
  "id": 1,
  "name": "super strength",
  "description": "gives the wielder super-human strengths"
}
```

### PATCH /powers/:id

Updates an existing power. The payload should be in the format:

```json

{
  "description": "Updated description"
}
```

Returns a JSON object of the updated power in the format:

```json

{
  "id": 1,
  "name": "super strength",
  "description": "Updated description"
}
```

### POST /hero_powers

Creates a new association between a hero and a power. The payload should be in the format:

```json

{
  "strength": "Average",
  "power_id": 1,
  "hero_id": 3
}
```

Returns a JSON object of the associated hero in the format:

```json

{
  "id": 1,
  "name": "Kamala Khan",
  "super_name": "Ms. Marvel",
  "powers": [
    {
      "id": 1,
      "name": "super strength",
      "description": "gives the wielder super-human strengths"
    },
    {
      "id": 2,
      "name": "flight",
      "description": "gives the wielder the ability to fly through the skies at supersonic speed"
    }
  ]
}
```

## Error Handling

In case of an error, a JSON object will be returned in the following format:

```json

{
  "error": [error messages]
}
```

## Licensing

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Authors

* **Amos Wanene** - *Initial work* - [gich2009](https://github.com/gich2009)

