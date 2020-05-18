import React from 'react'
import './App.css'
import {BrowserRouter as Router, Route, Switch, withRouter} from 'react-router-dom'
import Home from './components/Home'
import Login from './components/Login'

class App extends React.Component {
  render(){
    return (
      <div className="App">
        <Router>
          <Route exact path='/' component={Home} />
          <Route exact path='/login' component={Login} />
        </Router>
      </div>
    )
  }
}

export default App;