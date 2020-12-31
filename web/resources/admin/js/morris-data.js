$(function() {

    Morris.Area({
        element: 'morris-area-chart',
        data: [{
            period: '2010 Q1',
            a: 2666,
            b: null,
            c: 2647
        }, {
            period: '2010 Q2',
            a: 2778,
            b: 2294,
            c: 2441
        }, {
            period: '2010 Q3',
            a: 4912,
            b: 1969,
            c: 2501
        }, {
            period: '2010 Q4',
            a: 3767,
            b: 3597,
            c: 5689
        }, {
            period: '2011 Q1',
            a: 6810,
            b: 1914,
            c: 2293
        }, {
            period: '2011 Q2',
            a: 5670,
            b: 4293,
            c: 1881
        }, {
            period: '2011 Q3',
            a: 4820,
            b: 3795,
            c: 1588
        }, {
            period: '2011 Q4',
            a: 15073,
            b: 5967,
            c: 5175
        }, {
            period: '2012 Q1',
            a: 10687,
            b: 4460,
            c: 2028
        }, {
            period: '2012 Q2',
            a: 8432,
            b: 5713,
            c: 1791
        }],
        xkey: 'period',
        ykeys: ['a', 'b', 'c'],
        labels: ['a', 'b', 'c'],
        pointSize: 2,
        hideHover: 'auto',
        resize: true
    });

    Morris.Donut({
        element: 'morris-donut-chart',
        data: [{
            label: "Lượt truy cập",
            value: 1000
        }, {
            label: "Tổng sản phẩm",
            value: 200
        }, {
            label: "Số đơn hàng",
            value: 50
        }],
        resize: true
    });

    Morris.Bar({
        element: 'morris-bar-chart',
        data: [{
            y: '2006',
            a: 100,
            b: 90
        }, {
            y: '2007',
            a: 75,
            b: 65
        }, {
            y: '2008',
            a: 50,
            b: 40
        }, {
            y: '2009',
            a: 75,
            b: 65
        }, {
            y: '2010',
            a: 50,
            b: 40
        }, {
            y: '2011',
            a: 75,
            b: 65
        }, {
            y: '2012',
            a: 100,
            b: 90
        }],
        xkey: 'y',
        ykeys: ['a', 'b'],
        labels: ['Series A', 'Series B'],
        hideHover: 'auto',
        resize: true
    });

});
