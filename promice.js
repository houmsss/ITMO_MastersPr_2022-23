// JS is cool
function task(x) {
    return new Promise((resolve, reject) => 
    {
        if (x < 18) {resolve('yes')}
        else if (x==0){resolve('houmsss')}
        else {reject('no')}
    });
  }