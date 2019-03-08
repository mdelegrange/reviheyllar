import "bootstrap";

const pulse = () => {
  const element = document.getElementById("pulse");
  if (pulse) {
    setInterval(() => {
      element.classList.toggle('t-black');
    }, 500)
  }
}

pulse();
