import ReactDOM from 'react-dom'
import React from 'react'
import Chart from 'chart.js'
import {Line} from 'react-chartjs-2';
Chart.defaults.global.responsive = true


class ShowsPerYearAsGraph extends React.Component {
  constructor(props) {
    super(props)
  }


  render() {

    console.log(this.props)
    return (
      <div>
        <h2>Line Example</h2>
        <Line data={this.props.data} />
      </div>
    );
  }


}

export default ShowsPerYearAsGraph
