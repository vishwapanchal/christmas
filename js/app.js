/* Mobile nav toggle */
const nav = document.querySelector('.nav');
const navToggle = document.querySelector('.nav__toggle');
const navLinks = document.querySelectorAll('.nav__links a');

if (navToggle) {
  navToggle.addEventListener('click', () => {
    const isOpen = nav.classList.toggle('nav--open');
    navToggle.setAttribute('aria-expanded', String(isOpen));
  });
}

navLinks.forEach(link => {
  link.addEventListener('click', () => {
    nav.classList.remove('nav--open');
    navToggle.setAttribute('aria-expanded', 'false');
  });
});

/* Smooth scroll */
document.querySelectorAll('a[href^="#"]').forEach(a => {
  a.addEventListener('click', e => {
    const targetId = a.getAttribute('href').substring(1);
    const targetEl = document.getElementById(targetId);
    if (!targetEl) return;
    e.preventDefault();
    const top = targetEl.getBoundingClientRect().top + window.scrollY - 72;
    window.scrollTo({ top, behavior: 'smooth' });
  });
});

/* Modal letters content */
const letterData = {
  1: {
    title: 'For your guidance',
    body:
      'Every chapter you taught felt clear, not because the syllabus was easy, but because you made it meaningful. ' +
      'Your guidance still shapes how I present my ideas and communicate with people today.'
  },
  2: {
    title: 'For your patience',
    body:
      'You never rushed through doubts or questions, even when the class was noisy or distracted. ' +
      'That quiet patience taught me that true teaching is not about finishing the lesson, but about reaching the student.'
  },
  3: {
    title: 'For your blessings',
    body:
      'Years may pass and cities may change, but the blessings of a teacher travel silently with their students. ' +
      'Whenever something goes right for me, a part of the credit always belongs to you.'
  }
};

const modal = document.getElementById('letterModal');
const modalTitle = modal?.querySelector('.modal__title');
const modalBody = modal?.querySelector('.modal__body');
const closeTargets = modal?.querySelectorAll('[data-close-modal]');
let lastFocusedElement = null;

function openModal(key) {
  if (!modal || !letterData[key]) return;
  modalTitle.textContent = letterData[key].title;
  modalBody.textContent = letterData[key].body;
  lastFocusedElement = document.activeElement;
  modal.classList.add('modal--open');
  modal.setAttribute('aria-hidden', 'false');
  modal.querySelector('.modal__close')?.focus();
}

function closeModal() {
  if (!modal) return;
  modal.classList.remove('modal--open');
  modal.setAttribute('aria-hidden', 'true');
  if (lastFocusedElement && typeof lastFocusedElement.focus === 'function') {
    lastFocusedElement.focus();
  }
}

document.querySelectorAll('.letter').forEach(btn => {
  btn.addEventListener('click', () => {
    const key = btn.getAttribute('data-letter');
    openModal(key);
  });
});

closeTargets?.forEach(el => {
  el.addEventListener('click', closeModal);
});

window.addEventListener('keydown', e => {
  if (e.key === 'Escape') closeModal();
});

/* Snow animation (lightweight for mobile) */
(function snow() {
  const canvas = document.getElementById('snow-canvas');
  if (!canvas) return;
  const ctx = canvas.getContext('2d');

  let width = window.innerWidth;
  let height = window.innerHeight;
  canvas.width = width;
  canvas.height = height;

  const flakes = [];
  const FLAKE_COUNT = width < 768 ? 90 : 160;

  function createFlake() {
    const size = Math.random() * 2.2 + 0.5;
    return {
      x: Math.random() * width,
      y: Math.random() * height,
      r: size,
      speed: size * 0.35 + 0.2,
      drift: (Math.random() - 0.5) * 0.6
    };
  }

  for (let i = 0; i < FLAKE_COUNT; i++) {
    flakes.push(createFlake());
  }

  function draw() {
    ctx.clearRect(0, 0, width, height);
    ctx.fillStyle = 'rgba(248, 250, 252, 0.85)';
    ctx.beginPath();

    for (const flake of flakes) {
      ctx.moveTo(flake.x, flake.y);
      ctx.arc(flake.x, flake.y, flake.r, 0, Math.PI * 2);
    }
    ctx.fill();
    update();
    requestAnimationFrame(draw);
  }

  function update() {
    for (const flake of flakes) {
      flake.y += flake.speed;
      flake.x += flake.drift;

      if (flake.y > height + 5) {
        flake.y = -10;
        flake.x = Math.random() * width;
      }
      if (flake.x > width + 5) flake.x = -5;
      if (flake.x < -5) flake.x = width + 5;
    }
  }

  window.addEventListener('resize', () => {
    width = window.innerWidth;
    height = window.innerHeight;
    canvas.width = width;
    canvas.height = height;
  });

  draw();
})();

/* GSAP animations */
if (window.gsap) {
  gsap.registerPlugin(ScrollTrigger);

  gsap.from('.hero__text', {
    y: 30,
    opacity: 0,
    duration: 0.9,
    ease: 'power3.out'
  });

  gsap.from('.hero__card', {
    y: 40,
    opacity: 0,
    duration: 1,
    delay: 0.1,
    ease: 'back.out(1.3)'
  });

  gsap.utils.toArray('.section').forEach(section => {
    const inner = section.querySelector('.section__inner');
    if (!inner) return;
    gsap.from(inner, {
      scrollTrigger: {
        trigger: section,
        start: 'top 80%',
        toggleActions: 'play none none reverse'
      },
      y: 40,
      opacity: 0,
      duration: 0.7,
      ease: 'power2.out'
    });
  });

  const memories = document.querySelectorAll('.memory-card');
  if (memories.length) {
    gsap.from(memories, {
      scrollTrigger: {
        trigger: '#memories',
        start: 'top 75%'
      },
      y: 30,
      opacity: 0,
      duration: 0.7,
      ease: 'power2.out',
      stagger: 0.12
    });
  }

  const letters = document.querySelectorAll('.letter__envelope');
  letters.forEach((env, i) => {
    gsap.to(env, {
      y: -8,
      duration: 1.8 + i * 0.2,
      repeat: -1,
      yoyo: true,
      ease: 'sine.inOut'
    });
  });
}
