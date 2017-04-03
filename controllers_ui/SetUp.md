
Open Stage Control
==================

Aplicación para crear UI controladoras y enviar mensajes OSC (y MIDI) desde un browser (chrome)
[Demo online](http://openstagecontrol.herokuapp.com)

Es muy sencillo prototipar interfaces con diferentes controles (sliders, knobs, botones, xy, etc). Asi como configurar el tipo de mensaje OSC y el rango (min/max).

Instalar binarios para Linux, Windows y OS X: [OpenStageControl releases](https://github.com/jean-emmanuel/open-stage-control/releases)
(o correr con Node.js + npm)

Si pyo o Supercollider están escuchando en 127.0.0.1:57120 (o 57121)

Desde consola (en linux) (-n, --no-gui    disable default gui):
```
$ open-stage-control -n -l path/to/session.js -s 127.0.0.1:5555 127.0.0.1:57120
```

En MAC, en la interfaz de configuración, en la parte de *sync*, poner: 127.0.0.1:5555 127.0.0.1:57120
(ojo hay puede haber un bug que al reiniciar agregue una ',' que no va y hace que deje de funcionar)

En SuperCollider, para activar el seguimiento de mensajes OSC:
OSCFunc.trace //ver todos los mensajes
OSCFunc.trace(false); //apagarlo

Esto crea una app accesible vía browser en http://127.0.0.1:8080 (o la IP en la red). Múltiples clientes pueden usarla simultáneamente (solo con chrome). Los widgets se sincronizan.

Para que aparte de OSC, envie MIDI, sumar Pyo: [http://osc.ammd.net/user-guide/midi/](http://osc.ammd.net/user-guide/midi/)


CONTROL Android App
===================

Opción para celulares/tablets con Android. Desventaja: No es tán sencillo configurar el tipo de mensajes OSC que envia. Suele ser más cómodo adaptarse a las UI que propone (y sus mensajes asociados)

Bajar http://charlie-roberts.com/Control/ (free software) o http://hexler.net/software/touchosc para Android/iOS e instalar en el celular/tablet.

Configurar http://[IP]:[PORT] de la máquina que corra SuperCollider.
