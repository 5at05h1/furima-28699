window.addEventListener('load', function(){
  const price = document.getElementById("item-price")
  const fee = document.getElementById("add-tax-price")
  const profit =document.getElementById("profit")
  price.addEventListener('input', function(){
    const integer = price.value
    Math.floor(calculation)
    const calculation = integer * 0.1
    Math.floor(rieki)
    const rieki = integer - calculation
    fee.innerHTML = calculation
    profit.innerHTML = rieki
  })
})