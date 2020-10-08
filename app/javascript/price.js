window.addEventListener('load', function(){
  const price = document.getElementById("item-price")
  const fee = document.getElementById("add-tax-price")
  const profit =document.getElementById("profit")
  price.addEventListener('input', function(){
    const integer = price.value
    const calculation = integer * 0.1
    const rieki = integer - calculation
    fee.innerHTML = Math.floor(calculation)
    profit.innerHTML = Math.floor(rieki)
  })
})