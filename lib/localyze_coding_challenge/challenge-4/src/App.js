import logo from './logo.svg';
import './App.css';
import users from './MOCK_DATA.json'
import { useState } from 'react'

function App() {
  const [searchTerm, setSearchTerm] = useState('')
  return (
    <div className="App">
      <div class='search'>
        <input type='text' placeholder='Search ...'
          onChange={ (event) => {
            setSearchTerm(event.target.value)
          }}
       />
     </div>
      <div class='row'>
        {users.filter((val) => {
          if (searchTerm == '') {
            return val;
          } else if (val.country.toLowerCase().includes(searchTerm.toLowerCase())) {
            return val;
          }
        }).map((val, key) => {
          return (
            <div className='column'>
              <dl>
                <dt><b>Name</b></dt>
                <dd>{val.name}</dd>
                <dt><b>Country</b></dt>
                <dd>{val.country}</dd>
              </dl>
            </div>
          )
        })}
      </div>
    </div>
  );
}

export default App;
