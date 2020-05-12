const child = document.querySelector('.child');
const cd = function(entries, observer) {
  entries.forEach(entry => {
    if(entry.isIntersecting) {
      console.log('inview');
      entry.target.classList.add('inview');
      // observer.unobserve(entry.target);
    } else {
      console.log('outview');
      entry.target.classList.remove('inview');
    }
  });
}
const options = {
  root: null,
  rootMargin: "-300px 0px",
  threshold: 1
};
const io = new IntersectionObserver(cd, options);
io.observe(child);
