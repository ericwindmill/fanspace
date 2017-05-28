import React from 'react'
import Chart from 'chart.js'
import {Doughnut} from 'react-chartjs-2';
Chart.defaults.global.responsive = true
import {albumPercents} from '../users/metrics_selectors'




class AlbumPiePercent extends React.Component {
	constructor(props) {
		super(props)
		this.data = this.data.bind(this)
	}

	componentWillMount() {

	}

	data(albumTitle) {
		let currentAlbum = {};
		this.props.data.forEach(album => {
			if (album.title === albumTitle) {
				currentAlbum = album;
			}
		})
		console.log(currentAlbum)


		const data = {
			labels: [
				'Seen',
				'Still Waitin',
			],
			datasets: [{
				data: [currentAlbum.percent, (100 - currentAlbum.percent)],
				backgroundColor: [
				'#FF6384',
				'#36A2EB',
				],
			hoverBackgroundColor: [
				'#FF6384',
				'#36A2EB',
				]
			}]
		}
		return data
	}

	render() {
		const tnFire 				= "The Tennessee Fire"
		const atDawn 				= this.data("At Dawn")
		const itStillMoves 	= this.data("The Tennessee Fire")
		const z 						= this.data("The Tennessee Fire")
		const evilUrges 		= this.data("The Tennessee Fire")
		const circuital 		= this.data("The Tennessee Fire")
		const theWaterfall	= this.data("The Tennessee Fire")
		
		this.props.data.map(album => {
			return {}
		})

		return(
			<div>
        <h2>{tnFire}</h2>
				<Doughnut data={this.data(tnFire)} />
      </div>

		)
	}
}

export default AlbumPiePercent