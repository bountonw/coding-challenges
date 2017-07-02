import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import Soccer from './components/soccer';
import registerServiceWorker from './registerServiceWorker';

ReactDOM.render(
  <Soccer url="http://localhost:3001/api/players"/>, document.getElementById('root'));
registerServiceWorker();
