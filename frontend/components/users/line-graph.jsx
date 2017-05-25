import React from 'react'
import Chart from 'chart.js'
import {Line} from 'react-chartjs-2';
Chart.defaults.global.responsive = true



class ShowsPerYearAsGraph extends React.Component {
  constructor(props) {
    super(props)
  }




  render() {
    let options = {
      respoonsive: true,
      scales: {
        yAxes: [{
          ticks: {
            min: 0,
            max: 8,
            stepSize: 1
          }
        }]
      }
    }

    return (
      <div className="per-year-line-graph">
        <h2>Shows Per Year</h2>
        <Line data={this.props.data} options={options}/>
      </div>
    );
  }


}

export default ShowsPerYearAsGraph
