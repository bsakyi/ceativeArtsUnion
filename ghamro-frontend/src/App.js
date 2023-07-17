import React, { Component } from 'react';
import './App.css';
// import axios from "axios";
// import users from "./components/users";
// import { useState } from "react";

// const API_URL = "http://localhost:3000/api/v1/users";

// function getAPIData() {
//   return axios.get(API_URL).then((response) => response.data)
// }
class App extends Component { 
  //We have to implement this feature using a class based component, the tutorial uses function based
  // const  [users, setUsers] = useState([]);

  // useEffect(()=>{
  //   let mounted = true;
  //   getAPIData().then((items))=> { 
  //     if (mounted) {
  //       setBooks(items);
  //     }
  //   }
  // });

  render() {
    return (
      <div className="App">
        <h1>Hello User</h1>
      </div>
    );
  }
}

export default App;
