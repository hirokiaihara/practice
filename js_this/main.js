// console.log('%c [JavaScript]thisについて学ぼう', 'color: red; font-size: 1.5em');
//タグ付きテンプレートリテラル

// function b(strings, ...values) {
//   console.log(strings);
//   console.log(values);
//   return strings.reduce((accu, str, i) => {
//     let val = values[i] ? `<b>${values[i]}</b>` : "";
//     return `${accu}${str}${val}`;
//   }, '');
// }

// const str1 = "Bob";
// const str2 = "Tom";
// const result = b`${str1} and ${str2}`;
// console.log(result);

//ループ処理
// const data = [1, 4, 2, 5, 3];
// const fruits = {banana: 'バナナ', apple: 'リンゴ', orange: 'オレンジ', kiwi: 'キウイ', mango: 'マンゴー'};

// Object.prototype.additionalFn = function() {};
// let keyFruits = Object.entries(fruits);
// for(let [k, v] of keyFruits){
//   console.log(k, v);
// }

// const data = [1, 4, 2, 5, 3];
// const fruits = {banana: 'バナナ', apple: 'リンゴ', orange: 'オレンジ', kiwi: 'キウイ', mango: 'マンゴー'};

// data.forEach((value, index, array) => {
//   console.log(value, index, array);
// });
// const newData = data.filter((value, index, array) => {
// return value !== 1;
// });
// console.log(data);
// console.log(newData);

// const newData = data.sort((a, b) => {
//   return a-b;
// });
// console.log(data);
// console.log(newData);

// 非同期
// function wait(callback, num) {
//   setTimeout(() => {
//     console.log(num);
//     callback(num);
//   }, 100);
// }
// wait(() => {
//   console.log('callback function is called');
// }, 0);

//ファクトリー関数
// function factoryPerson(first, last) {
//   let person = {first, last};
//   return person;
// }

// let me = factoryPerson('First', 'Last');

//コンストラクター関数
// function Person(first, last) {
//   this.first = first;
//   this.last = last;
//   this.introduce = function() {
//     console.log('My name is ' + first + '' + last)
//   }
// }

// Person.prototype.introduce = function() {
//   console.log('My name is ' + this.first + ' ' + this.last);
// }

// let me = new Person('First ', 'Last');
// let me1 = new Person('Me1 ', 'Desu');

// me.__proto__.introduce = function() {
//   console.log("I don't want to introduce myself");
// }

// me.introduce();
// me1.introduce();





