import React from 'react'
import PlayerList from './player_list'

class Soccer extends React.Component {
  constructor() {
    super();

    this.state = {
      data: []
    }

    this.loadPlayersFromServer = this.loadPlayersFromServer.bind(this);
  }

  componentWillMount() {
    // ADD YOUR CODE HERE
  }

  loadPlayersFromServer() {
    return fetch(this.props.url).then((response) => response.json()).then((data) => {
      // ADD YOUR CODE HERE
    }).catch((error) => {
      console.error(error);
    });
  }

  render() {
    return (
      <div className="players">
        <h1>Players (PLAYER COUNT)</h1>
        <hr/>
        ADD YOUR CODE HERE
      </div>
    )
  }
}

export default Soccer;
