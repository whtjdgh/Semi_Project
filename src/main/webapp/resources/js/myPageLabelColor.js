let box1 = document.getElementsByClassName('box1');

    for(let j=0; j<box1.length; j++) {
        box1[j].addEventListener('click',function(){    
            for(let i=0; i<box1.length; i++) {
                box1[i].classList.remove('chgColor');
            }

            this.classList.add('chgColor');
        })
    }