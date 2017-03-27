
Open Stage Control
==================

Apps controladoras para enviar mensajes OSC (y MIDI) desde un browser (chrome)

[Demo online](http://openstagecontrol.herokuapp.com)

Instalar binarios para Linux, Windows y OS X: [OpenStageControl releases](https://github.com/jean-emmanuel/open-stage-control/releases)
(o correr con Node.js + npm)

Si pyo o Supercollider están escuchando en 127.0.0.1:57120 (o 57121)

(-n, --no-gui    disable default gui)
```
$ open-stage-control -n -l path/to/session.js -s 127.0.0.1:5555 127.0.0.1:57120
```

Crea una app accesible vía browser en http://127.0.0.1:8080 (o la IP en la red). Múltiples clientes pueden usarla simultáneamente (solo con chrome). Los widgets se sincronizan.

MIDI con pyo: [http://osc.ammd.net/user-guide/midi/](http://osc.ammd.net/user-guide/midi/)


CONTROL Android App
===================

Bajar http://charlie-roberts.com/Control/ (free software) o http://hexler.net/software/touchosc para Android/iOS e instalar en el celular/tablet.

Configurar http://[IP]:[PORT] de la máquina que corra SuperCollider.