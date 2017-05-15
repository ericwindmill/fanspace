import React from 'react'
import ReactDom from 'react-dom'

document.addEventListenter('DOMConententLoaded', () => {
  const root = document.getElementById('root');
  ReactDOM.render(<h1>FANSPACE.IO</h1>, root);
});