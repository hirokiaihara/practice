//イベントリスナーの練習
const btn = document.querySelector('#btn');
const h1 = document.querySelector('h1');

function changeColor() {
  h1.style.color = 'red';
};
function changeBgColor() {
  h1.style.backgroundColor = 'green';
};

function hello() {
  alert('hello');
};

// btn.addEventListener('click', changeColor);
// btn.addEventListener('click', changeBgColor);

// btn.removeEventListener('click', changeBgColor);
// btn.addEventListener('mouseenter', hello);

// 複数登録はできない, 上書きされる
btn.onclick = changeColor;
btn.onclick = changeBgColor;

//DOMイベント ページの初期化
// const dcl = document.querySelector('.dcl');
// const load = document.querySelector('.load');

// document.addEventListener("DOMContentLoaded", function() {
//   dcl.classList.add('done');
// });

// window.addEventListener("load", function() {
//   load.classList.add('done');
// })

// DOMContentloaded, loadを記述することによって、scriptから読んでもエラーが出なくなる
document.addEventListener("DOMContentLoaded", function() {
  const h1 = document.querySelector('h1');
  h1.style.color ='red'
});

//文字列をDOMで分割する
// document.addEventListener('DOMContentLoaded', function() {
//   const el = document.querySelector('.animate-title');
//   const str = el.innerHTML.trim();
//   let concatStr = '';
//   for(let c of str) {
//     c = c.replace(/\s+/, '&nbsp;');
//     concatStr += `<span class="char">${c}</span>`;
//   }
//   el.innerHTML = concatStr;
// });

//reduceとアロー関数を使用
// document.addEventListener('DOMContentLoaded', function() {
//   const el = document.querySelector('.animate-title');
//   const str = el.innerHTML.trim().split("");
  
//   el.innerHTML = str.reduce((acc, curr) => {
//     curr = curr.replace(/\s+/, '&nbsp;');
//     return `${acc}<span class="char">${curr}</span>`;
//   }, "");
// });

//classにまとめる
document.addEventListener("DOMContentLoaded", function() {
  const ta = new TextAnimation('.animate-title');
  const ta2 = new TextAnimation('.animate-title_02');
  setTimeout(() => {
    ta.animate();
    ta2.animate();
  }, 1000);
});

class TextAnimation {
  constructor(el) {
    this.el = document.querySelector(el);
    this.chars = this.el.innerHTML.trim().split("");
    this.el.innerHTML = this._splitText();
  }
  _splitText() {
    return this.chars.reduce((acc, curr) => {
          curr = curr.replace(/\s+/, '&nbsp;');
          return `${acc}<span class="char">${curr}</span>`;
    }, "");
  }
  animate() {
    this.el.classList.toggle('inview');
  }
}




