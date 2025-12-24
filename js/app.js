/* Clean JS */

/* Snow Melt Logic */
function meltSnow(element) {
  element.classList.add('melted');
}
window.meltSnow = meltSnow;

/* Gift Box Interaction */
const giftAxis = document.querySelector('.gift-3d-axis');
const giftContainer = document.querySelector('.gift-3d-wrapper');

if (giftAxis && giftContainer) {
  giftContainer.addEventListener('mousemove', (e) => {
    const rect = giftContainer.getBoundingClientRect();
    const mouseX = e.clientX - rect.left;
    const mouseY = e.clientY - rect.top;
    
    // Calculate rotation
    const xRot = -20 - ((mouseY - rect.height/2) / 5);
    const yRot = (mouseX - rect.width/2) / 5;
    
    giftAxis.style.animation = 'none';
    giftAxis.style.transform = `rotateX(${xRot}deg) rotateY(${yRot}deg)`;
  });

  giftContainer.addEventListener('mouseleave', () => {
    giftAxis.style.animation = 'spinBox 8s linear infinite';
  });
}

/* Snow Animation */
(function() {
  const canvas = document.getElementById('snow-canvas');
  if(!canvas) return;
  const ctx = canvas.getContext('2d');
  
  let width, height;
  const flakes = [];
  
  function resize() {
    width = window.innerWidth;
    height = window.innerHeight;
    canvas.width = width;
    canvas.height = height;
  }
  
  window.addEventListener('resize', resize);
  resize();
  
  for(let i=0; i<100; i++) {
    flakes.push({
      x: Math.random() * width,
      y: Math.random() * height,
      r: Math.random() * 2 + 1,
      d: Math.random() * 1 + 0.5
    });
  }
  
  function draw() {
    ctx.clearRect(0, 0, width, height);
    ctx.fillStyle = "rgba(255, 255, 255, 0.7)";
    ctx.beginPath();
    for(let i=0; i<flakes.length; i++) {
      const f = flakes[i];
      ctx.moveTo(f.x, f.y);
      ctx.arc(f.x, f.y, f.r, 0, Math.PI*2, true);
    }
    ctx.fill();
    update();
    requestAnimationFrame(draw);
  }
  
  function update() {
    for(let i=0; i<flakes.length; i++) {
      const f = flakes[i];
      f.y += Math.pow(f.d, 2) + 0.5;
      f.x += Math.sin(f.y * 0.01) * 0.5;
      
      if(f.y > height) {
        flakes[i] = {x: Math.random() * width, y: 0, r: f.r, d: f.d};
      }
    }
  }
  
  draw();
})();

/* GSAP Animations */
if (window.gsap && window.ScrollTrigger) {
  gsap.registerPlugin(ScrollTrigger);

  gsap.from(".gift-3d-wrapper", {
    scale: 0, opacity: 0, duration: 1.5, ease: "back.out(1.5)"
  });

  gsap.from(".hero__text-content > *", {
    y: 30, opacity: 0, duration: 1.2, ease: "power3.out", stagger: 0.2, delay: 0.5
  });

  gsap.from(".gift-card", {
    rotationY: 0, rotationX: 0, y: -50, opacity: 0, 
    duration: 2, ease: "elastic.out(1, 0.5)", delay: 0.8
  });

  gsap.utils.toArray(".section__title").forEach(title => {
    gsap.from(title, {
      scrollTrigger: { trigger: title, start: "top 80%" },
      y: 30, opacity: 0, duration: 1
    });
  });

  gsap.from(".memories-grid .memory-card", {
    scrollTrigger: { trigger: ".memories-grid", start: "top 80%" },
    y: 40, opacity: 0, stagger: 0.2, duration: 0.8
  });

  gsap.from(".snow-cards-container .snow-card", {
    scrollTrigger: { trigger: ".snow-cards-container", start: "top 80%" },
    scale: 0.8, opacity: 0, stagger: 0.2, duration: 0.8, ease: "back.out(1.7)"
  });
}

/* Background Music Logic (SLIDE/SCROLL Only) */
document.addEventListener('DOMContentLoaded', () => {
  const music = document.getElementById('bg-music');
  let hasStarted = false;

  const playAudio = () => {
    if (hasStarted || !music) return;
    
    // Attempt play immediately
    music.play().then(() => {
      hasStarted = true;
      // Remove listeners if successful
      ['scroll', 'touchmove', 'wheel'].forEach(evt => 
        document.removeEventListener(evt, playAudio)
      );
    }).catch(err => {
      // If blocked, keep waiting for slide/scroll
    });
  };

  // 1. Try immediately (Best effort)
  playAudio();

  // 2. Triggers: SCROLL, TOUCHMOVE (Slide), WHEEL
  // Removed: click, touchstart
  ['scroll', 'touchmove', 'wheel'].forEach(evt => 
    document.addEventListener(evt, playAudio, { once: true })
  );

  // 3. Pause when hidden, Resume when active
  document.addEventListener('visibilitychange', () => {
    if (!music) return;
    if (document.hidden) {
      music.pause();
    } else {
      if (hasStarted) music.play().catch(()=>{});
    }
  });
});
