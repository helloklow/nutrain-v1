import React from 'react'
import './App.css'
import {BrowserRouter as Router, Route, Switch, withRouter} from 'react-router-dom'
import Login from './components/Login'

class App extends React.Component {
  render(){
    return (
      <div className="App">
        Nutrain
        <Router>
          <Switch>
            <Route exact path='/login' component={Login} />
          </Switch>
        </Router>
      </div>
    )
  }
}

export default App;