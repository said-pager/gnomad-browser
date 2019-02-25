import React from 'react'
import styled from 'styled-components'

import { RegionViewer } from '@broad/region-viewer'

import regionData from '@resources/2-175000717-180995530.json'

import { GenesTrack } from '..'

const Wrapper = styled.div`
  width: 1160px;
  margin: 3em auto 0;
`

const regions = [
  {
    chrom: regionData.chrom,
    start: regionData.start,
    stop: regionData.stop,
    feature_type: 'default',
    strand: '+',
  },
]

const GenesTrackExample = () => (
  <Wrapper>
    <RegionViewer padding={0} regions={regions} width={1000}>
      <GenesTrack genes={regionData.genes} onGeneClick={console.log} />
    </RegionViewer>
  </Wrapper>
)

export default GenesTrackExample
