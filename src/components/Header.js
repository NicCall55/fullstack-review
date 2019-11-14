import React from 'react'
import './Header.css'
import logo from '../assets/Insta'

const Header = () => {
    return (
        <header>
        <div className='profile-pic'></div>
        <img src={logo}/>
        <div className='logout'></div>
        </header>
    )
}

export default Header 