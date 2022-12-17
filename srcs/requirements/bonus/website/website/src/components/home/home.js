import React from 'react'

const Home = () => {
  return (
    <div className='home'>
      <div className='home-cotainer' data-tilt>
        <div className='home-info'>
          <h1 className='name_p' >Taha Chtaibi</h1>
          <p className='about-p'>Taha Chtaibi 21 year old, from Casablanca.
            I am a student at Mohammed VI University (UM6P), in the field of informatics (department 1337). In parallel, I study economics at Hassan II University third year (licence).
            I am able to handle multiple tasks on a daily basis and I use a creative approach to problem solve.</p>
          <a href='https://instagram.com/tehsusrhist' className='follow-me'>
            Follow me
            <svg width="6" height="11" viewBox="0 0 6 11" fill="none" xmlns="http://www.w3.org/2000/svg">
              <path d="M5.63335 4.87364L1.51379 0.759206C1.16776 0.413598 0.605566 0.413598 0.259528 0.759206C-0.0865095 1.10481 -0.0865095 1.66631 0.259528 2.01191L3.75196 5.5L0.259528 8.9881C-0.0865095 9.3337 -0.0865095 9.8952 0.259528 10.2408C0.432545 10.4136 0.65957 10.5 0.886652 10.5C1.11373 10.5 1.34078 10.4136 1.51378 10.2408L5.63333 6.12637C5.97937 5.78076 5.97937 5.21927 5.63333 4.87366L5.63335 4.87364Z" fill="white" />
            </svg>
          </a>
        </div>
        <div className='home-photo shake'></div>
      </div>
    </div>
  )
}

export default Home
