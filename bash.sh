#!/usr/bin/env bash

set -e

# Create structure
mkdir -p css js img

########################
# index.html
########################
cat > index.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Merry Christmas Neelam Ma'am 🎄</title>
  <link rel="stylesheet" href="css/style.css" />
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&family=Great+Vibes&display=swap" rel="stylesheet" />
</head>
<body>
  <canvas id="snow-canvas" aria-hidden="true"></canvas>

  <header class="hero" id="top">
    <nav class="nav" aria-label="Main navigation">
      <div class="nav__brand">For Neelam Ma'am</div>
      <button class="nav__toggle" type="button" aria-label="Toggle navigation" aria-expanded="false">
        <span></span><span></span><span></span>
      </button>
      <ul class="nav__links">
        <li><a href="#top">Home</a></li>
        <li><a href="#message">Message</a></li>
        <li><a href="#memories">Memories</a></li>
        <li><a href="#letters">Letters</a></li>
      </ul>
    </nav>

    <section class="hero__content" aria-labelledby="hero-title">
      <div class="hero__text">
        <p class="hero__tag">A special Christmas page</p>
        <h1 class="hero__title" id="hero-title">
          Merry Christmas,<br />
          <span class="hero__title--accent">Neelam Ma'am</span>
        </h1>
        <p class="hero__subtitle">
          From your old student <span class="accent">Vishwa Panchal</span>, with gratitude for every lesson, every correction, and every kind word.
        </p>
        <div class="hero__actions">
          <a href="#message" class="btn btn--primary">Open my heartfelt wish</a>
          <a href="#memories" class="btn btn--ghost">Scroll through memories</a>
        </div>
      </div>
      <div class="hero__card" aria-hidden="true">
        <div class="gift-card">
          <div class="gift-card__bow"></div>
          <div class="gift-card__body">
            <p>To: Neelam Ma'am</p>
            <p>From: Vishwa</p>
            <p class="gift-card__note">With love, respect &amp; warm wishes this Christmas.</p>
          </div>
        </div>
      </div>
    </section>

    <div class="scroll-indicator" aria-hidden="true">
      <span>Scroll</span>
      <div class="scroll-indicator__mouse">
        <div class="scroll-indicator__wheel"></div>
      </div>
    </div>
  </header>

  <main>
    <!-- Main message -->
    <section class="section section--alt" id="message" aria-labelledby="message-title">
      <div class="section__inner">
        <h2 class="section__title" id="message-title">A message from Vishwa</h2>
        <p class="section__subtitle">
          One English teacher. Many lives changed. This is a small page, but it carries a huge thank you.
        </p>

        <article class="message-card">
          <h3 class="message-card__heading">Dear Neelam Ma'am,</h3>
          <p>
            As Christmas lights glow everywhere, one light that has stayed constant for me is the one you lit years ago in your English class – the light of expression, clarity, and confidence.
          </p>
          <p>
            You didn’t just correct my grammar; you shaped the way I think, speak, and write. Every time I draft an email, present an idea, or search for the right words, I silently thank you.
          </p>
          <p>
            On this Christmas, I want you to know that your lessons are still alive in my life, travelling with me into every new chapter.
          </p>
          <p class="message-card__closing">
            Wishing you a peaceful, joyful, and beautifully written Christmas season.<br />
            With deep gratitude,<br />
            <span class="accent">Your old student, Vishwa Panchal</span>
          </p>
        </article>
      </div>
    </section>

    <!-- Memories -->
    <section class="section" id="memories" aria-labelledby="memories-title">
      <div class="section__inner">
        <h2 class="section__title" id="memories-title">Little classroom memories</h2>
        <p class="section__subtitle">
          A few moments that still feel fresh, like ink that never dries.
        </p>

        <div class="memories-grid">
          <article class="memory-card">
            <div class="memory-card__badge">01</div>
            <h3>Your patient corrections</h3>
            <p>
              Every red mark in my notebook felt strict then, but now it feels like care. You took time to polish each sentence until it truly shone.
            </p>
          </article>

          <article class="memory-card">
            <div class="memory-card__badge">02</div>
            <h3>Confidence to speak</h3>
            <p>
              Standing up to read aloud or present was scary, but your calm smile from the last bench gave me the courage to finish every line.
            </p>
          </article>

          <article class="memory-card">
            <div class="memory-card__badge">03</div>
            <h3>Love for the language</h3>
            <p>
              You turned English from a subject into a language I genuinely enjoy – something that supports me every single day, even in engineering.
            </p>
          </article>
        </div>
      </div>
    </section>

    <!-- Interactive letters -->
    <section class="section section--alt" id="letters" aria-labelledby="letters-title">
      <div class="section__inner">
        <h2 class="section__title" id="letters-title">Open these little Christmas notes</h2>
        <p class="section__subtitle">
          Tap on each envelope to open a small part of my gratitude.
        </p>

        <div class="letters-grid" role="list">
          <button class="letter" data-letter="1" role="listitem">
            <div class="letter__envelope">
              <div class="letter__flap"></div>
              <div class="letter__seal">🎄</div>
            </div>
            <p class="letter__label">For your guidance</p>
          </button>

          <button class="letter" data-letter="2" role="listitem">
            <div class="letter__envelope">
              <div class="letter__flap"></div>
              <div class="letter__seal">⭐</div>
            </div>
            <p class="letter__label">For your patience</p>
          </button>

          <button class="letter" data-letter="3" role="listitem">
            <div class="letter__envelope">
              <div class="letter__flap"></div>
              <div class="letter__seal">❤️</div>
            </div>
            <p class="letter__label">For your blessings</p>
          </button>
        </div>
      </div>
    </section>

    <!-- Modal for letters -->
    <div class="modal" id="letterModal" aria-hidden="true">
      <div class="modal__backdrop" data-close-modal></div>
      <div
        class="modal__content"
        role="dialog"
        aria-modal="true"
        aria-labelledby="modalTitle"
        aria-describedby="modalBody"
      >
        <button class="modal__close" type="button" aria-label="Close" data-close-modal>&times;</button>
        <h3 id="modalTitle" class="modal__title"></h3>
        <p id="modalBody" class="modal__body"></p>
      </div>
    </div>
  </main>

  <footer class="footer">
    <p>
      Crafted with care by <span class="accent">Vishwa Panchal</span> exclusively for
      <span class="accent">Neelam Ma'am</span>.
    </p>
    <p class="footer__mini">May your days be merry, bright, and always full of wonderful words.</p>
  </footer>

  <!-- GSAP for animations -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/gsap.min.js" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/ScrollTrigger.min.js" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="js/app.js"></script>
</body>
</html>
EOF

########################
# css/style.css
########################
cat > css/style.css << 'EOF'
:root {
  --bg: #050816;
  --bg-alt: #0a1b2a;
  --card: #0f172a;
  --accent: #f97316;
  --accent-soft: rgba(249, 115, 22, 0.16);
  --text: #e5e7eb;
  --muted: #9ca3af;
  --border-soft: rgba(148, 163, 184, 0.2);
  --shadow-soft: 0 18px 45px rgba(15, 23, 42, 0.8);
  --radius-lg: 1.4rem;
  --radius-md: 0.9rem;
  --radius-pill: 999px;
  --nav-height: 64px;
}

/* Reset + base */
*,
*::before,
*::after {
  box-sizing: border-box;
}

html, body {
  margin: 0;
  padding: 0;
  scroll-behavior: smooth;
}

body {
  font-family: "Poppins", system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
  background: radial-gradient(circle at top, #111827 0, #020617 45%, #000 100%);
  color: var(--text);
  min-height: 100vh;
  position: relative;
  overflow-x: hidden;
}

/* Snow canvas */
#snow-canvas {
  position: fixed;
  inset: 0;
  z-index: -1;
}

/* Nav */
.nav {
  position: sticky;
  top: 0;
  z-index: 50;
  backdrop-filter: blur(18px);
  background: linear-gradient(to bottom, rgba(15, 23, 42, 0.92), rgba(15, 23, 42, 0.5), transparent);
  border-bottom: 1px solid rgba(148, 163, 184, 0.25);
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 0.75rem 1.25rem;
}

.nav__brand {
  font-weight: 700;
  letter-spacing: 0.04em;
  font-size: 0.95rem;
  text-transform: uppercase;
}

.nav__toggle {
  width: 2.2rem;
  height: 2.2rem;
  border-radius: 999px;
  border: 1px solid rgba(148, 163, 184, 0.6);
  background: rgba(15, 23, 42, 0.8);
  display: flex;
  flex-direction: column;
  justify-content: center;
  gap: 0.25rem;
  padding: 0 0.45rem;
  cursor: pointer;
}

.nav__toggle span {
  display: block;
  height: 2px;
  width: 100%;
  background: #e5e7eb;
  border-radius: 999px;
  transition: transform 0.2s ease, opacity 0.2s ease;
}

.nav__links {
  list-style: none;
  margin: 0;
  padding: 0.6rem 0 0.75rem;
  position: absolute;
  inset-inline: 1rem;
  top: calc(var(--nav-height) - 4px);
  background: rgba(15, 23, 42, 0.96);
  border-radius: 1.2rem;
  border: 1px solid var(--border-soft);
  box-shadow: var(--shadow-soft);
  transform-origin: top;
  transform: scaleY(0.95);
  opacity: 0;
  pointer-events: none;
  transition: opacity 0.2s ease, transform 0.2s ease;
}

.nav__links li {
  padding: 0.4rem 0.9rem;
}

.nav__links a {
  text-decoration: none;
  color: var(--muted);
  font-size: 0.9rem;
  display: block;
  border-radius: var(--radius-pill);
  padding: 0.45rem 0.8rem;
}

.nav__links a:hover {
  color: var(--accent);
  background: var(--accent-soft);
}

/* open state */
.nav--open .nav__links {
  opacity: 1;
  transform: scaleY(1);
  pointer-events: auto;
}

.nav--open .nav__toggle span:nth-child(1) {
  transform: translateY(4px) rotate(45deg);
}
.nav--open .nav__toggle span:nth-child(2) {
  opacity: 0;
}
.nav--open .nav__toggle span:nth-child(3) {
  transform: translateY(-4px) rotate(-45deg);
}

/* Desktop nav */
@media (min-width: 768px) {
  .nav {
    padding-inline: 4vw;
  }
  .nav__toggle {
    display: none;
  }
  .nav__links {
    position: static;
    inset: auto;
    background: transparent;
    border: none;
    box-shadow: none;
    opacity: 1;
    transform: none;
    pointer-events: auto;
    display: flex;
    align-items: center;
    gap: 0.3rem;
    padding: 0;
  }
  .nav__links li {
    padding: 0;
  }
}

/* Hero */
.hero {
  min-height: calc(100vh - var(--nav-height));
  display: flex;
  flex-direction: column;
  justify-content: center;
  padding: 1.5rem 1.25rem 2.5rem;
  position: relative;
}

.hero__content {
  display: grid;
  grid-template-columns: minmax(0, 1fr);
  gap: 2rem;
  align-items: center;
  margin-top: 1.5rem;
}

.hero__text {
  max-width: 32rem;
}

.hero__tag {
  font-size: 0.78rem;
  letter-spacing: 0.16em;
  text-transform: uppercase;
  color: var(--accent);
  margin-bottom: 0.8rem;
}

.hero__title {
  font-family: "Great Vibes", cursive;
  font-size: 2.7rem;
  line-height: 1.1;
  margin: 0 0 0.4rem;
}

.hero__title--accent {
  color: var(--accent);
  text-shadow: 0 0 28px rgba(249, 115, 22, 0.6);
}

.hero__subtitle {
  margin: 0.5rem 0 1.3rem;
  font-size: 0.96rem;
  color: var(--muted);
}

.accent {
  color: var(--accent);
}

.hero__actions {
  display: flex;
  flex-wrap: wrap;
  gap: 0.7rem;
}

.btn {
  border-radius: var(--radius-pill);
  padding: 0.7rem 1.1rem;
  font-size: 0.9rem;
  border: 1px solid transparent;
  cursor: pointer;
  text-decoration: none;
  display: inline-flex;
  align-items: center;
  justify-content: center;
  gap: 0.35rem;
  transition: transform 0.15s ease, box-shadow 0.15s ease, background 0.15s ease, border-color 0.15s ease;
}

.btn--primary {
  background: linear-gradient(135deg, var(--accent), #fb923c);
  color: #111827;
  box-shadow: 0 15px 35px rgba(249, 115, 22, 0.4);
}

.btn--primary:hover {
  transform: translateY(-1px);
  box-shadow: 0 20px 45px rgba(249, 115, 22, 0.55);
}

.btn--ghost {
  border-color: rgba(148, 163, 184, 0.7);
  background: rgba(15, 23, 42, 0.85);
  color: var(--text);
}

.btn--ghost:hover {
  background: rgba(15, 23, 42, 1);
  transform: translateY(-1px);
}

/* Gift card */
.hero__card {
  display: flex;
  justify-content: center;
}

.gift-card {
  width: min(280px, 80vw);
  border-radius: 1.4rem;
  padding: 1.1rem;
  background:
    radial-gradient(circle at top left, rgba(248, 250, 252, 0.06), transparent 55%),
    radial-gradient(circle at bottom right, rgba(248, 250, 252, 0.04), transparent 55%),
    rgba(15, 23, 42, 0.95);
  border: 1px solid rgba(148, 163, 184, 0.4);
  box-shadow: var(--shadow-soft);
  position: relative;
  overflow: hidden;
}

.gift-card::before {
  content: "";
  position: absolute;
  inset: -40%;
  background:
    radial-gradient(circle at 10% 20%, rgba(249, 115, 22, 0.35), transparent 60%),
    radial-gradient(circle at 80% 80%, rgba(59, 130, 246, 0.3), transparent 60%);
  opacity: 0.35;
  mix-blend-mode: screen;
}

.gift-card__bow {
  width: 48px;
  height: 48px;
  border-radius: 999px;
  border: 2px solid rgba(248, 250, 252, 0.7);
  position: relative;
  margin-inline: auto;
  margin-bottom: 0.7rem;
}

.gift-card__bow::before,
.gift-card__bow::after {
  content: "";
  position: absolute;
  inset: 11px;
  border-radius: inherit;
  border: 2px solid rgba(249, 115, 22, 0.8);
  border-style: dashed;
}

.gift-card__body {
  position: relative;
  z-index: 1;
  font-size: 0.85rem;
}

.gift-card__body p {
  margin: 0.2rem 0;
}

.gift-card__note {
  margin-top: 0.6rem;
  padding-top: 0.6rem;
  border-top: 1px dashed rgba(148, 163, 184, 0.5);
  color: var(--muted);
}

/* Scroll indicator */
.scroll-indicator {
  position: absolute;
  left: 50%;
  bottom: 1.5rem;
  transform: translateX(-50%);
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 0.3rem;
  font-size: 0.75rem;
  color: var(--muted);
}

.scroll-indicator__mouse {
  width: 24px;
  height: 38px;
  border-radius: 999px;
  border: 1px solid rgba(148, 163, 184, 0.9);
  display: flex;
  justify-content: center;
  padding-top: 4px;
}

.scroll-indicator__wheel {
  width: 3px;
  height: 9px;
  border-radius: 999px;
  background: rgba(148, 163, 184, 0.9);
  animation: wheel 1.2s ease-in-out infinite;
}

@keyframes wheel {
  0% { transform: translateY(0); opacity: 1; }
  100% { transform: translateY(9px); opacity: 0; }
}

/* Sections */
.section {
  padding: 3.5rem 1.25rem 3.25rem;
}

.section--alt {
  background: radial-gradient(circle at top left, rgba(15, 23, 42, 0.7), rgba(15, 23, 42, 0.95));
}

.section__inner {
  max-width: 64rem;
  margin: 0 auto;
}

.section__title {
  font-size: 1.7rem;
  margin: 0 0 0.3rem;
}

.section__subtitle {
  margin: 0 0 1.6rem;
  font-size: 0.9rem;
  color: var(--muted);
}

/* Message card */
.message-card {
  background: rgba(15, 23, 42, 0.95);
  border-radius: var(--radius-lg);
  border: 1px solid var(--border-soft);
  box-shadow: var(--shadow-soft);
  padding: 1.4rem 1.2rem;
  font-size: 0.95rem;
  line-height: 1.6;
  position: relative;
  overflow: hidden;
}

.message-card::before {
  content: "✶";
  position: absolute;
  top: -8px;
  right: 16px;
  font-size: 1.5rem;
  color: rgba(248, 250, 252, 0.18);
}

.message-card__heading {
  margin-top: 0;
  margin-bottom: 0.7rem;
  font-size: 1.1rem;
}

.message-card__closing {
  margin-top: 1.1rem;
}

/* Memories grid */
.memories-grid {
  display: grid;
  grid-template-columns: minmax(0, 1fr);
  gap: 1rem;
}

.memory-card {
  position: relative;
  border-radius: var(--radius-md);
  padding: 1rem 0.95rem 0.95rem;
  background: linear-gradient(135deg, rgba(15, 23, 42, 0.98), rgba(15, 23, 42, 0.9));
  border: 1px solid rgba(148, 163, 184, 0.3);
  box-shadow: 0 16px 32px rgba(15, 23, 42, 0.5);
  font-size: 0.9rem;
}

.memory-card__badge {
  position: absolute;
  top: 0.55rem;
  right: 0.8rem;
  font-size: 0.7rem;
  letter-spacing: 0.14em;
  text-transform: uppercase;
  color: rgba(248, 250, 252, 0.4);
}

.memory-card h3 {
  margin: 0 0 0.3rem;
  font-size: 0.95rem;
}

/* Letters */
.letters-grid {
  display: grid;
  grid-template-columns: minmax(0, 1fr);
  gap: 1.1rem;
}

.letter {
  border: none;
  padding: 0;
  background: transparent;
  text-align: center;
  cursor: pointer;
}

.letter__envelope {
  width: 100%;
  max-width: 280px;
  margin: 0 auto 0.4rem;
  aspect-ratio: 4 / 3;
  border-radius: 1.1rem;
  background: linear-gradient(135deg, #dc2626, #fb923c);
  box-shadow: 0 20px 40px rgba(248, 113, 113, 0.35);
  position: relative;
  overflow: hidden;
}

.letter__flap {
  position: absolute;
  inset: 0;
  background: linear-gradient(135deg, rgba(248, 250, 252, 0.9), rgba(248, 250, 252, 0.8));
  clip-path: polygon(0 0, 100% 0, 50% 55%);
  transform-origin: top;
  transform: perspective(600px) rotateX(0deg);
  transition: transform 0.35s ease;
}

.letter__seal {
  position: absolute;
  left: 50%;
  top: 46%;
  transform: translate(-50%, -50%);
  width: 46px;
  height: 46px;
  border-radius: 999px;
  background: #111827;
  border: 2px solid rgba(248, 250, 252, 0.9);
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 1.2rem;
}

.letter__label {
  font-size: 0.9rem;
  color: var(--muted);
}

.letter:hover .letter__flap {
  transform: perspective(600px) rotateX(-22deg);
}

/* Modal */
.modal {
  position: fixed;
  inset: 0;
  z-index: 60;
  display: grid;
  place-items: center;
  visibility: hidden;
  opacity: 0;
  transition: opacity 0.2s ease, visibility 0.2s ease;
}

.modal__backdrop {
  position: absolute;
  inset: 0;
  background: rgba(15, 23, 42, 0.82);
  backdrop-filter: blur(12px);
}

.modal__content {
  position: relative;
  z-index: 1;
  width: min(420px, 90vw);
  background: radial-gradient(circle at top, rgba(15, 23, 42, 0.98), rgba(15, 23, 42, 0.97));
  border-radius: 1.3rem;
  border: 1px solid rgba(148, 163, 184, 0.6);
  box-shadow: var(--shadow-soft);
  padding: 1.4rem 1.3rem 1.3rem;
  transform: translateY(10px) scale(0.96);
  opacity: 0;
  transition: transform 0.22s ease, opacity 0.22s ease;
}

.modal__title {
  margin: 0 0 0.6rem;
  font-size: 1.05rem;
}

.modal__body {
  margin: 0;
  font-size: 0.9rem;
  color: var(--muted);
  line-height: 1.6;
}

.modal__close {
  position: absolute;
  right: 0.9rem;
  top: 0.7rem;
  border-radius: 999px;
  border: none;
  width: 28px;
  height: 28px;
  font-size: 1.15rem;
  background: rgba(15, 23, 42, 0.9);
  color: #e5e7eb;
  cursor: pointer;
}

.modal--open {
  visibility: visible;
  opacity: 1;
}

.modal--open .modal__content {
  transform: translateY(0) scale(1);
  opacity: 1;
}

/* Footer */
.footer {
  padding: 1.8rem 1.25rem 2.2rem;
  text-align: center;
  font-size: 0.85rem;
  color: var(--muted);
}

.footer__mini {
  margin-top: 0.35rem;
}

/* Larger screens */
@media (min-width: 768px) {
  .hero {
    padding-inline: 4vw;
  }

  .hero__content {
    grid-template-columns: minmax(0, 1.2fr) minmax(0, 1fr);
    gap: 2.2rem;
  }

  .hero__title {
    font-size: 3.3rem;
  }

  .section {
    padding: 4.5rem 4vw 3.8rem;
  }

  .memories-grid {
    grid-template-columns: repeat(3, minmax(0, 1fr));
  }

  .letters-grid {
    grid-template-columns: repeat(3, minmax(0, 1fr));
  }
}

/* Extra large */
@media (min-width: 1024px) {
  .hero__content {
    gap: 3.3rem;
  }

  .gift-card {
    width: 320px;
  }

  .section__title {
    font-size: 2rem;
  }

  .message-card {
    padding: 1.7rem 1.5rem;
  }
}
EOF

########################
# js/app.js
########################
cat > js/app.js << 'EOF'
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
EOF

echo "All files created. Open index.html in your browser or deploy the folder as a static site."
