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
		let currentAlbum;
		this.props.data.forEach(album => {
			if (album.title === albumTitle) {
				debugger
				currentAlbum = album;
			}
		})


		const data = {
			labels: [
				'Seen',
				'Still Waitin...',
			],
			datasets: [{
				data: [15, (100 - 15)],
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
		const tnFire = this.data("The Tennessee Fire")

		return(
			<div>
        <h2>Tennesee Fire</h2>
				<Doughnut data={tnFire} />
      </div>

		)
	}
}

export default AlbumPiePercent