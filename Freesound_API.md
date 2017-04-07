# Freesound API

Sacar una API KEY para poder autenticar con token: [APIv2 APPLY](http://www.freesound.org/apiv2/apply/)

Obtendremos un string de varios caracteres, algo del estilo:
```
API_KEY = "asga2823235r48qklasdjl3khfasdflk2"
```

Documentación de la API: [http://www.freesound.org/docs/api/](http://www.freesound.org/docs/api/)

## Con curl (válido para todas las plataformas)

Ej:
```
curl -H "Authorization: Token YOUR_API_KEY" 'http://www.freesound.org/apiv2/sounds/31362/'
```

Baja el .json con la información del archivo con ID 31362

(comparar entrando por browser estando autentifcado con usuario y contraseña)

## SuperCollider
En SuperCollider >3.7 con Quarks.gui, buscar "Freesound" e instalar
(Warning: Ubuntu 16.04 viene con SuperCollider 3.6, dónde Quarks usa Freesound2 con API discontinuada)

Sino instalar a mano de [Freesound.sc @ github](https://github.com/g-roma/Freesound.sc)

Quarks.install('https://github.com/g-roma/Freesound.sc');
Quarks.install("Freesound");

### Ejemplos

```
// Get sound by id
// https://www.freesound.org/docs/api/resources_apiv2.html#sound-instance
FSSound.getSound(31362, {|f|
    ~snd = f;
    ~snd["name"].postln;
});
```