import React from 'react'
import '../../App.css'

const Git = () => {
    return (
        <div className='git'>
            <h1 className='h1_about'>Get In Touch</h1>
            <p className='p_git'>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
            <form className='form_git'>
                <label for="fname">Email</label>
                <input type="email" id="fname" name="fname" placeholder='Please enter your email' />
                <label for="lname">Mobile</label>
                <input type="tel" id="lname" name="lname" placeholder='Enter mobile' />
                <label for="lname">Message</label>
                <input type="text" id="lname" name="lname" placeholder='Enter your message' />
                <input className='submit_form' type="submit" value="Submit"/>
            </form>
        </div>
    )
}

export default Git