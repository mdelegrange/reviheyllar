import "bootstrap";

const pulse = () => {
  const pulse = document.getElementById("pulse");
  if (pulse) {
    setInterval(() => {
      pulse.classList.toggle('t-black');
    }, 500)
  }
  const bgPulse = document.getElementById("bg-pulse");
  if (bgPulse) {
    setInterval(() => {
      bgPulse.classList.toggle('bg-white');
    }, 500)
  }
}

pulse();
