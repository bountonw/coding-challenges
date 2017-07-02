import React from 'react'
import Player from './player'

const PlayerList = props => {
  const players = props.players.map(player => <Player key={`${player.id}`} firstName={player.first_name} lastName={player.last_name} age={player.age} position={player.position}/>);
  return (
    <table>
      <thead>
        <tr>
          <th>First Name</th>
          <th>Last Name</th>
          <th>Age</th>
          <th>Position</th>
        </tr>
      </thead>
      <tbody>
        ADD YOUR CODE HERE
      </tbody>
    </table>
  )
}

export default PlayerList;
