//変数宣言
let nmae = 'Tom'
console.log('hello' + name);

// 動的型付け言語
let variable = 'str';
variable = 12;
variavle = false;
variable = undefined;
console.log(typeof variable);

//関数宣言
// function hello(name, age) {
//   console.log('hello ' + name + age);
//   return name + age;
// }

//無名関数を変数に代入する
const hello = function(name, age) {
  console.log('hello' + name + age);
  return name + age;
}

hello('Code Mafia', 20);
const returnValue = hello('Code Mafia', '20');
console.log(returnValue);

//メソッドとプロパティ
let hellooo = 'hello world';
console.log(hellooo.length);
console.log(hellooo.toUpperCase());
console.log(hellooo.substring(0, 5));
console.log(hellooo.slice(0, 5));
console.log(hellooo.split(' '));

//配列の生成
const array = new Array(1, 2, 3, 4, 5, 6, 'moji', false);
array[2] = 8;
console.log(array[6]);
console.log(array.length);
array.unshift('new item');
console.log(array);
array.pop();
console.log(array);
array.shift();
console.log(array);

//オブジェクトの定義
const person = {
  name: ['Code', 'Mafia'],
  age: 32,
  gender: 'mele',
  interests: {
    sports: 'soccer',
    music: 'piano'
  },
  //メゾット
  getFullName: function() {
    console.log(this.name[0] + this.name[1]);
  }
};
//ドット記法
console.log(person.name);
console.log(person.interests.sports);
person.age = 12;
console.log(person.age);
person.getFullName();

//ループ
const arry = [1, 2, 3, 4, 5, 6];

for(let i = 0; i < arry.length; i++) {
  console.log(arry[i]);
}
//書き換え
for(let i in arry) {
  console.log(i, arry[i]);
}
//valueを取り出す
for(let v of arry) {
  console.log(v);
}

//実践
const todos = [
  {
    id: 1,
    title: 'Go to school',
    completed: true
  },
  {
    id: 2,
    title: 'lunch',
    completed: true
  },
  {
    id: 3,
    title: 'dinner',
    completed: false
  }
];

for(let i = 0; i < todos.length; i++) {
  let todo = todos[i];
  if(todo.completed === true) {
    console.log(todo.title);
  }
}

//比較演算子
let num = Number(true);
console.log(num);
let num2 = Number(false);
console.log(num2);
// == 型の変換をする
if(0 == false) {
  console.log('this is true');
} else {
  console.log('this is false');
}
// ===型の変換をしない
if(0 === false) {
  console.log('this is true');
} else {
  console.log('this is false');
}
// 論理演算子
if(0 == '0' && 0 ==='0') {
  console.log('this is true');
} else {
  console.log('this is false');
}
if(0 == '0' || 0 ==='0') {
  console.log('this is true');
} else {
  console.log('this is false');
}

//アロー関数
const helloo = (name, age) => {
  console.log('hello ' + name + age);
  console.log('hello ' + name + age);
}

helloo('tanaka', 20);

const arr = [1, 2, 3, 4, 5, 6];

arr.forEach(value => console.log(value));

//コールバック関数
function helloooo(name, lastname) {
  console.log('hello ' + name(lastname));
}

function getName() {
  return 'suzuki';
}

helloooo(getName);

helloooo(function(name) {
  return 'yamada' + name;
}, 'tarou');

function doSomething(a, b, callback) {
  const result = callback(a, b);
  console.log(result);
}

function multiply(a, b) {
  return a * b;
}
function plus(a, b) {
  return a + b;
}

doSomething(2, 2, multiply);
doSomething(3, 3, plus);

//コールバック関数とループ処理
const ary = [1, 2, 3, 4, 5];

function forEach(ar, callback) {
  for(let i = 0; i < ar.length; i++) {
    callback(ar[i]);
  }
};

function log(val) {
  console.log(val);
}

function double(val) {
  val = val * 2;
  log(val);
}

forEach(ary, double);

//配列とforEachメソッド
const hoge = [1, 2, 3, 4, 5];

hoge.forEach(function(v, i, a) {
  console.log(v, i, a);
})

//配列とreduceメソッド
const huga = [1, 2, 3, 4, 5];

huga.reduce(function(accu, curr) {
  console.log(accu, curr);
  return accu * curr;
}, 10);

const str = 'animation';
const strArry =  str.split('');

console.log(strArry);

const result = strArry.reduce((accu, curr) => {
  return `${accu}<${curr}>`;
}, "")
console.log(result);

