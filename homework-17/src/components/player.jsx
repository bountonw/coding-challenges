import React from 'react'

class Player extends React.Component {
  render() {
    return (
      <tr className='player'>
        <td>First Name</td>
        <td>Last Name</td>
        <td>Age</td>
        <td>Position</td>
      </tr>
    )
  }
}

export default Player;
