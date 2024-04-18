import React, { Component } from 'react';
import 'bootstrap/dist/css/bootstrap.css';
import './App.css';
import './Components/Root.css';



class App extends Component {
  render() {
    return (
      <div className="App">
      <div id='new'>
        <h2>
          ASSASSIN
        </h2>
        <div className="font-loader">
     This is with Web Font Loader using the class attribute. 
     We are loading the  font from the Google Fonts.
 </div>
      </div>
      </div>
    );
  }
}


export default App;