echo "Bind a 57120, puerto OSC default de SuperCollider"
# Si esta ocupado, SC intenta usar 57121
open-stage-control -n -l OpenStageControl_UI/synth.js -s 127.0.0.1:57120
