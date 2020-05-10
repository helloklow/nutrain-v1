import React from 'react'
import {connect} from "react-redux"
import {login} from '../actions/userActions'

const Login = ({loginData, login, updateLoginForm}) => {
    const {email, password} = loginData

    const handleChange = e => {
        const {name, value} = e.target
        updateLoginForm(name, value)
    }

    const handleSubmit = e => {
        e.preventDefault()
        login(loginData)
    }

    return (
        <form onSubmit={handleSubmit}>
            <input type="text" name="email" onChange={handleChange} value={email} placeholder="Email" className="form" /><br/>
            <input type="password" name="password" onChange={handleChange} value={password} placeholder="Password" className="form" /><br/>
            <input type="submit" value="Log In" className="form-btn" />
        </form>
    )
}

const mapStateToProps = state => {
    return {
        loginData: state.login
    }
}

export default connect(mapStateToProps, {login})(Login)