import React from 'react'
import {connect} from "react-redux"

const Login = () => {
    return (
        <form>
            <input type="text" name="email" value={email} placeholder="Email" className="form" /><br/>
            <input type="password" name="password" value={password} placeholder="Password" className="form" /><br/>
            <input type="submit" value="Log In" className="form" />
        </form>
    )
}

export default Login