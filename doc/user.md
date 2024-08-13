# User API Spec

## Register User

Endpoint : POST /api/users

Request Body :

```json
{
    "username" : "asepsan",
    "password" : "12345678",
    "name"     : "Asep Sanusi"
}
```

Response Body (Success) :

```json
{
    "data" : {
        "username" : "asepsan",
        "name"     : "Asep Sanusi"
    }
}
```

Response Body (Failed) :

```json
{
    "errors" : "Username already registered"
}
```

## Login User

Endpoint : POST /api/users/login

Request Body :

```json
{
    "username" : "asepsan",
    "password" : "12345678",
}
```

Response Body (Success) :

```json
{
    "data" : {
        "username" : "asepsan",
        "name"     : "Asep Sanusi",
        "token"    : "session_id_generator"
    }
}
```

Response Body (Failed) :

```json
{
    "errors" : "Username or password is wrong"
}
```

## Get User

Endpoint : GET /api/users/current

Headers : 
- Authorization : token

Response Body (Success) :

```json
{
    "data" : {
        "username" : "asepsan",
        "name"     : "Asep Sanusi",
    }
}
```

Response Body (Failed) :

```json
{
    "errors" : "Unauthorized"
}
```

## Update User

Endpoint : PATCH /api/users/current

Headers :
- Authorization : token

Request Body :

```json
{
    "password" : "12345678", // optional
    "name"     : "Asep Sanusi" // optional
}
```

Response Body (Success) :

```json
{
    "data" : {
        "username" : "asepsan",
        "name"     : "Asep Sanusi"
    }
}
```

Response Body (Failed) :

```json
{
    "errors" : "Failed to update user"
}
```

## Logout User

Endpoint : DELETE /api/users/current

Headers :
- Authorization : token

Response Body (Success) :

```json
{
    "data" : true
}
```