//
//  ViewController.swift
//  BarChartExample
//
//  Created by Владимир on 01.12.2021.
//

import UIKit
import Charts

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createChart()
        
    }
    
    private func createChart() {
        //  Create bar chart
        let barChart = BarChartView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.width))
        
        // Configure the axis
        let xAxis = barChart.xAxis
        let rightAxis = barChart.rightAxis
        
        // Configure legend
        let legend = barChart.legend
        
        // Suply data
        var entries = [BarChartDataEntry]()
        for x in 0..<10 {
            entries.append(
                BarChartDataEntry(
                    x: Double(x),
                    y: Double.random(in: 0...30)
                )
            )
        }
        let set = BarChartDataSet(entries: entries, label: "Cost")
        set.colors = ChartColorTemplates.joyful()
        let data = BarChartData(dataSet: set)
        
        barChart.data = data
        
        view.addSubview(barChart)
        barChart.center = view.center
    }
    
}

