const redbg=()=>{
    document.body.firstElementChild.style.background="black"


}
let b= document.body
console.log(b.firstElementChild)
redbg();

const jokes = [
    "Why did the tomato turn red? Because it saw the salad dressing!",
    "Why did the scarecrow win an award? Because he was outstanding in his field!",
    "Why did the bicycle fall over? Because it was two-tired!",
    "Why was the math book sad? Because it had too many problems!",
    "Why did the chicken cross the playground? To get to the other slide!",
    "Why do seagulls fly over the sea? Because if they flew over the bay, they'd be bagels!",
    "Why don't scientists trust atoms? Because they make up everything!",
    "Why don't skeletons fight each other? They don't have the guts!",
    "Why did the computer go to the doctor? Because it had a virus!",
    "Why don't eggs tell jokes? Because they'd crack each other up!"
  ];


  

  window.onload = function(e){ 

    
let i= Math.floor(Math.random()*10)
document.getElementById("joker").innerHTML= jokes[i]


  }

document.getElementsByTagName("button")[0].onclick=()=>{

    let i= Math.floor(Math.random()*10)
    document.getElementById("joker").innerHTML= jokes[i]
    
}