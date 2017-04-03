[
    {
        "id": "",
        "label": "SC Tone Synth",
        "widgets": [
            {
                "type": "fader",
                "id": "volumen",
                "linkId": "",
                "label": "auto",
                "unit": "",
                "left": 0,
                "top": 0,
                "width": "auto",
                "height": 400,
                "alignRight": false,
                "horizontal": false,
                "noPip": false,
                "compact": false,
                "color": "auto",
                "css": "",
                "snap": false,
                "spring": false,
                "range": {
                    "min": 0,
                    "max": 3
                },
                "origin": "auto",
                "value": "",
                "logScale": true,
                "precision": 2,
                "meter": true,
                "address": "/volume",
                "preArgs": [],
                "target": []
            },
            {
                "type": "fader",
                "id": "freq",
                "linkId": "",
                "label": "auto",
                "unit": "",
                "left": 110,
                "top": 0,
                "width": 680,
                "height": "auto",
                "alignRight": false,
                "horizontal": true,
                "noPip": false,
                "compact": false,
                "color": "auto",
                "css": "",
                "snap": false,
                "spring": false,
                "range": {
                    "min": 0,
                    "max": 1
                },
                "origin": "auto",
                "value": "",
                "logScale": false,
                "precision": 2,
                "meter": false,
                "address": "/freq",
                "preArgs": [],
                "target": []
            },
            {
                "type": "toggle",
                "id": "gate",
                "linkId": "",
                "label": "auto",
                "left": 800,
                "top": 0,
                "width": 80,
                "height": 130,
                "color": "auto",
                "css": "",
                "value": "",
                "precision": 2,
                "address": "/gate",
                "preArgs": [],
                "target": [],
                "on": 1,
                "off": 0
            },
            {
                "type": "knob",
                "id": "Num Harmonics",
                "linkId": "",
                "label": "auto",
                "unit": "",
                "left": 110,
                "top": 140,
                "width": 230,
                "height": 260,
                "noPip": false,
                "compact": false,
                "color": "auto",
                "css": "",
                "snap": false,
                "spring": false,
                "range": {
                    "min": 0,
                    "max": 50
                },
                "origin": "auto",
                "value": "",
                "logScale": false,
                "precision": 2,
                "address": "/nharm",
                "preArgs": [],
                "target": [],
                "angle": 270
            },
            {
                "type": "knob",
                "id": "Pan",
                "linkId": "",
                "label": "auto",
                "unit": "",
                "left": 620,
                "top": 140,
                "width": 260,
                "height": 260,
                "noPip": false,
                "compact": false,
                "color": "auto",
                "css": "",
                "snap": false,
                "spring": false,
                "range": {
                    "min": 0,
                    "max": 1
                },
                "origin": "auto",
                "value": "",
                "logScale": false,
                "precision": 2,
                "address": "/fader_1",
                "preArgs": [],
                "target": [],
                "angle": 270
            },
            {
                "type": "knob",
                "id": "Detune",
                "linkId": "",
                "label": "auto",
                "unit": "",
                "left": 350,
                "top": 140,
                "width": 260,
                "height": 260,
                "noPip": false,
                "compact": false,
                "color": "auto",
                "css": "",
                "snap": false,
                "spring": false,
                "range": {
                    "min": 0,
                    "max": 1
                },
                "origin": "auto",
                "value": "",
                "logScale": false,
                "precision": 2,
                "address": "/detune",
                "preArgs": [],
                "target": [],
                "angle": 270
            }
        ]
    }
]