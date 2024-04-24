# app.coffee
display = document.getElementById('display')

clearDisplay = ->
  display.value = ''

# Agrega más funciones para las operaciones matemáticas (suma, resta, multiplicación, división) aquí

# Ejemplo: función para agregar dígitos al display
addDigit = (digit) ->
  display.value += digit

# Escucha los clics en los botones numéricos
document.querySelectorAll('.number').forEach (button) ->
  button.addEventListener 'click', ->
    addDigit(button.textContent)

# Escucha el clic en el botón de "C"
document.querySelector('button').addEventListener 'click', clearDisplay
