#!/usr/bin/env bash

set -e

# Create directories
mkdir -p css js img

echo "Cleaning up header (Brand only) and keeping the Gift Box with Tag..."

########################
# index.html
########################
cat > index.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
  <title>Merry Christmas Neelam Ma'am 🎄</title>
  <link rel="stylesheet" href="css/style.css" />
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&family=Great+Vibes&family=Cinzel:wght@500&display=swap" rel="stylesheet" />
</head>
<body>
  <canvas id="snow-canvas" aria-hidden="true"></canvas>

  <header class="hero" id="top">
    <nav class="nav" aria-label="Main navigation">
      <div class="nav__brand">For Neelam Ma'am</div>
    </nav>

    <div class="hero__container">
      <section class="hero__content">
        <div class="hero__text-column">
          
          <div class="gift-3d-wrapper">
            <div class="gift-3d-scene">
              <div class="gift-3d-axis">
                <div class="gift-face gift-face--front"></div>
                <div class="gift-face gift-face--back"></div>
                <div class="gift-face gift-face--left"></div>
                <div class="gift-face gift-face--right"></div>
                <div class="gift-face gift-face--top"></div>
                <div class="gift-face gift-face--bottom"></div>
                
                <div class="gift-tag-3d">
                  For Neelam Ma'am
                </div>
              </div>
              <div class="gift-shadow"></div>
            </div>
          </div>

          <div class="hero__text-content">
            <p class="hero__tag">A Token of Gratitude</p>
            <h1 class="hero__title">
              Merry Christmas,<br />
              <span class="hero__title--accent">Neelam Ma'am</span>
            </h1>
            <p class="hero__subtitle">
              To the teacher who taught me that words are not just for writing, but for connecting souls. From your student, <span class="accent">Vishwa Panchal</span>.
            </p>
            <div class="hero__actions">
              <a href="#letters" class="btn btn--primary">Read my letters</a>
              <a href="#message" class="btn btn--ghost">The Wish</a>
            </div>
          </div>
        </div>
        
        <div class="hero__card-column">
          <div class="hero__card-wrapper">
            <div class="gift-card">
              <div class="gift-card__ribbon"></div>
              <div class="gift-card__body">
                <span class="gift-label">To:</span>
                <span class="gift-name">Neelam Ma'am</span>
                <div class="gift-line"></div>
                <span class="gift-label">From:</span>
                <span class="gift-name">Vishwa</span>
                <p class="gift-note">May this season bring you the same warmth you brought to our classroom.</p>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>

    <div class="scroll-indicator">
      <span>Scroll with love</span>
      <div class="scroll-indicator__line"></div>
    </div>
  </header>

  <main>
    <section class="section section--alt" id="message">
      <div class="section__inner">
        <h2 class="section__title">A Message from the Heart</h2>
        <p class="section__subtitle">Because some thank-yous take years to fully mature.</p>

        <article class="message-card">
          <div class="message-card__content">
            <h3 class="message-card__heading">Dearest Ma'am,</h3>
            <p>
              They say that people might forget what you said, but they never forget how you made them feel. When I look back at my school days, I don't just remember the syllabus; I remember the <em>encouragement</em>.
            </p>
            <p>
              In a world that often rushes to judge, you took the time to understand. You didn't just correct my grammar; you polished my confidence. You taught me that my voice mattered, even when I was afraid to use it.
            </p>
            <p>
              This Christmas, as I write code and build things, I realize that the foundation of my expression was laid by you. You are the architect of my confidence.
            </p>
            <p class="message-card__closing">
              May your Christmas be as beautiful as the lessons you taught us.<br />
              Always your student,<br />
              <span class="accent">Vishwa</span>
            </p>
          </div>
        </article>
      </div>
    </section>

    <section class="section" id="memories">
      <div class="section__inner">
        <h2 class="section__title">Echoes of the Classroom</h2>
        <p class="section__subtitle">Moments that time has only made more precious.</p>

        <div class="memories-grid">
          <article class="memory-card">
            <div class="memory-icon">✒️</div>
            <h3>The Red Pen of Care</h3>
            <p>
              Your corrections never felt like failures. They felt like a guide holding a lantern, showing me the better path. You taught me that perfection is a journey, not a destination.
            </p>
          </article>

          <article class="memory-card">
            <div class="memory-icon">🎭</div>
            <h3>Living the Stories</h3>
            <p>
              I’ll never forget how you made us act out characters from our textbooks. You didn't just teach us stories; you let us live them. Reading those dialogues brought the pages to life and made learning feel like magic.
            </p>
          </article>

          <article class="memory-card">
            <div class="memory-icon">📖</div>
            <h3>Beyond the Books</h3>
            <p>
              You taught English, but you really taught Life. You showed us that kindness is the most universal language of all. That lesson is my most cherished degree.
            </p>
          </article>
        </div>
      </div>
    </section>

    <section class="section section--alt" id="letters">
      <div class="section__inner">
        <h2 class="section__title">Notes of Gratitude</h2>
        <p class="section__subtitle">
          These letters are covered in winter snow. Tap to melt the snow and read.
        </p>

        <div class="snow-cards-container">
          
          <div class="snow-card" onclick="meltSnow(this)">
            <div class="snow-cover">
              <div class="snow-texture"></div>
              <div class="snow-icon">❄️</div>
              <span class="snow-hint">Tap to Melt</span>
            </div>
            
            <div class="letter-content">
              <h4>For Your Guidance</h4>
              <p>
                Even as a third-year engineering student working with languages like Python and Java, or managing databases and cloud systems, I’ve never forgotten your teaching. Your lessons have always lifted me up—whether I’m preparing presentations, writing documentation, or crafting emails. The clarity and confidence you instilled in me continue to guide my work every single day.
              </p>
              <div class="letter-sign">~ Vishwa</div>
            </div>
          </div>

          <div class="snow-card" onclick="meltSnow(this)">
            <div class="snow-cover">
              <div class="snow-texture"></div>
              <div class="snow-icon">❄️</div>
              <span class="snow-hint">Tap to Melt</span>
            </div>
            
            <div class="letter-content">
              <h4>For Your Faith</h4>
              <p>Thank you for always believing in me. Whenever I feel hopeless, I remember your faith in me, and that memory gives me the strength to keep moving forward in life.</p>
              <div class="letter-sign">~ Vishwa</div>
            </div>
          </div>

          <div class="snow-card" onclick="meltSnow(this)">
            <div class="snow-cover">
              <div class="snow-texture"></div>
              <div class="snow-icon">❄️</div>
              <span class="snow-hint">Tap to Melt</span>
            </div>
            
            <div class="letter-content">
              <h4>For Your Blessings</h4>
              <p>I carry your blessings like a shield. Wherever I go, a part of your teaching goes with me. Merry Christmas, Ma'am.</p>
              <div class="letter-sign">~ Vishwa</div>
            </div>
          </div>

        </div>
      </div>
    </section>
  </main>

  <footer class="footer">
    <div class="footer__container">
      <p class="footer__main">
        Made with a sprinkle of code 💻 and a whole lot of heart <span class="heart-beat">❤️</span> by <a href="https://github.com/vishwapanchal" target="_blank" class="footer__link">Vishwa Panchal</a> —
      </p>
      <p class="footer__sub">
        Inspired by a desire to spread joy and gratitude. ✨
      </p>
      <p class="footer__wishes">
        Wishing you a Merry Christmas 🎄 and a bright New Year! 🌟
      </p>
    </div>
  </footer>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/gsap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/ScrollTrigger.min.js"></script>
  <script src="js/app.js"></script>
</body>
</html>
EOF

########################
# css/style.css
########################
cat > css/style.css << 'EOF'
:root {
  --bg-deep: #0f172a;
  --bg-dark: #020617;
  --text-main: #f1f5f9;
  --text-muted: #94a3b8;
  
  --accent: #ff8c42;
  --accent-glow: rgba(255, 140, 66, 0.4);
  --accent-dark: #ea580c;
  
  --box-col: #e11d48; 
  --box-col-dark: #9f1239; 
  --ribbon-col: #facc15; 
  
  --paper-bg: #fffbf0;
  --paper-text: #334155;
  --snow-white: #ffffff;
  
  --font-body: "Poppins", sans-serif;
  --font-head: "Great Vibes", cursive;
  --font-cinzel: "Cinzel", serif;
}

*, *::before, *::after {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

html {
  scroll-behavior: smooth;
}

body {
  background: radial-gradient(circle at top center, #1e293b 0%, #020617 80%);
  color: var(--text-main);
  font-family: var(--font-body);
  overflow-x: hidden;
  line-height: 1.6;
}

#snow-canvas {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  pointer-events: none;
  z-index: 1;
}

/* Typography */
h1, h2, h3 { line-height: 1.2; }
.accent { color: var(--accent); }

/* Navigation - Clean, Centered */
.nav {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  z-index: 100;
  padding: 1.5rem;
  display: flex;
  justify-content: center; /* Centered */
  align-items: center;
  background: transparent; 
}

.nav__brand {
  font-family: var(--font-cinzel);
  font-weight: 600;
  font-size: 1.8rem;
  letter-spacing: 2px;
  color: var(--text-main);
  text-shadow: 0 2px 15px rgba(255,140,66,0.3);
  border-bottom: 2px solid var(--accent);
  padding-bottom: 8px;
}

/* Hero Section */
.hero {
  min-height: 100vh;
  padding: 8rem 1.5rem 2rem;
  position: relative;
  z-index: 2;
  display: flex;
  flex-direction: column;
  justify-content: center;
}

.hero__container {
  width: 100%;
  max-width: 1200px;
  margin: 0 auto;
}

.hero__content {
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 2rem;
}

/* Text Column */
.hero__text-column {
  flex: 1;
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  max-width: 600px;
}

/* Card Column */
.hero__card-column {
  flex: 1;
  display: flex;
  justify-content: center;
  perspective: 1000px;
}

/* 3D GIFT BOX STYLES */
.gift-3d-wrapper {
  margin-bottom: 2rem;
  align-self: center; 
}
.gift-3d-scene {
  width: 140px;
  height: 140px;
  perspective: 800px;
  position: relative;
}
.gift-3d-axis {
  position: relative;
  width: 100%;
  height: 100%;
  transform-style: preserve-3d;
  animation: spinBox 8s linear infinite;
  transform-origin: center center;
}
@keyframes spinBox {
  0% { transform: rotateX(-20deg) rotateY(0deg); }
  100% { transform: rotateX(-20deg) rotateY(360deg); }
}

.gift-face {
  position: absolute;
  width: 140px;
  height: 140px;
  background: var(--box-col);
  border: 1px solid rgba(255,255,255,0.1);
  box-shadow: inset 0 0 15px rgba(0,0,0,0.2);
}

.gift-face::before {
  content: ""; position: absolute; top: 0; left: 50%; width: 24px; height: 100%;
  background: var(--ribbon-col); transform: translateX(-50%);
  box-shadow: 0 0 5px rgba(255,215,0, 0.4);
}
.gift-face--top::after, .gift-face--bottom::after {
  content: ""; position: absolute; top: 50%; left: 0; width: 100%; height: 24px;
  background: var(--ribbon-col); transform: translateY(-50%);
  box-shadow: 0 0 5px rgba(255,215,0, 0.4);
}

.gift-face--front  { transform: rotateY(0deg) translateZ(70px); }
.gift-face--back   { transform: rotateY(180deg) translateZ(70px); }
.gift-face--right  { transform: rotateY(90deg) translateZ(70px); background: var(--box-col-dark); }
.gift-face--left   { transform: rotateY(-90deg) translateZ(70px); background: var(--box-col-dark); }
.gift-face--top    { transform: rotateX(90deg) translateZ(70px); background: #be123c; }
.gift-face--bottom { transform: rotateX(-90deg) translateZ(70px); box-shadow: 0 0 40px rgba(0,0,0,0.6); }

/* The Tag (No Bow) */
.gift-tag-3d {
  position: absolute;
  top: -20px; left: 60px; /* Positioned near where the knot would be */
  background: #fff;
  color: #b91c1c;
  padding: 5px 10px;
  font-family: var(--font-cinzel);
  font-size: 0.6rem;
  font-weight: bold;
  border-radius: 2px;
  transform: translateZ(75px) rotateY(10deg) rotateZ(-5deg); /* Float slightly above surface */
  box-shadow: 2px 2px 5px rgba(0,0,0,0.2);
  border-left: 3px solid var(--ribbon-col);
  white-space: nowrap;
}
/* String connecting to box */
.gift-tag-3d::before {
  content: ""; position: absolute; bottom: 50%; right: 100%; 
  width: 20px; height: 1px; background: #fff; opacity: 0.8;
  transform-origin: right center;
  transform: rotate(15deg);
}

.gift-shadow {
  position: absolute; bottom: -40px; left: 50%; transform: translateX(-50%);
  width: 120px; height: 20px; background: rgba(0,0,0,0.6); border-radius: 50%; filter: blur(15px);
}

/* Hero Typography */
.hero__text-content { text-align: left; width: 100%; }
.hero__tag {
  text-transform: uppercase; letter-spacing: 2px; font-size: 0.8rem;
  color: var(--accent); margin-bottom: 0.5rem; display: block;
}
.hero__title {
  font-family: var(--font-head); font-size: 4rem; margin-bottom: 1rem;
}
.hero__title--accent {
  color: var(--accent); text-shadow: 0 0 30px var(--accent-glow);
}
.hero__subtitle {
  color: var(--text-muted); max-width: 450px; margin-bottom: 2rem; font-size: 1rem;
}
.hero__actions { display: flex; gap: 1rem; }

/* Buttons */
.btn {
  padding: 0.8rem 1.5rem; border-radius: 50px; text-decoration: none;
  font-weight: 500; transition: transform 0.2s, box-shadow 0.2s; white-space: nowrap;
}
.btn--primary {
  background: var(--accent); color: #000; box-shadow: 0 10px 20px var(--accent-glow);
}
.btn--ghost { border: 1px solid rgba(255,255,255,0.2); color: white; }
.btn:hover { transform: translateY(-2px); }

/* Gift Card */
.hero__card-wrapper { transform-style: preserve-3d; }
.gift-card {
  width: 300px;
  background: linear-gradient(135deg, #f8fafc, #e2e8f0);
  border-radius: 12px; padding: 1.5rem; color: #334155;
  transform: rotateY(-10deg) rotateX(5deg);
  box-shadow: -20px 20px 40px rgba(0,0,0,0.5);
  position: relative; border: 5px solid #fff;
}
.gift-card__ribbon {
  position: absolute; top: -10px; right: 20px; width: 40px; height: 80px;
  background: #e11d48; border-radius: 0 0 20px 20px; box-shadow: 0 5px 15px rgba(0,0,0,0.2);
}
.gift-label { font-size: 0.7rem; text-transform: uppercase; color: #94a3b8; }
.gift-name { font-family: var(--font-cinzel); font-size: 1.2rem; display: block; color: #0f172a; font-weight: bold; }
.gift-line { height: 1px; background: #cbd5e1; margin: 10px 0; }
.gift-note { font-size: 0.85rem; margin-top: 10px; font-style: italic; color: #64748b; }

/* Scroll Indicator */
.scroll-indicator {
  position: absolute; bottom: 1.5rem; left: 50%; transform: translateX(-50%);
  display: flex; flex-direction: column; align-items: center; gap: 0.5rem;
  font-size: 0.8rem; opacity: 0.7;
}
.scroll-indicator__line { width: 1px; height: 30px; background: white; }

/* Responsive */
@media (max-width: 900px) {
  .hero__content { flex-direction: column; align-items: center; text-align: center; }
  .hero__text-column { align-items: center; max-width: 100%; }
  .hero__text-content { text-align: center; }
  .hero__subtitle { margin: 0 auto 2rem; }
  .hero__actions { justify-content: center; }
  .gift-3d-wrapper { margin-bottom: 2rem; }
  .hero__card-column { margin-top: 3rem; width: 100%; transform: scale(0.9); }
}
@media (max-width: 480px) {
  .hero__title { font-size: 2.5rem; }
  .hero__container { padding-top: 2rem; }
  .hero { padding: 5rem 1rem 2rem; }
  .gift-card { width: 280px; }
  .btn { padding: 0.7rem 1.2rem; font-size: 0.9rem; }
}

/* Sections */
.section { padding: 5rem 1rem; position: relative; z-index: 2; }
.section--alt { background: rgba(255,255,255,0.02); }
.section__inner { max-width: 1000px; margin: 0 auto; }
.section__title { font-size: 2rem; text-align: center; font-family: var(--font-cinzel); margin-bottom: 0.5rem; }
.section__subtitle { text-align: center; color: var(--text-muted); margin-bottom: 3rem; font-size: 0.95rem; }

/* Message Card */
.message-card {
  background: linear-gradient(145deg, rgba(30,41,59,0.8), rgba(15,23,42,0.9));
  border: 1px solid rgba(255,255,255,0.1); padding: 2rem; border-radius: 20px;
  box-shadow: 0 20px 50px rgba(0,0,0,0.3); position: relative;
}
.message-card::before {
  content: "”"; position: absolute; top: 0.5rem; right: 1.5rem;
  font-size: 5rem; line-height: 1; color: rgba(255,255,255,0.05); font-family: serif;
}
.message-card__heading { color: var(--accent); margin-bottom: 1rem; }
.message-card p { margin-bottom: 1rem; color: #cbd5e1; font-size: 0.95rem; }
.message-card__closing { margin-top: 2rem; font-family: var(--font-cinzel); color: white; border-top: 1px solid rgba(255,255,255,0.1); padding-top: 1rem; }

/* Memories */
.memories-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(280px, 1fr)); gap: 1.5rem; }
.memory-card {
  background: rgba(30,41,59,0.4); border: 1px solid rgba(255,255,255,0.05);
  padding: 1.5rem; border-radius: 12px; transition: transform 0.3s;
}
.memory-card:hover { transform: translateY(-5px); background: rgba(30,41,59,0.6); }
.memory-icon { font-size: 2rem; margin-bottom: 1rem; }

/* SNOW MELT CARD STYLES */
.snow-cards-container { display: flex; flex-wrap: wrap; justify-content: center; gap: 2rem; }
.snow-card {
  position: relative; width: 320px; height: 420px; 
  background: var(--paper-bg); border-radius: 6px;
  box-shadow: 0 15px 35px rgba(0,0,0,0.25); cursor: pointer; overflow: hidden;
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}
.snow-card:hover { transform: translateY(-5px); box-shadow: 0 20px 40px rgba(0,0,0,0.3); }
.letter-content {
  position: absolute; inset: 0; padding: 2rem;
  display: flex; flex-direction: column; justify-content: space-between; 
  color: var(--paper-text); text-align: center;
  z-index: 1; opacity: 0; transition: opacity 0.5s ease 0.5s; 
}
.snow-card.melted .letter-content { opacity: 1; }
.letter-content h4 { 
  font-family: var(--font-cinzel); color: #b91c1c; margin-bottom: 1rem; font-size: 1.2rem; font-weight: 600;
}
.letter-content p { 
  font-size: 0.9rem; line-height: 1.7; margin-bottom: 1rem; flex-grow: 1; display: flex; align-items: center; 
}
.letter-sign { 
  font-family: var(--font-head); font-size: 1.5rem; color: var(--accent-dark); 
  margin-top: 1rem; align-self: flex-end; width: 100%; text-align: right;
}
.snow-cover {
  position: absolute; inset: -2px; 
  background: linear-gradient(135deg, #ffffff 0%, #f1f5f9 100%);
  border-radius: 6px; z-index: 10; 
  display: flex; flex-direction: column; align-items: center; justify-content: center;
  transition: transform 1s cubic-bezier(0.68, -0.55, 0.265, 1.55), opacity 0.8s ease;
  transform-origin: bottom center; border: 1px solid rgba(255,255,255,0.6);
}
.snow-texture {
  position: absolute; top: 0; left: 0; width: 100%; height: 100%;
  background-image: radial-gradient(rgba(203, 213, 225, 0.4) 1px, transparent 1px);
  background-size: 12px 12px; opacity: 0.6;
}
.snow-icon { 
  font-size: 3.5rem; margin-bottom: 1rem; 
  filter: drop-shadow(0 5px 10px rgba(0,0,0,0.1)); animation: pulseSnow 2s infinite ease-in-out;
}
@keyframes pulseSnow {
  0%, 100% { transform: scale(1); opacity: 0.9; }
  50% { transform: scale(1.1); opacity: 1; }
}
.snow-hint { 
  font-size: 0.85rem; text-transform: uppercase; letter-spacing: 2px; color: #64748b; 
  font-weight: 600; text-shadow: 0 1px 2px rgba(255,255,255,0.8);
}
.snow-card.melted .snow-cover { opacity: 0; transform: translateY(100%) scale(0.8); pointer-events: none; }

/* Footer Styling */
.footer {
  text-align: center; padding: 3rem 1.5rem; color: var(--text-muted);
  border-top: 1px solid rgba(255,255,255,0.05); background: rgba(2, 6, 23, 0.5);
}
.footer__container { max-width: 800px; margin: 0 auto; }
.footer__main { font-size: 1rem; margin-bottom: 0.5rem; color: #cbd5e1; }
.footer__link {
  color: var(--accent); text-decoration: none; font-weight: 600;
  transition: color 0.3s ease, text-shadow 0.3s ease;
}
.footer__link:hover { color: #fff; text-shadow: 0 0 10px var(--accent-glow); }
.heart-beat { display: inline-block; animation: heartBeat 1.5s infinite; color: #e11d48; }
@keyframes heartBeat {
  0%, 100% { transform: scale(1); }
  10%, 30% { transform: scale(1.2); }
  20% { transform: scale(1.1); }
  40% { transform: scale(1); }
}
.footer__sub { font-size: 0.9rem; font-style: italic; margin-bottom: 1rem; color: #94a3b8; }
.footer__wishes {
  font-family: var(--font-cinzel); font-size: 1.1rem; color: #f1f5f9;
  letter-spacing: 0.5px; margin-top: 1.5rem; text-shadow: 0 0 20px rgba(255,255,255,0.2);
}
EOF

########################
# js/app.js
########################
cat > js/app.js << 'EOF'
/* Clean JS - No Toggle Listener */

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
EOF

echo "Updates complete: Clean Header, Gift Box with Tag Only (Bow Removed)!"
